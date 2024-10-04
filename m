Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF51990485
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 15:35:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE34B10EA00;
	Fri,  4 Oct 2024 13:35:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OlG+BtyQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B480E10EA00
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2024 13:35:26 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id
 5b1f17b1804b1-42f56ad2afaso27144205e9.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Oct 2024 06:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728048925; x=1728653725; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=/NooyzeieMcQUNYlJH9/L/8vw1T64XPJguKLLKUJ8kw=;
 b=OlG+BtyQ0VDAQckrRucgmf6IbR3kyJHjkLGhq1audxxzhAjLCgwD/qOxEKxHEv++/N
 W0b6mxO+AUBZJ2JjhaIU7Hu0fxlehWAgrn/nXI+SVqN/W/Tb6HpzCbWZ4UeM4EFozai0
 v/4kpjWLYpw+8/GThX/V7LCO8dvY2cTsRwVJScOucW8qC14mj3BLn3Ugo7QtqHbZI32C
 X4bwClB8AL3o8GeFtijUm2zcy+QHG/o7XvuBnF20FzP5COL/tTnGb7yYcoJJnswcoeNh
 IXC8jfQhIAc4bnnnT2c3iOt+qOCf7nFIhV4+6mZ0G2L1fFsLNvchTNrUanBFSYmy9FgX
 g+8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728048925; x=1728653725;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=/NooyzeieMcQUNYlJH9/L/8vw1T64XPJguKLLKUJ8kw=;
 b=A4l0HX6Dr5tfUAF1afdxMpu8Qxb1D4KKIawvj9LA305WHBfYCy8ph7HTkECFkhoRn+
 CwOFD6P5yZ7fFS3Mu/cA3xpVvWNg0MXq2vScn9u377Aa/LsrQrpf8YcO1K5jmDvEvdMM
 ItsxAQYXuJ0anxr+MomoBqBgt4RdDPwUskTpVCpuej1XTPjY8iQHNSKkURtqH2iP9za4
 m3P2tolRD1XoUdYk+P18/cAwnt55joY0kA7etdAIsx2fd5bsa+T4bxS5OKhZifOTH+iU
 7tG8Jcd4+oEckoojnojPs8cSz70ibEXv2Xx34kdlGyjfPsD1okjKANY11xoPiulx1U/C
 XBDA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU8NvUT2BVthQeoaMIH1k9cBmZpq2sOR83ewQncXl5m+s9qEwD5MxZqIIY+oRK66Z/fAp9oYbeH1VA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwUqx8J/v9GehKFpT2N2OOdCCXHcR+/uV/W0uLFOAozow+ZfEv4
 JB9ePxKJhtdRUKOxz62Lc6gfVYK9IF08z9wYnlpxnaZDlG1dNAQxkeafJLqI0lY=
X-Google-Smtp-Source: AGHT+IH60N2aBi1u5mJVxHbd4uXH4otUTvSBRSlzknBvmlE33awTo6bqx1GU6XKX5+JTJhRhDbt5kw==
X-Received: by 2002:adf:fdc6:0:b0:374:c8eb:9b18 with SMTP id
 ffacd0b85a97d-37d0e74e5b0mr2339374f8f.24.1728048924562; 
 Fri, 04 Oct 2024 06:35:24 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.72])
 by smtp.googlemail.com with ESMTPSA id
 5b1f17b1804b1-42f86b1d06csm15895665e9.11.2024.10.04.06.35.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Oct 2024 06:35:24 -0700 (PDT)
Message-ID: <e30b033c-c242-47ef-aa9e-ba2ee734ca09@gmail.com>
Date: Fri, 4 Oct 2024 16:35:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] drm/i915: Enable 10bpc + CCS on TGL+
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-4-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20240918144445.5716-4-ville.syrjala@linux.intel.com>
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

On 18.9.2024 17.44, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> TGL+ support 10bpc compressed scanout. Enable it.
> 
> v2: Set .depth=30 for all variants to match drm_fourcc.c
>      Set clear color block size to 0x0
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fb.c       | 36 +++++++++++++++++++
>   .../drm/i915/display/skl_universal_plane.c    |  8 ++---
>   2 files changed, 40 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index bcf0d016f499..9b9da4f71f73 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -67,6 +67,18 @@ static const struct drm_format_info gen12_ccs_formats[] = {
>   	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
>   	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
>   	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 2,
> +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 2,
> +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 2,

Is that comment about depth=30 for all variants because of these alpha 
formats? Why is that? Here on other formats alpha is taken as part of 
depth, like in above "DRM_FORMAT_ABGR8888, .depth = 32"


> +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 2,
> +	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
>   	{ .format = DRM_FORMAT_YUYV, .num_planes = 2,
>   	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
>   	  .hsub = 2, .vsub = 1, .is_yuv = true },
> @@ -113,6 +125,18 @@ static const struct drm_format_info gen12_ccs_cc_formats[] = {
>   	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 3,
>   	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
>   	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 3,
> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 3,
> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 3,
> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 3,
> +	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
>   };
>   
>   static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
> @@ -128,6 +152,18 @@ static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
>   	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
>   	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
>   	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 2,
> +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 2,
> +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 2,
> +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 2,
> +	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
>   };
>   
>   struct intel_modifier_desc {
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 17d4c880ecc4..9f34df60b112 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2315,6 +2315,10 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>   	case DRM_FORMAT_XBGR8888:
>   	case DRM_FORMAT_ARGB8888:
>   	case DRM_FORMAT_ABGR8888:
> +	case DRM_FORMAT_XRGB2101010:
> +	case DRM_FORMAT_XBGR2101010:
> +	case DRM_FORMAT_ARGB2101010:
> +	case DRM_FORMAT_ABGR2101010:
>   		if (intel_fb_is_ccs_modifier(modifier))
>   			return true;
>   		fallthrough;
> @@ -2331,10 +2335,6 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>   			return true;
>   		fallthrough;
>   	case DRM_FORMAT_RGB565:
> -	case DRM_FORMAT_XRGB2101010:
> -	case DRM_FORMAT_XBGR2101010:
> -	case DRM_FORMAT_ARGB2101010:
> -	case DRM_FORMAT_ABGR2101010:
>   	case DRM_FORMAT_XVYU2101010:
>   	case DRM_FORMAT_C8:
>   	case DRM_FORMAT_XBGR16161616F:

