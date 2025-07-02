Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3BAAF645F
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 23:49:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A59C110E792;
	Wed,  2 Jul 2025 21:49:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QJo/XRRQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0424E10E074;
 Wed,  2 Jul 2025 21:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751492975; x=1783028975;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Ojvf2g+e8zNfTASnG6RyyxRtDiCFny6oz0IgSSGL5T8=;
 b=QJo/XRRQF8x2yXQgTV1T4l4yceWMrGg4I/7wUo3QxPuSCCuUZTDG8ejN
 F3bteUN4YvdqisDroqBihWYrA1HRqmG+g78xuX3sZw9ZAdEdESTJsgQZH
 RhOj7ex9JDNVKNXDvl/mUY6pJqjoe7Zlrfj617FLHItjWYGdz1I+xttnt
 Tx0uMhiQlBbzOpb9LICDIEfhedV3HE5XQTFlntSf0cqc4m6jvw3+au99B
 TPE1EwnwxhhXLKUOs+NeT2bSeXZldee9+4+4rroeBQSFMeX1E/45ruFVD
 KqbZNYofMLNErLHr7XvEdfe9AM36M0EwZBN1u3NCXnCA1Rz+OGKz0dmur g==;
X-CSE-ConnectionGUID: FaPh/ETrTm+Fsta/5SSP7g==
X-CSE-MsgGUID: dFvA0YM3Qj6Ma/4Mtgjnww==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="64504238"
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="64504238"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 14:49:35 -0700
X-CSE-ConnectionGUID: d/SaNPSCRzWaB4gdf66IwA==
X-CSE-MsgGUID: LTU4akSfQ/mksTt6s86B7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="159879494"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.30])
 by orviesa005.jf.intel.com with SMTP; 02 Jul 2025 14:49:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Jul 2025 00:49:30 +0300
Date: Thu, 3 Jul 2025 00:49:30 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, gustavo.sousa@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Add helpers to check wa
Message-ID: <aGWpag7dGRUAVZfU@intel.com>
References: <20250702084620.3837426-1-ankit.k.nautiyal@intel.com>
 <20250702084620.3837426-2-ankit.k.nautiyal@intel.com>
 <aGWLMinfzWd9IkFJ@intel.com>
 <fsyfxqbrzc5zogoyqew6xs7frdosjeewl4wj43yrduaetzdtlf@wm5utoxy2xeh>
 <aGWkwQZB_hSsjgQ4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aGWkwQZB_hSsjgQ4@intel.com>
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

On Thu, Jul 03, 2025 at 12:29:37AM +0300, Ville Syrjälä wrote:
> On Wed, Jul 02, 2025 at 03:25:21PM -0500, Lucas De Marchi wrote:
> > On Wed, Jul 02, 2025 at 10:40:34PM +0300, Ville Syrjälä wrote:
> > >On Wed, Jul 02, 2025 at 02:16:18PM +0530, Ankit Nautiyal wrote:
> > >> Introduce a generic helper to check display workarounds using an enum.
> > >>
> > >> Convert Wa_16023588340 to use the new interface, simplifying WA checks
> > >> and making future additions easier.
> > >>
> > >> v2: Use drm_WARN instead of MISSING_CASE and simplify intel_display_wa
> > >> macro. (Jani)
> > >>
> > >> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> > >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > >> ---
> > >>  drivers/gpu/drm/i915/display/intel_display_wa.c | 15 +++++++++++++++
> > >>  drivers/gpu/drm/i915/display/intel_display_wa.h |  9 +++++++++
> > >>  drivers/gpu/drm/i915/display/intel_fbc.c        |  2 +-
> > >>  3 files changed, 25 insertions(+), 1 deletion(-)
> > >>
> > >> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > >> index f57280e9d041..f5e8d58d9a68 100644
> > >> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> > >> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> > >> @@ -3,6 +3,8 @@
> > >>   * Copyright © 2023 Intel Corporation
> > >>   */
> > >>
> > >> +#include "drm/drm_print.h"
> > >> +
> > >>  #include "i915_reg.h"
> > >>  #include "intel_de.h"
> > >>  #include "intel_display_core.h"
> > >> @@ -39,3 +41,16 @@ void intel_display_wa_apply(struct intel_display *display)
> > >>  	else if (DISPLAY_VER(display) == 11)
> > >>  		gen11_display_wa_apply(display);
> > >>  }
> > >> +
> > >> +bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa)
> > >> +{
> > >> +	switch (wa) {
> > >> +	case INTEL_DISPLAY_WA_16023588340:
> > >> +		return intel_display_needs_wa_16023588340(display);
> > >> +	default:
> > >> +		drm_WARN(display->drm, 1, "Missing Wa number: %d\n", wa);
> > >> +		break;
> > >> +	}
> > >> +
> > >> +	return false;
> > >> +}
> > >> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > >> index babd9d16603d..146ee70d66f7 100644
> > >> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > >> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > >> @@ -21,4 +21,13 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
> > >>  bool intel_display_needs_wa_16023588340(struct intel_display *display);
> > >>  #endif
> > >>
> > >> +enum intel_display_wa {
> > >> +	INTEL_DISPLAY_WA_16023588340,
> > >
> > >How is anyone supposed to keep track of these random numbers
> > >and what they mean?
> > 
> > they mean there's a h/w workaround that requires that and this is the id
> > if you need to find more details about it or what platforms/IPs use
> > that.
> 
> I don't want to go look up all the details in the common case.
> I just want to read the code and see that it generally makes
> sense without having to trawl through the spec/hsd for an
> hour every time.
> 
> > 
> > >
> > >The only time I want to see these numbers is if I really have to
> > >open the spec/hsd for it to double check some details. Othwerwise
> > >it just seems like pointless noise that makes it harder to follow
> > >the code/figure out what the heck is going on.
> > 
> > what is the alternative? The current status quo checking by platform
> > and/or IP version, dissociated from the WA numbers?
> 
> I find it easiest if everything is in one place. I think every
> w/a generally should have these:
> - which hardware is affected
> - what other runtime conditions are required to hit the issue
> - what is being done to avoid the issue
> - a short human readable explanation of the issue
> - the w/a number for looking up futher details
> 
> Splitting it all up into random bits and pieces just means more
> jumping around all the time, which I find annoying at best.

I suppose one could argue for a more formal thing for these three:
- which hardware is affected
- a short human readable explanation of the issue
- the w/a number for looking up futher details

Might be still a real pain to deal with that due to having to jump
around, but at least it could be used to force people to document
each w/a a bit better.

Basically anything that avoids having to wait for the spec/hsd to
load is a good thing in my book.

There's also the question of what to do with duplicates, as in often
it seems the same issue is present on multiple platforms under different
w/a numbers.

-- 
Ville Syrjälä
Intel
