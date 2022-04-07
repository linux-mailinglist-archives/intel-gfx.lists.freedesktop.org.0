Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9164F84A7
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 18:12:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8838410E1C1;
	Thu,  7 Apr 2022 16:12:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15AA510E1C1
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 16:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649347930; x=1680883930;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=XIUJGvc2rLi0c5+OXWpX5/scEvpF7+OG6Ki3JQLQyQQ=;
 b=EjyWELtBajm3kiGI3nXMFapsx++rp8PFNpXFXNNS14HXEWGfGpKE+IEC
 ZqILT/pT9p2o6J4WhbWx+XWdLHCYDwFxaa/B8lxeHQeFOaYURjfVBc0st
 DqG6ougwQStiFiAV8jNxyhTHBHl/GyHMgmKGTDw/AjCYvDjkiIpDGvv5/
 0knraaYH2O8RYpk4KHQV4LR1jaaiVJj1j6bRmlJ+c4wQXGkIEPux0+I2a
 yUWeQWJ43ics1TOaUJn6XMkHjWV98qn3d/yGaO/aJ4IZh/cyeyPwSEaB1
 NyXl3IlEdStK+fADEEaifLvcLLOVDtG+4UeohsSrg8OQkiOlTIkAR8o9h A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="260205006"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="260205006"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 09:12:09 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="550128723"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 09:12:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-6-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 19:12:04 +0300
Message-ID: <87y20g50vf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 05/22] drm/i915/bios: Trust the LFP data
 pointers
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

On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Now that we've sufficiently validated the LFP data pointers we
> can trust them.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 60 ++++++-----------------
>  1 file changed, 16 insertions(+), 44 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index cd82ea4de8e1..925f521f1f84 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -397,44 +397,19 @@ fill_detail_timing_data(struct drm_display_mode *pa=
nel_fixed_mode,
>  }
>=20=20
>  static const struct lvds_dvo_timing *
> -get_lvds_dvo_timing(const struct bdb_lvds_lfp_data *lvds_lfp_data,
> -		    const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs,
> +get_lvds_dvo_timing(const struct bdb_lvds_lfp_data *data,
> +		    const struct bdb_lvds_lfp_data_ptrs *ptrs,
>  		    int index)
>  {
> -	/*
> -	 * the size of fp_timing varies on the different platform.
> -	 * So calculate the DVO timing relative offset in LVDS data
> -	 * entry to get the DVO timing entry
> -	 */
> -
> -	int lfp_data_size =3D
> -		lvds_lfp_data_ptrs->ptr[1].dvo_timing.offset -
> -		lvds_lfp_data_ptrs->ptr[0].dvo_timing.offset;
> -	int dvo_timing_offset =3D
> -		lvds_lfp_data_ptrs->ptr[0].dvo_timing.offset -
> -		lvds_lfp_data_ptrs->ptr[0].fp_timing.offset;
> -	char *entry =3D (char *)lvds_lfp_data->data + lfp_data_size * index;
> -
> -	return (struct lvds_dvo_timing *)(entry + dvo_timing_offset);
> +	return (const void *)data + ptrs->ptr[index].dvo_timing.offset;
>  }
>=20=20
> -/* get lvds_fp_timing entry
> - * this function may return NULL if the corresponding entry is invalid
> - */
>  static const struct lvds_fp_timing *
>  get_lvds_fp_timing(const struct bdb_lvds_lfp_data *data,
>  		   const struct bdb_lvds_lfp_data_ptrs *ptrs,
>  		   int index)
>  {
> -	u16 data_size =3D ((const u16 *)data)[-1]; /* stored in header */
> -	size_t ofs;
> -
> -	if (index >=3D ARRAY_SIZE(ptrs->ptr))
> -		return NULL;
> -	ofs =3D ptrs->ptr[index].fp_timing.offset;
> -	if (ofs + sizeof(struct lvds_fp_timing) > data_size)
> -		return NULL;
> -	return (const struct lvds_fp_timing *)((const u8 *)data + ofs);
> +	return (const void *)data + ptrs->ptr[index].fp_timing.offset;
>  }
>=20=20
>  /* Parse general panel options */
> @@ -499,8 +474,7 @@ parse_panel_options(struct drm_i915_private *i915)
>=20=20
>  /* Try to find integrated panel timing data */
>  static void
> -parse_lfp_panel_dtd(struct drm_i915_private *i915,
> -		    const struct bdb_header *bdb)
> +parse_lfp_panel_dtd(struct drm_i915_private *i915)
>  {
>  	const struct bdb_lvds_lfp_data *lvds_lfp_data;
>  	const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs;
> @@ -536,15 +510,14 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
>  	fp_timing =3D get_lvds_fp_timing(lvds_lfp_data,
>  				       lvds_lfp_data_ptrs,
>  				       panel_type);
> -	if (fp_timing) {
> -		/* check the resolution, just to be sure */
> -		if (fp_timing->x_res =3D=3D panel_fixed_mode->hdisplay &&
> -		    fp_timing->y_res =3D=3D panel_fixed_mode->vdisplay) {
> -			i915->vbt.bios_lvds_val =3D fp_timing->lvds_reg_val;
> -			drm_dbg_kms(&i915->drm,
> -				    "VBT initial LVDS value %x\n",
> -				    i915->vbt.bios_lvds_val);
> -		}
> +
> +	/* check the resolution, just to be sure */
> +	if (fp_timing->x_res =3D=3D panel_fixed_mode->hdisplay &&
> +	    fp_timing->y_res =3D=3D panel_fixed_mode->vdisplay) {
> +		i915->vbt.bios_lvds_val =3D fp_timing->lvds_reg_val;
> +		drm_dbg_kms(&i915->drm,
> +			    "VBT initial LVDS value %x\n",
> +			    i915->vbt.bios_lvds_val);
>  	}
>  }
>=20=20
> @@ -627,8 +600,7 @@ parse_generic_dtd(struct drm_i915_private *i915)
>  }
>=20=20
>  static void
> -parse_panel_dtd(struct drm_i915_private *i915,
> -		const struct bdb_header *bdb)
> +parse_panel_dtd(struct drm_i915_private *i915)
>  {
>  	/*
>  	 * Older VBTs provided provided DTD information for internal displays
> @@ -641,7 +613,7 @@ parse_panel_dtd(struct drm_i915_private *i915,
>  	if (i915->vbt.version >=3D 229)
>  		parse_generic_dtd(i915);
>  	if (!i915->vbt.lfp_lvds_vbt_mode)
> -		parse_lfp_panel_dtd(i915, bdb);
> +		parse_lfp_panel_dtd(i915);
>  }
>=20=20
>  static void
> @@ -2720,7 +2692,7 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	parse_general_features(i915);
>  	parse_general_definitions(i915);
>  	parse_panel_options(i915);
> -	parse_panel_dtd(i915, bdb);
> +	parse_panel_dtd(i915);
>  	parse_lfp_backlight(i915);
>  	parse_sdvo_panel_data(i915);
>  	parse_driver_features(i915);

--=20
Jani Nikula, Intel Open Source Graphics Center
