Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A84D4AF6402
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 23:29:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB24710E77F;
	Wed,  2 Jul 2025 21:29:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PjhXcPNu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35C7510E0B1;
 Wed,  2 Jul 2025 21:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751491783; x=1783027783;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qGZLQ4lwHYpahuqhKTKlGW/UjrVgli2lynXGh7kgM1M=;
 b=PjhXcPNusyx2l3eHvjQn6+Mb739j16SI6sKac8HusnQ9vJTiRTM4BGMJ
 VuihctUEPdecl2PyLgqa+ifqg9S/Mmu/vhHm3LncNjlxBv+oFLOV+V69l
 sJgrH+sWZ3y+PxfdlGAGopIiVrBFrdoozYMnyEDQAyA+dKvyAQlGB7w3/
 uucfBz/KiBt9zKcCXefyMpok1LP/4TobouRPnchvWg77cVOYQ+f7gOSxf
 3k+CFTr6wsirjMTK9kL3CEEhxuC9pBHX8V0QL7Dmyl2nDR48A1QGA9MfC
 dxoxM8JT4Tsl9N2ttyEOiMJxMVeHHhIWwtnulXox+0vlxNNCkOvTbA42u w==;
X-CSE-ConnectionGUID: kG2ERVlRRASqBG9ddmCyQQ==
X-CSE-MsgGUID: 916f/xLrSAua7XN3mGRpUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="53916359"
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="53916359"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 14:29:42 -0700
X-CSE-ConnectionGUID: VUP3VsBmRHmwQsoUo+Lqxw==
X-CSE-MsgGUID: d48LDm47RwuJLvumahN6Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="159875632"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.30])
 by orviesa005.jf.intel.com with SMTP; 02 Jul 2025 14:29:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Jul 2025 00:29:37 +0300
Date: Thu, 3 Jul 2025 00:29:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, gustavo.sousa@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
Message-ID: <aGWkwQZB_hSsjgQ4@intel.com>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
 <aGWLMinfzWd9IkFJ@intel.com>
 <fsyfxqbrzc5zogoyqew6xs7frdosjeewl4wj43yrduaetzdtlf@wm5utoxy2xeh>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fsyfxqbrzc5zogoyqew6xs7frdosjeewl4wj43yrduaetzdtlf@wm5utoxy2xeh>
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

On Wed, Jul 02, 2025 at 03:25:21PM -0500, Lucas De Marchi wrote:
> On Wed, Jul 02, 2025 at 10:40:34PM +0300, Ville Syrjälä wrote:
> >On Wed, Jul 02, 2025 at 02:16:18PM +0530, Ankit Nautiyal wrote:
> >> Introduce a generic helper to check display workarounds using an enum.
> >>
> >> Convert Wa_16023588340 to use the new interface, simplifying WA checks
> >> and making future additions easier.
> >>
> >> v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display_wa
> >> macro. (Jani)
> >>
> >> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++++
> >>  drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
> >>  drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
> >>  3 files changed, 25 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> >> index f57280e9d041..f5e8d58d9a68 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> >> @@ -3,6 +3,8 @@
> >>   * Copyright © 2023 Intel Corporation
> >>   */
> >>
> >> +#include "drm/drm_print.h"
> >> +
> >>  #include "i915_reg.h"
> >>  #include "intel_de.h"
> >>  #include "intel_display_core.h"
> >> @@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display *display)
> >>  	else if (DISPLAY_VER(display) == 11)
> >>  		gen11_display_wa_apply(display);
> >>  }
> >> +
> >> +bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa)
> >> +{
> >> +	switch (wa) {
> >> +	case INTEL_DISPLAY_WA_16023588340:
> >> +		return intel_display_needs_wa_16023588340(display);
> >> +	default:
> >> +		drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);
> >> +		break;
> >> +	}
> >> +
> >> +	return false;
> >> +}
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> >> index babd9d16603d..146ee70d66f7 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> >> @@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
> >>  bool intel_display_needs_wa_16023588340(struct intel_display *display);
> >>  #endif
> >>
> >> +enum intel_display_wa {
> >> +	INTEL_DISPLAY_WA_16023588340,
> >
> >How is anyone supposed to keep track of these random numbers
> >and what they mean?
> 
> they mean there's a h/w workaround that requires that and this is the id
> if you need to find more details about it or what platforms/IPs use
> that.

I don't want to go look up all the details in the common case.
I just want to read the code and see that it generally makes
sense without having to trawl through the spec/hsd for an
hour every time.

> 
> >
> >The only time I want to see these numbers is if I really have to
> >open the spec/hsd for it to double check some details. Othwerwise
> >it just seems like pointless noise that makes it harder to follow
> >the code/figure out what the heck is going on.
> 
> what is the alternative? The current status quo checking by platform
> and/or IP version, dissociated from the WA numbers?

I find it easiest if everything is in one place. I think every
w/a generally should have these:
- which hardware is affected
- what other runtime conditions are required to hit the issue
- what is being done to avoid the issue
- a short human readable explanation of the issue
- the w/a number for looking up futher details

Splitting it all up into random bits and pieces just means more
jumping around all the time, which I find annoying at best.

-- 
Ville Syrjälä
Intel
