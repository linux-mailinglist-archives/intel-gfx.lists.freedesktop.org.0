Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E065CB0FB7
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 20:59:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2156110E615;
	Tue,  9 Dec 2025 19:59:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nuftFw2T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1547510E615;
 Tue,  9 Dec 2025 19:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765310374; x=1796846374;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AwBzNJ4I5xpUWDvNEtPPBni8xySmMEie/7xPOGPyCAE=;
 b=nuftFw2TZkNA9wfLpJLKkJpX5X+7D6iHN58BHxUrtExUW/LEx5Yukg64
 /2KNu2CXmalXoupvSL2A9XAG2pPo7iJWSSBr/CVyvw5a2aaZzm9qANCLq
 45s+y/Hu9JbbdEfyWKaFLkduLC2y3TPOSt4yA6cDRbJ/3qA8YSAFUZsWN
 ehSOgk0MRRIPPbOLLkYNAnmbjMl0ToNP2W5QDz4HlhcxQKpLEICiMvIvW
 rxE8DoYXdD9XWNActWeKCYwd5oLNTHCeovV8t35beKO4ybwMwnxZDsOUr
 +EoIbA4EMh6RzEZPilQnyzt0xbz12ktyQXf06gT3ElV8BG8rGWCAby9IX Q==;
X-CSE-ConnectionGUID: qzdDxGo+SfK7cRenkltjsg==
X-CSE-MsgGUID: NWWNF6uxTg2dODhpKCPwdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="67163018"
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="67163018"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 11:59:33 -0800
X-CSE-ConnectionGUID: ZfGVC1CFSJqCabFlAeJzcw==
X-CSE-MsgGUID: 1csXNgwSQSiwgXfz/2ZJKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="200740378"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.194])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 11:59:31 -0800
Date: Tue, 9 Dec 2025 21:59:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/pc8: Add parent interface for PC8 forcewake
 tricks
Message-ID: <aTh_oCyruKjdP3rS@intel.com>
References: <20251209111150.16853-1-ville.syrjala@linux.intel.com>
 <1d8e29c0684013d60529c28247ee6b4ce4510901@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1d8e29c0684013d60529c28247ee6b4ce4510901@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Dec 09, 2025 at 02:13:47PM +0200, Jani Nikula wrote:
> On Tue, 09 Dec 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
<snip>
> > diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
> > index 8f91a6f75c53..974a016ab3be 100644
> > --- a/drivers/gpu/drm/i915/display/intel_parent.h
> > +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> > @@ -22,6 +22,9 @@ void intel_parent_hdcp_gsc_context_free(struct intel_display *display,
> >  bool intel_parent_irq_enabled(struct intel_display *display);
> >  void intel_parent_irq_synchronize(struct intel_display *display);
> >  
> > +void intel_parent_pc8_block(struct intel_display *display);
> > +void intel_parent_pc8_unblock(struct intel_display *display);
> > +
> >  bool intel_parent_rps_available(struct intel_display *display);
> >  void intel_parent_rps_boost_if_not_started(struct intel_display *display, struct dma_fence *fence);
> >  void intel_parent_rps_mark_interactive(struct intel_display *display, bool interactive);
> > diff --git a/drivers/gpu/drm/i915/i915_display_pc8.c b/drivers/gpu/drm/i915/i915_display_pc8.c
> > new file mode 100644
> > index 000000000000..443935d282e3
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/i915_display_pc8.c
> > @@ -0,0 +1,30 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright 2025, Intel Corporation.
> > + */
> > +
> > +#include <drm/drm_print.h>
> > +#include <drm/intel/display_parent_interface.h>
> > +
> > +#include "i915_drv.h"
> > +#include "intel_uncore.h"
> 
> For completeness, I think this should include i915_display_pc8.h. I'm a
> bit surprised the compilers only warn about non-static functions without
> declarations, not about non-static variables.

A bit of googling gave me, among other things, this:
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=110947

And indeed enabling -Wmissing-variable-declarations still
triggers on 'current_stack_pointer'. So I guess no progress
on that since 2023 :(

The other surprising thing here is that the extern decalaration
doesn't seem to need the type definition. Or at least HDRTEST
passses w/o including display_parent_interface.h in
i915_display_pc8.h.

-- 
Ville Syrjälä
Intel
