Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 685974E946A
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:27:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6AAF10E13F;
	Mon, 28 Mar 2022 11:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1718710E13F
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648466856; x=1680002856;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=NVBxa3A3Ncm+XSqn9YFf39e1poYgZB08DYYCzIIOtMY=;
 b=MWu5ZTmU/Ny7jrDX+tN6pCxn1MP7w06jBfnJjiinQQLLrIzIoBmKFWlT
 bIvbyPKkubcV3HtYNNzTjZpBvKMnEfIT49fbBiU4+yLmLo5id2DqP6HIy
 Cvw33OjG3eMiHEC8ysYIX6GlRHEa/v1dsTUtmCNsQAd+w/VKBtTYBJtc/
 s7QIstL2CS4PbwpyShYKHNLVyAt9R28/6FRTY8OSZQ7AS0G7OH82EW1xl
 20TukaUcT63RO0vlvabEHeAyh6J3cDYNaFgfueqovbKO94upBS6T+bvzC
 cWWW2sz5oApJcR7FRU6k2mMYLhyKCVpabto7NRXZ20uxRJi/QKUtz0Zoi A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="257803863"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="257803863"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:27:35 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="545923200"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:27:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220323182935.4701-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
 <20220323182935.4701-4-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:27:24 +0300
Message-ID: <87zglae2qr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: Extract
 intel_edp_add_properties()
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
> Pull the drm_connector_set_panel_orientation_with_quirk()
> into intel_edp_add_properties() to match how the DSI encoders
> do it. Less clutter in intel_edp_init_connector() overall.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 22 +++++++++++++++++-----
>  1 file changed, 17 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index f54088db9862..4bf13dbafbee 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4961,6 +4961,22 @@ intel_dp_add_properties(struct intel_dp *intel_dp,=
 struct drm_connector *connect
>  		drm_connector_attach_vrr_capable_property(connector);
>  }
>=20=20
> +static void
> +intel_edp_add_properties(struct intel_dp *intel_dp,
> +			 const struct drm_display_mode *fixed_mode)
> +{
> +	struct intel_connector *connector =3D intel_dp->attached_connector;
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +
> +	if (!fixed_mode)
> +		return;
> +
> +	drm_connector_set_panel_orientation_with_quirk(&connector->base,
> +						       i915->vbt.orientation,
> +						       fixed_mode->hdisplay,
> +						       fixed_mode->vdisplay);
> +}
> +
>  static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  				     struct intel_connector *intel_connector)
>  {
> @@ -5065,11 +5081,7 @@ static bool intel_edp_init_connector(struct intel_=
dp *intel_dp,
>  		intel_connector->panel.backlight.power =3D intel_pps_backlight_power;
>  	intel_backlight_setup(intel_connector, pipe);
>=20=20
> -	if (fixed_mode) {
> -		drm_connector_set_panel_orientation_with_quirk(connector,
> -				dev_priv->vbt.orientation,
> -				fixed_mode->hdisplay, fixed_mode->vdisplay);
> -	}
> +	intel_edp_add_properties(intel_dp, fixed_mode);
>=20=20
>  	return true;

--=20
Jani Nikula, Intel Open Source Graphics Center
