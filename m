Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0553E9904E6
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 15:54:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5E9B10EA0D;
	Fri,  4 Oct 2024 13:54:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Hcp/PXQ9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D7D010EA0D
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2024 13:54:38 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 5b1f17b1804b1-42cb7a2e4d6so22081955e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Oct 2024 06:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728050076; x=1728654876; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=W57c3yxeCu1H3mYTS4CgIL26fzaT8nK9TPHKTXQUhVc=;
 b=Hcp/PXQ91ASpuGC9sewqQIXgydidRarY5O80AJmis10S9CAlXJb/PgpfmUXDClypb9
 r2o8BxBRH3vtywsL4ogeUc+naOaSMM2VCkoKK9LtkGT9ggK1DSTqbdtRhMdJWA4X9yfZ
 QMejvxIGbf+c1ekSUg28LHE1OQZiBj4u2PYuKgdYlO9elGIHUfP5Q+NB2drmE6jXffT0
 4JB9x77zPgeEgqsL8hjXxmuDFY5hL8p49J7u4xVgAzfqLnF8lNizK1sVp+IzPpAQ6l0e
 4YnmU5tmKFdJgyRR3iTTG6GiDnUSzh3pMJ327gQ0WXPM801VfkhmQ8dJkiyJ71HNu4IK
 PGWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728050076; x=1728654876;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=W57c3yxeCu1H3mYTS4CgIL26fzaT8nK9TPHKTXQUhVc=;
 b=tIX1bSVkD9rwSOBuiMYj+FX6yvWv5+RpBMkJnrZ+RgKZvf5GTvDZTBScq05EpexpHa
 DjQX3NSr6vAisujzX7o6QM31XnM/HPs1/Dt9LyZlL6I/zC/7I3Rkps2vx+4AR/ipkRzm
 6/MK2CIiHB/GFCU6ylCFU1VIPnDqbWkCEX0NThml/VUHfyxglwEXxDHno+Wvi5J0c3vx
 h5z7TH89GqQtU+cKePAXIKSj+JX5N91U5UxsrRDDGiSl/BrB8gbjlhoaNK476VPFzcRF
 7mEzMG/HZs0yH+z5aRUvlkXQazk5TxpRTl1OpmWXNWRQqg7zf1CWQrQ29GnP3eALCWAe
 tCLw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXER/bwyEUGs60R4wCCXy7C6k5M9mQdaIjvmlgARhvnXjgCq7P4RjHgAFhlW2PHnJyWkmxBlTyjyhA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzjTUnWJwAfxgtgwj/fzXDjweKEPiDdU8/1qsRq+KtJB+jt/gGG
 GyxdCvVC7d2nT0jcSWDVo7jevSM7OQdr0o3VaMcXeCJyVd3pCBgTR7PCQT8AJBU=
X-Google-Smtp-Source: AGHT+IGvFAXU0GmLMMZde2z0FN9+Kmdn6+NxgvKGsInmVSI9Yr+xUhH9lUwm/XJWU9iA3hMfFvnhUw==
X-Received: by 2002:a05:600c:3c9b:b0:42c:ae30:fc4d with SMTP id
 5b1f17b1804b1-42f85a7001dmr21048415e9.7.1728050076049; 
 Fri, 04 Oct 2024 06:54:36 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.72])
 by smtp.googlemail.com with ESMTPSA id
 5b1f17b1804b1-42f86b24003sm16251805e9.21.2024.10.04.06.54.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Oct 2024 06:54:35 -0700 (PDT)
Message-ID: <618c32d2-df7f-4b11-94fd-9ecf9478779b@gmail.com>
Date: Fri, 4 Oct 2024 16:54:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] drm/i915: s/gen12/tgl/ in the universal plane code
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-8-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20240918144445.5716-8-ville.syrjala@linux.intel.com>
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

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 18.9.2024 17.44, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Using "gen12" in display code is not desirable. Replace
> it with "tgl" to match how we talk about other platforms
> in the same code.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   .../gpu/drm/i915/display/skl_universal_plane.c   | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index f56d679b0143..a82297fb4213 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2355,8 +2355,8 @@ static bool icl_plane_format_mod_supported(struct drm_plane *_plane,
>   	}
>   }
>   
> -static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
> -					     u32 format, u64 modifier)
> +static bool tgl_plane_format_mod_supported(struct drm_plane *_plane,
> +					   u32 format, u64 modifier)
>   {
>   	struct intel_plane *plane = to_intel_plane(_plane);
>   
> @@ -2425,13 +2425,13 @@ static const struct drm_plane_funcs icl_plane_funcs = {
>   	.format_mod_supported = icl_plane_format_mod_supported,
>   };
>   
> -static const struct drm_plane_funcs gen12_plane_funcs = {
> +static const struct drm_plane_funcs tgl_plane_funcs = {
>   	.update_plane = drm_atomic_helper_update_plane,
>   	.disable_plane = drm_atomic_helper_disable_plane,
>   	.destroy = intel_plane_destroy,
>   	.atomic_duplicate_state = intel_plane_duplicate_state,
>   	.atomic_destroy_state = intel_plane_destroy_state,
> -	.format_mod_supported = gen12_plane_format_mod_supported,
> +	.format_mod_supported = tgl_plane_format_mod_supported,
>   };
>   
>   static void
> @@ -2473,8 +2473,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
>   		(plane_id == PLANE_1 || plane_id == PLANE_2);
>   }
>   
> -static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
> -				   enum plane_id plane_id)
> +static bool tgl_plane_has_mc_ccs(struct drm_i915_private *i915,
> +				 enum plane_id plane_id)
>   {
>   	if (DISPLAY_VER(i915) < 12)
>   		return false;
> @@ -2512,7 +2512,7 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>   			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
>   	}
>   
> -	if (gen12_plane_has_mc_ccs(i915, plane_id))
> +	if (tgl_plane_has_mc_ccs(i915, plane_id))
>   		caps |= INTEL_PLANE_CAP_CCS_MC;
>   
>   	if (DISPLAY_VER(i915) >= 14 && IS_DGFX(i915))
> @@ -2603,7 +2603,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
>   						plane_id, &num_formats);
>   
>   	if (DISPLAY_VER(dev_priv) >= 12)
> -		plane_funcs = &gen12_plane_funcs;
> +		plane_funcs = &tgl_plane_funcs;
>   	else if (DISPLAY_VER(dev_priv) == 11)
>   		plane_funcs = &icl_plane_funcs;
>   	else

