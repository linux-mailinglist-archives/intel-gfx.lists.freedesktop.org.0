Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E40924D7F9B
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 11:15:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CD3A10E352;
	Mon, 14 Mar 2022 10:15:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EF1E10E2E2
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 10:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647252902; x=1678788902;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=wBGuJbgvdCTVFwVC/afa1jWNb7xnpRY1ijeWAYML0cA=;
 b=DHSYwOBQhCEzze+kvfQ1IdJJdpmMLE/4ev8Bw7ThNksxyC+IFEL96zZQ
 fZ4OCnf+PKOv2MI6FYgPa9l+fbtZkbw5erRqFM1Oiu4aZjZwqJFgL2mhz
 NIuUgkzxDgMr/SQ8IPKkMkb0yQ3ag3OUpWLyKjX+uPcKr0v0oNUxDrLp3
 EseGNlxYshvXvKIBt5bbYmRvypXnmLppGKQ+p6UafWZYZ5SAW40aWmZT1
 d5toZ0XsmKzyks782EjaGAAUHmnNPTsxInEbvHEGeIplnpLk5Qfmx80Gw
 Yuy3Ot6vHx0in3VIzoQtR+vIPUqJsCXnqang8GyUIN+GOXwFNQKf6OvuJ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="316709452"
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="316709452"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 03:15:01 -0700
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="556346015"
Received: from vmanav-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.47])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 03:15:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220311172428.14685-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
 <20220311172428.14685-12-ville.syrjala@linux.intel.com>
Date: Mon, 14 Mar 2022 12:14:56 +0200
Message-ID: <87o828vo0v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 11/16] drm/i915: Eliminate the intel_dp
 dependency from DRRS
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

