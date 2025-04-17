Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9041EA91CF8
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 14:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 164DE10EAFD;
	Thu, 17 Apr 2025 12:52:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ilV3IKC8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D8C210EAFD
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Apr 2025 12:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744894360; x=1776430360;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=c2Pu0j3yhFyYGvfODEGEWpHG+NHg1q1zmiUs48DE4ME=;
 b=ilV3IKC811bVTJekeawGxhXSCh9VSguQKK7wOujTFcVpHW4aVvD+RrcB
 +pApRheYDMYUTAHVbKEfJoEBNuex1UBs2BuWDDzMXGfUPtUTj++sXlvuS
 GKvtuS7ZXFEWInv91kt24IK4Whl2Dz9DPz6Y2yCyutDelPrjSB0bEIb1J
 mn+572AxaQRo3bCFpLkJ/SNpE5P+23UZzjvnGkYCiamBwJ81EEDr5THA0
 49Yah7KcsCmvFECs3Bzq2tAs1gaxqNMAsnP0LxVG4SLjSSSKZQB4ZACeZ
 VUTEyULs9RJ+4PWpq90SC9ZZWSwil3WYDxXmNWv5cpolym1pIgi67+RI2 A==;
X-CSE-ConnectionGUID: GDQQPATTQj678Gt1WArFNg==
X-CSE-MsgGUID: w53bKkYhTVeexvEd5gnhOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="50299145"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="50299145"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 05:52:40 -0700
X-CSE-ConnectionGUID: xdocit1wTPKO4O3IbqkClg==
X-CSE-MsgGUID: dS4x/nvIQpSVG3IK4RWJRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="131105560"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 05:52:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/i915/vga: Extract intel_vga_regs.h
In-Reply-To: <20250417114454.12836-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
 <20250417114454.12836-4-ville.syrjala@linux.intel.com>
Date: Thu, 17 Apr 2025 15:52:36 +0300
Message-ID: <87ldrzne5n.fsf@intel.com>
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

On Thu, 17 Apr 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Extract the VGACNTR register definitions into their own
> header file, to declutter i915_reg.h a bit.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vga.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_vga_regs.h | 38 +++++++++++++++++++
>  drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               | 30 ---------------
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
>  5 files changed, 41 insertions(+), 30 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_vga_regs.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index 684b5d1bc87c..56047f701798 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -13,6 +13,7 @@
>  #include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_vga.h"
> +#include "intel_vga_regs.h"
>=20=20
>  static i915_reg_t intel_vga_cntrl_reg(struct intel_display *display)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_vga_regs.h b/drivers/gpu/=
drm/i915/display/intel_vga_regs.h
> new file mode 100644
> index 000000000000..031da94cab79
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_vga_regs.h
> @@ -0,0 +1,38 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2025 Intel Corporation
> + */
> +
> +#ifndef __INTEL_VGA_REGS_H__
> +#define __INTEL_VGA_REGS_H__
> +
> +#include "intel_display_reg_defs.h"
> +
> +#define VGACNTRL		_MMIO(0x71400)
> +#define   VGA_DISP_DISABLE			REG_BIT(31)
> +#define   VGA_2X_MODE				REG_BIT(30) /* pre-ilk */
> +#define   VGA_PIPE_SEL_MASK			REG_BIT(29) /* pre-ivb */
> +#define   VGA_PIPE_SEL(pipe)			REG_FIELD_PREP(VGA_PIPE_SEL_MASK, (pipe))
> +#define   VGA_PIPE_SEL_MASK_CHV			REG_GENMASK(29, 28) /* chv */
> +#define   VGA_PIPE_SEL_CHV(pipe)		REG_FIELD_PREP(VGA_PIPE_SEL_MASK_CHV, =
(pipe))
> +#define   VGA_BORDER_ENABLE			REG_BIT(26)
> +#define   VGA_PIPE_CSC_ENABLE			REG_BIT(24) /* ilk+ */
> +#define   VGA_CENTERING_ENABLE_MASK		REG_GENMASK(25, 24) /* pre-ilk */
> +#define   VGA_PALETTE_READ_SEL			REG_BIT(23) /* pre-ivb */
> +#define   VGA_PALETTE_A_WRITE_DISABLE		REG_BIT(22) /* pre-ivb */
> +#define   VGA_PALETTE_B_WRITE_DISABLE		REG_BIT(21) /* pre-ivb */
> +#define   VGA_LEGACY_8BIT_PALETTE_ENABLE	REG_BIT(20)
> +#define   VGA_PALETTE_BYPASS			REG_BIT(19)
> +#define   VGA_NINE_DOT_DISABLE			REG_BIT(18)
> +#define   VGA_PALETTE_READ_SEL_HI_CHV		REG_BIT(15) /* chv */
> +#define   VGA_PALETTE_C_WRITE_DISABLE_CHV	REG_BIT(14) /* chv */
> +#define   VGA_ACTIVE_THROTTLING_MASK		REG_GENMASK(15, 12) /* ilk+ */
> +#define   VGA_BLANK_THROTTLING_MASK		REG_GENMASK(11, 8) /* ilk+ */
> +#define   VGA_BLINK_DUTY_CYCLE_MASK		REG_GENMASK(7, 6)
> +#define   VGA_VSYNC_BLINK_RATE_MASK		REG_GENMASK(5, 0)
> +
> +#define VLV_VGACNTRL	_MMIO(VLV_DISPLAY_BASE + 0x71400)
> +
> +#define CPU_VGACNTRL	_MMIO(0x41000)

