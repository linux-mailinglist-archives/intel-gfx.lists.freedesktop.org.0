Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C24D840BC51
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 01:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADD9F89E19;
	Tue, 14 Sep 2021 23:41:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DDB989E33;
 Tue, 14 Sep 2021 23:41:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="202331348"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="202331348"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 16:41:53 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="433195187"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 16:41:53 -0700
Date: Tue, 14 Sep 2021 16:36:54 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 daniele.ceraolospurio@intel.com, john.c.harrison@intel.com
Message-ID: <20210914233654.GA17676@jons-linux-dev-box>
References: <20210914050956.30685-1-matthew.brost@intel.com>
 <20210914050956.30685-5-matthew.brost@intel.com>
 <YUCxwV+A3C8BXQp+@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YUCxwV+A3C8BXQp+@phenom.ffwll.local>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/guc: Refcount context during
 error capture
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

On Tue, Sep 14, 2021 at 04:29:21PM +0200, Daniel Vetter wrote:
> On Mon, Sep 13, 2021 at 10:09:56PM -0700, Matthew Brost wrote:
> > From: John Harrison <John.C.Harrison@Intel.com>
> > 
> > When i915 receives a context reset notification from GuC, it triggers
> > an error capture before resetting any outstanding requsts of that
> > context. Unfortunately, the error capture is not a time bound
> > operation. In certain situations it can take a long time, particularly
> > when multiple large LMEM buffers must be read back and eoncoded. If
> > this delay is longer than other timeouts (heartbeat, test recovery,
> > etc.) then a full GT reset can be triggered in the middle.
> > 
> > That can result in the context being reset by GuC actually being
> > destroyed before the error capture completes and the GuC submission
> > code resumes. Thus, the GuC side can start dereferencing stale
> > pointers and Bad Things ensue.
> > 
> > So add a refcount get of the context during the entire reset
> > operation. That way, the context can't be destroyed part way through
> > no matter what other resets or user interactions occur.
> > 
> > v2:
> >  (Matthew Brost)
> >   - Update patch to work with async error capture
> > 
> > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> 
> This sounds like a fundamental issue in our reset/scheduler design. If we
> have multiple timeout-things working in parallel, then there's going to be
> an endless whack-a-mole fireworks show.
> 

We have two different possible reset paths.

One initiated from the GuC on per context basis. Each of these resets is
execute serially in the order in which they are received and each
contexts reset is protected by a lock.

Another is a full GT reset, typically triggered from the heartbeat or
selftest. Only 1 of these can happen at time as this is protected by a
reset mutex. The full GT reset should flush all the inflight per context
resets before proceeding with the whole GT reset (after patch #3 in this
series), I believe this patch was written before patch #3 so when it was
written there was a race where a per context reset & GT reset could be
happening at the same time but that is no longer the case. The commit
message should be reworded to reflect that. All that being said I still
believe the patch is correct to reference count the context until after
the error capture completes. As John H said, this is just a standard ref
count here.

> Reset is not a perf critical path (aside from media timeout, which guc
> handles internally anyway). Simplicity trumps everything else. The fix
> here is to guarantee that anything related to reset cannot happen in
> parallel with anything else related to reset/timeout. At least on a
> per-engine (and really on a per-reset domain) basis.
> 
> The fix we've developed for drm/sched is that the driver can allocate a
> single-thread work queue, pass it to each drm/sched instance, and all
> timeout handling is run in there.
> 
> For i915 it's more of a mess since we have a ton of random things that
> time out/reset potentially going on in parallel. But that's the design we
> should head towards.
>

See above, the parallel resets is fixed by patch #3 in this series.

> _not_ sprinkling random refcounts all over the place until most of the
> oops/splats disappear. That's cargo-culting, not engineering.

See above, I believe the ref count is still correct.

Matt

> -Daniel
> 
> > ---
> >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 24 +++++++++++++++++--
> >  1 file changed, 22 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 1986a57b52cc..02917fc4d4a8 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -2888,6 +2888,8 @@ static void capture_worker_func(struct work_struct *w)
> >  	intel_engine_set_hung_context(engine, ce);
> >  	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
> >  		i915_capture_error_state(gt, ce->engine->mask);
> > +
> > +	intel_context_put(ce);
> >  }
> >  
> >  static void capture_error_state(struct intel_guc *guc,
> > @@ -2924,7 +2926,7 @@ static void guc_context_replay(struct intel_context *ce)
> >  	tasklet_hi_schedule(&sched_engine->tasklet);
> >  }
> >  
> > -static void guc_handle_context_reset(struct intel_guc *guc,
> > +static bool guc_handle_context_reset(struct intel_guc *guc,
> >  				     struct intel_context *ce)
> >  {
> >  	trace_intel_context_reset(ce);
> > @@ -2937,7 +2939,11 @@ static void guc_handle_context_reset(struct intel_guc *guc,
> >  		   !context_blocked(ce))) {
> >  		capture_error_state(guc, ce);
> >  		guc_context_replay(ce);
> > +
> > +		return false;
> >  	}
> > +
> > +	return true;
> >  }
> >  
> >  int intel_guc_context_reset_process_msg(struct intel_guc *guc,
> > @@ -2945,6 +2951,7 @@ int intel_guc_context_reset_process_msg(struct intel_guc *guc,
> >  {
> >  	struct intel_context *ce;
> >  	int desc_idx;
> > +	unsigned long flags;
> >  
> >  	if (unlikely(len != 1)) {
> >  		drm_err(&guc_to_gt(guc)->i915->drm, "Invalid length %u", len);
> > @@ -2952,11 +2959,24 @@ int intel_guc_context_reset_process_msg(struct intel_guc *guc,
> >  	}
> >  
> >  	desc_idx = msg[0];
> > +
> > +	/*
> > +	 * The context lookup uses the xarray but lookups only require an RCU lock
> > +	 * not the full spinlock. So take the lock explicitly and keep it until the
> > +	 * context has been reference count locked to ensure it can't be destroyed
> > +	 * asynchronously until the reset is done.
> > +	 */
> > +	xa_lock_irqsave(&guc->context_lookup, flags);
> >  	ce = g2h_context_lookup(guc, desc_idx);
> > +	if (ce)
> > +		intel_context_get(ce);
> > +	xa_unlock_irqrestore(&guc->context_lookup, flags);
> > +
> >  	if (unlikely(!ce))
> >  		return -EPROTO;
> >  
> > -	guc_handle_context_reset(guc, ce);
> > +	if (guc_handle_context_reset(guc, ce))
> > +		intel_context_put(ce);
> >  
> >  	return 0;
> >  }
> > -- 
> > 2.32.0
> > 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
