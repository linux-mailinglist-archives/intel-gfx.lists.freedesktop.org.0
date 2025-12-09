Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9AFCAFAF7
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 11:52:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 710E010E505;
	Tue,  9 Dec 2025 10:52:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xw412yuv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FD1D10E504;
 Tue,  9 Dec 2025 10:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765277533; x=1796813533;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=i4f5m0Uf/3l7e9MBwU5PN9K2S4CyadWhFoFyMc78ydk=;
 b=Xw412yuvBbn2FExZmMjTjjPnOEI2/+KzKRe+0KG8eW8oZoTVjD7aHM+C
 uWMpJ31Kg80WOPgc+YJ7PioCYXXMwzKUlZS12ew6DpfpfWyR/FFTmGNKA
 RbXmHpxvjO9pkV24kzRVe5sNE4ewcO6SzNuWRys2Hat0ageo2TGXXXzFz
 DWtDVcvcI41F0qq5GwEDxAeJ4hxyPtsFB7DYHz2lj0SSYbAbsMiGLZY90
 6Is0F4JJwArlPAxneRBrAHN1vBROdqpwrxo7oIb/3oSNTEu3GxG9ypBXp
 3VO7H/uJ7GTUTP58PzLnUSl0halN64E7iM9ZVIzlKANQJyXlhbhsgRTMM A==;
X-CSE-ConnectionGUID: fQBAnOODSc2S/ze4kuGuoQ==
X-CSE-MsgGUID: MMt5GOa2Q6ei0puiCBtvfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="66412698"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="66412698"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:52:12 -0800
X-CSE-ConnectionGUID: dRJCU6T0TSa9E6ROc9mlrw==
X-CSE-MsgGUID: 4anRQerVTxSZaVWdlnGgNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="201117498"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.154])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 02:52:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 12/19] drm/i915/vga: Introduce intel_vga_{read,write}()
In-Reply-To: <20251208182637.334-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
 <20251208182637.334-13-ville.syrjala@linux.intel.com>
