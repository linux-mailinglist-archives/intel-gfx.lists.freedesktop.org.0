Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58672C6B01B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 18:40:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4217110E10B;
	Tue, 18 Nov 2025 17:40:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ic+mFaJF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DFDD10E10B;
 Tue, 18 Nov 2025 17:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763487611; x=1795023611;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rG7bNWYbmRYbIowfiQFNuvi19J4KEBUDELQpWovK9WQ=;
 b=ic+mFaJFdnE3JLZQxqcYodMS4QEoju0+HyEnoAyim5T13QcObdIzY4OS
 CVBr2LnQ7qDj5E9eKRnMZ/f9tgYE1gXXCBjYwfpmFa/JRVcdUv53R9V5i
 hGHMB4vNRpqqCLfNkyL+oAPmhCKf8ck+I4yoA/FOZEkLGy1g7vC7G72vD
 WLBZppLGUxE8LjMMoBKTYyRQNQDxbtBbZoGXv5lWjytwIJ6hAu8liEnrI
 WQwIIzT7WzAx/Oo8V9sVjBOKVNOytcOd64reIcgiKCZ8IXdAEJ0iOfNUK
 njGkyJawJr33MH3wMfutxRcSU4HLb0UyjQniGRSffvbRNf9krbW/6+yCg Q==;
X-CSE-ConnectionGUID: 39F64nOhTo63AK3K5va3NQ==
X-CSE-MsgGUID: 84UIsAuFQhWlAAI1y2/nIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="68120779"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="68120779"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 09:40:11 -0800
X-CSE-ConnectionGUID: 9vhq6PnkQbG4wsw5sdEHMQ==
X-CSE-MsgGUID: NB0cfbstROKoq3dHxjtGnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="190474633"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.187])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 09:40:09 -0800
Date: Tue, 18 Nov 2025 19:40:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915/display: change pipe order for platforms
 with big joiner
Message-ID: <aRyvdsdmuS7LvI1F@intel.com>
References: <20251118095801.2248786-1-jani.nikula@intel.com>
 <20251118133758.2373008-1-jani.nikula@intel.com>
 <0989b7647aef0c1dfacbdd302e5b3720d3a558c4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0989b7647aef0c1dfacbdd302e5b3720d3a558c4@intel.com>
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

On Tue, Nov 18, 2025 at 03:43:35PM +0200, Jani Nikula wrote:
> On Tue, 18 Nov 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> > When big joiner is enabled, it reserves the adjacent pipe as the
> > secondary pipe. This happens without the user space knowing, and
> > subsequent attempts at using the CRTC with that pipe will fail. If the
> > user space does not have a coping mechanism, i.e. trying another pipe,
> > this leads to a black screen.
> >
> > If the platform allows joining A+B, map the CRTCs to pipes in order A,
> > C, B, and D to trick userspace to using pipes that are more likely to be
> > available for joining.
> >
> > Although there are currently no platforms with more than four pipes, add
> > a fallback for initializing the rest of the pipes to not miss them.
> >
> > v2: Also remove WARN_ON()
> 
> There's still this in intel_atomic_check_joiner():
> 
> 		/*
> 		 * The state copy logic assumes the primary crtc gets processed
> 		 * before the secondary crtc during the main compute_config loop.
> 		 * This works because the crtcs are created in pipe order,
> 		 * and the hardware requires primary pipe < secondary pipe as well.
> 		 * Should that change we need to rethink the logic.
> 		 */
> 		if (WARN_ON(drm_crtc_index(&primary_crtc->base) >
> 			    drm_crtc_index(&secondary_crtc->base)))
> 			return -EINVAL;
> 
> This still works for A+B and C+D joining, but will fail loudly for B+C
> joining.
> 
> Ideas?

Hmm, I think I got rid of that requirement semi-accidentally in
commit 3a5e09d82f97 ("drm/i915: Fix intel_modeset_pipe_config_late() for
bigjoiner")

So it looks to me like we can just drop that check entirely.

> 
> BR,
> Jani.
> 
> 
> >
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >
> > ---
> >
> > Let's see what breaks...
> > ---
> >  drivers/gpu/drm/i915/display/intel_crtc.c     |  2 --
> >  .../drm/i915/display/intel_display_driver.c   | 26 ++++++++++++++++++-
> >  2 files changed, 25 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> > index 9d2a23c96c61..11e58d07ddef 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > @@ -394,8 +394,6 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
> >  
> >  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
> >  
> > -	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
> > -
> >  	if (HAS_CASF(display))
> >  		drm_crtc_create_sharpness_strength_property(&crtc->base);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > index 7e000ba3e08b..83aad727017b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > @@ -452,6 +452,7 @@ bool intel_display_driver_check_access(struct intel_display *display)
> >  /* part #2: call after irq install, but before gem init */
> >  int intel_display_driver_probe_nogem(struct intel_display *display)
> >  {
> > +	u8 pipe_mask = U8_MAX;
> >  	enum pipe pipe;
> >  	int ret;
> >  
> > @@ -470,7 +471,30 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
> >  		    INTEL_NUM_PIPES(display),
> >  		    INTEL_NUM_PIPES(display) > 1 ? "s" : "");
> >  
> > -	for_each_pipe(display, pipe) {
> > +	/*
> > +	 * If we have a joiner that can join A+B, expose the pipes in order A,
> > +	 * C, B, D to trick user space into using pipes that are more likely to
> > +	 * be available for both a) user space if pipe B has been reserved for
> > +	 * the joiner, and b) the joiner if pipe A doesn't need the joiner.
> > +	 *
> > +	 * Fall back to normal initialization for the remaining pipes, if any.
> > +	 */
> > +	if (HAS_BIGJOINER(display) && DISPLAY_VER(display) >= 12) {
> > +		enum pipe pipe_order[] = { PIPE_A, PIPE_C, PIPE_B, PIPE_D };
> > +		int i;
> > +
> > +		for (i = 0; i < ARRAY_SIZE(pipe_order); i++) {
> > +			pipe = pipe_order[i];
> > +
> > +			ret = intel_crtc_init(display, pipe);
> > +			if (ret)
> > +				goto err_mode_config;
> > +
> > +			pipe_mask &= ~BIT(pipe);
> > +		}
> > +	}
> > +
> > +	for_each_pipe_masked(display, pipe, pipe_mask) {
> >  		ret = intel_crtc_init(display, pipe);
> >  		if (ret)
> >  			goto err_mode_config;
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
