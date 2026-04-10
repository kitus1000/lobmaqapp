
import { NextResponse } from 'next/server'
import { createClient } from '@supabase/supabase-js'

export const dynamic = 'force-dynamic'

export async function GET() {
    try {
        const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL!
        const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
        const supabase = createClient(supabaseUrl, supabaseKey)

        // 1. Probar conexión y ver columnas de 'empleados'
        // 1. Probar conexión y ver lista de empleados
        const { data: sample, error: sampleError } = await supabase
            .from('empleados')
            .select('id_empleado, nombre, numero_empleado, id_turno')
            .limit(10)

        // 2. Verificar tablas de checador y ver Turnos completos
        const { count: checadasCount } = await supabase.from('checadas').select('*', { count: 'exact', head: true })
        const { data: turnosFull } = await supabase.from('turnos').select('*')

        return NextResponse.json({
            ok: true,
            diagnostico: {
                conexion: true,
                total_encontrado: sample?.length || 0,
                checadas_totales: checadasCount || 0,
                turnos: turnosFull || [],
                empleados: sample || [],
                url_base: process.env.NEXT_PUBLIC_SUPABASE_URL
            }
        })
    } catch (e: any) {
        return NextResponse.json({ ok: false, error: e.message })
    }
}
