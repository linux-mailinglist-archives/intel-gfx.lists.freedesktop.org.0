Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8CA69C1DBD
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:17:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C2D110E9A4;
	Fri,  8 Nov 2024 13:16:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="agfNdd0G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53D9B10E9A4
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 13:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731071818; x=1762607818;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=+hXBO4xxilGC3I7g/RU98rnQLintoqX3xrGi/UVpsXM=;
 b=agfNdd0GWRh4GvjJgl4hNbs9ZOe/JSSSPxlCWJ47B//jCpc47+jiTIcU
 zIrk9+nHHZZTO2bvBW+SRFLqGmAH8AlUixNWZZ57EFq9votyyNVL/qwn+
 +zFF1M9AgEY+17jnwgG3pu0OwoRaiRAM0H54vC77jWFSuBDAVWAocHCFB
 PggrDmWzP3v+4iecQpzYFaPgqInWBhL0QEa4xzsbKUiSOJ8ZgB3kACqZ6
 TvL/4mTTIQ8BTTx4OLuIeMhftHWZeMF9zEI2eGzE8gY+WQIaZJWux1Ai5
 RIjm1z8MMkR5p9IXi7vAmcD/2EI8cXNUr95E9f35qhXpQ3yYv83E8sv90 g==;
X-CSE-ConnectionGUID: 6iyBPaWCTJ+ID8xQhH/BRg==
X-CSE-MsgGUID: AknluSp1Tm+JCYOljdPtbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="56350181"
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="56350181"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:16:58 -0800
X-CSE-ConnectionGUID: xPGkV3PcQMyv/szyRCQVFA==
X-CSE-MsgGUID: jg1kpH2UTwKPIU2TkCGzyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85074507"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.252])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:16:56 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 10/10] drm/i915/crt: Nuke unused crt->connector
In-Reply-To: <20241107161123.16269-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
 <20241107161123.16269-11-ville.syrjala@linux.intel.com>
Date: Fri, 08 Nov 2024 15:16:53 +0200
Message-ID: <875xoxeugq.fsf@intel.com>
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
> crt->connector is never used, nuke it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I'll trust the compiler.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_crt.c | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index b243ab51bdf0..139810ed4baa 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -73,9 +73,6 @@
>=20=20
>  struct intel_crt {
>  	struct intel_encoder base;
> -	/* DPMS state is stored in the connector, which we need in the
> -	 * encoder's enable/disable callbacks */
> -	struct intel_connector *connector;
>  	bool force_hotplug_required;
>  	i915_reg_t adpa_reg;
>  };
> @@ -1067,8 +1064,6 @@ void intel_crt_init(struct intel_display *display)
>=20=20
>  	ddc_pin =3D display->vbt.crt_ddc_pin;
>=20=20
> -	crt->connector =3D connector;
> -
>  	drm_connector_init_with_ddc(display->drm, &connector->base,
>  				    &intel_crt_connector_funcs,
>  				    DRM_MODE_CONNECTOR_VGA,

--=20
Jani Nikula, Intel
