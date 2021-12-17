Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E83478858
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 11:05:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED7F010FE13;
	Fri, 17 Dec 2021 10:05:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B00C310FE11
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 10:05:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="220405760"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="220405760"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 02:05:06 -0800
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="683332533"
Received: from kmcgonig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.8.181])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 02:05:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20211217071356.12517-5-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211217071356.12517-1-suraj.kandpal@intel.com>
 <20211217071356.12517-5-suraj.kandpal@intel.com>
Date: Fri, 17 Dec 2021 12:04:59 +0200
Message-ID: <87fsqr35tg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Enabling WD Transcoder
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
Cc: arun.r.murthy@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 17 Dec 2021, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> From: suraj kandpal <suraj.kandpal@intel.com>
>
> Adding support for writeback transcoder to start capturing frames using
> interrupt mechanism

I stopped reviewing this after a while, because there's just way too
much unrelated noise in the patch to even be able to focus on what's
actually being done functionally here. There are some comments inline
before I stopped.

Please don't do random superfluous whitespace or checkpatch changes in
the same patch. It's just a distraction.

Functionally the most questionable thing I spotted is adding the
intel_crtc and intel_wd pointer members in struct
drm_i915_private. That's not the kind of design we'll want. It should
all be in the atomic state.

Also, what is this in intel_wd.c:

> +static const struct drm_display_mode drm_dmt_modes[] =3D {

Please no.


BR,
Jani.



>
> Signed-off-by: suraj kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |    2 +
>  drivers/gpu/drm/i915/display/intel_acpi.c     |    1 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  166 ++-
>  drivers/gpu/drm/i915/display/intel_display.h  |    5 +
>  .../drm/i915/display/intel_display_power.h    |    1 +
>  .../drm/i915/display/intel_display_types.h    |    8 +
>  drivers/gpu/drm/i915/display/intel_dpll.c     |    6 +
>  drivers/gpu/drm/i915/display/intel_opregion.c |    3 +
>  .../gpu/drm/i915/display/intel_wb_connector.h |   20 +
>  drivers/gpu/drm/i915/display/intel_wd.c       | 1139 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_wd.h       |   70 +
>  .../drm/i915/display/skl_universal_plane.c    |    1 -
>  drivers/gpu/drm/i915/i915_drv.h               |    5 +
>  drivers/gpu/drm/i915/i915_irq.c               |    8 +-
>  drivers/gpu/drm/i915/i915_pci.c               |    7 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  139 +-
>  16 files changed, 1527 insertions(+), 54 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wb_connector.h
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wd.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_wd.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 5c8e022a7383..5472bb48196b 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -206,6 +206,7 @@ i915-y +=3D \
>  	display/intel_connector.o \
>  	display/intel_crtc.o \
>  	display/intel_cursor.o \
> +	display/intel_wd.o \

Adding it twice?

>  	display/intel_display.o \
>  	display/intel_display_power.o \
>  	display/intel_dmc.o \
> @@ -276,6 +277,7 @@ i915-y +=3D \
>  	display/intel_tv.o \
>  	display/intel_vdsc.o \
>  	display/intel_vrr.o \
> +	display/intel_wd.o \
>  	display/vlv_dsi.o \
>  	display/vlv_dsi_pll.o
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/=
i915/display/intel_acpi.c
> index 72cac55c0f0f..98537c7de20c 100644
> --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> @@ -244,6 +244,7 @@ static u32 acpi_display_type(struct intel_connector *=
connector)
>  	case DRM_MODE_CONNECTOR_LVDS:
>  	case DRM_MODE_CONNECTOR_eDP:
>  	case DRM_MODE_CONNECTOR_DSI:
> +	case DRM_MODE_CONNECTOR_WRITEBACK:
>  		display_type =3D ACPI_DISPLAY_TYPE_INTERNAL_DIGITAL;
>  		break;
>  	case DRM_MODE_CONNECTOR_Unknown:
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f27c294beb92..4a9e5972f381 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -105,6 +105,7 @@
>  #include "intel_tc.h"
>  #include "intel_vga.h"
>  #include "i9xx_plane.h"
> +#include "intel_wd.h"

Please keep include lists sorted.

>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>=20=20
> @@ -195,10 +196,13 @@ skl_wa_827(struct drm_i915_private *dev_priv, enum =
pipe pipe, bool enable)
>  {
>  	if (enable)
>  		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
> -		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DUPS1_=
GATING_DIS | DUPS2_GATING_DIS);
> +			intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) |
> +			DUPS1_GATING_DIS |
> +			DUPS2_GATING_DIS);
>  	else
>  		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
> -		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~(DUPS=
1_GATING_DIS | DUPS2_GATING_DIS));
> +			intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) &
> +			~(DUPS1_GATING_DIS | DUPS2_GATING_DIS));
>  }

Superfluous changes that should not be part of this patch.