I guess the register offset definitions could be together above the
contents, but no big deal.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +
> +#endif /* __INTEL_VGA_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/g=
vt/handlers.c
> index e6e9010462e3..1344e6d20a34 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -56,6 +56,7 @@
>  #include "display/intel_pps_regs.h"
>  #include "display/intel_psr_regs.h"
>  #include "display/intel_sprite_regs.h"
> +#include "display/intel_vga_regs.h"
>  #include "display/skl_universal_plane_regs.h"
>  #include "display/skl_watermark_regs.h"
>  #include "display/vlv_dsi_pll_regs.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index a533889c2793..38fd44cff5e8 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1812,36 +1812,6 @@
>  #define SWF3(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x72414 + =
(i) * 4)
>  #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
>=20=20
> -/* VBIOS regs */
> -#define VGACNTRL		_MMIO(0x71400)
> -#define   VGA_DISP_DISABLE			REG_BIT(31)
> -#define   VGA_2X_MODE				REG_BIT(30) /* pre-ilk */
> -#define   VGA_PIPE_SEL_MASK			REG_BIT(29) /* pre-ivb */
> -#define   VGA_PIPE_SEL(pipe)			REG_FIELD_PREP(VGA_PIPE_SEL_MASK, (pipe))
> -#define   VGA_PIPE_SEL_MASK_CHV			REG_GENMASK(29, 28) /* chv */
> -#define   VGA_PIPE_SEL_CHV(pipe)		REG_FIELD_PREP(VGA_PIPE_SEL_MASK_CHV, =
(pipe))
> -#define   VGA_BORDER_ENABLE			REG_BIT(26)
> -#define   VGA_PIPE_CSC_ENABLE			REG_BIT(24) /* ilk+ */
> -#define   VGA_CENTERING_ENABLE_MASK		REG_GENMASK(25, 24) /* pre-ilk */
> -#define   VGA_PALETTE_READ_SEL			REG_BIT(23) /* pre-ivb */
> -#define   VGA_PALETTE_A_WRITE_DISABLE		REG_BIT(22) /* pre-ivb */
> -#define   VGA_PALETTE_B_WRITE_DISABLE		REG_BIT(21) /* pre-ivb */
> -#define   VGA_LEGACY_8BIT_PALETTE_ENABLE	REG_BIT(20)
> -#define   VGA_PALETTE_BYPASS			REG_BIT(19)
> -#define   VGA_NINE_DOT_DISABLE			REG_BIT(18)
> -#define   VGA_PALETTE_READ_SEL_HI_CHV		REG_BIT(15) /* chv */
> -#define   VGA_PALETTE_C_WRITE_DISABLE_CHV	REG_BIT(14) /* chv */
> -#define   VGA_ACTIVE_THROTTLING_MASK		REG_GENMASK(15, 12) /* ilk+ */
> -#define   VGA_BLANK_THROTTLING_MASK		REG_GENMASK(11, 8) /* ilk+ */
> -#define   VGA_BLINK_DUTY_CYCLE_MASK		REG_GENMASK(7, 6)
> -#define   VGA_VSYNC_BLINK_RATE_MASK		REG_GENMASK(5, 0)
> -
> -#define VLV_VGACNTRL		_MMIO(VLV_DISPLAY_BASE + 0x71400)
> -
> -/* Ironlake */
> -
> -#define CPU_VGACNTRL	_MMIO(0x41000)
> -
>  #define DIGITAL_PORT_HOTPLUG_CNTRL	_MMIO(0x44030)
>  #define  DIGITAL_PORTA_HOTPLUG_ENABLE		(1 << 4)
>  #define  DIGITAL_PORTA_PULSE_DURATION_2ms	(0 << 2) /* pre-HSW */
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/dr=
m/i915/intel_gvt_mmio_table.c
> index 76d84cbb8361..d581a9d2c063 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -21,6 +21,7 @@
>  #include "display/intel_pfit_regs.h"
>  #include "display/intel_psr_regs.h"
>  #include "display/intel_sprite_regs.h"
> +#include "display/intel_vga_regs.h"
>  #include "display/skl_universal_plane_regs.h"
>  #include "display/skl_watermark_regs.h"
>  #include "display/vlv_dsi_pll_regs.h"

--=20
Jani Nikula, Intel
