Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sA70EMHsgWkFMAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 13:40:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D68D91F7
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 13:40:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE6C10E327;
	Tue,  3 Feb 2026 12:40:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hS3JvCHa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8054110E327;
 Tue,  3 Feb 2026 12:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770122431; x=1801658431;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=tdOMpMDwRCbzmhzcHkMEtTxem94CyEQCkta1FQdt+Q8=;
 b=hS3JvCHapl8Q2CHTPGsIoNLpaX0YapkDngIzn0LJeU0RZKV73Dw7wDmn
 iT/ify9uWcEC1ILs98MrHobAEJkpyDRRyGUhf2sxi7LXNiBlAOkDU5mqE
 mlNAdXhQITUcZxdMVvMer7rzLiwFUNb7EWYJfDezIPYk0G0YW9RvSx0le
 L95alaNHW1Ew7Yy0klNqTsl7Gjp6zPLaVZkKKBl4rQLCAkeypmaIY8vu+
 v625yHYhOChNgBEaGVTFywydlizym4R7Xid5mfk/x/rf7os20N/jhfxG1
 sv3SyQWc68Dl4DY5BEBX9jGdb31C0bHGAIOt3pSXKbagLyCIpifsfpBXi w==;
X-CSE-ConnectionGUID: 0xVm17eAQRy9H4FgNb71bA==
X-CSE-MsgGUID: 0d8bqjwlRkamD10ynVRKTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="74915625"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="74915625"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:40:30 -0800
X-CSE-ConnectionGUID: O3Db8HWyToGTs0yz765vgQ==
X-CSE-MsgGUID: sj9CLOKWTDOKBNqeXkwarw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="209999486"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:40:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v3 10/19] drm/i915: Remove i915_reg.h from g4x_dp.c
In-Reply-To: <20260129211358.1240283-11-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-11-uma.shankar@intel.com>
Date: Tue, 03 Feb 2026 14:40:24 +0200
Message-ID: <8e30f712069ac46bd8268ff2812166148091e242@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: B8D68D91F7
X-Rspamd-Action: no action

On Fri, 30 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move DE_IRQ_REGS to display header to make g4x_dp.c
> free from i915_reg.h dependency. These registers are
> only used by display and gvt.
>
> v2: Move DE interrupt regs from common to display header (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c            |  2 +-
>  .../gpu/drm/i915/display/intel_display_regs.h    | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h                  | 15 ---------------
>  3 files changed, 17 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 4cb753177fd8..017c6dd8f9f6 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -8,9 +8,9 @@
>  #include <linux/string_helpers.h>
>  
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_gmd_interrupt.h>

How's this required in this patch? Nothing's being moved there in this
patch?

BR,
Jani.

>  
>  #include "g4x_dp.h"
> -#include "i915_reg.h"
>  #include "intel_audio.h"
>  #include "intel_backlight.h"
>  #include "intel_connector.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 40538910cb09..0164dcbb709f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -1049,6 +1049,15 @@
>  #define SWF3(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x72414 + (i) * 4)
>  #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
>  
> +#define DEISR   _MMIO(0x44000)
> +#define DEIMR   _MMIO(0x44004)
> +#define DEIIR   _MMIO(0x44008)
> +#define DEIER   _MMIO(0x4400c)
> +
> +#define DE_IRQ_REGS		I915_IRQ_REGS(DEIMR, \
> +					      DEIER, \
> +					      DEIIR)
> +
>  #define DIGITAL_PORT_HOTPLUG_CNTRL	_MMIO(0x44030)
>  #define  DIGITAL_PORTA_HOTPLUG_ENABLE		(1 << 4)
>  #define  DIGITAL_PORTA_PULSE_DURATION_2ms	(0 << 2) /* pre-HSW */
> @@ -1792,6 +1801,13 @@
>  					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC2) | \
>  					 SDE_TC_HOTPLUG_ICP(HPD_PORT_TC1))
>  
> +/* PCH */
> +
> +#define SDEISR  _MMIO(0xc4000)
> +#define SDEIMR  _MMIO(0xc4004)
> +#define SDEIIR  _MMIO(0xc4008)
> +#define SDEIER  _MMIO(0xc400c)
> +
>  #define SDE_IRQ_REGS			I915_IRQ_REGS(SDEIMR, \
>  						      SDEIER, \
>  						      SDEIIR)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 22b68ddfa7b4..6cb72e6e9086 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -728,15 +728,6 @@
>  #define VLV_MASTER_IER			_MMIO(0x4400c) /* Gunit master IER */
>  #define   MASTER_INTERRUPT_ENABLE	(1 << 31)
>  
> -#define DEISR   _MMIO(0x44000)
> -#define DEIMR   _MMIO(0x44004)
> -#define DEIIR   _MMIO(0x44008)
> -#define DEIER   _MMIO(0x4400c)
> -
> -#define DE_IRQ_REGS		I915_IRQ_REGS(DEIMR, \
> -					      DEIER, \
> -					      DEIIR)
> -
>  #define GTISR   _MMIO(0x44010)
>  #define GTIMR   _MMIO(0x44014)
>  #define GTIIR   _MMIO(0x44018)
> @@ -868,12 +859,6 @@
>  #define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
>  #define   GMD_ID_STEP				REG_GENMASK(5, 0)
>  
> -/* PCH */
> -
> -#define SDEISR  _MMIO(0xc4000)
> -#define SDEIMR  _MMIO(0xc4004)
> -#define SDEIIR  _MMIO(0xc4008)
> -#define SDEIER  _MMIO(0xc400c)
>  
>  /* Icelake PPS_DATA and _ECC DIP Registers.
>   * These are available for transcoders B,C and eDP.

-- 
Jani Nikula, Intel
