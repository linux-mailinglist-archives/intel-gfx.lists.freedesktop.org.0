Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DA340F811
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 14:40:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53B9D6EC6B;
	Fri, 17 Sep 2021 12:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B4B6EC4A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 12:40:28 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id i23so14991162wrb.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 05:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nKBuCbkF3kPVrjY5C/tcxRRQz2G+NfrIrTNmMy5XFPU=;
 b=OUqn2Tz2yttVTxcrWngmBdlzuKLmiiezgNcpQIO2wjhg4vPtq8ePIkbGPAWlvemLVi
 RsD2XfsHBUh5FvyOUDRjMhdjyn67r9wkWVsVto08egnWi2VOS+VZWZZC6fhbQaMv+2gZ
 dMN8QOYBvORr33gBHbIhhEVnK7vGa8M6B0DhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nKBuCbkF3kPVrjY5C/tcxRRQz2G+NfrIrTNmMy5XFPU=;
 b=IR1jSjieXhy561oLBwAerbpHcSfOY639FtLsZxGEKjdfa4makhJDmXnXUHk7h3BxY4
 +OkWUsWheUAWEySbgJT0OsQH1BxrNW82Bee8R5M0AsPKBk3flHbyNliQIWu0NckBHpws
 5f8Bs6dqbkGYEvnxyFK3TF59OFVMcmT6G1YqinE5KvkaoOPJxjLYaKcV6YJN6WCi/9Wu
 qF7Dp7Wm6APGUdUbjYMLbezvkxSUY9TKip5WQysr6kjtchAJR9fyrKRBH0ndbwR0Sd9D
 l709SbPboRtw/XDKJlq0BXy57H/oMUrnvMvsxDjESRtYhptgODS16XT8eoRn7i6EeLk1
 TexA==
X-Gm-Message-State: AOAM530CdvRpryzPgG+UtzwhpDBcAzD8xJdOteXukuPJXvOMKkRWCvMj
 /E9aWLIIAlT205kifLUmR1bPbg==
X-Google-Smtp-Source: ABdhPJxGmc23DlGjBMnldZpfIOMqZi5Kg9CIZ47Ev3/enxRQaUgiLOI3GYpmb8OpI0QcUz0sXG1X6w==
X-Received: by 2002:a05:6000:14a:: with SMTP id
 r10mr11996599wrx.380.1631882427383; 
 Fri, 17 Sep 2021 05:40:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id d2sm6536512wrc.32.2021.09.17.05.40.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 05:40:26 -0700 (PDT)
Date: Fri, 17 Sep 2021 14:40:25 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, daniele.ceraolospurio@intel.com,
 john.c.harrison@intel.com
Message-ID: <YUSMuZlQm9r0JqJi@phenom.ffwll.local>
References: <20210914050956.30685-1-matthew.brost@intel.com>
 <20210914050956.30685-5-matthew.brost@intel.com>
 <YUCxwV+A3C8BXQp+@phenom.ffwll.local>
 <20210914233654.GA17676@jons-linux-dev-box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210914233654.GA17676@jons-linux-dev-box>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
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

On Tue, Sep 14, 2021 at 04:36:54PM -0700, Matthew Brost wrote:
> On Tue, Sep 14, 2021 at 04:29:21PM +0200, Daniel Vetter wrote:
> > On Mon, Sep 13, 2021 at 10:09:56PM -0700, Matthew Brost wrote:
> > > From: John Harrison <John.C.Harrison@Intel.com>
> > > 
> > > When i915 receives a context reset notification from GuC, it triggers
> > > an error capture before resetting any outstanding requsts of that
> > > context. Unfortunately, the error capture is not a time bound
> > > operation. In certain situations it can take a long time, particularly
> > > when multiple large LMEM buffers must be read back and eoncoded. If
> > > this delay is longer than other timeouts (heartbeat, test recovery,
> > > etc.) then a full GT reset can be triggered in the middle.
> > > 
> > > That can result in the context being reset by GuC actually being
> > > destroyed before the error capture completes and the GuC submission
> > > code resumes. Thus, the GuC side can start dereferencing stale
> > > pointers and Bad Things ensue.
> > > 
> > > So add a refcount get of the context during the entire reset
> > > operation. That way, the context can't be destroyed part way through
> > > no matter what other resets or user interactions occur.
> > > 
> > > v2:
> > >  (Matthew Brost)
> > >   - Update patch to work with async error capture
> > > 
> > > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > 
> > This sounds like a fundamental issue in our reset/scheduler design. If we
> > have multiple timeout-things working in parallel, then there's going to be
> > an endless whack-a-mole fireworks show.
> > 
> 
> We have two different possible reset paths.
> 
> One initiated from the GuC on per context basis. Each of these resets is
> execute serially in the order in which they are received and each
> contexts reset is protected by a lock.
> 
> Another is a full GT reset, typically triggered from the heartbeat or
> selftest. Only 1 of these can happen at time as this is protected by a
> reset mutex. The full GT reset should flush all the inflight per context
> resets before proceeding with the whole GT reset (after patch #3 in this
> series), I believe this patch was written before patch #3 so when it was
> written there was a race where a per context reset & GT reset could be
> happening at the same time but that is no longer the case. The commit
> message should be reworded to reflect that. All that being said I still
> believe the patch is correct to reference count the context until after
> the error capture completes. As John H said, this is just a standard ref
> count here.

