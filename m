Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 868D5A34E36
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 20:11:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A117810E0EB;
	Thu, 13 Feb 2025 19:11:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XtIYKqhn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB7DB10E0EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 19:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739473899; x=1771009899;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=L4hSPELenUP4EJM6nepppl3xIZQhANHHxGr8qUC4E+k=;
 b=XtIYKqhnN9LRYli1pdh+HEZQChs5i/BRfGytNWsxZA/RVnQH2Baij+3X
 T4mRbnbOGbrSRqUOhmqp4tk8ZQdVyWDLWzLnklUsTSdNUtlE2eZvHu9+j
 zV+p7bflsPzGicfGroDFo+zwaG6bvD9wIJzEjrHdiP0x+RFISkOFPOqbJ
 N6lW002+7R075t1WfR/ok+TLe6BksAw2DuFlXPd9fSlVGmoqrudslkgJY
 GHEQbrvxT/Ua/31Zsx8pdL9ylTRpDChVWEI1dmUa7ERhbb3Tdrfg3zob4
 JVmTsgn6GE6IGAX7Pnc3x88xNbfWi0VVLJD900i6TpMCcUP0i0YJusn8T A==;
X-CSE-ConnectionGUID: 6+GHKtYqS/uHr6YPtqMkhw==
X-CSE-MsgGUID: Txa6vTDBS+yaYnZjMzkCuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57737187"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57737187"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:11:38 -0800
X-CSE-ConnectionGUID: k5+1uub6T3ek9w7c1kBMRw==
X-CSE-MsgGUID: tWX9l0XIRlaWzbmR1kv/Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113104244"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:11:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/12] drm/i915: Move modeset_retry stuff into
 intel_connector.c
In-Reply-To: <20250213150220.13580-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
 <20250213150220.13580-2-ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2025 21:11:32 +0200
Message-ID: <87jz9ty80r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 13 Feb 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Most the modeset retry stuff look to be entirely generic, and

Nitpick, Most of... looks...

