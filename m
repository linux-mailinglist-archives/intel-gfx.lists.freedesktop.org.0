Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7607660FAA2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 16:42:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7AD310E665;
	Thu, 27 Oct 2022 14:42:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9C1710E662
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 14:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666881760; x=1698417760;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=yDYQM+20ScT0lmXOFdDa5FJwMVhqIQXJ0yEdy0lROG4=;
 b=KnDvdV4WFJblR4Vs2CuEzwX71jHhnY+0F3TYmFkEQS1Bun6YgxXxCpKJ
 t1+AwjdLbP8pGhqYoirAzuBr/jH5T6SN3Phw92sTg74QuepQ/rG/DZPjR
 qSzJfmm/twElULRkPS1GLdyddNWi5dzZCkcJBlQVV+Tar0sxEBm+tp5eo
 ON7j8sAXwLmU2++YIs7rN+9xwGHIVQjFMgd4aeIV52rCdkrjkXFp/3y1h
 uodMNjIuUTi1oqHRexQNSCdkOf/oaoTIW+B4Vcf0SfB3TPd0WvDmNp91J
 ECqIRB1eqxQYBByxPZ1AbKue8n3pB7txuY3nYaero3Bx255878q40Peo1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="370308072"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="370308072"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:42:39 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="807475971"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="807475971"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:42:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221026101134.20865-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
 <20221026101134.20865-7-ville.syrjala@linux.intel.com>
Date: Thu, 27 Oct 2022 17:42:32 +0300
Message-ID: <87edutcopz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/sdvo: Get rid of the output
 type<->device index stuff
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

On Wed, 26 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Get rid of this silly output type<->device index back and
> forth and just pass the output type directly to the corresponding
> output init function. This was already being done for TV outputs
> anyway.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 47 +++++++++--------------
>  1 file changed, 19 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index d7943f9a96e7..4784c05a1b71 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2622,7 +2622,7 @@ intel_sdvo_unselect_i2c_bus(struct intel_sdvo *sdvo)
>  }
>=20=20
>  static bool
> -intel_sdvo_is_hdmi_connector(struct intel_sdvo *intel_sdvo, int device)
> +intel_sdvo_is_hdmi_connector(struct intel_sdvo *intel_sdvo)
>  {
>  	return intel_sdvo_check_supp_encode(intel_sdvo);
>  }
> @@ -2727,7 +2727,7 @@ static struct intel_sdvo_connector *intel_sdvo_conn=
ector_alloc(void)
>  }
>=20=20
>  static bool
> -intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, int device)
> +intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, u16 type)
>  {
>  	struct drm_encoder *encoder =3D &intel_sdvo->base.base;
>  	struct drm_connector *connector;
> @@ -2735,16 +2735,13 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo=
, int device)
>  	struct intel_connector *intel_connector;
>  	struct intel_sdvo_connector *intel_sdvo_connector;
>=20=20
> -	DRM_DEBUG_KMS("initialising DVI device %d\n", device);
> +	DRM_DEBUG_KMS("initialising DVI type 0x%x\n", type);
>=20=20
>  	intel_sdvo_connector =3D intel_sdvo_connector_alloc();
>  	if (!intel_sdvo_connector)
>  		return false;
>=20=20
> -	if (device =3D=3D 0)
> -		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_TMDS0;
> -	else if (device =3D=3D 1)
> -		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_TMDS1;
> +	intel_sdvo_connector->output_flag =3D type;
>=20=20
>  	intel_connector =3D &intel_sdvo_connector->base;
>  	connector =3D &intel_connector->base;
> @@ -2764,7 +2761,7 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, =
int device)
>  	encoder->encoder_type =3D DRM_MODE_ENCODER_TMDS;
>  	connector->connector_type =3D DRM_MODE_CONNECTOR_DVID;
>=20=20
> -	if (intel_sdvo_is_hdmi_connector(intel_sdvo, device)) {
> +	if (intel_sdvo_is_hdmi_connector(intel_sdvo)) {
>  		connector->connector_type =3D DRM_MODE_CONNECTOR_HDMIA;
>  		intel_sdvo_connector->is_hdmi =3D true;
>  	}
> @@ -2781,14 +2778,14 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo=
, int device)
>  }
>=20=20
>  static bool
> -intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, int type)
> +intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, u16 type)
>  {
>  	struct drm_encoder *encoder =3D &intel_sdvo->base.base;
>  	struct drm_connector *connector;
>  	struct intel_connector *intel_connector;
>  	struct intel_sdvo_connector *intel_sdvo_connector;
>=20=20
> -	DRM_DEBUG_KMS("initialising TV type %d\n", type);
> +	DRM_DEBUG_KMS("initialising TV type 0x%x\n", type);
>=20=20
>  	intel_sdvo_connector =3D intel_sdvo_connector_alloc();
>  	if (!intel_sdvo_connector)
> @@ -2820,14 +2817,14 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo,=
 int type)