Yeah the direction in drm/sched, and which we should follow, is that
resets can't happen in parallel. At least not when touching the same
structs. So per-engine reset can proceed as-is, but if you go a level
higher (guc reset) then that needs to block out everything else.

And yes heartbeat and timeout and all that should follow this pattern too.

If we can have multiple ongoing resets touching the same engine in
parallel, then shit will hit the fan.

I'm also involved in a discussion with amdgpu folks for similar reasons.
You can't fix this with some hacks locally.

Wrt "it's just standard refcounting", see my other reply.

> > Reset is not a perf critical path (aside from media timeout, which guc
> > handles internally anyway). Simplicity trumps everything else. The fix
> > here is to guarantee that anything related to reset cannot happen in
> > parallel with anything else related to reset/timeout. At least on a
> > per-engine (and really on a per-reset domain) basis.
> > 
> > The fix we've developed for drm/sched is that the driver can allocate a
> > single-thread work queue, pass it to each drm/sched instance, and all
> > timeout handling is run in there.
> > 
> > For i915 it's more of a mess since we have a ton of random things that
> > time out/reset potentially going on in parallel. But that's the design we
> > should head towards.
> >
> 
> See above, the parallel resets is fixed by patch #3 in this series.
> 
> > _not_ sprinkling random refcounts all over the place until most of the
> > oops/splats disappear. That's cargo-culting, not engineering.
> 
> See above, I believe the ref count is still correct.

So with patch #3 we don't need this patch anymore? If so, then we should
drop it. And document the exact rules we rely on that guarantee that the
context doesn't untimely disappear (in the kerneldoc for the involved
structs).
-Daniel

> 
> Matt
> 
> > -Daniel
> > 
> > > ---
> > >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 24 +++++++++++++++++--
> > >  1 file changed, 22 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > index 1986a57b52cc..02917fc4d4a8 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > @@ -2888,6 +2888,8 @@ static void capture_worker_func(struct work_struct *w)
> > >  	intel_engine_set_hung_context(engine, ce);
> > >  	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
> > >  		i915_capture_error_state(gt, ce->engine->mask);
> > > +
> > > +	intel_context_put(ce);
> > >  }
> > >  
> > >  static void capture_error_state(struct intel_guc *guc,
> > > @@ -2924,7 +2926,7 @@ static void guc_context_replay(struct intel_context *ce)
> > >  	tasklet_hi_schedule(&sched_engine->tasklet);
> > >  }
> > >  
> > > -static void guc_handle_context_reset(struct intel_guc *guc,
> > > +static bool guc_handle_context_reset(struct intel_guc *guc,
> > >  				     struct intel_context *ce)
> > >  {
> > >  	trace_intel_context_reset(ce);
> > > @@ -2937,7 +2939,11 @@ static void guc_handle_context_reset(struct intel_guc *guc,
> > >  		   !context_blocked(ce))) {
> > >  		capture_error_state(guc, ce);
> > >  		guc_context_replay(ce);
> > > +
> > > +		return false;
> > >  	}
> > > +
> > > +	return true;
> > >  }
> > >  
> > >  int intel_guc_context_reset_process_msg(struct intel_guc *guc,
> > > @@ -2945,6 +2951,7 @@ int intel_guc_context_reset_process_msg(struct intel_guc *guc,
> > >  {
> > >  	struct intel_context *ce;
> > >  	int desc_idx;
> > > +	unsigned long flags;
> > >  
> > >  	if (unlikely(len != 1)) {
> > >  		drm_err(&guc_to_gt(guc)->i915->drm, "Invalid length %u", len);
> > > @@ -2952,11 +2959,24 @@ int intel_guc_context_reset_process_msg(struct intel_guc *guc,
> > >  	}
> > >  
> > >  	desc_idx = msg[0];
> > > +
> > > +	/*
> > > +	 * The context lookup uses the xarray but lookups only require an RCU lock
> > > +	 * not the full spinlock. So take the lock explicitly and keep it until the
> > > +	 * context has been reference count locked to ensure it can't be destroyed
> > > +	 * asynchronously until the reset is done.
> > > +	 */
> > > +	xa_lock_irqsave(&guc->context_lookup, flags);
> > >  	ce = g2h_context_lookup(guc, desc_idx);
> > > +	if (ce)
> > > +		intel_context_get(ce);
> > > +	xa_unlock_irqrestore(&guc->context_lookup, flags);
> > > +
> > >  	if (unlikely(!ce))
> > >  		return -EPROTO;
> > >  
> > > -	guc_handle_context_reset(guc, ce);
> > > +	if (guc_handle_context_reset(guc, ce))
> > > +		intel_context_put(ce);
> > >  
> > >  	return 0;
> > >  }
> > > -- 
> > > 2.32.0
> > > 
> > 
> > -- 
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
