Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD3A5EF4D8
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 13:57:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE84010E5E0;
	Thu, 29 Sep 2022 11:57:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AEF310E5E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 11:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664452654; x=1695988654;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=iynpWzOrSajr4As/mkzWGPFMQ9F1XFQobaRgL3PnnUo=;
 b=kg1SnNpV2PDKVdLO3V/KI+lyBAUOfFQ0+zAdsyR93vHYd2veBG/bWMQz
 xypZRZIDSs591Q2LstO8/dP5V6YNhwrb9Vt62J0Z3evSKbl2Akg6FarO8
 WJuyuyX0Z7kF/5k3/KWQ4xRuS/IaeiTpOeCCKn4fQiGcQ2AGDJkG9TVPq
 RUto+jyNkM1iULf/n3Z8xi19NJes8WYgSUzwbOb4+5nPJANMD3B8cZ6S+
 AnA+vTbSnc0IK8WEvarxbJRcnog+glfLYxOprE8oDGDE/G9ptADQ+nOt/
 Qc8Srl2XKrW9WFYsydYR59Trr1+k82lwDcERWn+BnDTFn0zfUPjqSrC68 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="282237200"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="282237200"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:57:33 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="624536631"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="624536631"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.153])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:57:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220929071521.26612-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
 <20220929071521.26612-5-ville.syrjala@linux.intel.com>
Date: Thu, 29 Sep 2022 14:57:29 +0300
Message-ID: <878rm2xuja.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/10] drm/i915: Clean up
 intel_color_init_hooks()
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

On Thu, 29 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Remove a bunch of pointless curly brackets and do
> the s/dev_priv/i915/ while at it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 43 +++++++++++-----------
>  1 file changed, 21 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index ce8a4be9b292..96687ec30b19 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -2219,30 +2219,29 @@ void intel_crtc_color_init(struct intel_crtc *crt=
c)
>  				   INTEL_INFO(dev_priv)->display.color.gamma_lut_size);
>  }
>=20=20
> -void intel_color_init_hooks(struct drm_i915_private *dev_priv)
> +void intel_color_init_hooks(struct drm_i915_private *i915)
>  {
> -	if (HAS_GMCH(dev_priv)) {
> -		if (IS_CHERRYVIEW(dev_priv)) {
> -			dev_priv->display.funcs.color =3D &chv_color_funcs;
> -		} else if (DISPLAY_VER(dev_priv) >=3D 4) {
> -			dev_priv->display.funcs.color =3D &i965_color_funcs;
> -		} else {
> -			dev_priv->display.funcs.color =3D &i9xx_color_funcs;
> -		}
> +	if (HAS_GMCH(i915)) {
> +		if (IS_CHERRYVIEW(i915))
> +			i915->display.funcs.color =3D &chv_color_funcs;
> +		else if (DISPLAY_VER(i915) >=3D 4)
> +			i915->display.funcs.color =3D &i965_color_funcs;
> +		else
> +			i915->display.funcs.color =3D &i9xx_color_funcs;
>  	} else {
> -		if (DISPLAY_VER(dev_priv) >=3D 11)
> -			dev_priv->display.funcs.color =3D &icl_color_funcs;
> -		else if (DISPLAY_VER(dev_priv) =3D=3D 10)
> -			dev_priv->display.funcs.color =3D &glk_color_funcs;
> -		else if (DISPLAY_VER(dev_priv) =3D=3D 9)
> -			dev_priv->display.funcs.color =3D &skl_color_funcs;
> -		else if (DISPLAY_VER(dev_priv) =3D=3D 8)
> -			dev_priv->display.funcs.color =3D &bdw_color_funcs;
> -		else if (IS_HASWELL(dev_priv))
> -			dev_priv->display.funcs.color =3D &hsw_color_funcs;
> -		else if (DISPLAY_VER(dev_priv) =3D=3D 7)
> -			dev_priv->display.funcs.color =3D &ivb_color_funcs;
> +		if (DISPLAY_VER(i915) >=3D 11)
> +			i915->display.funcs.color =3D &icl_color_funcs;
> +		else if (DISPLAY_VER(i915) =3D=3D 10)
> +			i915->display.funcs.color =3D &glk_color_funcs;
> +		else if (DISPLAY_VER(i915) =3D=3D 9)
> +			i915->display.funcs.color =3D &skl_color_funcs;
> +		else if (DISPLAY_VER(i915) =3D=3D 8)
> +			i915->display.funcs.color =3D &bdw_color_funcs;
> +		else if (IS_HASWELL(i915))
> +			i915->display.funcs.color =3D &hsw_color_funcs;
> +		else if (DISPLAY_VER(i915) =3D=3D 7)
> +			i915->display.funcs.color =3D &ivb_color_funcs;
>  		else
> -			dev_priv->display.funcs.color =3D &ilk_color_funcs;
> +			i915->display.funcs.color =3D &ilk_color_funcs;
>  	}
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
