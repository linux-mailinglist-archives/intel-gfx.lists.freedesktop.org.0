Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FCA3A12B8
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 13:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B6566E8E7;
	Wed,  9 Jun 2021 11:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B56946E8E7
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 11:27:38 +0000 (UTC)
IronPort-SDR: ZoQ/2tn4bIuLN9WKvLjbHYIoA3VOWHKwCjiG9Q9zJ7nbkeiB4UaromXj9LwcU8sI/b1eThphGC
 rn/DdjK/GsNw==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="268906653"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="268906653"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 04:27:37 -0700
IronPort-SDR: cWiEFfPdo0NjXzc7Y71H3xMsWHLTBYdFsRAi7j7hne3QXptGI19AvUQk2k/+yC28E60+adwVYu
 DJTwKTXeyx9w==
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="482347095"
Received: from akshayka-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.254.35.119])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 04:27:37 -0700
Date: Wed, 9 Jun 2021 07:27:36 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YMClqN6yizBoMnlU@intel.com>
References: <20210609085632.22026-1-ville.syrjala@linux.intel.com>
 <20210609085632.22026-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210609085632.22026-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Clean up
 intel_get_load_detect_pipe() a bit
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

On Wed, Jun 09, 2021 at 11:56:28AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Sort out the mess with the local variables in
> intel_get_load_detect_pipe(). Get rid of all aliasing pointers
> and use standard naming/types.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

nice clean up

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 41 +++++++++-----------
>  1 file changed, 19 insertions(+), 22 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 62ad4cfae073..78815a1ac0ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6473,13 +6473,11 @@ int intel_get_load_detect_pipe(struct drm_connect=
or *connector,
>  			       struct intel_load_detect_pipe *old,
>  			       struct drm_modeset_acquire_ctx *ctx)
>  {
> -	struct intel_crtc *intel_crtc;
> -	struct intel_encoder *intel_encoder =3D
> +	struct intel_encoder *encoder =3D
>  		intel_attached_encoder(to_intel_connector(connector));
> -	struct drm_crtc *possible_crtc;
> -	struct drm_encoder *encoder =3D &intel_encoder->base;
> -	struct drm_crtc *crtc =3D NULL;
> -	struct drm_device *dev =3D encoder->dev;
> +	struct intel_crtc *possible_crtc;
> +	struct intel_crtc *crtc =3D NULL;
> +	struct drm_device *dev =3D encoder->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct drm_mode_config *config =3D &dev->mode_config;
>  	struct drm_atomic_state *state =3D NULL, *restore_state =3D NULL;
> @@ -6489,7 +6487,7 @@ int intel_get_load_detect_pipe(struct drm_connector=
 *connector,
>  =

>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
>  		    connector->base.id, connector->name,
> -		    encoder->base.id, encoder->name);
> +		    encoder->base.base.id, encoder->base.name);
>  =

>  	old->restore_state =3D NULL;
>  =

> @@ -6507,9 +6505,9 @@ int intel_get_load_detect_pipe(struct drm_connector=
 *connector,
>  =

>  	/* See if we already have a CRTC for this connector */
>  	if (connector->state->crtc) {
> -		crtc =3D connector->state->crtc;
> +		crtc =3D to_intel_crtc(connector->state->crtc);
>  =

> -		ret =3D drm_modeset_lock(&crtc->mutex, ctx);
> +		ret =3D drm_modeset_lock(&crtc->base.mutex, ctx);
>  		if (ret)
>  			goto fail;
>  =

> @@ -6518,16 +6516,17 @@ int intel_get_load_detect_pipe(struct drm_connect=
or *connector,
>  	}
>  =

>  	/* Find an unused one (if possible) */
> -	for_each_crtc(dev, possible_crtc) {
> -		if (!(encoder->possible_crtcs & drm_crtc_mask(possible_crtc)))
> +	for_each_intel_crtc(dev, possible_crtc) {
> +		if (!(encoder->base.possible_crtcs &
> +		      drm_crtc_mask(&possible_crtc->base)))
>  			continue;
>  =

> -		ret =3D drm_modeset_lock(&possible_crtc->mutex, ctx);
> +		ret =3D drm_modeset_lock(&possible_crtc->base.mutex, ctx);
>  		if (ret)
>  			goto fail;
>  =

> -		if (possible_crtc->state->enable) {
> -			drm_modeset_unlock(&possible_crtc->mutex);
> +		if (possible_crtc->base.state->enable) {
> +			drm_modeset_unlock(&possible_crtc->base.mutex);
>  			continue;
>  		}
>  =

> @@ -6546,8 +6545,6 @@ int intel_get_load_detect_pipe(struct drm_connector=
 *connector,
>  	}
>  =

>  found:
> -	intel_crtc =3D to_intel_crtc(crtc);
> -
>  	state =3D drm_atomic_state_alloc(dev);
>  	restore_state =3D drm_atomic_state_alloc(dev);
>  	if (!state || !restore_state) {
> @@ -6564,11 +6561,11 @@ int intel_get_load_detect_pipe(struct drm_connect=
or *connector,
>  		goto fail;
>  	}
>  =

> -	ret =3D drm_atomic_set_crtc_for_connector(connector_state, crtc);
> +	ret =3D drm_atomic_set_crtc_for_connector(connector_state, &crtc->base);
>  	if (ret)
>  		goto fail;
>  =

> -	crtc_state =3D intel_atomic_get_crtc_state(state, intel_crtc);
> +	crtc_state =3D intel_atomic_get_crtc_state(state, crtc);
>  	if (IS_ERR(crtc_state)) {
>  		ret =3D PTR_ERR(crtc_state);
>  		goto fail;
> @@ -6581,15 +6578,15 @@ int intel_get_load_detect_pipe(struct drm_connect=
or *connector,
>  	if (ret)
>  		goto fail;
>  =

> -	ret =3D intel_modeset_disable_planes(state, crtc);
> +	ret =3D intel_modeset_disable_planes(state, &crtc->base);
>  	if (ret)
>  		goto fail;
>  =

>  	ret =3D PTR_ERR_OR_ZERO(drm_atomic_get_connector_state(restore_state, c=
onnector));
>  	if (!ret)
> -		ret =3D PTR_ERR_OR_ZERO(drm_atomic_get_crtc_state(restore_state, crtc)=
);
> +		ret =3D PTR_ERR_OR_ZERO(drm_atomic_get_crtc_state(restore_state, &crtc=
->base));
>  	if (!ret)
> -		ret =3D drm_atomic_add_affected_planes(restore_state, crtc);
> +		ret =3D drm_atomic_add_affected_planes(restore_state, &crtc->base);
>  	if (ret) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Failed to create a copy of old state to restore: %i\n",
> @@ -6608,7 +6605,7 @@ int intel_get_load_detect_pipe(struct drm_connector=
 *connector,
>  	drm_atomic_state_put(state);
>  =

>  	/* let the connector get through one full cycle before testing */
> -	intel_wait_for_vblank(dev_priv, intel_crtc->pipe);
> +	intel_wait_for_vblank(dev_priv, crtc->pipe);
>  	return true;
>  =

>  fail:
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
