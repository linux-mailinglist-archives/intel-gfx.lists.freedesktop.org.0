Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2787AC70A93
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:37:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1169D10E260;
	Wed, 19 Nov 2025 18:36:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fotXC7Hf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1D8410E259;
 Wed, 19 Nov 2025 18:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763577416; x=1795113416;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4LVvYR2bnf662rP+MLDWwJXbXvs1p0DIW49BXimDtKo=;
 b=fotXC7Hf7EyIJAkxPGtANDa9962a3AAISl1LX9XFsIPD/Z8ZmULWTUsy
 i9uYSF+5raWzz9Wgacp+n3UH2F5DtdghS8h9UEEyWv77k5UsdhJpSrczZ
 CxPCxj5mgrWGp+/R0dbKzAjlC+q9YhoyXQNxq5tGSrxrXqZa0z/VXUEFD
 oZnKNr1Gq8xplQXECOxevh3j0LjtDoPz6U7Ke6RwRc0YsCLUDs3aCxMP4
 frQR5c4iQdrDpbcPSVa0orKb3qkpbzgg24stVNcPFOOy0F5gTpsyKYl68
 fdYAM0TRtAgPfTfl7cpMHgxUv6zLbbZCF3pJEt6OgTjIG5j96OPpDL7vH Q==;
X-CSE-ConnectionGUID: g/bzprapQsmMKx//rebfoQ==
X-CSE-MsgGUID: bQBjTbBwR+6wCDp5XBYXGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="69498359"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="69498359"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:36:55 -0800
X-CSE-ConnectionGUID: WrvycS9ZSRulP73RaUdeIA==
X-CSE-MsgGUID: w8rSw+5UT9CDCoASewi37A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="195253285"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.124.221.119])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:36:54 -0800
Date: Wed, 19 Nov 2025 20:36:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915/display: change pipe order for platforms
 with big joiner
Message-ID: <aR4OQlenVXyv_4ex@intel.com>
References: <20251118095801.2248786-1-jani.nikula@intel.com>
 <20251118133758.2373008-1-jani.nikula@intel.com>
 <0989b7647aef0c1dfacbdd302e5b3720d3a558c4@intel.com>
 <aRyvdsdmuS7LvI1F@intel.com> <aRzKK_fxBHnpjp-w@intel.com>
 <3a89c42f9c513d6b601cf603be551d998de9d9ce@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3a89c42f9c513d6b601cf603be551d998de9d9ce@intel.com>
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

On Wed, Nov 19, 2025 at 03:09:20PM +0200, Jani Nikula wrote:
> On Tue, 18 Nov 2025, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Tue, Nov 18, 2025 at 07:40:06PM +0200, Ville Syrjälä wrote:
> >> On Tue, Nov 18, 2025 at 03:43:35PM +0200, Jani Nikula wrote:
> >> > On Tue, 18 Nov 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> >> > > When big joiner is enabled, it reserves the adjacent pipe as the
> >> > > secondary pipe. This happens without the user space knowing, and
> >> > > subsequent attempts at using the CRTC with that pipe will fail. If the
> >> > > user space does not have a coping mechanism, i.e. trying another pipe,
> >> > > this leads to a black screen.
> >> > >
> >> > > If the platform allows joining A+B, map the CRTCs to pipes in order A,
> >> > > C, B, and D to trick userspace to using pipes that are more likely to be
> >> > > available for joining.
> >> > >
> >> > > Although there are currently no platforms with more than four pipes, add
> >> > > a fallback for initializing the rest of the pipes to not miss them.
> >> > >
> >> > > v2: Also remove WARN_ON()
> >> > 
> >> > There's still this in intel_atomic_check_joiner():
> >> > 
> >> > 		/*
> >> > 		 * The state copy logic assumes the primary crtc gets processed
> >> > 		 * before the secondary crtc during the main compute_config loop.
> >> > 		 * This works because the crtcs are created in pipe order,
> >> > 		 * and the hardware requires primary pipe < secondary pipe as well.
> >> > 		 * Should that change we need to rethink the logic.
> >> > 		 */
> >> > 		if (WARN_ON(drm_crtc_index(&primary_crtc->base) >
> >> > 			    drm_crtc_index(&secondary_crtc->base)))
> >> > 			return -EINVAL;
> >> > 
> >> > This still works for A+B and C+D joining, but will fail loudly for B+C
> >> > joining.
> >> > 
> >> > Ideas?
> >> 
> >> Hmm, I think I got rid of that requirement semi-accidentally in
> >> commit 3a5e09d82f97 ("drm/i915: Fix intel_modeset_pipe_config_late() for
> >> bigjoiner")
> >> 
> >> So it looks to me like we can just drop that check entirely.
> >
> > After some pondering we might have a bit of problem with 
> > the for_each_intel_crtc*() stuff. At least during
> > the hardware programming phase we'd like those to walk the
> > crtcs in pipe order but currently they use the crtc index
> > order.
> >
> > Say we have a commit with pipes A+B,C. Currently we do
> > everything in the C->B->A or A->B->C order. Thus the joined
> > pipe A+B are always updated back-to-back, giving us the best
> > chance to get an atomic update across them. With the shuffling
> > pipe C will now sneak in between A and B, making it less likely
> > that the updates on A and B will happen on the same frame.
> >
> > So I'm thinking we probably want to change all the 
> > for_each_intel_crtc*() macros to use the pipe order as well.
> > Either that or we need to review each use case and rewrite
> > the important ones to use the pipe order.
> 
> Could this be the cause for [1]?
> 
> BR,
> Jani.
> 
> 
> [1] https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-twl-2/igt@i915_module_load@load.html#dmesg-warnings352

That seems to claim that someone used a vblank work already during
driver load, or the list is corrupted or something. I don't think
that should happen, so I guess someone needs to figure out where
that is coming from. Also I can't think of a reason why it would
only happen with the crts reordered...

-- 
Ville Syrjälä
Intel
