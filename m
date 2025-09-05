Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0851B453D4
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 11:56:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D7B910EB60;
	Fri,  5 Sep 2025 09:56:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FsYJYkIM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D62710EB60;
 Fri,  5 Sep 2025 09:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757066169; x=1788602169;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=0OhI72o1AQWzREkGWGzhHJpblEFcT11lY1FS0BoFnSU=;
 b=FsYJYkIMT9wXeD0+Wp39fDCKT2yVPX+AkL80CWWShuzj+teHEFIVW7zN
 i2NyzHCBzXEHlztWEa7o9N5iaaKi9vroohIUwWKGqaoVUO9oZYuVycGyx
 +wPSauJgOB234PAFudd+EmKz3MYYPAJSTGvrfbgWncfr/QMqdWpn5kKF2
 GiRbta4gfdvR7BI0b2PwmYVzSJ8rPkD+qBynILMA7PhlkRTh5iisF3Zql
 xUpJTsrMItefzy0Ht8EtqjuKd6M4wMgjP7kTXpNB62k7uBe32C2WBqJM6
 utFRLuMK9ei90wxj2eKQnue2SeRyaHxrd+DDUPkYdgwJBbPimjxgjOmeL A==;
X-CSE-ConnectionGUID: fN03nXqhTnyyc9moBjKvQQ==
X-CSE-MsgGUID: m/4bRb34QEi7JZFDfTPw7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="59488073"
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="59488073"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 02:56:08 -0700
X-CSE-ConnectionGUID: UEa5iK2ASzGVvkgy16mBpw==
X-CSE-MsgGUID: 9JxcikTdRoWbLz5s6IoN+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="202949675"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 02:56:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/8] drm/i915/dram: s/wm_lv0.../has_16gb_dimms/
In-Reply-To: <20250902133113.18778-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
 <20250902133113.18778-5-ville.syrjala@linux.intel.com>
Date: Fri, 05 Sep 2025 12:56:04 +0300
Message-ID: <c55148f6f0174ff994ab67511fbd11b2be7d0332@intel.com>
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
> The DRAM code shouldn't know anything about watermarks. Rename
> wm_lv_0_adjust_needed to has_16gb_dimms. How this gets used is
> up to the watermark code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c |  2 +-
>  drivers/gpu/drm/i915/soc/intel_dram.c        | 12 ++++++------
>  drivers/gpu/drm/i915/soc/intel_dram.h        |  2 +-
>  3 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 33885d619a97..ae3ce0d65cfc 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3214,7 +3214,7 @@ adjust_wm_latency(struct intel_display *display,
>  	 * any underrun. If not able to get Dimm info assume 16GB dimm
>  	 * to avoid any underrun.
>  	 */
> -	if (!display->platform.dg2 && dram_info->wm_lv_0_adjust_needed)
> +	if (!display->platform.dg2 && dram_info->has_16gb_dimms)
>  		wm[0] +=3D 1;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915=
/soc/intel_dram.c
> index b4f0793f778d..efb72e137748 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -428,7 +428,7 @@ skl_dram_get_channels_info(struct drm_i915_private *i=
915, struct dram_info *dram
>  		return -EINVAL;
>  	}
>=20=20
> -	dram_info->wm_lv_0_adjust_needed =3D ch0.is_16gb_dimm || ch1.is_16gb_di=
mm;
> +	dram_info->has_16gb_dimms =3D ch0.is_16gb_dimm || ch1.is_16gb_dimm;
>=20=20
>  	dram_info->symmetric_memory =3D intel_is_dram_symmetric(&ch0, &ch1);
>=20=20
> @@ -673,7 +673,7 @@ static int gen11_get_dram_info(struct drm_i915_privat=
e *i915, struct dram_info *
>=20=20
>  static int gen12_get_dram_info(struct drm_i915_private *i915, struct dra=
m_info *dram_info)
>  {
> -	dram_info->wm_lv_0_adjust_needed =3D false;
> +	dram_info->has_16gb_dimms =3D false;
>=20=20
>  	return icl_pcode_read_mem_global_info(i915, dram_info);
>  }
> @@ -737,10 +737,10 @@ int intel_dram_detect(struct drm_i915_private *i915)
>  	i915->dram_info =3D dram_info;
>=20=20
>  	/*
> -	 * Assume level 0 watermark latency adjustment is needed until proven
> +	 * Assume 16Gb DIMMs are present until proven
>  	 * otherwise, this w/a is not needed by bxt/glk.
>  	 */
> -	dram_info->wm_lv_0_adjust_needed =3D !IS_BROXTON(i915) && !IS_GEMINILAK=
E(i915);
> +	dram_info->has_16gb_dimms =3D !IS_BROXTON(i915) && !IS_GEMINILAKE(i915);
>=20=20
>  	if (DISPLAY_VER(display) >=3D 14)
>  		ret =3D xelpdp_get_dram_info(i915, dram_info);
> @@ -766,8 +766,8 @@ int intel_dram_detect(struct drm_i915_private *i915)
>=20=20
>  	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_channels);
>=20=20
> -	drm_dbg_kms(&i915->drm, "Watermark level 0 adjustment needed: %s\n",
> -		    str_yes_no(dram_info->wm_lv_0_adjust_needed));
> +	drm_dbg_kms(&i915->drm, "16Gb DIMMs: %s\n",
> +		    str_yes_no(dram_info->has_16gb_dimms));
>=20=20
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915=
/soc/intel_dram.h
> index 6212944d44aa..03a973f1c941 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.h
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.h
> @@ -31,7 +31,7 @@ struct dram_info {
>  	u8 num_qgv_points;
>  	u8 num_psf_gv_points;
>  	bool symmetric_memory;
> -	bool wm_lv_0_adjust_needed;
> +	bool has_16gb_dimms;
>  };
>=20=20
>  void intel_dram_edram_detect(struct drm_i915_private *i915);

--=20
Jani Nikula, Intel
