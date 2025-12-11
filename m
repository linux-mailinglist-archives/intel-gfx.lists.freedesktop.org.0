Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED64CB623C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 15:06:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7206910E720;
	Thu, 11 Dec 2025 14:05:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XeFJagqT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68D6610E720;
 Thu, 11 Dec 2025 14:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765461956; x=1796997956;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dzXHVkwC/M9NRU1IUfVXSf2jXX10b2DrCsYDrW/bCBE=;
 b=XeFJagqTC338aYsBrBL3ICEXk2vBcz0U+ZP7hwYP+mk/q/0SSSulkX1c
 SPRX6PihjKmUBp7Rnf4TN8a3RjHmurBV3hw0yjPezHO5QV7b63sgNxh1N
 seWzTdJ3vbmopHygpwSR6Hta+1IbqFS4OSAvbydbt0yk/6AMGtv90apM/
 xeEFv3tQca9+6jEjxPvq56u27XUdlZGw9am8DMqe2/sDw05PIfIj15m8i
 67wcFN0x74rI0sqLONw7aMAdpF7eYPOiTWfR+7gMI2cNQt7p2RWN71kyX
 7pDVTfFGr6d+meJJneMgXpSF8Y/n/qjq0PMTiCz9ZCwrR+y7sSfQs/D4z w==;
X-CSE-ConnectionGUID: CHCqlKDwQ1Gd27cLM8yzzQ==
X-CSE-MsgGUID: ijC6Ci8TR4eId4vLaZ8pcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="70024310"
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="70024310"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 06:05:56 -0800
X-CSE-ConnectionGUID: ZCBkKRKbTiOh3hkRTKb4rw==
X-CSE-MsgGUID: wdnlf7YcS6G5swgkblAQgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="227460341"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 06:05:55 -0800
Date: Thu, 11 Dec 2025 15:05:52 +0100
From: Raag Jadav <raag.jadav@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/display: Fix intel_lpe_audio_irq_handler
 for PREEMPT-RT
Message-ID: <aTrPwDcYsMMJhSPv@black.igk.intel.com>
References: <20251209151319.494640-3-dev@lankhorst.se>
 <20251209151319.494640-4-dev@lankhorst.se>
 <f9641fa9298cf52efbde5d41014470f2355e3551@intel.com>
 <cb0c9201-74f9-43c5-8177-5b5b77851973@lankhorst.se>
 <e0ba6a112e0150731a23934109e1419d07e526e2@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e0ba6a112e0150731a23934109e1419d07e526e2@intel.com>
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

On Thu, Dec 11, 2025 at 10:47:01AM +0200, Jani Nikula wrote:
> On Wed, 10 Dec 2025, Maarten Lankhorst <dev@lankhorst.se> wrote:
> > Hey,
> >
> > Just needs a typo fixed, Matthew Brost also commented that the second I915 here should be PREEMPT-RT instead.
> 
> The commit message does not say what is being done here, and why.
> 
> "no need for backporting"?
> 
> "this is only useful for i915"?
> 
> *what* "doesn't compile with PREEMPT-RT enabled"?
> 
> Nobody's going to understand what any of this means if a bisect/blame
> lands here a couple of years from now, even if it's an apparently simple
> change.

I've been looking at some of the AMD patches and found the template
to be much useful.

Subject: [WHAT]

Commit message:
[WHY]

[HOW]

Not a hard mandate but worth thinking in this direction?

Raag

> > Den 2025-12-10 kl. 09:56, skrev Jani Nikula:
> >> On Tue, 09 Dec 2025, Maarten Lankhorst <dev@lankhorst.se> wrote:
> >>> No need for backporting, this is only useful for i915,
> >>> and it doesn't compile with I915 enabled.
> >> 
> >> Please elaborate. There's just riddles here.
> >> 
> >> BR,
> >> Jani.
> >> 
> >>>
> >>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> >>> ---
> >>>  drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
> >>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> >>> index 5b41abe1c64d5..172c0062237eb 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> >>> @@ -262,7 +262,7 @@ void intel_lpe_audio_irq_handler(struct intel_display *display)
> >>>  	if (!HAS_LPE_AUDIO(display))
> >>>  		return;
> >>>  
> >>> -	ret = generic_handle_irq(display->audio.lpe.irq);
> >>> +	ret = generic_handle_irq_safe(display->audio.lpe.irq);
> >>>  	if (ret)
> >>>  		drm_err_ratelimited(display->drm,
> >>>  				    "error handling LPE audio irq: %d\n", ret);
> >> 
> >
> 
> -- 
> Jani Nikula, Intel
