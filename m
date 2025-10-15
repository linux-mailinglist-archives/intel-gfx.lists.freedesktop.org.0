Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C776BDF497
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 17:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35BF410E822;
	Wed, 15 Oct 2025 15:12:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mpVmruVE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAE3610E822;
 Wed, 15 Oct 2025 15:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760541124; x=1792077124;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=63VSt2snSDRYOOGcxzrieoiwV9SMg5e1Fz7mUqjlIj4=;
 b=mpVmruVEvWIgmOsFky21sU5Okt8MjyfVfHCsFH5vsoBuKS5oYWly/3+x
 q3IdzwUq3s2eRCvbcWvK4Wj6gv0BP8E4lR+338ZCFEmSS/XfAGWp/LadS
 HSnTqqxIN1djbWzW5JMI2XSphSFn8zBLFB69Qp+B4T5RmR8VkWZfLNXoF
 YF+QLfQPrV3cu2AiP9HfEbQhZTmvlmYeFe9ewKwLFUuQLwtDB6cOz6vRi
 TJ3C3H+SxaeaD+sMMl9Om/l70DtFBGhewk4mjAUCbLfZVF1/ZEZXgvFS7
 9FTsWtb+LHNh86+MPdSJ2Wn5OQpz/JVOxTyRkKiyJvsMq1vnDHbZ2X0cf Q==;
X-CSE-ConnectionGUID: iJN8M3ZHTLSylVot/wd3LQ==
X-CSE-MsgGUID: Fd/ytZVFRHaG0uN8BqlwIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="66580952"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="66580952"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 08:12:03 -0700
X-CSE-ConnectionGUID: m/GsxoFaSs6uG/w8TAHTRw==
X-CSE-MsgGUID: mKyM3WLeTzeQugICAGyrjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="205900839"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.100])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 08:11:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>,
 Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>, Juha-pekka
 Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Ravi
 Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 24/32] drm/i915/xe3p_lpd: Introduce pixel normalizer
 config support
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-24-d2d1e26520aa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-24-d2d1e26520aa@intel.com>
Date: Wed, 15 Oct 2025 18:11:55 +0300
Message-ID: <89c53f433c7cd805e803d941d67b6188db730c01@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> From: Vinod Govindapillai <vinod.govindapillai@intel.com>
>
> To enable FBC for FP16 formats, we need to enable the pixel normalizer
> block. Introduce the register definitions and the initial steps for
> configuring the pixel normalizer block. In this patch the pixel
> normalizer block is kept as disabled. The follow-up patches will handle
> configuring the pixel normalizer block for hdr planes for FP16 formats.
>
> Bspec: 69863
> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h      |  3 +++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c      | 15 +++++++++++++++
>  drivers/gpu/drm/i915/display/skl_universal_plane_regs.h | 11 +++++++++++
>  3 files changed, 29 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 87b7cec35320..13652e2996a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -679,6 +679,9 @@ struct intel_plane_state {
>  	/* surface address register */
>  	u32 surf;
>  
> +	/* plane pixel normalizer config for Xe3p_LPD+ FBC FP16 */
> +	u32 pixel_normalizer;

I'm pretty strongly of the opinion that software state should not be
just a 1:1 map of the hardware state. Software state is logical,
hardware state is physical.

The software state should have logical things like "normalize form
factor" and "normalize enable", and the hardware then has those in some
register(s) somewhere.

Please let's not start storing software state as register contents. The
registers and their contents *will* change across platforms.

> +
>  	/*
>  	 * scaler_id
>  	 *    = -1 : not using a scaler
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 9f1111324dab..16a9c141281b 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -893,6 +893,12 @@ static void skl_write_plane_wm(struct intel_dsb *dsb,
>  				   xe3_plane_min_ddb_reg_val(min_ddb, interim_ddb));
>  }
>  
> +static void
> +xe3p_lpd_plane_check_pixel_normalizer(struct intel_plane_state *plane_state)

The function name has nothing to do with what the function does. What
does "check" mean?

> +{
> +	plane_state->pixel_normalizer = 0;
> +}
> +
>  static void
>  skl_plane_disable_arm(struct intel_dsb *dsb,
>  		      struct intel_plane *plane,
> @@ -1671,6 +1677,11 @@ icl_plane_update_arm(struct intel_dsb *dsb,
>  
>  	icl_plane_update_sel_fetch_arm(dsb, plane, crtc_state, plane_state);
>  
> +	/* Only the HDR planes can have pixel normalizer */
> +	if (DISPLAY_VER(display) >= 35 && icl_is_hdr_plane(display, plane_id))
> +		intel_de_write_dsb(display, dsb,
> +				   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id),
> +				   plane_state->pixel_normalizer);

This is the place where you'd look at the software state, and construct
what will be written to hardware based on that.

>  	/*
>  	 * The control register self-arms if the plane was previously
>  	 * disabled. Try to make the plane enable atomic by writing
> @@ -2385,6 +2396,10 @@ static int skl_plane_check(struct intel_crtc_state *crtc_state,
>  		plane_state->damage = DRM_RECT_INIT(0, 0, 0, 0);
>  	}
>  
> +	/* Pixel normalizer for Xe3p_LPD+ */
> +	if (DISPLAY_VER(display) >= 35 && icl_is_hdr_plane(display, plane->id))
> +		xe3p_lpd_plane_check_pixel_normalizer(plane_state);
> +
>  	plane_state->ctl = skl_plane_ctl(plane_state);
>  
>  	if (DISPLAY_VER(display) >= 10)
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index 84cf565bd653..11c713f9b237 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -456,4 +456,15 @@
>  								_SEL_FETCH_PLANE_OFFSET_5_A, _SEL_FETCH_PLANE_OFFSET_5_B, \
>  								_SEL_FETCH_PLANE_OFFSET_6_A, _SEL_FETCH_PLANE_OFFSET_6_B)
>  
> +#define _PLANE_PIXEL_NORMALIZE_1_A		0x701a8
> +#define _PLANE_PIXEL_NORMALIZE_2_A		0x702a8
> +#define _PLANE_PIXEL_NORMALIZE_1_B		0x711a8
> +#define _PLANE_PIXEL_NORMALIZE_2_B		0x712a8
> +#define PLANE_PIXEL_NORMALIZE(pipe, plane)	_MMIO_SKL_PLANE((pipe), (plane), \
> +								_PLANE_PIXEL_NORMALIZE_1_A, _PLANE_PIXEL_NORMALIZE_1_B, \
> +								_PLANE_PIXEL_NORMALIZE_2_A, _PLANE_PIXEL_NORMALIZE_2_B)
> +#define   PLANE_PIXEL_NORMALIZE_ENABLE			REG_BIT(31)
> +#define   PLANE_PIXEL_NORMALIZE_NORM_FACTOR_MASK	REG_GENMASK(15, 0)
> +#define   PLANE_PIXEL_NORMALIZE_NORM_FACTOR(val)	REG_FIELD_PREP(PLANE_PIXEL_NORMALIZE_NORM_FACTOR_MASK, (val))
> +
>  #endif /* __SKL_UNIVERSAL_PLANE_REGS_H__ */

-- 
Jani Nikula, Intel
