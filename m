Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2214720F871
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 17:33:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828A16E34A;
	Tue, 30 Jun 2020 15:33:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D7AC6E34A
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 15:33:45 +0000 (UTC)
IronPort-SDR: HET9MdvbbX81pkQtKjgmkvtojKGL57n13joxzMBsKfL9d4ZuDHd11we42stK9gg0x2cICHlpDF
 2Nhh76wpA6Vw==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="143762556"
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="143762556"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 08:33:44 -0700
IronPort-SDR: 3pAbNyHxN2HI0NlRPO5MRn8Zyp966CSlIrQee3tPGLQrm7I3LsG4dwwzHld/H7GRXT8uS6rxrn
 NQ4etCUvr/ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="386727830"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 30 Jun 2020 08:33:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Jun 2020 18:33:41 +0300
Date: Tue, 30 Jun 2020 18:33:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200630153341.GL6112@intel.com>
References: <20200626010151.221388-1-jose.souza@intel.com>
 <20200626010151.221388-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200626010151.221388-4-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 4/5] drm/i915: Initial implementation of
 PSR2 selective fetch
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 25, 2020 at 06:01:50PM -0700, Jos=E9 Roberto de Souza wrote:
> All GEN12 platforms supports PSR2 selective fetch but not all GEN12
> platforms supports PSR2 hardware tracking(aka RKL).
> =

> This feature consists in software programming registers with the
> damaged area of each plane this way hardware will only fetch from
> memory those areas and sent the PSR2 selective update blocks to panel,
> saving even more power.
> =

> But as initial step it is only enabling the full frame fetch at
> every flip, the actual selective fetch part will come in a future
> patch.
> =

> Also this is only handling the page flip side, it is still completely
> missing frontbuffer modifications, that is why the
> enable_psr2_sel_fetch parameter was added.
> =

> BSpec: 55229
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  3 +
>  .../drm/i915/display/intel_display_debugfs.c  |  3 +
>  .../drm/i915/display/intel_display_types.h    |  3 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 95 ++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_psr.h      |  5 +
>  drivers/gpu/drm/i915/i915_drv.h               |  2 +
>  drivers/gpu/drm/i915/i915_params.c            |  5 +
>  drivers/gpu/drm/i915/i915_params.h            |  1 +
>  8 files changed, 103 insertions(+), 14 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b66008b80589..eb3a4f317b01 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15114,6 +15114,8 @@ static void commit_pipe_config(struct intel_atomi=
c_state *state,
>  =

>  		if (new_crtc_state->update_pipe)
>  			intel_pipe_fastset(old_crtc_state, new_crtc_state);
> +
> +		intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
>  	}
>  =

>  	if (dev_priv->display.atomic_update_watermarks)
> @@ -15155,6 +15157,7 @@ static void intel_update_crtc(struct intel_atomic=
_state *state,
>  			intel_color_load_luts(new_crtc_state);
>  =

>  		intel_pre_plane_update(state, crtc);
> +		intel_psr2_sel_fetch_update(state, crtc);

You seem to be modifying the crtc state here. No good. Ideally the state
should be const for the whole programming step.

>  =

>  		if (new_crtc_state->update_pipe)
>  			intel_encoders_update_pipe(state, crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index d1cb48b3f462..4c9591f7ed92 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -417,6 +417,9 @@ static int i915_edp_psr_status(struct seq_file *m, vo=
id *data)
>  			su_blocks =3D su_blocks >> PSR2_SU_STATUS_SHIFT(frame);
>  			seq_printf(m, "%d\t%d\n", frame, su_blocks);
>  		}
> +
> +		seq_printf(m, "PSR2 selective fetch: %s\n",
> +			   enableddisabled(psr->psr2_sel_fetch_enabled));
>  	}
>  =

>  unlock:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 4b0aaa3081c9..44c98ae3964e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -931,6 +931,7 @@ struct intel_crtc_state {
>  =

>  	bool has_psr;
>  	bool has_psr2;
> +	bool enable_psr2_sel_fetch;
>  	u32 dc3co_exitline;
>  =

>  	/*
> @@ -1073,6 +1074,8 @@ struct intel_crtc_state {
>  =

>  	/* For DSB related info */
>  	struct intel_dsb *dsb;
> +
> +	u32 psr2_man_track_ctl;
>  };
>  =

