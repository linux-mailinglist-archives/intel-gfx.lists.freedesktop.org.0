Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C527B404BD
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 15:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB9010E71F;
	Tue,  2 Sep 2025 13:46:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bc0oUjQ/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9938B10E71E;
 Tue,  2 Sep 2025 13:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756820765; x=1788356765;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Z4RF5W/VYYu1sknbo+4gAi4bEnMivtgxD30oFMmdMx0=;
 b=bc0oUjQ/qUiGKTZkv17KAiGDgTmJXRPh+s4Zb2Vv1oeQLc0wuPm+I4Cm
 mCK+tJkaDyuL4SAQe0FVQ8/a2U+8y0u84CWlwn3KMYmnHZFrMgJ+bqhHK
 6o/Jeph/RM/0qDQfW7+0btXMuS2ym6hVR9Xv08BNdFknTZjmx3P6KqyO4
 3pkzJCj4HVs6XEryYfhaeHHUjmionhiu9tu+nd8LDXVAGaP7UL1TZNDSR
 Lm5OTEJ5W+qj6Jz5RKc6P4X6ACwfh6doDA2qcCEVU7sus7FRdqkyanZ99
 d01UBOCHTxFCUAoAnDsa4XQBrZ1KWtBvcjy32RtLyWdNZwSrEJC71X8Ja Q==;
X-CSE-ConnectionGUID: KGeovr9OSyeQp6kN2CjHKw==
X-CSE-MsgGUID: AkhYB3ciSqiywEg7vtej/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="69706006"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="69706006"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:46:05 -0700
X-CSE-ConnectionGUID: +7H1C2GqR0ClpMiToZPJ2A==
X-CSE-MsgGUID: KoebyYmUSDKIYWe7CwSb6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="175658785"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:46:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/8] drm/i915/dram: Use intel_dram_type_str() for pnv
In-Reply-To: <20250902133113.18778-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
 <20250902133113.18778-3-ville.syrjala@linux.intel.com>
Date: Tue, 02 Sep 2025 16:46:00 +0300
Message-ID: <32c72b126ae5096bea1fba04e2943d974d1ab71d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 02 Sep 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Replace the hand rolled PNV memory type printk string
> stuff with intel_dram_type_str().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c | 5 +++--
>  drivers/gpu/drm/i915/soc/intel_dram.c  | 2 +-
>  drivers/gpu/drm/i915/soc/intel_dram.h  | 1 +
>  3 files changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i91=
5/display/i9xx_wm.c
> index 591acce2a4b1..b7f3c7a3aff5 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -103,8 +103,9 @@ static const struct cxsr_latency *pnv_get_cxsr_latenc=
y(struct intel_display *dis
>  	}
>=20=20
>  	drm_dbg_kms(display->drm,
> -		    "Could not find CxSR latency for DDR%s, FSB %u kHz, MEM %u kHz\n",
> -		    is_ddr3 ? "3" : "2", dram_info->fsb_freq, dram_info->mem_freq);
> +		    "Could not find CxSR latency for %s, FSB %u kHz, MEM %u kHz\n",
> +		    intel_dram_type_str(dram_info->type),
> +		    dram_info->fsb_freq, dram_info->mem_freq);
>=20=20
>  	return NULL;
>  }
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915=
/soc/intel_dram.c
> index 7d8b8f81e215..b4f0793f778d 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -31,7 +31,7 @@ struct dram_channel_info {
>=20=20
>  #define DRAM_TYPE_STR(type) [INTEL_DRAM_ ## type] =3D #type
>=20=20
> -static const char *intel_dram_type_str(enum intel_dram_type type)
> +const char *intel_dram_type_str(enum intel_dram_type type)
>  {
>  	static const char * const str[] =3D {
>  		DRAM_TYPE_STR(UNKNOWN),
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915=
/soc/intel_dram.h
> index 7e3b3d961fcb..846a77b1aa90 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.h
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.h
> @@ -39,5 +39,6 @@ int intel_dram_detect(struct drm_i915_private *i915);
>  unsigned int intel_fsb_freq(struct drm_i915_private *i915);
>  unsigned int intel_mem_freq(struct drm_i915_private *i915);
>  const struct dram_info *intel_dram_info(struct drm_device *drm);
> +const char *intel_dram_type_str(enum intel_dram_type type);
>=20=20
>  #endif /* __INTEL_DRAM_H__ */

--=20
Jani Nikula, Intel
