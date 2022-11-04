Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4386A6195C5
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 13:04:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6130310E0AE;
	Fri,  4 Nov 2022 12:04:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFE2010E0AE
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 12:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667563447; x=1699099447;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=g2fxYAGoqQfz8+b5gIoR9qP7ZzxjrkH7b2xZLIT3w/M=;
 b=JKP1kIZ9ub+PMXt75JzIsi5sxzeFtIQUNz+M6ZIOWR/cPxr3j76JJtS9
 RLPaQtI30QkTVqGK0jc2ksZKMkKO/a+GvjKVS7/KqwGsYJ4NNfJZ3fEkq
 GYQEv1QMGLPPYgAOuEYDrxeMHE1HL3QORZZRRfzF8i96h3qo1ipHmCsml
 ezBhPKZe0HAi6jszXPaKIrH8nF9sgDC5UI+M5C+rtQdRmtfc/xViNmdf8
 LkLN+2fPfNV98fuIMOVhJjInWoUsMipt6+V+1AERgORV0udtVP8NIaY/t
 6zAG02kXTsylcmPWAwAcOL5o/v3SA8PsLDYfu7tKY8kbk1Hg3qoUfZsVP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="289667371"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="289667371"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 05:04:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="637562348"
X-IronPort-AV: E=Sophos;i="5.96,137,1665471600"; d="scan'208";a="637562348"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 04 Nov 2022 05:04:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Nov 2022 14:04:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Nov 2022 14:04:02 +0200
Message-Id: <20221104120402.5677-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221104120402.5677-1-ville.syrjala@linux.intel.com>
References: <20221104120402.5677-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH CI 2/2] freezer,
 sched: Rewrite core freezer logic v2
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

From: Peter Zijlstra <peterz@infradead.org>

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

Link: https://lore.kernel.org/all/Y2LsUIfbUiy2Ar0r@hirez.programming.kicks-ass.net/
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 kernel/sched/core.c | 52 ++++++++++++++++++++++++++++++---------------
 1 file changed, 35 insertions(+), 17 deletions(-)

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
-- 
2.37.4

