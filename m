Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDCF2A509B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 21:01:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B78166E8F6;
	Tue,  3 Nov 2020 20:01:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57F316E8F6
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 20:01:02 +0000 (UTC)
IronPort-SDR: 1qU6Uy3eFJRC1jPIn8pZfMyj56ZHU1REsRxVReCxxw/tUVu/aKp4LgfJnNtO8ThoYG4EjVOHwC
 W/I9PKrJmPoQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="148394915"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="148394915"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 12:01:01 -0800
IronPort-SDR: 5PfUd0vYeoLjiXGSHGr9YVCAyQqPnI/1JWOV9bgVg1mFrpdqyQag4txMAZls7I8ek9Fwk+U3OJ
 dW4rehRX//ig==
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="470928481"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 12:01:00 -0800
Date: Tue, 3 Nov 2020 22:00:57 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20201103200057.GE3990501@ideak-desk.fi.intel.com>
References: <20201102221048.104294-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201102221048.104294-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Use
 initial_fastset_check() to compute and apply the initial PSR state
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 02, 2020 at 02:10:48PM -0800, Jos=E9 Roberto de Souza wrote:
> Replace the previous approach to force compute the initial PSR state
> after i915 take over from firmware by the better and recently added
> initial_fastset_check() hook.
> =

> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Looks ok to me:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c  |  1 -
>  drivers/gpu/drm/i915/display/intel_display.c |  2 -
>  drivers/gpu/drm/i915/display/intel_dp.c      |  6 +++
>  drivers/gpu/drm/i915/display/intel_psr.c     | 41 --------------------
>  drivers/gpu/drm/i915/display/intel_psr.h     |  4 --
>  drivers/gpu/drm/i915/i915_drv.h              |  1 -
>  6 files changed, 6 insertions(+), 49 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 86be032bcf96..63d8d6840655 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -133,7 +133,6 @@ int intel_digital_connector_atomic_check(struct drm_c=
onnector *conn,
>  	struct drm_crtc_state *crtc_state;
>  =

>  	intel_hdcp_atomic_check(conn, old_state, new_state);
> -	intel_psr_atomic_check(conn, old_state, new_state);
>  =

>  	if (!new_state->crtc)
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index cddbda5303ff..3c3adaee7b49 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -18373,8 +18373,6 @@ int intel_modeset_init(struct drm_i915_private *i=
915)
>  =

>  	intel_init_ipc(i915);
>  =

> -	intel_psr_set_force_mode_changed(i915->psr.dp);
> -
>  	return 0;
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index cf09aca7607b..3b0dbda5919a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3778,6 +3778,12 @@ bool intel_dp_initial_fastset_check(struct intel_e=
ncoder *encoder,
>  		return false;
>  	}
>  =

> +	if (CAN_PSR(i915) && intel_dp_is_edp(intel_dp)) {
> +		drm_dbg_kms(&i915->drm, "Forcing full modeset to compute PSR state\n");
> +		crtc_state->uapi.mode_changed =3D true;
> +		return false;
> +	}
> +
>  	return true;
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 1576c3722d0b..b3631b722de3 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1024,8 +1024,6 @@ void intel_psr_enable(struct intel_dp *intel_dp,
>  	if (!CAN_PSR(dev_priv) || dev_priv->psr.dp !=3D intel_dp)
>  		return;
>  =

> -	dev_priv->psr.force_mode_changed =3D false;
> -
>  	if (!crtc_state->has_psr)
>  		return;
>  =

> @@ -1334,8 +1332,6 @@ void intel_psr_update(struct intel_dp *intel_dp,
>  	if (!CAN_PSR(dev_priv) || READ_ONCE(psr->dp) !=3D intel_dp)
>  		return;
>  =

> -	dev_priv->psr.force_mode_changed =3D false;
> -
>  	mutex_lock(&dev_priv->psr.lock);
>  =

>  	enable =3D crtc_state->has_psr;
> @@ -1869,40 +1865,3 @@ bool intel_psr_enabled(struct intel_dp *intel_dp)
>  =

>  	return ret;
>  }
> -
> -void intel_psr_atomic_check(struct drm_connector *connector,
> -			    struct drm_connector_state *old_state,
> -			    struct drm_connector_state *new_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -	struct intel_connector *intel_connector;
> -	struct intel_digital_port *dig_port;
> -	struct drm_crtc_state *crtc_state;
> -
> -	if (!CAN_PSR(dev_priv) || !new_state->crtc ||
> -	    !dev_priv->psr.force_mode_changed)
> -		return;
> -
> -	intel_connector =3D to_intel_connector(connector);
> -	dig_port =3D enc_to_dig_port(to_intel_encoder(new_state->best_encoder));
> -	if (dev_priv->psr.dp !=3D &dig_port->dp)
> -		return;
> -
> -	crtc_state =3D drm_atomic_get_new_crtc_state(new_state->state,
> -						   new_state->crtc);
> -	crtc_state->mode_changed =3D true;
> -}
> -
> -void intel_psr_set_force_mode_changed(struct intel_dp *intel_dp)
> -{
> -	struct drm_i915_private *dev_priv;
> -
> -	if (!intel_dp)
> -		return;
> -
> -	dev_priv =3D dp_to_i915(intel_dp);
> -	if (!CAN_PSR(dev_priv) || intel_dp !=3D dev_priv->psr.dp)
> -		return;
> -
> -	dev_priv->psr.force_mode_changed =3D true;
> -}
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i=
915/display/intel_psr.h
> index 3eca9dcec3c0..0a517978e8af 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -43,10 +43,6 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp);
>  int intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_stat=
e,
>  			    u32 *out_value);
>  bool intel_psr_enabled(struct intel_dp *intel_dp);
> -void intel_psr_atomic_check(struct drm_connector *connector,
> -			    struct drm_connector_state *old_state,
> -			    struct drm_connector_state *new_state);
> -void intel_psr_set_force_mode_changed(struct intel_dp *intel_dp);
>  int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc);
>  void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state =
*crtc_state);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index bcd8650603d8..8e4a5468b1d0 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -508,7 +508,6 @@ struct i915_psr {
>  	bool dc3co_enabled;
>  	u32 dc3co_exit_delay;
>  	struct delayed_work dc3co_work;
> -	bool force_mode_changed;
>  	struct drm_dp_vsc_sdp vsc;
>  };
>  =

> -- =

> 2.29.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
