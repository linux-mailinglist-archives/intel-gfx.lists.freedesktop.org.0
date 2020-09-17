Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B5026DB78
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 14:27:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D85AA6E31D;
	Thu, 17 Sep 2020 12:27:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 134A16E31D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Sep 2020 12:27:08 +0000 (UTC)
IronPort-SDR: dPmD4PBNPibXgQs/542jtRkoOYUSJ0dXsVOsY4rv8QJUfTE8USKOopnZp7evBY59++hybxtINu
 cjUIld7JVyfA==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139188267"
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; d="scan'208";a="139188267"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 05:27:05 -0700
IronPort-SDR: l3kA5888h177FTI2FJf8p92RSm6FtOarXB1kNiN1lnzcwUHCP8PhRYMzoOEZ5YUiOS/IGaBmeT
 qN8ct04kWTvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,436,1592895600"; d="scan'208";a="344286455"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 17 Sep 2020 05:27:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Sep 2020 15:27:02 +0300
Date: Thu, 17 Sep 2020 15:27:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200917122702.GV6112@intel.com>
References: <20200916024410.9248-1-jose.souza@intel.com>
 <20200916024410.9248-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200916024410.9248-2-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Check PSR parameter
 and flag only in state compute phase
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

On Tue, Sep 15, 2020 at 07:44:10PM -0700, Jos=E9 Roberto de Souza wrote:
> Due to the debugfs flag, has_psr2 in CRTC state could have a different
> value than psr.psr2_enabled and it was causing PSR2 subfeatures(DC3CO
> and selective fetch) to be set to not a expected state.
> =

> So here only taking in consideration the parameter and debugfs flag
> when computing PSR state, this way the CRTC state will also have
> the correct state.
> =

> intel_psr_fastset_force() was already broken as
> intel_psr_compute_config() was already only enabling PSR when
> psr_global_enabled() and all other PSR requirements are met.
> So some changes was required in this function, now it iterates over
> all connectors, if it is a eDP connector and is active force a modeset
> in the CRTC driving this connector, what will cause the new PSR state
> to be set based on the debugfs flag.
> =

> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Looks sensible.
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 65 ++++++++++++++----------
>  1 file changed, 37 insertions(+), 28 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 4e09ae61d4aa..383b66d9f2f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -91,19 +91,14 @@ static bool psr_global_enabled(struct drm_i915_privat=
e *i915)
>  	}
>  }
>  =

> -static bool intel_psr2_enabled(struct drm_i915_private *dev_priv,
> -			       const struct intel_crtc_state *crtc_state)
> +static bool psr2_global_enabled(struct drm_i915_private *dev_priv)
>  {
> -	/* Cannot enable DSC and PSR2 simultaneously */
> -	drm_WARN_ON(&dev_priv->drm, crtc_state->dsc.compression_enable &&
> -		    crtc_state->has_psr2);
> -
>  	switch (dev_priv->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
>  	case I915_PSR_DEBUG_DISABLE:
>  	case I915_PSR_DEBUG_FORCE_PSR1:
>  		return false;
>  	default:
> -		return crtc_state->has_psr2;
> +		return true;
>  	}
>  }
>  =

> @@ -729,6 +724,11 @@ static bool intel_psr2_config_valid(struct intel_dp =
*intel_dp,
>  		return false;
>  	}
>  =

