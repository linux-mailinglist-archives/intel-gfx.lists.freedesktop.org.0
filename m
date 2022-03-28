Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A904E94C3
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:32:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AC4710E18D;
	Mon, 28 Mar 2022 11:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2A3510E18D
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648467157; x=1680003157;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=4VT4ly40yOSeS3vpFl5DfFSOPyMqfBeMuXGHcrrzVOE=;
 b=QmersmHzKU5Nkv0szq3JnmPsBxGgQ1dhrL+9Vfex5I+LbNcaG134rlYq
 eM6Uobuy0r5wOuT3vzSzFQG/lpdCMPgJer43w/Vw69jVxKhJRGxOjo/18
 7UeQRcaiP6+tXk+TbnE5GeDimCVX3Q0AKpp8iE8sKZXai1Tmy7knfIZsI
 UyJ08jxk0n2lLqmLUwk/O25ErbxLDbZWW+A4GuniAJ+6rJnGM75yuTj/u
 UBVL3xMqoSavHqauDb5tXOXI2near7nMGUHyI3uakJFObZ4MhtqUhQ3kV
 rVahAJXC4jO55ysYGzg/jtEb7MEfTaM0k62HAoEQi2J0hVfGvdYf6kfkQ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="283863930"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="283863930"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:32:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="651944725"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:32:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220323182935.4701-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
 <20220323182935.4701-8-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:32:27 +0300
Message-ID: <87o81qe2ic.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915: Extract
 intel_panel_encoder_fixed_mode()
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

On Wed, 23 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Apart from the EDID and VBT based mechanism we also sometimes
> use the encoder's current mode as the panel fixed mode. We
> currently have the same code for that duplicated in two places.
> Let's unify.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dvo.c   | 30 +++++-----------------
>  drivers/gpu/drm/i915/display/intel_lvds.c  |  7 +----
>  drivers/gpu/drm/i915/display/intel_panel.c | 20 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_panel.h |  4 +++
>  4 files changed, 31 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i=
915/display/intel_dvo.c
> index 90e026cef6ee..8c98897d8313 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -378,27 +378,6 @@ static const struct drm_encoder_funcs intel_dvo_enc_=
funcs =3D {
>  	.destroy =3D intel_dvo_enc_destroy,
>  };
>=20=20
> -/*
> - * Attempts to get a fixed panel timing for LVDS (currently only the i83=
0).
> - *
> - * Other chips with DVO LVDS will need to extend this to deal with the L=
VDS
> - * chip being on DVOB/C and having multiple pipes.
> - */
> -static struct drm_display_mode *
> -intel_dvo_get_current_mode(struct intel_encoder *encoder)
> -{
> -	struct drm_display_mode *mode;
> -
> -	mode =3D intel_encoder_current_mode(encoder);
> -	if (mode) {
> -		DRM_DEBUG_KMS("using current (BIOS) mode: " DRM_MODE_FMT "\n",
> -			      DRM_MODE_ARG(mode));
> -		mode->type |=3D DRM_MODE_TYPE_PREFERRED;
> -	}
> -
> -	return mode;
> -}
> -
>  static enum port intel_dvo_port(i915_reg_t dvo_reg)
>  {
>  	if (i915_mmio_reg_equal(dvo_reg, DVOA))
> @@ -541,6 +520,8 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
>=20=20
>  		intel_connector_attach_encoder(intel_connector, intel_encoder);
>  		if (dvo->type =3D=3D INTEL_DVO_CHIP_LVDS) {
> +			struct drm_display_mode *fixed_mode;
> +
>  			/*
>  			 * For our LVDS chipsets, we should hopefully be able
>  			 * to dig the fixed panel mode out of the BIOS data.
> @@ -549,9 +530,10 @@ void intel_dvo_init(struct drm_i915_private *dev_pri=
v)
>  			 * headers, likely), so for now, just get the current
>  			 * mode being output through DVO.
>  			 */
> -			intel_panel_init(intel_connector,
> -					 intel_dvo_get_current_mode(intel_encoder),
> -					 NULL);
> +			fixed_mode =3D intel_panel_encoder_fixed_mode(intel_connector,
> +								    intel_encoder);
> +
> +			intel_panel_init(intel_connector, fixed_mode, NULL);
>  			intel_dvo->panel_wants_dither =3D true;
>  		}
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index c3f017c3740c..5b2367bc3cd2 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -983,12 +983,7 @@ void intel_lvds_init(struct drm_i915_private *dev_pr=
iv)
>  	 * on.  If so, assume that whatever is currently programmed is the
>  	 * correct mode.
>  	 */
> -	fixed_mode =3D intel_encoder_current_mode(intel_encoder);
> -	if (fixed_mode) {
> -		drm_dbg_kms(&dev_priv->drm, "using current (BIOS) mode: " DRM_MODE_FMT=
 "\n",
> -			    DRM_MODE_ARG(fixed_mode));
> -		fixed_mode->type |=3D DRM_MODE_TYPE_PREFERRED;
> -	}
> +	fixed_mode =3D intel_panel_encoder_fixed_mode(intel_connector, intel_en=
coder);
>=20=20
>  	/* If we still don't have a mode after all that, give up. */
>  	if (!fixed_mode)
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 7f59db8b9ede..882e424973d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -292,6 +292,26 @@ intel_panel_vbt_sdvo_fixed_mode(struct intel_connect=
or *connector)
>  	return fixed_mode;
>  }
>=20=20
> +struct drm_display_mode *
> +intel_panel_encoder_fixed_mode(struct intel_connector *connector,
> +			       struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct drm_display_mode *fixed_mode;
> +
> +	fixed_mode =3D intel_encoder_current_mode(encoder);
> +	if (!fixed_mode)
> +		return NULL;
> +
> +	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] using current (BIOS) mode: "=
 DRM_MODE_FMT "\n",
> +		    connector->base.base.id, connector->base.name,
> +		    DRM_MODE_ARG(fixed_mode));
> +
> +	fixed_mode->type |=3D DRM_MODE_TYPE_PREFERRED;
> +
> +	return fixed_mode;
> +}
> +
>  /* adjusted_mode has been preset to be the panel's fixed mode */
>  static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 7e32c903a1e6..6a6ac338e9aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -16,6 +16,7 @@ struct drm_display_mode;
>  struct drm_i915_private;
>  struct intel_connector;
>  struct intel_crtc_state;
> +struct intel_encoder;
>=20=20
>  int intel_panel_init(struct intel_connector *connector,
>  		     struct drm_display_mode *fixed_mode,
> @@ -50,5 +51,8 @@ struct drm_display_mode *
>  intel_panel_vbt_lfp_fixed_mode(struct intel_connector *connector);
>  struct drm_display_mode *
>  intel_panel_vbt_sdvo_fixed_mode(struct intel_connector *connector);
> +struct drm_display_mode *
> +intel_panel_encoder_fixed_mode(struct intel_connector *connector,
> +			       struct intel_encoder *encoder);
>=20=20
>  #endif /* __INTEL_PANEL_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
