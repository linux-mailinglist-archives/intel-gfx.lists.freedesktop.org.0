Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC399972407
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 22:57:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7213410E6B5;
	Mon,  9 Sep 2024 20:57:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iXuFpRL4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C63210E6B1;
 Mon,  9 Sep 2024 20:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725915434; x=1757451434;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HvkocKNqXstW13ch/nmBOmnbq/DBPW13r5QshuDMStI=;
 b=iXuFpRL4sSFPY3uW2M3HljP4dKbza8F9Huz/Qm8pjW/nAirYhmuy7++V
 8yn4L1QXi6NLag1tpvG9dXE2Yr3k1zkudchjBmNwJfQ4VAJEurBiChTTz
 tWT8CvU1XncJgx3ZoXqYQTdSA1ZqWk3yVRjPvkwJoWHQ5Qrh2ABDT8CsR
 o28zkQZqcqJlvWef1e2pgNeRALurbSl3QqHkYQDXN+tj0DqCtDMPezlJ3
 hH55KdlS+11Ra8/39ng5prUluOK9ChPjvlk2Met1IPZR8Xt7IpE8XJ1Gt
 RXlbUBcPpx3lecLxFY8gpvOIUhzs7AwCybPeSBKfKt25Xuve9reuSaxSp Q==;
X-CSE-ConnectionGUID: TGVxtvkHR0K2iyNpjqqzyw==
X-CSE-MsgGUID: HMZYKY23S2GT8uVVCwxkVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="28377503"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="28377503"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 13:57:14 -0700
X-CSE-ConnectionGUID: DUlu8+DtRq+eJZi1tp0XwA==
X-CSE-MsgGUID: ipOT+PU6R2ykQeBDt7OoxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="66843810"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 09 Sep 2024 13:57:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Sep 2024 23:57:10 +0300
Date: Mon, 9 Sep 2024 23:57:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/11] drm/i915: split out display regs from i915_reg.h
Message-ID: <Zt9hJpk9Gz7_jY-i@intel.com>
References: <cover.1725908151.git.jani.nikula@intel.com>
 <3e50075487a6f33d90726872fd5aebba7b51b663.1725908152.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3e50075487a6f33d90726872fd5aebba7b51b663.1725908152.git.jani.nikula@intel.com>
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

On Mon, Sep 09, 2024 at 09:59:02PM +0300, Jani Nikula wrote:
> Split out display/intel_display_regs.h from i915_reg.h. This is done
> programmatically.
> 
> Register macros in i915_reg.h are considered in chunks separated by
> blank lines. If all macros in the chunk are only referenced by display
> or gvt, and there's at least one reference in display, move the chunk to
> intel_display_regs.h. Otherwise, keep it in i915_reg.h.
> 
> This is a fairly good approximation, but the are some small hiccups here
> and there that need to be fixed manually.
> 
> Add the includes where needed, and sort includes where modified, also
> programmatically. Unnecessary i915_reg.h are not cleaned up at this
> point.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
<snip>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> new file mode 100644
> index 000000000000..97346a0e3373
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -0,0 +1,2986 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2024 Intel Corporation */
> +
> +#ifndef __INTEL_DISPLAY_REGS_H__
> +#define __INTEL_DISPLAY_REGS_H__
> +
> +#include "intel_display_reg_defs.h"
> +
> +#define GU_CNTL_PROTECTED		_MMIO(0x10100C)
> +#define   DEPRESENT			REG_BIT(9)

That doesn't really look like a display register to me.

<snip>
> +#define _PS_COEF_SET0_DATA_1A	   0x6819C
> +#define _PS_COEF_SET0_DATA_2A	   0x6829C
> +#define _PS_COEF_SET0_DATA_1B	   0x6899C
> +#define _PS_COEF_SET0_DATA_2B	   0x68A9C
> +#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
> +			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
> +			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)
> +
> +/* More Ivybridge lolz */

Where did the pre-ivb interrupt bits go? The relevant
register offset definitions also seem to have been left
behind.

> +#define DE_ERR_INT_IVB			(1 << 30)
> +#define DE_GSE_IVB			(1 << 29)
> +#define DE_PCH_EVENT_IVB		(1 << 28)
> +#define DE_DP_A_HOTPLUG_IVB		(1 << 27)
> +#define DE_AUX_CHANNEL_A_IVB		(1 << 26)
> +#define DE_EDP_PSR_INT_HSW		(1 << 19)
> +#define DE_SPRITEC_FLIP_DONE_IVB	(1 << 14)
> +#define DE_PLANEC_FLIP_DONE_IVB		(1 << 13)
> +#define DE_PIPEC_VBLANK_IVB		(1 << 10)
> +#define DE_SPRITEB_FLIP_DONE_IVB	(1 << 9)
> +#define DE_PLANEB_FLIP_DONE_IVB		(1 << 8)
> +#define DE_PIPEB_VBLANK_IVB		(1 << 5)
> +#define DE_SPRITEA_FLIP_DONE_IVB	(1 << 4)
> +#define DE_PLANEA_FLIP_DONE_IVB		(1 << 3)
> +#define DE_PLANE_FLIP_DONE_IVB(plane)	(1 << (3 + 5 * (plane)))
> +#define DE_PIPEA_VBLANK_IVB		(1 << 0)
> +#define DE_PIPE_VBLANK_IVB(pipe)	(1 << ((pipe) * 5))
> +
<snip>
> +#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
> +#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
> +#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
> +#define SPI_STATIC_REGIONS			_MMIO(0x102090)
> +#define   OPTIONROM_SPI_REGIONID_MASK		REG_GENMASK(7, 0)
> +#define OROM_OFFSET				_MMIO(0x1020c0)
> +#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)

The SPI stuff doesn't really feel like it belongs here either.
I suppose we should just extract it into its own thing. But
that could be done later too. 

And now that I looked at the SPI vs. PCI ROM stuff I'm
a bit annoyed at the duplicated code. I guess I'll take a quick
stab at abstracting away the differences... Ideally I'd like to
move all that stuff to soc/ but then I'd need to figure out what
to do about xe, so I guess I'll leave it under display/ for now.

-- 
Ville Syrjälä
Intel