> so there doesn't seem to any reason to keep it in intel_dp.c.
> Move the generic bits into intel_connector.c.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_connector.c    | 39 ++++++++++++++++
>  .../gpu/drm/i915/display/intel_connector.h    |  3 ++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 44 ++-----------------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
>  4 files changed, 46 insertions(+), 42 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu=
/drm/i915/display/intel_connector.c
> index c65887870ddc..4f54c9249a84 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.c
> +++ b/drivers/gpu/drm/i915/display/intel_connector.c
> @@ -28,6 +28,7 @@
>=20=20
>  #include <drm/drm_atomic_helper.h>
>  #include <drm/drm_edid.h>
> +#include <drm/drm_probe_helper.h>
>=20=20
>  #include "i915_drv.h"
>  #include "intel_backlight.h"
> @@ -37,6 +38,44 @@
>  #include "intel_hdcp.h"
>  #include "intel_panel.h"
>=20=20
> +static void intel_connector_modeset_retry_work_fn(struct work_struct *wo=
rk)
> +{
> +	struct intel_connector *connector =3D container_of(work, typeof(*connec=
tor),
> +							 modeset_retry_work);
> +	struct intel_display *display =3D to_intel_display(connector);
> +
> +	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n", connector->base.base.i=
d,
> +		    connector->base.name);
> +
> +	/* Grab the locks before changing connector property*/
> +	mutex_lock(&display->drm->mode_config.mutex);
> +	/* Set connector link status to BAD and send a Uevent to notify
> +	 * userspace to do a modeset.
> +	 */
> +	drm_connector_set_link_status_property(&connector->base,
> +					       DRM_MODE_LINK_STATUS_BAD);
> +	mutex_unlock(&display->drm->mode_config.mutex);
> +	/* Send Hotplug uevent so userspace can reprobe */
> +	drm_kms_helper_connector_hotplug_event(&connector->base);
> +
> +	drm_connector_put(&connector->base);
> +}
> +
> +void intel_connector_queue_modeset_retry_work(struct intel_connector *co=
nnector)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +
> +	drm_connector_get(&connector->base);
> +	if (!queue_work(i915->unordered_wq, &connector->modeset_retry_work))
> +		drm_connector_put(&connector->base);
> +}
> +
> +void intel_connector_init_modeset_retry_work(struct intel_connector *con=
nector)
> +{
> +	INIT_WORK(&connector->modeset_retry_work,
> +		  intel_connector_modeset_retry_work_fn);
> +}
> +
>  int intel_connector_init(struct intel_connector *connector)
>  {
>  	struct intel_digital_connector_state *conn_state;
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu=
/drm/i915/display/intel_connector.h
> index bafde3f11ff4..10a1779201ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.h
> +++ b/drivers/gpu/drm/i915/display/intel_connector.h
> @@ -33,5 +33,8 @@ void intel_attach_aspect_ratio_property(struct drm_conn=
ector *connector);
>  void intel_attach_hdmi_colorspace_property(struct drm_connector *connect=
or);
>  void intel_attach_dp_colorspace_property(struct drm_connector *connector=
);
>  void intel_attach_scaling_mode_property(struct drm_connector *connector);
> +void intel_connector_init_modeset_retry_work(struct intel_connector *con=
nector);
> +void intel_connector_queue_modeset_retry_work(struct intel_connector *co=
nnector);
> +void intel_connector_cancel_modeset_retry_work(struct intel_connector *c=
onnector);

The last line belongs in patch 3. Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>=20=20
>  #endif /* __INTEL_CONNECTOR_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 29970baaf03e..8bcf400b0239 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3056,15 +3056,6 @@ intel_dp_audio_compute_config(struct intel_encoder=
 *encoder,
>  					intel_dp_is_uhbr(pipe_config);
>  }
>=20=20
> -static void intel_dp_queue_modeset_retry_work(struct intel_connector *co=
nnector)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> -
> -	drm_connector_get(&connector->base);
> -	if (!queue_work(i915->unordered_wq, &connector->modeset_retry_work))
> -		drm_connector_put(&connector->base);
> -}
> -
>  void
>  intel_dp_queue_modeset_retry_for_link(struct intel_atomic_state *state,
>  				      struct intel_encoder *encoder,
> @@ -3081,7 +3072,7 @@ intel_dp_queue_modeset_retry_for_link(struct intel_=
atomic_state *state,
>  	intel_dp->needs_modeset_retry =3D true;
>=20=20
>  	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
> -		intel_dp_queue_modeset_retry_work(intel_dp->attached_connector);
> +		intel_connector_queue_modeset_retry_work(intel_dp->attached_connector);
>=20=20
>  		return;
>  	}
> @@ -3091,7 +3082,7 @@ intel_dp_queue_modeset_retry_for_link(struct intel_=
atomic_state *state,
>  			continue;
>=20=20
>  		if (connector->mst_port =3D=3D intel_dp)
> -			intel_dp_queue_modeset_retry_work(connector);
> +			intel_connector_queue_modeset_retry_work(connector);
>  	}
>  }
>=20=20
> @@ -6485,35 +6476,6 @@ static bool intel_edp_init_connector(struct intel_=
dp *intel_dp,
>  	return false;
>  }
>=20=20
> -static void intel_dp_modeset_retry_work_fn(struct work_struct *work)
> -{
> -	struct intel_connector *connector =3D container_of(work, typeof(*connec=
tor),
> -							 modeset_retry_work);
> -	struct intel_display *display =3D to_intel_display(connector);
> -
> -	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n", connector->base.base.i=
d,
> -		    connector->base.name);
> -
> -	/* Grab the locks before changing connector property*/
> -	mutex_lock(&display->drm->mode_config.mutex);
> -	/* Set connector link status to BAD and send a Uevent to notify
> -	 * userspace to do a modeset.
> -	 */
> -	drm_connector_set_link_status_property(&connector->base,
> -					       DRM_MODE_LINK_STATUS_BAD);
> -	mutex_unlock(&display->drm->mode_config.mutex);
> -	/* Send Hotplug uevent so userspace can reprobe */
> -	drm_kms_helper_connector_hotplug_event(&connector->base);
> -
> -	drm_connector_put(&connector->base);
> -}
> -
> -void intel_dp_init_modeset_retry_work(struct intel_connector *connector)
> -{
> -	INIT_WORK(&connector->modeset_retry_work,
> -		  intel_dp_modeset_retry_work_fn);
> -}
> -
>  bool
>  intel_dp_init_connector(struct intel_digital_port *dig_port,
>  			struct intel_connector *connector)
> @@ -6526,7 +6488,7 @@ intel_dp_init_connector(struct intel_digital_port *=
dig_port,
>  	int type;
>=20=20
>  	/* Initialize the work for modeset in case of link train failure */
> -	intel_dp_init_modeset_retry_work(connector);
> +	intel_connector_init_modeset_retry_work(connector);
>=20=20
>  	if (drm_WARN(dev, dig_port->max_lanes < 1,
>  		     "Not enough lanes (%d) for DP on [ENCODER:%d:%s]\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 73a0a0f9b3d0..0044b2a9a16b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1747,7 +1747,7 @@ mst_topology_add_connector(struct drm_dp_mst_topolo=
gy_mgr *mgr,
>  	connector->port =3D port;
>  	drm_dp_mst_get_port_malloc(port);
>=20=20
> -	intel_dp_init_modeset_retry_work(connector);
> +	intel_connector_init_modeset_retry_work(connector);
>=20=20
>  	ret =3D drm_connector_dynamic_init(display->drm, &connector->base, &mst=
_connector_funcs,
>  					 DRM_MODE_CONNECTOR_DisplayPort, NULL);

--=20
Jani Nikula, Intel
