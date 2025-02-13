Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3362AA34E37
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 20:12:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D453110E0F8;
	Thu, 13 Feb 2025 19:12:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L/QXsXSz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 195BC10E0F8
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 19:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739473923; x=1771009923;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=hlSlg1zfhILWA9YjmUJ0C7iQqsLIIbBTx+sTm1zhaWM=;
 b=L/QXsXSztbxZLG0hUS97uFr1OQOpkAVVkoU5CBiaM23RNIhg8CXreSbL
 GGX2XuLg3viJ7mnbYTSC/2OFsxJSMtKXb3et2inFa1Q/mgrgkwVLZndj0
 O5CVl6mYv5c0jofPmq/Ijye3uHu0FrcU0KYtOTW6Ifn8oBN5If/bFQIKn
 7TY+SCAFrEWGHarBSadGN8T+aFQSTNomZnKI+SCeLiPvh3mR2JPkIk48s
 7eW9rPMZgupxbWtsWlo1FT0gZ2d4T9uDKf62j8JXqHWQWWGUYl/rEDRg9
 G3hYt7eQNNkW8njMdT0r94VyU4Y5AZmRFy1U+FGyD5oVeICE5v1NIWREv A==;
X-CSE-ConnectionGUID: tvmAbfuLQQunO/m6tIOYFg==
X-CSE-MsgGUID: CIG5ukdzTUeZL8veoDLO2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="50822025"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50822025"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:12:02 -0800
X-CSE-ConnectionGUID: W539zoUsR/q/HMEe2UpiQA==
X-CSE-MsgGUID: oJMhlQjtTKKCaW3XXWuTvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113889475"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:12:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 02/12] drm/i915: Always initialize
 connector->modeset_retry_work
In-Reply-To: <20250213150220.13580-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
 <20250213150220.13580-3-ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2025 21:11:57 +0200
Message-ID: <87h64xy802.fsf@intel.com>
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
> Since we have all the necessary bits in intel_connector.c might
> as well always initialize the modeset_retry_work for every connector.
> Avoids yet another init function you have to remember to call.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_connector.c | 9 +++------
>  drivers/gpu/drm/i915/display/intel_connector.h | 1 -
>  drivers/gpu/drm/i915/display/intel_display.c   | 3 +--
>  drivers/gpu/drm/i915/display/intel_dp.c        | 3 ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c    | 2 --
>  5 files changed, 4 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu=
/drm/i915/display/intel_connector.c
> index 4f54c9249a84..b1240be2ec6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.c
> +++ b/drivers/gpu/drm/i915/display/intel_connector.c
> @@ -70,12 +70,6 @@ void intel_connector_queue_modeset_retry_work(struct i=
ntel_connector *connector)
>  		drm_connector_put(&connector->base);
>  }
>=20=20
> -void intel_connector_init_modeset_retry_work(struct intel_connector *con=
nector)
> -{
> -	INIT_WORK(&connector->modeset_retry_work,
> -		  intel_connector_modeset_retry_work_fn);
> -}
> -
>  int intel_connector_init(struct intel_connector *connector)
>  {
>  	struct intel_digital_connector_state *conn_state;
> @@ -95,6 +89,9 @@ int intel_connector_init(struct intel_connector *connec=
tor)
>=20=20
>  	intel_panel_init_alloc(connector);
>=20=20
> +	INIT_WORK(&connector->modeset_retry_work,
> +		  intel_connector_modeset_retry_work_fn);
> +
>  	return 0;
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu=
/drm/i915/display/intel_connector.h
> index 10a1779201ed..aafb25a814fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.h
> +++ b/drivers/gpu/drm/i915/display/intel_connector.h
> @@ -33,7 +33,6 @@ void intel_attach_aspect_ratio_property(struct drm_conn=
ector *connector);
>  void intel_attach_hdmi_colorspace_property(struct drm_connector *connect=
or);
>  void intel_attach_dp_colorspace_property(struct drm_connector *connector=
);
>  void intel_attach_scaling_mode_property(struct drm_connector *connector);
> -void intel_connector_init_modeset_retry_work(struct intel_connector *con=
nector);
>  void intel_connector_queue_modeset_retry_work(struct intel_connector *co=
nnector);
>  void intel_connector_cancel_modeset_retry_work(struct intel_connector *c=
onnector);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index cc51576353fe..858886eea6cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8787,8 +8787,7 @@ void intel_hpd_poll_fini(struct drm_i915_private *i=
915)
>  	/* Kill all the work that may have been queued by hpd. */
>  	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
>  	for_each_intel_connector_iter(connector, &conn_iter) {
> -		if (connector->modeset_retry_work.func &&
> -		    cancel_work_sync(&connector->modeset_retry_work))
> +		if (cancel_work_sync(&connector->modeset_retry_work))
>  			drm_connector_put(&connector->base);
>  		if (connector->hdcp.shim) {
>  			cancel_delayed_work_sync(&connector->hdcp.check_work);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 8bcf400b0239..03ca2e02ab02 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6487,9 +6487,6 @@ intel_dp_init_connector(struct intel_digital_port *=
dig_port,
>  	enum port port =3D encoder->port;
>  	int type;
>=20=20
> -	/* Initialize the work for modeset in case of link train failure */
> -	intel_connector_init_modeset_retry_work(connector);
> -
>  	if (drm_WARN(dev, dig_port->max_lanes < 1,
>  		     "Not enough lanes (%d) for DP on [ENCODER:%d:%s]\n",
>  		     dig_port->max_lanes, encoder->base.base.id,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 0044b2a9a16b..167e4a70ab12 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1747,8 +1747,6 @@ mst_topology_add_connector(struct drm_dp_mst_topolo=
gy_mgr *mgr,
>  	connector->port =3D port;
>  	drm_dp_mst_get_port_malloc(port);
>=20=20
> -	intel_connector_init_modeset_retry_work(connector);
> -
>  	ret =3D drm_connector_dynamic_init(display->drm, &connector->base, &mst=
_connector_funcs,
>  					 DRM_MODE_CONNECTOR_DisplayPort, NULL);
>  	if (ret)

--=20
Jani Nikula, Intel
