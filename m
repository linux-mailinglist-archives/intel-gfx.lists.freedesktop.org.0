Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A5F9904D2
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 15:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C6B810EA0C;
	Fri,  4 Oct 2024 13:50:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="iGsR9Bmk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0542210EA0C
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2024 13:50:18 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id
 5b1f17b1804b1-42cb806623eso18625395e9.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Oct 2024 06:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728049816; x=1728654616; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=PGq8ObFpViB+3KemQ0iLozvXWCKh2QyDnzkhrR+US2E=;
 b=iGsR9BmklCtnXaBF4vahgBQRb6boDN3Ga/7H9f2X0Aqo757GyR/PvzYe4+KTU7WaMj
 ssmzcquujmctTHZvagvDsKKAVLg21X/+Ib+tybxoLjBOX10mOWybsvRkUqinxRp/f5gz
 4lTEt2rjhJ7aLpxZOJyKdizVDYiR3TevD2aZrXYNjPBzvSpcPJO13sx7JlOEuX80Of6e
 rDxkPsaB9d/BD4/Vpofs9AwgjVyfoHf2hkx+eRCmRjKLXnzXwHlh/2NtoEaOqIc9FCNF
 5eHdsSpGcfpjM8ARuuJ8y1mlgF8P7tJQMT1H77znMFZHnYPiBEOhav8lvw9p0oayTpGA
 XmkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728049816; x=1728654616;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PGq8ObFpViB+3KemQ0iLozvXWCKh2QyDnzkhrR+US2E=;
 b=fVRZHab0wqo/4gU5U0ZzCHcLbx2Ms3YEusozeuFFQRVjVEi3NxMSTk/x5cm3ZDgLwA
 3L2+2sDhOd95bGN8CHWrz7PdgD0+rlx1hEm8w/KG/57tV9j/G7zxqSaF1/i2yzGa6Nem
 e4dU+SG37/FsjfVjixvfLkqfgjX+vOU4K+VhzUdlnwvDVrR5J5fPY9ufHO4+HjKTV1bF
 Is2Mb/UbUnTNyahXdxG4frglZtExPWBKSChZdZT7FhePd2z6GsZrTso2cWCdzA6Tc7gO
 5ckbu+b1uw3jrBpZEYPUGrjVMgJEccBc3k81eyrOmeHxWy1n3ZoSGb7pICR+5QA6OcJK
 aoSw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUc9sgR12P6gkP8kEa6mS4msq4zf9cspZkjeHJMQLYJ7ntD6wZgh9dA2aMxgcUKhYG5wAbHNybl99k=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yzy8UUynx1vEr49WsSfiOZkeS83ECoEXZZUPhQAhmvWz4AS8A7V
 jmTV2SFDMdCLK53oGxsbqSIdX/hrYWDxS9JFpMXbw3HJ4mDaKjCr/j6+VrAa5HA=
X-Google-Smtp-Source: AGHT+IESA57SRgxnBTxVAzsXe9rQLouDaudHS/marjuz0EPj2TKFvYMn4k1qARwtyuhSPO3qLnDVbg==
X-Received: by 2002:a05:600c:4ed1:b0:42b:a9b4:3f59 with SMTP id
 5b1f17b1804b1-42f85ab86a1mr23240405e9.14.1728049816065; 
 Fri, 04 Oct 2024 06:50:16 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.72])
 by smtp.googlemail.com with ESMTPSA id
 5b1f17b1804b1-42f86a20439sm16188525e9.13.2024.10.04.06.50.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Oct 2024 06:50:15 -0700 (PDT)
Message-ID: <f9389193-557c-49ad-8ab3-6b8dd7899403@gmail.com>
Date: Fri, 4 Oct 2024 16:50:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/7] drm/i915: Enable fp16 + CCS on TGL+
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-6-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20240918144445.5716-6-ville.syrjala@linux.intel.com>
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

Here the same question on depth as on those two other patches, I think 
that field should have value other than zero. Otherwise all did look ok.

