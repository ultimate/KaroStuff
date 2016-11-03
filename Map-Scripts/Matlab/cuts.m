function cut = cuts(p11, p12, p21, p22)
    vec1x = p12(1)-p11(1);
    vec1y = p12(2)-p11(2);
    vec2x = p22(1)-p21(1);
    vec2y = p22(2)-p21(2);
    
    b = ( vec1y*p11(1) - vec1x*p11(2) - vec1y*p21(1) + vec1x*p21(2) ) / (vec1y*vec2x - vec1x*vec2y);
    a = ( p21(1) + b*vec2x - p11(1) ) / vec1x;
    
    cut = ( (a > 0) && (a < 1) && (b > 0) && (b < 1));
end