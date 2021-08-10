Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA9B3E5862
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 12:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4289389E32;
	Tue, 10 Aug 2021 10:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F94289E32
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 10:32:26 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id b13so25601704wrs.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 03:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ceF787XykobiKFl8nUZkZybECG7Qcx4aPsB3UadAVfo=;
 b=kTceJzaqI1QKetcgfB3NATboog2n6ZAoQsp54/Lo5HqY3EopbPL+7wFLtqdMDf4TRJ
 lMiEDJXKR+mEncOqQXi3JDfJo4p8wVXqg98lWQv7NHTrXBbE3llWTpQdTHUMxBkH6FA7
 Qgz+IBu9SyGOOVJMMN6+0JqcO7zahPCrhD1dc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ceF787XykobiKFl8nUZkZybECG7Qcx4aPsB3UadAVfo=;
 b=S199jV0740OQmM5Biq94GpF3BGN52/EKo7rpXtCotXYg2Dq78Itrw8fmEXAvd3U0oL
 e1LH7jHGtlN3VllcmiAmy67QcTcBayZO+uaz8JIGqRnSEk1b/foTJDUE8qbVFaaxKPQt
 XvCbjm/apKLLozbTb6zYy6/WXcJLcTguKeprdUd7Xj7qAkIFeUYeipeYIASbX8U4WmYS
 JtotOLlqrti/z0vwsyY5vgnkwDzGXUiQRWW8fojmFU+BdfIKDzNKy5RKZ79ItHA86w55
 1WHf+Zgne0etZ5TyHbN404UfGt7RfGCeOQdtpQmxVSxbGIOVn/NZstNA1B2HwCIH6jFh
 ZZ5g==
X-Gm-Message-State: AOAM532OCBebzjdWhaCBJbX7ZBKIQ3nZB4Y4LiBjghrI3jXLiKhjKL6U
 p3JJ0jBroxrkdPHBfCF+ScPleQ==
X-Google-Smtp-Source: ABdhPJzb3vKThNnKotOE71wkIlkyvJ4nF0paekpufoemMlJRM2MBbPZ9YOF0jYJRZpWf3xWsBb3foA==
X-Received: by 2002:adf:fc50:: with SMTP id e16mr31267950wrs.382.1628591544442; 
 Tue, 10 Aug 2021 03:32:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p8sm2260801wme.22.2021.08.10.03.32.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Aug 2021 03:32:23 -0700 (PDT)
Date: Tue, 10 Aug 2021 12:32:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Message-ID: <YRJVtu0PWUVNJ7u4@phenom.ffwll.local>
References: <20210808180757.81440-1-matthew.brost@intel.com>
 <20210808180757.81440-2-matthew.brost@intel.com>
 <YREvHrUa/m8H97Io@phenom.ffwll.local>
 <20210809193522.GA124273@DUT151-ICLU.fm.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210809193522.GA124273@DUT151-ICLU.fm.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/guc: Fix several issues
 related to resets / request cancelation
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

