Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 485E660F13D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 09:40:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E907910E530;
	Thu, 27 Oct 2022 07:40:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09ABD10E530
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 07:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=WeAqYAlGi+kEYNzyBRGlHbqeKaz93VUTt4bhAgr9Nn0=; b=wHMmICK3IxqwUDQReNzmRo7UOY
 QIwzNPTXDyvG43iG7w1Bm1Szg8Z8UX0KIx6mouZ7hQR5O657NHBhm8wWjeLPFLChjhnkZy1szYxqX
 p0Cp5rmKyNb1XmWR9Dm+jJNsps4XUF+FoXIq2rTWlEpaPv1tQaYccc2DaxGVzUTbLQHA374MWzKoy
 MX2MOIuGTp83DOjpDkdQUr+hz4xT707PF1tcnIjO6kLvFh66uj+6C2TI4yDq9vnPtzDZHlZaWkCS9
 Kq0hRA/lZN9WFGQa2vkmGrL4+oOKbhEfj6Pff0PdO0Jtmg9ie29YuCk0gM7dWSqadO30xG2QYOhUw
 aHhgiYRA==;
Received: from j130084.upc-j.chello.nl ([24.132.130.84]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1onxUY-0001Nk-Ee; Thu, 27 Oct 2022 07:39:55 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D0481300322;
 Thu, 27 Oct 2022 09:39:48 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id AAAB32012B90F; Thu, 27 Oct 2022 09:39:48 +0200 (CEST)
Date: Thu, 27 Oct 2022 09:39:48 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Chen Yu <yu.c.chen@intel.com>
Message-ID: <Y1o1xMMtcyNVd2H3@hirez.programming.kicks-ass.net>
References: <20220822111816.760285417@infradead.org>
 <20220822114649.055452969@infradead.org>
 <Y1LVYaPCCP3BBS4g@intel.com> <Y1drd2gzxUJWdz5F@intel.com>
 <Y1e/Kd+1UQqeSwzY@hirez.programming.kicks-ass.net>
 <Y1kMv1GpKwOSIt8f@intel.com>
 <Y1kdRNNfUeAU+FNl@hirez.programming.kicks-ass.net>
 <Y1od8VwCa9mjkiLl@chenyu5-mobl1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y1od8VwCa9mjkiLl@chenyu5-mobl1>
Subject: Re: [Intel-gfx] [PATCH v3 6/6] freezer,
 sched: Rewrite core freezer logic
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 bigeasy@linutronix.de, rjw@rjwysocki.net, oleg@redhat.com, rostedt@goodmis.org,
 mingo@kernel.org, mgorman@suse.de, intel-gfx@lists.freedesktop.org,
 tj@kernel.org, Will Deacon <will@kernel.org>, dietmar.eggemann@arm.com,
 ebiederm@xmission.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 27, 2022 at 01:58:09PM +0800, Chen Yu wrote:

> > It's a very narrow race between schedule() and task_call_func().
> > 
> >   CPU0						CPU1
> > 
> >   __schedule()
> >     rq_lock();
> >     prev_state = READ_ONCE(prev->__state);
> >     if (... && prev_state) {
> >       deactivate_tasl(rq, prev, ...)
> >         prev->on_rq = 0;
> > 
> > 						task_call_func()
> > 						  raw_spin_lock_irqsave(p->pi_lock);
> > 						  state = READ_ONCE(p->__state);
> > 						  smp_rmb();
> > 						  if (... || p->on_rq) // false!!!
> > 						    rq = __task_rq_lock()
> > 
> > 						  ret = func();
> > 
> >     next = pick_next_task();
> >     rq = context_switch(prev, next)
> >       prepare_lock_switch()
> >         spin_release(&__rq_lockp(rq)->dep_map...)
> > 
> > 
> > 
> > So while the task is on it's way out, it still holds rq->lock for a
> > little while, and right then task_call_func() comes in and figures it
> > doesn't need rq->lock anymore (because the task is already dequeued --
> > but still running there) and then the __set_task_frozen() thing observes
> > it's holding rq->lock and yells murder.
> > 
> > Could you please give the below a spin?
> > 
> > ---
> > diff --git a/kernel/sched/core.c b/kernel/sched/core.c
> > index cb2aa2b54c7a..f519f44cd4c7 100644
> > --- a/kernel/sched/core.c
> > +++ b/kernel/sched/core.c
> > @@ -4200,6 +4200,37 @@ try_to_wake_up(struct task_struct *p, unsigned int state, int wake_flags)
> >  	return success;
> >  }
> >  
> > +static bool __task_needs_rq_lock(struct task_struct *p)
> > +{
> > +	unsigned int state = READ_ONCE(p->__state);
> > +
> > +	/*
> > +	 * Since pi->lock blocks try_to_wake_up(), we don't need rq->lock when
> > +	 * the task is blocked. Make sure to check @state since ttwu() can drop
> > +	 * locks at the end, see ttwu_queue_wakelist().
> > +	 */
> > +	if (state == TASK_RUNNING || state == TASK_WAKING)
> > +		return true;
> > +
> > +	/*
> > +	 * Ensure we load p->on_rq after p->__state, otherwise it would be
> > +	 * possible to, falsely, observe p->on_rq == 0.
> > +	 *
> > +	 * See try_to_wake_up() for a longer comment.
> > +	 */
> > +	smp_rmb();
> > +	if (p->on_rq)
> > +		return true;
> > +
> > +#ifdef CONFIG_SMP
> > +	smp_rmb();
> > +	if (p->on_cpu)
> > +		return true;
> > +#endif
> Should we also add p->on_cpu check to return 0 in __set_task_frozen()?
> Otherwise it might still warn that p is holding the lock?

With this, I don't think __set_task_frozen() should ever see
'p->on_cpu && !p->on_rq'. By forcing task_call_func() to acquire
rq->lock that window is closed. That is, this window only exits in
__schedule() while it holds rq->lock, since we're now serializing
against that, we should no longer observe it.