Date: Tue, 09 Dec 2025 12:52:07 +0200
Message-ID: <d19af77c05c8e56ba3d450e21f5e77379ed9e51f@intel.com>
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
> VGA register are rather special since they either get accessed
> via the global IO addresses, or possibly through MMIO on
> pre-g4x platforms. Wrap all VGA register accesses in
> intel_vga_{read,write}() to make it obvious where they get
> accessed.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crt.c      |  6 +++--
>  drivers/gpu/drm/i915/display/intel_crt_regs.h |  2 --
>  drivers/gpu/drm/i915/display/intel_vga.c      | 27 +++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_vga.h      |  3 +++
>  4 files changed, 29 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 5f9a03877ea9..dedc26f6a2b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -33,6 +33,7 @@
>  #include <drm/drm_edid.h>
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
> +#include <video/vga.h>
>=20=20
>  #include "intel_connector.h"
>  #include "intel_crt.h"
> @@ -55,6 +56,7 @@
>  #include "intel_pch_display.h"
>  #include "intel_pch_refclk.h"
>  #include "intel_pfit.h"
> +#include "intel_vga.h"
>=20=20
>  /* Here's the desired hotplug mode */
>  #define ADPA_HOTPLUG_BITS (ADPA_CRT_HOTPLUG_ENABLE |			\
> @@ -736,7 +738,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pip=
e pipe)
>  		 * border color for Color info.
>  		 */
>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(display, pipe));
> -		st00 =3D intel_de_read8(display, _VGA_MSR_WRITE);
> +		st00 =3D intel_vga_read(display, VGA_MIS_W, true);
>  		status =3D ((st00 & (1 << 4)) !=3D 0) ?
>  			connector_status_connected :
>  			connector_status_disconnected;
> @@ -784,7 +786,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pip=
e pipe)
>  		do {
>  			count++;
>  			/* Read the ST00 VGA status register */
> -			st00 =3D intel_de_read8(display, _VGA_MSR_WRITE);
> +			st00 =3D intel_vga_read(display, VGA_MIS_W, true);
>  			if (st00 & (1 << 4))
>  				detect++;
>  		} while ((intel_de_read(display, PIPEDSL(display, pipe)) =3D=3D dsl));
> diff --git a/drivers/gpu/drm/i915/display/intel_crt_regs.h b/drivers/gpu/=
drm/i915/display/intel_crt_regs.h
> index 571a67ae9afa..9a93020b9a7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_crt_regs.h
> @@ -45,6 +45,4 @@
>  #define   ADPA_VSYNC_ACTIVE_HIGH		REG_BIT(4)
>  #define   ADPA_HSYNC_ACTIVE_HIGH		REG_BIT(3)
>=20=20
> -#define _VGA_MSR_WRITE _MMIO(0x3c2)
> -
>  #endif /* __INTEL_CRT_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index e51451966f72..c1942520c765 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -140,6 +140,22 @@ static void intel_vga_put(struct intel_display *disp=
lay, bool io_decode)
>  		vga_put(pdev, VGA_RSRC_LEGACY_IO);
>  }
>=20=20
> +u8 intel_vga_read(struct intel_display *display, u16 reg, bool mmio)
> +{
> +	if (mmio)
> +		return intel_de_read8(display, _MMIO(reg));
> +	else
> +		return inb(reg);
> +}
> +
> +static void intel_vga_write(struct intel_display *display, u16 reg, u8 v=
al, bool mmio)
> +{
> +	if (mmio)
> +		intel_de_write8(display, _MMIO(reg), val);
> +	else
> +		outb(val, reg);
> +}
> +
>  /* Disable the VGA plane that we never use */
>  void intel_vga_disable(struct intel_display *display)
>  {
> @@ -193,11 +209,12 @@ void intel_vga_disable(struct intel_display *displa=
y)
>=20=20
>  	drm_WARN_ON(display->drm, !intel_pci_has_vga_io_decode(pdev));
>=20=20
> -	outb(0x01, VGA_SEQ_I);
> -	sr1 =3D inb(VGA_SEQ_D);
> -	outb(sr1 | VGA_SR01_SCREEN_OFF, VGA_SEQ_D);
> +	intel_vga_write(display, VGA_SEQ_I, 0x01, false);
> +	sr1 =3D intel_vga_read(display, VGA_SEQ_D, false);
> +	sr1 |=3D VGA_SR01_SCREEN_OFF;
> +	intel_vga_write(display, VGA_SEQ_D, sr1, false);
>=20=20
> -	msr =3D inb(VGA_MIS_R);
> +	msr =3D intel_vga_read(display, VGA_MIS_R, false);
>  	/*
>  	 * Always disable VGA memory decode for iGPU so that
>  	 * intel_vga_set_decode() doesn't need to access VGA registers.
> @@ -217,7 +234,7 @@ void intel_vga_disable(struct intel_display *display)
>  	 * RMbus NoClaim errors.
>  	 */
>  	msr &=3D ~VGA_MIS_COLOR;
> -	outb(msr, VGA_MIS_W);
> +	intel_vga_write(display, VGA_MIS_W, msr, false);
>=20=20
>  	intel_vga_put(display, io_decode);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.h b/drivers/gpu/drm/i=
915/display/intel_vga.h
> index 80084265c6cd..72131cb536cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.h
> +++ b/drivers/gpu/drm/i915/display/intel_vga.h
> @@ -6,8 +6,11 @@
>  #ifndef __INTEL_VGA_H__
>  #define __INTEL_VGA_H__
>=20=20
> +#include <linux/types.h>
> +
>  struct intel_display;
>=20=20
> +u8 intel_vga_read(struct intel_display *display, u16 reg, bool mmio);
>  void intel_vga_reset_io_mem(struct intel_display *display);
>  void intel_vga_disable(struct intel_display *display);
>  void intel_vga_register(struct intel_display *display);

--=20
Jani Nikula, Intel
