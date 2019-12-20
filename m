Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5031127F7D
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 16:39:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82B906EC63;
	Fri, 20 Dec 2019 15:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D866EC63
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 15:38:58 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 07:38:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="206573230"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 20 Dec 2019 07:38:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Dec 2019 17:38:54 +0200
Date: Fri, 20 Dec 2019 17:38:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191220153854.GN1208@intel.com>
References: <20191220152954.83276-1-jose.souza@intel.com>
 <20191220152954.83276-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220152954.83276-2-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v5 2/7] drm/i915/display: Share
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 20, 2019 at 07:29:49AM -0800, Jos=E9 Roberto de Souza wrote:
> intel_connector_needs_modeset() will be used outside of
> intel_display.c in a future patch so it would only be necessary to
> remove the state and add the prototype to the header file.
> =

> But while at it, I simplified the arguments and moved it to a better
> place intel_atomic.c.
> =

> No behavior changes intended here.
> =

> v3:
> - removed digital from exported version of intel_connector_needs_modeset
> - rollback connector to drm type
> =

> v4:
> - Renamed new_connector_state to new_conn_state
> - Going back to drm_connector_state in
> intel_encoders_update_prepare/complete as we also have
> intel_tv_connector_state
> =

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c  | 18 ++++++++
>  drivers/gpu/drm/i915/display/intel_atomic.h  |  2 +
>  drivers/gpu/drm/i915/display/intel_display.c | 45 ++++++--------------
>  3 files changed, 34 insertions(+), 31 deletions(-)
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
> index 0ef950203d88..fc77829ea958 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6166,39 +6166,23 @@ intel_connector_primary_encoder(struct intel_conn=
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
>  	struct drm_connector_state *new_conn_state;
> -	struct drm_connector *conn;
> +	struct drm_connector *connector;
>  	int i;
>  =

> -	for_each_oldnew_connector_in_state(&state->base, conn,
> -					   old_conn_state, new_conn_state, i) {
> +	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
> +					i) {
> +		struct intel_connector *intel_connector;
>  		struct intel_encoder *encoder;
>  		struct intel_crtc *crtc;
>  =

> -		if (!intel_connector_needs_modeset(state,
> -						   old_conn_state,
> -						   new_conn_state))
> +		if (!intel_connector_needs_modeset(state, connector))
>  			continue;
>  =

> -		encoder =3D intel_connector_primary_encoder(to_intel_connector(conn));
> +		intel_connector =3D to_intel_connector(connector);
> +		encoder =3D intel_connector_primary_encoder(intel_connector);
>  		if (!encoder->update_prepare)
>  			continue;
>  =

> @@ -6210,22 +6194,21 @@ static void intel_encoders_update_prepare(struct =
intel_atomic_state *state)
>  =

>  static void intel_encoders_update_complete(struct intel_atomic_state *st=
ate)
>  {
> -	struct drm_connector_state *old_conn_state;
>  	struct drm_connector_state *new_conn_state;
> -	struct drm_connector *conn;
> +	struct drm_connector *connector;
>  	int i;
>  =

> -	for_each_oldnew_connector_in_state(&state->base, conn,
> -					   old_conn_state, new_conn_state, i) {
> +	for_each_new_connector_in_state(&state->base, connector, new_conn_state,
> +					i) {
> +		struct intel_connector *intel_connector;
>  		struct intel_encoder *encoder;
>  		struct intel_crtc *crtc;
>  =

> -		if (!intel_connector_needs_modeset(state,
> -						   old_conn_state,
> -						   new_conn_state))
> +		if (!intel_connector_needs_modeset(state, connector))
>  			continue;
>  =

> -		encoder =3D intel_connector_primary_encoder(to_intel_connector(conn));
> +		intel_connector =3D to_intel_connector(connector);
> +		encoder =3D intel_connector_primary_encoder(intel_connector);
>  		if (!encoder->update_complete)
>  			continue;
>  =

> -- =

> 2.24.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
