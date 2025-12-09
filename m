Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 517E2CAFA1C
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:27:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA89910E4EF;
	Tue,  9 Dec 2025 10:27:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kLtmbU3M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E8610E4F4;
 Tue,  9 Dec 2025 10:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765276052; x=1796812052;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=LkimtB4pt32awQd4VA8JIxnHSSNazIZYepDgs9Kr+Vk=;
 b=kLtmbU3MzozcsfDbimET2hqLI22Dn/n26hkDf7LlqDR5raanmsNIviJ2
 XoFTFNi2BEUGqlfyeFZUUjrdi/qqs6929f5SOllc4oldGr4fqOQn8JSuc
 tpMg412lihLTJcu2JHu9nmxU8P4bsBGR21cBi0cFruQ8ynl1m+5awz/J7
 q64S0QpLX+rBPtigGIMEIpc+CrRe8B/pz41wKOOpwbWE6+gXtLKKMufVM
 wnVG9Hyk+5XkaylTbPiVmqTqVEIF66fyklgxdhZr5KCc1cdaWUnAFwd2D
 VjHWZJG+y14kNG+SizQhrA4Ss8VpnlwlhBHG+SxeTVJEPip6mvRx3RYXb Q==;
X-CSE-ConnectionGUID: tA8vGHBXSH6oiGg/SWN+EA==
X-CSE-MsgGUID: 8ilmXp0cQR6i4NYMk0rvpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="89882620"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="89882620"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:27:29 -0800
X-CSE-ConnectionGUID: rq8B7l9jSWunMMGVroU47w==
X-CSE-MsgGUID: gxAvWATiShCGQgOby1f6HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="226859763"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:27:27 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 03/19] drm/i915/power: Remove i915_power_well_desc::has_vga
In-Reply-To: <20251208182637.334-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-4-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:27:23 +0200
Message-ID: <0b6b86ffbf0fda49957f936513111e1579968e48@intel.com>
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

