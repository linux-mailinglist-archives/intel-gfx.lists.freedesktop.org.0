Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uG2uA1oRcmksawAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 13:00:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 953356652F
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 13:00:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21E5210E992;
	Thu, 22 Jan 2026 12:00:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dJDMopLT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E39510E094;
 Thu, 22 Jan 2026 12:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769083222; x=1800619222;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=JamKimX62RjeWFZMoHCHkC4ip4xckOWXodxjakkVb+s=;
 b=dJDMopLT6lgMClPA5orl2bgkFZmh+52kqYTUmVVQ3YSn1lwLnUNTWGoc
 87O2DM8bIJCBnHQ8TWIVZlEl05gZ2J4PJbuarg9X25mJQ8spMMzkmisG6
 h3mcM2fBiH5e1rb+tlerDHUU1IT3bIXutbq99dWY2QfRpyIAdnJ1fqhwM
 KqwhscHJN5SJF6D/dKgvVGZa4/XcAd67/7WIXQe9FfDpukPZm/kX3W3uF
 vMYVyRWa5uwbtb2gththjSPnV6FmuM2zx1aQulyt4Mb+ixORoApuGDO2g
 VzqkPi+iwABoAEjFotqJB6mq0Eur0Y5M4u4+I2ysF0EOuzYgOUbbm2xMM A==;
X-CSE-ConnectionGUID: ob+VA3uwQS6DfnEHxkrKvw==
X-CSE-MsgGUID: OBJR0B3eQjCh2j25IwfmwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="92987874"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="92987874"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 04:00:22 -0800
X-CSE-ConnectionGUID: q4ky35jaRmCRJ5B/VNILkg==
X-CSE-MsgGUID: p4qvXEmZSm+oN66oFndIgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="207043579"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 04:00:20 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v2 10/19] drm/{i915, xe}: Remove i915_reg.h from g4x_dp.c
In-Reply-To: <20260121232414.707192-11-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-11-uma.shankar@intel.com>
Date: Thu, 22 Jan 2026 14:00:17 +0200
Message-ID: <5e7c148ebdff10f12bfb3972671a44420c0bfbca@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 953356652F
X-Rspamd-Action: no action

On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move DE_IRQ_REGS to common header to make g4x_dp.c
> free from i915_reg.h dependency.
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c            |  2 +-
>  .../gpu/drm/i915/display/intel_display_regs.h    |  9 +++++++++
>  drivers/gpu/drm/i915/i915_reg.h                  | 16 ----------------
>  include/drm/intel/intel_gmd_common_regs.h        |  7 +++++++
>  4 files changed, 17 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 4cb753177fd8..b2b63e811776 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -8,9 +8,9 @@
>  #include <linux/string_helpers.h>
>  
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_gmd_common_regs.h>
>  
>  #include "g4x_dp.h"
> -#include "i915_reg.h"
>  #include "intel_audio.h"
>  #include "intel_backlight.h"
>  #include "intel_connector.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index b26e6a4ee1c3..eabee5abc23b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -3104,4 +3104,13 @@ enum skl_power_gate {
>  #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
>  #define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
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
>  #endif /* __INTEL_DISPLAY_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 504ba9b2fb5b..c0c2fab99a47 100644
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
> @@ -864,13 +855,6 @@
>  #define   MASK_WAKEMEM				REG_BIT(13)
>  #define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
>  
> -/* PCH */
> -
> -#define SDEISR  _MMIO(0xc4000)
> -#define SDEIMR  _MMIO(0xc4004)
> -#define SDEIIR  _MMIO(0xc4008)
> -#define SDEIER  _MMIO(0xc400c)
> -
>  /* Icelake PPS_DATA and _ECC DIP Registers.
>   * These are available for transcoders B,C and eDP.
>   * Adding the _A so as to reuse the _MMIO_TRANS2
> diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
> index 2214cee38cf7..c8b2b5b2739c 100644
> --- a/include/drm/intel/intel_gmd_common_regs.h
> +++ b/include/drm/intel/intel_gmd_common_regs.h
> @@ -148,4 +148,11 @@
>  #define I915_ASLE_INTERRUPT				(1 << 0)
>  #define I915_BSD_USER_INTERRUPT				(1 << 25)
>  
> +/* PCH */
> +
> +#define SDEISR  _MMIO(0xc4000)
> +#define SDEIMR  _MMIO(0xc4004)
> +#define SDEIIR  _MMIO(0xc4008)
> +#define SDEIER  _MMIO(0xc400c)

These are only used by display and gvt. I don't know what we're going to
do about gvt in the long run, but at this point I'd be prepared to just
include the necessary display register headers directly. This is what we
do with all the other registers. There are no other users for these, and
IMO shouldn't be in the common header.

BR,
Jani.

> +
>  #endif

-- 
Jani Nikula, Intel