>  enum intel_pipe_crc_source {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 611cb8d74811..078987a878b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -553,6 +553,14 @@ static void hsw_activate_psr2(struct intel_dp *intel=
_dp)
>  		val |=3D EDP_PSR2_FAST_WAKE(7);
>  	}
>  =

> +	if (dev_priv->psr.psr2_sel_fetch_enabled)
> +		intel_de_write(dev_priv,
> +			       PSR2_MAN_TRK_CTL(dev_priv->psr.transcoder),
> +			       PSR2_MAN_TRK_CTL_ENABLE);
> +	else if (HAS_PSR2_SEL_FETCH(dev_priv))
> +		intel_de_write(dev_priv,
> +			       PSR2_MAN_TRK_CTL(dev_priv->psr.transcoder), 0);
> +
>  	/*
>  	 * PSR2 HW is incorrectly using EDP_PSR_TP1_TP3_SEL and BSpec is
>  	 * recommending keep this bit unset while PSR2 is enabled.
> @@ -663,6 +671,38 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *i=
ntel_dp,
>  	crtc_state->dc3co_exitline =3D crtc_vdisplay - exit_scanlines;
>  }
>  =

> +static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
> +					      struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state->=
uapi.state);
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_plane_state *plane_state;
> +	struct intel_plane *plane;
> +	int i;
> +
> +	if (!dev_priv->params.enable_psr2_sel_fetch) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "PSR2 sel fetch not enabled, disabled by parameter\n");
> +		return false;
> +	}
> +
> +	if (crtc_state->uapi.async_flip) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "PSR2 sel fetch not enabled, async flip enabled\n");
> +		return false;
> +	}
> +
> +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> +		if (plane_state->uapi.rotation !=3D DRM_MODE_ROTATE_0) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "PSR2 sel fetch not enabled, plane rotated\n");
> +			return false;
> +		}
> +	}
> +
> +	return crtc_state->enable_psr2_sel_fetch =3D true;
> +}
> +
>  static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  				    struct intel_crtc_state *crtc_state)
>  {
> @@ -732,22 +772,17 @@ static bool intel_psr2_config_valid(struct intel_dp=
 *intel_dp,
>  		return false;
>  	}
>  =

> -	/*
> -	 * Some platforms lack PSR2 HW tracking and instead require manual
> -	 * tracking by software.  In this case, the driver is required to track
> -	 * the areas that need updates and program hardware to send selective
> -	 * updates.
> -	 *
> -	 * So until the software tracking is implemented, PSR2 needs to be
> -	 * disabled for platforms without PSR2 HW tracking.
> -	 */
> -	if (!HAS_PSR_HW_TRACKING(dev_priv)) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "No PSR2 HW tracking in the platform\n");
> -		return false;
> +	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
> +		if (!intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
> +		    !HAS_PSR_HW_TRACKING(dev_priv)) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "PSR2 not enabled, selective fetch not valid and no HW tracking =
available\n");
> +			return false;
> +		}
>  	}
>  =

