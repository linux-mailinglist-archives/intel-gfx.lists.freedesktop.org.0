Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 600B011D17E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 16:52:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A9486E184;
	Thu, 12 Dec 2019 15:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D3D6E184
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 15:52:53 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 07:52:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="208126741"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 12 Dec 2019 07:52:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Dec 2019 17:52:49 +0200
Date: Thu, 12 Dec 2019 17:52:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191212155249.GQ1208@intel.com>
References: <20191211184526.142413-1-jose.souza@intel.com>
 <20191211184526.142413-6-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211184526.142413-6-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 rebased 06/11] drm/i915/display: Share
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

On Wed, Dec 11, 2019 at 10:45:21AM -0800, Jos=E9 Roberto de Souza wrote:
> intel_connector_needs_modeset() will be used outside of
> intel_display.c in a future patch so it would only be necessary to
> remove the state and add the prototype to the header file.
> =

> But while at it, I simplified the arguments and changed to intel
> types and moved it to a better place intel_atomic.c.
> =

> That allowed us to convert the whole
> intel_encoders_update_prepare/complete to intel type too.
> =

> No behavior changes intended here.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c  | 32 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_atomic.h  |  3 ++
>  drivers/gpu/drm/i915/display/intel_display.c | 53 ++++++--------------
>  3 files changed, 51 insertions(+), 37 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index fd0026fc3618..6e93a39a6fec 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -174,6 +174,38 @@ intel_digital_connector_duplicate_state(struct drm_c=
onnector *connector)
>  	return &state->base;
>  }
>  =

> +/**
> + * intel_digital_connector_needs_modeset - check if connector needs a mo=
deset
> + */
> +bool
> +intel_digital_connector_needs_modeset(struct intel_atomic_state *state,

Why "digital"? Oh because intel_atomic_get_old_connector_state() return
a ditgital_connector_state. A bit surprising.

I suggest using just drm_connector_state here to keep this function
totally generic.

> +				      struct intel_connector *connector)
> +{
> +	struct intel_digital_connector_state *old_connector_state, *new_connect=
or_state;
> +	struct intel_crtc *old_crtc, *new_crtc;
> +	struct intel_crtc_state *new_crtc_state;
> +
> +	old_connector_state =3D intel_atomic_get_old_connector_state(state,
> +								   connector);

Could be done when declaring the variable. Dunno which is prettier
though.

> +	if (old_connector_state->base.crtc)
> +		old_crtc =3D to_intel_crtc(old_connector_state->base.crtc);
> +	else
> +		old_crtc =3D NULL;

Simple
old_crtc =3D to_intel_crtc(old_connector_state->base.crtc); =

will do. Can be done when declaring the variable as well.

> +
> +	new_connector_state =3D intel_atomic_get_new_connector_state(state,
> +								   connector);
> +	if (new_connector_state->base.crtc) {
> +		new_crtc =3D to_intel_crtc(new_connector_state->base.crtc);

ditto.

> +		new_crtc_state =3D intel_atomic_get_new_crtc_state(state, new_crtc);

Then this just becomes
if (new_crtc)
	new_crtc_state =3D ...;

Or maybe
new_crtc_state =3D new_crtc ? get : NULL;
but that could be a bit ugly.


> +	} else {
> +		new_crtc_state =3D NULL;
> +		new_crtc =3D NULL;
> +	}
> +
> +	return new_crtc !=3D old_crtc ||
> +	       (new_crtc && drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi=
));

Hmm. In fact this function could be one of those special cases where we
might even want to use all drm_ types internally since we don't actually
need anything else.

> +}
> +
>  /**
>   * intel_crtc_duplicate_state - duplicate crtc state
>   * @crtc: drm crtc
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/dr=
m/i915/display/intel_atomic.h
> index 7b49623419ba..ba9cc29a5865 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> @@ -17,6 +17,7 @@ struct drm_device;
>  struct drm_i915_private;
>  struct drm_property;
>  struct intel_atomic_state;
> +struct intel_connector;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  =

> @@ -32,6 +33,8 @@ int intel_digital_connector_atomic_check(struct drm_con=
nector *conn,
>  					 struct drm_atomic_state *state);
>  struct drm_connector_state *
>  intel_digital_connector_duplicate_state(struct drm_connector *connector);
> +bool intel_digital_connector_needs_modeset(struct intel_atomic_state *st=
ate,
> +					   struct intel_connector *connector);
>  =

>  struct drm_crtc_state *intel_crtc_duplicate_state(struct drm_crtc *crtc);
>  void intel_crtc_destroy_state(struct drm_crtc *crtc,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b4e44d3cd275..39b00a19d752 100644
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
> +		if (!intel_digital_connector_needs_modeset(state, connector))
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
> +		if (!intel_digital_connector_needs_modeset(state, connector))
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
