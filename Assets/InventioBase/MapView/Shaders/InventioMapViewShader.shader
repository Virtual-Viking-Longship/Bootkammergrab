﻿//Originally by mike_mac Enhancement: Sebastian Vargas - XOR Games ltda.

Shader "Inventio/MapViewShader" 
{
    Properties 
    {
        _Color ("Color Tint", Color) = (1,1,1,1)    
        _MainTex ("Base (RGB) Alpha (A)", 2D) = "white"
    }

    Category 
    {
        Lighting Off
        ZWrite Off
        //ZWrite On  // uncomment if you have problems like the sprite disappear in some rotations.
        ZTest Always
        Cull back
        Blend SrcAlpha OneMinusSrcAlpha
        //AlphaTest Greater 0.001  // uncomment if you have problems like the sprites or 3d text have white quads instead of alpha pixels.
        Tags {Queue=Transparent}

        SubShader 
        {
            Pass 
            {
                SetTexture [_MainTex] 
                {
                 	ConstantColor [_Color]
                	Combine Texture * constant
                }
            }
        }
    }
}