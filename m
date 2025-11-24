Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA77C805D2
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Nov 2025 13:09:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6C9510E22B;
	Mon, 24 Nov 2025 12:09:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iGKEg5Ko";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6553D10E22B;
 Mon, 24 Nov 2025 12:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763986148; x=1795522148;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Oe25ajcSL4bXFOvCt9+DEW+pdvYpe2Dbz1uXlopA8Tc=;
 b=iGKEg5KoCV4yNawVCZ8Gmilg1fAXlAq0i5LnVZSSzwqzmWf0w6janK6a
 PdnXuMaxvXbnftDkpAxQXedbF9CK09m3ucflV+2xzOPfEwcXR1WIhpy4k
 C+OY11LZR0Sci/P/xrEMSkSyan3Dt0jUBP/mf1HPNJmt2GjrXePL3c+Iv
 WAIH5VL/S64oRd7qEZnGvbv/lJOnsZaYijdWJiix6dv47X9ZEWyUJwSdG
 TJfs0BYPi5cXt6UrTzsWI4rKuaF9BB+xF0o9EQj2w5n06z7TuHw6U/1r5
 LHzdU36oIju0tPclmUCljyCaxDqtA7Alh6RNLNbxHhoee9hz/UW/Nd5YV g==;
X-CSE-ConnectionGUID: YCw94i4VT1SW2ehpo2Feyg==
X-CSE-MsgGUID: YvtG4/PvQY+3XB0f4FsrMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="66143418"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="66143418"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 04:09:08 -0800
X-CSE-ConnectionGUID: e3An/QKQQyKUalLRE3Bbiw==
X-CSE-MsgGUID: tzVzYCjcS2Sf9Hqvr+pC2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="215658881"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.177])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 04:09:06 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915: Enable DDI A/B AUX interrupts on LNL+
In-Reply-To: <20251119185310.10428-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251119185310.10428-1-ville.syrjala@linux.intel.com>
 <20251119185310.10428-2-ville.syrjala@linux.intel.com>
Date: Mon, 24 Nov 2025 14:09:03 +0200
Message-ID: <0ee681692a65af21f258985666ed245f1da18169@intel.com>
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

On Wed, 19 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Apparently the DDI A/B AUX interrupts move onto the PICA side
> on LNL. Unmask them properly so that we actually get the
> interrupts. The interrupt handler was already trying to handle
> them despite the interrupts remaining masked.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 12 +++++++++++-
>  drivers/gpu/drm/i915/display/intel_display_irq.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c |  5 +----
>  3 files changed, 14 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index d2933ac3acb4..9adeebb376b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -2410,10 +2410,20 @@ void gen8_de_irq_postinstall(struct intel_display=
 *display)
>  	}
>  }
>=20=20
> +u32 xelpdp_pica_aux_mask(struct intel_display *display)
> +{
> +	u32 mask =3D XELPDP_AUX_TC_MASK;
> +
> +	if (DISPLAY_VER(display) >=3D 20)
> +		mask |=3D XE2LPD_AUX_DDI_MASK;
> +
> +	return mask;
> +}
> +
>  static void mtp_irq_postinstall(struct intel_display *display)
>  {
>  	u32 sde_mask =3D SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
> -	u32 de_hpd_mask =3D XELPDP_AUX_TC_MASK;
> +	u32 de_hpd_mask =3D xelpdp_pica_aux_mask(display);
>  	u32 de_hpd_enables =3D de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
>  			     XELPDP_TBT_HOTPLUG_MASK;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/g=
pu/drm/i915/display/intel_display_irq.h
> index 84acd31948cf..b25d180254d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -16,6 +16,8 @@ struct drm_printer;
>  struct intel_display;
>  struct intel_display_irq_snapshot;
>=20=20
> +u32 xelpdp_pica_aux_mask(struct intel_display *display);
> +
>  void valleyview_enable_display_irqs(struct intel_display *display);
>  void valleyview_disable_display_irqs(struct intel_display *display);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/g=
pu/drm/i915/display/intel_hotplug_irq.c
> index 46c47b3d6f42..82c39e4ffa37 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -519,12 +519,9 @@ void xelpdp_pica_irq_handler(struct intel_display *d=
isplay, u32 iir)
>  {
>  	enum hpd_pin pin;
>  	u32 hotplug_trigger =3D iir & (XELPDP_DP_ALT_HOTPLUG_MASK | XELPDP_TBT_=
HOTPLUG_MASK);
> -	u32 trigger_aux =3D iir & XELPDP_AUX_TC_MASK;
> +	u32 trigger_aux =3D iir & xelpdp_pica_aux_mask(display);
>  	u32 pin_mask =3D 0, long_mask =3D 0;
>=20=20
> -	if (DISPLAY_VER(display) >=3D 20)
> -		trigger_aux |=3D iir & XE2LPD_AUX_DDI_MASK;
> -
>  	for (pin =3D HPD_PORT_TC1; pin <=3D HPD_PORT_TC4; pin++) {
>  		u32 val;

--=20
Jani Nikula, Intel
