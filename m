Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 105C29B4710
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 11:40:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FBB410E621;
	Tue, 29 Oct 2024 10:40:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cm1w6lQL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2374610E61D;
 Tue, 29 Oct 2024 10:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730198419; x=1761734419;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NFpV2c8l8+7epRuIYpQuVbAothcpXzHX17aWnPSeaOY=;
 b=Cm1w6lQL7txQJk/5II7yBh1hfXedegCBf868v1hu1pc46QnaVje36j/E
 xL8pco8qj530bgcZQq4cqmVcWaO5z0CWrZyFlIUGxt0MQECIs7nmpAbZp
 fXaBUDFXaHoZrHiOPY+8/2246gHoM9ye6IDOvFYl7zfBCKiYm9uHRwbMU
 bK3hxzhuB1IFSRvKivG4cgb9qoNyXJOE1lX8ucFoQotzyCkKyl2OsrF7o
 XOKgLg7sdc8arGmAM5Ek/1W+0SOhn7Vqww+a2oqTFvtGf+cC1NBe4YRMM
 +bakuPWwIP2LcR/llDZnUWhmLfKrRJENUuMD61Bc0xcWjsJeKxhCktnQI w==;
X-CSE-ConnectionGUID: t+4uK9XxQhyMsGMV0sd6/A==
X-CSE-MsgGUID: zV+cwo5tR6yB0iA/EsOf/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="30039998"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="30039998"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 03:40:19 -0700
X-CSE-ConnectionGUID: VF9XzvfAQt6FwoJ4UNBj+g==
X-CSE-MsgGUID: UQWDccMeTZmV9vCGZrkH/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="81998635"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 03:40:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/display: convert I915_STATE_WARN() to
 struct intel_display
In-Reply-To: <20241024162510.2410128-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241024162510.2410128-1-jani.nikula@intel.com>
Date: Tue, 29 Oct 2024 12:40:14 +0200
Message-ID: <87jzdrnqep.fsf@intel.com>
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

On Thu, 24 Oct 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> Convert I915_STATE_WARN() to struct intel_display *, and rename to
> INTEL_DISPLAY_STATE_WARN(). Do some minor opportunistic struct
> drm_i915_private to struct intel_display conversions while at it.
>
> v2: crtc_state may be NULL in intel_connector_verify_state()
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Thanks for the review, pushed to din.

BR,
Jani.

>
> ---
>
> Another option would be to convert I915_STATE_WARN() directly to
> drm_WARN() or drm_err() and throw out the i915.verbose_state_checks
> module parameter.
>
> Note: This is much easier to review with git show -w or --color-words or
> both.
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c         | 15 ++--
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  8 +-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 76 ++++++++--------
>  drivers/gpu/drm/i915/display/intel_display.c  | 19 ++--
>  drivers/gpu/drm/i915/display/intel_display.h  | 17 ++--
>  .../drm/i915/display/intel_display_power.c    | 73 +++++++--------
>  drivers/gpu/drm/i915/display/intel_dpll.c     |  9 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 90 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_fdi.c      | 42 +++++----
>  .../drm/i915/display/intel_modeset_verify.c   | 89 +++++++++---------
>  .../gpu/drm/i915/display/intel_pch_display.c  | 56 ++++++------
>  drivers/gpu/drm/i915/display/intel_pps.c      | 26 +++---
>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 11 +--
>  drivers/gpu/drm/i915/display/vlv_dsi_pll.c    |  7 +-
>  14 files changed, 277 insertions(+), 261 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915=
/display/g4x_dp.c
> index 440fb3002f28..dfe5a40fda1e 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -170,13 +170,12 @@ static void assert_dp_port(struct intel_dp *intel_d=
p, bool state)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
> -	struct drm_i915_private *dev_priv =3D to_i915(dig_port->base.base.dev);
>  	bool cur_state =3D intel_de_read(display, intel_dp->output_reg) & DP_PO=
RT_EN;
>=20=20
> -	I915_STATE_WARN(dev_priv, cur_state !=3D state,
> -			"[ENCODER:%d:%s] state assertion failure (expected %s, current %s)\n",
> -			dig_port->base.base.base.id, dig_port->base.base.name,
> -			str_on_off(state), str_on_off(cur_state));
> +	INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state,
> +				 "[ENCODER:%d:%s] state assertion failure (expected %s, current %s)\=
n",
> +				 dig_port->base.base.base.id, dig_port->base.base.name,
> +				 str_on_off(state), str_on_off(cur_state));
>  }
>  #define assert_dp_port_disabled(d) assert_dp_port((d), false)
>=20=20
> @@ -185,9 +184,9 @@ static void assert_edp_pll(struct drm_i915_private *d=
ev_priv, bool state)
>  	struct intel_display *display =3D &dev_priv->display;
>  	bool cur_state =3D intel_de_read(display, DP_A) & DP_PLL_ENABLE;
>=20=20
> -	I915_STATE_WARN(dev_priv, cur_state !=3D state,
> -			"eDP PLL state assertion failure (expected %s, current %s)\n",
> -			str_on_off(state), str_on_off(cur_state));
> +	INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state,
> +				 "eDP PLL state assertion failure (expected %s, current %s)\n",
> +				 str_on_off(state), str_on_off(cur_state));
>  }
>  #define assert_edp_pll_enabled(d) assert_edp_pll((d), true)
>  #define assert_edp_pll_disabled(d) assert_edp_pll((d), false)
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 3c9168a57f38..a2c528d707f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -36,11 +36,11 @@
>=20=20
>  static void assert_vblank_disabled(struct drm_crtc *crtc)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(crtc->dev);
> +	struct intel_display *display =3D to_intel_display(crtc->dev);
>=20=20
> -	if (I915_STATE_WARN(i915, drm_crtc_vblank_get(crtc) =3D=3D 0,
> -			    "[CRTC:%d:%s] vblank assertion failure (expected off, current on)=
\n",
> -			    crtc->base.id, crtc->name))
> +	if (INTEL_DISPLAY_STATE_WARN(display, drm_crtc_vblank_get(crtc) =3D=3D =
0,
> +				     "[CRTC:%d:%s] vblank assertion failure (expected off, current o=
n)\n",
> +				     crtc->base.id, crtc->name))
>  		drm_crtc_vblank_put(crtc);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index 8bd5a4d1b735..638a8167361c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3272,28 +3272,28 @@ static void intel_c10pll_state_verify(const struc=
t intel_crtc_state *state,
>  				      struct intel_encoder *encoder,
>  				      struct intel_c10pll_state *mpllb_hw_state)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_display *display =3D to_intel_display(state);
>  	const struct intel_c10pll_state *mpllb_sw_state =3D &state->dpll_hw_sta=
te.cx0pll.c10;
>  	int i;
>=20=20
>  	for (i =3D 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
>  		u8 expected =3D mpllb_sw_state->pll[i];
>=20=20
> -		I915_STATE_WARN(i915, mpllb_hw_state->pll[i] !=3D expected,
> -				"[CRTC:%d:%s] mismatch in C10MPLLB: Register[%d] (expected 0x%02x, f=
ound 0x%02x)",
> -				crtc->base.base.id, crtc->base.name, i,
> -				expected, mpllb_hw_state->pll[i]);
> +		INTEL_DISPLAY_STATE_WARN(display, mpllb_hw_state->pll[i] !=3D expected,
> +					 "[CRTC:%d:%s] mismatch in C10MPLLB: Register[%d] (expected 0x%02x,=
 found 0x%02x)",
