Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EEB4D7F52
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 11:00:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DA0E10E191;
	Mon, 14 Mar 2022 10:00:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F92810E191
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 10:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647252022; x=1678788022;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=CWhRSGyrYdvsmc2FhC1QxgMphT/eFfe76kOMzEnyOBg=;
 b=kQ4Q8zQ683iSxb+TsY0iHzhrbBggr58MVqtthjPpk1uxaymRbqeP+nTQ
 nndgS/FKWf8rQrToGulBv0Ml/PHYGFO1PIJwneLPH1OFLAY9OX9GWDx9x
 /D7qKgmjZWDY1sqx7LDKULVAtoDINpykQMfkn7Eeyh5RyUrn5hcMcDvqO
 B2dnHTGMNWmtbJFI8K4pzr7tNI7VZUA/jvsAQrpJdET8/ST2j9UTVyqMl
 n3DtBZ2gJaQ+xoBsnj8opAMYmBRxY1jAJlmgDGJR6VuWTrTGEnevUxTCT
 p5kxzgWJ1q6NtuW/6nsJFEK/HwcxNCni8irveZqvWSTI5itXAYrcyh5ex g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="342409351"
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="342409351"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 03:00:21 -0700
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="556340660"
Received: from vmanav-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.47])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 03:00:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220311172428.14685-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
 <20220311172428.14685-11-ville.syrjala@linux.intel.com>
Date: Mon, 14 Mar 2022 12:00:18 +0200
Message-ID: <87zglsvop9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 10/16] drm/i915: Introduce
 intel_drrs_type_str()
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

On Fri, 11 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add helper to get the drrs type as a string, and use it
> in a couple of places. Also pimp the debugfs output a bit
> while at it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 19 +++++++------------
>  drivers/gpu/drm/i915/display/intel_drrs.c     | 19 +++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_drrs.h     |  2 ++
>  3 files changed, 26 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 2a6fd15b1471..3edf3eb01240 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -22,6 +22,7 @@
>  #include "intel_fbdev.h"
>  #include "intel_hdcp.h"
>  #include "intel_hdmi.h"
> +#include "intel_panel.h"
>  #include "intel_pm.h"
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
> @@ -1143,23 +1144,17 @@ static void drrs_status_per_crtc(struct seq_file =
*m,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct i915_drrs *drrs =3D &dev_priv->drrs;
> -	struct drm_connector *connector;
> +	struct intel_connector *connector;
>  	struct drm_connector_list_iter conn_iter;
>=20=20
>  	drm_connector_list_iter_begin(dev, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter) {
> -		bool supported =3D false;
> -
> -		if (connector->state->crtc !=3D &crtc->base)
> +	for_each_intel_connector_iter(connector, &conn_iter) {
> +		if (connector->base.state->crtc !=3D &crtc->base)
>  			continue;
>=20=20
> -		seq_printf(m, "%s:\n", connector->name);
> -
> -		if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_eDP &&
> -		    dev_priv->vbt.drrs_type =3D=3D DRRS_TYPE_SEAMLESS)
> -			supported =3D true;
> -
> -		seq_printf(m, "\tDRRS Supported: %s\n", str_yes_no(supported));
> +		seq_printf(m, "[CONNECTOR:%d:%s] DRRS type: %s\n",
> +			   connector->base.base.id, connector->base.name,
> +			   intel_drrs_type_str(intel_panel_drrs_type(connector)));
>  	}
>  	drm_connector_list_iter_end(&conn_iter);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index c663df51a84a..12ae1deea15f 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -47,6 +47,20 @@
>   * requested by userspace.
>   */
>=20=20
> +const char *intel_drrs_type_str(enum drrs_type drrs_type)
> +{
> +	static const char * const str[] =3D {
> +		[DRRS_TYPE_NONE] =3D "none",
> +		[DRRS_TYPE_STATIC] =3D "static",
> +		[DRRS_TYPE_SEAMLESS] =3D "seamless",
> +	};
> +
> +	if (drrs_type >=3D ARRAY_SIZE(str))
> +		return "<invalid>";
> +
> +	return str[drrs_type];
> +}
> +
>  static bool can_enable_drrs(struct intel_connector *connector,
>  			    const struct intel_crtc_state *pipe_config)
>  {
> @@ -461,8 +475,9 @@ intel_drrs_init(struct intel_connector *connector,
>=20=20
>  	dev_priv->drrs.refresh_rate =3D DRRS_REFRESH_RATE_HIGH;
>  	drm_dbg_kms(&dev_priv->drm,
> -		    "[CONNECTOR:%d:%s] seamless DRRS supported\n",
> -		    connector->base.base.id, connector->base.name);
> +		    "[CONNECTOR:%d:%s] %s DRRS supported\n",
> +		    connector->base.base.id, connector->base.name,
> +		    intel_drrs_type_str(dev_priv->vbt.drrs_type));
>=20=20
>  	return downclock_mode;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/=
i915/display/intel_drrs.h
> index 6bca7692f59f..d3dff44dc3b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.h
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.h
> @@ -8,6 +8,7 @@
>=20=20
>  #include <linux/types.h>
>=20=20
> +enum drrs_type;
>  struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_crtc;
> @@ -15,6 +16,7 @@ struct intel_crtc_state;
>  struct intel_connector;
>  struct intel_dp;
>=20=20
> +const char *intel_drrs_type_str(enum drrs_type drrs_type);
>  void intel_drrs_enable(struct intel_dp *intel_dp,
>  		       const struct intel_crtc_state *crtc_state);
>  void intel_drrs_disable(struct intel_dp *intel_dp,

--=20
Jani Nikula, Intel Open Source Graphics Center