On 18.9.2024 17.44, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> TGL+ support compressed fp16 scanout. Enable it.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fb.c       | 36 +++++++++++++++++++
>   .../drm/i915/display/skl_universal_plane.c    |  8 ++---
>   2 files changed, 40 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 83495e165da7..2d384092416e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -87,6 +87,18 @@ static const struct drm_format_info gen12_ccs_formats[] = {
>   	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 2,
>   	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
>   	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_XRGB16161616F, .depth = 0, .num_planes = 2,
> +	  .char_per_block = { 8, 1 }, .block_w = { 1, 1 }, .block_h = { 1, 1 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_XBGR16161616F, .depth = 0, .num_planes = 2,
> +	  .char_per_block = { 8, 1 }, .block_w = { 1, 1 }, .block_h = { 1, 1 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_ARGB16161616F, .depth = 0, .num_planes = 2,
> +	  .char_per_block = { 8, 1 }, .block_w = { 1, 1 }, .block_h = { 1, 1 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_ABGR16161616F, .depth = 0, .num_planes = 2,
> +	  .char_per_block = { 8, 1 }, .block_w = { 1, 1 }, .block_h = { 1, 1 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
>   	{ .format = DRM_FORMAT_YUYV, .num_planes = 2,
>   	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
>   	  .hsub = 2, .vsub = 1, .is_yuv = true },
> @@ -145,6 +157,18 @@ static const struct drm_format_info gen12_ccs_cc_formats[] = {
>   	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 3,
>   	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
>   	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_XRGB16161616F, .depth = 0, .num_planes = 3,
> +	  .char_per_block = { 8, 1, 0 }, .block_w = { 1, 1, 0 }, .block_h = { 1, 1, 0 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_XBGR16161616F, .depth = 0, .num_planes = 3,
> +	  .char_per_block = { 8, 1, 0 }, .block_w = { 1, 1, 0 }, .block_h = { 1, 1, 0 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_ARGB16161616F, .depth = 0, .num_planes = 3,
> +	  .char_per_block = { 8, 1, 0 }, .block_w = { 1, 1, 0 }, .block_h = { 1, 1, 0 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_ABGR16161616F, .depth = 0, .num_planes = 3,
> +	  .char_per_block = { 8, 1, 0 }, .block_w = { 1, 1, 0 }, .block_h = { 1, 1, 0 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
>   };
>   
>   static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
> @@ -172,6 +196,18 @@ static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
>   	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 2,
>   	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
>   	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_XRGB16161616F, .depth = 0, .num_planes = 2,
> +	  .char_per_block = { 8, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_XBGR16161616F, .depth = 0, .num_planes = 2,
> +	  .char_per_block = { 8, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
> +	  .hsub = 1, .vsub = 1, },
> +	{ .format = DRM_FORMAT_ARGB16161616F, .depth = 0, .num_planes = 2,
> +	  .char_per_block = { 8, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> +	{ .format = DRM_FORMAT_ABGR16161616F, .depth = 0, .num_planes = 2,
> +	  .char_per_block = { 8, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
> +	  .hsub = 1, .vsub = 1, .has_alpha = true },
>   };
>   
>   struct intel_modifier_desc {
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 8817758ef10d..afaa92a6d91c 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2373,6 +2373,10 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>   	case DRM_FORMAT_XBGR2101010:
>   	case DRM_FORMAT_ARGB2101010:
>   	case DRM_FORMAT_ABGR2101010:
> +	case DRM_FORMAT_XBGR16161616F:
> +	case DRM_FORMAT_ABGR16161616F:
> +	case DRM_FORMAT_XRGB16161616F:
> +	case DRM_FORMAT_ARGB16161616F:
>   		if (intel_fb_is_ccs_modifier(modifier))
>   			return true;
>   		fallthrough;
> @@ -2391,10 +2395,6 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>   	case DRM_FORMAT_RGB565:
>   	case DRM_FORMAT_XVYU2101010:
>   	case DRM_FORMAT_C8:
> -	case DRM_FORMAT_XBGR16161616F:
> -	case DRM_FORMAT_ABGR16161616F:
> -	case DRM_FORMAT_XRGB16161616F:
> -	case DRM_FORMAT_ARGB16161616F:
>   	case DRM_FORMAT_Y210:
>   	case DRM_FORMAT_Y212:
>   	case DRM_FORMAT_Y216:

