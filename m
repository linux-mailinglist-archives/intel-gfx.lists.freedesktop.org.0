Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2558499048D
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 15:36:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3B5010EA08;
	Fri,  4 Oct 2024 13:36:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="h4EZN838";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6011B10EA08
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2024 13:36:47 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id
 5b1f17b1804b1-42cbc22e1c4so17250415e9.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Oct 2024 06:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728049006; x=1728653806; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=k2yz6WyK3GgOQ42cOQmaxaMcog2mV+I+YVvDsYvN+Tw=;
 b=h4EZN838fdw/68PIliqYTo6+eOP+tIXbpBYnnnnuZvQ6pECwCjisSJS7DJtL49TNKk
 D17daruFJdLDNrru789eWupopGiX4qsyhn8hnqEHAaMtVyQeqg5b4/RbefiFo1sVk/W5
 YfNlqLnaZOzBslyDMXN7VMXr3A9tXyFEJFG/GuM+md1A8mq05/cPXc202dIk/oPRxEpd
 87bAv1xytaOUQR3+7yzVaPyS3VBbAThCucqMuAcid5RtdTHoVlg5cySuKmzgm9pqr4x5
 jyQj1x8KelZDirqOTsrT8tyxfErMIzdwsCd8EvX9XSd9QxNeI2QCYoRIKme9+DTz57s1
 TnHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728049006; x=1728653806;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=k2yz6WyK3GgOQ42cOQmaxaMcog2mV+I+YVvDsYvN+Tw=;
 b=fmKCzgKdktv0kzZFy/t1G1nE69YXVd0cOrmWT6zIal5G7LCu6AMBoen6NBeSTDXnn7
 cY632BwlfkLP3lm9yBQPMca8e4LCePpIJD6WBt6EkPRK+LCy8IGyZsC8et9XTd6xSs44
 hqGoQfll1Tu/6KDIDKtzohg72bCLyQZRPbyqtFLp0BTjmUEVhyCuamPcffA+8iHlVSCL
 zzl4vFFCAaj1NyldvXWUh5mlYv0QWHGw1/NckopQ7Jyq6TgqIH5oYq9vid7Tdxi4z680
 LG+9nGf5yTyHTgVBxIXTUnplisp9F+P0MhLuyNNevtl6VnVsibG00l4cz/oKtTMMpx5b
 xj3A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXp0QhJTLFw2KWH9fLiAlr2tYDfwCJpKWDuBO76jaYbsld1HDV+r3icjJBluvSsqHwSZ2kFlOEqZr8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yxb/0FTeDlI1AontFRXJfEvSAUAyja7Rj696HyL74ExTl7sGyYc
 lS3kZsS5/2OX2ZXCj/63/BFAOLLfW33or5DbyUAJWgG+Xc8huHLzl0H7lVfFREY=
X-Google-Smtp-Source: AGHT+IGEjiMUXAAJRlEug0/1hmM/XEqT4UW/N4fK6Ao7Fc//SGngC858Q6o/xNLzkVB/R7N5SctORg==
X-Received: by 2002:a05:600c:3b82:b0:42f:8287:c235 with SMTP id
 5b1f17b1804b1-42f85aa194fmr19588335e9.1.1728049005399; 
 Fri, 04 Oct 2024 06:36:45 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.72])
 by smtp.googlemail.com with ESMTPSA id
 5b1f17b1804b1-42f86b44380sm15867305e9.34.2024.10.04.06.36.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Oct 2024 06:36:44 -0700 (PDT)
Message-ID: <7cb211ad-5909-420d-bbcd-e77e77209024@gmail.com>
Date: Fri, 4 Oct 2024 16:36:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/7] drm/i915: Enable 10bpc + CCS on ICL
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-5-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20240918144445.5716-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

Here the same question on the depth as on patch 3/7, otherwise things look.

