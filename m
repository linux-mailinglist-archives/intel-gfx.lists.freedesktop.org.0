Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25187C8C441
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 23:57:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CE6410E725;
	Wed, 26 Nov 2025 22:57:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="APtBF07E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CCC710E726;
 Wed, 26 Nov 2025 22:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764197839; x=1795733839;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=34LwhM8xnKQMUVjYFt+ey4JPqtzo76IDKcTN6g6SeyM=;
 b=APtBF07ESlcBK2S7pDBJ4iUg2nlomT5Zo16xaTQOd1iJt2y+L+BL3gHd
 2f00iTd+hWumUY3kLoHMxewb3p6a5zrn89JhTQEafDdi3pDHZ3jMemTuC
 4KlY7xgbQ1s4qyT/098EwHpJ9Nm/HySx+9ajlKug6tnHi8FzNXQRc7v6Y
 va5OYdqSLa8M2CJ/geP3LLPOfYJiCdtW0u1RdsZLlD/xs49ysgZqpMklc
 6PLSCGbOlMlsv1q81qHNVvvqGYGRvzKv8OEdv2nXTHrG054lV9FB9sYIb
 iVdb3zwIP5SFKRObtN/7p6KAtfSXlWzyty4uL2XYeJWpqnTonevC2RaZx Q==;
X-CSE-ConnectionGUID: DFP6s68vSRi+voyJeKAtEg==
X-CSE-MsgGUID: Tz08Qzs6ReCN9cJKy2w2Dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="68837957"
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="68837957"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 14:57:19 -0800
X-CSE-ConnectionGUID: 9rY8FkJ8RIydFdzulxtStA==
X-CSE-MsgGUID: H2b33ixOQyuJPZHX8r/wyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,229,1758610800"; d="scan'208";a="197223470"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.205])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 14:57:16 -0800
Date: Thu, 27 Nov 2025 00:57:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "linux-rt-devel@lists.linux.dev" <linux-rt-devel@lists.linux.dev>,
 Mario Kleiner <mario.kleiner.de@gmail.com>,
 Mike Galbraith <umgwanakikbuti@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH v2 6/7] drm/i915/display: Enable interrupts earlier on
 PREEMPT_RT
Message-ID: <aSeFyN1iD5CwCZZ6@intel.com>
References: <20251104083634.670753-1-dev@lankhorst.se>
 <20251104083634.670753-7-dev@lankhorst.se>
 <DM4PR11MB63603779042D13B89E36BB02F4DEA@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB63603779042D13B89E36BB02F4DEA@DM4PR11MB6360.namprd11.prod.outlook.com>
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

On Wed, Nov 26, 2025 at 08:45:31PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Maarten
> > Lankhorst
> > Sent: Tuesday, November 4, 2025 2:07 PM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: linux-rt-devel@lists.linux.dev; Maarten Lankhorst <dev@lankhorst.se>; Mario
> > Kleiner <mario.kleiner.de@gmail.com>; Mike Galbraith
> > <umgwanakikbuti@gmail.com>; Thomas Gleixner <tglx@linutronix.de>; Sebastian
> > Andrzej Siewior <bigeasy@linutronix.de>; Clark Williams
> > <clrkwllms@kernel.org>; Steven Rostedt <rostedt@goodmis.org>
> > Subject: [PATCH v2 6/7] drm/i915/display: Enable interrupts earlier on
> > PREEMPT_RT
> > 
> > The last part of the vblank evasion is about updating bookkeeping, not
> > programming hardware registers.
> > 
> > The interrupts cannot stay disabled here on PREEMPT_RT since the spinlocks get
> > converted to mutexes.
> > 
> > Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> > ---
> >  drivers/gpu/drm/i915/display/intel_crtc.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> > b/drivers/gpu/drm/i915/display/intel_crtc.c
> > index 9d2a23c96c61b..b87f6b4a4f3d7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > @@ -688,6 +688,14 @@ void intel_pipe_update_end(struct intel_atomic_state
> > *state,
> >  	    intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
> >  		icl_dsi_frame_update(new_crtc_state);
> > 
> > +#if IS_ENABLED(CONFIG_PREEMPT_RT)
> > +	/*
> > +	 * Timing sensitive register writing completed, non-deterministic
> > +	 * locking from here on out.
> > +	 */
> > +	local_irq_enable();
> > +#endif
> 
> I think we do have VRR send push etc handled here, also arming registers are being updated.
> Not sure we can allow interrupts here. Please check once

Yeah, this doesn't seem exactly great.

Even without VRR we want the register writes and vblank event arming
to happen in the same frame. Though without VRR I suppose the worst
that could happen is that we complete the commit one frame too late.

With VRR however we need the vblank event arming and push to happen
in the same frame. Otherwise we'll complete the flip early and leave
push send assrted, which causes the next frame to terminate at vmin.
Basically that makes the next frame a mailbox flip as far as push
send is concerned.

The race is already there, but allowing the CPU to get scheduled away
will widen it. We do try to handle it in the vblank evasion, but I
think we're handling it way too early (in intel_vblank_evade_init())
so that part itself is racy. I suppose we should rather do the vmin
vs. vmax evasion decision after we've actually read out the current
scanline. That should at least make it a bit more robust.

One other thing we could maybe think about is arming the vblank
event after the push is sent (with seq = current+1), and then
immediately check if the push bit already cleared, and if so
cancel the arming and send the event directly (with seq = current).
But that's just a quick idead that popped to my head, didn't really
think it through in detail.

I'm tempted to say we should just make the vblank locks raw spinlocks
as well. But I've not looked at what other drivers do in the vblank
hooks so dunno how feasible that is.

-- 
Ville Syrjälä
Intel
