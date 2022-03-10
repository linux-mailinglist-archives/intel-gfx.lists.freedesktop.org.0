Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2564D43A1
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 10:38:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7439210FE80;
	Thu, 10 Mar 2022 09:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BB9D10FE7F
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 09:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646905134; x=1678441134;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=uBTI96K/MqpwUYZtJicRuLqlPD27E6/CDuybTNztrM0=;
 b=Z6UVDx0ETEcH4D9VG05xxMsTHdvFFBslQL4vOU+0Qw638I9DTyi+Y2vT
 ikqQnDh6ZPBvd6uAbjmKoyAfVm3ywEs9EUku7K3Xhj4O+LuTK4DkoUEd3
 JfE+KM/7/ERLaYRrQELXlh/H2088kjeWGUMpH+SmTiMeuVHE8xqM/JQsY
 5iwl+hKkaggmsd6oF55ECXSBJg8kdr9c9wH8v0YxKIf62ADmX6lilEB4D
 Ny1fFiOZoGufCiPo/XmZVn0qvArDiqerfQJSrYwxdeJiCEcqSTMM8eK0d
 NxhtEXOZIAUpNciKmR6hqXDKW7ZvbsPOgzZreArW8CYusg41Ad8enfJcr Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="318429971"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="318429971"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:38:53 -0800
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="554567205"
Received: from mgherza1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.69])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:38:52 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220310004802.16310-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-7-ville.syrjala@linux.intel.com>
Date: Thu, 10 Mar 2022 11:38:50 +0200
Message-ID: <87pmmuxi39.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915: Polish drrs type enum
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