> +	if (!psr2_global_enabled(dev_priv)) {
> +		drm_dbg_kms(&dev_priv->drm, "PSR2 disabled by flag\n");
> +		return false;
> +	}
> +
>  	/*
>  	 * DSC and PSR2 cannot be enabled simultaneously. If a requested
>  	 * resolution requires DSC to be enabled, priority is given to DSC
> @@ -817,8 +817,11 @@ void intel_psr_compute_config(struct intel_dp *intel=
_dp,
>  	if (intel_dp !=3D dev_priv->psr.dp)
>  		return;
>  =

> -	if (!psr_global_enabled(dev_priv))
> +	if (!psr_global_enabled(dev_priv)) {
> +		drm_dbg_kms(&dev_priv->drm, "PSR disabled by flag\n");
>  		return;
> +	}
> +
>  	/*
>  	 * HSW spec explicitly says PSR is tied to port A.
>  	 * BDW+ platforms have a instance of PSR registers per transcoder but
> @@ -959,7 +962,7 @@ static void intel_psr_enable_locked(struct drm_i915_p=
rivate *dev_priv,
>  =

>  	drm_WARN_ON(&dev_priv->drm, dev_priv->psr.enabled);
>  =

> -	dev_priv->psr.psr2_enabled =3D intel_psr2_enabled(dev_priv, crtc_state);
> +	dev_priv->psr.psr2_enabled =3D crtc_state->has_psr2;
>  	dev_priv->psr.busy_frontbuffer_bits =3D 0;
>  	dev_priv->psr.pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>  	dev_priv->psr.dc3co_enabled =3D !!crtc_state->dc3co_exitline;
> @@ -1029,15 +1032,7 @@ void intel_psr_enable(struct intel_dp *intel_dp,
>  	drm_WARN_ON(&dev_priv->drm, dev_priv->drrs.dp);
>  =

>  	mutex_lock(&dev_priv->psr.lock);
> -
> -	if (!psr_global_enabled(dev_priv)) {
> -		drm_dbg_kms(&dev_priv->drm, "PSR disabled by flag\n");
> -		goto unlock;
> -	}
> -
>  	intel_psr_enable_locked(dev_priv, crtc_state, conn_state);
> -
> -unlock:
>  	mutex_unlock(&dev_priv->psr.lock);
>  }
>  =

> @@ -1222,8 +1217,8 @@ void intel_psr_update(struct intel_dp *intel_dp,
>  =

>  	mutex_lock(&dev_priv->psr.lock);
>  =

> -	enable =3D crtc_state->has_psr && psr_global_enabled(dev_priv);
> -	psr2_enable =3D intel_psr2_enabled(dev_priv, crtc_state);
> +	enable =3D crtc_state->has_psr;
> +	psr2_enable =3D crtc_state->has_psr2;
>  =

>  	if (enable =3D=3D psr->enabled && psr2_enable =3D=3D psr->psr2_enabled)=
 {
>  		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
> @@ -1320,10 +1315,11 @@ static bool __psr_wait_for_idle_locked(struct drm=
_i915_private *dev_priv)
>  =

>  static int intel_psr_fastset_force(struct drm_i915_private *dev_priv)
>  {
> +	struct drm_connector_list_iter conn_iter;
>  	struct drm_device *dev =3D &dev_priv->drm;
>  	struct drm_modeset_acquire_ctx ctx;
>  	struct drm_atomic_state *state;
> -	struct intel_crtc *crtc;
> +	struct drm_connector *conn;
>  	int err;
>  =

>  	state =3D drm_atomic_state_alloc(dev);
> @@ -1334,21 +1330,34 @@ static int intel_psr_fastset_force(struct drm_i91=
5_private *dev_priv)
>  	state->acquire_ctx =3D &ctx;
>  =

>  retry:
> -	for_each_intel_crtc(dev, crtc) {
> -		struct intel_crtc_state *crtc_state =3D
> -			intel_atomic_get_crtc_state(state, crtc);
>  =

> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	drm_for_each_connector_iter(conn, &conn_iter) {
> +		struct drm_connector_state *conn_state;
> +		struct drm_crtc_state *crtc_state;
> +
> +		if (conn->connector_type !=3D DRM_MODE_CONNECTOR_eDP)
> +			continue;
> +
> +		conn_state =3D drm_atomic_get_connector_state(state, conn);
> +		if (IS_ERR(conn_state)) {
> +			err =3D PTR_ERR(conn_state);
> +			goto error;
> +		}
> +
> +		if (!conn_state->crtc)
> +			continue;
> +
> +		crtc_state =3D drm_atomic_get_crtc_state(state, conn_state->crtc);
>  		if (IS_ERR(crtc_state)) {
>  			err =3D PTR_ERR(crtc_state);
>  			goto error;
>  		}
>  =

> -		if (crtc_state->hw.active && crtc_state->has_psr) {
> -			/* Mark mode as changed to trigger a pipe->update() */
> -			crtc_state->uapi.mode_changed =3D true;
> -			break;
> -		}
> +		/* Mark mode as changed to trigger a pipe->update() */
> +		crtc_state->mode_changed =3D true;
>  	}
> +	drm_connector_list_iter_end(&conn_iter);
>  =

>  	err =3D drm_atomic_commit(state);
>  =

> -- =

> 2.28.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
