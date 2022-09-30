Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB7D5F09FE
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 13:22:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D45C10EC80;
	Fri, 30 Sep 2022 11:22:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5D4F10EC80
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 11:22:16 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id h7so6336621wru.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 04:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date;
 bh=MQDqOrahpqMrN6hbnqyUcfRgrEFYZGruBIe8DlaCBT8=;
 b=WZwVQuZKBlmaLteNRGhTO3qjTVCRfS+K6IGjl8PYSLS8nN+3vmLLrgrmul/Enp6UaV
 7DDRly7x2E0GT5M4q202MHEMBs51ftK71qVLfXtK32Iz5NSaO4OYsODbNfwQaugxtJ/e
 HhGMcRmpjZEw/UVqIgcoZScC0q8QB6Y37qOxDXdWWV9xjlwlxnYdQr0zRwBjt0QRCxZU
 rUEjdl74zhy0lF9Ncvq0oUMdjQLX7y0h/j4um8VgAa33Q+T+/CJKJ8t+ffPlUzH+AniH
 4iWMSDafqINm0JsRPlC5OTX+a8kTWqF6ISoYuixQ0+K9HEGRCaMjZYLFly3Y6tCS1QRv
 M3Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date;
 bh=MQDqOrahpqMrN6hbnqyUcfRgrEFYZGruBIe8DlaCBT8=;
 b=6g/CklUqL7sfhen1Kd4yDhqqeDMTRZz/CQwkicUAJKpSObmM3U/wiknGnYTBqNMldJ
 Ag6cgyUhQEiAnD7noDMjw6Oc7auuR/F3kt+L1us58pn2282qU8dhtyk4Xz8NXQaeMOat
 oSzfSHpaEZ3A1Z7u3MnrS2A5RYeqqtAPVOfg/uiZ/XLxO+ioLilQfR6fKw5+rEpRYlIp
 5m9a7xAumO359HYF7hsO0WxvZsPJJqenC09xoGauFolJ1Ti/dshxy5gbfSrQwY03CSWq
 TXXB2nnKRHcID3JfpWqGQfey3w/5baeQQNLUILlV/o5aMDzATVzEDE4ix29vLd7Kggqi
 qVNw==
X-Gm-Message-State: ACrzQf28z6ET2NEyy9NUr2H8ybELVhORhInjqq5zsV9qslWc/4PZbjBJ
 gz0+OvceQYkKKHMAm9CGBvuPLQNvd9JV6oG0
X-Google-Smtp-Source: AMsMyM6uMJF0udeu+uWEF5Y55/kMQ7N7mdfZtf9vc9j6AOseg/IxSEWc19kdfbEUy/A96E7skcTgbA==
X-Received: by 2002:adf:9cd0:0:b0:22a:7cea:d3c3 with SMTP id
 h16-20020adf9cd0000000b0022a7cead3c3mr5821995wre.196.1664536934890; 
 Fri, 30 Sep 2022 04:22:14 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.85])
 by smtp.googlemail.com with ESMTPSA id
 l6-20020a5d5606000000b00228d52b935asm1783634wrv.71.2022.09.30.04.22.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 30 Sep 2022 04:22:14 -0700 (PDT)
Message-ID: <e6c027ff-0cd4-ef3d-0f12-13d31015ba60@gmail.com>
Date: Fri, 30 Sep 2022 14:22:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220930104302.25836-1-ville.syrjala@linux.intel.com>
 <20220930104302.25836-6-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20220930104302.25836-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Simplify modifier lookup in
 watermark code
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I had earlier this patch which look like it does mostly the same 
https://patchwork.freedesktop.org/patch/444010/?series=92491&rev=4

With exception to mc ccs, earlier Imre said mc ccs must not be 
considered here.

/Juha-Pekka

On 30.9.2022 13.43, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Replace the huge modifier lists in the watermark code with
> a few calls to intel_fb.c.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fb.c      | 13 ++++++++++++
>   drivers/gpu/drm/i915/display/intel_fb.h      |  1 +
>   drivers/gpu/drm/i915/display/skl_watermark.c | 22 +++-----------------
>   3 files changed, 17 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index eefa33c555ac..63137ae5ab21 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -300,6 +300,19 @@ static bool plane_caps_contain_all(u8 caps, u8 mask)
>   	return (caps & mask) == mask;
>   }
>   
> +/**
> + * intel_fb_is_tiled_modifier: Check if a modifier is a tiled modifier type
> + * @modifier: Modifier to check
> + *
> + * Returns:
> + * Returns %true if @modifier is a tiled modifier.
> + */
> +bool intel_fb_is_tiled_modifier(u64 modifier)
> +{
> +	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
> +				      INTEL_PLANE_CAP_TILING_MASK);
> +}
> +
>   /**
>    * intel_fb_is_ccs_modifier: Check if a modifier is a CCS modifier type
>    * @modifier: Modifier to check
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> index 12386f13a4e0..4662b812b934 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -29,6 +29,7 @@ struct intel_plane_state;
>   #define INTEL_PLANE_CAP_TILING_Yf	BIT(5)
>   #define INTEL_PLANE_CAP_TILING_4	BIT(6)
>   
> +bool intel_fb_is_tiled_modifier(u64 modifier);
>   bool intel_fb_is_ccs_modifier(u64 modifier);
>   bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
>   bool intel_fb_is_mc_ccs_modifier(u64 modifier);
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 18178b01375e..0715bb308989 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1706,26 +1706,10 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
>   		return -EINVAL;
>   	}
>   
> -	wp->y_tiled = modifier == I915_FORMAT_MOD_Y_TILED ||
> -		      modifier == I915_FORMAT_MOD_4_TILED ||
> -		      modifier == I915_FORMAT_MOD_Yf_TILED ||
> -		      modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
> -		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
> -		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> -		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
> -		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
> -		      modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
> -		      modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS ||
> -		      modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
>   	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
> -	wp->rc_surface = modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
> -			 modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
> -			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> -			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
> -			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
> -			 modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
> -			 modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS ||
> -			 modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
> +	wp->y_tiled = modifier != I915_FORMAT_MOD_X_TILED &&
> +		intel_fb_is_tiled_modifier(modifier);
> +	wp->rc_surface = intel_fb_is_ccs_modifier(modifier);

I had earlier this patch which look like it did mostly the same 
https://patchwork.freedesktop.org/patch/444010/?series=92491&rev=4

With exception to mc ccs, earlier Imre said mc ccs must not be 
considered here.

/Juha-Pekka

>   	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
>   
>   	wp->width = width;