On Mon, Aug 09, 2021 at 07:35:22PM +0000, Matthew Brost wrote:
> On Mon, Aug 09, 2021 at 03:35:26PM +0200, Daniel Vetter wrote:
> > On Sun, Aug 08, 2021 at 11:07:55AM -0700, Matthew Brost wrote:
> > > Resets are notoriously hard to get fully working and notoriously racey,
> > > especially with selftests / IGTs that do all sorts of wild things that
> > > would be near impossible to hit during normal use cases. Even though
> > > likely impossible to hit, anything selftests / IGTs uncover needs to be
> > > fixed. This patch addresses 7 such issues.
> > > 
> > > 1. A small race that could result in incorrect accounting of the number
> > > of outstanding G2H. Basically prior to this patch we did not increment
> > > the number of outstanding G2H if we encoutered a GT reset while sending
> > > a H2G. This was incorrect as the context state had already been updated
> > > to anticipate a G2H response thus the counter should be incremented.
> > > 
> > > 2. When unwinding requests on a reset context, if other requests in the
> > > context are in the priority list the requests could be resubmitted out
> > > of seqno order. Traverse the list of active requests in reserve and
> > > append to the head of the priority list to fix this.
> > > 
> > > 3. Don't drop ce->guc_active.lock when unwinding a context after reset.
> > > At one point we had to drop this because of a lock inversion but that is
> > > no longer the case. It is much safer to hold the lock so let's do that.
> > > 
> > > 4. Prior to this patch the blocked context counter was cleared on
> > > init_sched_state (used during registering a context & resets) which is
> > > incorrect. This state needs to be persistent or the counter can read the
> > > incorrect value.
> > > 
> > > 5. Flush the work queue for GuC generated G2H messages during a GT reset.
> > > 
> > > 6. Do not clear enable during a context reset if a schedule enable is in
> > > flight.
> > > 
> > > 7. When unblocking a context, do not enable scheduling if the context is
> > > banned.
> > 
> > I think each of the above should be a separate patch. I think it would
> > also be good if each fix references the commits that introduced/changed
> > something.
> >
> 
> Sure, just was trying to cheat and make our lives easier with less
> patches to backport into DII.
>  
> > Most of this stuff is extremely hard to get right, and unfortunately our
> > current code is way too fond of lockless trickery (which really isn't a
> > great idea in the reset code). We need to apply as much care as possible
> > here.
> >
> 
> Yep, resets are hard. It is hard because like ten other async things
> (e.g. a new submission, registering a context, banning a context,
> canceling a request, processing a G2H, trying to idle the GPU, unpinning
> a context) can all be happening at the same time. Hopefully when we move
> the DRM scheduler we can remove some of these async operations,
> perma-pinned contexts would also help too. Have a story for that + a
> story to simplify the locking.

A bit an aside, but drm/sched has a pretty solid story around resets,
including what to do if your reset domain escalates (probably more useful
for the execlist backend than GuC) and how it's all synchronized.

I do need to review the barriers for when you permanently wedge an engine,
and the support for that isn't well encapsulated nor documented. But it's
there (amdgpu uses that when the reset fails, kinda like we do), and
that's about the only gap I've found thus far around drm/sched reset
support.

So should all be substantially clarified once we get there.
-Daniel

