Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F4264CB79
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 14:42:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDAB110E404;
	Wed, 14 Dec 2022 13:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0182810E404
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 13:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671025354; x=1702561354;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=u53Vr/27o2iueXRQBr7WNzwNQ5pC9AyAUdWHV5FOt1g=;
 b=LHoFpE4IXT7u3xWyuDZukE4pMeQXbKu5kDTtmD+EQK5WXHYtEDDNqLgv
 5dFn9jMQCoIsk9eWa9o8VptHPimsJBLJLw7n6CVTk5FLL23lBSIXvVKK5
 S4PjyXg3Gt4LhQ6pDs/u7guiMROz0n2qiBoevkiZunsAq1qZ11Vy1e7o+
 9JcTfBXyW3XyGC4QRTPT0CO6o9U57udLjf681ZeKGEIpEK/Wdqu5MP/Mq
 V3hS8auwUQ/mEJs83sEzzHTOjOIRCDP4Mc70gwzQZ7W82mwjSUBTiuGie
 Mdel3zvU4ZfDxP3VlUPCxJt6ydZ4D/25DWSIXHE20z4QJEmzDgehQBFgw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="306045079"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="306045079"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 05:42:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="649022025"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="649022025"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 14 Dec 2022 05:42:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 14 Dec 2022 15:42:29 +0200
Date: Wed, 14 Dec 2022 15:42:29 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y5nSxSencoj8515T@intel.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
 <71aa10a6274199165e0b218ae6331ce3739aceed.1670855299.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <71aa10a6274199165e0b218ae6331ce3739aceed.1670855299.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/reg: split out vblank/scanline
 regs
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 12, 2022 at 04:29:25PM +0200, Jani Nikula wrote:
> Reduce clutter in i915_reg.h by splitting out the vblank/scanline
> registers.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crt.c      |  1 +
>  drivers/gpu/drm/i915/display/intel_vblank.c   |  1 +
>  .../gpu/drm/i915/display/intel_vblank_regs.h  | 42 +++++++++++++++++++
>  drivers/gpu/drm/i915/gvt/cmd_parser.c         |  1 +
>  drivers/gpu/drm/i915/gvt/display.c            |  1 +
>  drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               | 35 ----------------
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
>  8 files changed, 48 insertions(+), 35 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_vblank_regs.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 7267ffc7f539..e7482fc9f726 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -49,6 +49,7 @@
>  #include "intel_hotplug.h"
>  #include "intel_pch_display.h"
>  #include "intel_pch_refclk.h"
> +#include "intel_vblank_regs.h"

That doesn't match any actual hardware block structure
so not really a fan. We could perhaps try something
like intel_{pipe,transcoder}_regs.h, but IIRC some of the
registers have more or less been moved between the pipe
vs. transcoder so not sure that makes total sense either.
Perhaps just intel_de_regs.h/etc. could be sufficient for
most things on this level?

