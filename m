Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 233604EDA7A
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 15:25:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F7C710F3D1;
	Thu, 31 Mar 2022 13:25:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCD3410F3D1
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 13:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648733145; x=1680269145;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Aw+mC7exnPj3It2T2H/M77TyNMQj1aEaR/8FKsLDkyo=;
 b=XHkS0nZsQ3acqXt20XK4jPgfiTvSJhzgjktlHLgb+oKFdfFJzVYibnuy
 q/vAN+38Um2HS5xzfAQJbOslEfDen20hfC1lGA/rjgt768O4oGqPNF4W8
 PXnHt+KBSC4mualr8jFqg3/etZfYgIHBm0hGMmeuXjqK8dSj8b7IBxwWE
 lKanMUPirfsbXOwd/ZeqIsc/m98zSSJhGnBtbBhnSEWJQ5AwR2MfMivvD
 NBC1PGY+d8hv2b75emSe5jczt8dWNaSKs4JaWp6QNgpnxMwM2q+yEWFI0
 191FBRO/WwTrPMTKtzGbDH1EyueZWef8SlQK21bzUCj6TmGRFAqnYKT7d g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="284756232"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="284756232"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:25:39 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="566481800"
Received: from gluca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:25:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220331112822.11462-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-5-ville.syrjala@linux.intel.com>
Date: Thu, 31 Mar 2022 16:25:34 +0300
Message-ID: <87a6d69ru9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 04/11] drm/i915: Nuke intel_drrs_init()
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

On Thu, 31 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> intel_drrs_init() is a mostly pointless wrapper around
> intel_panel_add_edid_downclock_mode(), get rid of it.
>
> The only really useful thing left in there is the debug
> print regarding the DRRS type supported by the connector.
> Let's just move that into intel_panel_init().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_drrs.c  | 24 ----------------------
>  drivers/gpu/drm/i915/display/intel_drrs.h  |  1 -
>  drivers/gpu/drm/i915/display/intel_panel.c |  6 ++++++
>  4 files changed, 7 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 67472555211d..e539bc315d7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5075,7 +5075,7 @@ static bool intel_edp_init_connector(struct intel_d=
p *intel_dp,
>  	intel_panel_add_edid_fixed_mode(intel_connector);
>  	if (intel_panel_preferred_fixed_mode(intel_connector) &&
>  	    intel_edp_has_drrs(intel_dp))
> -		intel_drrs_init(intel_connector);
> +		intel_panel_add_edid_downclock_mode(intel_connector);
>=20=20
>  	/* MSO requires information from the EDID */
>  	intel_edp_mso_init(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 8fd280c7c83f..3ebea697f77a 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -354,27 +354,3 @@ void intel_crtc_drrs_init(struct intel_crtc *crtc)
>  	mutex_init(&crtc->drrs.mutex);
>  	crtc->drrs.cpu_transcoder =3D INVALID_TRANSCODER;
>  }
> -
> -/**
> - * intel_drrs_init - Init DRRS for eDP connector
> - * @connector: eDP connector
> - *
> - * This function is called only once at driver load to initialize
> - * DRRS support for the connector.
> - *
> - * Returns:
> - * Downclock mode if panel supports it, else return NULL.
> - * DRRS support is determined by the presence of downclock mode (apart
> - * from VBT setting).
> - */
> -void intel_drrs_init(struct intel_connector *connector)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> -
> -	intel_panel_add_edid_downclock_mode(connector);
> -
> -	drm_dbg_kms(&dev_priv->drm,
> -		    "[CONNECTOR:%d:%s] DRRS type: %s\n",
> -		    connector->base.base.id, connector->base.name,
> -		    intel_drrs_type_str(dev_priv->vbt.drrs_type));
> -}
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/=
i915/display/intel_drrs.h
> index 3ea52220cd69..084c3f4f8403 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.h
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.h
> @@ -27,6 +27,5 @@ void intel_drrs_compute_config(struct intel_connector *=
connector,
>  			       struct intel_crtc_state *pipe_config,
>  			       int output_bpp, bool constant_n);
>  void intel_crtc_drrs_init(struct intel_crtc *crtc);
> -void intel_drrs_init(struct intel_connector *connector);
>=20=20
>  #endif /* __INTEL_DRRS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 1e56ca9033e0..5ecc6fc80588 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -35,6 +35,7 @@
>  #include "intel_connector.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_drrs.h"
>  #include "intel_panel.h"
>=20=20
>  bool intel_panel_use_ssc(struct drm_i915_private *i915)
> @@ -634,6 +635,11 @@ int intel_panel_init(struct intel_connector *connect=
or)
>=20=20
>  	intel_backlight_init_funcs(panel);
>=20=20
> +	drm_dbg_kms(connector->base.dev,
> +		    "[CONNECTOR:%d:%s] DRRS type: %s\n",
> +		    connector->base.base.id, connector->base.name,
> +		    intel_drrs_type_str(intel_panel_drrs_type(connector)));
> +
>  	return 0;
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
