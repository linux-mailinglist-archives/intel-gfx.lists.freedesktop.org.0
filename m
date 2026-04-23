Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIjxBEP06WmepQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 12:28:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 598A2450AAE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 12:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93AA210F084;
	Thu, 23 Apr 2026 10:28:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J67lr+NC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E874610E312;
 Thu, 23 Apr 2026 10:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776940095; x=1808476095;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2vDQhyRZwu7tXOsMoRBoIRg0h71fufbQmYn28SKtEpc=;
 b=J67lr+NCgj0ZqZvUN6nCAATTqleU3e+R5Lu1FFAvCpC7CpABqdgNQAVA
 KiXUe7CuxYXqMDOuU6ZNipOJ0QhQtU/GRPo8FqoV1u15ro5TSwC1t/9TC
 HUX0aoQuLshsn7ScH2pZoaWNUoyrmGPEq1U3rgcq5digzNjxmvqCqbwyj
 1xNyZ21MTa0NHT2V+8zBKEjESmB9EjP1NxMw+yw8nUgJ/sYInaIBpM6Yf
 XMcJ1jXM2aMbmvRnSxTAQ176xA30Gp0J1PrQYcEmbKZfDoCvTvP/tMSDw
 0fpOJl2kgTdUSKq7jTD4cRhs/Vhg5ausgUYd+/FUN3VtMAPZMLCEdJDST Q==;
X-CSE-ConnectionGUID: nVrIZEauSgqWawL5xYVvZw==
X-CSE-MsgGUID: z507VFrdRmmtz3zLH1dpAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="78095160"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="78095160"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 03:28:15 -0700
X-CSE-ConnectionGUID: RK9OaqFzTFStC1cQ3WXZDg==
X-CSE-MsgGUID: ZlBPevDARyGgCyZDrYwRAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="236990484"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.201])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 03:28:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>
Subject: Re: [PATCH] drm/i915/display: enable ccs modifiers on dg2
In-Reply-To: <20260423101739.2772745-1-juhapekka.heikkila@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260423101739.2772745-1-juhapekka.heikkila@gmail.com>
Date: Thu, 23 Apr 2026 13:28:09 +0300
Message-ID: <efeef92c230d81764e1fada17c2a81012548cead@intel.com>
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,igalia.com];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 598A2450AAE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 23 Apr 2026, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> Since Xe driver aux ccs enablement dg2 ccs modifiers have been
> disabled on both Xe and i915 drivers. Here allow dg2 to use
> ccs again for framebuffers.
>
> Fixes: 6a99e91 ("drm/i915/display: Detect AuxCCS support via display parent interface")
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index d31819758f3d..7a73461d398a 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -54,9 +54,11 @@
>  #include "display/intel_bw.h"
>  #include "display/intel_cdclk.h"
>  #include "display/intel_crtc.h"
> +#include "display/intel_display_core.h"
>  #include "display/intel_display_device.h"
>  #include "display/intel_display_driver.h"
>  #include "display/intel_display_power.h"
> +#include "display/intel_display_types.h"
>  #include "display/intel_dmc.h"
>  #include "display/intel_dp.h"
>  #include "display/intel_dpt.h"
> @@ -749,8 +751,9 @@ static void fence_priority_display(struct dma_fence *fence)
>  static bool has_auxccs(struct drm_device *drm)
>  {
>  	struct drm_i915_private *i915 = to_i915(drm);
> +	struct intel_display *display = i915->display;
>  
> -	return IS_GRAPHICS_VER(i915, 9, 12) ||
> +	return IS_DISPLAY_VER(display, 9, 12) ||

Sorry, can't do this in i915 core.

BR,
Jani.

>  	       IS_ALDERLAKE_P(i915) ||
>  	       IS_METEORLAKE(i915);
>  }

-- 
Jani Nikula, Intel
