Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8939C00F9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 10:19:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 610B689B99;
	Thu,  7 Nov 2024 09:19:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DpTfW18f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8D5089B99
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 09:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730971146; x=1762507146;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=XrCXbFKBl7NiNdjx6i2RA+qlZq1/vY/HCAq744lVP5M=;
 b=DpTfW18fIRfQoBKE2YFUfxDlm4pOj71Jbn/PBdAJN7btE8qy7P7TBTE1
 VqltheOY3qrY9YV/TtPDY02Rvz9RS9s5m5i8Bkg7AEvz3tZuBWP8yesfL
 dNpi+vZnfuziTufgxwC4co7y24VBg6VragRKUtfCVoQ2abQcXb9rKi5H5
 U2VbRIL/R+azNfKQXBaPVP6MWHdQm9rqLxef0MTGpuXCwXmeMcs8vhwRW
 ne67Lmm1rvhDl8Ja/9kafX/fyuk2iQ/hgQkBzcycUAtvWLbJvl3x8mNn9
 EaJO2X2pvuv6epy7G5Scl5kTGk6r1DMTpkw2YrIUIfJLRB6tX6TIUg/iw g==;
X-CSE-ConnectionGUID: RbiGSfAXTa2jCZ3DmA9yvg==
X-CSE-MsgGUID: NAqypSgTSoKOITTygR2dWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53358751"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="53358751"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:19:06 -0800
X-CSE-ConnectionGUID: i9VN2ReuS1uHo6Ih+6r4Ug==
X-CSE-MsgGUID: P/qVV0R6QauGvxOLTyRiyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,265,1725346800"; d="scan'208";a="88954901"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 01:19:04 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/8] drm/i915/pps: Rename intel_pps_delay members
In-Reply-To: <20241106215859.25446-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241106215859.25446-1-ville.syrjala@linux.intel.com>
 <20241106215859.25446-4-ville.syrjala@linux.intel.com>
