Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F9A9C1DB1
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:13:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE31F10E999;
	Fri,  8 Nov 2024 13:13:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H2HiKzKp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0045010E999
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 13:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731071624; x=1762607624;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=nEsTJ6bTiFK6+/MpX4/AK8jJKkzHdDazJecvLhXkrTU=;
 b=H2HiKzKp68yr1Oylig+Xv7xGOyMo8AReWfE3qhAZJjaY61P3h3Nv+HAR
 HfRxyfkWsTODTOl537PIXM2nRNYU+5M858IR1149fK8CgLe763K26CVFu
 uOuLBWMwWl+PNADYglQRd5SqJWPgIWaj1OuttNGt/Kv3SfZjNrGDparpY
 4p3efHVOxxdCLU3gxjDv8usr/nuIU3lQ8eG2qko/iXfAdIZH06QKuxCzV
 1dGRzL2dOEFhXCDE9BX8d2PPTyiJee8nGUmL5JKxug57lomkf6WFU8wk/
 D7X8QOy5gxcsdX7KOa3c62FATDXbIciVX1HbDXCvTKH1TMsyo9sZe1vQt A==;
X-CSE-ConnectionGUID: CP5p9iSESt6CN0vSXPoPXg==
X-CSE-MsgGUID: kYRLYTYkSnub0j2pQZQj7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="41568118"
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="41568118"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:13:43 -0800
X-CSE-ConnectionGUID: 9+LuYaSqRWiZDd3s3Ce4JQ==
X-CSE-MsgGUID: mbR7v3PdSxSmdyJWhzETDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="116384664"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.252])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:13:42 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 06/10] drm/i915/crt: Extract intel_crt_regs.h
In-Reply-To: <20241107161123.16269-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
 <20241107161123.16269-7-ville.syrjala@linux.intel.com>
Date: Fri, 08 Nov 2024 15:13:38 +0200
Message-ID: <87h68heum5.fsf@intel.com>
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
> Move the analog port register definitions into their
> own file.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

