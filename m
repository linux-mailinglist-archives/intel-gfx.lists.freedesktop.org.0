Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 874D3617088
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 23:17:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B732E10E1F5;
	Wed,  2 Nov 2022 22:17:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C5D310E1F5
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 22:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=XxZIWYf5NDNu2873oHhBE6SUOj4kupaixvAsmpcmYsM=; b=JovZQ8+uNEZa+o1Wxp8QZo6NZk
 wkj67TpBqMmkQztS2+jzHzAkVPyohZqgwaRQfukuhmhxFmxyZ/C86B8SlsNrSQSBAgIg5T7icZ25k
 14x0VSS36VIWEveL7kZa1fstStOY4i9fLxQ+hL6P2kSZOZHbAkB62wy5EV6nfB+LInv3hVF8FBXRC
 f0H0bHTwxhokaJd+w5fwg+nVguXT2STu8FCRlzhAAX6YoNm3iX0ob4A1/jcIabsKAIVt+q4UiFuXZ
 WNhZzVRnZvQCsjDkWPygfencOljFBF/cGpgg0+pXowIDAuWsU6rIa2Lf3+OdRUOORQK0+ToWdr+/a
 V13s/MaQ==;
Received: from j130084.upc-j.chello.nl ([24.132.130.84]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1oqM2Z-005swf-23; Wed, 02 Nov 2022 22:16:55 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 9730C300137;
 Wed,  2 Nov 2022 23:16:48 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 4CA6B20AB8878; Wed,  2 Nov 2022 23:16:48 +0100 (CET)
Date: Wed, 2 Nov 2022 23:16:48 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y2LsUIfbUiy2Ar0r@hirez.programming.kicks-ass.net>
References: <20220822111816.760285417@infradead.org>
 <20220822114649.055452969@infradead.org>
 <Y1LVYaPCCP3BBS4g@intel.com> <Y1drd2gzxUJWdz5F@intel.com>
 <Y1e/Kd+1UQqeSwzY@hirez.programming.kicks-ass.net>
 <Y1kMv1GpKwOSIt8f@intel.com>
 <Y1kdRNNfUeAU+FNl@hirez.programming.kicks-ass.net>
 <Y1qC7d7QVJB8NCHt@intel.com>
 <Y1q3gzbPUCvEMHGD@hirez.programming.kicks-ass.net>
 <Y2Khj7n+tRq3r++O@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y2Khj7n+tRq3r++O@intel.com>
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

On Wed, Nov 02, 2022 at 06:57:51PM +0200, Ville Syrjälä wrote:
> On Thu, Oct 27, 2022 at 06:53:23PM +0200, Peter Zijlstra wrote:
> > On Thu, Oct 27, 2022 at 04:09:01PM +0300, Ville Syrjälä wrote:
> > > On Wed, Oct 26, 2022 at 01:43:00PM +0200, Peter Zijlstra wrote:
> > 
> > > > Could you please give the below a spin?
> > > 
> > > Thanks. I've added this to our CI branch. I'll try to keep and eye
> > > on it in the coming days and let you know if anything still trips.
> > > And I'll report back maybe ~middle of next week if we haven't caught
> > > anything by then.
> > 
> > Thanks!
> 
> Looks like we haven't caught anything since I put the patch in.
> So the fix seems good.

While writing up the Changelog, it occured to me it might be possible to
fix another way, could I bother you to also run the below patch for a
bit?

---
diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index cb2aa2b54c7a..daff72f00385 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -4200,6 +4200,40 @@ try_to_wake_up(struct task_struct *p, unsigned int state, int wake_flags)
 	return success;
 }
 
+static bool __task_needs_rq_lock(struct task_struct *p)
+{
+	unsigned int state = READ_ONCE(p->__state);
+
+	/*
+	 * Since pi->lock blocks try_to_wake_up(), we don't need rq->lock when
+	 * the task is blocked. Make sure to check @state since ttwu() can drop
+	 * locks at the end, see ttwu_queue_wakelist().
+	 */
+	if (state == TASK_RUNNING || state == TASK_WAKING)
+		return true;
+
+	/*
+	 * Ensure we load p->on_rq after p->__state, otherwise it would be
+	 * possible to, falsely, observe p->on_rq == 0.
+	 *
+	 * See try_to_wake_up() for a longer comment.
+	 */
+	smp_rmb();
+	if (p->on_rq)
+		return true;
+
+#ifdef CONFIG_SMP
+	/*
+	 * Ensure the task has finished __schedule() and will not be referenced
+	 * anymore. Again, see try_to_wake_up() for a longer comment.
+	 */
+	smp_rmb();
+	smp_cond_load_acquire(&p->on_cpu, !VAL);
+#endif
+
+	return false;
+}
+
 /**
  * task_call_func - Invoke a function on task in fixed state
  * @p: Process for which the function is to be invoked, can be @current.
@@ -4217,28 +4251,12 @@ try_to_wake_up(struct task_struct *p, unsigned int state, int wake_flags)
 int task_call_func(struct task_struct *p, task_call_f func, void *arg)
 {
 	struct rq *rq = NULL;
-	unsigned int state;
 	struct rq_flags rf;
 	int ret;
 
 	raw_spin_lock_irqsave(&p->pi_lock, rf.flags);
 
-	state = READ_ONCE(p->__state);
-
-	/*
-	 * Ensure we load p->on_rq after p->__state, otherwise it would be
-	 * possible to, falsely, observe p->on_rq == 0.
-	 *
-	 * See try_to_wake_up() for a longer comment.
-	 */
-	smp_rmb();
-
-	/*
-	 * Since pi->lock blocks try_to_wake_up(), we don't need rq->lock when
-	 * the task is blocked. Make sure to check @state since ttwu() can drop
-	 * locks at the end, see ttwu_queue_wakelist().
-	 */
-	if (state == TASK_RUNNING || state == TASK_WAKING || p->on_rq)
+	if (__task_needs_rq_lock(p))
 		rq = __task_rq_lock(p, &rf);
 
 	/*
