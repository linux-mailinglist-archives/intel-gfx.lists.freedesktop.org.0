Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DBAA9C00F8
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 10:18:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAACC10E573;
	Thu,  7 Nov 2024 09:18:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NwsJm0Rk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1FB010E573
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 09:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730971123; x=1762507123;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=S36r2Tz8OxAW/ontW9f4yu3GXHvMJGooN2zS9My1JfE=;
 b=NwsJm0Rk7ZR4wmgB0XLJGYqbRAl4tp+5MckTztbs26wx99kdocoGd9bg
 lUH3EKAXtIifmgTRxHe2bcNKgF7Xzm22rKZ+viAuZ3iXTLrh93S4j6c/E
 Zyi+aZ5K7Cv5dvpkVg7OfbMCjuMXL6zjmyMo/FOn//7uTSM7YKjkxA2k/
 O2e6LiWhLqMrp3VOMm4zdlrc+VwSplKARO7wk7a5NzpFcvibG6dJ7I8Mv
 fCOYxD+sMcHgrdMV9RbSqt0CqmOjgUDlRxgU30X/3WplLp2Sy3NcJXwdr
 PsCxWnY0WdaD1WxQGeAo4+Mwb/d/pZlY2dVvnIYRuXNqnWk7mlqpKYwbd g==;
X-CSE-ConnectionGUID: 0CPLS1FMS3S7hG0lsFTmmQ==
X-CSE-MsgGUID: HN/XEbNnTpuDPGafO0elzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53358741"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="53358741"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:18:42 -0800
X-CSE-ConnectionGUID: bC0VRzP1QZ2myGGjar+4rw==
X-CSE-MsgGUID: FfvNhKZ1Qg2ETFj7rHSWmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="88954828"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:18:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/8] drm/i915/pps: Decouple pps delays from VBT struct
 definition
In-Reply-To: <20241106215859.25446-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
 <20241106215859.25446-3-ville.syrjala@linux.intel.com>
Date: Thu, 07 Nov 2024 11:18:37 +0200
Message-ID: <87h68jflle.fsf@intel.com>
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

On Wed, 06 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We currently lack a proper struct definition for the VBT power
> squecing delays, and instead we use the same struct definition

*sequencing