On 18.9.2024 17.44, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> ICL also supports compressed 10bpc scanout. Enable it.
> 
> v2: Set .depth=30 for all variants to match drm_fourcc.c
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fb.c       |  8 +++
>   .../drm/i915/display/skl_universal_plane.c    | 65 +++++++++++++++++++
>   2 files changed, 73 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 9b9da4f71f73..83495e165da7 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -45,6 +45,14 @@ static const struct drm_format_info skl_ccs_formats[] = {
>   	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
>   	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
>   	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
> +	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 2,
> +	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, },
> +	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 2,
> +	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, },
> +	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 2,
> +	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
> +	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 2,
> +	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
>   };
>   
>   /*
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 9f34df60b112..8817758ef10d 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2302,6 +2302,60 @@ static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
>   	}
>   }
>   
> +static bool icl_plane_format_mod_supported(struct drm_plane *_plane,
> +					   u32 format, u64 modifier)
> +{
> +	struct intel_plane *plane = to_intel_plane(_plane);
> +
> +	if (!intel_fb_plane_supports_modifier(plane, modifier))
> +		return false;
> +
> +	switch (format) {
> +	case DRM_FORMAT_XRGB8888:
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_ARGB8888:
> +	case DRM_FORMAT_ABGR8888:
> +	case DRM_FORMAT_XRGB2101010:
> +	case DRM_FORMAT_XBGR2101010:
> +	case DRM_FORMAT_ARGB2101010:
> +	case DRM_FORMAT_ABGR2101010:
> +		if (intel_fb_is_ccs_modifier(modifier))
> +			return true;
> +		fallthrough;
> +	case DRM_FORMAT_RGB565:
> +	case DRM_FORMAT_YUYV:
> +	case DRM_FORMAT_YVYU:
> +	case DRM_FORMAT_UYVY:
> +	case DRM_FORMAT_VYUY:
> +	case DRM_FORMAT_NV12:
> +	case DRM_FORMAT_XYUV8888:
> +	case DRM_FORMAT_P010:
> +	case DRM_FORMAT_P012:
> +	case DRM_FORMAT_P016:
> +	case DRM_FORMAT_XVYU2101010:
> +		if (modifier == I915_FORMAT_MOD_Yf_TILED)
> +			return true;
> +		fallthrough;
> +	case DRM_FORMAT_C8:
> +	case DRM_FORMAT_XBGR16161616F:
> +	case DRM_FORMAT_ABGR16161616F:
> +	case DRM_FORMAT_XRGB16161616F:
> +	case DRM_FORMAT_ARGB16161616F:
> +	case DRM_FORMAT_Y210:
> +	case DRM_FORMAT_Y212:
> +	case DRM_FORMAT_Y216:
> +	case DRM_FORMAT_XVYU12_16161616:
> +	case DRM_FORMAT_XVYU16161616:
> +		if (modifier == DRM_FORMAT_MOD_LINEAR ||
> +		    modifier == I915_FORMAT_MOD_X_TILED ||
> +		    modifier == I915_FORMAT_MOD_Y_TILED)
> +			return true;
> +		fallthrough;
> +	default:
> +		return false;
> +	}
> +}
> +
>   static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>   					     u32 format, u64 modifier)
>   {
> @@ -2363,6 +2417,15 @@ static const struct drm_plane_funcs skl_plane_funcs = {
>   	.format_mod_supported = skl_plane_format_mod_supported,
>   };
>   
> +static const struct drm_plane_funcs icl_plane_funcs = {
> +	.update_plane = drm_atomic_helper_update_plane,
> +	.disable_plane = drm_atomic_helper_disable_plane,
> +	.destroy = intel_plane_destroy,
> +	.atomic_duplicate_state = intel_plane_duplicate_state,
> +	.atomic_destroy_state = intel_plane_destroy_state,
> +	.format_mod_supported = icl_plane_format_mod_supported,
> +};
> +
>   static const struct drm_plane_funcs gen12_plane_funcs = {
>   	.update_plane = drm_atomic_helper_update_plane,
>   	.disable_plane = drm_atomic_helper_disable_plane,
> @@ -2542,6 +2605,8 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
>   
>   	if (DISPLAY_VER(dev_priv) >= 12)
>   		plane_funcs = &gen12_plane_funcs;
> +	else if (DISPLAY_VER(dev_priv) == 11)
> +		plane_funcs = &icl_plane_funcs;
>   	else
>   		plane_funcs = &skl_plane_funcs;
>   

