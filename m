Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2293C6147FD
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 11:55:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 441DE10E213;
	Tue,  1 Nov 2022 10:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE9BA10E213
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 10:55:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667300104; x=1698836104;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=0dQ3mYF0uO9p8glRzU7tPIqSTgLNmDgicXjgUXywytw=;
 b=NvJlSQ4Ek+kRKPqlcm51yy6IsNCN8s9ITIAoB6wU7DpL2wIfVsFHEBp/
 RzcuHKpen+R3qtdNzkNdUjkp1+hdlY472AmzQs5avAhaYJZOZYBRtsCw0
 GjxE6jgtfmiEWYew82lqgUqZSc+EMaMb3gOnISb9coYazPRGxjYPIZCEe
 U8HD36a6ZoACQJ7OO+u4OGSbmnv3C+RYbMpUyy3aWMo1F/9L2HMuvfMq0
 QnGeoQpjEzDc25neRxEqdicRbhT/g3KwqMliathLe8sGBdzsWJfCEMyta
 G8eYyoX2HNUxJVaIPM7IbgOO9IVwt5kszm4cSWUwWJBJnitiwTFqsFfCM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="373325201"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="373325201"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 03:55:04 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="808868554"
X-IronPort-AV: E=Sophos;i="5.95,230,1661842800"; d="scan'208";a="808868554"
Received: from rsimofi-mobl.ger.corp.intel.com (HELO localhost) ([10.252.30.2])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 03:55:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221031214037.1636-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221031214037.1636-1-ville.syrjala@linux.intel.com>
 <20221031214037.1636-2-ville.syrjala@linux.intel.com>
Date: Tue, 01 Nov 2022 12:55:00 +0200
Message-ID: <87fsf37xmj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Switch
 intel_connector_needs_modeset() to drm types
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

On Mon, 31 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_connector_needs_modeset() currently uses a mix of drm_
> and intel_ types. But it doesn't actually need anything from
> the intel_ stuff, so seems better to switch the whole thing
> over to the drm_ types. Should help anyone who wants to steal
> it as well :)

I kind of get the point, but it goes against what we tell everyone to
do. :(

OTOH if this were drm_connector_needs_modeset() somewhere in drm, it
would be a whole different matter.


BR,
Jani.



>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c  | 11 +++++------
>  drivers/gpu/drm/i915/display/intel_atomic.h  |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c |  4 ++--
>  drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  2 +-
>  5 files changed, 10 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 6621aa245caf..f3fe2889bde3 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -175,18 +175,17 @@ intel_digital_connector_duplicate_state(struct drm_=
connector *connector)
>   * @connector: the connector
>   */
>  bool
> -intel_connector_needs_modeset(struct intel_atomic_state *state,
> +intel_connector_needs_modeset(struct drm_atomic_state *state,
>  			      struct drm_connector *connector)
>  {
>  	const struct drm_connector_state *old_conn_state, *new_conn_state;
>=20=20
> -	old_conn_state =3D drm_atomic_get_old_connector_state(&state->base, con=
nector);
> -	new_conn_state =3D drm_atomic_get_new_connector_state(&state->base, con=
nector);
> +	old_conn_state =3D drm_atomic_get_old_connector_state(state, connector);
> +	new_conn_state =3D drm_atomic_get_new_connector_state(state, connector);
>=20=20
>  	return old_conn_state->crtc !=3D new_conn_state->crtc ||
> -	       (new_conn_state->crtc &&
> -		drm_atomic_crtc_needs_modeset(drm_atomic_get_new_crtc_state(&state->ba=
se,
> -									    new_conn_state->crtc)));
> +		(new_conn_state->crtc &&
> +		 drm_atomic_crtc_needs_modeset(drm_atomic_get_new_crtc_state(state, ne=
w_conn_state->crtc)));
>  }
>=20=20
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/dr=
m/i915/display/intel_atomic.h
> index 1dc439983dd9..8829b6f58aee 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> @@ -33,7 +33,7 @@ int intel_digital_connector_atomic_check(struct drm_con=
nector *conn,
>  					 struct drm_atomic_state *state);
>  struct drm_connector_state *
>  intel_digital_connector_duplicate_state(struct drm_connector *connector);
> -bool intel_connector_needs_modeset(struct intel_atomic_state *state,
> +bool intel_connector_needs_modeset(struct drm_atomic_state *state,
>  				   struct drm_connector *connector);
>  bool intel_any_crtc_needs_modeset(struct intel_atomic_state *state);
>  struct intel_digital_connector_state *
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 2d91c59a827d..1a16625ce058 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1517,7 +1517,7 @@ static void intel_encoders_update_prepare(struct in=
tel_atomic_state *state)
>  		struct intel_encoder *encoder;
>  		struct intel_crtc *crtc;
>=20=20
> -		if (!intel_connector_needs_modeset(state, connector))
> +		if (!intel_connector_needs_modeset(&state->base, connector))
>  			continue;
>=20=20
>  		intel_connector =3D to_intel_connector(connector);
> @@ -1546,7 +1546,7 @@ static void intel_encoders_update_complete(struct i=
ntel_atomic_state *state)
>  		struct intel_encoder *encoder;
>  		struct intel_crtc *crtc;
>=20=20
> -		if (!intel_connector_needs_modeset(state, connector))
> +		if (!intel_connector_needs_modeset(&state->base, connector))
>  			continue;
>=20=20
>  		intel_connector =3D to_intel_connector(connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 7400d6b4c587..7c740463e9b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5028,7 +5028,7 @@ static int intel_dp_connector_atomic_check(struct d=
rm_connector *conn,
>  	if (DISPLAY_VER(dev_priv) < 9)
>  		return 0;
>=20=20
> -	if (!intel_connector_needs_modeset(state, conn))
> +	if (!intel_connector_needs_modeset(&state->base, conn))
>  		return 0;
>=20=20
>  	if (conn->has_tile) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index cd4e61026d98..1220776eafc3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -269,7 +269,7 @@ intel_dp_mst_atomic_master_trans_check(struct intel_c=
onnector *connector,
>  	if (DISPLAY_VER(dev_priv) < 12)
>  		return  0;
>=20=20
> -	if (!intel_connector_needs_modeset(state, &connector->base))
> +	if (!intel_connector_needs_modeset(&state->base, &connector->base))
>  		return 0;
>=20=20
>  	drm_connector_list_iter_begin(&dev_priv->drm, &connector_list_iter);

--=20
Jani Nikula, Intel Open Source Graphics Center
