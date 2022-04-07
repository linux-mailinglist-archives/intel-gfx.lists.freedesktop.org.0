Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FBA4F80C4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 15:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D37BD10E37A;
	Thu,  7 Apr 2022 13:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E41210E37A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 13:37:40 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id b24so6410517edu.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Apr 2022 06:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:reply-to:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=qd9f0niyHPIg7QjfvBJq9FVKJY8C3QMQKdHt4FQCl8w=;
 b=iU+m1XRHjxPsRLfCQu6rd00N4Vw/zn8xQfkiJluSAqnTQt/VK9FMVGqDxtX0G0zAA2
 aEQ4/rGzzJ0BV7KBctpozx/LS9NCayZ9t0V+gySPhiHSMjDTbvQYCH1sONV/M6HDhcIk
 XxkhsO0ce3ZD+C3tpqHmspSbwQos6Tnm33W+0cjfimT5lIJwfccGjIGPtDSghrJ1wWIw
 3tL3kJwBWS4u8qQWSpAgQOFJtC8g+1ST//7lpAN6PS9FmAsOAAI9KyO99QBVUjDo4JoF
 uYykuvEwwTDRJFVYBF1S9iZ3Eu+lgibTGakeB5Lt12Db5UKGWzKnTqartU7u9dUH/grq
 qkJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
 :subject:content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=qd9f0niyHPIg7QjfvBJq9FVKJY8C3QMQKdHt4FQCl8w=;
 b=oCqs1UwzBmEM5CRHnO3DsUXbggwVNYuFuVgHAIVyvNZIaitYzn2/iAnS3aod1mm4Im
 rGVmpwYicFi7JsAZxiEGpKq+8eG07kujvzHVdtd/Oe97+VElVzEXIO33vwPSqmyrUYs1
 0mVhYSCprh0SvNaLiYVDvLHO+fMyzGNjCcu5Pnp7fzEtPiHr9Lc0kFhegxnyBELyho8I
 tcx6jfdvMf7aShQQ2pXXpfYfqv1CnKSOJZxM3O9LXxVl7tfKY/jGUCBsUI2agjywdtf1
 SZtacqQsVkpEfHTT4zyw90amkAdhtRfu1fOGms2PJqVRrm8sIIhWd7iuHtubNqJW1oxP
 dxsg==
X-Gm-Message-State: AOAM530EabxPcoPYdvADzFknHG0YP2uPSNE0qK+QefHzz4dtlcRpbhEK
 sb9aKPlLZ4QVmx784aRM7Y3sCMUrIqP4WKcr
X-Google-Smtp-Source: ABdhPJztde/6z0ukWbxTaUutuiMa1OF6eLRQYdF4bAno6AYop2fxENVwYmT5ZI5GronADb+0LDltMg==
X-Received: by 2002:a05:6402:681:b0:419:dbec:9909 with SMTP id
 f1-20020a056402068100b00419dbec9909mr14214077edy.310.1649338658789; 
 Thu, 07 Apr 2022 06:37:38 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.87])
 by smtp.googlemail.com with ESMTPSA id
 q9-20020a170906770900b006d20acf7e2bsm7678136ejm.200.2022.04.07.06.37.36
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Apr 2022 06:37:38 -0700 (PDT)
Message-ID: <cc4da519-431f-e7c8-7cae-97ea43e55bf2@gmail.com>
Date: Thu, 7 Apr 2022 16:37:33 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220404133846.131401-1-imre.deak@intel.com>
 <20220404133846.131401-3-imre.deak@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20220404133846.131401-3-imre.deak@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/dg2: Add support for DG2
 render and media compression
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

On 4.4.2022 16.38, Imre Deak wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> Add support for DG2 render and media compression, for the description of
> buffer layouts see the previous patch adding the corresponding
> frame buffer modifiers.
> 
> v2:
>    Display version fix [Imre]
> v3:
>    Split out modifier addition to separate patch.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fb.c       | 13 ++++++++++
>   .../drm/i915/display/skl_universal_plane.c    | 26 ++++++++++++++++---
>   2 files changed, 35 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index e9ad142ac40fa..447003a91160e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -141,6 +141,14 @@ struct intel_modifier_desc {
>   
>   static const struct intel_modifier_desc intel_modifiers[] = {
>   	{
> +		.modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS,
> +		.display_ver = { 13, 13 },
> +		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_MC,
> +	}, {
> +		.modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS,
> +		.display_ver = { 13, 13 },
> +		.plane_caps = INTEL_PLANE_CAP_TILING_4 | INTEL_PLANE_CAP_CCS_RC,
> +	}, {
>   		.modifier = I915_FORMAT_MOD_4_TILED,
>   		.display_ver = { 13, 13 },
>   		.plane_caps = INTEL_PLANE_CAP_TILING_4,
> @@ -550,6 +558,8 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
>   			return 128;
>   		else
>   			return 512;
> +	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
> +	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
>   	case I915_FORMAT_MOD_4_TILED:
>   		/*
>   		 * Each 4K tile consists of 64B(8*8) subtiles, with
> @@ -752,6 +762,9 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
>   	case I915_FORMAT_MOD_4_TILED:
>   	case I915_FORMAT_MOD_Yf_TILED:
>   		return 1 * 1024 * 1024;
> +	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
> +	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
> +		return 16 * 1024;
>   	default:
>   		MISSING_CASE(fb->modifier);
>   		return 0;
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index c57fca1fe6788..b939c503bc6ff 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -773,6 +773,14 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
>   		return PLANE_CTL_TILED_Y;
>   	case I915_FORMAT_MOD_4_TILED:
>   		return PLANE_CTL_TILED_4;
> +	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
> +		return PLANE_CTL_TILED_4 |
> +			PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
> +			PLANE_CTL_CLEAR_COLOR_DISABLE;
> +	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
> +		return PLANE_CTL_TILED_4 |
> +			PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE |
> +			PLANE_CTL_CLEAR_COLOR_DISABLE;
>   	case I915_FORMAT_MOD_Y_TILED_CCS:
>   	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
>   		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> @@ -2168,6 +2176,10 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
>   	if (IS_ADLP_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>   		return false;
>   
> +	/* Wa_14013215631 */
> +	if (IS_DG2_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
> +		return false;
> +
>   	return plane_id < PLANE_SPRITE4;
>   }
>   
> @@ -2415,9 +2427,10 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
>   	case PLANE_CTL_TILED_Y:
>   		plane_config->tiling = I915_TILING_Y;
>   		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> -			fb->modifier = DISPLAY_VER(dev_priv) >= 12 ?
> -				I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS :
> -				I915_FORMAT_MOD_Y_TILED_CCS;
> +			if (DISPLAY_VER(dev_priv) >= 12)
> +				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS;
> +			else
> +				fb->modifier = I915_FORMAT_MOD_Y_TILED_CCS;
>   		else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
>   			fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
>   		else
> @@ -2425,7 +2438,12 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
>   		break;
>   	case PLANE_CTL_TILED_YF: /* aka PLANE_CTL_TILED_4 on XE_LPD+ */
>   		if (HAS_4TILE(dev_priv)) {
> -			fb->modifier = I915_FORMAT_MOD_4_TILED;
> +			if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> +				fb->modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS;
> +			else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
> +				fb->modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS;
> +			else
> +				fb->modifier = I915_FORMAT_MOD_4_TILED;
>   		} else {
>   			if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
>   				fb->modifier = I915_FORMAT_MOD_Yf_TILED_CCS;

