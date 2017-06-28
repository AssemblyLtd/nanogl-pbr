#ifndef _H_OCTWRAP_DECODE_OCTANT_
#define _H_OCTWRAP_DECODE_OCTANT_

vec2 octwrapDecodeOctant(vec3 d) {
    vec2 p = d.xz / dot(vec3(1.0), abs(d));
    if (d.y <= 0.0) {
        p.xy = (vec2(1.0) - abs(p.yx)) * sign(p.xy);
    }
    return p.xy;
}

#endif