> (in intel_bios.h) for both the VBT layout and our driver side
> state. Decouple those two things by moving the current struct
> into intel_vbt_defs.h and adding a new one for the driver's use.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 15 +++++++++++---
>  drivers/gpu/drm/i915/display/intel_bios.h     |  8 --------
>  .../drm/i915/display/intel_display_types.h    | 15 +++++++++++---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  1 -
>  drivers/gpu/drm/i915/display/intel_pps.c      | 20 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  8 ++++++++
>  6 files changed, 42 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index a4cdd82c4a75..31398de08e7f 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1402,12 +1402,21 @@ parse_power_conservation_features(struct intel_di=
splay *display,
>  					    panel_type);
>  }
>=20=20
> +static void vbt_edp_to_pps_delays(struct intel_pps_delays *pps,
> +				  const struct edp_power_seq *edp_pps)
> +{
> +	pps->t1_t3 =3D edp_pps->t1_t3;
> +	pps->t8 =3D edp_pps->t8;
> +	pps->t9 =3D edp_pps->t9;
> +	pps->t10 =3D edp_pps->t10;
> +	pps->t11_t12 =3D edp_pps->t11_t12;
> +}
> +
>  static void
>  parse_edp(struct intel_display *display,
>  	  struct intel_panel *panel)
>  {
>  	const struct bdb_edp *edp;
> -	const struct edp_power_seq *edp_pps;
>  	const struct edp_fast_link_params *edp_link_params;
>  	int panel_type =3D panel->vbt.panel_type;
>=20=20
> @@ -1428,10 +1437,10 @@ parse_edp(struct intel_display *display,
>  	}
>=20=20
>  	/* Get the eDP sequencing and link info */
> -	edp_pps =3D &edp->power_seqs[panel_type];
>  	edp_link_params =3D &edp->fast_link_params[panel_type];
>=20=20
> -	panel->vbt.edp.pps =3D *edp_pps;
> +	vbt_edp_to_pps_delays(&panel->vbt.edp.pps,
> +			      &edp->power_seqs[panel_type]);
>=20=20
>  	if (display->vbt.version >=3D 224) {
>  		panel->vbt.edp.rate =3D
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/=
i915/display/intel_bios.h
> index 8b703f6cfe17..f9841f0498c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -50,14 +50,6 @@ enum intel_backlight_type {
>  	INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE,
>  };
>=20=20
> -struct edp_power_seq {
> -	u16 t1_t3;
> -	u16 t8;
> -	u16 t9;
> -	u16 t10;
> -	u16 t11_t12;
> -} __packed;
> -
>  /*
>   * MIPI Sequence Block definitions
>   *
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index d3a1aa7c919f..62cf5d007872 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -301,6 +301,15 @@ struct intel_panel_bl_funcs {
>  	u32 (*hz_to_pwm)(struct intel_connector *connector, u32 hz);
>  };
>=20=20
> +/* in 100us units */
> +struct intel_pps_delays {
> +	u16 t1_t3;
> +	u16 t8;
> +	u16 t9;
> +	u16 t10;
> +	u16 t11_t12;
> +};
> +
>  enum drrs_type {
>  	DRRS_TYPE_NONE,
>  	DRRS_TYPE_STATIC,
> @@ -328,7 +337,7 @@ struct intel_vbt_panel_data {
>  		int preemphasis;
>  		int vswing;
>  		int bpp;
> -		struct edp_power_seq pps;
> +		struct intel_pps_delays pps;
>  		u8 drrs_msa_timing_delay;
>  		bool low_vswing;
>  		bool hobl;
> @@ -1568,8 +1577,8 @@ struct intel_pps {
>  	 * requiring a reinitialization. Only relevant on BXT+.
>  	 */
>  	bool bxt_pps_reset;
> -	struct edp_power_seq pps_delays;
> -	struct edp_power_seq bios_pps_delays;
> +	struct intel_pps_delays pps_delays;
> +	struct intel_pps_delays bios_pps_delays;
>  };
>=20=20
>  struct intel_psr {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/dr=
m/i915/display/intel_dp_aux.c
> index 04a7acd7f73c..7daa8a95dc70 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -6,7 +6,6 @@
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "i915_trace.h"
> -#include "intel_bios.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index 83d65105f32b..c57b9aca5a31 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1387,7 +1387,7 @@ static void pps_init_timestamps(struct intel_dp *in=
tel_dp)
>  }
>=20=20
>  static void
> -intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct edp_power_s=
eq *seq)
> +intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct intel_pps_d=
elays *seq)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	u32 pp_on, pp_off, pp_ctl, power_cycle_delay;
> @@ -1426,7 +1426,7 @@ intel_pps_readout_hw_state(struct intel_dp *intel_d=
p, struct edp_power_seq *seq)
>=20=20
>  static void
>  intel_pps_dump_state(struct intel_dp *intel_dp, const char *state_name,
> -		     const struct edp_power_seq *seq)
> +		     const struct intel_pps_delays *seq)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>=20=20
> @@ -1440,8 +1440,8 @@ static void
>  intel_pps_verify_state(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct edp_power_seq hw;
> -	struct edp_power_seq *sw =3D &intel_dp->pps.pps_delays;
> +	struct intel_pps_delays hw;
> +	struct intel_pps_delays *sw =3D &intel_dp->pps.pps_delays;
>=20=20
>  	intel_pps_readout_hw_state(intel_dp, &hw);
>=20=20
> @@ -1453,14 +1453,14 @@ intel_pps_verify_state(struct intel_dp *intel_dp)
>  	}
>  }
>=20=20
> -static bool pps_delays_valid(struct edp_power_seq *delays)
> +static bool pps_delays_valid(struct intel_pps_delays *delays)
>  {
>  	return delays->t1_t3 || delays->t8 || delays->t9 ||
>  		delays->t10 || delays->t11_t12;
>  }
>=20=20
>  static void pps_init_delays_bios(struct intel_dp *intel_dp,
> -				 struct edp_power_seq *bios)
> +				 struct intel_pps_delays *bios)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>=20=20
> @@ -1475,7 +1475,7 @@ static void pps_init_delays_bios(struct intel_dp *i=
ntel_dp,
>  }
>=20=20
>  static void pps_init_delays_vbt(struct intel_dp *intel_dp,
> -				struct edp_power_seq *vbt)
> +				struct intel_pps_delays *vbt)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_connector *connector =3D intel_dp->attached_connector;
> @@ -1501,7 +1501,7 @@ static void pps_init_delays_vbt(struct intel_dp *in=
tel_dp,
>  }
>=20=20
>  static void pps_init_delays_spec(struct intel_dp *intel_dp,
> -				 struct edp_power_seq *spec)
> +				 struct intel_pps_delays *spec)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>=20=20
> @@ -1521,7 +1521,7 @@ static void pps_init_delays_spec(struct intel_dp *i=
ntel_dp,
>  static void pps_init_delays(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct edp_power_seq cur, vbt, spec,
> +	struct intel_pps_delays cur, vbt, spec,
>  		*final =3D &intel_dp->pps.pps_delays;
>=20=20
>  	lockdep_assert_held(&display->pps.mutex);
> @@ -1589,7 +1589,7 @@ static void pps_init_registers(struct intel_dp *int=
el_dp, bool force_disable_vdd
>  	int div =3D DISPLAY_RUNTIME_INFO(display)->rawclk_freq / 1000;
>  	struct pps_registers regs;
>  	enum port port =3D dp_to_dig_port(intel_dp)->base.port;
> -	const struct edp_power_seq *seq =3D &intel_dp->pps.pps_delays;
> +	const struct intel_pps_delays *seq =3D &intel_dp->pps.pps_delays;
>=20=20
>  	lockdep_assert_held(&display->pps.mutex);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index 42022756bbd5..e9b809568cd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -1014,6 +1014,14 @@ struct bdb_tv_options {
>   * Block 27 - eDP VBT Block
>   */
>=20=20
> +struct edp_power_seq {
> +	u16 t1_t3;
> +	u16 t8;
> +	u16 t9;
> +	u16 t10;
> +	u16 t11_t12;
> +} __packed;
> +
>  #define EDP_18BPP	0
>  #define EDP_24BPP	1
>  #define EDP_30BPP	2

--=20
Jani Nikula, Intel
