Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C07018A3225
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 17:19:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5910110E334;
	Fri, 12 Apr 2024 15:19:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DuRK4hU1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87C2810F6DE;
 Fri, 12 Apr 2024 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712935194; x=1744471194;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FWKrCnR8NiqIhmuhl3PiEZ6HnAToF1MwN8rIbttNugM=;
 b=DuRK4hU190GjIHvR+heH8bvYN074gvuiFaZfT4ykQNs82AVQhXEdWLtx
 I/HbLVT6yLkIKhr//09Ci9vLEhI5m6u0nEqKvt4TsZohOx2QBOMKPcD2R
 SGTBYX0sgC5d4mjVY0GZJhze2KC6ix+h1kFxTvsJP8R5q/y5Gyx1TROvr
 YTg9D3b+FRwqW1w7794VaPvhGZz02r3SuCul1Q8VNyVU31cND0LrYXp7X
 +MzdWlYhy6RALh0vT3phC1Eovo+feZ/i44GQkMquF8BOVLHrsKlsqq/wL
 QIVLZcZKEoQ1U/zqiEWhydLwjcqpNqtaVyXuETjnspzXPiY8Sphsy7MS4 w==;
X-CSE-ConnectionGUID: vIIn1NkyS9eQ/NloNGFSbQ==
X-CSE-MsgGUID: 3MW05rPzQyaCokVXVwf2YA==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19542451"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19542451"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 08:19:53 -0700
X-CSE-ConnectionGUID: HxSwWjs0RiS5Agp2JIactA==
X-CSE-MsgGUID: X4pXxEEyQTCa4N04W9AIBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21346062"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 08:19:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 18:19:50 +0300
Date: Fri, 12 Apr 2024 18:19:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/6] drm/i915/color: move palette registers to
 intel_color_regs.h
Message-ID: <ZhlRFum4FT-I3o35@intel.com>
References: <cover.1712933479.git.jani.nikula@intel.com>
 <e82ca633fbe0c39d3d72379866737b509c05ece4.1712933479.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e82ca633fbe0c39d3d72379866737b509c05ece4.1712933479.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Apr 12, 2024 at 05:52:54PM +0300, Jani Nikula wrote:
> For some reason the paletter registers were missed when adding
> intel_color_regs.h. Finish the job.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_color_regs.h   | 30 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h               | 30 -------------------
>  2 files changed, 30 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
> index 9f4ae58f3e7e..969745821172 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
> @@ -8,6 +8,36 @@
>  
>  #include "intel_display_reg_defs.h"
>  
> +/*
> + * Palette regs
> + */

Quite redundant. If we want to keep a comment then it
should be adjusted to say these are for gmch platforms.

> +#define _PALETTE_A		0xa000
> +#define _PALETTE_B		0xa800
> +#define _CHV_PALETTE_C		0xc000
> +/* 8bit mode / i965+ 10.6 interpolated mode ldw/udw */
> +#define   PALETTE_RED_MASK		REG_GENMASK(23, 16)
> +#define   PALETTE_GREEN_MASK		REG_GENMASK(15, 8)
> +#define   PALETTE_BLUE_MASK		REG_GENMASK(7, 0)
> +/* pre-i965 10bit interpolated mode ldw */
> +#define   PALETTE_10BIT_RED_LDW_MASK	REG_GENMASK(23, 16)
> +#define   PALETTE_10BIT_GREEN_LDW_MASK	REG_GENMASK(15, 8)
> +#define   PALETTE_10BIT_BLUE_LDW_MASK	REG_GENMASK(7, 0)
> +/* pre-i965 10bit interpolated mode udw */
> +#define   PALETTE_10BIT_RED_EXP_MASK	REG_GENMASK(23, 22)
> +#define   PALETTE_10BIT_RED_MANT_MASK	REG_GENMASK(21, 18)
> +#define   PALETTE_10BIT_RED_UDW_MASK	REG_GENMASK(17, 16)
> +#define   PALETTE_10BIT_GREEN_EXP_MASK	REG_GENMASK(15, 14)
> +#define   PALETTE_10BIT_GREEN_MANT_MASK	REG_GENMASK(13, 10)
> +#define   PALETTE_10BIT_GREEN_UDW_MASK	REG_GENMASK(9, 8)
> +#define   PALETTE_10BIT_BLUE_EXP_MASK	REG_GENMASK(7, 6)
> +#define   PALETTE_10BIT_BLUE_MANT_MASK	REG_GENMASK(5, 2)
> +#define   PALETTE_10BIT_BLUE_UDW_MASK	REG_GENMASK(1, 0)
> +#define PALETTE(pipe, i) _MMIO(DISPLAY_MMIO_BASE(dev_priv) +			\
> +			       _PICK_EVEN_2RANGES(pipe, 2,			\
> +						  _PALETTE_A, _PALETTE_B,	\
> +						  _CHV_PALETTE_C, _CHV_PALETTE_C) + \
> +						  (i) * 4)
> +
>  /* legacy palette */