>  }
>=20=20
>  static bool
> -intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, int device)
> +intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, u16 type)
>  {
>  	struct drm_encoder *encoder =3D &intel_sdvo->base.base;
>  	struct drm_connector *connector;
>  	struct intel_connector *intel_connector;
>  	struct intel_sdvo_connector *intel_sdvo_connector;
>=20=20
> -	DRM_DEBUG_KMS("initialising analog device %d\n", device);
> +	DRM_DEBUG_KMS("initialising analog type 0x%x\n", type);
>=20=20
>  	intel_sdvo_connector =3D intel_sdvo_connector_alloc();
>  	if (!intel_sdvo_connector)
> @@ -2839,10 +2836,7 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sd=
vo, int device)
>  	encoder->encoder_type =3D DRM_MODE_ENCODER_DAC;
>  	connector->connector_type =3D DRM_MODE_CONNECTOR_VGA;
>=20=20
> -	if (device =3D=3D 0)
> -		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_RGB0;
> -	else if (device =3D=3D 1)
> -		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_RGB1;
> +	intel_sdvo_connector->output_flag =3D type;
>=20=20
>  	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
>  		kfree(intel_sdvo_connector);
> @@ -2853,7 +2847,7 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sdv=
o, int device)
>  }
>=20=20
>  static bool
> -intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
> +intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, u16 type)
>  {
>  	struct drm_encoder *encoder =3D &intel_sdvo->base.base;
>  	struct drm_i915_private *i915 =3D to_i915(encoder->dev);
> @@ -2861,7 +2855,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo,=
 int device)
>  	struct intel_connector *intel_connector;
>  	struct intel_sdvo_connector *intel_sdvo_connector;
>=20=20
> -	DRM_DEBUG_KMS("initialising LVDS device %d\n", device);
> +	DRM_DEBUG_KMS("initialising LVDS type 0x%x\n", type);
>=20=20
>  	intel_sdvo_connector =3D intel_sdvo_connector_alloc();
>  	if (!intel_sdvo_connector)
> @@ -2872,10 +2866,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo=
, int device)
>  	encoder->encoder_type =3D DRM_MODE_ENCODER_LVDS;
>  	connector->connector_type =3D DRM_MODE_CONNECTOR_LVDS;
>=20=20
> -	if (device =3D=3D 0)
> -		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_LVDS0;
> -	else if (device =3D=3D 1)
> -		intel_sdvo_connector->output_flag =3D SDVO_OUTPUT_LVDS1;
> +	intel_sdvo_connector->output_flag =3D type;
>=20=20
>  	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
>  		kfree(intel_sdvo_connector);
> @@ -2950,11 +2941,11 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_=
sdvo)
>  	intel_sdvo_select_ddc_bus(i915, intel_sdvo);
>=20=20
>  	if (flags & SDVO_OUTPUT_TMDS0)
> -		if (!intel_sdvo_dvi_init(intel_sdvo, 0))
> +		if (!intel_sdvo_dvi_init(intel_sdvo, SDVO_OUTPUT_TMDS0))
>  			return false;
>=20=20
>  	if (flags & SDVO_OUTPUT_TMDS1)
> -		if (!intel_sdvo_dvi_init(intel_sdvo, 1))
> +		if (!intel_sdvo_dvi_init(intel_sdvo, SDVO_OUTPUT_TMDS1))
>  			return false;
>=20=20
>  	/* TV has no XXX1 function block */
> @@ -2971,19 +2962,19 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_=
sdvo)
>  			return false;
>=20=20
>  	if (flags & SDVO_OUTPUT_RGB0)
> -		if (!intel_sdvo_analog_init(intel_sdvo, 0))
> +		if (!intel_sdvo_analog_init(intel_sdvo, SDVO_OUTPUT_RGB0))
>  			return false;
>=20=20
>  	if (flags & SDVO_OUTPUT_RGB1)
> -		if (!intel_sdvo_analog_init(intel_sdvo, 1))
> +		if (!intel_sdvo_analog_init(intel_sdvo, SDVO_OUTPUT_RGB1))
>  			return false;
>=20=20
>  	if (flags & SDVO_OUTPUT_LVDS0)
> -		if (!intel_sdvo_lvds_init(intel_sdvo, 0))
> +		if (!intel_sdvo_lvds_init(intel_sdvo, SDVO_OUTPUT_LVDS0))
>  			return false;
>=20=20
>  	if (flags & SDVO_OUTPUT_LVDS1)
> -		if (!intel_sdvo_lvds_init(intel_sdvo, 1))
> +		if (!intel_sdvo_lvds_init(intel_sdvo, SDVO_OUTPUT_LVDS1))
>  			return false;
>=20=20
>  	intel_sdvo->base.pipe_mask =3D ~0;

--=20
Jani Nikula, Intel Open Source Graphics Center