>  
>  /* Here's the desired hotplug mode */
>  #define ADPA_HOTPLUG_BITS (ADPA_CRT_HOTPLUG_PERIOD_128 |		\
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 729c39180469..b017c2d00a3b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -8,6 +8,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_vblank.h"
> +#include "intel_vblank_regs.h"
>  
>  /*
>   * This timing diagram depicts the video signal in and
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank_regs.h b/drivers/gpu/drm/i915/display/intel_vblank_regs.h
> new file mode 100644
> index 000000000000..a851255ac2f1
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_vblank_regs.h
> @@ -0,0 +1,42 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#ifndef __INTEL_VBLANK_REGS_H__
> +#define __INTEL_VBLANK_REGS_H__
> +
> +#include "intel_display_reg_defs.h"
> +
> +#define _PIPEADSL		0x70000
> +#define   PIPEDSL_CURR_FIELD	REG_BIT(31) /* ctg+ */
> +#define   PIPEDSL_LINE_MASK	REG_GENMASK(19, 0)
> +#define PIPEDSL(pipe)		_MMIO_PIPE2(pipe, _PIPEADSL)
> +
> +/*
> + * The two pipe frame counter registers are not synchronized, so reading a
> + * stable value is somewhat tricky. Use:
> + *
> + * u64 frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(pipe), PIPEFRAME(pipe));
> + */
> +
> +#define _PIPEAFRAMEHIGH          0x70040
> +#define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe, _PIPEAFRAMEHIGH)
> +#define   PIPE_FRAME_HIGH_MASK	0x0000ffff
> +#define   PIPE_FRAME_HIGH_SHIFT	0
> +
> +#define _PIPEAFRAMEPIXEL	0x70044
> +#define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(pipe, _PIPEAFRAMEPIXEL)
> +#define   PIPE_FRAME_LOW_MASK	0xff000000
> +#define   PIPE_FRAME_LOW_SHIFT	24
> +#define   PIPE_PIXEL_MASK	0x00ffffff
> +#define   PIPE_PIXEL_SHIFT	0
> +
> +/* GM45+ just has to be different */
> +#define _PIPEA_FRMCOUNT_G4X	0x70040
> +#define PIPE_FRMCOUNT_G4X(pipe) _MMIO_PIPE2(pipe, _PIPEA_FRMCOUNT_G4X)
> +
> +#define _PIPEA_FLIPCOUNT_G4X	0x70044
> +#define PIPE_FLIPCOUNT_G4X(pipe) _MMIO_PIPE2(pipe, _PIPEA_FLIPCOUNT_G4X)
> +
> +#endif /* __INTEL_VBLANK_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> index 0ebf5fbf0e39..8a72c75943c6 100644
> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> @@ -38,6 +38,7 @@
>  
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "display/intel_vblank_regs.h"
>  #include "gt/intel_engine_regs.h"
>  #include "gt/intel_gpu_commands.h"
>  #include "gt/intel_gt_regs.h"
> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
> index c033249e73f4..894c8497961f 100644
> --- a/drivers/gpu/drm/i915/gvt/display.c
> +++ b/drivers/gpu/drm/i915/gvt/display.c
> @@ -37,6 +37,7 @@
>  #include "gvt.h"
>  
>  #include "display/intel_dpio_phy.h"
> +#include "display/intel_vblank_regs.h"
>  
>  static int get_edp_pipe(struct intel_vgpu *vgpu)
>  {
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index 735fc83e7026..efd613c2e068 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -45,6 +45,7 @@
>  #include "display/intel_dmc_regs.h"
>  #include "display/intel_dpio_phy.h"
>  #include "display/intel_fbc.h"
> +#include "display/intel_vblank_regs.h"
>  #include "display/vlv_dsi_pll_regs.h"
>  #include "gt/intel_gt_regs.h"
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 2b7a63754e4d..f3d9797ceb52 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3489,9 +3489,6 @@
>  /* Display & cursor control */
>  
>  /* Pipe A */
> -#define _PIPEADSL		0x70000
> -#define   PIPEDSL_CURR_FIELD	REG_BIT(31) /* ctg+ */
> -#define   PIPEDSL_LINE_MASK	REG_GENMASK(19, 0)
>  #define _PIPEACONF		0x70008
>  #define   PIPECONF_ENABLE			REG_BIT(31)
>  #define   PIPECONF_DOUBLE_WIDE			REG_BIT(30) /* pre-i965 */
> @@ -3616,9 +3613,6 @@
>  #define PIPE_DSI1_OFFSET	0x7b800
>  
>  #define PIPECONF(pipe)		_MMIO_PIPE2(pipe, _PIPEACONF)
> -#define PIPEDSL(pipe)		_MMIO_PIPE2(pipe, _PIPEADSL)
> -#define PIPEFRAME(pipe)		_MMIO_PIPE2(pipe, _PIPEAFRAMEHIGH)
> -#define PIPEFRAMEPIXEL(pipe)	_MMIO_PIPE2(pipe, _PIPEAFRAMEPIXEL)
>  #define PIPESTAT(pipe)		_MMIO_PIPE2(pipe, _PIPEASTAT)
>  
>  #define  _PIPEAGCMAX           0x70010
> @@ -4034,35 +4028,6 @@
>  #define  WM_LP_SPRITE_MASK	REG_GENMASK(10, 0)
>  #define  WM_LP_SPRITE(x)	REG_FIELD_PREP(WM_LP_SPRITE_MASK, (x))
>  
> -/*
> - * The two pipe frame counter registers are not synchronized, so
> - * reading a stable value is somewhat tricky. The following code
> - * should work:
> - *
> - *  do {
> - *    high1 = ((INREG(PIPEAFRAMEHIGH) & PIPE_FRAME_HIGH_MASK) >>
> - *             PIPE_FRAME_HIGH_SHIFT;
> - *    low1 =  ((INREG(PIPEAFRAMEPIXEL) & PIPE_FRAME_LOW_MASK) >>
> - *             PIPE_FRAME_LOW_SHIFT);
> - *    high2 = ((INREG(PIPEAFRAMEHIGH) & PIPE_FRAME_HIGH_MASK) >>
> - *             PIPE_FRAME_HIGH_SHIFT);
> - *  } while (high1 != high2);
> - *  frame = (high1 << 8) | low1;
> - */
> -#define _PIPEAFRAMEHIGH          0x70040
> -#define   PIPE_FRAME_HIGH_MASK    0x0000ffff
> -#define   PIPE_FRAME_HIGH_SHIFT   0
> -#define _PIPEAFRAMEPIXEL         0x70044
> -#define   PIPE_FRAME_LOW_MASK     0xff000000
> -#define   PIPE_FRAME_LOW_SHIFT    24
> -#define   PIPE_PIXEL_MASK         0x00ffffff
> -#define   PIPE_PIXEL_SHIFT        0
> -/* GM45+ just has to be different */
> -#define _PIPEA_FRMCOUNT_G4X	0x70040
> -#define _PIPEA_FLIPCOUNT_G4X	0x70044
> -#define PIPE_FRMCOUNT_G4X(pipe) _MMIO_PIPE2(pipe, _PIPEA_FRMCOUNT_G4X)
> -#define PIPE_FLIPCOUNT_G4X(pipe) _MMIO_PIPE2(pipe, _PIPEA_FLIPCOUNT_G4X)
> -
>  /* Cursor A & B regs */
>  #define _CURACNTR		0x70080
>  /* Old style CUR*CNTR flags (desktop 8xx) */
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index ce6b3c3b636a..604cc7ea8dac 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -7,6 +7,7 @@
>  #include "display/intel_backlight_regs.h"
>  #include "display/intel_dmc_regs.h"
>  #include "display/intel_dpio_phy.h"
> +#include "display/intel_vblank_regs.h"
>  #include "display/vlv_dsi_pll_regs.h"
>  #include "gt/intel_gt_regs.h"
>  #include "gvt/gvt.h"
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