On Mon, 08 Dec 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We no longer have any need for the has_vga flag in the
> display power well descriptor. Get rid of it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_power_map.c  | 13 -------------
>  .../gpu/drm/i915/display/intel_display_power_well.c |  5 ++---
>  .../gpu/drm/i915/display/intel_display_power_well.h |  2 --
>  3 files changed, 2 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/dri=
vers/gpu/drm/i915/display/intel_display_power_map.c
> index 9b49952994ce..638d971a3a6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -112,7 +112,6 @@ static const struct i915_power_well_desc hsw_power_we=
lls_main[] =3D {
>  				.id =3D HSW_DISP_PW_GLOBAL),
>  		),
>  		.ops =3D &hsw_power_well_ops,
> -		.has_vga =3D true,
>  	},
>  };
>=20=20
> @@ -146,7 +145,6 @@ static const struct i915_power_well_desc bdw_power_we=
lls_main[] =3D {
>  				.id =3D HSW_DISP_PW_GLOBAL),
>  		),
>  		.ops =3D &hsw_power_well_ops,
> -		.has_vga =3D true,
>  		.irq_pipe_mask =3D BIT(PIPE_B) | BIT(PIPE_C),
>  	},
>  };
> @@ -390,7 +388,6 @@ static const struct i915_power_well_desc skl_power_we=
lls_main[] =3D {
>  				.id =3D SKL_DISP_PW_2),
>  		),
>  		.ops =3D &hsw_power_well_ops,
> -		.has_vga =3D true,
>  		.irq_pipe_mask =3D BIT(PIPE_B) | BIT(PIPE_C),
>  		.has_fuses =3D true,
>  	}, {
> @@ -469,7 +466,6 @@ static const struct i915_power_well_desc bxt_power_we=
lls_main[] =3D {
>  				.id =3D SKL_DISP_PW_2),
>  		),
>  		.ops =3D &hsw_power_well_ops,
> -		.has_vga =3D true,
>  		.irq_pipe_mask =3D BIT(PIPE_B) | BIT(PIPE_C),
>  		.has_fuses =3D true,
>  	}, {
> @@ -572,7 +568,6 @@ static const struct i915_power_well_desc glk_power_we=
lls_main[] =3D {
>  				.id =3D SKL_DISP_PW_2),
>  		),
>  		.ops =3D &hsw_power_well_ops,
> -		.has_vga =3D true,
>  		.irq_pipe_mask =3D BIT(PIPE_B) | BIT(PIPE_C),
>  		.has_fuses =3D true,
>  	}, {
> @@ -748,7 +743,6 @@ static const struct i915_power_well_desc icl_power_we=
lls_main[] =3D {
>  				.id =3D ICL_DISP_PW_3),
>  		),
>  		.ops =3D &hsw_power_well_ops,
> -		.has_vga =3D true,
>  		.irq_pipe_mask =3D BIT(PIPE_B),
>  		.has_fuses =3D true,
>  	}, {
> @@ -914,7 +908,6 @@ static const struct i915_power_well_desc tgl_power_we=
lls_main[] =3D {
>  				.id =3D ICL_DISP_PW_3),
>  		),
>  		.ops =3D &hsw_power_well_ops,
> -		.has_vga =3D true,
>  		.irq_pipe_mask =3D BIT(PIPE_B),
>  		.has_fuses =3D true,
>  	}, {
> @@ -1071,7 +1064,6 @@ static const struct i915_power_well_desc rkl_power_=
wells_main[] =3D {
>  		),
>  		.ops =3D &hsw_power_well_ops,
>  		.irq_pipe_mask =3D BIT(PIPE_B),
> -		.has_vga =3D true,
>  		.has_fuses =3D true,
>  	}, {
>  		.instances =3D &I915_PW_INSTANCES(
> @@ -1166,7 +1158,6 @@ static const struct i915_power_well_desc dg1_power_=
wells_main[] =3D {
>  		),
>  		.ops =3D &hsw_power_well_ops,
>  		.irq_pipe_mask =3D BIT(PIPE_B),
> -		.has_vga =3D true,
>  		.has_fuses =3D true,
>  	}, {
>  		.instances =3D &I915_PW_INSTANCES(
> @@ -1325,7 +1316,6 @@ static const struct i915_power_well_desc xelpd_powe=
r_wells_main[] =3D {
>  				.id =3D SKL_DISP_PW_2),
>  		),
>  		.ops =3D &hsw_power_well_ops,
> -		.has_vga =3D true,
>  		.has_fuses =3D true,
>  	}, {
>  		.instances =3D &I915_PW_INSTANCES(
> @@ -1482,7 +1472,6 @@ static const struct i915_power_well_desc xelpdp_pow=
er_wells_main[] =3D {
>  				.id =3D SKL_DISP_PW_2),
>  		),
>  		.ops =3D &hsw_power_well_ops,
> -		.has_vga =3D true,
>  		.has_fuses =3D true,
>  	}, {
>  		.instances =3D &I915_PW_INSTANCES(
> @@ -1649,7 +1638,6 @@ static const struct i915_power_well_desc xe3lpd_pow=
er_wells_main[] =3D {
>  				.id =3D SKL_DISP_PW_2),
>  		),
>  		.ops =3D &hsw_power_well_ops,
> -		.has_vga =3D true,
>  		.has_fuses =3D true,
>  	}, {
>  		.instances =3D &I915_PW_INSTANCES(
> @@ -1722,7 +1710,6 @@ static const struct i915_power_well_desc wcl_power_=
wells_main[] =3D {
>  				.id =3D SKL_DISP_PW_2),
>  		),
>  		.ops =3D &hsw_power_well_ops,
> -		.has_vga =3D true,
>  		.has_fuses =3D true,
>  	}, {
>  		.instances =3D &I915_PW_INSTANCES(
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/dr=
ivers/gpu/drm/i915/display/intel_display_power_well.c
> index 52b20118ace6..68f293c3ac01 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -202,7 +202,7 @@ int intel_power_well_refcount(struct i915_power_well =
*power_well)
>   * requesting it to be enabled.
>   */
>  static void hsw_power_well_post_enable(struct intel_display *display,
> -				       u8 irq_pipe_mask, bool has_vga)
> +				       u8 irq_pipe_mask)
>  {
>  	if (irq_pipe_mask)
>  		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
> @@ -415,8 +415,7 @@ static void hsw_power_well_enable(struct intel_displa=
y *display,
>  	}
>=20=20
>  	hsw_power_well_post_enable(display,
> -				   power_well->desc->irq_pipe_mask,
> -				   power_well->desc->has_vga);
> +				   power_well->desc->irq_pipe_mask);
>  }
>=20=20
>  static void hsw_power_well_disable(struct intel_display *display,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/dr=
ivers/gpu/drm/i915/display/intel_display_power_well.h
> index ec8e508d0593..8f5524da2d06 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -103,8 +103,6 @@ struct i915_power_well_desc {
>  	 * the well enabled.
>  	 */
>  	u16 fixed_enable_delay:1;
> -	/* The pw is backing the VGA functionality */
> -	u16 has_vga:1;
>  	u16 has_fuses:1;
>  	/*
>  	 * The pw is for an ICL+ TypeC PHY port in

--=20
Jani Nikula, Intel