On Thu, 10 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make the drrs type enum less convoluted.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Might've called it INTEL_DRRS_* but *shrug*.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_bios.c            | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_drrs.c            | 10 +++++-----
>  drivers/gpu/drm/i915/i915_drv.h                      | 12 ++++++------
>  4 files changed, 17 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 93dc32fb3e40..c7afe19dd44a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -257,16 +257,16 @@ parse_panel_options(struct drm_i915_private *i915,
>  	 */
>  	switch (drrs_mode) {
>  	case 0:
> -		i915->vbt.drrs_type =3D STATIC_DRRS_SUPPORT;
> +		i915->vbt.drrs_type =3D DRRS_TYPE_STATIC;
>  		drm_dbg_kms(&i915->drm, "DRRS supported mode is static\n");
>  		break;
>  	case 2:
> -		i915->vbt.drrs_type =3D SEAMLESS_DRRS_SUPPORT;
> +		i915->vbt.drrs_type =3D DRRS_TYPE_SEAMLESS;
>  		drm_dbg_kms(&i915->drm,
>  			    "DRRS supported mode is seamless\n");
>  		break;
>  	default:
> -		i915->vbt.drrs_type =3D DRRS_NOT_SUPPORTED;
> +		i915->vbt.drrs_type =3D DRRS_TYPE_NONE;
>  		drm_dbg_kms(&i915->drm,
>  			    "DRRS not supported (VBT input)\n");
>  		break;
> @@ -740,7 +740,7 @@ parse_driver_features(struct drm_i915_private *i915,
>  		 * driver->drrs_enabled=3Dfalse
>  		 */
>  		if (!driver->drrs_enabled)
> -			i915->vbt.drrs_type =3D DRRS_NOT_SUPPORTED;
> +			i915->vbt.drrs_type =3D DRRS_TYPE_NONE;
>=20=20
>  		i915->vbt.psr.enable =3D driver->psr_enabled;
>  	}
> @@ -769,7 +769,7 @@ parse_power_conservation_features(struct drm_i915_pri=
vate *i915,
>  	 * power->drrs & BIT(panel_type)=3Dfalse
>  	 */
>  	if (!(power->drrs & BIT(panel_type)))
> -		i915->vbt.drrs_type =3D DRRS_NOT_SUPPORTED;
> +		i915->vbt.drrs_type =3D DRRS_TYPE_NONE;
>=20=20
>  	if (bdb->version >=3D 232)
>  		i915->vbt.edp.hobl =3D power->hobl & BIT(panel_type);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 41b81d5dd5f4..28414472110e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1163,7 +1163,7 @@ static void drrs_status_per_crtc(struct seq_file *m,
>  		seq_printf(m, "%s:\n", connector->name);
>=20=20
>  		if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_eDP &&
> -		    drrs->type =3D=3D SEAMLESS_DRRS_SUPPORT)
> +		    drrs->type =3D=3D DRRS_TYPE_SEAMLESS)
>  			supported =3D true;
>=20=20
>  		seq_printf(m, "\tDRRS Supported: %s\n", str_yes_no(supported));
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 5b3711fe0674..7c4a3ecee93a 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -65,7 +65,7 @@ static bool can_enable_drrs(struct intel_connector *con=
nector,
>  		return false;
>=20=20
>  	return connector->panel.downclock_mode &&
> -		i915->drrs.type =3D=3D SEAMLESS_DRRS_SUPPORT;
> +		i915->drrs.type =3D=3D DRRS_TYPE_SEAMLESS;
>  }
>=20=20
>  void
> @@ -155,7 +155,7 @@ static void intel_drrs_set_state(struct drm_i915_priv=
ate *dev_priv,
>  		return;
>  	}
>=20=20
> -	if (dev_priv->drrs.type !=3D SEAMLESS_DRRS_SUPPORT) {
> +	if (dev_priv->drrs.type !=3D DRRS_TYPE_SEAMLESS) {
>  		drm_dbg_kms(&dev_priv->drm, "Only Seamless DRRS supported.\n");
>  		return;
>  	}
> @@ -274,7 +274,7 @@ intel_drrs_update(struct intel_dp *intel_dp,
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>=20=20
> -	if (dev_priv->drrs.type !=3D SEAMLESS_DRRS_SUPPORT)
> +	if (dev_priv->drrs.type !=3D DRRS_TYPE_SEAMLESS)
>  		return;
>=20=20
>  	mutex_lock(&dev_priv->drrs.mutex);
> @@ -329,7 +329,7 @@ static void intel_drrs_frontbuffer_update(struct drm_=
i915_private *dev_priv,
>  	struct drm_crtc *crtc;
>  	enum pipe pipe;
>=20=20
> -	if (dev_priv->drrs.type !=3D SEAMLESS_DRRS_SUPPORT)
> +	if (dev_priv->drrs.type !=3D DRRS_TYPE_SEAMLESS)
>  		return;
>=20=20
>  	cancel_delayed_work(&dev_priv->drrs.work);
> @@ -449,7 +449,7 @@ intel_drrs_init(struct intel_connector *connector,
>  		return NULL;
>  	}
>=20=20
> -	if (dev_priv->vbt.drrs_type !=3D SEAMLESS_DRRS_SUPPORT) {
> +	if (dev_priv->vbt.drrs_type !=3D DRRS_TYPE_SEAMLESS) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "[CONNECTOR:%d:%s] DRRS not supported according to VBT\n",
>  			    connector->base.base.id, connector->base.name);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 020c5f7602a2..0fc5d7e447b9 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -207,10 +207,10 @@ enum drrs_refresh_rate_type {
>  	DRRS_MAX_RR, /* RR count */
>  };
>=20=20
> -enum drrs_support_type {
> -	DRRS_NOT_SUPPORTED =3D 0,
> -	STATIC_DRRS_SUPPORT =3D 1,
> -	SEAMLESS_DRRS_SUPPORT =3D 2
> +enum drrs_type {
> +	DRRS_TYPE_NONE,
> +	DRRS_TYPE_STATIC,
> +	DRRS_TYPE_SEAMLESS,
>  };
>=20=20
>  struct i915_drrs {
> @@ -219,7 +219,7 @@ struct i915_drrs {
>  	struct intel_dp *dp;
>  	unsigned busy_frontbuffer_bits;
>  	enum drrs_refresh_rate_type refresh_rate_type;
> -	enum drrs_support_type type;
> +	enum drrs_type type;
>  };
>=20=20
>  #define QUIRK_LVDS_SSC_DISABLE (1<<1)
> @@ -349,7 +349,7 @@ struct intel_vbt_data {
>  	bool override_afc_startup;
>  	u8 override_afc_startup_val;
>=20=20
> -	enum drrs_support_type drrs_type;
> +	enum drrs_type drrs_type;
>=20=20
>  	struct {
>  		int rate;

--=20
Jani Nikula, Intel Open Source Graphics Center