> +					 crtc->base.base.id, crtc->base.name, i,
> +					 expected, mpllb_hw_state->pll[i]);
>  	}
>=20=20
> -	I915_STATE_WARN(i915, mpllb_hw_state->tx !=3D mpllb_sw_state->tx,
> -			"[CRTC:%d:%s] mismatch in C10MPLLB: Register TX0 (expected 0x%02x, fo=
und 0x%02x)",
> -			crtc->base.base.id, crtc->base.name,
> -			mpllb_sw_state->tx, mpllb_hw_state->tx);
> +	INTEL_DISPLAY_STATE_WARN(display, mpllb_hw_state->tx !=3D mpllb_sw_stat=
e->tx,
> +				 "[CRTC:%d:%s] mismatch in C10MPLLB: Register TX0 (expected 0x%02x, =
found 0x%02x)",
> +				 crtc->base.base.id, crtc->base.name,
> +				 mpllb_sw_state->tx, mpllb_hw_state->tx);
>=20=20
> -	I915_STATE_WARN(i915, mpllb_hw_state->cmn !=3D mpllb_sw_state->cmn,
> -			"[CRTC:%d:%s] mismatch in C10MPLLB: Register CMN0 (expected 0x%02x, f=
ound 0x%02x)",
> -			crtc->base.base.id, crtc->base.name,
> -			mpllb_sw_state->cmn, mpllb_hw_state->cmn);
> +	INTEL_DISPLAY_STATE_WARN(display, mpllb_hw_state->cmn !=3D mpllb_sw_sta=
te->cmn,
> +				 "[CRTC:%d:%s] mismatch in C10MPLLB: Register CMN0 (expected 0x%02x,=
 found 0x%02x)",
> +				 crtc->base.base.id, crtc->base.name,
> +				 mpllb_sw_state->cmn, mpllb_hw_state->cmn);
>  }
>=20=20
>  void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
> @@ -3379,51 +3379,51 @@ static void intel_c20pll_state_verify(const struc=
t intel_crtc_state *state,
>  				      struct intel_encoder *encoder,
>  				      struct intel_c20pll_state *mpll_hw_state)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_display *display =3D to_intel_display(state);
>  	const struct intel_c20pll_state *mpll_sw_state =3D &state->dpll_hw_stat=
e.cx0pll.c20;
>  	bool sw_use_mpllb =3D intel_c20phy_use_mpllb(mpll_sw_state);
>  	bool hw_use_mpllb =3D intel_c20phy_use_mpllb(mpll_hw_state);
>  	int clock =3D intel_c20pll_calc_port_clock(encoder, mpll_sw_state);
>  	int i;
>=20=20
> -	I915_STATE_WARN(i915, mpll_hw_state->clock !=3D clock,
> -			"[CRTC:%d:%s] mismatch in C20: Register CLOCK (expected %d, found %d)=
",
> -			crtc->base.base.id, crtc->base.name,
> -			mpll_sw_state->clock, mpll_hw_state->clock);
> +	INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->clock !=3D clock,
> +				 "[CRTC:%d:%s] mismatch in C20: Register CLOCK (expected %d, found %=
d)",
> +				 crtc->base.base.id, crtc->base.name,
> +				 mpll_sw_state->clock, mpll_hw_state->clock);
>=20=20
> -	I915_STATE_WARN(i915, sw_use_mpllb !=3D hw_use_mpllb,
> -			"[CRTC:%d:%s] mismatch in C20: Register MPLLB selection (expected %d,=
 found %d)",
> -			crtc->base.base.id, crtc->base.name,
> -			sw_use_mpllb, hw_use_mpllb);
> +	INTEL_DISPLAY_STATE_WARN(display, sw_use_mpllb !=3D hw_use_mpllb,
> +				 "[CRTC:%d:%s] mismatch in C20: Register MPLLB selection (expected %=
d, found %d)",
> +				 crtc->base.base.id, crtc->base.name,
> +				 sw_use_mpllb, hw_use_mpllb);
>=20=20
>  	if (hw_use_mpllb) {
>  		for (i =3D 0; i < ARRAY_SIZE(mpll_sw_state->mpllb); i++) {
> -			I915_STATE_WARN(i915, mpll_hw_state->mpllb[i] !=3D mpll_sw_state->mpl=
lb[i],
> -					"[CRTC:%d:%s] mismatch in C20MPLLB: Register[%d] (expected 0x%04x, =
found 0x%04x)",
> -					crtc->base.base.id, crtc->base.name, i,
> -					mpll_sw_state->mpllb[i], mpll_hw_state->mpllb[i]);
> +			INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->mpllb[i] !=3D mpll_s=
w_state->mpllb[i],
> +						 "[CRTC:%d:%s] mismatch in C20MPLLB: Register[%d] (expected 0x%04x=
, found 0x%04x)",
> +						 crtc->base.base.id, crtc->base.name, i,
> +						 mpll_sw_state->mpllb[i], mpll_hw_state->mpllb[i]);
>  		}
>  	} else {
>  		for (i =3D 0; i < ARRAY_SIZE(mpll_sw_state->mplla); i++) {
> -			I915_STATE_WARN(i915, mpll_hw_state->mplla[i] !=3D mpll_sw_state->mpl=
la[i],
> -					"[CRTC:%d:%s] mismatch in C20MPLLA: Register[%d] (expected 0x%04x, =
found 0x%04x)",
> -					crtc->base.base.id, crtc->base.name, i,
> -					mpll_sw_state->mplla[i], mpll_hw_state->mplla[i]);
> +			INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->mplla[i] !=3D mpll_s=
w_state->mplla[i],
> +						 "[CRTC:%d:%s] mismatch in C20MPLLA: Register[%d] (expected 0x%04x=
, found 0x%04x)",
> +						 crtc->base.base.id, crtc->base.name, i,
> +						 mpll_sw_state->mplla[i], mpll_hw_state->mplla[i]);
>  		}
>  	}
>=20=20
>  	for (i =3D 0; i < ARRAY_SIZE(mpll_sw_state->tx); i++) {
> -		I915_STATE_WARN(i915, mpll_hw_state->tx[i] !=3D mpll_sw_state->tx[i],
> -				"[CRTC:%d:%s] mismatch in C20: Register TX[%i] (expected 0x%04x, fou=
nd 0x%04x)",
> -				crtc->base.base.id, crtc->base.name, i,
> -				mpll_sw_state->tx[i], mpll_hw_state->tx[i]);
> +		INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->tx[i] !=3D mpll_sw_st=
ate->tx[i],
> +					 "[CRTC:%d:%s] mismatch in C20: Register TX[%i] (expected 0x%04x, f=
ound 0x%04x)",
> +					 crtc->base.base.id, crtc->base.name, i,
> +					 mpll_sw_state->tx[i], mpll_hw_state->tx[i]);
>  	}
>=20=20
>  	for (i =3D 0; i < ARRAY_SIZE(mpll_sw_state->cmn); i++) {
> -		I915_STATE_WARN(i915, mpll_hw_state->cmn[i] !=3D mpll_sw_state->cmn[i],
> -				"[CRTC:%d:%s] mismatch in C20: Register CMN[%i] (expected 0x%04x, fo=
und 0x%04x)",
> -				crtc->base.base.id, crtc->base.name, i,
> -				mpll_sw_state->cmn[i], mpll_hw_state->cmn[i]);
> +		INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->cmn[i] !=3D mpll_sw_s=
tate->cmn[i],
> +					 "[CRTC:%d:%s] mismatch in C20: Register CMN[%i] (expected 0x%04x, =
found 0x%04x)",
> +					 crtc->base.base.id, crtc->base.name, i,
> +					 mpll_sw_state->cmn[i], mpll_hw_state->cmn[i]);
>  	}
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index ef1436146325..54e68b876be9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -422,6 +422,7 @@ intel_wait_for_pipe_off(const struct intel_crtc_state=
 *old_crtc_state)
