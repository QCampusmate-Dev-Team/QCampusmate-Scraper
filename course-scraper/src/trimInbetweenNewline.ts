export default function(s: string | undefined | null, join?: boolean): string|string[] {
  if (!s) return '';
  const a = s.split('\n').map(s=>s.trim()).filter(e=>e)
  // Default to join lines with new line
  return (join === undefined) ? 
              a.join('\n') : 
              join ? a.join('\n') : a
} 