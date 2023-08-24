Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3776F786E0E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 13:35:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 862D610E520;
	Thu, 24 Aug 2023 11:35:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 887BF10E520
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 11:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692876921; x=1724412921;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Pvx7OZfj/fDmz6j6/Hgzyv63P39wMg2OR+45T2Oe8lc=;
 b=k5Qf9nbCNXGp7jvrf9Jm3myD2HZepDbwvo2qJa7p3ULQD+//n/BoEu00
 ZKBgEueNd8okOez+3WJIsceT6k7qD9xMLk8LSTwradqpHN2fbn3ieG/2x
 /aUE5vjeowESY0i2S6bvX8UMSMdW8eHI8iUqePepME3bPNiHb6jMpk5y7
 zFj/rgCQ7yEy/Mra3nPlo4zbTdVNpyJ2BqYkbUFTTRjJcvV0B0sfSpUa6
 gTHxG1oFOMK1oA3KT0UKrKV50syvZQQm6/oqCXwpcmnzcwjBFXDBluayU
 MDT5P3jeIn4mczhY+JWFCtjIo7qwoDYdLXrOH6LWJ7YHfgvkimwopJNq6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="378168515"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="378168515"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:35:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="766512155"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="766512155"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:35:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230824040952.186407-5-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230824040952.186407-1-animesh.manna@intel.com>
 <20230824040952.186407-5-animesh.manna@intel.com>
Date: Thu, 24 Aug 2023 14:35:16 +0300
Message-ID: <878ra04qrv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4 4/6] drm/i915/panelreplay: Initializaton
 and compute config for panel replay
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

On Thu, 24 Aug 2023, Animesh Manna <animesh.manna@intel.com> wrote:
> Modify existing PSR implementation to enable panel replay feature of DP 2=
.0
> which is similar to PSR feature of EDP panel. There is different DPCD
> address to check panel capability compare to PSR and vsc sdp header
> is different.
>
> v1: Initial version.
> v2:
> - Set source_panel_replay_support flag under HAS_PNEL_REPLAY() check. [Jo=
uni]
> - Code restructured around intel_panel_replay_init
> and renamed to intel_panel_replay_init_dpcd. [Jouni]
> - Remove the initial code modification around has_psr2 flag. [Jouni]
> - Add CAN_PANEL_REPLAY() in intel_encoder_can_psr which is used to
> enable in intel_psr_post_plane_update. [Jouni]
> v3:
> - Initialize both psr and panel-replay. [Jouni]
> - Initialize both panel replay and psr if detected. [Jouni]
> - Refactoring psr function by introducing _psr_compute_config(). [Jouni]
> - Add check for !is_edp while deriving source_panel_replay_support. [Joun=
i]
> - Enable panel replay dpcd initialization in a separate patch. [Jouni]
>
> v4:
> - HAS_PANEL_REPLAY() check not needed during sink capability check.[Jouni]
> - Set either panel replay source support or psr.[Jouni]
>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    | 12 ++-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 44 ++++++++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  3 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 87 +++++++++++++------
>  4 files changed, 107 insertions(+), 39 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 731f2ec04d5c..97cef458f42b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1202,6 +1202,7 @@ struct intel_crtc_state {
>  	bool has_psr2;
>  	bool enable_psr2_sel_fetch;
>  	bool req_psr2_sdp_prior_scanline;
> +	bool has_panel_replay;
>  	bool wm_level_disabled;
>  	u32 dc3co_exitline;
>  	u16 su_y_granularity;
> @@ -1693,6 +1694,8 @@ struct intel_psr {
>  	bool irq_aux_error;
>  	u16 su_w_granularity;
>  	u16 su_y_granularity;
> +	bool source_panel_replay_support;
> +	bool sink_panel_replay_support;
>  	u32 dc3co_exitline;
>  	u32 dc3co_exit_delay;
>  	struct delayed_work dc3co_work;
> @@ -1983,12 +1986,15 @@ dp_to_lspcon(struct intel_dp *intel_dp)
>  #define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
>  			   (intel_dp)->psr.source_support)
>=20=20
> +#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)->psr.sink_panel_replay_su=
pport && \
> +			  (intel_dp)->psr.source_panel_replay_support)
> +
>  static inline bool intel_encoder_can_psr(struct intel_encoder *encoder)
>  {
> -	if (!intel_encoder_is_dp(encoder))
> +	if (intel_encoder_is_dp(encoder) || (encoder->type =3D=3D INTEL_OUTPUT_=
DP_MST))
> +		return CAN_PSR(enc_to_intel_dp(encoder)) || CAN_PANEL_REPLAY(enc_to_in=
tel_dp(encoder));
> +	else
>  		return false;
> -
> -	return CAN_PSR(enc_to_intel_dp(encoder));
>  }

The whole function and macros should live in intel_psr.c as proper
functions.

