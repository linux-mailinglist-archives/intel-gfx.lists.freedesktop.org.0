Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLS1KQ8C6mk/rQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 13:27:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 856B1451441
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 13:27:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95FAD10E6A2;
	Thu, 23 Apr 2026 11:27:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nhq1BpCr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB6BD10E508;
 Thu, 23 Apr 2026 11:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776943627; x=1808479627;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DYIyTIuqXO90Qsqxyp1ocWS+HSeDkCEH/gYfvbDrXhE=;
 b=nhq1BpCrpfAUM/ZWhLJl/rvLc8IpaK6yw3VCkK5ytpBzCoXcBoQDY0CZ
 mt2evNjdfBOTC7yhXkJ9uV1fYbqILr0Xhv25gzdB7GHQFRYul7/A65fxU
 2W6m/u7zAeMZ5uL31a0dxUYqN4JO87vICr5XaOJfqRZaoVmKaRA6p1IGb
 RTXHRLlDlwOL1iQbOhKVh6fstd0+8q3l9B+EIQe4QIsAuuQJ6XdK3ex0e
 aeag5G9VRDK5qgLwxI8n4DpMxLucTXC33jHCAa10bM8nOKMtKHLGavkXl
 k7rOn15ZUE55fgMabf3+Fg2lCgP7i3l6J5FVtf9z0lxp2KPaLD6CFncbL w==;
X-CSE-ConnectionGUID: 6GxqdbSQRo6z9NcKl2RM3w==
X-CSE-MsgGUID: Saj15iMRRquEpClMH+lb3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="80495782"
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="80495782"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 04:27:06 -0700
X-CSE-ConnectionGUID: dhHBNbu8TkizmfEUudQx2w==
X-CSE-MsgGUID: m7TLoEKaQrKJAb6TqGGxeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,194,1770624000"; d="scan'208";a="232538243"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.188])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 04:27:04 -0700
Date: Thu, 23 Apr 2026 14:27:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Cc: Jani Nikula <jani.nikula@intel.com>,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: enable ccs modifiers on dg2
Message-ID: <aeoCBQ59P1ajGxMa@intel.com>
References: <20260423101739.2772745-1-juhapekka.heikkila@gmail.com>
 <efeef92c230d81764e1fada17c2a81012548cead@intel.com>
 <fc60cf57-0662-4c40-8d70-190910d780ad@igalia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fc60cf57-0662-4c40-8d70-190910d780ad@igalia.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.96 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MIXED_CHARSET(0.77)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[intel.com,gmail.com,lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 856B1451441
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 23, 2026 at 12:15:14PM +0100, Tvrtko Ursulin wrote:
> 
> On 23/04/2026 11:28, Jani Nikula wrote:
> > On Thu, 23 Apr 2026, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> >> Since Xe driver aux ccs enablement dg2 ccs modifiers have been
> >> disabled on both Xe and i915 drivers. Here allow dg2 to use
> >> ccs again for framebuffers.
> >>
> >> Fixes: 6a99e91 ("drm/i915/display: Detect AuxCCS support via display parent interface")
> >> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> >> ---
> >>   drivers/gpu/drm/i915/i915_driver.c | 5 ++++-
> >>   1 file changed, 4 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> >> index d31819758f3d..7a73461d398a 100644
> >> --- a/drivers/gpu/drm/i915/i915_driver.c
> >> +++ b/drivers/gpu/drm/i915/i915_driver.c
> >> @@ -54,9 +54,11 @@
> >>   #include "display/intel_bw.h"
> >>   #include "display/intel_cdclk.h"
> >>   #include "display/intel_crtc.h"
> >> +#include "display/intel_display_core.h"
> >>   #include "display/intel_display_device.h"
> >>   #include "display/intel_display_driver.h"
> >>   #include "display/intel_display_power.h"
> >> +#include "display/intel_display_types.h"
> >>   #include "display/intel_dmc.h"
> >>   #include "display/intel_dp.h"
> >>   #include "display/intel_dpt.h"
> >> @@ -749,8 +751,9 @@ static void fence_priority_display(struct dma_fence *fence)
> >>   static bool has_auxccs(struct drm_device *drm)
> >>   {
> >>   	struct drm_i915_private *i915 = to_i915(drm);
> >> +	struct intel_display *display = i915->display;
> >>   
> >> -	return IS_GRAPHICS_VER(i915, 9, 12) ||
> >> +	return IS_DISPLAY_VER(display, 9, 12) ||
> > 
> > Sorry, can't do this in i915 core.
> 
> Was DG2 never Gen12? I totally forgot.. my bad.. Adding IS_DG2 to the 
> checks below should work, no?

I think just exclude HAS_FLAT_CCS.

> 
> Regards,
> 
> Tvrtko
> 
> > 
> > BR,
> > Jani.
> > 
> >>   	       IS_ALDERLAKE_P(i915) ||
> >>   	       IS_METEORLAKE(i915);
> >>   }
> > 

-- 
Ville Syrjälä
Intel
