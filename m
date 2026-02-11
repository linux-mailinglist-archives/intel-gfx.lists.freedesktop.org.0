Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHjUEAZ8jGkcpgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:54:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD687124905
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:54:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01B410E5A1;
	Wed, 11 Feb 2026 12:54:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kWqxxqIG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1511810E0C5;
 Wed, 11 Feb 2026 12:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770814466; x=1802350466;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+aMmZwoXCT9QPSG+fgwFu3phFaatSMrRYdPFTs9rS4k=;
 b=kWqxxqIGSKMj/D8jmouixnO6Eh4M/AhX5Ao8OX+v1P1CH8hLNq34Q8ft
 Ym0WIS0G5V7x4rq3tcoJkRwJabvCziDte+DZpWgoKX8FDwVHuID5xnbfW
 A8BwEeicRjeY4pcmqZIxwVcarkuybalF/TZ4J3jcr5X2fRfqoXbyDDSz5
 0mOW9w/RAEomNr5dv6BQLcqnOeEY7EzuhnQEO4rkzBfTPNrFOWBaGszea
 zJ8w1bimh+/5P3af1Cerq1tqCows/du4Q46UdwbBOIQHyaU6pEVQsJnuP
 1l7kHs9bNdBgXD6SAH05wt96ZdcANw2ZNegS1HAdaeok7rbAuO+f55dpq A==;
X-CSE-ConnectionGUID: 0HNl51J0RrGWBCx/i5EV0Q==
X-CSE-MsgGUID: hztjTNeGSvib0u5hezw9Ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="71166109"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="71166109"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:54:26 -0800
X-CSE-ConnectionGUID: +M/XOZpMSfSuujYfxo1g/w==
X-CSE-MsgGUID: CbCOkx9sToKdzuG8CnHIzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="212070049"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.57])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:54:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v4 18/20] drm/i915: Remove i915_reg.h from
 intel_display_power_well.c
In-Reply-To: <20260205094341.1882816-19-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260205094341.1882816-1-uma.shankar@intel.com>
 <20260205094341.1882816-19-uma.shankar@intel.com>
Date: Wed, 11 Feb 2026 14:54:20 +0200
Message-ID: <78fa57c6237c918ea9ac55f45c1cff5a1936d081@intel.com>
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
X-Rspamd-Queue-Id: BD687124905
X-Rspamd-Action: no action

On Thu, 05 Feb 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Make intel_display_power_well.c free from including i915_reg.h.
>
> v3: Separate bit field for VLV (Ville)
>
> v2: Include specific pcode header, drop common header (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 3 +--
>  drivers/gpu/drm/i915/display/intel_display_regs.h       | 1 +
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 45c4313e6900..9c8d29839caf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -8,7 +8,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/intel/intel_pcode_regs.h>
>  
> -#include "i915_reg.h"
>  #include "intel_backlight_regs.h"
>  #include "intel_combo_phy.h"
>  #include "intel_combo_phy_regs.h"
> @@ -1277,7 +1276,7 @@ static void vlv_init_display_clock_gating(struct intel_display *display)
>  	 * Disable trickle feed and enable pnd deadline calculation
>  	 */
>  	intel_de_write(display, MI_ARB_VLV,
> -		       MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE);
> +		       MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE_VLV);
>  	intel_de_write(display, CBR1_VLV, 0);
>  
>  	drm_WARN_ON(display->drm, DISPLAY_RUNTIME_INFO(display)->rawclk_freq == 0);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 1c77a7de2d6e..d661385a1edd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -350,6 +350,7 @@
>  #define  FW_CSPWRDWNEN		(1 << 15)
>  
>  #define MI_ARB_VLV		_MMIO(VLV_DISPLAY_BASE + 0x6504)
> +#define   MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE_VLV	(1 << 2)
>  
>  #define CZCLK_CDCLK_FREQ_RATIO	_MMIO(VLV_DISPLAY_BASE + 0x6508)
>  #define   CDCLK_FREQ_SHIFT	4

-- 
Jani Nikula, Intel
