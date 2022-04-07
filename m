Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 360D14F84C7
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 18:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E83010EB74;
	Thu,  7 Apr 2022 16:21:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00E2410EB74
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 16:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649348509; x=1680884509;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=MnmCkFSPvqbz3LfgGoP4iphkEzSJP/e7dMUu3wt9QPo=;
 b=dLq1sI3Yq43p+dEcnXbHv7WrB0YwFSYP0MtiBWCfqi6A+PwaEAcn8Oxf
 Iq9Pg7RJg1CpMTWNFThRkMXLrapeYzi/WlJ4yhDeLzIAfjdF5VqWYnuKI
 XdMau7O/I4c/dxy6JWwkNGiizuyj53mDaenKylyTTImU8GtyZMu4v/ZHd
 UF1Vc9oo30W/iiSJcbWnGvsd4KFbEhD6QPVszU8jLeNEtEgoD22MiyJ7S
 jxf7c8ikP2lScWD0ynvOF9Cq3HMKaW1EC3T0qcuX0zYkE0YCDCbySn0c4
 irkPlRQ88wA18ZCZ7Uioox26SOgUKNVvlZ1uOraHMruZ727y91BVgjN4O w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="243505549"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="243505549"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 09:21:48 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="550132057"
Received: from kgibala-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.142.48])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 09:21:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220405173410.11436-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-8-ville.syrjala@linux.intel.com>
Date: Thu, 07 Apr 2022 19:21:44 +0300
Message-ID: <87sfqo50fb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 07/22] drm/i915/bios: Reorder panel DTD
 parsing
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
> Reorder things so that we can parse the entier LFP data block

*entire

> in one go. For now we just stick to parsing the DTD from it.
>
> Also fix the misleading comment about block 42 being deprecated.
> Only the DTD part is deprecated, the rest is still very much needed.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 62 ++++++++++++-----------
>  1 file changed, 32 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 799c1fe36b23..f90991cac438 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -488,25 +488,16 @@ parse_panel_options(struct drm_i915_private *i915)
>  	}
>  }
>=20=20
> -/* Try to find integrated panel timing data */
>  static void
> -parse_lfp_panel_dtd(struct drm_i915_private *i915)
> +parse_lfp_panel_dtd(struct drm_i915_private *i915,
> +		    const struct bdb_lvds_lfp_data *lvds_lfp_data,
> +		    const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs)
>  {
> -	const struct bdb_lvds_lfp_data *lvds_lfp_data;
> -	const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs;
>  	const struct lvds_dvo_timing *panel_dvo_timing;
>  	const struct lvds_fp_timing *fp_timing;
>  	struct drm_display_mode *panel_fixed_mode;
>  	int panel_type =3D i915->vbt.panel_type;
>=20=20
> -	lvds_lfp_data =3D find_section(i915, BDB_LVDS_LFP_DATA);
> -	if (!lvds_lfp_data)
> -		return;
> -
> -	lvds_lfp_data_ptrs =3D find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
> -	if (!lvds_lfp_data_ptrs)
> -		return;
> -
>  	panel_dvo_timing =3D get_lvds_dvo_timing(lvds_lfp_data,
>  					       lvds_lfp_data_ptrs,
>  					       panel_type);
> @@ -537,6 +528,24 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915)
>  	}
>  }
>=20=20
> +static void
> +parse_lfp_data(struct drm_i915_private *i915)
> +{
> +	const struct bdb_lvds_lfp_data *data;
> +	const struct bdb_lvds_lfp_data_ptrs *ptrs;
> +
> +	ptrs =3D find_section(i915, BDB_LVDS_LFP_DATA_PTRS);
> +	if (!ptrs)
> +		return;
> +
> +	data =3D find_section(i915, BDB_LVDS_LFP_DATA);
> +	if (!data)
> +		return;
> +
> +	if (!i915->vbt.lfp_lvds_vbt_mode)
> +		parse_lfp_panel_dtd(i915, data, ptrs);

Could do an early return on i915->vbt.lfp_lvds_vbt_mode.

> +}
> +
>  static void
>  parse_generic_dtd(struct drm_i915_private *i915)
>  {
> @@ -615,23 +624,6 @@ parse_generic_dtd(struct drm_i915_private *i915)
>  	i915->vbt.lfp_lvds_vbt_mode =3D panel_fixed_mode;
>  }
>=20=20
> -static void
> -parse_panel_dtd(struct drm_i915_private *i915)
> -{
> -	/*
> -	 * Older VBTs provided provided DTD information for internal displays
> -	 * through the "LFP panel DTD" block (42).  As of VBT revision 229,
> -	 * that block is now deprecated and DTD information should be provided
> -	 * via a newer "generic DTD" block (58).  Just to be safe, we'll
> -	 * try the new generic DTD block first on VBT >=3D 229, but still fall
> -	 * back to trying the old LFP block if that fails.
> -	 */
> -	if (i915->vbt.version >=3D 229)
> -		parse_generic_dtd(i915);
> -	if (!i915->vbt.lfp_lvds_vbt_mode)
> -		parse_lfp_panel_dtd(i915);
> -}
> -
>  static void
>  parse_lfp_backlight(struct drm_i915_private *i915)
>  {
> @@ -2708,7 +2700,17 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	parse_general_features(i915);
>  	parse_general_definitions(i915);
>  	parse_panel_options(i915);
> -	parse_panel_dtd(i915);
> +	/*
> +	 * Older VBTs provided DTD information for internal displays through
> +	 * the "LFP panel tables" block (42).  As of VBT revision 229 the
> +	 * DTD information should be provided via a newer "generic DTD"
> +	 * block (58).  Just to be safe, we'll try the new generic DTD block
> +	 * first on VBT >=3D 229, but still fall back to trying the old LFP
> +	 * block if that fails.
> +	 */
> +	if (i915->vbt.version >=3D 229)

I'd probably stick the vbt version check and the comment in
parse_generic_dtd() instead of polluting the top level.

Up to you if you want to do anything about the nitpicks,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +		parse_generic_dtd(i915);
> +	parse_lfp_data(i915);
>  	parse_lfp_backlight(i915);
>  	parse_sdvo_panel_data(i915);
>  	parse_driver_features(i915);

--=20
Jani Nikula, Intel Open Source Graphics Center