> 
> > Also expect me to ask a lot of annoying questions about all the atomic_t
> > you touch :-)
> 
> Looking forward to it.
> 
> Matt
> 
> > -Daniel
> > 
> > 
> > > 
> > > Fixes: f4eb1f3fe946 ("drm/i915/guc: Ensure G2H response has space in buffer")
> > > Fixes: 62eaf0ae217d ("drm/i915/guc: Support request cancellation")
> > > Fixes: eb5e7da736f3 ("drm/i915/guc: Reset implementation for new GuC interface")
> > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > > Cc: <stable@vger.kernel.org>
> > > ---
> > >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 43 ++++++++++++-------
> > >  1 file changed, 27 insertions(+), 16 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > index 87d8dc8f51b9..cd8df078ca87 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > @@ -152,7 +152,7 @@ static inline void init_sched_state(struct intel_context *ce)
> > >  {
> > >  	/* Only should be called from guc_lrc_desc_pin() */
> > >  	atomic_set(&ce->guc_sched_state_no_lock, 0);
> > > -	ce->guc_state.sched_state = 0;
> > > +	ce->guc_state.sched_state &= SCHED_STATE_BLOCKED_MASK;
> > >  }
> > >  
> > >  static inline bool
> > > @@ -360,11 +360,13 @@ static int guc_submission_send_busy_loop(struct intel_guc *guc,
> > >  {
> > >  	int err;
> > >  
> > > -	err = intel_guc_send_busy_loop(guc, action, len, g2h_len_dw, loop);
> > > -
> > > -	if (!err && g2h_len_dw)
> > > +	if (g2h_len_dw)
> > >  		atomic_inc(&guc->outstanding_submission_g2h);
> > >  
> > > +	err = intel_guc_send_busy_loop(guc, action, len, g2h_len_dw, loop);
> > > +	if (err == -EBUSY && g2h_len_dw)
> > > +		atomic_dec(&guc->outstanding_submission_g2h);
> > > +
> > >  	return err;
> > >  }
> > >  
> > > @@ -725,6 +727,11 @@ void intel_guc_submission_reset_prepare(struct intel_guc *guc)
> > >  			wait_for_reset(guc, &guc->outstanding_submission_g2h);
> > >  		} while (!list_empty(&guc->ct.requests.incoming));
> > >  	}
> > > +
> > > +	/* Flush any GuC generated G2H */
> > > +	while (!list_empty(&guc->ct.requests.incoming))
> > > +		msleep(1);
> > > +
> > >  	scrub_guc_desc_for_outstanding_g2h(guc);
> > >  }
> > >  
> > > @@ -797,14 +804,13 @@ __unwind_incomplete_requests(struct intel_context *ce)
> > >  
> > >  	spin_lock_irqsave(&sched_engine->lock, flags);
> > >  	spin_lock(&ce->guc_active.lock);
> > > -	list_for_each_entry_safe(rq, rn,
> > > -				 &ce->guc_active.requests,
> > > -				 sched.link) {
> > > +	list_for_each_entry_safe_reverse(rq, rn,
> > > +					 &ce->guc_active.requests,
> > > +					 sched.link) {
> > >  		if (i915_request_completed(rq))
> > >  			continue;
> > >  
> > >  		list_del_init(&rq->sched.link);
> > > -		spin_unlock(&ce->guc_active.lock);
> > >  
> > >  		__i915_request_unsubmit(rq);
> > >  
> > > @@ -816,10 +822,8 @@ __unwind_incomplete_requests(struct intel_context *ce)
> > >  		}
> > >  		GEM_BUG_ON(i915_sched_engine_is_empty(sched_engine));
> > >  
> > > -		list_add_tail(&rq->sched.link, pl);
> > > +		list_add(&rq->sched.link, pl);
> > >  		set_bit(I915_FENCE_FLAG_PQUEUE, &rq->fence.flags);
> > > -
> > > -		spin_lock(&ce->guc_active.lock);
> > >  	}
> > >  	spin_unlock(&ce->guc_active.lock);
> > >  	spin_unlock_irqrestore(&sched_engine->lock, flags);
> > > @@ -828,17 +832,23 @@ __unwind_incomplete_requests(struct intel_context *ce)
> > >  static void __guc_reset_context(struct intel_context *ce, bool stalled)
> > >  {
> > >  	struct i915_request *rq;
> > > +	unsigned long flags;
> > >  	u32 head;
> > >  
> > >  	intel_context_get(ce);
> > >  
> > >  	/*
> > > -	 * GuC will implicitly mark the context as non-schedulable
> > > -	 * when it sends the reset notification. Make sure our state
> > > -	 * reflects this change. The context will be marked enabled
> > > -	 * on resubmission.
> > > +	 * GuC will implicitly mark the context as non-schedulable when it sends
> > > +	 * the reset notification. Make sure our state reflects this change. The
> > > +	 * context will be marked enabled on resubmission. A small window exists
> > > +	 * where the context could be block & unblocked (scheduling enable) while
> > > +	 * this reset was inflight. If a scheduling enable is already is in
> > > +	 * flight do not clear the enable.
> > >  	 */
> > > -	clr_context_enabled(ce);
> > > +	spin_lock_irqsave(&ce->guc_state.lock, flags);
> > > +	if (!context_pending_enable(ce))
> > > +		clr_context_enabled(ce);
> > > +	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> > >  
> > >  	rq = intel_context_find_active_request(ce);
> > >  	if (!rq) {
> > > @@ -1562,6 +1572,7 @@ static void guc_context_unblock(struct intel_context *ce)
> > >  	spin_lock_irqsave(&ce->guc_state.lock, flags);
> > >  
> > >  	if (unlikely(submission_disabled(guc) ||
> > > +		     intel_context_is_banned(ce) ||
> > >  		     !intel_context_is_pinned(ce) ||
> > >  		     context_pending_disable(ce) ||
> > >  		     context_blocked(ce) > 1)) {
> > > -- 
> > > 2.28.0
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