'git show --color-moved' <3

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_crt_regs.h | 48 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_pch_display.c  |  1 +
>  drivers/gpu/drm/i915/gvt/display.c            |  1 +
>  drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               | 38 ---------------
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
>  7 files changed, 53 insertions(+), 38 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_crt_regs.h
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index e21e402f85c8..4784a858b4a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -38,6 +38,7 @@
>  #include "i915_reg.h"
>  #include "intel_connector.h"
>  #include "intel_crt.h"
> +#include "intel_crt_regs.h"
>  #include "intel_crtc.h"
>  #include "intel_ddi.h"
>  #include "intel_ddi_buf_trans.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_crt_regs.h b/drivers/gpu/=
drm/i915/display/intel_crt_regs.h
> new file mode 100644
> index 000000000000..9a93020b9a7e
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_crt_regs.h
> @@ -0,0 +1,48 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_CRT_REGS_H__
> +#define __INTEL_CRT_REGS_H__
> +
> +#include "intel_display_reg_defs.h"
> +
> +#define ADPA			_MMIO(0x61100)
> +#define PCH_ADPA		_MMIO(0xe1100)
> +#define VLV_ADPA		_MMIO(VLV_DISPLAY_BASE + 0x61100)
> +#define   ADPA_DAC_ENABLE			REG_BIT(31)
> +#define   ADPA_PIPE_SEL_MASK			REG_BIT(30)
> +#define   ADPA_PIPE_SEL(pipe)			REG_FIELD_PREP(ADPA_PIPE_SEL_MASK, (pipe=
))
> +#define   ADPA_PIPE_SEL_MASK_CPT		REG_GENMASK(30, 29)
> +#define   ADPA_PIPE_SEL_CPT(pipe)		REG_FIELD_PREP(ADPA_PIPE_SEL_MASK_CPT=
, (pipe))
> +#define   ADPA_CRT_HOTPLUG_MONITOR_MASK		REG_GENMASK(25, 24)
> +#define   ADPA_CRT_HOTPLUG_MONITOR_NONE		REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_MONITOR_MASK, 0)
> +#define   ADPA_CRT_HOTPLUG_MONITOR_COLOR	REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_MONITOR_MASK, 3)
> +#define   ADPA_CRT_HOTPLUG_MONITOR_MONO		REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_MONITOR_MASK, 2)
> +#define   ADPA_CRT_HOTPLUG_ENABLE		REG_BIT(23)
> +#define   ADPA_CRT_HOTPLUG_PERIOD_MASK		REG_BIT(22)
> +#define   ADPA_CRT_HOTPLUG_PERIOD_64		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_PE=
RIOD_MASK, 0)
> +#define   ADPA_CRT_HOTPLUG_PERIOD_128		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_P=
ERIOD_MASK, 1)
> +#define   ADPA_CRT_HOTPLUG_WARMUP_MASK		REG_BIT(21)
> +#define   ADPA_CRT_HOTPLUG_WARMUP_5MS		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_W=
ARMUP_MASK, 0)
> +#define   ADPA_CRT_HOTPLUG_WARMUP_10MS		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_=
WARMUP_MASK, 1)
> +#define   ADPA_CRT_HOTPLUG_SAMPLE_MASK		REG_BIT(20)
> +#define   ADPA_CRT_HOTPLUG_SAMPLE_2S		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_SA=
MPLE_MASK, 0)
> +#define   ADPA_CRT_HOTPLUG_SAMPLE_4S		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_SA=
MPLE_MASK, 1)
> +#define   ADPA_CRT_HOTPLUG_VOLTAGE_MASK		REG_GENMASK(19, 18)
> +#define   ADPA_CRT_HOTPLUG_VOLTAGE_40		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_V=
OLTAGE_MASK, 0)
> +#define   ADPA_CRT_HOTPLUG_VOLTAGE_50		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_V=
OLTAGE_MASK, 1)
> +#define   ADPA_CRT_HOTPLUG_VOLTAGE_60		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_V=
OLTAGE_MASK, 2)
> +#define   ADPA_CRT_HOTPLUG_VOLTAGE_70		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_V=
OLTAGE_MASK, 3)
> +#define   ADPA_CRT_HOTPLUG_VOLREF_MASK		REG_BIT(17)
> +#define   ADPA_CRT_HOTPLUG_VOLREF_325MV		REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_VOLREF_MASK, 0)
> +#define   ADPA_CRT_HOTPLUG_VOLREF_475MV		REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_VOLREF_MASK, 1)
> +#define   ADPA_CRT_HOTPLUG_FORCE_TRIGGER	REG_BIT(16)
> +#define   ADPA_USE_VGA_HVPOLARITY		REG_BIT(15)
> +#define   ADPA_HSYNC_CNTL_DISABLE		REG_BIT(11)
> +#define   ADPA_VSYNC_CNTL_DISABLE		REG_BIT(10)
> +#define   ADPA_VSYNC_ACTIVE_HIGH		REG_BIT(4)
> +#define   ADPA_HSYNC_ACTIVE_HIGH		REG_BIT(3)
> +
> +#endif /* __INTEL_CRT_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/g=
pu/drm/i915/display/intel_pch_display.c
> index 4210de87a0a2..cd48d3e6cf42 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -6,6 +6,7 @@
>  #include "g4x_dp.h"
>  #include "i915_reg.h"
>  #include "intel_crt.h"
> +#include "intel_crt_regs.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dpll.h"
> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gv=
t/display.c
> index 17f74cb244bb..b6136825d213 100644
> --- a/drivers/gpu/drm/i915/gvt/display.c
> +++ b/drivers/gpu/drm/i915/gvt/display.c
> @@ -40,6 +40,7 @@
>=20=20
>  #include "display/bxt_dpio_phy_regs.h"
>  #include "display/i9xx_plane_regs.h"
> +#include "display/intel_crt_regs.h"
>  #include "display/intel_cursor_regs.h"
>  #include "display/intel_display.h"
>  #include "display/intel_dpio_phy.h"
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/g=
vt/handlers.c
> index 9494d812c00a..25acb9ddb12c 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -45,6 +45,7 @@
>  #include "intel_mchbar_regs.h"
>  #include "display/bxt_dpio_phy_regs.h"
>  #include "display/i9xx_plane_regs.h"
> +#include "display/intel_crt_regs.h"
>  #include "display/intel_cursor_regs.h"
>  #include "display/intel_display_types.h"
>  #include "display/intel_dmc_regs.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 6391f2e9d530..8a0a478051a6 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1147,44 +1147,6 @@
>  #define _TRANS_MULT_B		0x6102c
>  #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRA=
NS_MULT_A)
>=20=20
> -/* VGA port control */
> -#define ADPA			_MMIO(0x61100)
> -#define PCH_ADPA                _MMIO(0xe1100)
> -#define VLV_ADPA		_MMIO(VLV_DISPLAY_BASE + 0x61100)
> -#define   ADPA_DAC_ENABLE			REG_BIT(31)
> -#define   ADPA_PIPE_SEL_MASK			REG_BIT(30)
> -#define   ADPA_PIPE_SEL(pipe)			REG_FIELD_PREP(ADPA_PIPE_SEL_MASK, (pipe=
))
> -#define   ADPA_PIPE_SEL_MASK_CPT		REG_GENMASK(30, 29)
> -#define   ADPA_PIPE_SEL_CPT(pipe)		REG_FIELD_PREP(ADPA_PIPE_SEL_MASK_CPT=
, (pipe))
> -#define   ADPA_CRT_HOTPLUG_MONITOR_MASK		REG_GENMASK(25, 24)
> -#define   ADPA_CRT_HOTPLUG_MONITOR_NONE		REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_MONITOR_MASK, 0)
> -#define   ADPA_CRT_HOTPLUG_MONITOR_COLOR	REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_MONITOR_MASK, 3)
> -#define   ADPA_CRT_HOTPLUG_MONITOR_MONO		REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_MONITOR_MASK, 2)
> -#define   ADPA_CRT_HOTPLUG_ENABLE		REG_BIT(23)
> -#define   ADPA_CRT_HOTPLUG_PERIOD_MASK		REG_BIT(22)
> -#define   ADPA_CRT_HOTPLUG_PERIOD_64		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_PE=
RIOD_MASK, 0)
> -#define   ADPA_CRT_HOTPLUG_PERIOD_128		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_P=
ERIOD_MASK, 1)
> -#define   ADPA_CRT_HOTPLUG_WARMUP_MASK		REG_BIT(21)
> -#define   ADPA_CRT_HOTPLUG_WARMUP_5MS		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_W=
ARMUP_MASK, 0)
> -#define   ADPA_CRT_HOTPLUG_WARMUP_10MS		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_=
WARMUP_MASK, 1)
> -#define   ADPA_CRT_HOTPLUG_SAMPLE_MASK		REG_BIT(20)
> -#define   ADPA_CRT_HOTPLUG_SAMPLE_2S		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_SA=
MPLE_MASK, 0)
> -#define   ADPA_CRT_HOTPLUG_SAMPLE_4S		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_SA=
MPLE_MASK, 1)
> -#define   ADPA_CRT_HOTPLUG_VOLTAGE_MASK		REG_GENMASK(19, 18)
> -#define   ADPA_CRT_HOTPLUG_VOLTAGE_40		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_V=
OLTAGE_MASK, 0)
> -#define   ADPA_CRT_HOTPLUG_VOLTAGE_50		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_V=
OLTAGE_MASK, 1)
> -#define   ADPA_CRT_HOTPLUG_VOLTAGE_60		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_V=
OLTAGE_MASK, 2)
> -#define   ADPA_CRT_HOTPLUG_VOLTAGE_70		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_V=
OLTAGE_MASK, 3)
> -#define   ADPA_CRT_HOTPLUG_VOLREF_MASK		REG_BIT(17)
> -#define   ADPA_CRT_HOTPLUG_VOLREF_325MV		REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_VOLREF_MASK, 0)
> -#define   ADPA_CRT_HOTPLUG_VOLREF_475MV		REG_FIELD_PREP(ADPA_CRT_HOTPLUG=
_VOLREF_MASK, 1)
> -#define   ADPA_CRT_HOTPLUG_FORCE_TRIGGER	REG_BIT(16)
> -#define   ADPA_USE_VGA_HVPOLARITY		REG_BIT(15)
> -#define   ADPA_HSYNC_CNTL_DISABLE		REG_BIT(11)
> -#define   ADPA_VSYNC_CNTL_DISABLE		REG_BIT(10)
> -#define   ADPA_VSYNC_ACTIVE_HIGH		REG_BIT(4)
> -#define   ADPA_HSYNC_ACTIVE_HIGH		REG_BIT(3)
> -
>  /* Hotplug control (945+ only) */
>  #define PORT_HOTPLUG_EN(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0=
x61110)
>  #define   PORTB_HOTPLUG_INT_EN			(1 << 29)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/dr=
m/i915/intel_gvt_mmio_table.c
> index 955c9a33212a..63849389f39a 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -8,6 +8,7 @@
>  #include "display/intel_audio_regs.h"
>  #include "display/intel_backlight_regs.h"
>  #include "display/intel_color_regs.h"
> +#include "display/intel_crt_regs.h"
>  #include "display/intel_cursor_regs.h"
>  #include "display/intel_display_types.h"
>  #include "display/intel_dmc_regs.h"

--=20
Jani Nikula, Intel
