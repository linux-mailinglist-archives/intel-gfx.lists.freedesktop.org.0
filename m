Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C969487610D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 10:39:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39A7810F210;
	Fri,  8 Mar 2024 09:39:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nx5hZ/tS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D88DC10F210
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 09:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709890759; x=1741426759;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=yt3Uz0ojwzP//vWlwPx93ECFn8Um62krVQG1tjkkjd0=;
 b=Nx5hZ/tSIhtge5OgvXoodzLKVhG024n0+t1tt8JHZ2OBX0A49wt+PcFY
 medVbMFBuOSr3fpHbCi2YAci9SQbu5/eVcqb/HofNNwlJbQSoAxwVZAYF
 60Yo1RTHf1ysV6vBrdJuoALtOgzXtNsR2fCIccO5vz0qc5PslV/KXLXgZ
 VxUhqXLNLmHfXPG2Lspd6XozLA1PD1QrLkofRzQpeBpOzqn4hP5YN8xwo
 o2yBEj3c20cBi+B6gvGpOfXQ1b+2lUjQs6CfYLOVi1EaHLWmUJSa2i/lo
 98jybshiv2aH3s1mgsi4qQgA2cIYduFaAAQO/jQ6+e/r5qFhvAEY2EvcW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="16013198"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="16013198"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 01:39:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="10822131"
Received: from unknown (HELO localhost) ([10.252.34.187])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 01:39:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/4] drm/i915: Don't cast away const
In-Reply-To: <20240307151810.24208-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240307151810.24208-1-ville.syrjala@linux.intel.com>
 <20240307151810.24208-3-ville.syrjala@linux.intel.com>
Date: Fri, 08 Mar 2024 11:39:14 +0200
Message-ID: <87edclukot.fsf@intel.com>
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

On Thu, 07 Mar 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The connector state passed to .atomic_get_property() is const.
> We should preserve that when downcasting to our version.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 2bb270f82932..7a77ae3dc394 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -62,7 +62,7 @@ int intel_digital_connector_atomic_get_property(struct =
drm_connector *connector,
>  {
>  	struct drm_device *dev =3D connector->dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct intel_digital_connector_state *intel_conn_state =3D
> +	const struct intel_digital_connector_state *intel_conn_state =3D
>  		to_intel_digital_connector_state(state);
>=20=20
>  	if (property =3D=3D dev_priv->display.properties.force_audio)

--=20
Jani Nikula, Intel