>  void assert_transcoder(struct drm_i915_private *dev_priv,
>  		       enum transcoder cpu_transcoder, bool state)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	bool cur_state;
>  	enum intel_display_power_domain power_domain;
>  	intel_wakeref_t wakeref;
> @@ -442,24 +443,24 @@ void assert_transcoder(struct drm_i915_private *dev=
_priv,
>  		cur_state =3D false;
>  	}
>=20=20
> -	I915_STATE_WARN(dev_priv, cur_state !=3D state,
> -			"transcoder %s assertion failure (expected %s, current %s)\n",
> -			transcoder_name(cpu_transcoder), str_on_off(state),
> -			str_on_off(cur_state));
> +	INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state,
> +				 "transcoder %s assertion failure (expected %s, current %s)\n",
> +				 transcoder_name(cpu_transcoder), str_on_off(state),
> +				 str_on_off(cur_state));
>  }
>=20=20
>  static void assert_plane(struct intel_plane *plane, bool state)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	struct intel_display *display =3D to_intel_display(plane->base.dev);
>  	enum pipe pipe;
>  	bool cur_state;
>=20=20
>  	cur_state =3D plane->get_hw_state(plane, &pipe);
>=20=20
> -	I915_STATE_WARN(i915, cur_state !=3D state,
> -			"%s assertion failure (expected %s, current %s)\n",
> -			plane->base.name, str_on_off(state),
> -			str_on_off(cur_state));
> +	INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state,
> +				 "%s assertion failure (expected %s, current %s)\n",
> +				 plane->base.name, str_on_off(state),
> +				 str_on_off(cur_state));
>  }
>=20=20
>  #define assert_plane_enabled(p) assert_plane(p, true)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 61e1df878de9..dd56d60a7d0c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -585,18 +585,17 @@ void assert_transcoder(struct drm_i915_private *dev=
_priv,
>  bool assert_port_valid(struct drm_i915_private *i915, enum port port);
>=20=20
>  /*
> - * Use I915_STATE_WARN(x) (rather than WARN() and WARN_ON()) for hw stat=
e sanity
> - * checks to check for unexpected conditions which may not necessarily b=
e a user
> - * visible problem. This will either WARN() or DRM_ERROR() depending on =
the
> - * verbose_state_checks module param, to enable distros and users to tai=
lor
> - * their preferred amount of i915 abrt spam.
> + * Use INTEL_DISPLAY_STATE_WARN(x) (rather than WARN() and WARN_ON()) fo=
r hw
> + * state sanity checks to check for unexpected conditions which may not
> + * necessarily be a user visible problem. This will either drm_WARN() or
> + * drm_err() depending on the verbose_state_checks module param, to enab=
le
> + * distros and users to tailor their preferred amount of i915 abrt spam.
>   */
> -#define I915_STATE_WARN(__i915, condition, format...) ({		\
> -	struct drm_device *drm =3D &(__i915)->drm;			\
> +#define INTEL_DISPLAY_STATE_WARN(__display, condition, format...) ({	\
>  	int __ret_warn_on =3D !!(condition);				\
>  	if (unlikely(__ret_warn_on))					\
> -		if (!drm_WARN(drm, __i915->display.params.verbose_state_checks, format=
)) \
> -			drm_err(drm, format);				\
> +		if (!drm_WARN((__display)->drm, (__display)->params.verbose_state_chec=
ks, format)) \
> +			drm_err((__display)->drm, format);		\
>  	unlikely(__ret_warn_on);					\
>  })
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index c2bc80f5bf6b..d0c21c89c471 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1176,43 +1176,44 @@ static void hsw_assert_cdclk(struct drm_i915_priv=
ate *dev_priv)
>=20=20
>  static void assert_can_disable_lcpll(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_crtc *crtc;
>=20=20
> -	for_each_intel_crtc(&dev_priv->drm, crtc)
> -		I915_STATE_WARN(dev_priv, crtc->active,
> -				"CRTC for pipe %c enabled\n",
> -				pipe_name(crtc->pipe));
> -
> -	I915_STATE_WARN(dev_priv, intel_de_read(dev_priv, HSW_PWR_WELL_CTL2),
> -			"Display power well on\n");
> -	I915_STATE_WARN(dev_priv,
> -			intel_de_read(dev_priv, SPLL_CTL) & SPLL_PLL_ENABLE,
> -			"SPLL enabled\n");
> -	I915_STATE_WARN(dev_priv,
> -			intel_de_read(dev_priv, WRPLL_CTL(0)) & WRPLL_PLL_ENABLE,
> -			"WRPLL1 enabled\n");
> -	I915_STATE_WARN(dev_priv,
> -			intel_de_read(dev_priv, WRPLL_CTL(1)) & WRPLL_PLL_ENABLE,
> -			"WRPLL2 enabled\n");
> -	I915_STATE_WARN(dev_priv,
> -			intel_de_read(dev_priv, PP_STATUS(dev_priv, 0)) & PP_ON,
> -			"Panel power on\n");
> -	I915_STATE_WARN(dev_priv,
> -			intel_de_read(dev_priv, BLC_PWM_CPU_CTL2) & BLM_PWM_ENABLE,
> -			"CPU PWM1 enabled\n");
> +	for_each_intel_crtc(display->drm, crtc)
> +		INTEL_DISPLAY_STATE_WARN(display, crtc->active,
> +					 "CRTC for pipe %c enabled\n",
> +					 pipe_name(crtc->pipe));
> +
> +	INTEL_DISPLAY_STATE_WARN(display, intel_de_read(display, HSW_PWR_WELL_C=
TL2),
> +				 "Display power well on\n");
> +	INTEL_DISPLAY_STATE_WARN(display,
> +				 intel_de_read(display, SPLL_CTL) & SPLL_PLL_ENABLE,
> +				 "SPLL enabled\n");
> +	INTEL_DISPLAY_STATE_WARN(display,
> +				 intel_de_read(display, WRPLL_CTL(0)) & WRPLL_PLL_ENABLE,
> +				 "WRPLL1 enabled\n");
> +	INTEL_DISPLAY_STATE_WARN(display,
> +				 intel_de_read(display, WRPLL_CTL(1)) & WRPLL_PLL_ENABLE,
> +				 "WRPLL2 enabled\n");
> +	INTEL_DISPLAY_STATE_WARN(display,
> +				 intel_de_read(display, PP_STATUS(display, 0)) & PP_ON,
> +				 "Panel power on\n");
> +	INTEL_DISPLAY_STATE_WARN(display,
> +				 intel_de_read(display, BLC_PWM_CPU_CTL2) & BLM_PWM_ENABLE,
> +				 "CPU PWM1 enabled\n");
>  	if (IS_HASWELL(dev_priv))
> -		I915_STATE_WARN(dev_priv,
> -				intel_de_read(dev_priv, HSW_BLC_PWM2_CTL) & BLM_PWM_ENABLE,
> -				"CPU PWM2 enabled\n");
> -	I915_STATE_WARN(dev_priv,
> -			intel_de_read(dev_priv, BLC_PWM_PCH_CTL1) & BLM_PCH_PWM_ENABLE,
> -			"PCH PWM1 enabled\n");
> -	I915_STATE_WARN(dev_priv,
> -			(intel_de_read(dev_priv, UTIL_PIN_CTL) & (UTIL_PIN_ENABLE | UTIL_PIN_=
MODE_MASK)) =3D=3D (UTIL_PIN_ENABLE | UTIL_PIN_MODE_PWM),
> -			"Utility pin enabled in PWM mode\n");
> -	I915_STATE_WARN(dev_priv,
> -			intel_de_read(dev_priv, PCH_GTC_CTL) & PCH_GTC_ENABLE,
> -			"PCH GTC enabled\n");
> +		INTEL_DISPLAY_STATE_WARN(display,
> +					 intel_de_read(display, HSW_BLC_PWM2_CTL) & BLM_PWM_ENABLE,
> +					 "CPU PWM2 enabled\n");
> +	INTEL_DISPLAY_STATE_WARN(display,
> +				 intel_de_read(display, BLC_PWM_PCH_CTL1) & BLM_PCH_PWM_ENABLE,
> +				 "PCH PWM1 enabled\n");
> +	INTEL_DISPLAY_STATE_WARN(display,
> +				 (intel_de_read(display, UTIL_PIN_CTL) & (UTIL_PIN_ENABLE | UTIL_PIN=
_MODE_MASK)) =3D=3D (UTIL_PIN_ENABLE | UTIL_PIN_MODE_PWM),
> +				 "Utility pin enabled in PWM mode\n");
> +	INTEL_DISPLAY_STATE_WARN(display,
> +				 intel_de_read(display, PCH_GTC_CTL) & PCH_GTC_ENABLE,
> +				 "PCH GTC enabled\n");
>=20=20
>  	/*
>  	 * In theory we can still leave IRQs enabled, as long as only the HPD
> @@ -1220,8 +1221,8 @@ static void assert_can_disable_lcpll(struct drm_i91=
5_private *dev_priv)
>  	 * gen-specific and since we only disable LCPLL after we fully disable
>  	 * the interrupts, the check below should be enough.
>  	 */
> -	I915_STATE_WARN(dev_priv, intel_irqs_enabled(dev_priv),
> -			"IRQs enabled\n");
> +	INTEL_DISPLAY_STATE_WARN(display, intel_irqs_enabled(dev_priv),
> +				 "IRQs enabled\n");
>  }
>=20=20
>  static u32 hsw_read_dcomp(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index c0a3c4b53b0a..198ceda790d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -2331,12 +2331,13 @@ void vlv_force_pll_off(struct drm_i915_private *d=
ev_priv, enum pipe pipe)
>  static void assert_pll(struct drm_i915_private *dev_priv,
>  		       enum pipe pipe, bool state)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	bool cur_state;
>=20=20
> -	cur_state =3D intel_de_read(dev_priv, DPLL(dev_priv, pipe)) & DPLL_VCO_=
ENABLE;
> -	I915_STATE_WARN(dev_priv, cur_state !=3D state,
> -			"PLL state assertion failure (expected %s, current %s)\n",
> -			str_on_off(state), str_on_off(cur_state));
> +	cur_state =3D intel_de_read(display, DPLL(display, pipe)) & DPLL_VCO_EN=
ABLE;
> +	INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state,
> +				 "PLL state assertion failure (expected %s, current %s)\n",
> +				 str_on_off(state), str_on_off(cur_state));
>  }
>=20=20
>  void assert_pll_enabled(struct drm_i915_private *i915, enum pipe pipe)
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index f490b2157828..c9eda647919a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -173,18 +173,19 @@ void assert_shared_dpll(struct drm_i915_private *i9=
15,
>  			struct intel_shared_dpll *pll,
>  			bool state)
>  {
> +	struct intel_display *display =3D &i915->display;
>  	bool cur_state;
>  	struct intel_dpll_hw_state hw_state;
>=20=20
> -	if (drm_WARN(&i915->drm, !pll,
> +	if (drm_WARN(display->drm, !pll,
>  		     "asserting DPLL %s with no DPLL\n", str_on_off(state)))
>  		return;
>=20=20
>  	cur_state =3D intel_dpll_get_hw_state(i915, pll, &hw_state);
> -	I915_STATE_WARN(i915, cur_state !=3D state,
> -			"%s assertion failure (expected %s, current %s)\n",
> -			pll->info->name, str_on_off(state),
> -			str_on_off(cur_state));
> +	INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state,
> +				 "%s assertion failure (expected %s, current %s)\n",
> +				 pll->info->name, str_on_off(state),
> +				 str_on_off(cur_state));
>  }
>=20=20
>  static enum tc_port icl_pll_id_to_tc_port(enum intel_dpll_id id)
> @@ -545,14 +546,15 @@ static bool ibx_pch_dpll_get_hw_state(struct drm_i9=
15_private *i915,
>=20=20
>  static void ibx_assert_pch_refclk_enabled(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display =3D &i915->display;
>  	u32 val;
>  	bool enabled;
>=20=20
> -	val =3D intel_de_read(i915, PCH_DREF_CONTROL);
> +	val =3D intel_de_read(display, PCH_DREF_CONTROL);
>  	enabled =3D !!(val & (DREF_SSC_SOURCE_MASK | DREF_NONSPREAD_SOURCE_MASK=
 |
>  			    DREF_SUPERSPREAD_SOURCE_MASK));
> -	I915_STATE_WARN(i915, !enabled,
> -			"PCH refclk assertion failure, should be active but is disabled\n");
> +	INTEL_DISPLAY_STATE_WARN(display, !enabled,
> +				 "PCH refclk assertion failure, should be active but is disabled\n");
>  }
>=20=20
>  static void ibx_pch_dpll_enable(struct drm_i915_private *i915,
> @@ -4619,6 +4621,7 @@ verify_single_dpll_state(struct drm_i915_private *i=
915,
>  			 struct intel_crtc *crtc,
>  			 const struct intel_crtc_state *new_crtc_state)
>  {
> +	struct intel_display *display =3D &i915->display;
>  	struct intel_dpll_hw_state dpll_hw_state =3D {};
>  	u8 pipe_mask;
>  	bool active;
> @@ -4626,22 +4629,22 @@ verify_single_dpll_state(struct drm_i915_private =
*i915,
>  	active =3D intel_dpll_get_hw_state(i915, pll, &dpll_hw_state);
>=20=20
>  	if (!pll->info->always_on) {
> -		I915_STATE_WARN(i915, !pll->on && pll->active_mask,
> -				"%s: pll in active use but not on in sw tracking\n",
> -				pll->info->name);
> -		I915_STATE_WARN(i915, pll->on && !pll->active_mask,
> -				"%s: pll is on but not used by any active pipe\n",
> -				pll->info->name);
> -		I915_STATE_WARN(i915, pll->on !=3D active,
> -				"%s: pll on state mismatch (expected %i, found %i)\n",
> -				pll->info->name, pll->on, active);
> +		INTEL_DISPLAY_STATE_WARN(display, !pll->on && pll->active_mask,
> +					 "%s: pll in active use but not on in sw tracking\n",
> +					 pll->info->name);
> +		INTEL_DISPLAY_STATE_WARN(display, pll->on && !pll->active_mask,
> +					 "%s: pll is on but not used by any active pipe\n",
> +					 pll->info->name);
> +		INTEL_DISPLAY_STATE_WARN(display, pll->on !=3D active,
> +					 "%s: pll on state mismatch (expected %i, found %i)\n",
> +					 pll->info->name, pll->on, active);
>  	}
>=20=20
>  	if (!crtc) {
> -		I915_STATE_WARN(i915,
> -				pll->active_mask & ~pll->state.pipe_mask,
> -				"%s: more active pll users than references: 0x%x vs 0x%x\n",
> -				pll->info->name, pll->active_mask, pll->state.pipe_mask);
> +		INTEL_DISPLAY_STATE_WARN(display,
> +					 pll->active_mask & ~pll->state.pipe_mask,
> +					 "%s: more active pll users than references: 0x%x vs 0x%x\n",
> +					 pll->info->name, pll->active_mask, pll->state.pipe_mask);
>=20=20
>  		return;
>  	}
> @@ -4649,23 +4652,23 @@ verify_single_dpll_state(struct drm_i915_private =
*i915,
>  	pipe_mask =3D BIT(crtc->pipe);
>=20=20
>  	if (new_crtc_state->hw.active)
> -		I915_STATE_WARN(i915, !(pll->active_mask & pipe_mask),
> -				"%s: pll active mismatch (expected pipe %c in active mask 0x%x)\n",
> -				pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
> +		INTEL_DISPLAY_STATE_WARN(display, !(pll->active_mask & pipe_mask),
> +					 "%s: pll active mismatch (expected pipe %c in active mask 0x%x)\n",
> +					 pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
>  	else
> -		I915_STATE_WARN(i915, pll->active_mask & pipe_mask,
> -				"%s: pll active mismatch (didn't expect pipe %c in active mask 0x%x)=
\n",
> -				pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
> +		INTEL_DISPLAY_STATE_WARN(display, pll->active_mask & pipe_mask,
> +					 "%s: pll active mismatch (didn't expect pipe %c in active mask 0x%=
x)\n",
> +					 pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
>=20=20
> -	I915_STATE_WARN(i915, !(pll->state.pipe_mask & pipe_mask),
> -			"%s: pll enabled crtcs mismatch (expected 0x%x in 0x%x)\n",
> -			pll->info->name, pipe_mask, pll->state.pipe_mask);
> +	INTEL_DISPLAY_STATE_WARN(display, !(pll->state.pipe_mask & pipe_mask),
> +				 "%s: pll enabled crtcs mismatch (expected 0x%x in 0x%x)\n",
> +				 pll->info->name, pipe_mask, pll->state.pipe_mask);
>=20=20
> -	I915_STATE_WARN(i915,
> -			pll->on && memcmp(&pll->state.hw_state, &dpll_hw_state,
> -					  sizeof(dpll_hw_state)),
> -			"%s: pll hw state mismatch\n",
> -			pll->info->name);
> +	INTEL_DISPLAY_STATE_WARN(display,
> +				 pll->on && memcmp(&pll->state.hw_state, &dpll_hw_state,
> +						   sizeof(dpll_hw_state)),
> +				 "%s: pll hw state mismatch\n",
> +				 pll->info->name);
>  }
>=20=20
>  static bool has_alt_port_dpll(const struct intel_shared_dpll *old_pll,
> @@ -4678,6 +4681,7 @@ static bool has_alt_port_dpll(const struct intel_sh=
ared_dpll *old_pll,
>  void intel_shared_dpll_state_verify(struct intel_atomic_state *state,
>  				    struct intel_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  	const struct intel_crtc_state *old_crtc_state =3D
>  		intel_atomic_get_old_crtc_state(state, crtc);
> @@ -4693,16 +4697,16 @@ void intel_shared_dpll_state_verify(struct intel_=
atomic_state *state,
>  		u8 pipe_mask =3D BIT(crtc->pipe);
>  		struct intel_shared_dpll *pll =3D old_crtc_state->shared_dpll;
>=20=20
> -		I915_STATE_WARN(i915, pll->active_mask & pipe_mask,
> -				"%s: pll active mismatch (didn't expect pipe %c in active mask (0x%x=
))\n",
> -				pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
> +		INTEL_DISPLAY_STATE_WARN(display, pll->active_mask & pipe_mask,
> +					 "%s: pll active mismatch (didn't expect pipe %c in active mask (0x=
%x))\n",
> +					 pll->info->name, pipe_name(crtc->pipe), pll->active_mask);
>=20=20
>  		/* TC ports have both MG/TC and TBT PLL referenced simultaneously */
> -		I915_STATE_WARN(i915, !has_alt_port_dpll(old_crtc_state->shared_dpll,
> -							 new_crtc_state->shared_dpll) &&
> -				pll->state.pipe_mask & pipe_mask,
> -				"%s: pll enabled crtcs mismatch (found pipe %c in enabled mask (0x%x=
))\n",
> -				pll->info->name, pipe_name(crtc->pipe), pll->state.pipe_mask);
> +		INTEL_DISPLAY_STATE_WARN(display, !has_alt_port_dpll(old_crtc_state->s=
hared_dpll,
> +								     new_crtc_state->shared_dpll) &&
> +					 pll->state.pipe_mask & pipe_mask,
> +					 "%s: pll enabled crtcs mismatch (found pipe %c in enabled mask (0x=
%x))\n",
> +					 pll->info->name, pipe_name(crtc->pipe), pll->state.pipe_mask);
>  	}
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i=
915/display/intel_fdi.c
> index 0168894e9cd1..98e1a3606227 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -26,9 +26,10 @@ struct intel_fdi_funcs {
>  static void assert_fdi_tx(struct drm_i915_private *dev_priv,
>  			  enum pipe pipe, bool state)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	bool cur_state;
>=20=20
> -	if (HAS_DDI(dev_priv)) {
> +	if (HAS_DDI(display)) {
>  		/*
>  		 * DDI does not have a specific FDI_TX register.
>  		 *
> @@ -36,14 +37,14 @@ static void assert_fdi_tx(struct drm_i915_private *de=
v_priv,
>  		 * so pipe->transcoder cast is fine here.
>  		 */
>  		enum transcoder cpu_transcoder =3D (enum transcoder)pipe;
> -		cur_state =3D intel_de_read(dev_priv,
> -					  TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder)) & TRANS_DDI_FUNC_EN=
ABLE;
> +		cur_state =3D intel_de_read(display,
> +					  TRANS_DDI_FUNC_CTL(display, cpu_transcoder)) & TRANS_DDI_FUNC_ENA=
BLE;
>  	} else {
> -		cur_state =3D intel_de_read(dev_priv, FDI_TX_CTL(pipe)) & FDI_TX_ENABL=
E;
> +		cur_state =3D intel_de_read(display, FDI_TX_CTL(pipe)) & FDI_TX_ENABLE;
>  	}
> -	I915_STATE_WARN(dev_priv, cur_state !=3D state,
> -			"FDI TX state assertion failure (expected %s, current %s)\n",
> -			str_on_off(state), str_on_off(cur_state));
> +	INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state,
> +				 "FDI TX state assertion failure (expected %s, current %s)\n",
> +				 str_on_off(state), str_on_off(cur_state));
>  }
>=20=20
>  void assert_fdi_tx_enabled(struct drm_i915_private *i915, enum pipe pipe)
> @@ -59,12 +60,13 @@ void assert_fdi_tx_disabled(struct drm_i915_private *=
i915, enum pipe pipe)
>  static void assert_fdi_rx(struct drm_i915_private *dev_priv,
>  			  enum pipe pipe, bool state)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	bool cur_state;
>=20=20
> -	cur_state =3D intel_de_read(dev_priv, FDI_RX_CTL(pipe)) & FDI_RX_ENABLE;
> -	I915_STATE_WARN(dev_priv, cur_state !=3D state,
> -			"FDI RX state assertion failure (expected %s, current %s)\n",
> -			str_on_off(state), str_on_off(cur_state));
> +	cur_state =3D intel_de_read(display, FDI_RX_CTL(pipe)) & FDI_RX_ENABLE;
> +	INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state,
> +				 "FDI RX state assertion failure (expected %s, current %s)\n",
> +				 str_on_off(state), str_on_off(cur_state));
>  }
>=20=20
>  void assert_fdi_rx_enabled(struct drm_i915_private *i915, enum pipe pipe)
> @@ -80,6 +82,7 @@ void assert_fdi_rx_disabled(struct drm_i915_private *i9=
15, enum pipe pipe)
>  void assert_fdi_tx_pll_enabled(struct drm_i915_private *i915,
>  			       enum pipe pipe)
>  {
> +	struct intel_display *display =3D &i915->display;
>  	bool cur_state;
>=20=20
>  	/* ILK FDI PLL is always enabled */
> @@ -87,23 +90,24 @@ void assert_fdi_tx_pll_enabled(struct drm_i915_privat=
e *i915,
>  		return;
>=20=20
>  	/* On Haswell, DDI ports are responsible for the FDI PLL setup */
> -	if (HAS_DDI(i915))
> +	if (HAS_DDI(display))
>  		return;
>=20=20
> -	cur_state =3D intel_de_read(i915, FDI_TX_CTL(pipe)) & FDI_TX_PLL_ENABLE;
> -	I915_STATE_WARN(i915, !cur_state,
> -			"FDI TX PLL assertion failure, should be active but is disabled\n");
> +	cur_state =3D intel_de_read(display, FDI_TX_CTL(pipe)) & FDI_TX_PLL_ENA=
BLE;
> +	INTEL_DISPLAY_STATE_WARN(display, !cur_state,
> +				 "FDI TX PLL assertion failure, should be active but is disabled\n");
>  }
>=20=20
>  static void assert_fdi_rx_pll(struct drm_i915_private *i915,
>  			      enum pipe pipe, bool state)
>  {
> +	struct intel_display *display =3D &i915->display;
>  	bool cur_state;
>=20=20
> -	cur_state =3D intel_de_read(i915, FDI_RX_CTL(pipe)) & FDI_RX_PLL_ENABLE;
> -	I915_STATE_WARN(i915, cur_state !=3D state,
> -			"FDI RX PLL assertion failure (expected %s, current %s)\n",
> -			str_on_off(state), str_on_off(cur_state));
> +	cur_state =3D intel_de_read(display, FDI_RX_CTL(pipe)) & FDI_RX_PLL_ENA=
BLE;
> +	INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state,
> +				 "FDI RX PLL assertion failure (expected %s, current %s)\n",
> +				 str_on_off(state), str_on_off(cur_state));
>  }
>=20=20
>  void assert_fdi_rx_pll_enabled(struct drm_i915_private *i915, enum pipe =
pipe)
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/driver=
s/gpu/drm/i915/display/intel_modeset_verify.c
> index 3491db5cad31..bc70e72ccc2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -27,6 +27,7 @@ static void intel_connector_verify_state(const struct i=
ntel_crtc_state *crtc_sta
>  					 const struct drm_connector_state *conn_state)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state->co=
nnector);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>=20=20
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]\n",
> @@ -35,29 +36,29 @@ static void intel_connector_verify_state(const struct=
 intel_crtc_state *crtc_sta
>  	if (connector->get_hw_state(connector)) {
>  		struct intel_encoder *encoder =3D intel_attached_encoder(connector);
>=20=20
> -		I915_STATE_WARN(i915, !crtc_state,
> -				"connector enabled without attached crtc\n");
> +		INTEL_DISPLAY_STATE_WARN(display, !crtc_state,
> +					 "connector enabled without attached crtc\n");
>=20=20
>  		if (!crtc_state)
>  			return;
>=20=20
> -		I915_STATE_WARN(i915, !crtc_state->hw.active,
> -				"connector is active, but attached crtc isn't\n");
> +		INTEL_DISPLAY_STATE_WARN(display, !crtc_state->hw.active,
> +					 "connector is active, but attached crtc isn't\n");
>=20=20
>  		if (!encoder || encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
>  			return;
>=20=20
> -		I915_STATE_WARN(i915,
> -				conn_state->best_encoder !=3D &encoder->base,
> -				"atomic encoder doesn't match attached encoder\n");
> +		INTEL_DISPLAY_STATE_WARN(display,
> +					 conn_state->best_encoder !=3D &encoder->base,
> +					 "atomic encoder doesn't match attached encoder\n");
>=20=20
> -		I915_STATE_WARN(i915, conn_state->crtc !=3D encoder->base.crtc,
> -				"attached encoder crtc differs from connector crtc\n");
> +		INTEL_DISPLAY_STATE_WARN(display, conn_state->crtc !=3D encoder->base.=
crtc,
> +					 "attached encoder crtc differs from connector crtc\n");
>  	} else {
> -		I915_STATE_WARN(i915, crtc_state && crtc_state->hw.active,
> -				"attached crtc is active, but connector isn't\n");
> -		I915_STATE_WARN(i915, !crtc_state && conn_state->best_encoder,
> -				"best encoder set without crtc!\n");
> +		INTEL_DISPLAY_STATE_WARN(display, crtc_state && crtc_state->hw.active,
> +					 "attached crtc is active, but connector isn't\n");
> +		INTEL_DISPLAY_STATE_WARN(display, !crtc_state && conn_state->best_enco=
der,
> +					 "best encoder set without crtc!\n");
>  	}
>  }
>=20=20
> @@ -65,6 +66,7 @@ static void
>  verify_connector_state(struct intel_atomic_state *state,
>  		       struct intel_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct drm_connector *connector;
>  	const struct drm_connector_state *new_conn_state;
>  	int i;
> @@ -81,8 +83,8 @@ verify_connector_state(struct intel_atomic_state *state,
>=20=20
>  		intel_connector_verify_state(crtc_state, new_conn_state);
>=20=20
> -		I915_STATE_WARN(to_i915(connector->dev), new_conn_state->best_encoder =
!=3D encoder,
> -				"connector's atomic encoder doesn't match legacy encoder\n");
> +		INTEL_DISPLAY_STATE_WARN(display, new_conn_state->best_encoder !=3D en=
coder,
> +					 "connector's atomic encoder doesn't match legacy encoder\n");
>  	}
>  }
>=20=20
> @@ -109,6 +111,7 @@ static void intel_pipe_config_sanity_check(const stru=
ct intel_crtc_state *crtc_s
>  static void
>  verify_encoder_state(struct intel_atomic_state *state)
>  {
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  	struct intel_encoder *encoder;
>  	struct drm_connector *connector;
> @@ -134,25 +137,25 @@ verify_encoder_state(struct intel_atomic_state *sta=
te)
>  			found =3D true;
>  			enabled =3D true;
>=20=20
> -			I915_STATE_WARN(i915,
> -					new_conn_state->crtc !=3D encoder->base.crtc,
> -					"connector's crtc doesn't match encoder crtc\n");
> +			INTEL_DISPLAY_STATE_WARN(display,
> +						 new_conn_state->crtc !=3D encoder->base.crtc,
> +						 "connector's crtc doesn't match encoder crtc\n");
>  		}
>=20=20
>  		if (!found)
>  			continue;
>=20=20
> -		I915_STATE_WARN(i915, !!encoder->base.crtc !=3D enabled,
> -				"encoder's enabled state mismatch (expected %i, found %i)\n",
> -				!!encoder->base.crtc, enabled);
> +		INTEL_DISPLAY_STATE_WARN(display, !!encoder->base.crtc !=3D enabled,
> +					 "encoder's enabled state mismatch (expected %i, found %i)\n",
> +					 !!encoder->base.crtc, enabled);
>=20=20
>  		if (!encoder->base.crtc) {
>  			bool active;
>=20=20
>  			active =3D encoder->get_hw_state(encoder, &pipe);
> -			I915_STATE_WARN(i915, active,
> -					"encoder detached but still enabled on pipe %c.\n",
> -					pipe_name(pipe));
> +			INTEL_DISPLAY_STATE_WARN(display, active,
> +						 "encoder detached but still enabled on pipe %c.\n",
> +						 pipe_name(pipe));
>  		}
>  	}
>  }
> @@ -161,8 +164,8 @@ static void
>  verify_crtc_state(struct intel_atomic_state *state,
>  		  struct intel_crtc *crtc)
>  {
> -	struct drm_device *dev =3D crtc->base.dev;
> -	struct drm_i915_private *i915 =3D to_i915(dev);
> +	struct intel_display *display =3D to_intel_display(state);
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	const struct intel_crtc_state *sw_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_crtc_state *hw_crtc_state;
> @@ -173,7 +176,7 @@ verify_crtc_state(struct intel_atomic_state *state,
>  	if (!hw_crtc_state)
>  		return;
>=20=20
> -	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s]\n", crtc->base.base.id,
> +	drm_dbg_kms(display->drm, "[CRTC:%d:%s]\n", crtc->base.base.id,
>  		    crtc->base.name);
>=20=20
>  	hw_crtc_state->hw.enable =3D sw_crtc_state->hw.enable;
> @@ -184,30 +187,30 @@ verify_crtc_state(struct intel_atomic_state *state,
>  	if (IS_I830(i915) && hw_crtc_state->hw.active)
>  		hw_crtc_state->hw.active =3D sw_crtc_state->hw.active;
>=20=20
> -	I915_STATE_WARN(i915,
> -			sw_crtc_state->hw.active !=3D hw_crtc_state->hw.active,
> -			"crtc active state doesn't match with hw state (expected %i, found %i=
)\n",
> -			sw_crtc_state->hw.active, hw_crtc_state->hw.active);
> +	INTEL_DISPLAY_STATE_WARN(display,
> +				 sw_crtc_state->hw.active !=3D hw_crtc_state->hw.active,
> +				 "crtc active state doesn't match with hw state (expected %i, found =
%i)\n",
> +				 sw_crtc_state->hw.active, hw_crtc_state->hw.active);
>=20=20
> -	I915_STATE_WARN(i915, crtc->active !=3D sw_crtc_state->hw.active,
> -			"transitional active state does not match atomic hw state (expected %=
i, found %i)\n",
> -			sw_crtc_state->hw.active, crtc->active);
> +	INTEL_DISPLAY_STATE_WARN(display, crtc->active !=3D sw_crtc_state->hw.a=
ctive,
> +				 "transitional active state does not match atomic hw state (expected=
 %i, found %i)\n",
