Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2461B124DF1
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 17:38:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74ECD6E8FE;
	Wed, 18 Dec 2019 16:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0911E6EA3B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 16:38:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 08:38:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="298430595"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 18 Dec 2019 08:38:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2019 18:38:23 +0200
Date: Wed, 18 Dec 2019 18:38:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191218163823.GM1208@intel.com>
References: <20191216220742.34332-1-jose.souza@intel.com>
 <20191216220742.34332-6-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216220742.34332-6-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 06/11] drm/i915/display: Share
 intel_connector_needs_modeset()
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

On Mon, Dec 16, 2019 at 02:07:37PM -0800, Jos=E9 Roberto de Souza wrote:
> intel_connector_needs_modeset() will be used outside of
> intel_display.c in a future patch so it would only be necessary to
> remove the state and add the prototype to the header file.
> =

> But while at it, I simplified the arguments and moved it to a better
> place intel_atomic.c.
> =

> That allowed us to convert the whole
> intel_encoders_update_prepare/complete to intel types too.
> =

> No behavior changes intended here.
> =

> v3:
> - removed digital from exported version of intel_connector_needs_modeset
> - rollback connector to drm type
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c  | 18 +++++++
>  drivers/gpu/drm/i915/display/intel_atomic.h  |  2 +
>  drivers/gpu/drm/i915/display/intel_display.c | 53 ++++++--------------
>  3 files changed, 36 insertions(+), 37 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index fd0026fc3618..b7dda18b6f29 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -174,6 +174,24 @@ intel_digital_connector_duplicate_state(struct drm_c=
onnector *connector)
>  	return &state->base;
>  }
>  =

> +/**
> + * intel_connector_needs_modeset - check if connector needs a modeset
> + */
> +bool
> +intel_connector_needs_modeset(struct intel_atomic_state *state,
> +			      struct drm_connector *connector)
> +{
> +	const struct drm_connector_state *old_conn_state, *new_conn_state;
> +
> +	old_conn_state =3D drm_atomic_get_old_connector_state(&state->base, con=
nector);
> +	new_conn_state =3D drm_atomic_get_new_connector_state(&state->base, con=
nector);
> +
> +	return old_conn_state->crtc !=3D new_conn_state->crtc ||
> +	       (new_conn_state->crtc &&
> +		drm_atomic_crtc_needs_modeset(drm_atomic_get_new_crtc_state(&state->ba=
se,
> +									    new_conn_state->crtc)));
> +}
> +
>  /**
>   * intel_crtc_duplicate_state - duplicate crtc state
>   * @crtc: drm crtc
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/dr=
m/i915/display/intel_atomic.h
> index 7b49623419ba..a7d1a8576c48 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> @@ -32,6 +32,8 @@ int intel_digital_connector_atomic_check(struct drm_con=
nector *conn,
>  					 struct drm_atomic_state *state);
>  struct drm_connector_state *
>  intel_digital_connector_duplicate_state(struct drm_connector *connector);
> +bool intel_connector_needs_modeset(struct intel_atomic_state *state,
> +				   struct drm_connector *connector);
>  =

>  struct drm_crtc_state *intel_crtc_duplicate_state(struct drm_crtc *crtc);
>  void intel_crtc_destroy_state(struct drm_crtc *crtc,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 8e3e05cfcb27..0ee2e86a8826 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6185,71 +6185,50 @@ intel_connector_primary_encoder(struct intel_conn=
ector *connector)
>  	return encoder;
>  }
>  =

> -static bool
> -intel_connector_needs_modeset(struct intel_atomic_state *state,
> -			      const struct drm_connector_state *old_conn_state,
> -			      const struct drm_connector_state *new_conn_state)
> -{
> -	struct intel_crtc *old_crtc =3D old_conn_state->crtc ?
> -				      to_intel_crtc(old_conn_state->crtc) : NULL;
> -	struct intel_crtc *new_crtc =3D new_conn_state->crtc ?
> -				      to_intel_crtc(new_conn_state->crtc) : NULL;
> -
> -	return new_crtc !=3D old_crtc ||
> -	       (new_crtc &&
> -		needs_modeset(intel_atomic_get_new_crtc_state(state, new_crtc)));
> -}
> -
>  static void intel_encoders_update_prepare(struct intel_atomic_state *sta=
te)
>  {
> -	struct drm_connector_state *old_conn_state;
> -	struct drm_connector_state *new_conn_state;
> -	struct drm_connector *conn;
> +	struct intel_digital_connector_state *new_connector_state;
> +	struct intel_connector *connector;

Not sure why we changed the types here. I suppose it works if we're
careful in what we access in the connector state, but IIRC not
all connectors use intel_digital_connector_state so this could
potetially trip someone up in the future. So I'd leave these alone.

The movement of the function itself is
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>


>  	int i;
>  =

> -	for_each_oldnew_connector_in_state(&state->base, conn,
> -					   old_conn_state, new_conn_state, i) {
> +	for_each_new_intel_connector_in_state(state, connector,
> +					      new_connector_state, i) {
>  		struct intel_encoder *encoder;
>  		struct intel_crtc *crtc;
>  =

> -		if (!intel_connector_needs_modeset(state,
> -						   old_conn_state,
> -						   new_conn_state))
> +		if (!intel_connector_needs_modeset(state, &connector->base))
>  			continue;
>  =

> -		encoder =3D intel_connector_primary_encoder(to_intel_connector(conn));
> +		encoder =3D intel_connector_primary_encoder(connector);
>  		if (!encoder->update_prepare)
>  			continue;
>  =

> -		crtc =3D new_conn_state->crtc ?
> -			to_intel_crtc(new_conn_state->crtc) : NULL;
> +		crtc =3D new_connector_state->base.crtc ?
> +			to_intel_crtc(new_connector_state->base.crtc) : NULL;
>  		encoder->update_prepare(state, encoder, crtc);
>  	}
>  }
>  =

>  static void intel_encoders_update_complete(struct intel_atomic_state *st=
ate)
>  {
> -	struct drm_connector_state *old_conn_state;
> -	struct drm_connector_state *new_conn_state;
> -	struct drm_connector *conn;
> +	struct intel_digital_connector_state *new_connector_state;
> +	struct intel_connector *connector;
>  	int i;
>  =

> -	for_each_oldnew_connector_in_state(&state->base, conn,
> -					   old_conn_state, new_conn_state, i) {
> +	for_each_new_intel_connector_in_state(state, connector,
> +					      new_connector_state, i) {
>  		struct intel_encoder *encoder;
>  		struct intel_crtc *crtc;
>  =

> -		if (!intel_connector_needs_modeset(state,
> -						   old_conn_state,
> -						   new_conn_state))
> +		if (!intel_connector_needs_modeset(state, &connector->base))
>  			continue;
>  =

> -		encoder =3D intel_connector_primary_encoder(to_intel_connector(conn));
> +		encoder =3D intel_connector_primary_encoder(connector);
>  		if (!encoder->update_complete)
>  			continue;
>  =

> -		crtc =3D new_conn_state->crtc ?
> -			to_intel_crtc(new_conn_state->crtc) : NULL;
> +		crtc =3D new_connector_state->base.crtc ?
> +			to_intel_crtc(new_connector_state->base.crtc) : NULL;
>  		encoder->update_complete(state, encoder, crtc);
>  	}
>  }
> -- =

> 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
