Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B023A136E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 13:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 854386E1A5;
	Wed,  9 Jun 2021 11:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E5196E03B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 11:49:13 +0000 (UTC)
IronPort-SDR: CljQpX3G806WOVVysxq6mKEtC8pO/GUZuSJKQmc3koF/QxDtP7JRYr1rH5CU0ipIEtXTvU5qK/
 tKF4uGBJ6YQw==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="184743085"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="184743085"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 04:49:13 -0700
IronPort-SDR: ynF/+RtE8tru4FTm8GMVyb6MQx86tfQY4zvhn6q2MKHuiH6Y58UWOQ0cjEoWmP8fSBQhKtYZkY
 AcCHGkv2ZmMg==
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="469847316"
Received: from akshayka-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.254.35.119])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 04:49:12 -0700
Date: Wed, 9 Jun 2021 07:49:11 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YMCqt6uXs9iu0EMf@intel.com>
References: <20210609085632.22026-1-ville.syrjala@linux.intel.com>
 <20210609085632.22026-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210609085632.22026-7-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915: s/intel_crtc/crtc/
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 09, 2021 at 11:56:32AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Clear out the straggler 'intel_crtc' variables.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +-
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  8 ++--
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  6 +--
>  drivers/gpu/drm/i915/display/intel_display.c  |  6 +--
>  .../drm/i915/display/intel_display_debugfs.c  | 28 ++++++-------
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  4 +-
>  drivers/gpu/drm/i915/display/intel_fdi.c      | 20 ++++-----
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 42 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_lvds.c     |  4 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |  4 +-
>  drivers/gpu/drm/i915/display/intel_tv.c       | 13 +++---
>  drivers/gpu/drm/i915/display/skl_scaler.c     | 27 ++++++------
>  drivers/gpu/drm/i915/display/vlv_dsi.c        | 13 +++---
>  drivers/gpu/drm/i915/i915_irq.c               | 22 +++++-----
>  15 files changed, 100 insertions(+), 105 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 16812488c5dd..55ceae6a8de5 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -729,8 +729,8 @@ gen11_dsi_configure_transcoder(struct intel_encoder *=
encoder,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> -	enum pipe pipe =3D intel_crtc->pipe;
> +	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> +	enum pipe pipe =3D crtc->pipe;
>  	u32 tmp;
>  	enum port port;
>  	enum transcoder dsi_trans;
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 95ff1707b4bd..448c4d99ac35 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -163,12 +163,12 @@ static void intel_crtc_free(struct intel_crtc *crtc)
>  	kfree(crtc);
>  }
>  =

> -static void intel_crtc_destroy(struct drm_crtc *crtc)
> +static void intel_crtc_destroy(struct drm_crtc *_crtc)
>  {
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> +	struct intel_crtc *crtc =3D to_intel_crtc(_crtc);
>  =

> -	drm_crtc_cleanup(crtc);
> -	kfree(intel_crtc);
> +	drm_crtc_cleanup(&crtc->base);
> +	kfree(crtc);
>  }
>  =

