Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AAnFE5x6jGkcpgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:48:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A274D124836
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:48:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67CF510E052;
	Wed, 11 Feb 2026 12:48:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SFbqj018";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F001A10E099;
 Wed, 11 Feb 2026 12:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770814104; x=1802350104;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wKe7cbzeSHjTyn5Go7wem+S8Hm1fZ//X2R3i8Dk4zTQ=;
 b=SFbqj018TfRVQg897gxlNmE11mDfr6HVRzQysX0gD0aeHmKMmx4haTkG
 Q+QU5iceTUg7Wsy2QbCaLXYUu9m2iriVFxJ0zmFqjZcedVScHqVjImlWL
 yGg7K0VrKmYGXosK99uVoc6NtLVceICDDaofuxehM2yozohXjhYuNgFLk
 iTlM6pqtbhstufu+GTHXoWJLLPjMzeUlXFbEkkivxDvi0UOOXic4s31CH
 AFxq3UhHleRKVfi/2VIBbg7YmVhFyHgJkzLYHSzIuCjw20853aHO93z0c
 ldOEwopDZbSs3H8tagwCd8OEaYElm7XnKVO8y64KCK/3CImewNTBDc2v4 w==;
X-CSE-ConnectionGUID: TaC1B8RsRH+Ag4EStdxD3Q==
X-CSE-MsgGUID: Q5k+NE+LQ1qgquGhwg/VMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="71165574"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="71165574"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:48:23 -0800
X-CSE-ConnectionGUID: +bxTuCzGREq0FM+Yw3yyLw==
X-CSE-MsgGUID: 130xJlKgQg2vQgRBRotihQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="242848034"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.57])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:48:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v4 11/20] drm/i915: Remove i915_reg.h from g4x_dp.c
In-Reply-To: <20260205094341.1882816-12-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260205094341.1882816-1-uma.shankar@intel.com>
 <20260205094341.1882816-12-uma.shankar@intel.com>
Date: Wed, 11 Feb 2026 14:48:18 +0200
Message-ID: <2d0ce5b2390b2ea0c6948e1dc189aef88f107d31@intel.com>
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
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: A274D124836
X-Rspamd-Action: no action

On Thu, 05 Feb 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move DE_IRQ_REGS to display header to make g4x_dp.c
> free from i915_reg.h dependency. These registers are
> only used by display and gvt.
>
> v3: Drop a superfluous include (Jani)
>
> v2: Move DE interrupt regs from common to display header (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c            |  1 -
>  .../gpu/drm/i915/display/intel_display_regs.h    | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h                  | 15 ---------------
>  3 files changed, 16 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 4cb753177fd8..d7de329abf19 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -10,7 +10,6 @@
>  #include <drm/drm_print.h>
>  
>  #include "g4x_dp.h"
> -#include "i915_reg.h"
>  #include "intel_audio.h"
>  #include "intel_backlight.h"
>  #include "intel_connector.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index d03f554ecd7e..5bc891f6de57 100644
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
> index 1be8426b6a91..b808d1ec5387 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -727,15 +727,6 @@
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
> @@ -863,12 +854,6 @@
>  #define   MASK_WAKEMEM				REG_BIT(13)
>  #define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
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
