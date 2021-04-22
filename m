Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DE53682AC
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 16:46:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DE3A6EAB2;
	Thu, 22 Apr 2021 14:46:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB1C36E158
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 14:46:36 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id m9so32339393wrx.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 07:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:subject:to:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=BPKFsFCJ7MUddT1AbihJxr5UlzZItPYPA0yDXVrW/Uo=;
 b=WUkrEiuWDKDQbx47+qJ2GGsLy547MeSJhbfjCJ7g9JRQF77WAnpONPVBFKoezEL7Zu
 7EL/rFW7h5zbQQFoGQQOoZgy0xxm+lYxIwhPHXMecIAJIZuy6lFriSsJ3zNRIe43+bSl
 k1CZwLpF+Yo/KfIsGsZEbtM5lEafGZP2yAVZT92C60yaRAWcvTmIqPL2MZcWfsPCbQmb
 0rWKh5JBKPxAJHx5DB0aPvOUeYo8n7YRIrVJbVXjHAn8q19WPJHbp/4DmiGrA8feEGVr
 EVez+pbYRElwgXyOsXdIol/Lv+ThzQURRta7aD+BXMTVYBrT3Yn9GNVNW0yW5OU+y5sl
 o/vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BPKFsFCJ7MUddT1AbihJxr5UlzZItPYPA0yDXVrW/Uo=;
 b=WL7WuuZ9dszVvAPIYRJjphz0qfUVoBA7fpZ8rO5DSzkEQudNcvNEJfCTN+gAUBuRxz
 BqY+uhfYRpovSBjfur/wW/nc0Mbd5AZKLlWbP88VQpAqr+hXbwdIDTiRO+k5cIXq6dKG
 QEC+VvN10hMlBId0432F91w272HOaLaawuKWRJn74AjnaAHizjlAxfHSKCUcBUIl7Ed2
 ZKwHbTgakt47qEC06HJ3OJ/hNTM4VyARnrB8QbZzB4IjrgFJzcCBowtA6TcrHaxWV1tQ
 6o3x55XDp8N8+OgBzO5u9rAeEGwcogWehUpY3OI8KLg9NcVIrKy1PfJDZMwh7b8kRWbY
 ZwJg==
X-Gm-Message-State: AOAM531CgOqlV+zf4fy7H9s7OS3xmSYCqUS39fdDJt8A9odCTVXQzg1O
 VhjdVs4jLf+Vc1Zxl/fEiIm6BYLOaO6rtYPM
X-Google-Smtp-Source: ABdhPJx2JBC0bP0oXNm5ohhLw8GyLNqv84Rk9xp/uTV40b9iaRGJAo8evmoe3ww4Xi6BoC5N0DHCtA==
X-Received: by 2002:adf:e648:: with SMTP id b8mr4606751wrn.386.1619102795197; 
 Thu, 22 Apr 2021 07:46:35 -0700 (PDT)
Received: from [0.0.0.0] (jfdmzpr05-ext.jf.intel.com. [134.134.139.74])
 by smtp.googlemail.com with ESMTPSA id y11sm4182570wro.37.2021.04.22.07.46.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Apr 2021 07:46:32 -0700 (PDT)
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210421121959.3577881-1-imre.deak@intel.com>
 <20210421173220.3587009-1-imre.deak@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <a026991a-108b-4407-6044-f589e9143752@gmail.com>
Date: Thu, 22 Apr 2021 17:46:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210421173220.3587009-1-imre.deak@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Simplify CCS and UV plane
 alignment handling
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: juhapekka.heikkila@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

look ok to me.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 21.4.2021 20.32, Imre Deak wrote:
> We can handle the surface alignment of CCS and UV color planes for all
> modifiers at one place, so do this. An AUX color plane can be a CCS or a
> UV plane, use only the more specific query functions and remove
> is_aux_plane() becoming redundant.
> 
> While at it add a TODO for linear UV color plane alignments. The spec
> requires this to be stride-in-bytes * 64 on all platforms, whereas the
> driver uses an alignment of 4k for gen<12 and 256k for gen>=12 for
> linear UV planes.
> 
> v2:
> - Restore previous alignment for linear UV surfaces.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 27 +++++++++++++-------
>   drivers/gpu/drm/i915/display/intel_fb.c      |  8 ------
>   drivers/gpu/drm/i915/display/intel_fb.h      |  1 -
>   3 files changed, 18 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a10e26380ef3d..e246e5cf75866 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -973,10 +973,26 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
>   	struct drm_i915_private *dev_priv = to_i915(fb->dev);
>   
>   	/* AUX_DIST needs only 4K alignment */
> -	if ((DISPLAY_VER(dev_priv) < 12 && is_aux_plane(fb, color_plane)) ||
> -	    is_ccs_plane(fb, color_plane))
> +	if (is_ccs_plane(fb, color_plane))
>   		return 4096;
>   
> +	if (is_semiplanar_uv_plane(fb, color_plane)) {
> +		/*
> +		 * TODO: cross-check wrt. the bspec stride in bytes * 64 bytes
> +		 * alignment for linear UV planes on all platforms.
> +		 */
> +		if (DISPLAY_VER(dev_priv) >= 12) {
> +			if (fb->modifier == DRM_FORMAT_MOD_LINEAR)
> +				return intel_linear_alignment(dev_priv);
> +
> +			return intel_tile_row_size(fb, color_plane);
> +		}
> +
> +		return 4096;
> +	}
> +
> +	drm_WARN_ON(&dev_priv->drm, color_plane != 0);
> +
>   	switch (fb->modifier) {
>   	case DRM_FORMAT_MOD_LINEAR:
>   		return intel_linear_alignment(dev_priv);
> @@ -985,19 +1001,12 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
>   			return 256 * 1024;
>   		return 0;
>   	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> -		if (is_semiplanar_uv_plane(fb, color_plane))
> -			return intel_tile_row_size(fb, color_plane);
> -		fallthrough;
>   	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
>   	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>   		return 16 * 1024;
>   	case I915_FORMAT_MOD_Y_TILED_CCS:
>   	case I915_FORMAT_MOD_Yf_TILED_CCS:
>   	case I915_FORMAT_MOD_Y_TILED:
> -		if (DISPLAY_VER(dev_priv) >= 12 &&
> -		    is_semiplanar_uv_plane(fb, color_plane))
> -			return intel_tile_row_size(fb, color_plane);
> -		fallthrough;
>   	case I915_FORMAT_MOD_Yf_TILED:
>   		return 1 * 1024 * 1024;
>   	default:
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 0ec9ad7220a14..c8aaca3e79e97 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -30,14 +30,6 @@ bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane)
>   	       plane == 2;
>   }
>   
> -bool is_aux_plane(const struct drm_framebuffer *fb, int plane)
> -{
> -	if (is_ccs_modifier(fb->modifier))
> -		return is_ccs_plane(fb, plane);
> -
> -	return plane == 1;
> -}
> -
>   bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane)
>   {
>   	return intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier) &&
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> index 6acf792a8c44a..13244ec1ad214 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -19,7 +19,6 @@ struct intel_plane_state;
>   bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
>   bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
>   bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
> -bool is_aux_plane(const struct drm_framebuffer *fb, int plane);
>   bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb, int color_plane);
>   
>   bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane);
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
