Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 943A3B38A21
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Aug 2025 21:19:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF48810E0A0;
	Wed, 27 Aug 2025 19:19:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KCo9H8/e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2FC10E0A0;
 Wed, 27 Aug 2025 19:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756322356; x=1787858356;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KnA6vMdsYlj0a+dyYd/aMZE7qWdHZRmNrBMLb5p1Bnc=;
 b=KCo9H8/eo2nHosN5tJPU+CajhMOFsu57kFKz6IViEyZZuJm56DRHfTJa
 ch6PKqOdL1t62Ti5sv5zjSD2jOf4Qwh6pWYhKJ1yaEIS7GvWdjJQlF4HA
 NktSZc+CU6sptADA8l47xcs1JxpcyzUQmuVEccnL0F5EFtf6psuIwtk56
 sfNsYGP5eUm8L6wTmxqgEvk+/89puOhC+VIyNV4OWrTx8k13bBJahY+JO
 MBXCEKjeZslz+rEy4u5yTbAZe1ZQrhfb5DJ/hBhN0AWR1B5jASP7+MjPn
 uJYwO7igzFBqg/qP/UnShQEVowmM3pC5I30bHMt3jhxMYwVbiMBe7U6i3 g==;
X-CSE-ConnectionGUID: HuuX33+1RWqG24Vdt2sztg==
X-CSE-MsgGUID: nFfieHrHRy+Z6yQoPkZNrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11535"; a="58435979"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58435979"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2025 12:19:16 -0700
X-CSE-ConnectionGUID: ankvwFHfRUeWxyeuB2W0pA==
X-CSE-MsgGUID: d30Os1LiSTuiYSdmZW30wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="175214944"
Received: from abityuts-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.199])
 by orviesa005.jf.intel.com with SMTP; 27 Aug 2025 12:19:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Aug 2025 22:19:12 +0300
Date: Wed, 27 Aug 2025 22:19:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 4/4] drm/i915/psr: Add poll for checking PSR is idle
 before starting update
Message-ID: <aK9aML4GJI4kop2r@intel.com>
References: <20250806052213.1800559-1-jouni.hogander@intel.com>
 <20250806052213.1800559-5-jouni.hogander@intel.com>
 <aK2qPstrBZZCtmfa@intel.com>
 <808fef64029b77661d2e084c1ff7e29fc0706cb6.camel@intel.com>
 <aK8C5-fWIwd9eLbt@intel.com>
 <71e43318412992094ba2761e0366fd3593704087.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <71e43318412992094ba2761e0366fd3593704087.camel@intel.com>
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

On Wed, Aug 27, 2025 at 01:22:28PM +0000, Hogander, Jouni wrote:
> On Wed, 2025-08-27 at 16:06 +0300, Ville Syrjälä wrote:
> > On Tue, Aug 26, 2025 at 02:30:50PM +0000, Hogander, Jouni wrote:
> > > On Tue, 2025-08-26 at 15:36 +0300, Ville Syrjälä wrote:
> > > > On Wed, Aug 06, 2025 at 08:22:13AM +0300, Jouni Högander wrote:
> > > > > We are currently observing crc failures after we started using
> > > > > dsb
> > > > > for PSR
> > > > > updates as well. This seems to happen because PSR HW is still
> > > > > sending
> > > > > couple of updates using old framebuffers on wake-up.
> > > > > 
> > > > > Fix this by adding poll ensuring PSR is idle before starting
> > > > > update.
> > > > > 
> > > > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_display.c | 2 ++
> > > > >  1 file changed, 2 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > index c1a3a95c65f0..411c74c73eae 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -7271,6 +7271,8 @@ static void
> > > > > intel_atomic_dsb_finish(struct
> > > > > intel_atomic_state *state,
> > > > >  		intel_psr_trigger_frame_change_event(new_crtc_
> > > > > stat
> > > > > e->dsb_commit,
> > > > >  						     state,
> > > > > crtc);
> > > > >  
> > > > > +		intel_psr_wait_for_idle_dsb(new_crtc_state);
> > > > > +
> > > > >  		if (new_crtc_state->use_dsb)
> > > > >  			intel_dsb_vblank_evade(state,
> > > > > new_crtc_state->dsb_commit);
> > > > 
> > > > How come the 'evade scanline 0 + normal evasion' in
> > > > intel_dsb_vblank_evade()
> > > > is not enough here?
> > > 
> > > the problem doesn't happen when PSR is in SRD_ENT/DEEP_SLEEP as
> > > committing new changes is started. It seems to happen when PSR
> > > transitioning into SRD_ENT/DEEP_SLEEP is ongoing when new changes
> > > are
> > > being committed. In this case evasion passes and PSR is continuing
> > > transitioning into SRD_ENT/DEEP_SLEEP. Then wake-up starts
> > > immediately
> > > due to pending "Frame Change" event and in this case HW is sending
> > > a
> > > frame using old plane configuration.
> > 
> > That's a bit weird. I think we are configuring things so that there
> > should be that extra vblank already for the first frame after PSR
> > exit. So I would expect things to latch properly even if we write
> > the registers during the PSR entry sequence.
> > 
> > Hmm, though the DSB itself never waits for the delayed vblank
> > directly. Maybe the delayed vblank does get suppressed for
> > one frame during the sequence somewhere, but the undelayed
> > vblank used by the DSB does not.
> > 
> > One could perhaps try to sample a timestamp from the DSB after
> > it thinks the vblank has happened, and sample another one from
> > the CPU delayed vblank interrupt (which I would expect to match
> > when the hardware really latches stuff), and compare how they
> > look. Though that does require one to enable the CPU interrupt
> > which itself will trigger the PSR exit (at least on some hw),
> > so not sure how easy it is to hit the exact conditions required.
> > I suppose one might try to wait for the PSR state machine to
> > be in the right state just before triggering the exit.
> 
> Enabling the interrupt will trigger exit. Are you thinking that state
> machine wait as a solution or as a experiment? :

Just as an experiment to make sure we understand what's going on.

I suppose if my theory about the undelayed vblank holds there should
also be no way to hit this when not using the DSB since the mmio path
always completes the flips based on the delayed vblank. But I suppose
that's harder to use as any kind of proof since it'll be much harder
to hit the exact time window with the CPU anyway.

-- 
Ville Syrjälä
Intel