and then this should be adjusted to indicate ilk+

Otherwise
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  #define _LGC_PALETTE_A           0x4a000
>  #define _LGC_PALETTE_B           0x4a800
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c689bc7e2867..b74965383a56 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1700,36 +1700,6 @@
>  
>  #define GMBUSFREQ_VLV		_MMIO(VLV_DISPLAY_BASE + 0x6510)
>  
> -/*
> - * Palette regs
> - */
> -#define _PALETTE_A		0xa000
> -#define _PALETTE_B		0xa800
> -#define _CHV_PALETTE_C		0xc000
> -/* 8bit mode / i965+ 10.6 interpolated mode ldw/udw */
> -#define   PALETTE_RED_MASK		REG_GENMASK(23, 16)
> -#define   PALETTE_GREEN_MASK		REG_GENMASK(15, 8)
> -#define   PALETTE_BLUE_MASK		REG_GENMASK(7, 0)
> -/* pre-i965 10bit interpolated mode ldw */
> -#define   PALETTE_10BIT_RED_LDW_MASK	REG_GENMASK(23, 16)
> -#define   PALETTE_10BIT_GREEN_LDW_MASK	REG_GENMASK(15, 8)
> -#define   PALETTE_10BIT_BLUE_LDW_MASK	REG_GENMASK(7, 0)
> -/* pre-i965 10bit interpolated mode udw */
> -#define   PALETTE_10BIT_RED_EXP_MASK	REG_GENMASK(23, 22)
> -#define   PALETTE_10BIT_RED_MANT_MASK	REG_GENMASK(21, 18)
> -#define   PALETTE_10BIT_RED_UDW_MASK	REG_GENMASK(17, 16)
> -#define   PALETTE_10BIT_GREEN_EXP_MASK	REG_GENMASK(15, 14)
> -#define   PALETTE_10BIT_GREEN_MANT_MASK	REG_GENMASK(13, 10)
> -#define   PALETTE_10BIT_GREEN_UDW_MASK	REG_GENMASK(9, 8)
> -#define   PALETTE_10BIT_BLUE_EXP_MASK	REG_GENMASK(7, 6)
> -#define   PALETTE_10BIT_BLUE_MANT_MASK	REG_GENMASK(5, 2)
> -#define   PALETTE_10BIT_BLUE_UDW_MASK	REG_GENMASK(1, 0)
> -#define PALETTE(pipe, i) _MMIO(DISPLAY_MMIO_BASE(dev_priv) +			\
> -			       _PICK_EVEN_2RANGES(pipe, 2,			\
> -						  _PALETTE_A, _PALETTE_B,	\
> -						  _CHV_PALETTE_C, _CHV_PALETTE_C) + \
> -						  (i) * 4)
> -
>  #define PEG_BAND_GAP_DATA	_MMIO(0x14d68)
>  
>  #define BXT_RP_STATE_CAP        _MMIO(0x138170)
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