>=20=20
>  /* Wa_2006604312:icl,ehl */
> @@ -208,10 +212,10 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev=
_priv, enum pipe pipe,
>  {
>  	if (enable)
>  		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
> -		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DPFR_G=
ATING_DIS);
> +			       intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | DPFR_GATING_D=
IS);
>  	else
>  		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
> -		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_=
GATING_DIS);
> +			       intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_=
DIS);
>  }
>=20=20
>  static bool
> @@ -342,6 +346,7 @@ static void assert_fdi_tx(struct drm_i915_private *de=
v_priv,
>  		cur_state =3D !!(val & TRANS_DDI_FUNC_ENABLE);
>  	} else {
>  		u32 val =3D intel_de_read(dev_priv, FDI_TX_CTL(pipe));
> +
>  		cur_state =3D !!(val & FDI_TX_ENABLE);
>  	}
>  	I915_STATE_WARN(cur_state !=3D state,
> @@ -469,6 +474,7 @@ void assert_transcoder(struct drm_i915_private *dev_p=
riv,
>  	wakeref =3D intel_display_power_get_if_enabled(dev_priv, power_domain);
>  	if (wakeref) {
>  		u32 val =3D intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
> +
>  		cur_state =3D !!(val & PIPECONF_ENABLE);
>=20=20
>  		intel_display_power_put(dev_priv, power_domain, wakeref);
> @@ -1850,6 +1856,7 @@ bool intel_has_pending_fb_unpin(struct drm_i915_pri=
vate *dev_priv)
>=20=20
>  	drm_for_each_crtc(crtc, &dev_priv->drm) {
>  		struct drm_crtc_commit *commit;
> +
>  		spin_lock(&crtc->commit_lock);
>  		commit =3D list_first_entry_or_null(&crtc->commit_list,
>  						  struct drm_crtc_commit, commit_entry);
> @@ -1895,7 +1902,7 @@ static void lpt_program_iclkip(const struct intel_c=
rtc_state *crtc_state)
>  	lpt_disable_iclkip(dev_priv);
>=20=20
>  	/* The iCLK virtual clock root frequency is in MHz,
> -	 * but the adjusted_mode->crtc_clock in in KHz. To get the
> +	 * but the adjusted_mode->crtc_clock in KHz. To get the
>  	 * divisors, it is necessary to divide one by another, so we
>  	 * convert the virtual clock precision to KHz here for higher
>  	 * precision.
> @@ -2571,7 +2578,7 @@ static void intel_crtc_disable_planes(struct intel_=
atomic_state *state,
>  	unsigned int update_mask =3D new_crtc_state->update_planes;
>  	const struct intel_plane_state *old_plane_state;
>  	struct intel_plane *plane;
> -	unsigned fb_bits =3D 0;
> +	unsigned int fb_bits =3D 0;
>  	int i;
>=20=20

Ditto for all of the above hunks.

>  	intel_crtc_dpms_overlay_disable(crtc);
> @@ -2665,6 +2672,66 @@ static void intel_encoders_update_complete(struct =
intel_atomic_state *state)
>  	}
>  }
>=20=20
> +static void intel_queue_writeback_job(struct intel_atomic_state *state,
> +		struct drm_i915_private *dev_priv, struct intel_crtc *intel_crtc,
> +		struct intel_crtc_state *crtc_state)
> +{

No need to pass dev_priv around, you can get at it via the other
pointers. Also, for new code the variable should be named i915.

> +	struct drm_connector_state *new_conn_state;
> +	struct drm_connector *connector;
> +	struct drm_device *dev =3D &dev_priv->drm;

Usually we only have i915 local var, no struct drm_device. Look around.

> +	int i;
> +
> +	drm_dbg(dev, "[%s]:%d ", __func__, __LINE__);

What? Why?

All kms debugs should use drm_dbg_kms().

Please don't add any of this __func__ and __LINE__ nonsense. The
function gets added by drm_dbg_* anyway.

Same applies all over the place.

> +	if (dev_priv->wd_crtc !=3D intel_crtc) {

Oh noes, we won't be adding random crtc pointers in drm_i915_private!

> +		drm_dbg(dev, "not the wd crtc");
> +		return;
> +	}
> +
> +	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
> +					i) {
> +		if (!new_conn_state->writeback_job)
> +			continue;
> +
> +		drm_writeback_queue_job(connector->wb_connector, new_conn_state);
> +		drm_dbg(dev, "[%s]:%d queueing writeback job", __func__, __LINE__);
> +	}
> +}
> +
> +static void intel_find_writeback_connector(struct intel_atomic_state *st=
ate,
> +		struct drm_i915_private *dev_priv,
> +		struct intel_crtc *intel_crtc, struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_connector_state *new_conn_state;
> +	struct drm_connector *connector;
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	int i;
> +
> +	drm_dbg(dev, "[%s]:%d ", __func__, __LINE__);
> +	if (dev_priv->wd_crtc !=3D intel_crtc) {
> +		drm_dbg(dev, "not the wd crtc");
> +		return;
> +	}
> +
> +	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
> +					i) {
> +		struct intel_connector *intel_connector;
> +		struct intel_encoder *encoder;
> +
> +		drm_dbg(dev, "[%s]:%d ", __func__, __LINE__);
> +
> +		intel_connector =3D to_intel_connector(connector);
> +		drm_dbg(dev, "[CONNECTOR:%d:%s]: status: %s\n",
> +				connector->base.id, connector->name,
> +				drm_get_connector_status_name(connector->status));
> +		encoder =3D intel_connector_primary_encoder(intel_connector);
> +		if (encoder->type =3D=3D INTEL_OUTPUT_WD) {
> +			drm_dbg(dev, "encoder intel_output_wd found");
> +			intel_wd_enable_capture(dev_priv, encoder, crtc_state, new_conn_state=
);
> +		}
> +	}
> +
> +}
> +
>  static void intel_encoders_pre_pll_enable(struct intel_atomic_state *sta=
te,
>  					  struct intel_crtc *crtc)
>  {
> @@ -2728,6 +2795,7 @@ static void intel_encoders_enable(struct intel_atom=
ic_state *state,
>  		if (encoder->enable)
>  			encoder->enable(state, encoder,
>  					crtc_state, conn_state);
> +

No superfluous whitespace changes please. Same all over the place. It's
just noise in the patch.

>  		intel_opregion_notify_encoder(encoder, true);
>  	}
>  }
> @@ -2751,6 +2819,7 @@ static void intel_encoders_pre_disable(struct intel=
_atomic_state *state,
>  		if (encoder->pre_disable)
>  			encoder->pre_disable(state, encoder, old_crtc_state,
>  					     old_conn_state);
> +
>  	}
>  }
>=20=20
> @@ -2774,6 +2843,7 @@ static void intel_encoders_disable(struct intel_ato=
mic_state *state,
>  		if (encoder->disable)
>  			encoder->disable(state, encoder,
>  					 old_crtc_state, old_conn_state);
> +
>  	}
>  }
>=20=20
> @@ -3078,7 +3148,8 @@ static void hsw_crtc_enable(struct intel_atomic_sta=
te *state,
>  	if (DISPLAY_VER(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv))
>  		bdw_set_pipemisc(new_crtc_state);
>=20=20
> -	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcod=
er)) {
> +	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcod=
er)
> +		&& !transcoder_is_wd(cpu_transcoder)) {
>  		intel_set_transcoder_timings(new_crtc_state);
>=20=20
>  		if (cpu_transcoder !=3D TRANSCODER_EDP)
> @@ -4307,7 +4378,7 @@ static void intel_set_transcoder_timings(const stru=
ct intel_crtc_state *crtc_sta
>=20=20
>  	if (DISPLAY_VER(dev_priv) > 3)
>  		intel_de_write(dev_priv, VSYNCSHIFT(cpu_transcoder),
> -		               vsyncshift);
> +			       vsyncshift);
>=20=20
>  	intel_de_write(dev_priv, HTOTAL(cpu_transcoder),
>  		       (adjusted_mode->crtc_hdisplay - 1) | ((adjusted_mode->crtc_htot=
al - 1) << 16));
> @@ -4330,7 +4401,7 @@ static void intel_set_transcoder_timings(const stru=
ct intel_crtc_state *crtc_sta
>  	if (IS_HASWELL(dev_priv) && cpu_transcoder =3D=3D TRANSCODER_EDP &&
>  	    (pipe =3D=3D PIPE_B || pipe =3D=3D PIPE_C))
>  		intel_de_write(dev_priv, VTOTAL(pipe),
> -		               intel_de_read(dev_priv, VTOTAL(cpu_transcoder)));
> +			       intel_de_read(dev_priv, VTOTAL(cpu_transcoder)));
>=20=20
>  }
>=20=20
> @@ -4980,18 +5051,18 @@ void lpt_disable_clkout_dp(struct drm_i915_privat=
e *dev_priv)
>  #define BEND_IDX(steps) ((50 + (steps)) / 5)
>=20=20
>  static const u16 sscdivintphase[] =3D {
> -	[BEND_IDX( 50)] =3D 0x3B23,
> -	[BEND_IDX( 45)] =3D 0x3B23,
> -	[BEND_IDX( 40)] =3D 0x3C23,
> -	[BEND_IDX( 35)] =3D 0x3C23,
> -	[BEND_IDX( 30)] =3D 0x3D23,
> -	[BEND_IDX( 25)] =3D 0x3D23,
> -	[BEND_IDX( 20)] =3D 0x3E23,
> -	[BEND_IDX( 15)] =3D 0x3E23,
> -	[BEND_IDX( 10)] =3D 0x3F23,
> -	[BEND_IDX(  5)] =3D 0x3F23,
> -	[BEND_IDX(  0)] =3D 0x0025,
> -	[BEND_IDX( -5)] =3D 0x0025,
> +	[BEND_IDX(50)] =3D 0x3B23,
> +	[BEND_IDX(45)] =3D 0x3B23,
> +	[BEND_IDX(40)] =3D 0x3C23,
> +	[BEND_IDX(35)] =3D 0x3C23,
> +	[BEND_IDX(30)] =3D 0x3D23,
> +	[BEND_IDX(25)] =3D 0x3D23,
> +	[BEND_IDX(20)] =3D 0x3E23,
> +	[BEND_IDX(15)] =3D 0x3E23,
> +	[BEND_IDX(10)] =3D 0x3F23,
> +	[BEND_IDX(5)] =3D 0x3F23,
> +	[BEND_IDX(0)] =3D 0x0025,
> +	[BEND_IDX(-5)] =3D 0x0025,
>  	[BEND_IDX(-10)] =3D 0x0125,
>  	[BEND_IDX(-15)] =3D 0x0125,
>  	[BEND_IDX(-20)] =3D 0x0225,
> @@ -5335,6 +5406,7 @@ int ilk_get_lanes_required(int target_clock, int li=
nk_bw, int bpp)
>  	 * is 2.5%; use 5% for safety's sake.
>  	 */
>  	u32 bps =3D target_clock * bpp * 21 / 20;
> +
>  	return DIV_ROUND_UP(bps, link_bw * 8);
>  }
>=20=20
> @@ -5572,7 +5644,7 @@ static bool ilk_get_pipe_config(struct intel_crtc *=
crtc,
>  			if (tmp & TRANS_DPLLB_SEL(crtc->pipe))
>  				pll_id =3D DPLL_ID_PCH_PLL_B;
>  			else
> -				pll_id=3D DPLL_ID_PCH_PLL_A;
> +				pll_id =3D DPLL_ID_PCH_PLL_A;

Useful change, but does not belong in this patch.

Stopping review here.

>  		}
>=20=20
>  		pipe_config->shared_dpll =3D
> @@ -6198,8 +6270,8 @@ static void i9xx_crtc_clock_get(struct intel_crtc *=
crtc,
>  			break;
>  		default:
>  			drm_dbg_kms(&dev_priv->drm,
> -				    "Unknown DPLL mode %08x in programmed "
> -				    "mode\n", (int)(dpll & DPLL_MODE_MASK));
> +				    "Unknown DPLL mode %08x in programmed mode\n",
> +				    (int)(dpll & DPLL_MODE_MASK));
>  			return;
>  		}
>=20=20
> @@ -6888,8 +6960,7 @@ compute_sink_pipe_bpp(const struct drm_connector_st=
ate *conn_state,
>=20=20
>  	if (bpp < pipe_config->pipe_bpp) {
>  		drm_dbg_kms(&i915->drm,
> -			    "[CONNECTOR:%d:%s] Limiting display bpp to %d instead of "
> -			    "EDID bpp %d, requested bpp %d, max platform bpp %d\n",
> +			    "[CONNECTOR:%d:%s] Limiting display bpp to %d instead of EDID bpp=
 %d, requested bpp %d, max platform bpp %d\n",
>  			    connector->base.id, connector->name,
>  			    bpp, 3 * info->bpc,
>  			    3 * conn_state->max_requested_bpc,
> @@ -6939,8 +7010,7 @@ compute_baseline_pipe_bpp(struct intel_crtc *crtc,
>  static void intel_dump_crtc_timings(struct drm_i915_private *i915,
>  				    const struct drm_display_mode *mode)
>  {
> -	drm_dbg_kms(&i915->drm, "crtc timings: %d %d %d %d %d %d %d %d %d, "
> -		    "type: 0x%x flags: 0x%x\n",
> +	drm_dbg_kms(&i915->drm, "crtc timings: %d %d %d %d %d %d %d %d %d, type=
: 0x%x flags: 0x%x\n",
>  		    mode->crtc_clock,
>  		    mode->crtc_hdisplay, mode->crtc_hsync_start,
>  		    mode->crtc_hsync_end, mode->crtc_htotal,
> @@ -6983,7 +7053,7 @@ intel_dump_dp_vsc_sdp(struct drm_i915_private *dev_=
priv,
>  	drm_dp_vsc_sdp_log(KERN_DEBUG, dev_priv->drm.dev, vsc);
>  }
>=20=20
> -#define OUTPUT_TYPE(x) [INTEL_OUTPUT_ ## x] =3D #x
> +#define OUTPUT_TYPE(x)[INTEL_OUTPUT_ ## x] =3D #x
>=20=20
>  static const char * const output_type_str[] =3D {
>  	OUTPUT_TYPE(UNUSED),
> @@ -6998,6 +7068,7 @@ static const char * const output_type_str[] =3D {
>  	OUTPUT_TYPE(DSI),
>  	OUTPUT_TYPE(DDI),
>  	OUTPUT_TYPE(DP_MST),
> +	OUTPUT_TYPE(WD),
>  };
>=20=20
>  #undef OUTPUT_TYPE
> @@ -8407,8 +8478,7 @@ verify_encoder_state(struct drm_i915_private *dev_p=
riv, struct intel_atomic_stat
>  			continue;
>=20=20
>  		I915_STATE_WARN(!!encoder->base.crtc !=3D enabled,
> -		     "encoder's enabled state mismatch "
> -		     "(expected %i, found %i)\n",
> +		     "encoder's enabled state mismatch (expected %i, found %i)\n",
>  		     !!encoder->base.crtc, enabled);
>=20=20
>  		if (!encoder->base.crtc) {
> @@ -8451,13 +8521,11 @@ verify_crtc_state(struct intel_crtc *crtc,
>  		pipe_config->hw.active =3D new_crtc_state->hw.active;
>=20=20
>  	I915_STATE_WARN(new_crtc_state->hw.active !=3D pipe_config->hw.active,
> -			"crtc active state doesn't match with hw state "
> -			"(expected %i, found %i)\n",
> +			"crtc active state doesn't match with hw state (expected %i, found %i=
)\n",
>  			new_crtc_state->hw.active, pipe_config->hw.active);
>=20=20
>  	I915_STATE_WARN(crtc->active !=3D new_crtc_state->hw.active,
> -			"transitional active state does not match atomic hw state "
> -			"(expected %i, found %i)\n",
> +			"transitional active state does not match atomic hw state (expected %=
i, found %i)\n",
>  			new_crtc_state->hw.active, crtc->active);
>=20=20
>  	if (new_crtc_state->bigjoiner_slave)
> @@ -9178,9 +9246,8 @@ static int intel_atomic_check_bigjoiner(struct inte=
l_atomic_state *state,
>=20=20
>  	slave =3D intel_dsc_get_bigjoiner_secondary(crtc);
>  	if (!slave) {
> -		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration requires "
> -			      "CRTC + 1 to be used, doesn't exist\n",
> -			      crtc->base.base.id, crtc->base.name);
> +		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration requires CRTC + 1=
 to be used, doesn't exist\n",
> +				crtc->base.base.id, crtc->base.name);
>  		return -EINVAL;
>  	}
>=20=20
> @@ -9200,10 +9267,9 @@ static int intel_atomic_check_bigjoiner(struct int=
el_atomic_state *state,
>  	return copy_bigjoiner_crtc_state(slave_crtc_state, new_crtc_state);
>=20=20
>  claimed:
> -	DRM_DEBUG_KMS("[CRTC:%d:%s] Slave is enabled as normal CRTC, but "
> -		      "[CRTC:%d:%s] claiming this CRTC for bigjoiner.\n",
> -		      slave->base.base.id, slave->base.name,
> -		      master->base.base.id, master->base.name);
> +	DRM_DEBUG_KMS("[CRTC:%d:%s] Slave is enabled as normal CRTC, but [CRTC:=
%d:%s] claiming this CRTC for bigjoiner.\n",
> +			slave->base.base.id, slave->base.name,
> +			master->base.base.id, master->base.name);
>  	return -EINVAL;
>  }
>=20=20
> @@ -10210,6 +10276,11 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>  		}
>  	}
>=20=20
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		intel_wd_set_vblank_event(crtc, new_crtc_state);
> +	}
> +
>  	if (state->modeset)
>  		intel_encoders_update_prepare(state);
>=20=20
> @@ -10304,6 +10375,11 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>=20=20
>  	intel_sagv_post_plane_update(state);
>=20=20
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		intel_queue_writeback_job(state, dev_priv, crtc, new_crtc_state);
> +		intel_find_writeback_connector(state, dev_priv, crtc, new_crtc_state);
> +	}
> +
>  	drm_atomic_helper_commit_hw_done(&state->base);
>=20=20
>  	if (state->modeset) {
> @@ -10475,7 +10551,7 @@ struct wait_rps_boost {
>  };
>=20=20
>  static int do_rps_boost(struct wait_queue_entry *_wait,
> -			unsigned mode, int sync, void *key)
> +			unsigned int mode, int sync, void *key)
>  {
>  	struct wait_rps_boost *wait =3D container_of(_wait, typeof(*wait), wait=
);
>  	struct i915_request *rq =3D wait->request;
> @@ -10883,6 +10959,7 @@ static void intel_setup_outputs(struct drm_i915_p=
rivate *dev_priv)
>  		intel_ddi_init(dev_priv, PORT_TC1);
>  		intel_ddi_init(dev_priv, PORT_TC2);
>  	} else if (DISPLAY_VER(dev_priv) >=3D 12) {
> +		intel_wd_init(dev_priv, TRANSCODER_WD_0);
>  		intel_ddi_init(dev_priv, PORT_A);
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_TC1);
> @@ -11253,8 +11330,7 @@ void intel_init_display_hooks(struct drm_i915_pri=
vate *dev_priv)
>  		dev_priv->display.get_pipe_config =3D ilk_get_pipe_config;
>  		dev_priv->display.crtc_enable =3D ilk_crtc_enable;
>  		dev_priv->display.crtc_disable =3D ilk_crtc_disable;
> -	} else if (IS_CHERRYVIEW(dev_priv) ||
> -		   IS_VALLEYVIEW(dev_priv)) {
> +	} else if (IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv)) {
>  		dev_priv->display.get_pipe_config =3D i9xx_get_pipe_config;
>  		dev_priv->display.crtc_enable =3D valleyview_crtc_enable;
>  		dev_priv->display.crtc_disable =3D i9xx_crtc_disable;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 76f999525d43..488854409ed0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -154,6 +154,11 @@ static inline bool transcoder_is_dsi(enum transcoder=
 transcoder)
>  	return transcoder =3D=3D TRANSCODER_DSI_A || transcoder =3D=3D TRANSCOD=
ER_DSI_C;
>  }
>=20=20
> +static inline bool transcoder_is_wd(enum transcoder transcoder)
> +{
> +	return transcoder =3D=3D TRANSCODER_WD_0 || transcoder =3D=3D TRANSCODE=
R_WD_1;
> +}
> +
>  /*
>   * Global legacy plane identifier. Valid only for primary/sprite
>   * planes on pre-g4x, and only for primary planes on g4x-bdw.
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index 0612e4b6e3c8..47580b276287 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -73,6 +73,7 @@ enum intel_display_power_domain {
>  	POWER_DOMAIN_PORT_DDI_IO_E_XELPD,
>=20=20
>  	POWER_DOMAIN_PORT_DSI,
> +
>  	POWER_DOMAIN_PORT_CRT,
>  	POWER_DOMAIN_PORT_OTHER,
>  	POWER_DOMAIN_VGA,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index f20086280d7e..19962cc8cf14 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -549,6 +549,8 @@ struct intel_connector {
>  	struct work_struct modeset_retry_work;
>=20=20
>  	struct intel_hdcp hdcp;
> +
> +	struct drm_writeback_connector wb_conn;
>  };
>=20=20
>  struct intel_digital_connector_state {
> @@ -1286,6 +1288,11 @@ struct intel_crtc {
>  	bool cpu_fifo_underrun_disabled;
>  	bool pch_fifo_underrun_disabled;
>=20=20
> +	struct {
> +		struct drm_pending_vblank_event *e;
> +		atomic_t work_busy;
> +		wait_queue_head_t wd_wait;
> +	} wd;
>  	/* per-pipe watermark state */
>  	struct {
>  		/* watermarks currently being used  */
> @@ -1395,6 +1402,7 @@ struct cxsr_latency {
>  #define to_intel_crtc(x) container_of(x, struct intel_crtc, base)
>  #define to_intel_crtc_state(x) container_of(x, struct intel_crtc_state, =
uapi)
>  #define to_intel_connector(x) container_of(x, struct intel_connector, ba=
se)
> +#define to_intel_wb_connector(x) container_of(x, struct intel_wb_connect=
or, base)
>  #define to_intel_encoder(x) container_of(x, struct intel_encoder, base)
>  #define to_intel_framebuffer(x) container_of(x, struct intel_framebuffer=
, base)
>  #define to_intel_plane(x) container_of(x, struct intel_plane, base)
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index 487d8721ecf8..420e3dd20308 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -940,6 +940,12 @@ static int hsw_crtc_compute_clock(struct intel_crtc_=
state *crtc_state)
>  	if (IS_DG2(dev_priv))
>  		return intel_mpllb_calc_state(crtc_state, encoder);
>=20=20
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_WD)) {
> +		pr_alert("%s: %d: output type: 0x%x",
> +			__func__, __LINE__, crtc_state->output_types);
> +		return 0;
> +		}
> +
>  	if (DISPLAY_VER(dev_priv) < 11 &&
>  	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/=
drm/i915/display/intel_opregion.c
> index 0065111593a6..4bab7f0e1ce8 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -348,6 +348,9 @@ int intel_opregion_notify_encoder(struct intel_encode=
r *intel_encoder,
>  	if (!HAS_DDI(dev_priv))
>  		return 0;
>=20=20
> +	if (intel_encoder->type =3D=3D INTEL_OUTPUT_WD)
> +		return 0;
> +
>  	if (intel_encoder->type =3D=3D INTEL_OUTPUT_DSI)
>  		port =3D 0;
>  	else
> diff --git a/drivers/gpu/drm/i915/display/intel_wb_connector.h b/drivers/=
gpu/drm/i915/display/intel_wb_connector.h
> new file mode 100644
> index 000000000000..8063a9273bc7
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_wb_connector.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2020 Intel Corporation
> + */
> +
> +#ifndef __INTEL_WB_CONNECTOR_H__
> +#define __INTEL_WB_CONNECTOR_H__
> +
> +#include "intel_display.h"
> +
> +struct intel_wb_connector *intel_wb_connector_alloc(void);
> +void intel_wb_connector_free(struct intel_wb_connector *connector);
> +void intel_wb_connector_destroy(struct drm_connector *connector);
> +bool intel_wb_connector_get_hw_state(struct intel_wb_connector *connecto=
r);
> +enum pipe intel_wb_connector_get_pipe(struct intel_wb_connector *connect=
or);
> +void intel_wb_connector_attach_encoder(struct intel_wb_connector *connec=
tor,
> +					struct intel_encoder *encoder);
> +
> +#endif /* __INTEL_WB_CONNECTOR_H__ */
> +
> diff --git a/drivers/gpu/drm/i915/display/intel_wd.c b/drivers/gpu/drm/i9=
15/display/intel_wd.c
> new file mode 100644
> index 000000000000..23e0972666f9
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_wd.c
> @@ -0,0 +1,1139 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright =C2=A9 2021 Intel Corporation
> + *
> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the "Softwa=
re"),
> + * to deal in the Software without restriction, including without limita=
tion
> + * the rights to use, copy, modify, merge, publish, distribute, sublicen=
se,
> + * and/or sell copies of the Software, and to permit persons to whom the
> + * Software is furnished to do so, subject to the following conditions:
> + *
> + * The above copyright notice and this permission notice (including the =
next
> + * paragraph) shall be included in all copies or substantial portions of=
 the
> + * Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR =
OTHER
> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISI=
NG
> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER D=
EALINGS
> + * IN THE SOFTWARE.
> + *
> + * Authors:
> + *	Suraj Kandpal <suraj.kandpal@intel.com>
> + *	Arun Murthy <arun.r.murthy@intel.com>
> + *
> + */
> +
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_fourcc.h>
> +
> +#include "intel_atomic.h"
> +#include "intel_connector.h"
> +#include "intel_wd.h"
> +#include "intel_de.h"
> +
> +enum {
> +	WD_CAPTURE_4_PIX,
> +	WD_CAPTURE_2_PIX,
> +} wd_capture_format;
> +
> +static const struct drm_display_mode drm_dmt_modes[] =3D {
> +	/* 0x01 - 640x350@85Hz */
> +	{ DRM_MODE("640x350", DRM_MODE_TYPE_DRIVER, 31500, 640, 672,
> +		736, 832, 0, 350, 382, 385, 445, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x02 - 640x400@85Hz */
> +	{ DRM_MODE("640x400", DRM_MODE_TYPE_DRIVER, 31500, 640, 672,
> +		736, 832, 0, 400, 401, 404, 445, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x03 - 720x400@85Hz */
> +	{ DRM_MODE("720x400", DRM_MODE_TYPE_DRIVER, 35500, 720, 756,
> +		828, 936, 0, 400, 401, 404, 446, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x04 - 640x480@60Hz */
> +	{ DRM_MODE("640x480", DRM_MODE_TYPE_DRIVER, 25175, 640, 656,
> +		752, 800, 0, 480, 490, 492, 525, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x05 - 640x480@72Hz */
> +	{ DRM_MODE("640x480", DRM_MODE_TYPE_DRIVER, 31500, 640, 664,
> +		704, 832, 0, 480, 489, 492, 520, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x06 - 640x480@75Hz */
> +	{ DRM_MODE("640x480", DRM_MODE_TYPE_DRIVER, 31500, 640, 656,
> +		720, 840, 0, 480, 481, 484, 500, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x07 - 640x480@85Hz */
> +	{ DRM_MODE("640x480", DRM_MODE_TYPE_DRIVER, 36000, 640, 696,
> +		752, 832, 0, 480, 481, 484, 509, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x08 - 800x600@56Hz */
> +	{ DRM_MODE("800x600", DRM_MODE_TYPE_DRIVER, 36000, 800, 824,
> +		896, 1024, 0, 600, 601, 603, 625, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x09 - 800x600@60Hz */
> +	{ DRM_MODE("800x600", DRM_MODE_TYPE_DRIVER, 40000, 800, 840,
> +		968, 1056, 0, 600, 601, 605, 628, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x0a - 800x600@72Hz */
> +	{ DRM_MODE("800x600", DRM_MODE_TYPE_DRIVER, 50000, 800, 856,
> +		976, 1040, 0, 600, 637, 643, 666, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x0b - 800x600@75Hz */
> +	{ DRM_MODE("800x600", DRM_MODE_TYPE_DRIVER, 49500, 800, 816,
> +		896, 1056, 0, 600, 601, 604, 625, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x0c - 800x600@85Hz */
> +	{ DRM_MODE("800x600", DRM_MODE_TYPE_DRIVER, 56250, 800, 832,
> +		896, 1048, 0, 600, 601, 604, 631, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x0d - 800x600@120Hz RB */
> +	{ DRM_MODE("800x600", DRM_MODE_TYPE_DRIVER, 73250, 800, 848,
> +		880, 960, 0, 600, 603, 607, 636, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x0e - 848x480@60Hz */
> +	{ DRM_MODE("848x480", DRM_MODE_TYPE_DRIVER, 33750, 848, 864,
> +		976, 1088, 0, 480, 486, 494, 517, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x0f - 1024x768@43Hz, interlace */
> +	{ DRM_MODE("1024x768i", DRM_MODE_TYPE_DRIVER, 44900, 1024, 1032,
> +		1208, 1264, 0, 768, 768, 776, 817, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC |
> +		DRM_MODE_FLAG_INTERLACE) },
> +	/* 0x10 - 1024x768@60Hz */
> +	{ DRM_MODE("1024x768", DRM_MODE_TYPE_DRIVER, 65000, 1024, 1048,
> +		1184, 1344, 0, 768, 771, 777, 806, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x11 - 1024x768@70Hz */
> +	{ DRM_MODE("1024x768", DRM_MODE_TYPE_DRIVER, 75000, 1024, 1048,
> +		1184, 1328, 0, 768, 771, 777, 806, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x12 - 1024x768@75Hz */
> +	{ DRM_MODE("1024x768", DRM_MODE_TYPE_DRIVER, 78750, 1024, 1040,
> +		1136, 1312, 0, 768, 769, 772, 800, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x13 - 1024x768@85Hz */
> +	{ DRM_MODE("1024x768", DRM_MODE_TYPE_DRIVER, 94500, 1024, 1072,
> +		1168, 1376, 0, 768, 769, 772, 808, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x14 - 1024x768@120Hz RB */
> +	{ DRM_MODE("1024x768", DRM_MODE_TYPE_DRIVER, 115500, 1024, 1072,
> +		1104, 1184, 0, 768, 771, 775, 813, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x15 - 1152x864@75Hz */
> +	{ DRM_MODE("1152x864", DRM_MODE_TYPE_DRIVER, 108000, 1152, 1216,
> +		1344, 1600, 0, 864, 865, 868, 900, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x55 - 1280x720@60Hz */
> +	{ DRM_MODE("1280x720", DRM_MODE_TYPE_DRIVER, 74250, 1280, 1390,
> +		1430, 1650, 0, 720, 725, 730, 750, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x16 - 1280x768@60Hz RB */
> +	{ DRM_MODE("1280x768", DRM_MODE_TYPE_DRIVER, 68250, 1280, 1328,
> +		1360, 1440, 0, 768, 771, 778, 790, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x17 - 1280x768@60Hz */
> +	{ DRM_MODE("1280x768", DRM_MODE_TYPE_DRIVER, 79500, 1280, 1344,
> +		1472, 1664, 0, 768, 771, 778, 798, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x18 - 1280x768@75Hz */
> +	{ DRM_MODE("1280x768", DRM_MODE_TYPE_DRIVER, 102250, 1280, 1360,
> +		1488, 1696, 0, 768, 771, 778, 805, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x19 - 1280x768@85Hz */
> +	{ DRM_MODE("1280x768", DRM_MODE_TYPE_DRIVER, 117500, 1280, 1360,
> +		1496, 1712, 0, 768, 771, 778, 809, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x1a - 1280x768@120Hz RB */
> +	{ DRM_MODE("1280x768", DRM_MODE_TYPE_DRIVER, 140250, 1280, 1328,
> +		1360, 1440, 0, 768, 771, 778, 813, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x1b - 1280x800@60Hz RB */
> +	{ DRM_MODE("1280x800", DRM_MODE_TYPE_DRIVER, 71000, 1280, 1328,
> +		1360, 1440, 0, 800, 803, 809, 823, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x1c - 1280x800@60Hz */
> +	{ DRM_MODE("1280x800", DRM_MODE_TYPE_DRIVER, 83500, 1280, 1352,
> +		1480, 1680, 0, 800, 803, 809, 831, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x1d - 1280x800@75Hz */
> +	{ DRM_MODE("1280x800", DRM_MODE_TYPE_DRIVER, 106500, 1280, 1360,
> +		1488, 1696, 0, 800, 803, 809, 838, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x1e - 1280x800@85Hz */
> +	{ DRM_MODE("1280x800", DRM_MODE_TYPE_DRIVER, 122500, 1280, 1360,
> +		1496, 1712, 0, 800, 803, 809, 843, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x1f - 1280x800@120Hz RB */
> +	{ DRM_MODE("1280x800", DRM_MODE_TYPE_DRIVER, 146250, 1280, 1328,
> +		1360, 1440, 0, 800, 803, 809, 847, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x20 - 1280x960@60Hz */
> +	{ DRM_MODE("1280x960", DRM_MODE_TYPE_DRIVER, 108000, 1280, 1376,
> +		1488, 1800, 0, 960, 961, 964, 1000, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x21 - 1280x960@85Hz */
> +	{ DRM_MODE("1280x960", DRM_MODE_TYPE_DRIVER, 148500, 1280, 1344,
> +		1504, 1728, 0, 960, 961, 964, 1011, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x22 - 1280x960@120Hz RB */
> +	{ DRM_MODE("1280x960", DRM_MODE_TYPE_DRIVER, 175500, 1280, 1328,
> +		1360, 1440, 0, 960, 963, 967, 1017, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x23 - 1280x1024@60Hz */
> +	{ DRM_MODE("1280x1024", DRM_MODE_TYPE_DRIVER, 108000, 1280, 1328,
> +		1440, 1688, 0, 1024, 1025, 1028, 1066, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x24 - 1280x1024@75Hz */
> +	{ DRM_MODE("1280x1024", DRM_MODE_TYPE_DRIVER, 135000, 1280, 1296,
> +		1440, 1688, 0, 1024, 1025, 1028, 1066, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x25 - 1280x1024@85Hz */
> +	{ DRM_MODE("1280x1024", DRM_MODE_TYPE_DRIVER, 157500, 1280, 1344,
> +		1504, 1728, 0, 1024, 1025, 1028, 1072, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x26 - 1280x1024@120Hz RB */
> +	{ DRM_MODE("1280x1024", DRM_MODE_TYPE_DRIVER, 187250, 1280, 1328,
> +		1360, 1440, 0, 1024, 1027, 1034, 1084, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x27 - 1360x768@60Hz */
> +	{ DRM_MODE("1360x768", DRM_MODE_TYPE_DRIVER, 85500, 1360, 1424,
> +		1536, 1792, 0, 768, 771, 777, 795, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x28 - 1360x768@120Hz RB */
> +	{ DRM_MODE("1360x768", DRM_MODE_TYPE_DRIVER, 148250, 1360, 1408,
> +		1440, 1520, 0, 768, 771, 776, 813, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x51 - 1366x768@60Hz */
> +	{ DRM_MODE("1366x768", DRM_MODE_TYPE_DRIVER, 85500, 1366, 1436,
> +		1579, 1792, 0, 768, 771, 774, 798, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x56 - 1366x768@60Hz */
> +	{ DRM_MODE("1366x768", DRM_MODE_TYPE_DRIVER, 72000, 1366, 1380,
> +		1436, 1500, 0, 768, 769, 772, 800, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x29 - 1400x1050@60Hz RB */
> +	{ DRM_MODE("1400x1050", DRM_MODE_TYPE_DRIVER, 101000, 1400, 1448,
> +		1480, 1560, 0, 1050, 1053, 1057, 1080, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x2a - 1400x1050@60Hz */
> +	{ DRM_MODE("1400x1050", DRM_MODE_TYPE_DRIVER, 121750, 1400, 1488,
> +		1632, 1864, 0, 1050, 1053, 1057, 1089, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x2b - 1400x1050@75Hz */
> +	{ DRM_MODE("1400x1050", DRM_MODE_TYPE_DRIVER, 156000, 1400, 1504,
> +		1648, 1896, 0, 1050, 1053, 1057, 1099, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x2c - 1400x1050@85Hz */
> +	{ DRM_MODE("1400x1050", DRM_MODE_TYPE_DRIVER, 179500, 1400, 1504,
> +		1656, 1912, 0, 1050, 1053, 1057, 1105, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x2d - 1400x1050@120Hz RB */
> +	{ DRM_MODE("1400x1050", DRM_MODE_TYPE_DRIVER, 208000, 1400, 1448,
> +		1480, 1560, 0, 1050, 1053, 1057, 1112, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x2e - 1440x900@60Hz RB */
> +	{ DRM_MODE("1440x900", DRM_MODE_TYPE_DRIVER, 88750, 1440, 1488,
> +		1520, 1600, 0, 900, 903, 909, 926, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x2f - 1440x900@60Hz */
> +	{ DRM_MODE("1440x900", DRM_MODE_TYPE_DRIVER, 106500, 1440, 1520,
> +		1672, 1904, 0, 900, 903, 909, 934, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x30 - 1440x900@75Hz */
> +	{ DRM_MODE("1440x900", DRM_MODE_TYPE_DRIVER, 136750, 1440, 1536,
> +		1688, 1936, 0, 900, 903, 909, 942, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x31 - 1440x900@85Hz */
> +	{ DRM_MODE("1440x900", DRM_MODE_TYPE_DRIVER, 157000, 1440, 1544,
> +		1696, 1952, 0, 900, 903, 909, 948, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x32 - 1440x900@120Hz RB */
> +	{ DRM_MODE("1440x900", DRM_MODE_TYPE_DRIVER, 182750, 1440, 1488,
> +		1520, 1600, 0, 900, 903, 909, 953, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x53 - 1600x900@60Hz */
> +	{ DRM_MODE("1600x900", DRM_MODE_TYPE_DRIVER, 108000, 1600, 1624,
> +		1704, 1800, 0, 900, 901, 904, 1000, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x33 - 1600x1200@60Hz */
> +	{ DRM_MODE("1600x1200", DRM_MODE_TYPE_DRIVER, 162000, 1600, 1664,
> +		1856, 2160, 0, 1200, 1201, 1204, 1250, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x34 - 1600x1200@65Hz */
> +	{ DRM_MODE("1600x1200", DRM_MODE_TYPE_DRIVER, 175500, 1600, 1664,
> +		1856, 2160, 0, 1200, 1201, 1204, 1250, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x35 - 1600x1200@70Hz */
> +	{ DRM_MODE("1600x1200", DRM_MODE_TYPE_DRIVER, 189000, 1600, 1664,
> +		1856, 2160, 0, 1200, 1201, 1204, 1250, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x36 - 1600x1200@75Hz */
> +	{ DRM_MODE("1600x1200", DRM_MODE_TYPE_DRIVER, 202500, 1600, 1664,
> +		1856, 2160, 0, 1200, 1201, 1204, 1250, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x37 - 1600x1200@85Hz */
> +	{ DRM_MODE("1600x1200", DRM_MODE_TYPE_DRIVER, 229500, 1600, 1664,
> +		1856, 2160, 0, 1200, 1201, 1204, 1250, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x38 - 1600x1200@120Hz RB */
> +	{ DRM_MODE("1600x1200", DRM_MODE_TYPE_DRIVER, 268250, 1600, 1648,
> +		1680, 1760, 0, 1200, 1203, 1207, 1271, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x39 - 1680x1050@60Hz RB */
> +	{ DRM_MODE("1680x1050", DRM_MODE_TYPE_DRIVER, 119000, 1680, 1728,
> +		1760, 1840, 0, 1050, 1053, 1059, 1080, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x3a - 1680x1050@60Hz */
> +	{ DRM_MODE("1680x1050", DRM_MODE_TYPE_DRIVER, 146250, 1680, 1784,
> +		1960, 2240, 0, 1050, 1053, 1059, 1089, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x3b - 1680x1050@75Hz */
> +	{ DRM_MODE("1680x1050", DRM_MODE_TYPE_DRIVER, 187000, 1680, 1800,
> +		1976, 2272, 0, 1050, 1053, 1059, 1099, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x3c - 1680x1050@85Hz */
> +	{ DRM_MODE("1680x1050", DRM_MODE_TYPE_DRIVER, 214750, 1680, 1808,
> +		1984, 2288, 0, 1050, 1053, 1059, 1105, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x3d - 1680x1050@120Hz RB */
> +	{ DRM_MODE("1680x1050", DRM_MODE_TYPE_DRIVER, 245500, 1680, 1728,
> +		1760, 1840, 0, 1050, 1053, 1059, 1112, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x3e - 1792x1344@60Hz */
> +	{ DRM_MODE("1792x1344", DRM_MODE_TYPE_DRIVER, 204750, 1792, 1920,
> +		2120, 2448, 0, 1344, 1345, 1348, 1394, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x3f - 1792x1344@75Hz */
> +	{ DRM_MODE("1792x1344", DRM_MODE_TYPE_DRIVER, 261000, 1792, 1888,
> +		2104, 2456, 0, 1344, 1345, 1348, 1417, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x40 - 1792x1344@120Hz RB */
> +	{ DRM_MODE("1792x1344", DRM_MODE_TYPE_DRIVER, 333250, 1792, 1840,
> +		1872, 1952, 0, 1344, 1347, 1351, 1423, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x41 - 1856x1392@60Hz */
> +	{ DRM_MODE("1856x1392", DRM_MODE_TYPE_DRIVER, 218250, 1856, 1952,
> +		2176, 2528, 0, 1392, 1393, 1396, 1439, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x42 - 1856x1392@75Hz */
> +	{ DRM_MODE("1856x1392", DRM_MODE_TYPE_DRIVER, 288000, 1856, 1984,
> +		2208, 2560, 0, 1392, 1393, 1396, 1500, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x43 - 1856x1392@120Hz RB */
> +	{ DRM_MODE("1856x1392", DRM_MODE_TYPE_DRIVER, 356500, 1856, 1904,
> +		1936, 2016, 0, 1392, 1395, 1399, 1474, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x52 - 1920x1080@60Hz */
> +	{ DRM_MODE("1920x1080", DRM_MODE_TYPE_DRIVER, 148500, 1920, 2008,
> +		2052, 2200, 0, 1080, 1084, 1089, 1125, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x44 - 1920x1200@60Hz RB */
> +	{ DRM_MODE("1920x1200", DRM_MODE_TYPE_DRIVER, 154000, 1920, 1968,
> +		2000, 2080, 0, 1200, 1203, 1209, 1235, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x45 - 1920x1200@60Hz */
> +	{ DRM_MODE("1920x1200", DRM_MODE_TYPE_DRIVER, 193250, 1920, 2056,
> +		2256, 2592, 0, 1200, 1203, 1209, 1245, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x46 - 1920x1200@75Hz */
> +	{ DRM_MODE("1920x1200", DRM_MODE_TYPE_DRIVER, 245250, 1920, 2056,
> +		2264, 2608, 0, 1200, 1203, 1209, 1255, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x47 - 1920x1200@85Hz */
> +	{ DRM_MODE("1920x1200", DRM_MODE_TYPE_DRIVER, 281250, 1920, 2064,
> +		2272, 2624, 0, 1200, 1203, 1209, 1262, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x48 - 1920x1200@120Hz RB */
> +	{ DRM_MODE("1920x1200", DRM_MODE_TYPE_DRIVER, 317000, 1920, 1968,
> +		2000, 2080, 0, 1200, 1203, 1209, 1271, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x49 - 1920x1440@60Hz */
> +	{ DRM_MODE("1920x1440", DRM_MODE_TYPE_DRIVER, 234000, 1920, 2048,
> +		2256, 2600, 0, 1440, 1441, 1444, 1500, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x4a - 1920x1440@75Hz */
> +	{ DRM_MODE("1920x1440", DRM_MODE_TYPE_DRIVER, 297000, 1920, 2064,
> +		2288, 2640, 0, 1440, 1441, 1444, 1500, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x4b - 1920x1440@120Hz RB */
> +	{ DRM_MODE("1920x1440", DRM_MODE_TYPE_DRIVER, 380500, 1920, 1968,
> +		2000, 2080, 0, 1440, 1443, 1447, 1525, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x54 - 2048x1152@60Hz */
> +	{ DRM_MODE("2048x1152", DRM_MODE_TYPE_DRIVER, 162000, 2048, 2074,
> +		2154, 2250, 0, 1152, 1153, 1156, 1200, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x4c - 2560x1600@60Hz RB */
> +	{ DRM_MODE("2560x1600", DRM_MODE_TYPE_DRIVER, 268500, 2560, 2608,
> +		2640, 2720, 0, 1600, 1603, 1609, 1646, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x4d - 2560x1600@60Hz */
> +	{ DRM_MODE("2560x1600", DRM_MODE_TYPE_DRIVER, 348500, 2560, 2752,
> +		3032, 3504, 0, 1600, 1603, 1609, 1658, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x4e - 2560x1600@75Hz */
> +	{ DRM_MODE("2560x1600", DRM_MODE_TYPE_DRIVER, 443250, 2560, 2768,
> +		3048, 3536, 0, 1600, 1603, 1609, 1672, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x4f - 2560x1600@85Hz */
> +	{ DRM_MODE("2560x1600", DRM_MODE_TYPE_DRIVER, 505250, 2560, 2768,
> +		3048, 3536, 0, 1600, 1603, 1609, 1682, 0,
> +		DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_PVSYNC) },
> +	/* 0x50 - 2560x1600@120Hz RB */
> +	{ DRM_MODE("2560x1600", DRM_MODE_TYPE_DRIVER, 552750, 2560, 2608,
> +		2640, 2720, 0, 1600, 1603, 1609, 1694, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x57 - 4096x2160@60Hz RB */
> +	{ DRM_MODE("4096x2160", DRM_MODE_TYPE_DRIVER, 556744, 4096, 4104,
> +		4136, 4176, 0, 2160, 2208, 2216, 2222, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +	/* 0x58 - 4096x2160@59.94Hz RB */
> +	{ DRM_MODE("4096x2160", DRM_MODE_TYPE_DRIVER, 556188, 4096, 4104,
> +		4136, 4176, 0, 2160, 2208, 2216, 2222, 0,
> +		DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NVSYNC) },
> +};
> +
> +static struct drm_writeback_job
> +*intel_get_writeback_job_from_queue(struct intel_wd *intel_wd)
> +{
> +	struct drm_writeback_job *job;
> +	struct drm_device *dev =3D intel_wd->base.base.dev;
> +	struct drm_writeback_connector *wb_conn =3D
> +		intel_wd->attached_connector->base.wb_connector;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&wb_conn->job_lock, flags);
> +	job =3D list_first_entry_or_null(&wb_conn->job_queue,
> +			struct drm_writeback_job,
> +			list_entry);
> +	spin_unlock_irqrestore(&wb_conn->job_lock, flags);
> +	if (job =3D=3D NULL) {
> +		drm_dbg(dev, "job queue is empty\n");
> +		return NULL;
> +	}
> +
> +	return job;
> +}
> +
> +void print_connectors(struct drm_i915_private *dev_priv)
> +{
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	struct drm_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +	struct intel_connector *intel_connector;
> +
> +	drm_modeset_lock_all(dev);
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		intel_connector =3D to_intel_connector(connector);
> +		drm_dbg(dev, "[CONNECTOR:%d:%s]: status: %s\n",
> +			connector->base.id, connector->name,
> +			drm_get_connector_status_name(connector->status));
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +	drm_modeset_unlock_all(dev);
> +}
> +
> +/*Check with Spec*/
> +static const u32 wb_fmts[] =3D {
> +		DRM_FORMAT_YUV444,
> +		DRM_FORMAT_XYUV8888,
> +		DRM_FORMAT_XBGR8888,
> +		DRM_FORMAT_XRGB8888,
> +		DRM_FORMAT_Y410,
> +		DRM_FORMAT_YUV422,
> +		DRM_FORMAT_XBGR2101010,
> +		DRM_FORMAT_RGB565,
> +
> +};
> +
> +static int intel_wd_get_format(int pixel_format)
> +{
> +	int wd_format =3D -EINVAL;
> +
> +	switch (pixel_format) {
> +	case DRM_FORMAT_XBGR8888:
> +	case DRM_FORMAT_XRGB8888:
> +	case DRM_FORMAT_XBGR2101010:
> +	case DRM_FORMAT_XYUV8888:
> +	case DRM_FORMAT_YUV444:
> +		wd_format =3D WD_CAPTURE_4_PIX;
> +		break;
> +	case DRM_FORMAT_YUV422:
> +	case DRM_FORMAT_RGB565:
> +		wd_format =3D WD_CAPTURE_2_PIX;
> +		break;
> +	default:
> +		DRM_ERROR("unsupported pixel format %x!\n",
> +			pixel_format);
> +	}
> +
> +	return wd_format;
> +}
> +
> +static int intel_wd_verify_pix_format(int format)
> +{
> +	const struct drm_format_info *info =3D drm_format_info(format);
> +	int pix_format =3D info->format;
> +	int i =3D 0;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(wb_fmts); i++)
> +		if (pix_format =3D=3D wb_fmts[i])
> +			return 0;
> +
> +	return 1;
> +}
> +
> +static u32 intel_wd_get_stride(const struct intel_crtc_state *crtc_state,
> +			int format)
> +{
> +	const struct drm_format_info *info =3D drm_format_info(format);
> +	int wd_format;
> +	int hactive, pixel_size;
> +
> +	wd_format =3D intel_wd_get_format(info->format);
> +
> +	switch (wd_format) {
> +	case WD_CAPTURE_4_PIX:
> +		pixel_size =3D 4;
> +		break;
> +	case WD_CAPTURE_2_PIX:
> +		pixel_size =3D 2;
> +		break;
> +	default:
> +		pixel_size =3D 1;
> +		break;
> +	}
> +
> +	hactive =3D crtc_state->hw.adjusted_mode.crtc_hdisplay;
> +
> +	return DIV_ROUND_UP(hactive * pixel_size, 64);
> +}
> +
> +static int intel_wd_pin_fb(struct intel_wd *intel_wd,
> +			struct drm_framebuffer *fb)
> +{
> +	const struct i915_ggtt_view view =3D {
> +		.type =3D I915_GGTT_VIEW_NORMAL,
> +		};
> +	struct i915_vma *vma;
> +
> +	vma =3D intel_pin_and_fence_fb_obj(fb, false, &view, false,
> +			&intel_wd->flags);
> +
> +	if (IS_ERR(vma))
> +		return PTR_ERR(vma);
> +
> +	intel_wd->vma =3D vma;
> +	return 0;
> +}
> +
> +static void intel_configure_slicing_strategy(struct drm_i915_private *de=
v_priv,
> +		struct intel_wd *intel_wd, u32 *tmp)
> +{
> +	*tmp &=3D ~WD_STRAT_MASK;
> +	if (intel_wd->slicing_strategy =3D=3D 1)
> +		*tmp |=3D WD_SLICING_STRAT_1_1;
> +	else if (intel_wd->slicing_strategy =3D=3D 2)
> +		*tmp |=3D WD_SLICING_STRAT_2_1;
> +	else if (intel_wd->slicing_strategy =3D=3D 3)
> +		*tmp |=3D WD_SLICING_STRAT_4_1;
> +	else if (intel_wd->slicing_strategy =3D=3D 4)
> +		*tmp |=3D WD_SLICING_STRAT_8_1;
> +
> +	intel_de_write(dev_priv, WD_STREAMCAP_CTL(intel_wd->trans),
> +			*tmp);
> +
> +}
> +
> +static enum drm_mode_status
> +intel_wd_mode_valid(struct drm_connector *connector,
> +		struct drm_display_mode *mode)
> +{
> +	drm_dbg(connector->dev, "%s: %d:\n", __func__, __LINE__);
> +	return MODE_OK;
> +}
> +
> +static int intel_wd_get_modes(struct drm_connector *connector)
> +{
> +	int i;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(drm_dmt_modes); i++) {
> +		struct drm_display_mode *nmode;
> +
> +		nmode =3D drm_mode_duplicate(connector->dev,
> +					&drm_dmt_modes[i]);
> +		if (nmode)
> +			drm_mode_probed_add(connector, nmode);
> +		else
> +			DRM_ERROR("duplicate mode error!\n");
> +	}
> +
> +	return 0;
> +}
> +
> +static void intel_wd_get_config(struct intel_encoder *encoder,
> +		struct intel_crtc_state *pipe_config)
> +{
> +	struct drm_device *dev =3D encoder->base.dev;
> +	struct intel_crtc *intel_crtc =3D
> +		to_intel_crtc(pipe_config->uapi.crtc);
> +
> +	drm_dbg(dev, "%s: %d:\n", __func__, __LINE__);
> +	if (intel_crtc) {
> +		memcpy(pipe_config, intel_crtc->config,
> +			sizeof(*pipe_config));
> +		pipe_config->output_types |=3D BIT(INTEL_OUTPUT_WD);
> +		drm_dbg(dev, "%s: %d: crtc found\n", __func__, __LINE__);
> +	}
> +
> +}
> +
> +static int intel_wd_compute_config(struct intel_encoder *encoder,
> +			struct intel_crtc_state *pipe_config,
> +			struct drm_connector_state *conn_state)
> +{
> +	struct intel_wd *intel_wd =3D enc_to_intel_wd(encoder);
> +	struct drm_device *dev =3D encoder->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct drm_writeback_job *job;
> +
> +	drm_dbg(dev, "%s: %d:\n", __func__, __LINE__);
> +	job =3D intel_get_writeback_job_from_queue(intel_wd);
> +	if (job || conn_state->writeback_job) {
> +		dev_priv->wd_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> +		return 0;
> +	}
> +	drm_dbg(dev, "No writebackjob in queue\n");
> +
> +	return 0;
> +}
> +
> +static void intel_wd_get_power_domains(struct intel_encoder *encoder,
> +			struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct intel_wd *intel_wd =3D enc_to_intel_wd(encoder);
> +	intel_wakeref_t wakeref;
> +
> +	wakeref =3D intel_display_power_get(dev_priv,
> +				encoder->power_domain);
> +
> +	intel_wd->io_wakeref[0] =3D wakeref;
> +	drm_dbg(encoder->base.dev, "%s: %d:\n", __func__, __LINE__);
> +}
> +
> +static bool intel_wd_get_hw_state(struct intel_encoder *encoder,
> +		enum pipe *pipe)
> +{
> +	bool ret =3D false;
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct intel_wd *intel_wd =3D enc_to_intel_wd(encoder);
> +	struct intel_crtc *wd_crtc =3D dev_priv->wd_crtc;
> +	intel_wakeref_t wakeref;
> +	u32 tmp;
> +
> +	if (wd_crtc)
> +		return false;
> +
> +	wakeref =3D intel_display_power_get_if_enabled(dev_priv,
> +				encoder->power_domain);
> +	drm_dbg(encoder->base.dev, "%s: %d: power enabled : %s\n",
> +			__func__, __LINE__, !wakeref ? "false":"true");
> +
> +	if (!wakeref)
> +		return false;
> +
> +	tmp =3D intel_de_read(dev_priv, PIPECONF(intel_wd->trans));
> +	ret =3D tmp & I965_PIPECONF_ACTIVE;
> +	drm_dbg(encoder->base.dev, "%s: %d: trancoder enabled: %s\n",
> +			__func__, __LINE__, ret ? "true":"false");
> +	if (ret) {
> +		*pipe =3D wd_crtc->pipe;
> +		drm_dbg(encoder->base.dev, "%s: %d: pipe selected is %d\n",
> +			__func__, __LINE__, wd_crtc->pipe);
> +	}
> +	return true;
> +}
> +
> +static int intel_wd_encoder_atomic_check(struct drm_encoder *encoder,
> +				    struct drm_crtc_state *crtc_st,
> +				    struct drm_connector_state *conn_st)
> +{
> +	/* Check for the format and buffers and property validity */
> +	struct drm_framebuffer *fb;
> +	struct drm_writeback_job *job =3D conn_st->writeback_job;
> +	struct drm_device *dev =3D encoder->dev;
> +	const struct drm_display_mode *mode =3D &crtc_st->mode;
> +	int ret;
> +
> +	drm_dbg(dev, "%s: %d:\n", __func__, __LINE__);
> +
> +	if (!job) {
> +		drm_dbg(dev, "no writeback job created returning");
> +		return -EINVAL;
> +	}
> +
> +	fb =3D job->fb;
> +
> +	if (!fb) {
> +		drm_dbg(dev, "%s : invalid framebuffer\n", __func__);
> +		return -EINVAL;
> +	}
> +
> +	if (fb->width !=3D mode->hdisplay || fb->height !=3D mode->vdisplay) {
> +		drm_dbg(dev, "%s : invalid framebuffer size %ux%u\n",
> +				__func__, fb->width, fb->height);
> +		return -EINVAL;
> +	}
> +
> +	ret =3D intel_wd_verify_pix_format(fb->format->format);
> +
> +	if (ret) {
> +		drm_dbg(dev, "%s : unsupported framebuffer format %08x\n",
> +				__func__, fb->format->format);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +
> +static const struct drm_encoder_helper_funcs wd_encoder_helper_funcs =3D=
 {
> +	.atomic_check =3D intel_wd_encoder_atomic_check,
> +};
> +
> +static void intel_wd_connector_destroy(struct drm_connector *connector)
> +{
> +	drm_dbg(connector->dev, "%s: %d:\n", __func__, __LINE__);
> +	drm_connector_cleanup(connector);
> +	kfree(connector);
> +}
> +
> +static enum drm_connector_status
> +intel_wb_connector_detect(struct drm_connector *connector, bool force)
> +{
> +	drm_dbg(connector->dev, "%s: %d:\n", __func__, __LINE__);
> +	return connector_status_connected;
> +}
> +
> +
> +static const struct drm_connector_funcs wd_connector_funcs =3D {
> +	.detect =3D intel_wb_connector_detect,
> +	.reset =3D drm_atomic_helper_connector_reset,
> +	.destroy =3D intel_wd_connector_destroy,
> +	.fill_modes =3D drm_helper_probe_single_connector_modes,
> +	.atomic_destroy_state =3D drm_atomic_helper_connector_destroy_state,
> +	.atomic_duplicate_state =3D intel_digital_connector_duplicate_state,
> +};
> +
> +static const struct drm_connector_helper_funcs wd_connector_helper_funcs=
 =3D {
> +	.get_modes =3D intel_wd_get_modes,
> +	.mode_valid =3D intel_wd_mode_valid,
> +};
> +
> +static bool intel_fastset_dis(struct intel_encoder *encoder,
> +		struct intel_crtc_state *pipe_config)
> +{
> +	pipe_config->uapi.mode_changed =3D true;
> +	drm_dbg(encoder->base.dev, "%s: %d:\n", __func__, __LINE__);
> +	return false;
> +}
> +
> +void intel_wd_init(struct drm_i915_private *dev_priv, enum transcoder tr=
ans)
> +{
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	struct intel_wd *intel_wd;
> +	struct intel_encoder *encoder;
> +	struct intel_connector *intel_connector;
> +	struct drm_writeback_connector *wb_conn;
> +	int n_formats =3D ARRAY_SIZE(wb_fmts);
> +	int err;
> +
> +	drm_dbg(dev, "%s: %d:\n", __func__, __LINE__);
> +	intel_wd =3D kzalloc(sizeof(*intel_wd), GFP_KERNEL);
> +	if (!intel_wd)
> +		return;
> +
> +	intel_connector =3D intel_connector_alloc();
> +	if (!intel_connector) {
> +		kfree(intel_wd);
> +		return;
> +	}
> +
> +	wb_conn =3D &intel_connector->wb_conn;
> +	wb_conn->base =3D &intel_connector->base;
> +	wb_conn->encoder =3D &intel_wd->base.base;
> +
> +	encoder =3D &intel_wd->base;
> +	intel_wd->attached_connector =3D intel_connector;
> +	intel_wd->trans =3D trans;
> +	intel_wd->triggered_cap_mode =3D 1;
> +	dev_priv->intel_wd =3D intel_wd;
> +	intel_wd->frame_num =3D 1;
> +	intel_wd->slicing_strategy =3D 1;
> +	encoder->get_config =3D intel_wd_get_config;
> +	encoder->compute_config =3D intel_wd_compute_config;
> +	encoder->get_hw_state =3D intel_wd_get_hw_state;
> +	encoder->type =3D INTEL_OUTPUT_WD;
> +	encoder->cloneable =3D 0;
> +	encoder->pipe_mask =3D ~0;
> +	encoder->power_domain =3D POWER_DOMAIN_TRANSCODER_B;
> +	encoder->get_power_domains =3D intel_wd_get_power_domains;
> +	encoder->initial_fastset_check =3D intel_fastset_dis;
> +	intel_connector->get_hw_state =3D
> +		intel_connector_get_hw_state;
> +
> +	err =3D drm_writeback_connector_init(dev, wb_conn,
> +		&wd_connector_funcs,
> +		&wd_encoder_helper_funcs,
> +		wb_fmts, n_formats);
> +
> +	if (err !=3D 0) {
> +		drm_dbg(dev,
> +		"%s: %d:drm_writeback_connector_init: Failed: %d\n",
> +			__func__, __LINE__, err);
> +		goto cleanup;
> +	}
> +
> +	drm_connector_helper_add(wb_conn->base, &wd_connector_helper_funcs);
> +	intel_connector_attach_encoder(intel_connector, encoder);
> +	wb_conn->base->status =3D connector_status_connected;
> +	return;
> +
> +cleanup:
> +	kfree(intel_wd);
> +	intel_connector_free(intel_connector);
> +}
> +
> +void intel_wd_writeback_complete(struct drm_i915_private *dev_priv,
> +		struct drm_writeback_job *job, int status)
> +{
> +	struct intel_wd *intel_wd =3D dev_priv->intel_wd;
> +	struct drm_writeback_connector *wb_conn =3D
> +		intel_wd->attached_connector->base.wb_connector;
> +	drm_writeback_signal_completion(wb_conn, status);
> +}
> +
> +int intel_wd_setup_transcoder(struct drm_i915_private *dev_priv,
> +		struct intel_wd *intel_wd,
> +		struct intel_crtc_state *pipe_config,
> +		struct drm_connector_state *conn_state,
> +		struct drm_writeback_job *job)
> +{
> +	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> +	enum pipe pipe =3D intel_crtc->pipe;
> +	struct drm_framebuffer *fb;
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	struct drm_gem_object *wd_fb_obj;
> +
> +	u32 stride, tmp;
> +	u16 hactive, vactive;
> +	int ret;
> +
> +	fb =3D job->fb;
> +	wd_fb_obj =3D fb->obj[0];
> +	if (!wd_fb_obj) {
> +		drm_dbg(dev, "No framebuffer gem object created");
> +		return -1;
> +	}
> +	ret =3D intel_wd_pin_fb(intel_wd, fb);
> +	drm_WARN_ON(dev, ret !=3D 0);
> +
> +	/*Write stride and surface registers in that particular order*/
> +	stride =3D intel_wd_get_stride(pipe_config, fb->format->format);
> +
> +	tmp =3D intel_de_read(dev_priv, WD_STRIDE(intel_wd->trans));
> +	tmp &=3D ~WD_STRIDE_MASK;
> +	tmp |=3D (stride << WD_STRIDE_SHIFT);
> +
> +	intel_de_write(dev_priv, WD_STRIDE(intel_wd->trans), tmp);
> +
> +	tmp =3D intel_de_read(dev_priv, WD_SURF(intel_wd->trans));
> +	drm_dbg(dev, "[%s] : %d %d is the surface address\n",
> +			__func__, __LINE__, tmp);
> +
> +	intel_de_write(dev_priv, WD_SURF(intel_wd->trans),
> +			i915_ggtt_offset(intel_wd->vma));
> +
> +	tmp =3D intel_de_read_fw(dev_priv, WD_IIR(intel_wd->trans));
> +	intel_de_write_fw(dev_priv, WD_IIR(intel_wd->trans), tmp);
> +
> +	tmp =3D ~(WD_GTT_FAULT_INT|WD_WRITE_COMPLETE_INT|WD_FRAME_COMPLETE_INT|
> +			WD_VBLANK_INT|WD_OVERRUN_INT|WD_CAPTURING_INT);
> +	intel_de_write_fw(dev_priv, WD_IMR(intel_wd->trans), tmp);
> +
> +	if (intel_wd->stream_cap) {
> +		tmp =3D intel_de_read(dev_priv,
> +				WD_STREAMCAP_CTL(intel_wd->trans));
> +		tmp |=3D WD_STREAM_CAP_MODE_EN;
> +		intel_configure_slicing_strategy(dev_priv, intel_wd, &tmp);
> +	}
> +
> +	hactive =3D pipe_config->uapi.mode.hdisplay;
> +	vactive =3D pipe_config->uapi.mode.vdisplay;
> +
> +	drm_dbg(dev, "[%s] : %d hactive : %d, vactive: %d\n",
> +			__func__, __LINE__, hactive, vactive);
> +
> +	tmp =3D intel_de_read(dev_priv, HTOTAL(intel_wd->trans));
> +	drm_dbg(dev, "[%s] : %d hactive_reg : %d\n",
> +			__func__, __LINE__, tmp);
> +	tmp =3D intel_de_read(dev_priv, VTOTAL(intel_wd->trans));
> +	drm_dbg(dev, "[%s] : %d vactive_reg : %d\n",
> +			__func__, __LINE__, tmp);
> +	/* minimum hactive as per bspec: 64 pixels*/
> +	if (hactive < 64)
> +		drm_err(dev, "hactive is less then 64 pixels\n");
> +
> +	intel_de_write(dev_priv, HTOTAL(intel_wd->trans), hactive - 1);
> +	intel_de_write(dev_priv, VTOTAL(intel_wd->trans), vactive - 1);
> +
> +	tmp =3D intel_de_read(dev_priv, WD_TRANS_FUNC_CTL(intel_wd->trans));
> +	/* select pixel format */
> +	tmp &=3D ~WD_PIX_FMT_MASK;
> +
> +	switch (fb->format->format) {
> +	default:
> +	fallthrough;
> +	case DRM_FORMAT_YUYV:
> +		tmp |=3D WD_PIX_FMT_YUYV;
> +		break;
> +	case DRM_FORMAT_XYUV8888:
> +		tmp |=3D WD_PIX_FMT_XYUV8888;
> +		break;
> +	case DRM_FORMAT_XBGR8888:
> +		tmp |=3D WD_PIX_FMT_XBGR8888;
> +		break;
> +	case DRM_FORMAT_Y410:
> +		tmp |=3D WD_PIX_FMT_Y410;
> +		break;
> +	case DRM_FORMAT_YUV422:
> +		tmp |=3D WD_PIX_FMT_YUV422;
> +		break;
> +	case DRM_FORMAT_XBGR2101010:
> +		tmp |=3D WD_PIX_FMT_XBGR2101010;
> +		break;
> +	case DRM_FORMAT_RGB565:
> +		tmp |=3D WD_PIX_FMT_RGB565;
> +		break;
> +	}
> +
> +	if (intel_wd->triggered_cap_mode)
> +		tmp |=3D WD_TRIGGERED_CAP_MODE_ENABLE;
> +
> +	if (intel_wd->stream_cap)
> +		tmp |=3D WD_CTL_POINTER_DTDH;
> +
> +	/*select input pipe*/
> +	tmp &=3D ~WD_INPUT_SELECT_MASK;
> +	drm_dbg(dev, "[%s] : %d selected pipe is %d\n", __func__,
> +			__LINE__, pipe);
> +	switch (pipe) {
> +	default:
> +	//	MISSING_CASE(pipe);
> +	case PIPE_A:
> +		tmp |=3D WD_INPUT_PIPE_A;
> +		break;
> +	case PIPE_B:
> +		tmp |=3D WD_INPUT_PIPE_B;
> +		break;
> +	case PIPE_C:
> +		tmp |=3D WD_INPUT_PIPE_C;
> +		break;
> +	case PIPE_D:
> +		tmp |=3D WD_INPUT_PIPE_D;
> +		break;
> +	}
> +
> +	/* enable DDI buffer */
> +	if (!(tmp & TRANS_WD_FUNC_ENABLE))
> +		tmp |=3D TRANS_WD_FUNC_ENABLE;
> +
> +	intel_de_write(dev_priv, WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);
> +
> +	tmp =3D intel_de_read(dev_priv, PIPECONF(intel_wd->trans));
> +	ret =3D tmp & I965_PIPECONF_ACTIVE;
> +	drm_dbg(dev, "%s: %d: trancoder enabled: %s\n", __func__, __LINE__,
> +			ret ? "true":"false");
> +
> +	if (!ret) {
> +		/*enable the transcoder	*/
> +		tmp =3D intel_de_read(dev_priv, PIPECONF(intel_wd->trans));
> +		tmp |=3D PIPECONF_ENABLE;
> +		intel_de_write(dev_priv, PIPECONF(intel_wd->trans), tmp);
> +
> +		/* wait for transcoder to be enabled */
> +		if (intel_de_wait_for_set(dev_priv, PIPECONF(intel_wd->trans),
> +				I965_PIPECONF_ACTIVE, 10))
> +			drm_err(dev, "WD transcoder not enabled\n");
> +	}
> +
> +	return 0;
> +}
> +
> +static void intel_wd_disable_capture(struct drm_i915_private *dev_priv,
> +		struct intel_wd *intel_wd)
> +{
> +	u32 tmp;
> +
> +	intel_de_write_fw(dev_priv, WD_IMR(intel_wd->trans), 0xFF);
> +	tmp =3D intel_de_read(dev_priv, PIPECONF(intel_wd->trans));
> +	tmp &=3D PIPECONF_DISABLE;
> +	intel_de_write(dev_priv, PIPECONF(intel_wd->trans), tmp);
> +
> +	drm_dbg(&dev_priv->drm, "WD Trans_Conf value after disable =3D 0x%08x\n=
",
> +		intel_de_read(dev_priv, PIPECONF(intel_wd->trans)));
> +	tmp =3D intel_de_read(dev_priv, WD_TRANS_FUNC_CTL(intel_wd->trans));
> +	tmp |=3D ~TRANS_WD_FUNC_ENABLE;
> +}
> +
> +int intel_wd_capture(struct drm_i915_private *dev_priv, struct drm_devic=
e *dev,
> +		struct intel_wd *intel_wd,
> +		struct intel_crtc_state *pipe_config,
> +		struct drm_connector_state *conn_state,
> +		struct drm_writeback_job *job)
> +{
> +	u32 tmp;
> +	int ret =3D 0, status =3D 0;
> +	struct intel_crtc *wd_crtc =3D dev_priv->wd_crtc;
> +	unsigned long flags;
> +
> +	drm_dbg(dev, "[%s]: %d ", __func__, __LINE__);
> +
> +	if (!job->out_fence)
> +		drm_dbg(dev, "Not able to get out_fence for job");
> +
> +	ret =3D intel_wd_setup_transcoder(dev_priv, intel_wd,
> +			pipe_config, conn_state, job);
> +
> +	if (ret < 0) {
> +		drm_dbg(dev,
> +		"wd transcoder setup not completed aborting capture");
> +		return -1;
> +	}
> +
> +	if (wd_crtc =3D=3D NULL) {
> +		DRM_ERROR("CRTC not attached\n");
> +		return -1;
> +	}
> +
> +	tmp =3D intel_de_read_fw(dev_priv,
> +			WD_TRANS_FUNC_CTL(intel_wd->trans));
> +	tmp |=3D START_TRIGGER_FRAME;
> +	tmp &=3D ~WD_FRAME_NUMBER_MASK;
> +	tmp |=3D intel_wd->frame_num;
> +	intel_de_write_fw(dev_priv,
> +			WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);
> +
> +	if (!intel_de_wait_for_set(dev_priv, WD_IIR(intel_wd->trans),
> +				WD_FRAME_COMPLETE_INT, 100)){
> +		drm_dbg(dev, "frame captured");
> +		tmp =3D intel_de_read(dev_priv, WD_IIR(intel_wd->trans));
> +		drm_dbg(dev, "iir value : %d", tmp);
> +		status =3D 0;
> +	} else {
> +		drm_dbg(dev, "frame not captured triggering stop frame");
> +		tmp =3D intel_de_read(dev_priv,
> +				WD_TRANS_FUNC_CTL(intel_wd->trans));
> +		tmp |=3D STOP_TRIGGER_FRAME;
> +		intel_de_write(dev_priv,
> +				WD_TRANS_FUNC_CTL(intel_wd->trans), tmp);
> +		status =3D -1;
> +	}
> +
> +	intel_de_write(dev_priv, WD_IIR(intel_wd->trans), tmp);
> +	intel_wd_disable_capture(dev_priv, intel_wd);
> +	intel_wd_writeback_complete(dev_priv, job, status);
> +	if (wd_crtc->wd.e) {
> +		spin_lock_irqsave(&dev->event_lock, flags);
> +		drm_dbg(dev, "send %p\n", wd_crtc->wd.e);
> +		drm_crtc_send_vblank_event(&wd_crtc->base,
> +					wd_crtc->wd.e);
> +		spin_unlock_irqrestore(&dev->event_lock, flags);
> +		wd_crtc->wd.e =3D NULL;
> +	} else {
> +		DRM_ERROR("Event NULL! %p, %p\n", dev,
> +			dev_priv->wd_crtc);
> +	}
> +	return 0;
> +
> +}
> +
> +void intel_wd_enable_capture(struct drm_i915_private *dev_priv,
> +		struct intel_encoder *encoder,
> +		struct intel_crtc_state *pipe_config,
> +		struct drm_connector_state *conn_state)
> +{
> +	struct drm_device *dev =3D &dev_priv->drm;
> +	struct intel_wd *intel_wd =3D enc_to_intel_wd(encoder);
> +	struct drm_writeback_job *job;
> +
> +	drm_dbg(dev, "%s: %d:\n", __func__, __LINE__);
> +
> +	job =3D intel_get_writeback_job_from_queue(intel_wd);
> +	if (job =3D=3D NULL) {
> +		drm_dbg(dev, "job queue is empty not capturing any frame\n");
> +		return;
> +	}
> +
> +	intel_wd_capture(dev_priv, dev, intel_wd, pipe_config,
> +			conn_state, job);
> +	intel_wd->frame_num +=3D 1;
> +
> +}
> +
> +void intel_wd_set_vblank_event(struct intel_crtc *intel_crtc,
> +			struct intel_crtc_state *intel_crtc_state)
> +{
> +	struct drm_device *dev =3D intel_crtc->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_crtc_state *state =3D &intel_crtc_state->uapi;
> +
> +	if (!dev_priv->wd_crtc) {
> +		drm_dbg(dev, "[%s]: %d wd crtc not found ", __func__, __LINE__);
> +		return;
> +	}
> +
> +	if (intel_crtc =3D=3D dev_priv->wd_crtc) {
> +		intel_crtc->wd.e =3D state->event;
> +		state->event =3D NULL;
> +		if (intel_crtc->wd.e)
> +			drm_dbg(dev, "WD event:%p\n",
> +				intel_crtc->wd.e);
> +		else
> +			drm_dbg(dev, "WD  no event\n");
> +	}
> +}
> +
> +void intel_wd_handle_isr(struct drm_i915_private *dev_priv)
> +{
> +	u32 iir_value =3D 0;
> +	struct drm_device *dev =3D &dev_priv->drm;
> +
> +	iir_value =3D intel_de_read(dev_priv, WD_IIR(TRANSCODER_WD_0));
> +	drm_dbg(dev, "[%s] :%d ", __func__, __LINE__);
> +
> +	if (!dev_priv->wd_crtc) {
> +		DRM_ERROR("NO CRTC attached with WD\n");
> +		goto clear_iir;
> +	}
> +
> +	if (iir_value & WD_VBLANK_INT)
> +		drm_dbg(dev, "vblank interrupt for wd transcoder");
> +	if (iir_value & WD_WRITE_COMPLETE_INT)
> +		drm_dbg(dev,
> +		"[%s] :%d wd write complete interrupt encountered",
> +			__func__, __LINE__);
> +	else
> +		DRM_INFO("iir: %x\n", iir_value);
> +	if (iir_value & WD_FRAME_COMPLETE_INT) {
> +		drm_dbg(dev, "frame complete interrupt for wd transcoder");
> +		return;
> +	}
> +clear_iir:
> +	intel_de_write(dev_priv, WD_IIR(TRANSCODER_WD_0), iir_value);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_wd.h b/drivers/gpu/drm/i9=
15/display/intel_wd.h
> new file mode 100644
> index 000000000000..23f3d4d5933c
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_wd.h
> @@ -0,0 +1,70 @@
> +/* SPDX-License-Identifier: GPL-2.0
> + * Copyright =C2=A9 2021 Intel Corporation
> + *
> + * Permission is hereby granted, free of charge, to any person obtaining=
 a
> + * copy of this software and associated documentation files (the "Softwa=
re"),
> + * to deal in the Software without restriction, including without limita=
tion
> + * the rights to use, copy, modify, merge, publish, distribute, sublicen=
se,
> + * and/or sell copies of the Software, and to permit persons to whom the
> + * Software is furnished to do so, subject to the following conditions:
> + *
> + * The above copyright notice and this permission notice (including the =
next
> + * paragraph) shall be included in all copies or substantial portions of=
 the
> + * Software.
> + *
> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS OR
> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILI=
TY,
> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SH=
ALL
> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR =
OTHER
> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISI=
NG
> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
> + * DEALINGS IN THE SOFTWARE.
> + *
> + * Author :
> + *	Suraj Kandpal<suraj.kandpal@intel.com>
> + *	Arun Murthy<arun.r.murthy@intel.com>
> + */
> +
> +#ifndef _INTEL_WD_H
> +#define _INTEL_WD_H
> +
> +#include <drm/drm_crtc.h>
> +
> +#include "intel_display_types.h"
> +
> +#define I915_MAX_WD_TANSCODERS 2
> +
> +struct intel_wd {
> +	struct intel_encoder base;
> +	intel_wakeref_t io_wakeref[I915_MAX_WD_TANSCODERS];
> +	struct intel_connector *attached_connector;
> +	enum transcoder trans;
> +	struct i915_vma *vma;
> +	unsigned long flags;
> +	struct drm_writeback_job *job;
> +	int triggered_cap_mode;
> +	int frame_num;
> +	bool stream_cap;
> +	bool start_capture;
> +	int slicing_strategy;
> +};
> +
> +struct intel_wd_clk_vals {
> +	u32 cdclk;
> +	u16 link_m;
> +	u16 link_n;
> +};
> +
> +static inline struct intel_wd *enc_to_intel_wd(struct intel_encoder *enc=
oder)
> +{
> +	return container_of(&encoder->base, struct intel_wd, base.base);
> +}
> +void intel_wd_init(struct drm_i915_private *dev_priv, enum transcoder tr=
ans);
> +void intel_wd_enable_capture(struct drm_i915_private *dev_priv,
> +				struct intel_encoder *encoder,
> +				struct intel_crtc_state *pipe_config,
> +				struct drm_connector_state *conn_state);
> +void intel_wd_handle_isr(struct drm_i915_private *dev_priv);
> +void intel_wd_set_vblank_event(struct intel_crtc *crtc,
> +				struct intel_crtc_state *state);
> +#endif/* _INTEL_WD_H */
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 91f1be7174e5..1f96da724176 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1161,7 +1161,6 @@ skl_update_plane(struct intel_plane *plane,
>  	if (plane_state->planar_linked_plane && !plane_state->planar_slave)
>  		/* Program the UV plane on planar master */
>  		color_plane =3D 1;
> -
>  	skl_program_plane(plane, crtc_state, plane_state, color_plane);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 804c2a470e94..a0a8f5716fbe 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -58,6 +58,7 @@
>  #include <drm/drm_dsc.h>
>  #include <drm/drm_atomic.h>
>  #include <drm/drm_connector.h>
> +#include <drm/drm_writeback.h>
>  #include <drm/i915_mei_hdcp_interface.h>
>  #include <drm/ttm/ttm_device.h>
>=20=20
> @@ -925,6 +926,10 @@ struct drm_i915_private {
>  	unsigned int fdi_pll_freq;
>  	unsigned int czclk_freq;
>=20=20
> +	struct intel_crtc *wd_crtc;
> +	struct intel_wd *intel_wd;
> +	struct work_struct wd_work;
> +
>  	struct {
>  		/* The current hardware cdclk configuration */
>  		struct intel_cdclk_config hw;
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index 0a1681384c84..463e62c2c3ba 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -40,6 +40,7 @@
>  #include "display/intel_hotplug.h"
>  #include "display/intel_lpe_audio.h"
>  #include "display/intel_psr.h"
> +#include "display/intel_wd.h"
>=20=20
>  #include "gt/intel_breadcrumbs.h"
>  #include "gt/intel_gt.h"
> @@ -2341,6 +2342,11 @@ gen8_de_misc_irq_handler(struct drm_i915_private *=
dev_priv, u32 iir)
>  		found =3D true;
>  	}
>=20=20
> +	if (iir & GEN8_DE_MISC_WD0) {
> +		intel_wd_handle_isr(dev_priv);
> +		found =3D true;
> +	}
> +
>  	if (iir & GEN8_DE_EDP_PSR) {
>  		struct intel_encoder *encoder;
>  		u32 psr_iir;
> @@ -3764,7 +3770,7 @@ static void gen8_de_irq_postinstall(struct drm_i915=
_private *dev_priv)
>  	u32 de_pipe_enables;
>  	u32 de_port_masked =3D gen8_de_port_aux_mask(dev_priv);
>  	u32 de_port_enables;
> -	u32 de_misc_masked =3D GEN8_DE_EDP_PSR;
> +	u32 de_misc_masked =3D GEN8_DE_EDP_PSR | GEN8_DE_MISC_WD0;
>  	u32 trans_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
>  	enum pipe pipe;
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index d4a6a9dcf182..27383aea1e1f 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -846,7 +846,8 @@ static const struct intel_device_info jsl_info =3D {
>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
>  	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
> -		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
> +		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1)| \
> +		BIT(TRANSCODER_WD_0), \
>  	.pipe_offsets =3D { \
>  		[TRANSCODER_A] =3D PIPE_A_OFFSET, \
>  		[TRANSCODER_B] =3D PIPE_B_OFFSET, \
> @@ -854,6 +855,8 @@ static const struct intel_device_info jsl_info =3D {
>  		[TRANSCODER_D] =3D PIPE_D_OFFSET, \
>  		[TRANSCODER_DSI_0] =3D PIPE_DSI0_OFFSET, \
>  		[TRANSCODER_DSI_1] =3D PIPE_DSI1_OFFSET, \
> +		[TRANSCODER_WD_0] =3D PIPE_WD0_OFFSET, \
> +		[TRANSCODER_WD_1] =3D PIPE_WD1_OFFSET, \
>  	}, \
>  	.trans_offsets =3D { \
>  		[TRANSCODER_A] =3D TRANSCODER_A_OFFSET, \
> @@ -862,6 +865,8 @@ static const struct intel_device_info jsl_info =3D {
>  		[TRANSCODER_D] =3D TRANSCODER_D_OFFSET, \
>  		[TRANSCODER_DSI_0] =3D TRANSCODER_DSI0_OFFSET, \
>  		[TRANSCODER_DSI_1] =3D TRANSCODER_DSI1_OFFSET, \
> +		[TRANSCODER_WD_0] =3D TRANSCODER_WD0_OFFSET, \
> +		[TRANSCODER_WD_1] =3D TRANSCODER_WD1_OFFSET, \
>  	}, \
>  	TGL_CURSOR_OFFSETS, \
>  	.has_global_mocs =3D 1, \
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index b8e42c55ff87..706295c5386d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4423,12 +4423,12 @@ enum {
>  #define _VSYNC_DSI1		0x6b814
>  #define _VSYNCSHIFT_DSI1	0x6b828
>=20=20
> -#define TRANSCODER_A_OFFSET 0x60000
> -#define TRANSCODER_B_OFFSET 0x61000
> -#define TRANSCODER_C_OFFSET 0x62000
> -#define CHV_TRANSCODER_C_OFFSET 0x63000
> -#define TRANSCODER_D_OFFSET 0x63000
> -#define TRANSCODER_EDP_OFFSET 0x6f000
> +#define TRANSCODER_A_OFFSET	0x60000
> +#define TRANSCODER_B_OFFSET	0x61000
> +#define TRANSCODER_C_OFFSET	0x62000
> +#define CHV_TRANSCODER_C_OFFSET	0x63000
> +#define TRANSCODER_D_OFFSET	0x63000
> +#define TRANSCODER_EDP_OFFSET	0x6f000
>  #define TRANSCODER_DSI0_OFFSET	0x6b000
>  #define TRANSCODER_DSI1_OFFSET	0x6b800
>  #define TRANSCODER_WD0_OFFSET	0x6e000
> @@ -6211,6 +6211,11 @@ enum {
>  #define PIPE_DSI0_OFFSET	0x7b000
>  #define PIPE_DSI1_OFFSET	0x7b800
>=20=20
> +/* WD 0 and 1 */
> +#define PIPE_WD0_OFFSET		0x7e000
> +#define PIPE_WD1_OFFSET		0x7d000
> +
> +
>  #define PIPECONF(pipe)		_MMIO_PIPE2(pipe, _PIPEACONF)
>  #define PIPEDSL(pipe)		_MMIO_PIPE2(pipe, _PIPEADSL)
>  #define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe, _PIPEAFRAMEHIGH)
> @@ -6866,6 +6871,10 @@ enum {
>  #define _PIPEDSI0CONF		0x7b008
>  #define _PIPEDSI1CONF		0x7b808
>=20=20
> +/* WD 0 and 1 */
> +#define _PIPEWD0CONF		0x7e008
> +#define _PIPEWD1CONF		0x7d008
> +
>  /* Sprite A control */
>  #define _DVSACNTR		0x72180
>  #define   DVS_ENABLE		(1 << 31)
> @@ -8036,6 +8045,7 @@ enum {
>  #define GEN8_DE_MISC_IER _MMIO(0x4446c)
>  #define  GEN8_DE_MISC_GSE		(1 << 27)
>  #define  GEN8_DE_EDP_PSR		(1 << 19)
> +#define  GEN8_DE_MISC_WD0		(1 << 23)
>=20=20
>  #define GEN8_PCU_ISR _MMIO(0x444e0)
>  #define GEN8_PCU_IMR _MMIO(0x444e4)
> @@ -12793,6 +12803,123 @@ enum skl_power_gate {
>  #define TGL_ROOT_DEVICE_SKU_ULX		0x2
>  #define TGL_ROOT_DEVICE_SKU_ULT		0x4
>=20=20
> +/* Gen12 WD */
> +#define _MMIO_WD(tc, wd0, wd1)		_MMIO_TRANS((tc) - TRANSCODER_WD_0, \
> +							wd0, wd1)
> +
> +/* WD transcoder control */
> +#define _WD_TRANS_FUNC_CTL_0		0x6e400
> +#define _WD_TRANS_FUNC_CTL_1		0x6ec00
> +#define WD_TRANS_FUNC_CTL(tc)		_MMIO_WD(tc,\
> +					_WD_TRANS_FUNC_CTL_0,\
> +					_WD_TRANS_FUNC_CTL_1)
> +
> +#define TRANS_WD_FUNC_ENABLE		(1 << 31)
> +#define WD_TRIGGERED_CAP_MODE_ENABLE	(1 << 30)
> +#define START_TRIGGER_FRAME		(1 << 29)
> +#define STOP_TRIGGER_FRAME		(1 << 28)
> +#define WD_CTL_POINTER_ETEH		(0 << 18)
> +#define WD_CTL_POINTER_ETDH		(1 << 18)
> +#define WD_CTL_POINTER_DTDH		(2 << 18)
> +#define WD_INPUT_SELECT_MASK		(7 << 12)
> +#define WD_INPUT_PIPE_A			(0 << 12)
> +#define WD_INPUT_PIPE_B			(5 << 12)
> +#define WD_INPUT_PIPE_C			(6 << 12)
> +#define WD_INPUT_PIPE_D			(7 << 12)
> +
> +#define WD_PIX_FMT_MASK			(0x3 << 20)
> +#define WD_PIX_FMT_YUYV			(0x1 << 20)
> +#define WD_PIX_FMT_XYUV8888		(0x2 << 20)
> +#define WD_PIX_FMT_XBGR8888		(0x3 << 20)
> +#define WD_PIX_FMT_Y410			(0x4 << 20)
> +#define WD_PIX_FMT_YUV422		(0x5 << 20)
> +#define WD_PIX_FMT_XBGR2101010		(0x6 << 20)
> +#define WD_PIX_FMT_RGB565		(0x7 << 20)
> +
> +#define WD_FRAME_NUMBER_MASK		15
> +
> +#define _WD_STRIDE_0			0x6e510
> +#define _WD_STRIDE_1			0x6ed10
> +#define WD_STRIDE(tc)			_MMIO_WD(tc,\
> +					_WD_STRIDE_0,\
> +					_WD_STRIDE_1)
> +#define WD_STRIDE_SHIFT			6
> +#define WD_STRIDE_MASK			(0x3ff << WD_STRIDE_SHIFT)
> +
> +#define _WD_STREAMCAP_CTL0		0x6e590
> +#define _WD_STREAMCAP_CTL1		0x6ed90
> +#define WD_STREAMCAP_CTL(tc)		_MMIO_WD(tc,\
> +					_WD_STREAMCAP_CTL0,\
> +					_WD_STREAMCAP_CTL1)
> +
> +#define WD_STREAM_CAP_MODE_EN		(1 << 31)
> +#define WD_STRAT_MASK			(3 << 24)
> +#define WD_SLICING_STRAT_1_1		(0 << 24)
> +#define WD_SLICING_STRAT_2_1		(1 << 24)
> +#define WD_SLICING_STRAT_4_1		(2 << 24)
> +#define WD_SLICING_STRAT_8_1		(3 << 24)
> +#define WD_STREAM_OVERRUN_STATUS	1
> +
> +#define _WD_SURF_0			0x6e514
> +#define _WD_SURF_1			0x6ed14
> +#define WD_SURF(tc)			_MMIO_WD(tc,\
> +					_WD_SURF_0,\
> +					_WD_SURF_1)
> +
> +#define _WD_IMR_0			0x6e560
> +#define _WD_IMR_1			0x6ed60
> +#define WD_IMR(tc)			_MMIO_WD(tc,\
> +					_WD_IMR_0,\
> +					_WD_IMR_1)
> +#define WD_FRAME_COMPLETE_INT		(1 << 7)
> +#define WD_GTT_FAULT_INT		(1 << 6)
> +#define WD_VBLANK_INT			(1 << 5)
> +#define WD_OVERRUN_INT			(1 << 4)
> +#define WD_CAPTURING_INT		(1 << 3)
> +#define WD_WRITE_COMPLETE_INT		(1 << 2)
> +
> +#define _WD_IIR_0			0x6e564
> +#define _WD_IIR_1			0x6ed64
> +#define WD_IIR(tc)			_MMIO_WD(tc,\
> +					_WD_IIR_0,\
> +					_WD_IIR_1)
> +
> +#define _WD_FRAME_STATUS_0		0x6e56b
> +#define _WD_FRAME_STATUS_1		0x6ed6b
> +#define WD_FRAME_STATUS(tc)		_MMIO_WD(tc,\
> +					_WD_FRAME_STATUS_0,\
> +					_WD_FRAME_STATUS_1)
> +
> +#define WD_FRAME_COMPLETE		(1 << 31)
> +#define WD_STATE_IDLE			(0 << 24)
> +#define WD_STATE_CAPSTART		(1 << 24)
> +#define WD_STATE_FRAME_START		(2 << 24)
> +#define WD_STATE_CAPACITIVE		(3 << 24)
> +#define WD_STATE_TG_DONE		(4 << 24)
> +#define WD_STATE_WDX_DONE		(5 << 24)
> +#define WD_STATE_QUICK_CAP		(6 << 24)
> +
> +#define _WD_27_M_0			0x6e524
> +#define _WD_27_M_1			0x6ed24
> +#define WD_27_M(tc)			_MMIO_WD(tc,\
> +					_WD_27_M_0,\
> +					_WD_27_M_1)
> +
> +#define _WD_27_N_0			0x6e528
> +
> +//Address looks wrong in bspec:
> +#define _WD_27_N_1			0x6ec28
> +#define WD_27_N(tc)			_MMIO_WD(tc,\
> +					_WD_27_N_0,\
> +					_WD_27_N_1)
> +
> +#define _WD_TAIL_CFG_0			0x6e520
> +#define _WD_TAIL_CFG_1			0x6ed20
> +
> +#define WD_TAIL_CFG(tc)			_MMIO_WD(tc,\
> +					_WD_TAIL_CFG_0,\
> +					_WD_TAIL_CFG_1)
> +
>  #define CLKREQ_POLICY			_MMIO(0x101038)
>  #define  CLKREQ_POLICY_MEM_UP_OVRD	REG_BIT(1)

--=20
Jani Nikula, Intel Open Source Graphics Center