> -	if (crtc_hdisplay > psr_max_h || crtc_vdisplay > psr_max_v) {
> +	if (!crtc_state->enable_psr2_sel_fetch &&
> +	    (crtc_hdisplay > psr_max_h || crtc_vdisplay > psr_max_v)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "PSR2 not enabled, resolution %dx%d > max supported %dx%d\n",
>  			    crtc_hdisplay, crtc_vdisplay,
> @@ -898,6 +933,11 @@ static void intel_psr_enable_source(struct intel_dp =
*intel_dp,
>  		val |=3D EXITLINE_ENABLE;
>  		intel_de_write(dev_priv, EXITLINE(cpu_transcoder), val);
>  	}
> +
> +	if (HAS_PSR_HW_TRACKING(dev_priv))
> +		intel_de_rmw(dev_priv, CHICKEN_PAR1_1, IGNORE_PSR2_HW_TRACKING,
> +			     dev_priv->psr.psr2_sel_fetch_enabled ?
> +			     IGNORE_PSR2_HW_TRACKING : 0);
>  }
>  =

>  static void intel_psr_enable_locked(struct drm_i915_private *dev_priv,
> @@ -919,6 +959,7 @@ static void intel_psr_enable_locked(struct drm_i915_p=
rivate *dev_priv,
>  	/* DC5/DC6 requires at least 6 idle frames */
>  	val =3D usecs_to_jiffies(intel_get_frame_time_us(crtc_state) * 6);
>  	dev_priv->psr.dc3co_exit_delay =3D val;
> +	dev_priv->psr.psr2_sel_fetch_enabled =3D crtc_state->enable_psr2_sel_fe=
tch;
>  =

>  	/*
>  	 * If a PSR error happened and the driver is reloaded, the EDP_PSR_IIR
> @@ -1115,6 +1156,32 @@ static void psr_force_hw_tracking_exit(struct drm_=
i915_private *dev_priv)
>  		intel_psr_exit(dev_priv);
>  }
>  =

> +void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state =
*crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct i915_psr *psr =3D &dev_priv->psr;
> +
> +	if (!HAS_PSR2_SEL_FETCH(dev_priv) ||
> +	    !crtc_state->enable_psr2_sel_fetch)
> +		return;
> +
> +	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(psr->transcoder),
> +		       crtc_state->psr2_man_track_ctl);
> +}
> +
> +void intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> +				 struct intel_crtc *crtc)
> +{
> +	struct intel_crtc_state *crtc_state =3D intel_atomic_get_new_crtc_state=
(state, crtc);
> +
> +	if (!crtc_state->enable_psr2_sel_fetch)
> +		return;
> +
> +	crtc_state->psr2_man_track_ctl =3D PSR2_MAN_TRK_CTL_ENABLE |
> +					 PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
> +}
> +
>  /**
>   * intel_psr_update - Update PSR state
>   * @intel_dp: Intel DP
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i=
915/display/intel_psr.h
> index b4515186d5f4..6a83c8e682e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -13,6 +13,8 @@ struct drm_connector_state;
>  struct drm_i915_private;
>  struct intel_crtc_state;
>  struct intel_dp;
> +struct intel_crtc;
> +struct intel_atomic_state;
>  =

>  #define CAN_PSR(dev_priv) (HAS_PSR(dev_priv) && dev_priv->psr.sink_suppo=
rt)
>  void intel_psr_init_dpcd(struct intel_dp *intel_dp);
> @@ -43,5 +45,8 @@ void intel_psr_atomic_check(struct drm_connector *conne=
ctor,
>  			    struct drm_connector_state *old_state,
>  			    struct drm_connector_state *new_state);
>  void intel_psr_set_force_mode_changed(struct intel_dp *intel_dp);
> +void intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> +				 struct intel_crtc *crtc);
> +void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state =
*crtc_state);
>  =

>  #endif /* __INTEL_PSR_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 9aad3ec979bd..038bd57e429e 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -503,6 +503,7 @@ struct i915_psr {
>  	bool link_standby;
>  	bool colorimetry_support;
>  	bool psr2_enabled;
> +	bool psr2_sel_fetch_enabled;
>  	u8 sink_sync_latency;
>  	ktime_t last_entry_attempt;
>  	ktime_t last_exit;
> @@ -1651,6 +1652,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
>  #define HAS_PSR_HW_TRACKING(dev_priv) \
>  	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
> +#define HAS_PSR2_SEL_FETCH(dev_priv)	 (INTEL_GEN(dev_priv) >=3D 12)
>  #define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->cpu_tra=
nscoder_mask & BIT(trans)) !=3D 0)
>  =

>  #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i9=
15_params.c
> index a7b61e6ec508..da686f8bcb09 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -102,6 +102,11 @@ i915_param_named(psr_safest_params, bool, 0400,
>  	"is helpfull to detect if PSR issues are related to bad values set in "
>  	" VBT. (0=3Duse VBT paramters, 1=3Duse safest parameters)");
>  =

> +i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
> +	"Enable PSR2 selective fetch "
> +	"(0=3Ddisabled, 1=3Denabled) "
> +	"Default: 0");
> +
>  i915_param_named_unsafe(force_probe, charp, 0400,
>  	"Force probe the driver for specified devices. "
>  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i9=
15_params.h
> index 53fb5ba8fbed..330c03e2b4f7 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -54,6 +54,7 @@ struct drm_printer;
>  	param(int, enable_fbc, -1, 0600) \
>  	param(int, enable_psr, -1, 0600) \
>  	param(bool, psr_safest_params, false, 0600) \
> +	param(bool, enable_psr2_sel_fetch, false, 0600) \
>  	param(int, disable_power_well, -1, 0400) \
>  	param(int, enable_ips, 1, 0600) \
>  	param(int, invert_brightness, 0, 0600) \
> -- =

> 2.27.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
