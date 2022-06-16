Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 915DB54DF6E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 12:48:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D3311A124;
	Thu, 16 Jun 2022 10:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9423011A123
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 10:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655376500; x=1686912500;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=/pvzIr4FcrONSpVAewrZAG5OWeYZ+rHpIZvHSYi/Wp0=;
 b=Xn6egRxoj+iEfd4hJPF0PCl7MvjGiDZxf2WQS5G5CkXmtLA8oKDxa7pz
 srvBbwiB9ytznQ6s11uYp1n9Dfxg7EofbPejpcDOPPUSjmRTV+JtbAmQh
 Z4XSAeXs7FdoWeKboxCt/27r0wUXBeHsobNKEGk8p8k3B61xTGKwy53jX
 G1WajxU/uSVFLFRLtmDcBAK2JXd+vY2kPf45Xb4N1HRPH/nZz6naY17Ci
 4G5rmEXwjsMaa6fKlKZ4+7kocWAhE9Os164Ky61A/0aDdhk4zkh0kNcAL
 TMQ8ER4jCxPC7T7Wx8n2eR2R1PRuADq4cCtSPl6eDLx02FkTECuGTUd9O A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="259075000"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="259075000"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 03:48:20 -0700
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="589591553"
Received: from malashi-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.133])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 03:48:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220615151445.8531-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220615151445.8531-1-ville.syrjala@linux.intel.com>
 <20220615151445.8531-3-ville.syrjala@linux.intel.com>
Date: Thu, 16 Jun 2022 13:48:16 +0300
Message-ID: <87ilp0x4sv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/bios: Introduce panel_bits()
 and panel_bool()
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

On Wed, 15 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Abstract the bit extraction from the VBT per-panel bitfields
> slightly.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 31 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  3 --
>  2 files changed, 21 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 807184fd5618..76e86358adb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -743,6 +743,16 @@ static int get_panel_type(struct drm_i915_private *i=
915,
>  	return panel_types[i].panel_type;
>  }
>=20=20
> +static unsigned int panel_bits(unsigned int value, int panel_type, int n=
um_bits)
> +{
> +	return (value >> (panel_type * num_bits)) & (BIT(num_bits) - 1);

Nitpick, this might be easier to parse with GENMASK and friends, but
*shrug*.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +}
> +
> +static bool panel_bool(unsigned int value, int panel_type)
> +{
> +	return panel_bits(value, panel_type, 1);
> +}
> +
>  /* Parse general panel options */
>  static void
>  parse_panel_options(struct drm_i915_private *i915,
> @@ -766,8 +776,8 @@ parse_panel_options(struct drm_i915_private *i915,
>  	if (get_blocksize(lvds_options) < 16)
>  		return;
>=20=20
> -	drrs_mode =3D (lvds_options->dps_panel_type_bits
> -				>> (panel_type * 2)) & MODE_MASK;
> +	drrs_mode =3D panel_bits(lvds_options->dps_panel_type_bits,
> +			       panel_type, 2);
>  	/*
>  	 * VBT has static DRRS =3D 0 and seamless DRRS =3D 2.
>  	 * The below piece of code is required to adjust vbt.drrs_type
> @@ -1313,7 +1323,7 @@ parse_power_conservation_features(struct drm_i915_p=
rivate *i915,
>  	if (!power)
>  		return;
>=20=20
> -	panel->vbt.psr.enable =3D power->psr & BIT(panel_type);
> +	panel->vbt.psr.enable =3D panel_bool(power->psr, panel_type);
>=20=20
>  	/*
>  	 * If DRRS is not supported, drrs_type has to be set to 0.
> @@ -1321,22 +1331,23 @@ parse_power_conservation_features(struct drm_i915=
_private *i915,
>  	 * static DRRS is 0 and DRRS not supported is represented by
>  	 * power->drrs & BIT(panel_type)=3Dfalse
>  	 */
> -	if (!(power->drrs & BIT(panel_type)) && panel->vbt.drrs_type !=3D DRRS_=
TYPE_NONE) {
> +	if (!panel_bool(power->drrs, panel_type) && panel->vbt.drrs_type !=3D D=
RRS_TYPE_NONE) {
>  		/*
>  		 * FIXME Should DMRRS perhaps be treated as seamless
>  		 * but without the automatic downclocking?
>  		 */
> -		if (power->dmrrs & BIT(panel_type))
> +		if (panel_bool(power->dmrrs, panel_type))
>  			panel->vbt.drrs_type =3D DRRS_TYPE_STATIC;
>  		else
>  			panel->vbt.drrs_type =3D DRRS_TYPE_NONE;
>  	}
>=20=20
>  	if (i915->vbt.version >=3D 232)
> -		panel->vbt.edp.hobl =3D power->hobl & BIT(panel_type);
> +		panel->vbt.edp.hobl =3D panel_bool(power->hobl, panel_type);
>=20=20
>  	if (i915->vbt.version >=3D 233)
> -		panel->vbt.vrr =3D power->vrr_feature_enabled & BIT(panel_type);
> +		panel->vbt.vrr =3D panel_bool(power->vrr_feature_enabled,
> +					    panel_type);
>  }
>=20=20
>  static void
> @@ -1352,7 +1363,7 @@ parse_edp(struct drm_i915_private *i915,
>  	if (!edp)
>  		return;
>=20=20
> -	switch ((edp->color_depth >> (panel_type * 2)) & 3) {
> +	switch (panel_bits(edp->color_depth, panel_type, 2)) {
>  	case EDP_18BPP:
>  		panel->vbt.edp.bpp =3D 18;
>  		break;
> @@ -1463,7 +1474,7 @@ parse_edp(struct drm_i915_private *i915,
>  	}
>=20=20
>  	panel->vbt.edp.drrs_msa_timing_delay =3D
> -		(edp->sdrrs_msa_timing_delay >> (panel_type * 2)) & 3;
> +		panel_bits(edp->sdrrs_msa_timing_delay, panel_type, 2);
>=20=20
>  	if (i915->vbt.version >=3D 244)
>  		panel->vbt.edp.max_link_rate =3D
> @@ -1546,7 +1557,7 @@ parse_psr(struct drm_i915_private *i915,
>  	if (i915->vbt.version >=3D 226) {
>  		u32 wakeup_time =3D psr->psr2_tp2_tp3_wakeup_time;
>=20=20
> -		wakeup_time =3D (wakeup_time >> (2 * panel_type)) & 0x3;
> +		wakeup_time =3D panel_bits(wakeup_time, panel_type, 2);
>  		switch (wakeup_time) {
>  		case 0:
>  			wakeup_time =3D 500;
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index f8e5097222f2..3766c09bd65d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -704,9 +704,6 @@ struct bdb_edp {
>   * Block 40 - LFP Data Block
>   */
>=20=20
> -/* Mask for DRRS / Panel Channel / SSC / BLT control bits extraction */
> -#define MODE_MASK		0x3
> -
>  struct bdb_lvds_options {
>  	u8 panel_type;
>  	u8 panel_type2;						/* 212 */

--=20
Jani Nikula, Intel Open Source Graphics Center
