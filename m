Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB58B405A7
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 15:56:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B7AC10E71E;
	Tue,  2 Sep 2025 13:56:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C1j+/QD2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7627510E71E;
 Tue,  2 Sep 2025 13:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756821383; x=1788357383;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=FUyOUZ3ZBahr6ayvVnUiNuZF+YxNoUjSgIHLBhHUb48=;
 b=C1j+/QD22ZLeEZ0KQ75PJizZScjjkVyOolrzc880dcxQ0czyPL7tfsm2
 nHvnzDPYPN4ZqARAaiyILB3tHDtbLnDZJvvSEA6QbuYf9a+sSdg2GMK5z
 m8bAJc+wk5JuS7un9qJ2zjv6lXXJVV0IqC5LdguvcUKhUtXRDy1oei8KH
 MBPoY0Aiu152yjQN9pvDym+7pjzZPv3vNG5pgLA1IrGRtV8QF1dmV698f
 QTFk5255r2xrxJvpWVGXawkMcQiWF7Eb9RvA+XS+BBspxNp+8LZSq8avn
 FdwaRTnXTzhsyexvqB6EaKq7/qiYD43OLHNJzBfBxF87IGBvF0czfyeNC w==;
X-CSE-ConnectionGUID: xeFqaT3eQ+uvS6D/F3PjiA==
X-CSE-MsgGUID: Dws738tITNGxhITwrZGqGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62915956"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="62915956"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:56:23 -0700
X-CSE-ConnectionGUID: b+kvfEMITvmjrCUDKRVOLg==
X-CSE-MsgGUID: Tiuw4EcKSKyQ7xKd0xZSYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="171725115"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:56:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 5/8] drm/i915/dram: Move 16Gb DIMM detection fully to
 the skl/icl codepaths
In-Reply-To: <20250902133113.18778-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
 <20250902133113.18778-6-ville.syrjala@linux.intel.com>
Date: Tue, 02 Sep 2025 16:56:18 +0300
Message-ID: <234b7892c94b7974e2281812825c85ae56b50aac@intel.com>
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
> Only skl (and derivatives) and icl need the 16Gb DIMM w/as, and we
> do the real detection only on those platforms anyway. Move the initial
> has_16gb_dimms assignment into those codepaths as well.
>
> Currently we are incorrectly always applying the 1 usec wm latency bump
> on all mtl+ platforms due to this (the tgl/adl codepath did remember to
> undo the assignment, but the mtl+ codepath didn't).

The commit message could have more clarity that we're fixing this here.

With that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


I think after this we could also drop the "!display->platform.dg2 && "
part in adjust_wm_latency():

	if (!display->platform.dg2 && dram_info->has_16gb_dimms)

Can be a follow-up.

> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c | 17 ++++++-----------
>  1 file changed, 6 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915=
/soc/intel_dram.c
> index efb72e137748..bf3ba874f8c5 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -406,6 +406,9 @@ skl_dram_get_channels_info(struct drm_i915_private *i=
915, struct dram_info *dram
>  	u32 val;
>  	int ret;
>=20=20
> +	/* Assume 16Gb DIMMs are present until proven otherwise */
> +	dram_info->has_16gb_dimms =3D true;
> +
>  	val =3D intel_uncore_read(&i915->uncore,
>  				SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
>  	ret =3D skl_dram_get_channel_info(i915, &ch0, 0, val);
> @@ -435,6 +438,9 @@ skl_dram_get_channels_info(struct drm_i915_private *i=
915, struct dram_info *dram
>  	drm_dbg_kms(&i915->drm, "Memory configuration is symmetric? %s\n",
>  		    str_yes_no(dram_info->symmetric_memory));
>=20=20
> +	drm_dbg_kms(&i915->drm, "16Gb DIMMs: %s\n",
> +		    str_yes_no(dram_info->has_16gb_dimms));
> +
>  	return 0;
>  }
>=20=20
> @@ -673,8 +679,6 @@ static int gen11_get_dram_info(struct drm_i915_privat=
e *i915, struct dram_info *
>=20=20
>  static int gen12_get_dram_info(struct drm_i915_private *i915, struct dra=
m_info *dram_info)
>  {
> -	dram_info->has_16gb_dimms =3D false;
> -
>  	return icl_pcode_read_mem_global_info(i915, dram_info);
>  }
>=20=20
> @@ -736,12 +740,6 @@ int intel_dram_detect(struct drm_i915_private *i915)
>=20=20
>  	i915->dram_info =3D dram_info;
>=20=20
> -	/*
> -	 * Assume 16Gb DIMMs are present until proven
> -	 * otherwise, this w/a is not needed by bxt/glk.
> -	 */
> -	dram_info->has_16gb_dimms =3D !IS_BROXTON(i915) && !IS_GEMINILAKE(i915);
> -
>  	if (DISPLAY_VER(display) >=3D 14)
>  		ret =3D xelpdp_get_dram_info(i915, dram_info);
>  	else if (GRAPHICS_VER(i915) >=3D 12)
> @@ -766,9 +764,6 @@ int intel_dram_detect(struct drm_i915_private *i915)
>=20=20
>  	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_channels);
>=20=20
> -	drm_dbg_kms(&i915->drm, "16Gb DIMMs: %s\n",
> -		    str_yes_no(dram_info->has_16gb_dimms));
> -
>  	return 0;
>  }

--=20
Jani Nikula, Intel
