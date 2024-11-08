Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F3C9C1DB8
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:15:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36DC10E9A0;
	Fri,  8 Nov 2024 13:15:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gQQYWto6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B678210E9A0
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 13:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731071725; x=1762607725;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ZrZUK0t1SrxnFF6ROFtpwf6RGGlq4bgrZ3dL9iPoxz8=;
 b=gQQYWto6EBPCKcWZCdhXoKTBaKc2M6sFbMITDaXAg2YQcNy9OG4y/0iQ
 F+KphSzKD+g9NHd43oiN7zhd/d5NFMU7oYci4wtrvHooI0QAligFeeo3Q
 LsLVxpRBLoPQ1Hi5FDgscrzD7KX2EiOhFBHx1pYFk2Es8dQwkPFVC703Y
 Fd1ETHIIMj4WLVeY7rdi3oeBFxd6IHbFzbkubTV27/6kr7wYDLbAOP9wl
 h28CX2hJwPYG12SdpXUdeFNcIsP1L/FawXEYLru06eKO4ymAc0zLbd9K3
 Oi0EGhookZG26eORECC5OHCYgX1f1Hx7C2Tsvku2LGDbClsOoS16f8R08 g==;
X-CSE-ConnectionGUID: 90luqYf8RemfpjTOvltNwg==
X-CSE-MsgGUID: KntFChx+S32qcVMd6daEJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="33813190"
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="33813190"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:15:25 -0800
X-CSE-ConnectionGUID: fpQNP4BnRJCnC+Uc4uXeIQ==
X-CSE-MsgGUID: xTO0eBa+StyJBIGjcb5pMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85541827"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.252])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:15:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 08/10] drm/i915/crt: Drop pointless drm_device variables
In-Reply-To: <20241107161123.16269-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
 <20241107161123.16269-9-ville.syrjala@linux.intel.com>
Date: Fri, 08 Nov 2024 15:15:20 +0200
Message-ID: <87bjypeujb.fsf@intel.com>
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

On Thu, 07 Nov 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Remove a bunch of pointless 'struct drm_device *dev' local variables.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 0962a239288b..5c3c6bc16a9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -364,8 +364,7 @@ intel_crt_mode_valid(struct drm_connector *connector,
>  		     struct drm_display_mode *mode)
>  {
>  	struct intel_display *display =3D to_intel_display(connector->dev);
> -	struct drm_device *dev =3D connector->dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);

Might've used to_i915(display->drm) but doesn't matter, this will go
away eventually anyway.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  	int max_dotclk =3D display->cdclk.max_dotclk_freq;
>  	enum drm_mode_status status;
>  	int max_clock;
> @@ -490,9 +489,8 @@ static int hsw_crt_compute_config(struct intel_encode=
r *encoder,
>  static bool ilk_crt_detect_hotplug(struct drm_connector *connector)
>  {
>  	struct intel_display *display =3D to_intel_display(connector->dev);
> -	struct drm_device *dev =3D connector->dev;
>  	struct intel_crt *crt =3D intel_attached_crt(to_intel_connector(connect=
or));
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	u32 adpa;
>  	bool ret;
>=20=20
> @@ -541,9 +539,8 @@ static bool ilk_crt_detect_hotplug(struct drm_connect=
or *connector)
>  static bool valleyview_crt_detect_hotplug(struct drm_connector *connecto=
r)
>  {
>  	struct intel_display *display =3D to_intel_display(connector->dev);
> -	struct drm_device *dev =3D connector->dev;
>  	struct intel_crt *crt =3D intel_attached_crt(to_intel_connector(connect=
or));
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	bool reenable_hpd;
>  	u32 adpa;
>  	bool ret;
> @@ -597,8 +594,7 @@ static bool valleyview_crt_detect_hotplug(struct drm_=
connector *connector)
>  static bool intel_crt_detect_hotplug(struct drm_connector *connector)
>  {
>  	struct intel_display *display =3D to_intel_display(connector->dev);
> -	struct drm_device *dev =3D connector->dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	u32 stat;
>  	bool ret =3D false;
>  	int i, tries =3D 0;
> @@ -956,8 +952,7 @@ intel_crt_detect(struct drm_connector *connector,
>  static int intel_crt_get_modes(struct drm_connector *connector)
>  {
>  	struct intel_display *display =3D to_intel_display(connector->dev);
> -	struct drm_device *dev =3D connector->dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>  	struct intel_crt *crt =3D intel_attached_crt(to_intel_connector(connect=
or));
>  	struct intel_encoder *intel_encoder =3D &crt->base;
>  	intel_wakeref_t wakeref;

--=20
Jani Nikula, Intel