On Fri, 11 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The DRRS code has no use for the intel_dp, replace it with
> just a crtc pointer. This is just an intermediate step towards
> making DRRS truly per-crtc.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  8 +-
>  .../drm/i915/display/intel_display_debugfs.c  | 39 +++------
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
>  drivers/gpu/drm/i915/display/intel_drrs.c     | 80 ++++++++-----------
>  drivers/gpu/drm/i915/display/intel_drrs.h     | 12 +--
>  drivers/gpu/drm/i915/i915_drv.h               |  2 +-
>  6 files changed, 51 insertions(+), 94 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 3e6d86a54850..6660fe59e387 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2820,7 +2820,7 @@ static void intel_enable_ddi_dp(struct intel_atomic=
_state *state,
>  	if (!dig_port->lspcon.active || dig_port->dp.has_hdmi_sink)
>  		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
>=20=20
> -	intel_drrs_enable(intel_dp, crtc_state);
> +	intel_drrs_enable(crtc_state);
>=20=20
>  	if (crtc_state->has_audio)
>  		intel_audio_codec_enable(encoder, crtc_state, conn_state);
> @@ -2963,7 +2963,7 @@ static void intel_disable_ddi_dp(struct intel_atomi=
c_state *state,
>  		intel_audio_codec_disable(encoder,
>  					  old_crtc_state, old_conn_state);
>=20=20
> -	intel_drrs_disable(intel_dp, old_crtc_state);
> +	intel_drrs_disable(old_crtc_state);
>  	intel_psr_disable(intel_dp, old_crtc_state);
>  	intel_edp_backlight_off(old_conn_state);
>  	/* Disable the decompression in DP Sink */
> @@ -3013,12 +3013,10 @@ static void intel_ddi_update_pipe_dp(struct intel=
_atomic_state *state,
>  				     const struct intel_crtc_state *crtc_state,
>  				     const struct drm_connector_state *conn_state)
>  {
> -	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -
>  	intel_ddi_set_dp_msa(crtc_state, conn_state);
>=20=20
>  	intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> -	intel_drrs_update(intel_dp, crtc_state);
> +	intel_drrs_update(crtc_state);
>=20=20
>  	intel_backlight_update(state, encoder, crtc_state, conn_state);
>  	drm_connector_update_privacy_screen(conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 3edf3eb01240..219bac411cda 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1161,20 +1161,17 @@ static void drrs_status_per_crtc(struct seq_file =
*m,
>  	seq_puts(m, "\n");
>=20=20
>  	if (to_intel_crtc_state(crtc->base.state)->has_drrs) {
> -		struct intel_panel *panel;
> -
>  		mutex_lock(&drrs->mutex);
>  		/* DRRS Supported */
>  		seq_puts(m, "\tDRRS Enabled: Yes\n");
>=20=20
>  		/* disable_drrs() will make drrs->dp NULL */
> -		if (!drrs->dp) {
> +		if (!drrs->crtc) {
>  			seq_puts(m, "Idleness DRRS: Disabled\n");
>  			mutex_unlock(&drrs->mutex);
>  			return;
>  		}
>=20=20
> -		panel =3D &drrs->dp->attached_connector->panel;
>  		seq_printf(m, "\t\tBusy_frontbuffer_bits: 0x%X",
>  					drrs->busy_frontbuffer_bits);
>=20=20
> @@ -1881,9 +1878,7 @@ static int i915_drrs_ctl_set(void *data, u64 val)
>  		return -ENODEV;
>=20=20
>  	for_each_intel_crtc(dev, crtc) {
> -		struct drm_connector_list_iter conn_iter;
>  		struct intel_crtc_state *crtc_state;
> -		struct drm_connector *connector;
>  		struct drm_crtc_commit *commit;
>  		int ret;
>=20=20
> @@ -1904,30 +1899,14 @@ static int i915_drrs_ctl_set(void *data, u64 val)
>  				goto out;
>  		}
>=20=20
> -		drm_connector_list_iter_begin(dev, &conn_iter);
> -		drm_for_each_connector_iter(connector, &conn_iter) {
> -			struct intel_encoder *encoder;
> -			struct intel_dp *intel_dp;
> -
> -			if (!(crtc_state->uapi.connector_mask &
> -			      drm_connector_mask(connector)))
> -				continue;
> -
> -			encoder =3D intel_attached_encoder(to_intel_connector(connector));
> -			if (encoder->type !=3D INTEL_OUTPUT_EDP)
> -				continue;
> -
> -			drm_dbg(&dev_priv->drm,
> -				"Manually %sabling DRRS. %llu\n",
> -				val ? "en" : "dis", val);
> -
> -			intel_dp =3D enc_to_intel_dp(encoder);
> -			if (val)
> -				intel_drrs_enable(intel_dp, crtc_state);
> -			else
> -				intel_drrs_disable(intel_dp, crtc_state);
> -		}
> -		drm_connector_list_iter_end(&conn_iter);
> +		drm_dbg(&dev_priv->drm,
> +			"Manually %sabling DRRS. %llu\n",
> +			val ? "en" : "dis", val);
> +
> +		if (val)
> +			intel_drrs_enable(crtc_state);
> +		else
> +			intel_drrs_disable(crtc_state);
>=20=20
>  out:
>  		drm_modeset_unlock(&crtc->base.mutex);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 2709a8c08cee..a4e4a286230f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1899,8 +1899,8 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>=20=20
>  	intel_vrr_compute_config(pipe_config, conn_state);
>  	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> -	intel_drrs_compute_config(intel_dp, pipe_config, output_bpp,
> -				  constant_n);
> +	intel_drrs_compute_config(intel_connector, pipe_config,
> +				  output_bpp, constant_n);
>  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn=
_state);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 12ae1deea15f..12d09560bc80 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -80,11 +80,10 @@ static bool can_enable_drrs(struct intel_connector *c=
onnector,
>  }
>=20=20
>  void
> -intel_drrs_compute_config(struct intel_dp *intel_dp,
> +intel_drrs_compute_config(struct intel_connector *connector,
>  			  struct intel_crtc_state *pipe_config,
>  			  int output_bpp, bool constant_n)
>  {
> -	struct intel_connector *connector =3D intel_dp->attached_connector;
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	const struct drm_display_mode *downclock_mode =3D
>  		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
> @@ -153,10 +152,9 @@ static void intel_drrs_set_state(struct drm_i915_pri=
vate *dev_priv,
>  				 const struct intel_crtc_state *crtc_state,
>  				 enum drrs_refresh_rate refresh_rate)
>  {
> -	struct intel_dp *intel_dp =3D dev_priv->drrs.dp;
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>=20=20
> -	if (!intel_dp) {
> +	if (!dev_priv->drrs.crtc) {
>  		drm_dbg_kms(&dev_priv->drm, "DRRS not supported.\n");
>  		return;
>  	}
> @@ -193,25 +191,24 @@ static void intel_drrs_set_state(struct drm_i915_pr=
ivate *dev_priv,
>  }
>=20=20
>  static void
> -intel_drrs_enable_locked(struct intel_dp *intel_dp)
> +intel_drrs_enable_locked(struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>=20=20
>  	dev_priv->drrs.busy_frontbuffer_bits =3D 0;
> -	dev_priv->drrs.dp =3D intel_dp;
> +	dev_priv->drrs.crtc =3D crtc;
>  }
>=20=20
>  /**
>   * intel_drrs_enable - init drrs struct if supported
> - * @intel_dp: DP struct
>   * @crtc_state: A pointer to the active crtc state.
>   *
>   * Initializes frontbuffer_bits and drrs.dp
>   */
> -void intel_drrs_enable(struct intel_dp *intel_dp,
> -		       const struct intel_crtc_state *crtc_state)
> +void intel_drrs_enable(const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>=20=20
>  	if (!crtc_state->has_drrs)
>  		return;
> @@ -220,48 +217,45 @@ void intel_drrs_enable(struct intel_dp *intel_dp,
>=20=20
>  	mutex_lock(&dev_priv->drrs.mutex);
>=20=20
> -	if (dev_priv->drrs.dp) {
> +	if (dev_priv->drrs.crtc) {
>  		drm_warn(&dev_priv->drm, "DRRS already enabled\n");
>  		goto unlock;
>  	}
>=20=20
> -	intel_drrs_enable_locked(intel_dp);
> +	intel_drrs_enable_locked(crtc);
>=20=20
>  unlock:
>  	mutex_unlock(&dev_priv->drrs.mutex);
>  }
>=20=20
>  static void
> -intel_drrs_disable_locked(struct intel_dp *intel_dp,
> -			  const struct intel_crtc_state *crtc_state)
> +intel_drrs_disable_locked(const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>=20=20
>  	intel_drrs_set_state(dev_priv, crtc_state, DRRS_REFRESH_RATE_HIGH);
> -	dev_priv->drrs.dp =3D NULL;
> +	dev_priv->drrs.crtc =3D NULL;
>  }
>=20=20
>  /**
>   * intel_drrs_disable - Disable DRRS
> - * @intel_dp: DP struct
>   * @old_crtc_state: Pointer to old crtc_state.
> - *
>   */
> -void intel_drrs_disable(struct intel_dp *intel_dp,
> -			const struct intel_crtc_state *old_crtc_state)
> +void intel_drrs_disable(const struct intel_crtc_state *old_crtc_state)
>  {
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>=20=20
>  	if (!old_crtc_state->has_drrs)
>  		return;
>=20=20
>  	mutex_lock(&dev_priv->drrs.mutex);
> -	if (!dev_priv->drrs.dp) {
> +	if (dev_priv->drrs.crtc !=3D crtc) {
>  		mutex_unlock(&dev_priv->drrs.mutex);
>  		return;
>  	}
>=20=20
> -	intel_drrs_disable_locked(intel_dp, old_crtc_state);
> +	intel_drrs_disable_locked(old_crtc_state);
>  	mutex_unlock(&dev_priv->drrs.mutex);
>=20=20
>  	cancel_delayed_work_sync(&dev_priv->drrs.work);
> @@ -269,7 +263,6 @@ void intel_drrs_disable(struct intel_dp *intel_dp,
>=20=20
>  /**
>   * intel_drrs_update - Update DRRS state
> - * @intel_dp: Intel DP
>   * @crtc_state: new CRTC state
>   *
>   * This function will update DRRS states, disabling or enabling DRRS when
> @@ -277,10 +270,10 @@ void intel_drrs_disable(struct intel_dp *intel_dp,
>   * intel_drrs_enable() should be called instead.
>   */
>  void
> -intel_drrs_update(struct intel_dp *intel_dp,
> -		  const struct intel_crtc_state *crtc_state)
> +intel_drrs_update(const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>=20=20
>  	if (dev_priv->vbt.drrs_type !=3D DRRS_TYPE_SEAMLESS)
>  		return;
> @@ -288,13 +281,13 @@ intel_drrs_update(struct intel_dp *intel_dp,
>  	mutex_lock(&dev_priv->drrs.mutex);
>=20=20
>  	/* New state matches current one? */
> -	if (crtc_state->has_drrs =3D=3D !!dev_priv->drrs.dp)
> +	if (crtc_state->has_drrs =3D=3D !!dev_priv->drrs.crtc)
>  		goto unlock;
>=20=20
>  	if (crtc_state->has_drrs)
> -		intel_drrs_enable_locked(intel_dp);
> +		intel_drrs_enable_locked(crtc);
>  	else
> -		intel_drrs_disable_locked(intel_dp, crtc_state);
> +		intel_drrs_disable_locked(crtc_state);
>=20=20
>  unlock:
>  	mutex_unlock(&dev_priv->drrs.mutex);
> @@ -304,13 +297,12 @@ static void intel_drrs_downclock_work(struct work_s=
truct *work)
>  {
>  	struct drm_i915_private *dev_priv =3D
>  		container_of(work, typeof(*dev_priv), drrs.work.work);
> -	struct intel_dp *intel_dp;
> +	struct intel_crtc *crtc;
>=20=20
>  	mutex_lock(&dev_priv->drrs.mutex);
>=20=20
> -	intel_dp =3D dev_priv->drrs.dp;
> -
> -	if (!intel_dp)
> +	crtc =3D dev_priv->drrs.crtc;
> +	if (!crtc)
>  		goto unlock;
>=20=20
>  	/*
> @@ -319,9 +311,6 @@ static void intel_drrs_downclock_work(struct work_str=
uct *work)
>  	 */
>=20=20
>  	if (!dev_priv->drrs.busy_frontbuffer_bits) {
> -		struct intel_crtc *crtc =3D
> -			to_intel_crtc(dp_to_dig_port(intel_dp)->base.base.crtc);
> -
>  		intel_drrs_set_state(dev_priv, crtc->config,
>  				     DRRS_REFRESH_RATE_LOW);
>  	}
> @@ -334,9 +323,7 @@ static void intel_drrs_frontbuffer_update(struct drm_=
i915_private *dev_priv,
>  					  unsigned int frontbuffer_bits,
>  					  bool invalidate)
>  {
> -	struct intel_dp *intel_dp;
> -	struct drm_crtc *crtc;
> -	enum pipe pipe;
> +	struct intel_crtc *crtc;
>=20=20
>  	if (dev_priv->vbt.drrs_type !=3D DRRS_TYPE_SEAMLESS)
>  		return;
> @@ -345,16 +332,13 @@ static void intel_drrs_frontbuffer_update(struct dr=
m_i915_private *dev_priv,
>=20=20
>  	mutex_lock(&dev_priv->drrs.mutex);
>=20=20
> -	intel_dp =3D dev_priv->drrs.dp;
> -	if (!intel_dp) {
> +	crtc =3D dev_priv->drrs.crtc;
> +	if (!crtc) {
>  		mutex_unlock(&dev_priv->drrs.mutex);
>  		return;
>  	}
>=20=20
> -	crtc =3D dp_to_dig_port(intel_dp)->base.base.crtc;
> -	pipe =3D to_intel_crtc(crtc)->pipe;
> -
> -	frontbuffer_bits &=3D INTEL_FRONTBUFFER_ALL_MASK(pipe);
> +	frontbuffer_bits &=3D INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
>  	if (invalidate)
>  		dev_priv->drrs.busy_frontbuffer_bits |=3D frontbuffer_bits;
>  	else
> @@ -362,7 +346,7 @@ static void intel_drrs_frontbuffer_update(struct drm_=
i915_private *dev_priv,
>=20=20
>  	/* flush/invalidate means busy screen hence upclock */
>  	if (frontbuffer_bits)
> -		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
> +		intel_drrs_set_state(dev_priv, crtc->config,
>  				     DRRS_REFRESH_RATE_HIGH);
>=20=20
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/=
i915/display/intel_drrs.h
> index d3dff44dc3b1..e202e8810c12 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.h
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.h
> @@ -14,22 +14,18 @@ struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_connector;
> -struct intel_dp;
>=20=20
>  const char *intel_drrs_type_str(enum drrs_type drrs_type);
> -void intel_drrs_enable(struct intel_dp *intel_dp,
> -		       const struct intel_crtc_state *crtc_state);
> -void intel_drrs_disable(struct intel_dp *intel_dp,
> -			const struct intel_crtc_state *crtc_state);
> -void intel_drrs_update(struct intel_dp *intel_dp,
> -		       const struct intel_crtc_state *crtc_state);
> +void intel_drrs_enable(const struct intel_crtc_state *crtc_state);
> +void intel_drrs_disable(const struct intel_crtc_state *crtc_state);
> +void intel_drrs_update(const struct intel_crtc_state *crtc_state);
>  void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
>  			   unsigned int frontbuffer_bits);
>  void intel_drrs_flush(struct drm_i915_private *dev_priv,
>  		      unsigned int frontbuffer_bits);
>  void intel_drrs_page_flip(struct intel_atomic_state *state,
>  			  struct intel_crtc *crtc);
> -void intel_drrs_compute_config(struct intel_dp *intel_dp,
> +void intel_drrs_compute_config(struct intel_connector *connector,
>  			       struct intel_crtc_state *pipe_config,
>  			       int output_bpp, bool constant_n);
>  struct drm_display_mode *intel_drrs_init(struct intel_connector *connect=
or,
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 6a59fc2cb9c2..caf236c17a4a 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -210,7 +210,7 @@ enum drrs_type {
>  struct i915_drrs {
>  	struct mutex mutex;
>  	struct delayed_work work;
> -	struct intel_dp *dp;
> +	struct intel_crtc *crtc;
>  	unsigned busy_frontbuffer_bits;
>  	enum drrs_refresh_rate refresh_rate;
>  };

--=20
Jani Nikula, Intel Open Source Graphics Center