> +				 sw_crtc_state->hw.active, crtc->active);
>=20=20
>  	primary_crtc =3D intel_primary_crtc(sw_crtc_state);
>=20=20
> -	for_each_encoder_on_crtc(dev, &primary_crtc->base, encoder) {
> +	for_each_encoder_on_crtc(display->drm, &primary_crtc->base, encoder) {
>  		enum pipe pipe;
>  		bool active;
>=20=20
>  		active =3D encoder->get_hw_state(encoder, &pipe);
> -		I915_STATE_WARN(i915, active !=3D sw_crtc_state->hw.active,
> -				"[ENCODER:%i] active %i with crtc active %i\n",
> -				encoder->base.base.id, active,
> -				sw_crtc_state->hw.active);
> +		INTEL_DISPLAY_STATE_WARN(display, active !=3D sw_crtc_state->hw.active,
> +					 "[ENCODER:%i] active %i with crtc active %i\n",
> +					 encoder->base.base.id, active,
> +					 sw_crtc_state->hw.active);
>=20=20
> -		I915_STATE_WARN(i915, active && primary_crtc->pipe !=3D pipe,
> -				"Encoder connected to wrong pipe %c\n",
> -				pipe_name(pipe));
> +		INTEL_DISPLAY_STATE_WARN(display, active && primary_crtc->pipe !=3D pi=
pe,
> +					 "Encoder connected to wrong pipe %c\n",
> +					 pipe_name(pipe));
>=20=20
>  		if (active)
>  			intel_encoder_get_config(encoder, hw_crtc_state);
> @@ -220,7 +223,7 @@ verify_crtc_state(struct intel_atomic_state *state,
>=20=20
>  	if (!intel_pipe_config_compare(sw_crtc_state,
>  				       hw_crtc_state, false)) {
> -		I915_STATE_WARN(i915, 1, "pipe state doesn't match!\n");
> +		INTEL_DISPLAY_STATE_WARN(display, 1, "pipe state doesn't match!\n");
>  		intel_crtc_state_dump(hw_crtc_state, NULL, "hw state");
>  		intel_crtc_state_dump(sw_crtc_state, NULL, "sw state");
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/g=
pu/drm/i915/display/intel_pch_display.c
> index f13ab680c2cf..5fbcb74aeac1 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -39,58 +39,61 @@ static void assert_pch_dp_disabled(struct drm_i915_pr=
ivate *dev_priv,
>  				   enum pipe pipe, enum port port,
>  				   i915_reg_t dp_reg)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	enum pipe port_pipe;
>  	bool state;
>=20=20
>  	state =3D g4x_dp_port_enabled(dev_priv, dp_reg, port, &port_pipe);
>=20=20
> -	I915_STATE_WARN(dev_priv, state && port_pipe =3D=3D pipe,
> -			"PCH DP %c enabled on transcoder %c, should be disabled\n",
> -			port_name(port), pipe_name(pipe));
> +	INTEL_DISPLAY_STATE_WARN(display, state && port_pipe =3D=3D pipe,
> +				 "PCH DP %c enabled on transcoder %c, should be disabled\n",
> +				 port_name(port), pipe_name(pipe));
>=20=20
> -	I915_STATE_WARN(dev_priv,
> -			HAS_PCH_IBX(dev_priv) && !state && port_pipe =3D=3D PIPE_B,
> -			"IBX PCH DP %c still using transcoder B\n",
> -			port_name(port));
> +	INTEL_DISPLAY_STATE_WARN(display,
> +				 HAS_PCH_IBX(dev_priv) && !state && port_pipe =3D=3D PIPE_B,
> +				 "IBX PCH DP %c still using transcoder B\n",
> +				 port_name(port));
>  }
>=20=20
>  static void assert_pch_hdmi_disabled(struct drm_i915_private *dev_priv,
>  				     enum pipe pipe, enum port port,
>  				     i915_reg_t hdmi_reg)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	enum pipe port_pipe;
>  	bool state;
>=20=20
>  	state =3D intel_sdvo_port_enabled(dev_priv, hdmi_reg, &port_pipe);
>=20=20
> -	I915_STATE_WARN(dev_priv, state && port_pipe =3D=3D pipe,
> -			"PCH HDMI %c enabled on transcoder %c, should be disabled\n",
> -			port_name(port), pipe_name(pipe));
> +	INTEL_DISPLAY_STATE_WARN(display, state && port_pipe =3D=3D pipe,
> +				 "PCH HDMI %c enabled on transcoder %c, should be disabled\n",
> +				 port_name(port), pipe_name(pipe));
>=20=20
> -	I915_STATE_WARN(dev_priv,
> -			HAS_PCH_IBX(dev_priv) && !state && port_pipe =3D=3D PIPE_B,
> -			"IBX PCH HDMI %c still using transcoder B\n",
> -			port_name(port));
> +	INTEL_DISPLAY_STATE_WARN(display,
> +				 HAS_PCH_IBX(dev_priv) && !state && port_pipe =3D=3D PIPE_B,
> +				 "IBX PCH HDMI %c still using transcoder B\n",
> +				 port_name(port));
>  }
>=20=20
>  static void assert_pch_ports_disabled(struct drm_i915_private *dev_priv,
>  				      enum pipe pipe)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	enum pipe port_pipe;
>=20=20
>  	assert_pch_dp_disabled(dev_priv, pipe, PORT_B, PCH_DP_B);
>  	assert_pch_dp_disabled(dev_priv, pipe, PORT_C, PCH_DP_C);
>  	assert_pch_dp_disabled(dev_priv, pipe, PORT_D, PCH_DP_D);
>=20=20
> -	I915_STATE_WARN(dev_priv,
> -			intel_crt_port_enabled(dev_priv, PCH_ADPA, &port_pipe) && port_pipe =
=3D=3D pipe,
> -			"PCH VGA enabled on transcoder %c, should be disabled\n",
> -			pipe_name(pipe));
> +	INTEL_DISPLAY_STATE_WARN(display,
> +				 intel_crt_port_enabled(dev_priv, PCH_ADPA, &port_pipe) && port_pipe=
 =3D=3D pipe,
> +				 "PCH VGA enabled on transcoder %c, should be disabled\n",
> +				 pipe_name(pipe));
>=20=20
> -	I915_STATE_WARN(dev_priv,
> -			intel_lvds_port_enabled(dev_priv, PCH_LVDS, &port_pipe) && port_pipe =
=3D=3D pipe,
> -			"PCH LVDS enabled on transcoder %c, should be disabled\n",
> -			pipe_name(pipe));
> +	INTEL_DISPLAY_STATE_WARN(display,
> +				 intel_lvds_port_enabled(dev_priv, PCH_LVDS, &port_pipe) && port_pip=
e =3D=3D pipe,
> +				 "PCH LVDS enabled on transcoder %c, should be disabled\n",
> +				 pipe_name(pipe));
>=20=20
>  	/* PCH SDVOB multiplex with HDMIB */
>  	assert_pch_hdmi_disabled(dev_priv, pipe, PORT_B, PCH_HDMIB);
> @@ -101,14 +104,15 @@ static void assert_pch_ports_disabled(struct drm_i9=
15_private *dev_priv,
>  static void assert_pch_transcoder_disabled(struct drm_i915_private *dev_=
priv,
>  					   enum pipe pipe)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	u32 val;
>  	bool enabled;
>=20=20
> -	val =3D intel_de_read(dev_priv, PCH_TRANSCONF(pipe));
> +	val =3D intel_de_read(display, PCH_TRANSCONF(pipe));
>  	enabled =3D !!(val & TRANS_ENABLE);
> -	I915_STATE_WARN(dev_priv, enabled,
> -			"transcoder assertion failed, should be off on pipe %c but is still a=
ctive\n",
> -			pipe_name(pipe));
> +	INTEL_DISPLAY_STATE_WARN(display, enabled,
> +				 "transcoder assertion failed, should be off on pipe %c but is still=
 active\n",
> +				 pipe_name(pipe));
>  }
>=20=20
>  static void ibx_sanitize_pch_hdmi_port(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i=
915/display/intel_pps.c
> index ffeee9daa568..f1e78fd19e12 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -809,7 +809,6 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel=
_dp)
>  void intel_pps_vdd_on(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	intel_wakeref_t wakeref;
>  	bool vdd;
>=20=20
> @@ -819,10 +818,10 @@ void intel_pps_vdd_on(struct intel_dp *intel_dp)
>  	vdd =3D false;
>  	with_intel_pps_lock(intel_dp, wakeref)
>  		vdd =3D intel_pps_vdd_on_unlocked(intel_dp);
> -	I915_STATE_WARN(i915, !vdd, "[ENCODER:%d:%s] %s VDD already requested o=
n\n",
> -			dp_to_dig_port(intel_dp)->base.base.base.id,
> -			dp_to_dig_port(intel_dp)->base.base.name,
> -			pps_name(intel_dp));
> +	INTEL_DISPLAY_STATE_WARN(display, !vdd, "[ENCODER:%d:%s] %s VDD already=
 requested on\n",
> +				 dp_to_dig_port(intel_dp)->base.base.base.id,
> +				 dp_to_dig_port(intel_dp)->base.base.name,
> +				 pps_name(intel_dp));
>  }
>=20=20
>  static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
> @@ -929,18 +928,17 @@ static void edp_panel_vdd_schedule_off(struct intel=
_dp *intel_dp)
>  void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
>  {
>  	struct intel_display *display =3D to_intel_display(intel_dp);
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20=20
>  	lockdep_assert_held(&display->pps.mutex);
>=20=20
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
>=20=20
> -	I915_STATE_WARN(dev_priv, !intel_dp->pps.want_panel_vdd,
> -			"[ENCODER:%d:%s] %s VDD not forced on",
> -			dp_to_dig_port(intel_dp)->base.base.base.id,
> -			dp_to_dig_port(intel_dp)->base.base.name,
> -			pps_name(intel_dp));
> +	INTEL_DISPLAY_STATE_WARN(display, !intel_dp->pps.want_panel_vdd,
> +				 "[ENCODER:%d:%s] %s VDD not forced on",
> +				 dp_to_dig_port(intel_dp)->base.base.base.id,
> +				 dp_to_dig_port(intel_dp)->base.base.name,
> +				 pps_name(intel_dp));
>=20=20
>  	intel_dp->pps.want_panel_vdd =3D false;
>=20=20
> @@ -1878,7 +1876,7 @@ void assert_pps_unlocked(struct intel_display *disp=
lay, enum pipe pipe)
>  	    ((val & PANEL_UNLOCK_MASK) =3D=3D PANEL_UNLOCK_REGS))
>  		locked =3D false;
>=20=20
> -	I915_STATE_WARN(dev_priv, panel_pipe =3D=3D pipe && locked,
> -			"panel assertion failure, pipe %c regs locked\n",
> -			pipe_name(pipe));
> +	INTEL_DISPLAY_STATE_WARN(display, panel_pipe =3D=3D pipe && locked,
> +				 "panel assertion failure, pipe %c regs locked\n",
> +				 pipe_name(pipe));
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/=
drm/i915/display/intel_snps_phy.c
> index e6df1f92def5..4b3a32736fd6 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -1997,6 +1997,7 @@ int intel_snps_phy_check_hdmi_link_rate(int clock)
>  void intel_mpllb_state_verify(struct intel_atomic_state *state,
>  			      struct intel_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -2019,11 +2020,11 @@ void intel_mpllb_state_verify(struct intel_atomic=
_state *state,
>  	intel_mpllb_readout_hw_state(encoder, &mpllb_hw_state);
>=20=20
>  #define MPLLB_CHECK(__name)						\
> -	I915_STATE_WARN(i915, mpllb_sw_state->__name !=3D mpllb_hw_state.__name=
, \
> -			"[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)",=
 \
> -			crtc->base.base.id, crtc->base.name,		\
> -			__stringify(__name),				\
> -			mpllb_sw_state->__name, mpllb_hw_state.__name)
> +	INTEL_DISPLAY_STATE_WARN(display, mpllb_sw_state->__name !=3D mpllb_hw_=
state.__name, \
> +				 "[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)=
", \
> +				 crtc->base.base.id, crtc->base.name,	\
> +				 __stringify(__name),			\
> +				 mpllb_sw_state->__name, mpllb_hw_state.__name)
>=20=20
>  	MPLLB_CHECK(mpllb_cp);
>  	MPLLB_CHECK(mpllb_div);
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c b/drivers/gpu/drm=
/i915/display/vlv_dsi_pll.c
> index 70c5a13a3c75..59a50647f2c3 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi_pll.c
> @@ -592,15 +592,16 @@ void bxt_dsi_reset_clocks(struct intel_encoder *enc=
oder, enum port port)
>=20=20
>  static void assert_dsi_pll(struct drm_i915_private *i915, bool state)
>  {
> +	struct intel_display *display =3D &i915->display;
>  	bool cur_state;
>=20=20
>  	vlv_cck_get(i915);
>  	cur_state =3D vlv_cck_read(i915, CCK_REG_DSI_PLL_CONTROL) & DSI_PLL_VCO=
_EN;
>  	vlv_cck_put(i915);
>=20=20
> -	I915_STATE_WARN(i915, cur_state !=3D state,
> -			"DSI PLL state assertion failure (expected %s, current %s)\n",
> -			str_on_off(state), str_on_off(cur_state));
> +	INTEL_DISPLAY_STATE_WARN(display, cur_state !=3D state,
> +				 "DSI PLL state assertion failure (expected %s, current %s)\n",
> +				 str_on_off(state), str_on_off(cur_state));
>  }
>=20=20
>  void assert_dsi_pll_enabled(struct drm_i915_private *i915)

--=20
Jani Nikula, Intel
