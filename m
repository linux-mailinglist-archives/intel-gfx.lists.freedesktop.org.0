Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAfMLWQTcmksawAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 13:09:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A3B666D1
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 13:09:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19BD510E988;
	Thu, 22 Jan 2026 12:09:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q26bI6pH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0879B10E094;
 Thu, 22 Jan 2026 12:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769083745; x=1800619745;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=F0rvUFoHDy2Q9bKu6+tsgB7SaRw/nCeavLkeQoQ1If0=;
 b=Q26bI6pHSxgDMPoG7HQJkBH05ZIvTfoD6zOIvEZyLVZDuph0hbvDCqTU
 ZdQ9We5K6u/hT7Y7gs6zHVK9SPPJVeLcgmKmTCruFYwJtDKt1j31VyN81
 zgM4Ykgj1FJgo0RDDGI4GniSyFS1CarEpMNoVQ1YJUpIt9f2vN54sFogT
 63RUXnJFj1hT1CjiMO3kRswgL5Zo7NwvsNhNdpaScDDxaz0dF/igd4c7l
 WG4D+xVKuPFV5qmHhtlloSR8h3WqQje16e48qqOtVJKnjAfFh09JUogL4
 3S1yKWayksbZvTtj+ot3XxnMCcVfEkDEyLvmYcMs5z7dGOYvJDFLIDlYS Q==;
X-CSE-ConnectionGUID: eZeXE/w+Tjq+vsoTXxNe1w==
X-CSE-MsgGUID: x4CYYA2uRl+pTryw+tF82A==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="87739038"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="87739038"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 04:09:05 -0800
X-CSE-ConnectionGUID: /Uj8R3aqR3KZwUMFUOTjsQ==
X-CSE-MsgGUID: mj+VvOpHRdWG6cRI0Ev+Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="211233686"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 04:09:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v2 12/19] drm/{i915, xe}: Remove i915_reg.h from g4x_hdmi.c
In-Reply-To: <20260121232414.707192-13-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-13-uma.shankar@intel.com>
Date: Thu, 22 Jan 2026 14:08:59 +0200
Message-ID: <e1208117f373bd00c2b9b53f1073d17f36049718@intel.com>
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
X-Rspamd-Queue-Id: 25A3B666D1
X-Rspamd-Action: no action

On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move TRANS_CHICKEN1 reg to display header to make g4x_hdmi.c
> free from i915_reg.h dependency.
>
> v2: Remove from common header in include and use display_regs.h (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/g4x_hdmi.c           |  1 -
>  drivers/gpu/drm/i915/display/intel_display_regs.h | 12 ++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h                   | 12 ------------
>  3 files changed, 12 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index 8b22447e8e23..5fe5067c4237 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -8,7 +8,6 @@
>  #include <drm/drm_print.h>
>  
>  #include "g4x_hdmi.h"
> -#include "i915_reg.h"
>  #include "intel_atomic.h"
>  #include "intel_audio.h"
>  #include "intel_connector.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 477896faa79e..2c7cd9002da3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2122,6 +2122,18 @@
>  #define  TRANS_BPC_6			REG_FIELD_PREP(TRANS_BPC_MASK, 2)
>  #define  TRANS_BPC_12			REG_FIELD_PREP(TRANS_BPC_MASK, 3)
>  
> +/* Icelake PPS_DATA and _ECC DIP Registers.
> + * These are available for transcoders B,C and eDP.
> + * Adding the _A so as to reuse the _MMIO_TRANS2
> + * definition, with which it offsets to the right location.
> + */
> +
> +#define _TRANSA_CHICKEN1	 0xf0060
> +#define _TRANSB_CHICKEN1	 0xf1060
> +#define TRANS_CHICKEN1(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN1, _TRANSB_CHICKEN1)
> +#define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
> +#define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
> +
>  #define _TRANSA_CHICKEN2	0xf0064
>  #define _TRANSB_CHICKEN2	0xf1064
>  #define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN2, _TRANSB_CHICKEN2)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index bd3871f458d6..5d640f7cfc23 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -836,18 +836,6 @@
>  #define   MASK_WAKEMEM				REG_BIT(13)
>  #define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
>  
> -/* Icelake PPS_DATA and _ECC DIP Registers.
> - * These are available for transcoders B,C and eDP.
> - * Adding the _A so as to reuse the _MMIO_TRANS2
> - * definition, with which it offsets to the right location.
> - */
> -
> -#define _TRANSA_CHICKEN1	 0xf0060
> -#define _TRANSB_CHICKEN1	 0xf1060
> -#define TRANS_CHICKEN1(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN1, _TRANSB_CHICKEN1)
> -#define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
> -#define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
> -
>  #define  VLV_PMWGICZ				_MMIO(0x1300a4)
>  
>  #define  HSW_EDRAM_CAP				_MMIO(0x120010)

-- 
Jani Nikula, Intel