Date: Thu, 07 Nov 2024 11:19:01 +0200
Message-ID: <87ed3nflkq.fsf@intel.com>
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
> Stop using the semi-random eDP spec T1,T3,... names for the
> power sequencing delays, and instead call them by their human
> readable names. Much easier to keep track what delay goes
> where when you don't have to constantly cross reference against
> the eDP spec.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 10 +-
>  .../drm/i915/display/intel_display_types.h    | 10 +-
>  drivers/gpu/drm/i915/display/intel_pps.c      | 92 ++++++++++---------
>  3 files changed, 58 insertions(+), 54 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 31398de08e7f..e0e4e9b62d8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1405,11 +1405,11 @@ parse_power_conservation_features(struct intel_di=
splay *display,
>  static void vbt_edp_to_pps_delays(struct intel_pps_delays *pps,
>  				  const struct edp_power_seq *edp_pps)
>  {
> -	pps->t1_t3 =3D edp_pps->t1_t3;
> -	pps->t8 =3D edp_pps->t8;
> -	pps->t9 =3D edp_pps->t9;
> -	pps->t10 =3D edp_pps->t10;
> -	pps->t11_t12 =3D edp_pps->t11_t12;
> +	pps->power_up =3D edp_pps->t1_t3;
> +	pps->backlight_on =3D edp_pps->t8;
> +	pps->backlight_off =3D edp_pps->t9;
> +	pps->power_down =3D edp_pps->t10;
> +	pps->power_cycle =3D edp_pps->t11_t12;
>  }
>=20=20
>  static void
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 62cf5d007872..4af40315b410 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -303,11 +303,11 @@ struct intel_panel_bl_funcs {
>=20=20
>  /* in 100us units */
>  struct intel_pps_delays {
> -	u16 t1_t3;
> -	u16 t8;
> -	u16 t9;
> -	u16 t10;
> -	u16 t11_t12;
> +	u16 power_up;      /* eDP: T1+T3 */
> +	u16 backlight_on;  /* eDP: T8 */
> +	u16 backlight_off; /* eDP: T9 */
> +	u16 power_down;    /* eDP: T10 */
> +	u16 power_cycle;   /* eDP: T11+T12 */
>  };
>=20=20
>  enum drrs_type {
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index c57b9aca5a31..ed52f84d4cf3 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -676,7 +676,7 @@ static void wait_panel_power_cycle(struct intel_dp *i=
ntel_dp)
>  		    pps_name(intel_dp));
>=20=20
>  	/* take the difference of current time and panel power off time
> -	 * and then make panel wait for t11_t12 if needed. */
> +	 * and then make panel wait for power_cycle if needed. */
>  	panel_power_on_time =3D ktime_get_boottime();
>  	panel_power_off_duration =3D ktime_ms_delta(panel_power_on_time, intel_=
dp->pps.panel_power_off_time);
>=20=20
> @@ -1405,10 +1405,10 @@ intel_pps_readout_hw_state(struct intel_dp *intel=
_dp, struct intel_pps_delays *s
>  	pp_off =3D intel_de_read(display, regs.pp_off);
>=20=20
>  	/* Pull timing values out of registers */
> -	seq->t1_t3 =3D REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, pp_on);
> -	seq->t8 =3D REG_FIELD_GET(PANEL_LIGHT_ON_DELAY_MASK, pp_on);
> -	seq->t9 =3D REG_FIELD_GET(PANEL_LIGHT_OFF_DELAY_MASK, pp_off);
> -	seq->t10 =3D REG_FIELD_GET(PANEL_POWER_DOWN_DELAY_MASK, pp_off);
> +	seq->power_up =3D REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, pp_on);
> +	seq->backlight_on =3D REG_FIELD_GET(PANEL_LIGHT_ON_DELAY_MASK, pp_on);
> +	seq->backlight_off =3D REG_FIELD_GET(PANEL_LIGHT_OFF_DELAY_MASK, pp_off=
);
> +	seq->power_down =3D REG_FIELD_GET(PANEL_POWER_DOWN_DELAY_MASK, pp_off);
>=20=20
>  	if (i915_mmio_reg_valid(regs.pp_div)) {
>  		u32 pp_div;
> @@ -1421,7 +1421,7 @@ intel_pps_readout_hw_state(struct intel_dp *intel_d=
p, struct intel_pps_delays *s
>  	}
>=20=20
>  	/* hardware wants <delay>+1 in 100ms units */
> -	seq->t11_t12 =3D power_cycle_delay ? (power_cycle_delay - 1) * 1000 : 0;
> +	seq->power_cycle =3D power_cycle_delay ? (power_cycle_delay - 1) * 1000=
 : 0;
>  }
>=20=20
>  static void
> @@ -1431,9 +1431,9 @@ intel_pps_dump_state(struct intel_dp *intel_dp, con=
st char *state_name,
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>=20=20
>  	drm_dbg_kms(display->drm,
> -		    "%s t1_t3 %d t8 %d t9 %d t10 %d t11_t12 %d\n",
> -		    state_name,
> -		    seq->t1_t3, seq->t8, seq->t9, seq->t10, seq->t11_t12);
> +		    "%s power_up %d backlight_on %d backlight_off %d power_down %d pow=
er_cycle %d\n",
> +		    state_name, seq->power_up, seq->backlight_on,
> +		    seq->backlight_off, seq->power_down, seq->power_cycle);
>  }
>=20=20
>  static void
> @@ -1445,8 +1445,11 @@ intel_pps_verify_state(struct intel_dp *intel_dp)
>=20=20
>  	intel_pps_readout_hw_state(intel_dp, &hw);
>=20=20
> -	if (hw.t1_t3 !=3D sw->t1_t3 || hw.t8 !=3D sw->t8 || hw.t9 !=3D sw->t9 ||
> -	    hw.t10 !=3D sw->t10 || hw.t11_t12 !=3D sw->t11_t12) {
> +	if (hw.power_up !=3D sw->power_up ||
> +	    hw.backlight_on !=3D sw->backlight_on ||
> +	    hw.backlight_off !=3D sw->backlight_off ||
> +	    hw.power_down !=3D sw->power_down ||
> +	    hw.power_cycle !=3D sw->power_cycle) {
>  		drm_err(display->drm, "PPS state mismatch\n");
>  		intel_pps_dump_state(intel_dp, "sw", sw);
>  		intel_pps_dump_state(intel_dp, "hw", &hw);
> @@ -1455,8 +1458,8 @@ intel_pps_verify_state(struct intel_dp *intel_dp)
>=20=20
>  static bool pps_delays_valid(struct intel_pps_delays *delays)
>  {
> -	return delays->t1_t3 || delays->t8 || delays->t9 ||
> -		delays->t10 || delays->t11_t12;
> +	return delays->power_up || delays->backlight_on || delays->backlight_of=
f ||
> +		delays->power_down || delays->power_cycle;
>  }
>=20=20
>  static void pps_init_delays_bios(struct intel_dp *intel_dp,
> @@ -1491,10 +1494,10 @@ static void pps_init_delays_vbt(struct intel_dp *=
intel_dp,
>  	 * seems sufficient to avoid this problem.
>  	 */
>  	if (intel_has_quirk(display, QUIRK_INCREASE_T12_DELAY)) {
> -		vbt->t11_t12 =3D max_t(u16, vbt->t11_t12, 1300 * 10);
> +		vbt->power_cycle =3D max_t(u16, vbt->power_cycle, 1300 * 10);
>  		drm_dbg_kms(display->drm,
>  			    "Increasing T12 panel delay as per the quirk to %d\n",
> -			    vbt->t11_t12);
> +			    vbt->power_cycle);
>  	}
>=20=20
>  	intel_pps_dump_state(intel_dp, "vbt", vbt);
> @@ -1509,11 +1512,11 @@ static void pps_init_delays_spec(struct intel_dp =
*intel_dp,
>=20=20
>  	/* Upper limits from eDP 1.3 spec. Note that we use the clunky units of
>  	 * our hw here, which are all in 100usec. */
> -	spec->t1_t3 =3D 210 * 10;
> -	spec->t8 =3D 50 * 10; /* no limit for t8, use t7 instead */
> -	spec->t9 =3D 50 * 10; /* no limit for t9, make it symmetric with t8 */
> -	spec->t10 =3D 500 * 10;
> -	spec->t11_t12 =3D 510 * 10;
> +	spec->power_up =3D 210 * 10; /* T1+T3 */
> +	spec->backlight_on =3D 50 * 10; /* no limit for T8, use T7 instead */
> +	spec->backlight_off =3D 50 * 10; /* no limit for T9, make it symmetric =
with T8 */
> +	spec->power_down =3D 500 * 10; /* T10 */
> +	spec->power_cycle =3D 510 * 10; /* T11+T12 */
>=20=20
>  	intel_pps_dump_state(intel_dp, "spec", spec);
>  }
> @@ -1539,19 +1542,19 @@ static void pps_init_delays(struct intel_dp *inte=
l_dp)
>  #define assign_final(field)	final->field =3D (max(cur.field, vbt.field) =
=3D=3D 0 ? \
>  				       spec.field : \
>  				       max(cur.field, vbt.field))
> -	assign_final(t1_t3);
> -	assign_final(t8);
> -	assign_final(t9);
> -	assign_final(t10);
> -	assign_final(t11_t12);
> +	assign_final(power_up);
> +	assign_final(backlight_on);
> +	assign_final(backlight_off);
> +	assign_final(power_down);
> +	assign_final(power_cycle);
>  #undef assign_final
>=20=20
>  #define get_delay(field)	(DIV_ROUND_UP(final->field, 10))
> -	intel_dp->pps.panel_power_up_delay =3D get_delay(t1_t3);
> -	intel_dp->pps.backlight_on_delay =3D get_delay(t8);
> -	intel_dp->pps.backlight_off_delay =3D get_delay(t9);
> -	intel_dp->pps.panel_power_down_delay =3D get_delay(t10);
> -	intel_dp->pps.panel_power_cycle_delay =3D get_delay(t11_t12);
> +	intel_dp->pps.panel_power_up_delay =3D get_delay(power_up);
> +	intel_dp->pps.backlight_on_delay =3D get_delay(backlight_on);
> +	intel_dp->pps.backlight_off_delay =3D get_delay(backlight_off);
> +	intel_dp->pps.panel_power_down_delay =3D get_delay(power_down);
> +	intel_dp->pps.panel_power_cycle_delay =3D get_delay(power_cycle);
>  #undef get_delay
>=20=20
>  	drm_dbg_kms(display->drm,
> @@ -1566,19 +1569,20 @@ static void pps_init_delays(struct intel_dp *inte=
l_dp)
>=20=20
>  	/*
>  	 * We override the HW backlight delays to 1 because we do manual waits
> -	 * on them. For T8, even BSpec recommends doing it. For T9, if we
> -	 * don't do this, we'll end up waiting for the backlight off delay
> -	 * twice: once when we do the manual sleep, and once when we disable
> -	 * the panel and wait for the PP_STATUS bit to become zero.
> +	 * on them. For backlight_on, even BSpec recommends doing it. For
> +	 * backlight_off, if we don't do this, we'll end up waiting for the
> +	 * backlight off delay twice: once when we do the manual sleep, and
> +	 * once when we disable the panel and wait for the PP_STATUS bit to
> +	 * become zero.
>  	 */
> -	final->t8 =3D 1;
> -	final->t9 =3D 1;
> +	final->backlight_on =3D 1;
> +	final->backlight_off =3D 1;
>=20=20
>  	/*
> -	 * HW has only a 100msec granularity for t11_t12 so round it up
> +	 * HW has only a 100msec granularity for power_cycle so round it up
>  	 * accordingly.
>  	 */
> -	final->t11_t12 =3D roundup(final->t11_t12, 100 * 10);
> +	final->power_cycle =3D roundup(final->power_cycle, 100 * 10);
>  }
>=20=20
>  static void pps_init_registers(struct intel_dp *intel_dp, bool force_dis=
able_vdd)
> @@ -1622,10 +1626,10 @@ static void pps_init_registers(struct intel_dp *i=
ntel_dp, bool force_disable_vdd
>  		intel_de_write(display, regs.pp_ctrl, pp);
>  	}
>=20=20
> -	pp_on =3D REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, seq->t1_t3) |
> -		REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, seq->t8);
> -	pp_off =3D REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, seq->t9) |
> -		REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, seq->t10);
> +	pp_on =3D REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, seq->power_up) |
> +		REG_FIELD_PREP(PANEL_LIGHT_ON_DELAY_MASK, seq->backlight_on);
> +	pp_off =3D REG_FIELD_PREP(PANEL_LIGHT_OFF_DELAY_MASK, seq->backlight_of=
f) |
> +		REG_FIELD_PREP(PANEL_POWER_DOWN_DELAY_MASK, seq->power_down);
>=20=20
>  	/* Haswell doesn't have any port selection bits for the panel
>  	 * power sequencer any more. */
> @@ -1661,11 +1665,11 @@ static void pps_init_registers(struct intel_dp *i=
ntel_dp, bool force_disable_vdd
>  			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK,
>  					      (100 * div) / 2 - 1) |
>  			       REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK,
> -					      DIV_ROUND_UP(seq->t11_t12, 1000) + 1));
> +					      DIV_ROUND_UP(seq->power_cycle, 1000) + 1));
>  	else
>  		intel_de_rmw(display, regs.pp_ctrl, BXT_POWER_CYCLE_DELAY_MASK,
>  			     REG_FIELD_PREP(BXT_POWER_CYCLE_DELAY_MASK,
> -					    DIV_ROUND_UP(seq->t11_t12, 1000) + 1));
> +					    DIV_ROUND_UP(seq->power_cycle, 1000) + 1));
>=20=20
>  	drm_dbg_kms(display->drm,
>  		    "panel power sequencer register settings: PP_ON %#x, PP_OFF %#x, P=
P_DIV %#x\n",

--=20
Jani Nikula, Intel