>=20=20
>  static inline struct intel_digital_port *
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 7067ee3a4bd3..b3301cf0da0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2337,12 +2337,22 @@ static void intel_dp_compute_vsc_colorimetry(cons=
t struct intel_crtc_state *crtc
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>=20=20
> -	/*
> -	 * Prepare VSC Header for SU as per DP 1.4 spec, Table 2-118
> -	 * VSC SDP supporting 3D stereo, PSR2, and Pixel Encoding/
> -	 * Colorimetry Format indication.
> -	 */
> -	vsc->revision =3D 0x5;
> +	if (crtc_state->has_panel_replay) {
> +		/*
> +		 * Prepare VSC Header for SU as per DP 2.0 spec, Table 2-223
> +		 * VSC SDP supporting 3D stereo, Panel Replay, and Pixel
> +		 * Encoding/Colorimetry Format indication.
> +		 */
> +		vsc->revision =3D 0x7;
> +	} else {
> +		/*
> +		 * Prepare VSC Header for SU as per DP 1.4 spec, Table 2-118
> +		 * VSC SDP supporting 3D stereo, PSR2, and Pixel Encoding/
> +		 * Colorimetry Format indication.
> +		 */
> +		vsc->revision =3D 0x5;
> +	}
> +
>  	vsc->length =3D 0x13;
>=20=20
>  	/* DP 1.4a spec, Table 2-120 */
> @@ -2451,6 +2461,21 @@ void intel_dp_compute_psr_vsc_sdp(struct intel_dp =
*intel_dp,
>  			vsc->revision =3D 0x4;
>  			vsc->length =3D 0xe;
>  		}
> +	} else if (crtc_state->has_panel_replay) {
> +		if (intel_dp->psr.colorimetry_support &&
> +		    intel_dp_needs_vsc_sdp(crtc_state, conn_state)) {
> +			/* [Panel Replay with colorimetry info] */
> +			intel_dp_compute_vsc_colorimetry(crtc_state, conn_state,
> +							 vsc);
> +		} else {
> +			/*
> +			 * [Panel Replay without colorimetry info]
> +			 * Prepare VSC Header for SU as per DP 2.0 spec, Table 2-223
> +			 * VSC SDP supporting 3D stereo + Panel Replay.
> +			 */
> +			vsc->revision =3D 0x6;
> +			vsc->length =3D 0x10;
> +		}
>  	} else {
>  		/*
>  		 * [PSR1]
> @@ -3744,10 +3769,11 @@ static ssize_t intel_dp_vsc_sdp_pack(const struct=
 drm_dp_vsc_sdp *vsc,
>  	sdp->sdp_header.HB3 =3D vsc->length; /* Number of Valid Data Bytes */
>=20=20
>  	/*
> -	 * Only revision 0x5 supports Pixel Encoding/Colorimetry Format as
> -	 * per DP 1.4a spec.
> +	 * Other than revision 0x5 which supports Pixel Encoding/Colorimetry
> +	 * Format as per DP 1.4a spec, revision 0x7 also supports Pixel
> +	 * Encoding/Colorimetry Format as per DP 2.0 spec.
>  	 */
> -	if (vsc->revision !=3D 0x5)
> +	if (vsc->revision !=3D 0x5 || vsc->revision !=3D 0x7)
>  		goto out;
>=20=20
>  	/* VSC SDP Payload for DB16 through DB18 */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 3eb085fbc7c8..07a3ab473be2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -44,6 +44,7 @@
>  #include "intel_hdcp.h"
>  #include "intel_hotplug.h"
>  #include "skl_scaler.h"
> +#include "intel_psr.h"

Please keep these sorted.

>=20=20
>  static int intel_dp_mst_check_constraints(struct drm_i915_private *i915,=
 int bpp,
>  					  const struct drm_display_mode *adjusted_mode,
> @@ -398,6 +399,8 @@ static int intel_dp_mst_compute_config(struct intel_e=
ncoder *encoder,
>=20=20
>  	intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);
>=20=20
> +	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
> +
>  	return 0;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index b1c0494826f9..8dd61c62492d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -472,6 +472,24 @@ static void intel_dp_get_su_granularity(struct intel=
_dp *intel_dp)
>  	intel_dp->psr.su_y_granularity =3D y;
>  }
>=20=20
> +static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	u8 pr_dpcd =3D 0;
> +
> +	drm_dp_dpcd_readb(&intel_dp->aux, DP_PANEL_REPLAY_CAP, &pr_dpcd);
> +
> +	if (!(pr_dpcd & DP_PANEL_REPLAY_SUPPORT)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Panel replay is not supported by panel\n");
> +		return;
> +	}
> +
> +	drm_dbg_kms(&dev_priv->drm,
> +		    "Panel replay is supported by panel\n");
> +	intel_dp->psr.sink_panel_replay_support =3D true;

This is not eDP so clearing the cached value matters. I don't see this
cleared anywhere.

> +}
> +
>  static void _psr_init_dpcd(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *i915 =3D
> @@ -521,12 +539,13 @@ static void _psr_init_dpcd(struct intel_dp *intel_d=
p)
>=20=20
>  void intel_psr_init_dpcd(struct intel_dp *intel_dp)
>  {
> +	_panel_replay_init_dpcd(intel_dp);
> +
>  	drm_dp_dpcd_read(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
>  			 sizeof(intel_dp->psr_dpcd));
>=20=20
>  	if (intel_dp->psr_dpcd[0])
>  		_psr_init_dpcd(intel_dp);
> -	/* TODO: Add PR case here */
>=20=20
>  	if (intel_dp->psr.sink_psr2_support) {
>  		intel_dp->psr.colorimetry_support =3D
> @@ -1207,13 +1226,11 @@ static bool intel_psr2_config_valid(struct intel_=
dp *intel_dp,
>  	return false;
>  }
>=20=20
> -void intel_psr_compute_config(struct intel_dp *intel_dp,
> -			      struct intel_crtc_state *crtc_state,
> -			      struct drm_connector_state *conn_state)
> +static bool _psr_compute_config(struct intel_dp *intel_dp,
> +				struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	const struct drm_display_mode *adjusted_mode =3D
> -		&crtc_state->hw.adjusted_mode;
> +	const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjust=
ed_mode;
>  	int psr_setup_time;
>=20=20
>  	/*
> @@ -1221,10 +1238,36 @@ void intel_psr_compute_config(struct intel_dp *in=
tel_dp,
>  	 * So if VRR is enabled, do not enable PSR.
>  	 */
>  	if (crtc_state->vrr.enable)
> -		return;
> +		return false;
>=20=20
>  	if (!CAN_PSR(intel_dp))
> -		return;
> +		return false;
> +
> +	psr_setup_time =3D drm_dp_psr_setup_time(intel_dp->psr_dpcd);
> +	if (psr_setup_time < 0) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "PSR condition failed: Invalid PSR setup time (0x%02x)\n",
> +			    intel_dp->psr_dpcd[1]);
> +		return false;
> +	}
> +
> +	if (intel_usecs_to_scanlines(adjusted_mode, psr_setup_time) >
> +	    adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay - 1) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "PSR condition failed: PSR setup time (%d us) too long\n",
> +			    psr_setup_time);
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
> +void intel_psr_compute_config(struct intel_dp *intel_dp,
> +			      struct intel_crtc_state *crtc_state,
> +			      struct drm_connector_state *conn_state)
> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	const struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjust=
ed_mode;
>=20=20
>  	if (!psr_global_enabled(intel_dp)) {
>  		drm_dbg_kms(&dev_priv->drm, "PSR disabled by flag\n");
> @@ -1234,7 +1277,6 @@ void intel_psr_compute_config(struct intel_dp *inte=
l_dp,
>  	if (intel_dp->psr.sink_not_reliable) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "PSR sink implementation is not reliable\n");
> -		return;
>  	}
>=20=20
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE) {
> @@ -1243,23 +1285,11 @@ void intel_psr_compute_config(struct intel_dp *in=
tel_dp,
>  		return;
>  	}
>=20=20
> -	psr_setup_time =3D drm_dp_psr_setup_time(intel_dp->psr_dpcd);
> -	if (psr_setup_time < 0) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "PSR condition failed: Invalid PSR setup time (0x%02x)\n",
> -			    intel_dp->psr_dpcd[1]);
> -		return;
> -	}
> -
> -	if (intel_usecs_to_scanlines(adjusted_mode, psr_setup_time) >
> -	    adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay - 1) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "PSR condition failed: PSR setup time (%d us) too long\n",
> -			    psr_setup_time);
> -		return;
> -	}
> +	if (CAN_PANEL_REPLAY(intel_dp))
> +		crtc_state->has_panel_replay =3D true;
> +	else
> +		crtc_state->has_psr =3D _psr_compute_config(intel_dp, crtc_state);
>=20=20
> -	crtc_state->has_psr =3D true;
>  	crtc_state->has_psr2 =3D intel_psr2_config_valid(intel_dp, crtc_state);
>=20=20
>  	crtc_state->infoframes.enable |=3D intel_hdmi_infoframe_enable(DP_SDP_V=
SC);
> @@ -2699,7 +2729,7 @@ void intel_psr_init(struct intel_dp *intel_dp)
>  	struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>=20=20
> -	if (!HAS_PSR(dev_priv))
> +	if (!(HAS_PSR(dev_priv) || HAS_PANEL_REPLAY(dev_priv)))
>  		return;
>=20=20
>  	/*
> @@ -2717,7 +2747,10 @@ void intel_psr_init(struct intel_dp *intel_dp)
>  		return;
>  	}
>=20=20
> -	intel_dp->psr.source_support =3D true;
> +	if (HAS_PANEL_REPLAY(dev_priv) && !intel_dp_is_edp(intel_dp))
> +		intel_dp->psr.source_panel_replay_support =3D true;
> +	else
> +		intel_dp->psr.source_support =3D true;
>=20=20
>  	/* Set link_standby x link_off defaults */
>  	if (DISPLAY_VER(dev_priv) < 12)

--=20
Jani Nikula, Intel Open Source Graphics Center
