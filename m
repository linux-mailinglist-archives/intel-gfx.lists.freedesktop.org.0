Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5A6622E59
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 15:49:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 576AE10E11F;
	Wed,  9 Nov 2022 14:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D19E10E0FB
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 14:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668005378; x=1699541378;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=x1/lvqgks/z5XyTNTu9NyfZ1O7uMEF3E+thaXber5UQ=;
 b=KNt0pA1A3CseQnMh4cGsonhLF+XNHd460lOjc67FV3GVu0EN+WA9FGjt
 +jd3Aw2PMGx+3kgE/UHZoGm1XwU/Q9bUehg3LBYuQbRstx0hVP3GUHPhp
 BGx3DAk0tVxOaYEq0oLG+Racjd+6R37FCJhz1oPS8v9lFujKwMt57tzad
 bAri/rme7wFPmwmHzfl6JnMKVcs+TFtSdyN+v0mfgjP6kmNFQwQ8urJVS
 SB3OItNrPnC/KPHbd13hPbYAD+TyR3B2fVIlwpuuqHsQefO5DQ1y0SLPf
 CU3UnOQzu3jJHc85wM17gTBg4pI5WJmUr69JEj28YAI8tL5QUXskDHkGM A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="291381872"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="291381872"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:49:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="636764128"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="636764128"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 06:49:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221109111649.23062-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221109111649.23062-1-ville.syrjala@linux.intel.com>
 <20221109111649.23062-2-ville.syrjala@linux.intel.com>
Date: Wed, 09 Nov 2022 16:49:34 +0200
Message-ID: <87a6506v41.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Introduce
 intel_panel_init_alloc()
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

On Wed, 09 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Introduce a plaec where we can initialize connector->panel

*place

> after it's been allocated. We already have a intel_panel_init()
> so had to get creative with the name and came up with
> intel_panel_init_alloc().

A bit contrived, but no big deal.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_connector.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_panel.c     | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_panel.h     | 1 +
>  3 files changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu=
/drm/i915/display/intel_connector.c
> index 6205ddd3ded0..562da3b741e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.c
> +++ b/drivers/gpu/drm/i915/display/intel_connector.c
> @@ -54,7 +54,7 @@ int intel_connector_init(struct intel_connector *connec=
tor)
>  	__drm_atomic_helper_connector_reset(&connector->base,
>  					    &conn_state->base);
>=20=20
> -	INIT_LIST_HEAD(&connector->panel.fixed_modes);
> +	intel_panel_init_alloc(connector);
>=20=20
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 69ce77711b7c..8e683ab75594 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -660,6 +660,13 @@ intel_panel_mode_valid(struct intel_connector *conne=
ctor,
>  	return MODE_OK;
>  }
>=20=20
> +void intel_panel_init_alloc(struct intel_connector *connector)
> +{
> +	struct intel_panel *panel =3D &connector->panel;
> +
> +	INIT_LIST_HEAD(&panel->fixed_modes);
> +}
> +
>  int intel_panel_init(struct intel_connector *connector)
>  {
>  	struct intel_panel *panel =3D &connector->panel;
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 5c5b5b7f95b6..4b51e1c51da6 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -18,6 +18,7 @@ struct intel_connector;
>  struct intel_crtc_state;
>  struct intel_encoder;
>=20=20
> +void intel_panel_init_alloc(struct intel_connector *connector);
>  int intel_panel_init(struct intel_connector *connector);
>  void intel_panel_fini(struct intel_connector *connector);
>  enum drm_connector_status

--=20
Jani Nikula, Intel Open Source Graphics Center
