Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 811C3624BC1
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 21:27:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0B3610E866;
	Thu, 10 Nov 2022 20:27:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 047AB10E105
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668112029; x=1699648029;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=m+ZS3rOfRmRa8UfzE++QCfs9Vzmvg4hPfC+PSx0NcaM=;
 b=ZEdBRjuvji986exobVl1dpWkOIBzyDRtDZtw8QXx3KcX/r7G1gWLmgrC
 sGugVSr7+bMUzBCHi/RWazlKcrckb31imx2FQpYFuiSWhVpIRhzwj+A4k
 M+M3u/lB5OUP9NSapKE2mPmQ6GsMuUMIVJM9xXsOyhJmk/rIH1yNtZgts
 YQSPtm6kvsmN+9aiZpgf/v/pBtKZUt6o4DohdOd52dsjkjJ0udBzZFnhc
 d3LCClb+HJ9r8vpMEofvZvBT+raxcSxpSKNC2wy0i2Fl9G7R2fDe9Ct17
 q93pFMgO2NBJmo6jkdUYyH0+cM7SPqkAvSAt7bb9GYS43DHLLkrUmlHmP w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="294788842"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="294788842"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 12:27:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="637320121"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="637320121"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 10 Nov 2022 12:27:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Nov 2022 22:27:02 +0200
Date: Thu, 10 Nov 2022 22:27:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <Y21elgaCwy3FNk70@intel.com>
References: <Y1LVYaPCCP3BBS4g@intel.com> <Y1drd2gzxUJWdz5F@intel.com>
 <Y1e/Kd+1UQqeSwzY@hirez.programming.kicks-ass.net>
 <Y1kMv1GpKwOSIt8f@intel.com>
 <Y1kdRNNfUeAU+FNl@hirez.programming.kicks-ass.net>
 <Y1qC7d7QVJB8NCHt@intel.com>
 <Y1q3gzbPUCvEMHGD@hirez.programming.kicks-ass.net>
 <Y2Khj7n+tRq3r++O@intel.com>
 <Y2LsUIfbUiy2Ar0r@hirez.programming.kicks-ass.net>
 <Y2jwSwfRC3Q5x7Rm@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y2jwSwfRC3Q5x7Rm@intel.com>
X-Patchwork-Hint: comment
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
Cc: linux-pm@vger.kernel.org, Will Deacon <will@kernel.org>,
 bigeasy@linutronix.de, rjw@rjwysocki.net, oleg@redhat.com, rostedt@goodmis.org,
 linux-kernel@vger.kernel.org, mgorman@suse.de, tj@kernel.org,
 intel-gfx@lists.freedesktop.org, mingo@kernel.org, dietmar.eggemann@arm.com,
 ebiederm@xmission.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 07, 2022 at 01:47:23PM +0200, Ville Syrjälä wrote:
> On Wed, Nov 02, 2022 at 11:16:48PM +0100, Peter Zijlstra wrote:
> > On Wed, Nov 02, 2022 at 06:57:51PM +0200, Ville Syrjälä wrote:
> > > On Thu, Oct 27, 2022 at 06:53:23PM +0200, Peter Zijlstra wrote:
> > > > On Thu, Oct 27, 2022 at 04:09:01PM +0300, Ville Syrjälä wrote:
> > > > > On Wed, Oct 26, 2022 at 01:43:00PM +0200, Peter Zijlstra wrote:
> > > > 
> > > > > > Could you please give the below a spin?
> > > > > 
> > > > > Thanks. I've added this to our CI branch. I'll try to keep and eye
> > > > > on it in the coming days and let you know if anything still trips.
> > > > > And I'll report back maybe ~middle of next week if we haven't caught
> > > > > anything by then.
> > > > 
> > > > Thanks!
> > > 
> > > Looks like we haven't caught anything since I put the patch in.
> > > So the fix seems good.
> > 
> > While writing up the Changelog, it occured to me it might be possible to
> > fix another way, could I bother you to also run the below patch for a
> > bit?
> 
> I swapped in the new patch to the CI branch. I'll check back
> after a few days.

CI hasn't had anything new to report AFAICS, so looks like this
version is good as well.

> 
> > 
> > ---
> > diff --git a/kernel/sched/core.c b/kernel/sched/core.c
> > index cb2aa2b54c7a..daff72f00385 100644
> > --- a/kernel/sched/core.c
> > +++ b/kernel/sched/core.c
> > @@ -4200,6 +4200,40 @@ try_to_wake_up(struct task_struct *p, unsigned int state, int wake_flags)
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
> > +	/*
> > +	 * Ensure the task has finished __schedule() and will not be referenced
> > +	 * anymore. Again, see try_to_wake_up() for a longer comment.
> > +	 */
> > +	smp_rmb();
> > +	smp_cond_load_acquire(&p->on_cpu, !VAL);
> > +#endif
> > +
> > +	return false;
> > +}
> > +
> >  /**
> >   * task_call_func - Invoke a function on task in fixed state
> >   * @p: Process for which the function is to be invoked, can be @current.
> > @@ -4217,28 +4251,12 @@ try_to_wake_up(struct task_struct *p, unsigned int state, int wake_flags)
> >  int task_call_func(struct task_struct *p, task_call_f func, void *arg)
> >  {
> >  	struct rq *rq = NULL;
> > -	unsigned int state;
> >  	struct rq_flags rf;
> >  	int ret;
> >  
> >  	raw_spin_lock_irqsave(&p->pi_lock, rf.flags);
> >  
> > -	state = READ_ONCE(p->__state);
> > -
> > -	/*
> > -	 * Ensure we load p->on_rq after p->__state, otherwise it would be
> > -	 * possible to, falsely, observe p->on_rq == 0.
> > -	 *
> > -	 * See try_to_wake_up() for a longer comment.
> > -	 */
> > -	smp_rmb();
> > -
> > -	/*
> > -	 * Since pi->lock blocks try_to_wake_up(), we don't need rq->lock when
> > -	 * the task is blocked. Make sure to check @state since ttwu() can drop
> > -	 * locks at the end, see ttwu_queue_wakelist().
> > -	 */
> > -	if (state == TASK_RUNNING || state == TASK_WAKING || p->on_rq)
> > +	if (__task_needs_rq_lock(p))
> >  		rq = __task_rq_lock(p, &rf);
> >  
> >  	/*
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