>  static int intel_crtc_late_register(struct drm_crtc *crtc)
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 390869bd6b63..313fd86c827b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3577,7 +3577,7 @@ static void intel_ddi_read_func_ctl(struct intel_en=
coder *encoder,
>  				    struct intel_crtc_state *pipe_config)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> +	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	enum transcoder cpu_transcoder =3D pipe_config->cpu_transcoder;
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	u32 temp, flags =3D 0;
> @@ -3640,7 +3640,7 @@ static void intel_ddi_read_func_ctl(struct intel_en=
coder *encoder,
>  			pipe_config->output_types |=3D BIT(INTEL_OUTPUT_DP);
>  		pipe_config->lane_count =3D
>  			((temp & DDI_PORT_WIDTH_MASK) >> DDI_PORT_WIDTH_SHIFT) + 1;
> -		intel_dp_get_m_n(intel_crtc, pipe_config);
> +		intel_dp_get_m_n(crtc, pipe_config);
>  =

>  		if (DISPLAY_VER(dev_priv) >=3D 11) {
>  			i915_reg_t dp_tp_ctl =3D dp_tp_ctl_reg(encoder, pipe_config);
> @@ -3670,7 +3670,7 @@ static void intel_ddi_read_func_ctl(struct intel_en=
coder *encoder,
>  			pipe_config->mst_master_transcoder =3D
>  					REG_FIELD_GET(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, temp);
>  =

> -		intel_dp_get_m_n(intel_crtc, pipe_config);
> +		intel_dp_get_m_n(crtc, pipe_config);
>  =

>  		pipe_config->infoframes.enable |=3D
>  			intel_hdmi_infoframes_enabled(encoder, pipe_config);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 62221243fca9..bd54b99929a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2717,10 +2717,10 @@ void hsw_disable_ips(const struct intel_crtc_stat=
e *crtc_state)
>  	intel_wait_for_vblank(dev_priv, crtc->pipe);
>  }
>  =

> -static void intel_crtc_dpms_overlay_disable(struct intel_crtc *intel_crt=
c)
> +static void intel_crtc_dpms_overlay_disable(struct intel_crtc *crtc)
>  {
> -	if (intel_crtc->overlay)
> -		(void) intel_overlay_switch_off(intel_crtc->overlay);
> +	if (crtc->overlay)
> +		(void) intel_overlay_switch_off(crtc->overlay);
>  =

>  	/* Let userspace switch the overlay on again. In most cases userspace
>  	 * has to recompute where to put it anyway.
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 88bb05d5c483..c6c8f66c0176 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1225,7 +1225,7 @@ static int i915_ddb_info(struct seq_file *m, void *=
unused)
>  =

>  static void drrs_status_per_crtc(struct seq_file *m,
>  				 struct drm_device *dev,
> -				 struct intel_crtc *intel_crtc)
> +				 struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct i915_drrs *drrs =3D &dev_priv->drrs;
> @@ -1237,7 +1237,7 @@ static void drrs_status_per_crtc(struct seq_file *m,
>  	drm_for_each_connector_iter(connector, &conn_iter) {
>  		bool supported =3D false;
>  =

> -		if (connector->state->crtc !=3D &intel_crtc->base)
> +		if (connector->state->crtc !=3D &crtc->base)
>  			continue;
>  =

>  		seq_printf(m, "%s:\n", connector->name);
> @@ -1252,7 +1252,7 @@ static void drrs_status_per_crtc(struct seq_file *m,
>  =

>  	seq_puts(m, "\n");
>  =

> -	if (to_intel_crtc_state(intel_crtc->base.state)->has_drrs) {
> +	if (to_intel_crtc_state(crtc->base.state)->has_drrs) {
>  		struct intel_panel *panel;
>  =

>  		mutex_lock(&drrs->mutex);
> @@ -1298,16 +1298,16 @@ static int i915_drrs_status(struct seq_file *m, v=
oid *unused)
>  {
>  	struct drm_i915_private *dev_priv =3D node_to_i915(m->private);
>  	struct drm_device *dev =3D &dev_priv->drm;
> -	struct intel_crtc *intel_crtc;
> +	struct intel_crtc *crtc;
>  	int active_crtc_cnt =3D 0;
>  =

>  	drm_modeset_lock_all(dev);
> -	for_each_intel_crtc(dev, intel_crtc) {
> -		if (intel_crtc->base.state->active) {
> +	for_each_intel_crtc(dev, crtc) {
> +		if (crtc->base.state->active) {
>  			active_crtc_cnt++;
>  			seq_printf(m, "\nCRTC %d:  ", active_crtc_cnt);
>  =

> -			drrs_status_per_crtc(m, dev, intel_crtc);
> +			drrs_status_per_crtc(m, dev, crtc);
>  		}
>  	}
>  	drm_modeset_unlock_all(dev);
> @@ -2064,7 +2064,7 @@ i915_fifo_underrun_reset_write(struct file *filp,
>  			       size_t cnt, loff_t *ppos)
>  {
>  	struct drm_i915_private *dev_priv =3D filp->private_data;
> -	struct intel_crtc *intel_crtc;
> +	struct intel_crtc *crtc;
>  	struct drm_device *dev =3D &dev_priv->drm;
>  	int ret;
>  	bool reset;
> @@ -2076,15 +2076,15 @@ i915_fifo_underrun_reset_write(struct file *filp,
>  	if (!reset)
>  		return cnt;
>  =

> -	for_each_intel_crtc(dev, intel_crtc) {
> +	for_each_intel_crtc(dev, crtc) {
>  		struct drm_crtc_commit *commit;
>  		struct intel_crtc_state *crtc_state;
>  =

> -		ret =3D drm_modeset_lock_single_interruptible(&intel_crtc->base.mutex);
> +		ret =3D drm_modeset_lock_single_interruptible(&crtc->base.mutex);
>  		if (ret)
>  			return ret;
>  =

> -		crtc_state =3D to_intel_crtc_state(intel_crtc->base.state);
> +		crtc_state =3D to_intel_crtc_state(crtc->base.state);
>  		commit =3D crtc_state->uapi.commit;
>  		if (commit) {
>  			ret =3D wait_for_completion_interruptible(&commit->hw_done);
> @@ -2095,12 +2095,12 @@ i915_fifo_underrun_reset_write(struct file *filp,
>  		if (!ret && crtc_state->hw.active) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "Re-arming FIFO underruns on pipe %c\n",
> -				    pipe_name(intel_crtc->pipe));
> +				    pipe_name(crtc->pipe));
>  =

> -			intel_crtc_arm_fifo_underrun(intel_crtc, crtc_state);
> +			intel_crtc_arm_fifo_underrun(crtc, crtc_state);
>  		}
>  =

> -		drm_modeset_unlock(&intel_crtc->base.mutex);
> +		drm_modeset_unlock(&crtc->base.mutex);
>  =

>  		if (ret)
>  			return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 5c9222283044..9ff5420fa64c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4741,7 +4741,7 @@ static void intel_dp_set_drrs_state(struct drm_i915=
_private *dev_priv,
>  				    int refresh_rate)
>  {
>  	struct intel_dp *intel_dp =3D dev_priv->drrs.dp;
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	enum drrs_refresh_rate_type index =3D DRRS_HIGH_RR;
>  =

>  	if (refresh_rate <=3D 0) {
> @@ -4755,7 +4755,7 @@ static void intel_dp_set_drrs_state(struct drm_i915=
_private *dev_priv,
>  		return;
>  	}
>  =

> -	if (!intel_crtc) {
> +	if (!crtc) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "DRRS: intel_crtc not initialized\n");
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index b170e272bdee..70fe90beaf6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -308,9 +308,9 @@ intel_dp_mst_atomic_check(struct drm_connector *conne=
ctor,
>  	 * connector
>  	 */
>  	if (new_crtc) {
> -		struct intel_crtc *intel_crtc =3D to_intel_crtc(new_crtc);
> +		struct intel_crtc *crtc =3D to_intel_crtc(new_crtc);
>  		struct intel_crtc_state *crtc_state =3D
> -			intel_atomic_get_new_crtc_state(state, intel_crtc);
> +			intel_atomic_get_new_crtc_state(state, crtc);
>  =

>  		if (!crtc_state ||
>  		    !drm_atomic_crtc_needs_modeset(&crtc_state->uapi) ||
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i=
915/display/intel_fdi.c
> index cef1061fd6cb..97bb3edca9c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -96,10 +96,10 @@ static int ilk_check_fdi_lanes(struct drm_device *dev=
, enum pipe pipe,
>  	}
>  }
>  =

> -int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
> -				  struct intel_crtc_state *pipe_config)
> +int ilk_fdi_compute_config(struct intel_crtc *crtc,
> +			   struct intel_crtc_state *pipe_config)
>  {
> -	struct drm_device *dev =3D intel_crtc->base.dev;
> +	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *i915 =3D to_i915(dev);
>  	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjus=
ted_mode;
>  	int lane, link_bw, fdi_dotclock, ret;
> @@ -125,7 +125,7 @@ int ilk_fdi_compute_config(struct intel_crtc *intel_c=
rtc,
>  	intel_link_compute_m_n(pipe_config->pipe_bpp, lane, fdi_dotclock,
>  			       link_bw, &pipe_config->fdi_m_n, false, false);
>  =

> -	ret =3D ilk_check_fdi_lanes(dev, intel_crtc->pipe, pipe_config);
> +	ret =3D ilk_check_fdi_lanes(dev, crtc->pipe, pipe_config);
>  	if (ret =3D=3D -EDEADLK)
>  		return ret;
>  =

> @@ -691,9 +691,9 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
>  =

>  void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(intel_crtc->base.dev);
> -	enum pipe pipe =3D intel_crtc->pipe;
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
>  	i915_reg_t reg;
>  	u32 temp;
>  =

> @@ -726,11 +726,11 @@ void ilk_fdi_pll_enable(const struct intel_crtc_sta=
te *crtc_state)
>  	}
>  }
>  =

> -void ilk_fdi_pll_disable(struct intel_crtc *intel_crtc)
> +void ilk_fdi_pll_disable(struct intel_crtc *crtc)
>  {
> -	struct drm_device *dev =3D intel_crtc->base.dev;
> +	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	enum pipe pipe =3D intel_crtc->pipe;
> +	enum pipe pipe =3D crtc->pipe;
>  	i915_reg_t reg;
>  	u32 temp;
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 7e51c98c475e..852af2b23540 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -270,8 +270,8 @@ static void ibx_write_infoframe(struct intel_encoder =
*encoder,
>  {
>  	const u32 *data =3D frame;
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	i915_reg_t reg =3D TVIDEO_DIP_CTL(intel_crtc->pipe);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	i915_reg_t reg =3D TVIDEO_DIP_CTL(crtc->pipe);
>  	u32 val =3D intel_de_read(dev_priv, reg);
>  	int i;
>  =

> @@ -286,13 +286,13 @@ static void ibx_write_infoframe(struct intel_encode=
r *encoder,
>  	intel_de_write(dev_priv, reg, val);
>  =

>  	for (i =3D 0; i < len; i +=3D 4) {
> -		intel_de_write(dev_priv, TVIDEO_DIP_DATA(intel_crtc->pipe),
> +		intel_de_write(dev_priv, TVIDEO_DIP_DATA(crtc->pipe),
>  			       *data);
>  		data++;
>  	}
>  	/* Write every possible data byte to force correct ECC calculation. */
>  	for (; i < VIDEO_DIP_DATA_SIZE; i +=3D 4)
> -		intel_de_write(dev_priv, TVIDEO_DIP_DATA(intel_crtc->pipe), 0);
> +		intel_de_write(dev_priv, TVIDEO_DIP_DATA(crtc->pipe), 0);
>  =

>  	val |=3D g4x_infoframe_enable(type);
>  	val &=3D ~VIDEO_DIP_FREQ_MASK;
> @@ -349,8 +349,8 @@ static void cpt_write_infoframe(struct intel_encoder =
*encoder,
>  {
>  	const u32 *data =3D frame;
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	i915_reg_t reg =3D TVIDEO_DIP_CTL(intel_crtc->pipe);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	i915_reg_t reg =3D TVIDEO_DIP_CTL(crtc->pipe);
>  	u32 val =3D intel_de_read(dev_priv, reg);
>  	int i;
>  =

> @@ -368,13 +368,13 @@ static void cpt_write_infoframe(struct intel_encode=
r *encoder,
>  	intel_de_write(dev_priv, reg, val);
>  =

>  	for (i =3D 0; i < len; i +=3D 4) {
> -		intel_de_write(dev_priv, TVIDEO_DIP_DATA(intel_crtc->pipe),
> +		intel_de_write(dev_priv, TVIDEO_DIP_DATA(crtc->pipe),
>  			       *data);
>  		data++;
>  	}
>  	/* Write every possible data byte to force correct ECC calculation. */
>  	for (; i < VIDEO_DIP_DATA_SIZE; i +=3D 4)
> -		intel_de_write(dev_priv, TVIDEO_DIP_DATA(intel_crtc->pipe), 0);
> +		intel_de_write(dev_priv, TVIDEO_DIP_DATA(crtc->pipe), 0);
>  =

>  	val |=3D g4x_infoframe_enable(type);
>  	val &=3D ~VIDEO_DIP_FREQ_MASK;
> @@ -427,8 +427,8 @@ static void vlv_write_infoframe(struct intel_encoder =
*encoder,
>  {
>  	const u32 *data =3D frame;
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	i915_reg_t reg =3D VLV_TVIDEO_DIP_CTL(intel_crtc->pipe);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	i915_reg_t reg =3D VLV_TVIDEO_DIP_CTL(crtc->pipe);
>  	u32 val =3D intel_de_read(dev_priv, reg);
>  	int i;
>  =

> @@ -444,13 +444,13 @@ static void vlv_write_infoframe(struct intel_encode=
r *encoder,
>  =

>  	for (i =3D 0; i < len; i +=3D 4) {
>  		intel_de_write(dev_priv,
> -			       VLV_TVIDEO_DIP_DATA(intel_crtc->pipe), *data);
> +			       VLV_TVIDEO_DIP_DATA(crtc->pipe), *data);
>  		data++;
>  	}
>  	/* Write every possible data byte to force correct ECC calculation. */
>  	for (; i < VIDEO_DIP_DATA_SIZE; i +=3D 4)
>  		intel_de_write(dev_priv,
> -			       VLV_TVIDEO_DIP_DATA(intel_crtc->pipe), 0);
> +			       VLV_TVIDEO_DIP_DATA(crtc->pipe), 0);
>  =

>  	val |=3D g4x_infoframe_enable(type);
>  	val &=3D ~VIDEO_DIP_FREQ_MASK;
> @@ -1040,10 +1040,10 @@ static void ibx_set_infoframes(struct intel_encod=
er *encoder,
>  			       const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
>  	struct intel_hdmi *intel_hdmi =3D &dig_port->hdmi;
> -	i915_reg_t reg =3D TVIDEO_DIP_CTL(intel_crtc->pipe);
> +	i915_reg_t reg =3D TVIDEO_DIP_CTL(crtc->pipe);
>  	u32 val =3D intel_de_read(dev_priv, reg);
>  	u32 port =3D VIDEO_DIP_PORT(encoder->port);
>  =

> @@ -1099,9 +1099,9 @@ static void cpt_set_infoframes(struct intel_encoder=
 *encoder,
>  			       const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
> -	i915_reg_t reg =3D TVIDEO_DIP_CTL(intel_crtc->pipe);
> +	i915_reg_t reg =3D TVIDEO_DIP_CTL(crtc->pipe);
>  	u32 val =3D intel_de_read(dev_priv, reg);
>  =

>  	assert_hdmi_port_disabled(intel_hdmi);
> @@ -1148,9 +1148,9 @@ static void vlv_set_infoframes(struct intel_encoder=
 *encoder,
>  			       const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_hdmi *intel_hdmi =3D enc_to_intel_hdmi(encoder);
> -	i915_reg_t reg =3D VLV_TVIDEO_DIP_CTL(intel_crtc->pipe);
> +	i915_reg_t reg =3D VLV_TVIDEO_DIP_CTL(crtc->pipe);
>  	u32 val =3D intel_de_read(dev_priv, reg);
>  	u32 port =3D VIDEO_DIP_PORT(encoder->port);
>  =

> @@ -1465,14 +1465,12 @@ static int kbl_repositioning_enc_en_signal(struct=
 intel_connector *connector,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
>  	struct intel_digital_port *dig_port =3D intel_attached_dig_port(connect=
or);
> -	struct drm_crtc *crtc =3D connector->base.state->crtc;
> -	struct intel_crtc *intel_crtc =3D container_of(crtc,
> -						     struct intel_crtc, base);
> +	struct intel_crtc *crtc =3D to_intel_crtc(connector->base.state->crtc);
>  	u32 scanline;
>  	int ret;
>  =

>  	for (;;) {
> -		scanline =3D intel_de_read(dev_priv, PIPEDSL(intel_crtc->pipe));
> +		scanline =3D intel_de_read(dev_priv, PIPEDSL(crtc->pipe));
>  		if (scanline > 100 && scanline < 200)
>  			break;
>  		usleep_range(25, 50);
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index 7f40e9f60bc2..e0381b0fce91 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -411,12 +411,12 @@ static int intel_lvds_compute_config(struct intel_e=
ncoder *intel_encoder,
>  	struct intel_connector *intel_connector =3D
>  		lvds_encoder->attached_connector;
>  	struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjusted_mo=
de;
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> +	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	unsigned int lvds_bpp;
>  	int ret;
>  =

>  	/* Should never happen!! */
> -	if (DISPLAY_VER(dev_priv) < 4 && intel_crtc->pipe =3D=3D 0) {
> +	if (DISPLAY_VER(dev_priv) < 4 && crtc->pipe =3D=3D 0) {
>  		drm_err(&dev_priv->drm, "Can't support LVDS on pipe A\n");
>  		return -EINVAL;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index e4f91d7a5c60..6cb27599ea03 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1824,7 +1824,7 @@ static void intel_enable_sdvo(struct intel_atomic_s=
tate *state,
>  	struct drm_device *dev =3D encoder->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct intel_sdvo *intel_sdvo =3D to_sdvo(encoder);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> +	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	u32 temp;
>  	bool input1, input2;
>  	int i;
> @@ -1835,7 +1835,7 @@ static void intel_enable_sdvo(struct intel_atomic_s=
tate *state,
>  	intel_sdvo_write_sdvox(intel_sdvo, temp);
>  =

>  	for (i =3D 0; i < 2; i++)
> -		intel_wait_for_vblank(dev_priv, intel_crtc->pipe);
> +		intel_wait_for_vblank(dev_priv, crtc->pipe);
>  =

>  	success =3D intel_sdvo_get_trained_inputs(intel_sdvo, &input1, &input2);
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i9=
15/display/intel_tv.c
> index aa52af7891f0..d02f09f7e750 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -1420,7 +1420,7 @@ static void intel_tv_pre_enable(struct intel_atomic=
_state *state,
>  				const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> +	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	struct intel_tv *intel_tv =3D enc_to_tv(encoder);
>  	const struct intel_tv_connector_state *tv_conn_state =3D
>  		to_intel_tv_connector_state(conn_state);
> @@ -1466,7 +1466,7 @@ static void intel_tv_pre_enable(struct intel_atomic=
_state *state,
>  		break;
>  	}
>  =

> -	tv_ctl |=3D TV_ENC_PIPE_SEL(intel_crtc->pipe);
> +	tv_ctl |=3D TV_ENC_PIPE_SEL(crtc->pipe);
>  =

>  	switch (tv_mode->oversample) {
>  	case 8:
> @@ -1571,8 +1571,7 @@ static int
>  intel_tv_detect_type(struct intel_tv *intel_tv,
>  		      struct drm_connector *connector)
>  {
> -	struct drm_crtc *crtc =3D connector->state->crtc;
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> +	struct intel_crtc *crtc =3D to_intel_crtc(connector->state->crtc);
>  	struct drm_device *dev =3D connector->dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	u32 tv_ctl, save_tv_ctl;
> @@ -1594,7 +1593,7 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
>  	/* Poll for TV detection */
>  	tv_ctl &=3D ~(TV_ENC_ENABLE | TV_ENC_PIPE_SEL_MASK | TV_TEST_MODE_MASK);
>  	tv_ctl |=3D TV_TEST_MODE_MONITOR_DETECT;
> -	tv_ctl |=3D TV_ENC_PIPE_SEL(intel_crtc->pipe);
> +	tv_ctl |=3D TV_ENC_PIPE_SEL(crtc->pipe);
>  =

>  	tv_dac &=3D ~(TVDAC_SENSE_MASK | DAC_A_MASK | DAC_B_MASK | DAC_C_MASK);
>  	tv_dac |=3D (TVDAC_STATE_CHG_EN |
> @@ -1619,7 +1618,7 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
>  	intel_de_write(dev_priv, TV_DAC, tv_dac);
>  	intel_de_posting_read(dev_priv, TV_DAC);
>  =

> -	intel_wait_for_vblank(dev_priv, intel_crtc->pipe);
> +	intel_wait_for_vblank(dev_priv, crtc->pipe);
>  =

>  	type =3D -1;
>  	tv_dac =3D intel_de_read(dev_priv, TV_DAC);
> @@ -1652,7 +1651,7 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
>  	intel_de_posting_read(dev_priv, TV_CTL);
>  =

>  	/* For unknown reasons the hw barfs if we don't do this vblank wait. */
> -	intel_wait_for_vblank(dev_priv, intel_crtc->pipe);
> +	intel_wait_for_vblank(dev_priv, crtc->pipe);
>  =

>  	/* Restore interrupt config */
>  	if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index 394b7bbf48d8..911a113ee006 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -96,9 +96,8 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, =
bool force_detach,
>  {
>  	struct intel_crtc_scaler_state *scaler_state =3D
>  		&crtc_state->scaler_state;
> -	struct intel_crtc *intel_crtc =3D
> -		to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(intel_crtc->base.dev);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct drm_display_mode *adjusted_mode =3D
>  		&crtc_state->hw.adjusted_mode;
>  =

> @@ -141,7 +140,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state=
, bool force_detach,
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "scaler_user index %u.%u: "
>  				    "Staged freeing scaler id %d scaler_users =3D 0x%x\n",
> -				    intel_crtc->pipe, scaler_user, *scaler_id,
> +				    crtc->pipe, scaler_user, *scaler_id,
>  				    scaler_state->scaler_users);
>  			*scaler_id =3D -1;
>  		}
> @@ -167,7 +166,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state=
, bool force_detach,
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "scaler_user index %u.%u: src %ux%u dst %ux%u "
>  			    "size is out of scaler range\n",
> -			    intel_crtc->pipe, scaler_user, src_w, src_h,
> +			    crtc->pipe, scaler_user, src_w, src_h,
>  			    dst_w, dst_h);
>  		return -EINVAL;
>  	}
> @@ -176,7 +175,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state=
, bool force_detach,
>  	scaler_state->scaler_users |=3D (1 << scaler_user);
>  	drm_dbg_kms(&dev_priv->drm, "scaler_user index %u.%u: "
>  		    "staged scaling request for %ux%u->%ux%u scaler_users =3D 0x%x\n",
> -		    intel_crtc->pipe, scaler_user, src_w, src_h, dst_w, dst_h,
> +		    crtc->pipe, scaler_user, src_w, src_h, dst_w, dst_h,
>  		    scaler_state->scaler_users);
>  =

>  	return 0;
> @@ -515,17 +514,17 @@ skl_program_plane_scaler(struct intel_plane *plane,
>  			  (crtc_w << 16) | crtc_h);
>  }
>  =

> -static void skl_detach_scaler(struct intel_crtc *intel_crtc, int id)
> +static void skl_detach_scaler(struct intel_crtc *crtc, int id)
>  {
> -	struct drm_device *dev =3D intel_crtc->base.dev;
> +	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	unsigned long irqflags;
>  =

>  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  =

> -	intel_de_write_fw(dev_priv, SKL_PS_CTRL(intel_crtc->pipe, id), 0);
> -	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(intel_crtc->pipe, id), 0);
> -	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(intel_crtc->pipe, id), 0);
> +	intel_de_write_fw(dev_priv, SKL_PS_CTRL(crtc->pipe, id), 0);
> +	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(crtc->pipe, id), 0);
> +	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, id), 0);
>  =

>  	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
> @@ -535,15 +534,15 @@ static void skl_detach_scaler(struct intel_crtc *in=
tel_crtc, int id)
>   */
>  void skl_detach_scalers(const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	const struct intel_crtc_scaler_state *scaler_state =3D
>  		&crtc_state->scaler_state;
>  	int i;
>  =

>  	/* loop through and disable scalers that aren't in use */
> -	for (i =3D 0; i < intel_crtc->num_scalers; i++) {
> +	for (i =3D 0; i < crtc->num_scalers; i++) {
>  		if (!scaler_state->scalers[i].in_use)
> -			skl_detach_scaler(intel_crtc, i);
> +			skl_detach_scaler(crtc, i);
>  	}
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 084c9c43b2ed..0ee4ff341e25 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -780,10 +780,9 @@ static void intel_dsi_pre_enable(struct intel_atomic=
_state *state,
>  				 const struct drm_connector_state *conn_state)
>  {
>  	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(encoder);
> -	struct drm_crtc *crtc =3D pipe_config->uapi.crtc;
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> -	enum pipe pipe =3D intel_crtc->pipe;
> +	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
>  	enum port port;
>  	u32 val;
>  	bool glk_cold_boot =3D false;
> @@ -1389,7 +1388,7 @@ static void intel_dsi_prepare(struct intel_encoder =
*intel_encoder,
>  	struct drm_encoder *encoder =3D &intel_encoder->base;
>  	struct drm_device *dev =3D encoder->dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> +	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	struct intel_dsi *intel_dsi =3D enc_to_intel_dsi(to_intel_encoder(encod=
er));
>  	const struct drm_display_mode *adjusted_mode =3D &pipe_config->hw.adjus=
ted_mode;
>  	enum port port;
> @@ -1397,7 +1396,7 @@ static void intel_dsi_prepare(struct intel_encoder =
*intel_encoder,
>  	u32 val, tmp;
>  	u16 mode_hdisplay;
>  =

> -	drm_dbg_kms(&dev_priv->drm, "pipe %c\n", pipe_name(intel_crtc->pipe));
> +	drm_dbg_kms(&dev_priv->drm, "pipe %c\n", pipe_name(crtc->pipe));
>  =

>  	mode_hdisplay =3D adjusted_mode->crtc_hdisplay;
>  =

> @@ -1424,7 +1423,7 @@ static void intel_dsi_prepare(struct intel_encoder =
*intel_encoder,
>  			intel_de_write(dev_priv, MIPI_CTRL(port),
>  				       tmp | READ_REQUEST_PRIORITY_HIGH);
>  		} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> -			enum pipe pipe =3D intel_crtc->pipe;
> +			enum pipe pipe =3D crtc->pipe;
>  =

>  			tmp =3D intel_de_read(dev_priv, MIPI_CTRL(port));
>  			tmp &=3D ~BXT_PIPE_SELECT_MASK;
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index a11bdb667241..3cb0a65a996b 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2881,14 +2881,14 @@ static bool gen11_dsi_configure_te(struct intel_c=
rtc *intel_crtc,
>  	return true;
>  }
>  =

> -int bdw_enable_vblank(struct drm_crtc *crtc)
> +int bdw_enable_vblank(struct drm_crtc *_crtc)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> -	enum pipe pipe =3D intel_crtc->pipe;
> +	struct intel_crtc *crtc =3D to_intel_crtc(_crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
>  	unsigned long irqflags;
>  =

> -	if (gen11_dsi_configure_te(intel_crtc, true))
> +	if (gen11_dsi_configure_te(crtc, true))
>  		return 0;
>  =

>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> @@ -2899,7 +2899,7 @@ int bdw_enable_vblank(struct drm_crtc *crtc)
>  	 * PSR is active as no frames are generated, so check only for PSR.
>  	 */
>  	if (HAS_PSR(dev_priv))
> -		drm_crtc_vblank_restore(crtc);
> +		drm_crtc_vblank_restore(&crtc->base);
>  =

>  	return 0;
>  }
> @@ -2953,14 +2953,14 @@ void ilk_disable_vblank(struct drm_crtc *crtc)
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>  }
>  =

> -void bdw_disable_vblank(struct drm_crtc *crtc)
> +void bdw_disable_vblank(struct drm_crtc *_crtc)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
> -	struct intel_crtc *intel_crtc =3D to_intel_crtc(crtc);
> -	enum pipe pipe =3D intel_crtc->pipe;
> +	struct intel_crtc *crtc =3D to_intel_crtc(_crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
>  	unsigned long irqflags;
>  =

> -	if (gen11_dsi_configure_te(intel_crtc, false))
> +	if (gen11_dsi_configure_te(crtc, false))
>  		return;
>  =

>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
