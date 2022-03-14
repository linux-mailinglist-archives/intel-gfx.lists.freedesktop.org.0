Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6B84D7EF8
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 10:47:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7DE510E1FB;
	Mon, 14 Mar 2022 09:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3819B10E1FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 09:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647251267; x=1678787267;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=zqgyIE1wAnY24i8J6UH+k3Z8PsLRVf0f6oM60AIxg/E=;
 b=TUmLj5X88OrhpGyzELHSLdU3mAkmPoj0gD7sj/Aq2cJeo0tGc1A/XDhb
 JKlLk72BvpjhMUgA99DnCQLZJT6beorgxiHVlFX/sXjyCct3zGtP/VsNe
 9JYO7V6KE4A7lcQqQj0KdWGBVHdcaHzrKp5WuyrhrCMdmArltbDLTOcQW
 aWn9I/kX4wyADhAlK8VJ6cdeN1nGh+pfqGXdm7G4UVkw0N38h2JEFim1f
 Xp9lWNkeF7HMHJOdZzkT863tp0Lpc3sOEuYbGIW0kgtzrFE84wjLyfYg8
 pbfsSHTeeSFopmtUfmgHADiOsgCj8ZFiPx+rHSnlQtRgap5SKxcUm1DPb g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="342407430"
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="342407430"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 02:47:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="556336538"
Received: from vmanav-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.47])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 02:47:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220311172428.14685-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
 <20220311172428.14685-6-ville.syrjala@linux.intel.com>
Date: Mon, 14 Mar 2022 11:47:40 +0200
Message-ID: <875yogx3ur.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 05/16] drm/i915: Nuke dev_priv->drrs.type
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
> When we found a downclock mode dev_priv->drrs.type is just a
> straight copy of dev_priv->vbt.drrs_type. And in case we
> couldn't find a downclock mode can_enable_drrs() won't let
> us enable DRRS anyway so the minor distinction between the
> two is irrelevant. So let's just nuke dev_priv->drrs.type
> and consult the VBT version directly.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_drrs.c            | 10 ++++------
>  drivers/gpu/drm/i915/i915_drv.h                      |  1 -
>  3 files changed, 5 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index e511500ee26a..2a6fd15b1471 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1156,7 +1156,7 @@ static void drrs_status_per_crtc(struct seq_file *m,
>  		seq_printf(m, "%s:\n", connector->name);
>=20=20
>  		if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_eDP &&
> -		    drrs->type =3D=3D DRRS_TYPE_SEAMLESS)
> +		    dev_priv->vbt.drrs_type =3D=3D DRRS_TYPE_SEAMLESS)
>  			supported =3D true;
>=20=20
>  		seq_printf(m, "\tDRRS Supported: %s\n", str_yes_no(supported));
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index c97b5dee8cae..4afbc903f169 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -65,7 +65,7 @@ static bool can_enable_drrs(struct intel_connector *con=
nector,
>  		return false;
>=20=20
>  	return connector->panel.downclock_mode &&
> -		i915->drrs.type =3D=3D DRRS_TYPE_SEAMLESS;
> +		i915->vbt.drrs_type =3D=3D DRRS_TYPE_SEAMLESS;
>  }
>=20=20
>  void
> @@ -154,7 +154,7 @@ static void intel_drrs_set_state(struct drm_i915_priv=
ate *dev_priv,
>  		return;
>  	}
>=20=20
> -	if (dev_priv->drrs.type !=3D DRRS_TYPE_SEAMLESS) {
> +	if (dev_priv->vbt.drrs_type !=3D DRRS_TYPE_SEAMLESS) {
>  		drm_dbg_kms(&dev_priv->drm, "Only Seamless DRRS supported.\n");
>  		return;
>  	}
> @@ -269,7 +269,7 @@ intel_drrs_update(struct intel_dp *intel_dp,
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>=20=20
> -	if (dev_priv->drrs.type !=3D DRRS_TYPE_SEAMLESS)
> +	if (dev_priv->vbt.drrs_type !=3D DRRS_TYPE_SEAMLESS)
>  		return;
>=20=20
>  	mutex_lock(&dev_priv->drrs.mutex);
> @@ -325,7 +325,7 @@ static void intel_drrs_frontbuffer_update(struct drm_=
i915_private *dev_priv,
>  	struct drm_crtc *crtc;
>  	enum pipe pipe;
>=20=20
> -	if (dev_priv->drrs.type !=3D DRRS_TYPE_SEAMLESS)
> +	if (dev_priv->vbt.drrs_type !=3D DRRS_TYPE_SEAMLESS)
>  		return;
>=20=20
>  	cancel_delayed_work(&dev_priv->drrs.work);
> @@ -460,8 +460,6 @@ intel_drrs_init(struct intel_connector *connector,
>  		return NULL;
>  	}
>=20=20
> -	dev_priv->drrs.type =3D dev_priv->vbt.drrs_type;
> -
>  	dev_priv->drrs.refresh_rate =3D DRRS_REFRESH_RATE_HIGH;
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "[CONNECTOR:%d:%s] seamless DRRS supported\n",
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 7d622d1afe93..6a59fc2cb9c2 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -213,7 +213,6 @@ struct i915_drrs {
>  	struct intel_dp *dp;
>  	unsigned busy_frontbuffer_bits;
>  	enum drrs_refresh_rate refresh_rate;
> -	enum drrs_type type;
>  };
>=20=20
>  #define QUIRK_LVDS_SSC_DISABLE (1<<1)

--=20
Jani Nikula, Intel Open Source Graphics Center
