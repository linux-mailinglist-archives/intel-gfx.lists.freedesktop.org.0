Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4339B4C77
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 15:48:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FAC210E67D;
	Tue, 29 Oct 2024 14:48:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G/PVCZrO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB86710E67C
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 14:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730213305; x=1761749305;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bsvGCASuLgYQaQrm8YMd2UQMfMIYOch9vPy9KxkUkyw=;
 b=G/PVCZrOThcBtAqVfxMnM/qRHcX5g6ctwy0jaPlKr7dBAZTfh6nxkWLH
 x8kGAANpyVoBoAWhy2EOft6t46rRZxTIE734ntOu/zSSHjlem1e5NVoMI
 KRkWe7JvmtDROkF+3BoWSF/R/n9uoCBkCk5hbQO7lcEprOsz9oVputBNR
 ivASblyFOLEiRWhkxBYHQer/AkWPDMRwLFanLitdCzbthCXS8xkcyDyGW
 yuCGq7k/z7sGwl4vW7UnOjwfSRnP7eH5gTfTsg+XY9795fulMwMPIe8tl
 V8o30JVXb4Wyrnto0NkxBfBNwO7/YIXzhdaJ18saWu33JDShhiPK2XReu w==;
X-CSE-ConnectionGUID: kvmGc28KSHyqxSeeih2aGA==
X-CSE-MsgGUID: w3eNxkOvT+iEI2uPcWzk4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52416419"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52416419"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 07:48:25 -0700
X-CSE-ConnectionGUID: joWKXq9xTH+RwkD60o77Bw==
X-CSE-MsgGUID: ZIsU9KCNRQaUPcyr2Exr2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="81538222"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 07:48:24 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [CI 1/1] pmu changes
Date: Tue, 29 Oct 2024 07:48:03 -0700
Message-ID: <20241029144803.631999-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241029144803.631999-1-lucas.demarchi@intel.com>
References: <20241029144803.631999-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

By Peter:
git://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git perf/pmu-unregister
https://lore.kernel.org/all/20241022215210.GA31953@noisy.programming.kicks-ass.net/

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 include/linux/idr.h        |  17 +
 include/linux/perf_event.h |  35 ++-
 kernel/events/core.c       | 620 +++++++++++++++++++++++++------------
 3 files changed, 455 insertions(+), 217 deletions(-)

diff --git a/include/linux/idr.h b/include/linux/idr.h
index da5f5fa4a3a6a..cd729be369b36 100644
--- a/include/linux/idr.h
+++ b/include/linux/idr.h
@@ -15,6 +15,7 @@
 #include <linux/radix-tree.h>
 #include <linux/gfp.h>
 #include <linux/percpu.h>
+#include <linux/cleanup.h>
 
 struct idr {
 	struct radix_tree_root	idr_rt;
@@ -124,6 +125,22 @@ void *idr_get_next_ul(struct idr *, unsigned long *nextid);
 void *idr_replace(struct idr *, void *, unsigned long id);
 void idr_destroy(struct idr *);
 
+struct __class_idr {
+	struct idr *idr;
+	int id;
+};
+
+#define idr_null ((struct __class_idr){ NULL, -1 })
+#define take_idr_id(id) __get_and_null(id, idr_null)
+
+DEFINE_CLASS(idr_alloc, struct __class_idr,
+	     if (_T.id >= 0) idr_remove(_T.idr, _T.id),
+	     ((struct __class_idr){
+	     	.idr = idr,
+		.id = idr_alloc(idr, ptr, start, end, gfp),
+	     }),
+	     struct idr *idr, void *ptr, int start, int end, gfp_t gfp);
+
 /**
  * idr_init_base() - Initialise an IDR.
  * @idr: IDR handle.
diff --git a/include/linux/perf_event.h b/include/linux/perf_event.h
index fb908843f2092..74c0eaeb96f6c 100644
--- a/include/linux/perf_event.h
+++ b/include/linux/perf_event.h
@@ -318,6 +318,9 @@ struct perf_output_handle;
 struct pmu {
 	struct list_head		entry;
 
+	spinlock_t			events_lock;
+	struct list_head		events;
+
 	struct module			*module;
 	struct device			*dev;
 	struct device			*parent;
@@ -336,8 +339,7 @@ struct pmu {
 	 */
 	unsigned int			scope;
 
-	int __percpu			*pmu_disable_count;
-	struct perf_cpu_pmu_context __percpu *cpu_pmu_context;
+	struct perf_cpu_pmu_context __percpu **cpu_pmu_context;
 	atomic_t			exclusive_cnt; /* < 0: cpu; > 0: tsk */
 	int				task_ctx_nr;
 	int				hrtimer_interval_ms;
@@ -612,9 +614,10 @@ struct perf_addr_filter_range {
  * enum perf_event_state - the states of an event:
  */
 enum perf_event_state {
-	PERF_EVENT_STATE_DEAD		= -4,
-	PERF_EVENT_STATE_EXIT		= -3,
-	PERF_EVENT_STATE_ERROR		= -2,
+	PERF_EVENT_STATE_DEAD		= -5,
+	PERF_EVENT_STATE_REVOKED	= -4, /* pmu gone, must not touch */
+	PERF_EVENT_STATE_EXIT		= -3, /* task died, still inherit */
+	PERF_EVENT_STATE_ERROR		= -2, /* scheduling error, can enable */
 	PERF_EVENT_STATE_OFF		= -1,
 	PERF_EVENT_STATE_INACTIVE	=  0,
 	PERF_EVENT_STATE_ACTIVE		=  1,
@@ -652,13 +655,15 @@ struct swevent_hlist {
 	struct rcu_head			rcu_head;
 };
 
-#define PERF_ATTACH_CONTEXT	0x01
-#define PERF_ATTACH_GROUP	0x02
-#define PERF_ATTACH_TASK	0x04
-#define PERF_ATTACH_TASK_DATA	0x08
-#define PERF_ATTACH_ITRACE	0x10
-#define PERF_ATTACH_SCHED_CB	0x20
-#define PERF_ATTACH_CHILD	0x40
+#define PERF_ATTACH_CONTEXT	0x0001
+#define PERF_ATTACH_GROUP	0x0002
+#define PERF_ATTACH_TASK	0x0004
+#define PERF_ATTACH_TASK_DATA	0x0008
+#define PERF_ATTACH_ITRACE	0x0010
+#define PERF_ATTACH_SCHED_CB	0x0020
+#define PERF_ATTACH_CHILD	0x0040
+#define PERF_ATTACH_EXCLUSIVE	0x0080
+#define PERF_ATTACH_CALLCHAIN	0x0100
 
 struct bpf_prog;
 struct perf_cgroup;
@@ -853,6 +858,7 @@ struct perf_event {
 	void *security;
 #endif
 	struct list_head		sb_list;
+	struct list_head		pmu_list;
 
 	/*
 	 * Certain events gets forwarded to another pmu internally by over-
@@ -900,7 +906,7 @@ struct perf_event_pmu_context {
 	struct list_head		pinned_active;
 	struct list_head		flexible_active;
 
-	/* Used to avoid freeing per-cpu perf_event_pmu_context */
+	/* Used to identify the per-cpu perf_event_pmu_context */
 	unsigned int			embedded : 1;
 
 	unsigned int			nr_events;
@@ -1008,6 +1014,7 @@ struct perf_cpu_pmu_context {
 
 	int				active_oncpu;
 	int				exclusive;
+	int				pmu_disable_count;
 
 	raw_spinlock_t			hrtimer_lock;
 	struct hrtimer			hrtimer;
@@ -1103,7 +1110,7 @@ extern void perf_aux_output_flag(struct perf_output_handle *handle, u64 flags);
 extern void perf_event_itrace_started(struct perf_event *event);
 
 extern int perf_pmu_register(struct pmu *pmu, const char *name, int type);
-extern void perf_pmu_unregister(struct pmu *pmu);
+extern int perf_pmu_unregister(struct pmu *pmu);
 
 extern void __perf_event_task_sched_in(struct task_struct *prev,
 				       struct task_struct *task);
diff --git a/kernel/events/core.c b/kernel/events/core.c
index cdd09769e6c56..cc7525110567e 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -1178,21 +1178,22 @@ static int perf_mux_hrtimer_restart_ipi(void *arg)
 
 void perf_pmu_disable(struct pmu *pmu)
 {
-	int *count = this_cpu_ptr(pmu->pmu_disable_count);
+	int *count = &(*this_cpu_ptr(pmu->cpu_pmu_context))->pmu_disable_count;
 	if (!(*count)++)
 		pmu->pmu_disable(pmu);
 }
 
 void perf_pmu_enable(struct pmu *pmu)
 {
-	int *count = this_cpu_ptr(pmu->pmu_disable_count);
+	int *count = &(*this_cpu_ptr(pmu->cpu_pmu_context))->pmu_disable_count;
 	if (!--(*count))
 		pmu->pmu_enable(pmu);
 }
 
 static void perf_assert_pmu_disabled(struct pmu *pmu)
 {
-	WARN_ON_ONCE(*this_cpu_ptr(pmu->pmu_disable_count) == 0);
+	int *count = &(*this_cpu_ptr(pmu->cpu_pmu_context))->pmu_disable_count;
+	WARN_ON_ONCE(*count == 0);
 }
 
 static void get_ctx(struct perf_event_context *ctx)
@@ -2303,7 +2304,7 @@ static void
 event_sched_out(struct perf_event *event, struct perf_event_context *ctx)
 {
 	struct perf_event_pmu_context *epc = event->pmu_ctx;
-	struct perf_cpu_pmu_context *cpc = this_cpu_ptr(epc->pmu->cpu_pmu_context);
+	struct perf_cpu_pmu_context *cpc = *this_cpu_ptr(epc->pmu->cpu_pmu_context);
 	enum perf_event_state state = PERF_EVENT_STATE_INACTIVE;
 
 	// XXX cpc serialization, probably per-cpu IRQ disabled
@@ -2406,7 +2407,9 @@ ctx_time_update_event(struct perf_event_context *ctx, struct perf_event *event)
 
 #define DETACH_GROUP	0x01UL
 #define DETACH_CHILD	0x02UL
-#define DETACH_DEAD	0x04UL
+#define DETACH_EXIT	0x04UL
+#define DETACH_REVOKE	0x08UL
+#define DETACH_DEAD	0x10UL
 
 /*
  * Cross CPU call to remove a performance event
@@ -2421,6 +2424,7 @@ __perf_remove_from_context(struct perf_event *event,
 			   void *info)
 {
 	struct perf_event_pmu_context *pmu_ctx = event->pmu_ctx;
+	enum perf_event_state state = PERF_EVENT_STATE_OFF;
 	unsigned long flags = (unsigned long)info;
 
 	ctx_time_update(cpuctx, ctx);
@@ -2429,16 +2433,22 @@ __perf_remove_from_context(struct perf_event *event,
 	 * Ensure event_sched_out() switches to OFF, at the very least
 	 * this avoids raising perf_pending_task() at this time.
 	 */
-	if (flags & DETACH_DEAD)
+	if (flags & DETACH_EXIT)
+		state = PERF_EVENT_STATE_EXIT;
+	if (flags & DETACH_REVOKE)
+		state = PERF_EVENT_STATE_REVOKED;
+	if (flags & DETACH_DEAD) {
 		event->pending_disable = 1;
+		state = PERF_EVENT_STATE_DEAD;
+	}
 	event_sched_out(event, ctx);
 	if (flags & DETACH_GROUP)
 		perf_group_detach(event);
 	if (flags & DETACH_CHILD)
 		perf_child_detach(event);
 	list_del_event(event, ctx);
-	if (flags & DETACH_DEAD)
-		event->state = PERF_EVENT_STATE_DEAD;
+
+	event->state = state;
 
 	if (!pmu_ctx->nr_events) {
 		pmu_ctx->rotate_necessary = 0;
@@ -2446,7 +2456,7 @@ __perf_remove_from_context(struct perf_event *event,
 		if (ctx->task && ctx->is_active) {
 			struct perf_cpu_pmu_context *cpc;
 
-			cpc = this_cpu_ptr(pmu_ctx->pmu->cpu_pmu_context);
+			cpc = *this_cpu_ptr(pmu_ctx->pmu->cpu_pmu_context);
 			WARN_ON_ONCE(cpc->task_epc && cpc->task_epc != pmu_ctx);
 			cpc->task_epc = NULL;
 		}
@@ -2584,7 +2594,7 @@ static int
 event_sched_in(struct perf_event *event, struct perf_event_context *ctx)
 {
 	struct perf_event_pmu_context *epc = event->pmu_ctx;
-	struct perf_cpu_pmu_context *cpc = this_cpu_ptr(epc->pmu->cpu_pmu_context);
+	struct perf_cpu_pmu_context *cpc = *this_cpu_ptr(epc->pmu->cpu_pmu_context);
 	int ret = 0;
 
 	WARN_ON_ONCE(event->ctx != ctx);
@@ -2691,7 +2701,7 @@ group_sched_in(struct perf_event *group_event, struct perf_event_context *ctx)
 static int group_can_go_on(struct perf_event *event, int can_add_hw)
 {
 	struct perf_event_pmu_context *epc = event->pmu_ctx;
-	struct perf_cpu_pmu_context *cpc = this_cpu_ptr(epc->pmu->cpu_pmu_context);
+	struct perf_cpu_pmu_context *cpc = *this_cpu_ptr(epc->pmu->cpu_pmu_context);
 
 	/*
 	 * Groups consisting entirely of software events can always go on.
@@ -3316,7 +3326,7 @@ static void __pmu_ctx_sched_out(struct perf_event_pmu_context *pmu_ctx,
 	if (ctx->task && !(ctx->is_active & EVENT_ALL)) {
 		struct perf_cpu_pmu_context *cpc;
 
-		cpc = this_cpu_ptr(pmu->cpu_pmu_context);
+		cpc = *this_cpu_ptr(pmu->cpu_pmu_context);
 		WARN_ON_ONCE(cpc->task_epc && cpc->task_epc != pmu_ctx);
 		cpc->task_epc = NULL;
 	}
@@ -3564,7 +3574,7 @@ static void perf_ctx_sched_task_cb(struct perf_event_context *ctx, bool sched_in
 	struct perf_cpu_pmu_context *cpc;
 
 	list_for_each_entry(pmu_ctx, &ctx->pmu_ctx_list, pmu_ctx_entry) {
-		cpc = this_cpu_ptr(pmu_ctx->pmu->cpu_pmu_context);
+		cpc = *this_cpu_ptr(pmu_ctx->pmu->cpu_pmu_context);
 
 		if (cpc->sched_cb_usage && pmu_ctx->pmu->sched_task)
 			pmu_ctx->pmu->sched_task(pmu_ctx, sched_in);
@@ -3673,7 +3683,7 @@ static DEFINE_PER_CPU(int, perf_sched_cb_usages);
 
 void perf_sched_cb_dec(struct pmu *pmu)
 {
-	struct perf_cpu_pmu_context *cpc = this_cpu_ptr(pmu->cpu_pmu_context);
+	struct perf_cpu_pmu_context *cpc = *this_cpu_ptr(pmu->cpu_pmu_context);
 
 	this_cpu_dec(perf_sched_cb_usages);
 	barrier();
@@ -3685,7 +3695,7 @@ void perf_sched_cb_dec(struct pmu *pmu)
 
 void perf_sched_cb_inc(struct pmu *pmu)
 {
-	struct perf_cpu_pmu_context *cpc = this_cpu_ptr(pmu->cpu_pmu_context);
+	struct perf_cpu_pmu_context *cpc = *this_cpu_ptr(pmu->cpu_pmu_context);
 
 	if (!cpc->sched_cb_usage++)
 		list_add(&cpc->sched_cb_entry, this_cpu_ptr(&sched_cb_list));
@@ -3809,7 +3819,7 @@ static void __link_epc(struct perf_event_pmu_context *pmu_ctx)
 	if (!pmu_ctx->ctx->task)
 		return;
 
-	cpc = this_cpu_ptr(pmu_ctx->pmu->cpu_pmu_context);
+	cpc = *this_cpu_ptr(pmu_ctx->pmu->cpu_pmu_context);
 	WARN_ON_ONCE(cpc->task_epc && cpc->task_epc != pmu_ctx);
 	cpc->task_epc = pmu_ctx;
 }
@@ -3941,7 +3951,7 @@ static int merge_sched_in(struct perf_event *event, void *data)
 			struct perf_cpu_pmu_context *cpc;
 
 			event->pmu_ctx->rotate_necessary = 1;
-			cpc = this_cpu_ptr(event->pmu_ctx->pmu->cpu_pmu_context);
+			cpc = *this_cpu_ptr(event->pmu_ctx->pmu->cpu_pmu_context);
 			perf_mux_hrtimer_restart(cpc);
 			group_update_userpage(event);
 		}
@@ -4508,7 +4518,8 @@ static void perf_event_enable_on_exec(struct perf_event_context *ctx)
 
 static void perf_remove_from_owner(struct perf_event *event);
 static void perf_event_exit_event(struct perf_event *event,
-				  struct perf_event_context *ctx);
+				  struct perf_event_context *ctx,
+				  bool revoke);
 
 /*
  * Removes all events from the current task that have been marked
@@ -4535,7 +4546,7 @@ static void perf_event_remove_on_exec(struct perf_event_context *ctx)
 
 		modified = true;
 
-		perf_event_exit_event(event, ctx);
+		perf_event_exit_event(event, ctx, false);
 	}
 
 	raw_spin_lock_irqsave(&ctx->lock, flags);
@@ -4968,11 +4979,14 @@ find_get_pmu_context(struct pmu *pmu, struct perf_event_context *ctx,
 		 */
 		struct perf_cpu_pmu_context *cpc;
 
-		cpc = per_cpu_ptr(pmu->cpu_pmu_context, event->cpu);
+		cpc = *per_cpu_ptr(pmu->cpu_pmu_context, event->cpu);
 		epc = &cpc->epc;
 		raw_spin_lock_irq(&ctx->lock);
 		if (!epc->ctx) {
-			atomic_set(&epc->refcount, 1);
+			/*
+			 * One extra reference for the pmu; see perf_pmu_free().
+			 */
+			atomic_set(&epc->refcount, 2);
 			epc->embedded = 1;
 			list_add(&epc->pmu_ctx_entry, &ctx->pmu_ctx_list);
 			epc->ctx = ctx;
@@ -5041,6 +5055,15 @@ static void get_pmu_ctx(struct perf_event_pmu_context *epc)
 	WARN_ON_ONCE(!atomic_inc_not_zero(&epc->refcount));
 }
 
+static void free_cpc_rcu(struct rcu_head *head)
+{
+	struct perf_cpu_pmu_context *cpc =
+		container_of(head, typeof(*cpc), epc.rcu_head);
+
+	kfree(cpc->epc.task_ctx_data);
+	kfree(cpc);
+}
+
 static void free_epc_rcu(struct rcu_head *head)
 {
 	struct perf_event_pmu_context *epc = container_of(head, typeof(*epc), rcu_head);
@@ -5075,8 +5098,10 @@ static void put_pmu_ctx(struct perf_event_pmu_context *epc)
 
 	raw_spin_unlock_irqrestore(&ctx->lock, flags);
 
-	if (epc->embedded)
+	if (epc->embedded) {
+		call_rcu(&epc->rcu_head, free_cpc_rcu);
 		return;
+	}
 
 	call_rcu(&epc->rcu_head, free_epc_rcu);
 }
@@ -5121,6 +5146,7 @@ static bool is_sb_event(struct perf_event *event)
 	    attr->context_switch || attr->text_poke ||
 	    attr->bpf_event)
 		return true;
+
 	return false;
 }
 
@@ -5246,6 +5272,8 @@ static int exclusive_event_init(struct perf_event *event)
 			return -EBUSY;
 	}
 
+	event->attach_state |= PERF_ATTACH_EXCLUSIVE;
+
 	return 0;
 }
 
@@ -5253,14 +5281,13 @@ static void exclusive_event_destroy(struct perf_event *event)
 {
 	struct pmu *pmu = event->pmu;
 
-	if (!is_exclusive_pmu(pmu))
-		return;
-
 	/* see comment in exclusive_event_init() */
 	if (event->attach_state & PERF_ATTACH_TASK)
 		atomic_dec(&pmu->exclusive_cnt);
 	else
 		atomic_inc(&pmu->exclusive_cnt);
+
+	event->attach_state &= ~PERF_ATTACH_EXCLUSIVE;
 }
 
 static bool exclusive_event_match(struct perf_event *e1, struct perf_event *e2)
@@ -5292,8 +5319,7 @@ static bool exclusive_event_installable(struct perf_event *event,
 	return true;
 }
 
-static void perf_addr_filters_splice(struct perf_event *event,
-				       struct list_head *head);
+static void perf_free_addr_filters(struct perf_event *event);
 
 static void perf_pending_task_sync(struct perf_event *event)
 {
@@ -5319,40 +5345,22 @@ static void perf_pending_task_sync(struct perf_event *event)
 	rcuwait_wait_event(&event->pending_work_wait, !event->pending_work, TASK_UNINTERRUPTIBLE);
 }
 
-static void _free_event(struct perf_event *event)
+/* vs perf_event_alloc() error */
+static void __free_event(struct perf_event *event)
 {
-	irq_work_sync(&event->pending_irq);
-	irq_work_sync(&event->pending_disable_irq);
-	perf_pending_task_sync(event);
+	struct pmu *pmu = event->pmu;
 
-	unaccount_event(event);
+	if (event->attach_state & PERF_ATTACH_CALLCHAIN)
+		put_callchain_buffers();
 
-	security_perf_event_free(event);
+	kfree(event->addr_filter_ranges);
 
-	if (event->rb) {
-		/*
-		 * Can happen when we close an event with re-directed output.
-		 *
-		 * Since we have a 0 refcount, perf_mmap_close() will skip
-		 * over us; possibly making our ring_buffer_put() the last.
-		 */
-		mutex_lock(&event->mmap_mutex);
-		ring_buffer_attach(event, NULL);
-		mutex_unlock(&event->mmap_mutex);
-	}
+	if (event->attach_state & PERF_ATTACH_EXCLUSIVE)
+		exclusive_event_destroy(event);
 
 	if (is_cgroup_event(event))
 		perf_detach_cgroup(event);
 
-	if (!event->parent) {
-		if (event->attr.sample_type & PERF_SAMPLE_CALLCHAIN)
-			put_callchain_buffers();
-	}
-
-	perf_event_free_bpf_prog(event);
-	perf_addr_filters_splice(event, NULL);
-	kfree(event->addr_filter_ranges);
-
 	if (event->destroy)
 		event->destroy(event);
 
@@ -5363,22 +5371,67 @@ static void _free_event(struct perf_event *event)
 	if (event->hw.target)
 		put_task_struct(event->hw.target);
 
-	if (event->pmu_ctx)
+	if (event->pmu_ctx) {
+		/*
+		 * put_pmu_ctx() needs an event->ctx reference, because of
+		 * epc->ctx.
+		 */
+		WARN_ON_ONCE(!pmu);
+		WARN_ON_ONCE(!event->ctx);
+		WARN_ON_ONCE(event->pmu_ctx->ctx != event->ctx);
 		put_pmu_ctx(event->pmu_ctx);
+	}
 
 	/*
-	 * perf_event_free_task() relies on put_ctx() being 'last', in particular
-	 * all task references must be cleaned up.
+	 * perf_event_free_task() relies on put_ctx() being 'last', in
+	 * particular all task references must be cleaned up.
 	 */
 	if (event->ctx)
 		put_ctx(event->ctx);
 
-	exclusive_event_destroy(event);
-	module_put(event->pmu->module);
+	if (pmu) {
+		module_put(pmu->module);
+		scoped_guard (spinlock, &pmu->events_lock) {
+			list_del(&event->pmu_list);
+			wake_up_var(pmu);
+		}
+	}
 
 	call_rcu(&event->rcu_head, free_event_rcu);
 }
 
+DEFINE_FREE(__free_event, struct perf_event *, if (_T) __free_event(_T))
+
+/* vs perf_event_alloc() success */
+static void _free_event(struct perf_event *event)
+{
+	irq_work_sync(&event->pending_irq);
+	irq_work_sync(&event->pending_disable_irq);
+	perf_pending_task_sync(event);
+
+	unaccount_event(event);
+
+	security_perf_event_free(event);
+
+	if (event->rb) {
+		WARN_ON_ONCE(!event->pmu);
+		/*
+		 * Can happen when we close an event with re-directed output.
+		 *
+		 * Since we have a 0 refcount, perf_mmap_close() will skip
+		 * over us; possibly making our ring_buffer_put() the last.
+		 */
+		mutex_lock(&event->mmap_mutex);
+		ring_buffer_attach(event, NULL);
+		mutex_unlock(&event->mmap_mutex);
+	}
+
+	perf_event_free_bpf_prog(event);
+	perf_free_addr_filters(event);
+
+	__free_event(event);
+}
+
 /*
  * Used to free events which have a known refcount of 1, such as in error paths
  * where the event isn't exposed yet and inherited events.
@@ -5492,7 +5545,11 @@ int perf_event_release_kernel(struct perf_event *event)
 	 * Thus this guarantees that we will in fact observe and kill _ALL_
 	 * child events.
 	 */
-	perf_remove_from_context(event, DETACH_GROUP|DETACH_DEAD);
+	if (event->state > PERF_EVENT_STATE_REVOKED) {
+		perf_remove_from_context(event, DETACH_GROUP|DETACH_DEAD);
+	} else {
+		event->state = PERF_EVENT_STATE_DEAD;
+	}
 
 	perf_event_ctx_unlock(event, ctx);
 
@@ -5803,7 +5860,7 @@ __perf_read(struct perf_event *event, char __user *buf, size_t count)
 	 * error state (i.e. because it was pinned but it couldn't be
 	 * scheduled on to the CPU at some point).
 	 */
-	if (event->state == PERF_EVENT_STATE_ERROR)
+	if (event->state <= PERF_EVENT_STATE_ERROR)
 		return 0;
 
 	if (count < event->read_size)
@@ -5842,8 +5899,14 @@ static __poll_t perf_poll(struct file *file, poll_table *wait)
 	struct perf_buffer *rb;
 	__poll_t events = EPOLLHUP;
 
+	if (event->state <= PERF_EVENT_STATE_REVOKED)
+		return EPOLLERR;
+
 	poll_wait(file, &event->waitq, wait);
 
+	if (event->state <= PERF_EVENT_STATE_REVOKED)
+		return EPOLLERR;
+
 	if (is_event_hup(event))
 		return events;
 
@@ -6023,6 +6086,9 @@ static long _perf_ioctl(struct perf_event *event, unsigned int cmd, unsigned lon
 	void (*func)(struct perf_event *);
 	u32 flags = arg;
 
+	if (event->state <= PERF_EVENT_STATE_REVOKED)
+		return -ENODEV;
+
 	switch (cmd) {
 	case PERF_EVENT_IOC_ENABLE:
 		func = _perf_event_enable;
@@ -6472,6 +6538,7 @@ static void perf_mmap_close(struct vm_area_struct *vma)
 	unsigned long size = perf_data_size(rb);
 	bool detach_rest = false;
 
+	/* FIXIES vs perf_pmu_unregister() */
 	if (event->pmu->event_unmapped)
 		event->pmu->event_unmapped(event, vma->vm_mm);
 
@@ -6580,9 +6647,8 @@ static const struct vm_operations_struct perf_mmap_vmops = {
 	.page_mkwrite	= perf_mmap_fault,
 };
 
-static int perf_mmap(struct file *file, struct vm_area_struct *vma)
+static int _perf_mmap(struct perf_event *event, struct vm_area_struct *vma)
 {
-	struct perf_event *event = file->private_data;
 	unsigned long user_locked, user_lock_limit;
 	struct user_struct *user = current_user();
 	struct mutex *aux_mutex = NULL;
@@ -6593,6 +6659,9 @@ static int perf_mmap(struct file *file, struct vm_area_struct *vma)
 	long user_extra = 0, extra = 0;
 	int ret = 0, flags = 0;
 
+	if (event->state <= PERF_EVENT_STATE_REVOKED)
+		return -ENODEV;
+
 	/*
 	 * Don't allow mmap() of inherited per-task counters. This would
 	 * create a performance issue due to all children writing to the
@@ -6604,10 +6673,6 @@ static int perf_mmap(struct file *file, struct vm_area_struct *vma)
 	if (!(vma->vm_flags & VM_SHARED))
 		return -EINVAL;
 
-	ret = security_perf_event_read(event);
-	if (ret)
-		return ret;
-
 	vma_size = vma->vm_end - vma->vm_start;
 
 	if (vma->vm_pgoff == 0) {
@@ -6804,12 +6869,32 @@ static int perf_mmap(struct file *file, struct vm_area_struct *vma)
 	return ret;
 }
 
+static int perf_mmap(struct file *file, struct vm_area_struct *vma)
+{
+	struct perf_event *event = file->private_data;
+	struct perf_event_context *ctx;
+	int ret;
+
+	ret = security_perf_event_read(event);
+	if (ret)
+		return ret;
+
+	ctx = perf_event_ctx_lock(event);
+	ret = _perf_mmap(event, vma);
+	perf_event_ctx_unlock(event, ctx);
+
+	return ret;
+}
+
 static int perf_fasync(int fd, struct file *filp, int on)
 {
 	struct inode *inode = file_inode(filp);
 	struct perf_event *event = filp->private_data;
 	int retval;
 
+	if (event->state <= PERF_EVENT_STATE_REVOKED)
+		return -ENODEV;
+
 	inode_lock(inode);
 	retval = fasync_helper(fd, filp, on, &event->fasync);
 	inode_unlock(inode);
@@ -10737,6 +10822,9 @@ int perf_event_set_bpf_prog(struct perf_event *event, struct bpf_prog *prog,
 
 void perf_event_free_bpf_prog(struct perf_event *event)
 {
+	if (!event->prog)
+		return;
+
 	if (!perf_event_is_tracing(event)) {
 		perf_event_free_bpf_handler(event);
 		return;
@@ -10835,6 +10923,17 @@ static void perf_addr_filters_splice(struct perf_event *event,
 	free_filters_list(&list);
 }
 
+static void perf_free_addr_filters(struct perf_event *event)
+{
+	/*
+	 * Used during free paths, there is no concurrency.
+	 */
+	if (list_empty(&event->addr_filters.list))
+		return;
+
+	perf_addr_filters_splice(event, NULL);
+}
+
 /*
  * Scan through mm's vmas and see if one of them matches the
  * @filter; if so, adjust filter's address range.
@@ -11511,11 +11610,6 @@ static int perf_event_idx_default(struct perf_event *event)
 	return 0;
 }
 
-static void free_pmu_context(struct pmu *pmu)
-{
-	free_percpu(pmu->cpu_pmu_context);
-}
-
 /*
  * Let userspace know that this PMU supports address range filtering:
  */
@@ -11578,7 +11672,7 @@ perf_event_mux_interval_ms_store(struct device *dev,
 	cpus_read_lock();
 	for_each_online_cpu(cpu) {
 		struct perf_cpu_pmu_context *cpc;
-		cpc = per_cpu_ptr(pmu->cpu_pmu_context, cpu);
+		cpc = *per_cpu_ptr(pmu->cpu_pmu_context, cpu);
 		cpc->hrtimer_interval = ns_to_ktime(NSEC_PER_MSEC * timer);
 
 		cpu_function_call(cpu, perf_mux_hrtimer_restart_ipi, cpc);
@@ -11727,56 +11821,100 @@ static int pmu_dev_alloc(struct pmu *pmu)
 static struct lock_class_key cpuctx_mutex;
 static struct lock_class_key cpuctx_lock;
 
-int perf_pmu_register(struct pmu *pmu, const char *name, int type)
+static bool idr_cmpxchg(struct idr *idr, unsigned long id, void *old, void *new)
 {
-	int cpu, ret, max = PERF_TYPE_MAX;
+	void *tmp, *val = idr_find(idr, id);
 
-	mutex_lock(&pmus_lock);
-	ret = -ENOMEM;
-	pmu->pmu_disable_count = alloc_percpu(int);
-	if (!pmu->pmu_disable_count)
-		goto unlock;
+	if (val != old)
+		return false;
 
-	pmu->type = -1;
-	if (WARN_ONCE(!name, "Can not register anonymous pmu.\n")) {
-		ret = -EINVAL;
-		goto free_pdc;
+	tmp = idr_replace(idr, new, id);
+	if (IS_ERR(tmp))
+		return false;
+
+	WARN_ON_ONCE(tmp != val);
+	return true;
+}
+
+static void perf_pmu_free(struct pmu *pmu)
+{
+	if (pmu_bus_running && pmu->dev && pmu->dev != PMU_NULL_DEV) {
+		if (pmu->nr_addr_filters)
+			device_remove_file(pmu->dev, &dev_attr_nr_addr_filters);
+		device_del(pmu->dev);
+		put_device(pmu->dev);
 	}
 
-	if (WARN_ONCE(pmu->scope >= PERF_PMU_MAX_SCOPE, "Can not register a pmu with an invalid scope.\n")) {
-		ret = -EINVAL;
-		goto free_pdc;
+	if (pmu->cpu_pmu_context) {
+		int cpu;
+
+		for_each_possible_cpu(cpu) {
+			struct perf_cpu_pmu_context *cpc;
+
+			cpc = *per_cpu_ptr(pmu->cpu_pmu_context, cpu);
+			if (!cpc)
+				continue;
+			if (cpc->epc.embedded) {
+				/* refcount managed */
+				put_pmu_ctx(&cpc->epc);
+				continue;
+			}
+			kfree(cpc);
+		}
+		free_percpu(pmu->cpu_pmu_context);
 	}
+}
+
+DEFINE_FREE(pmu_unregister, struct pmu *, if (_T) perf_pmu_free(_T))
+
+int perf_pmu_register(struct pmu *_pmu, const char *name, int type)
+{
+	int cpu, max = PERF_TYPE_MAX;
+
+	struct pmu *pmu __free(pmu_unregister) = _pmu;
+	guard(mutex)(&pmus_lock);
+
+	if (WARN_ONCE(!name, "Can not register anonymous pmu.\n"))
+		return -EINVAL;
+
+	if (WARN_ONCE(pmu->scope >= PERF_PMU_MAX_SCOPE,
+		      "Can not register a pmu with an invalid scope.\n"))
+		return -EINVAL;
 
 	pmu->name = name;
 
 	if (type >= 0)
 		max = type;
 
-	ret = idr_alloc(&pmu_idr, pmu, max, 0, GFP_KERNEL);
-	if (ret < 0)
-		goto free_pdc;
+	CLASS(idr_alloc, pmu_type)(&pmu_idr, NULL, max, 0, GFP_KERNEL);
+	if (pmu_type.id < 0)
+		return pmu_type.id;
 
-	WARN_ON(type >= 0 && ret != type);
+	WARN_ON(type >= 0 && pmu_type.id != type);
 
-	type = ret;
-	pmu->type = type;
+	pmu->type = pmu_type.id;
+	atomic_set(&pmu->exclusive_cnt, 0);
 
 	if (pmu_bus_running && !pmu->dev) {
-		ret = pmu_dev_alloc(pmu);
+		int ret = pmu_dev_alloc(pmu);
 		if (ret)
-			goto free_idr;
+			return ret;
 	}
 
-	ret = -ENOMEM;
-	pmu->cpu_pmu_context = alloc_percpu(struct perf_cpu_pmu_context);
+	pmu->cpu_pmu_context = alloc_percpu(struct perf_cpu_pmu_context *);
 	if (!pmu->cpu_pmu_context)
-		goto free_dev;
+		return -ENOMEM;
 
 	for_each_possible_cpu(cpu) {
-		struct perf_cpu_pmu_context *cpc;
+		struct perf_cpu_pmu_context *cpc =
+			kmalloc_node(sizeof(struct perf_cpu_pmu_context),
+				     GFP_KERNEL | __GFP_ZERO,
+				     cpu_to_node(cpu));
 
-		cpc = per_cpu_ptr(pmu->cpu_pmu_context, cpu);
+		if (!cpc)
+			return -ENOMEM;
+
+		*per_cpu_ptr(pmu->cpu_pmu_context, cpu) = cpc;
 		__perf_init_event_pmu_context(&cpc->epc, pmu);
 		__perf_mux_hrtimer_init(cpc, cpu);
 	}
@@ -11809,33 +11947,115 @@ int perf_pmu_register(struct pmu *pmu, const char *name, int type)
 	if (!pmu->event_idx)
 		pmu->event_idx = perf_event_idx_default;
 
+	INIT_LIST_HEAD(&pmu->events);
+	spin_lock_init(&pmu->events_lock);
+
+	/*
+	 * Now that the PMU is complete, make it visible to perf_try_init_event().
+	 */
+	if (!idr_cmpxchg(&pmu_idr, pmu->type, NULL, pmu))
+		return -EINVAL;
 	list_add_rcu(&pmu->entry, &pmus);
-	atomic_set(&pmu->exclusive_cnt, 0);
-	ret = 0;
-unlock:
-	mutex_unlock(&pmus_lock);
 
-	return ret;
+	take_idr_id(pmu_type);
+	_pmu = no_free_ptr(pmu); // let it rip
+	return 0;
+}
+EXPORT_SYMBOL_GPL(perf_pmu_register);
 
-free_dev:
-	if (pmu->dev && pmu->dev != PMU_NULL_DEV) {
-		device_del(pmu->dev);
-		put_device(pmu->dev);
+static void __pmu_detach_event(struct pmu *pmu, struct perf_event *event,
+			       struct perf_event_context *ctx)
+{
+	/*
+	 * De-schedule the event and mark it REVOKED.
+	 */
+	perf_event_exit_event(event, ctx, true);
+
+	/*
+	 * All _free_event() bits that rely on event->pmu:
+	 */
+	scoped_guard (mutex, &event->mmap_mutex) {
+		WARN_ON_ONCE(pmu->event_unmapped);
+		ring_buffer_attach(event, NULL);
+	}
+
+	perf_event_free_bpf_prog(event);
+	perf_free_addr_filters(event);
+
+	if (event->destroy) {
+		event->destroy(event);
+		event->destroy = NULL;
+	}
+
+	if (event->pmu_ctx) {
+		put_pmu_ctx(event->pmu_ctx);
+		event->pmu_ctx = NULL;
 	}
 
-free_idr:
-	idr_remove(&pmu_idr, pmu->type);
+	exclusive_event_destroy(event);
+	module_put(pmu->module);
 
-free_pdc:
-	free_percpu(pmu->pmu_disable_count);
-	goto unlock;
+	event->pmu = NULL; /* force fault instead of UAF */
 }
-EXPORT_SYMBOL_GPL(perf_pmu_register);
 
-void perf_pmu_unregister(struct pmu *pmu)
+static void pmu_detach_event(struct pmu *pmu, struct perf_event *event)
 {
-	mutex_lock(&pmus_lock);
-	list_del_rcu(&pmu->entry);
+	struct perf_event_context *ctx;
+
+	ctx = perf_event_ctx_lock(event);
+	__pmu_detach_event(pmu, event, ctx);
+	perf_event_ctx_unlock(event, ctx);
+
+	scoped_guard (spinlock, &pmu->events_lock)
+		list_del(&event->pmu_list);
+}
+
+static struct perf_event *pmu_get_event(struct pmu *pmu)
+{
+	struct perf_event *event;
+
+	guard(spinlock)(&pmu->events_lock);
+	list_for_each_entry(event, &pmu->events, pmu_list) {
+		if (atomic_long_inc_not_zero(&event->refcount))
+			return event;
+	}
+
+	return NULL;
+}
+
+static bool pmu_empty(struct pmu *pmu)
+{
+	guard(spinlock)(&pmu->events_lock);
+	return list_empty(&pmu->events);
+}
+
+static void pmu_detach_events(struct pmu *pmu)
+{
+	struct perf_event *event;
+
+	for (;;) {
+		event = pmu_get_event(pmu);
+		if (!event)
+			break;
+
+		pmu_detach_event(pmu, event);
+		put_event(event);
+	}
+
+	/*
+	 * wait for pending _free_event()s
+	 */
+	wait_var_event(pmu, pmu_empty(pmu));
+}
+
+int perf_pmu_unregister(struct pmu *pmu)
+{
+	scoped_guard (mutex, &pmus_lock) {
+		if (!idr_cmpxchg(&pmu_idr, pmu->type, pmu, NULL))
+			return -EINVAL;
+
+		list_del_rcu(&pmu->entry);
+	}
 
 	/*
 	 * We dereference the pmu list under both SRCU and regular RCU, so
@@ -11844,16 +12064,31 @@ void perf_pmu_unregister(struct pmu *pmu)
 	synchronize_srcu(&pmus_srcu);
 	synchronize_rcu();
 
-	free_percpu(pmu->pmu_disable_count);
-	idr_remove(&pmu_idr, pmu->type);
-	if (pmu_bus_running && pmu->dev && pmu->dev != PMU_NULL_DEV) {
-		if (pmu->nr_addr_filters)
-			device_remove_file(pmu->dev, &dev_attr_nr_addr_filters);
-		device_del(pmu->dev);
-		put_device(pmu->dev);
+	if (pmu->event_unmapped && !pmu_empty(pmu)) {
+		/*
+		 * Can't force remove events when pmu::event_unmapped()
+		 * is used in perf_mmap_close().
+		 */
+		guard(mutex)(&pmus_lock);
+		idr_cmpxchg(&pmu_idr, pmu->type, NULL, pmu);
+		list_add_rcu(&pmu->entry, &pmus);
+		return -EBUSY;
 	}
-	free_pmu_context(pmu);
-	mutex_unlock(&pmus_lock);
+
+	scoped_guard (mutex, &pmus_lock)
+		idr_remove(&pmu_idr, pmu->type);
+
+	/*
+	 * PMU is removed from the pmus list, so no new events will
+	 * be created, now take care of the existing ones.
+	 */
+	pmu_detach_events(pmu);
+
+	/*
+	 * PMU is unused, make it go away.
+	 */
+	perf_pmu_free(pmu);
+	return 0;
 }
 EXPORT_SYMBOL_GPL(perf_pmu_unregister);
 
@@ -11922,8 +12157,10 @@ static int perf_try_init_event(struct pmu *pmu, struct perf_event *event)
 			event->destroy(event);
 	}
 
-	if (ret)
+	if (ret) {
+		event->pmu = NULL;
 		module_put(pmu->module);
+	}
 
 	return ret;
 }
@@ -11931,10 +12168,10 @@ static int perf_try_init_event(struct pmu *pmu, struct perf_event *event)
 static struct pmu *perf_init_event(struct perf_event *event)
 {
 	bool extended_type = false;
-	int idx, type, ret;
 	struct pmu *pmu;
+	int type, ret;
 
-	idx = srcu_read_lock(&pmus_srcu);
+	guard(srcu)(&pmus_srcu);
 
 	/*
 	 * Save original type before calling pmu->event_init() since certain
@@ -11947,7 +12184,7 @@ static struct pmu *perf_init_event(struct perf_event *event)
 		pmu = event->parent->pmu;
 		ret = perf_try_init_event(pmu, event);
 		if (!ret)
-			goto unlock;
+			return pmu;
 	}
 
 	/*
@@ -11966,13 +12203,12 @@ static struct pmu *perf_init_event(struct perf_event *event)
 	}
 
 again:
-	rcu_read_lock();
-	pmu = idr_find(&pmu_idr, type);
-	rcu_read_unlock();
+	scoped_guard (rcu)
+		pmu = idr_find(&pmu_idr, type);
 	if (pmu) {
 		if (event->attr.type != type && type != PERF_TYPE_RAW &&
 		    !(pmu->capabilities & PERF_PMU_CAP_EXTENDED_HW_TYPE))
-			goto fail;
+			return ERR_PTR(-ENOENT);
 
 		ret = perf_try_init_event(pmu, event);
 		if (ret == -ENOENT && event->attr.type != type && !extended_type) {
@@ -11981,27 +12217,21 @@ static struct pmu *perf_init_event(struct perf_event *event)
 		}
 
 		if (ret)
-			pmu = ERR_PTR(ret);
+			return ERR_PTR(ret);
 
-		goto unlock;
+		return pmu;
 	}
 
 	list_for_each_entry_rcu(pmu, &pmus, entry, lockdep_is_held(&pmus_srcu)) {
 		ret = perf_try_init_event(pmu, event);
 		if (!ret)
-			goto unlock;
+			return pmu;
 
-		if (ret != -ENOENT) {
-			pmu = ERR_PTR(ret);
-			goto unlock;
-		}
+		if (ret != -ENOENT)
+			return ERR_PTR(ret);
 	}
-fail:
-	pmu = ERR_PTR(-ENOENT);
-unlock:
-	srcu_read_unlock(&pmus_srcu, idx);
 
-	return pmu;
+	return ERR_PTR(-ENOENT);
 }
 
 static void attach_sb_event(struct perf_event *event)
@@ -12128,7 +12358,6 @@ perf_event_alloc(struct perf_event_attr *attr, int cpu,
 		 void *context, int cgroup_fd)
 {
 	struct pmu *pmu;
-	struct perf_event *event;
 	struct hw_perf_event *hwc;
 	long err = -EINVAL;
 	int node;
@@ -12143,8 +12372,8 @@ perf_event_alloc(struct perf_event_attr *attr, int cpu,
 	}
 
 	node = (cpu >= 0) ? cpu_to_node(cpu) : -1;
-	event = kmem_cache_alloc_node(perf_event_cache, GFP_KERNEL | __GFP_ZERO,
-				      node);
+	struct perf_event *event __free(__free_event) =
+		kmem_cache_alloc_node(perf_event_cache, GFP_KERNEL | __GFP_ZERO, node);
 	if (!event)
 		return ERR_PTR(-ENOMEM);
 
@@ -12234,6 +12463,13 @@ perf_event_alloc(struct perf_event_attr *attr, int cpu,
 
 	perf_event__state_init(event);
 
+	/*
+	 * Hold SRCU critical section around perf_init_event(), until returning
+	 * the fully formed event put on pmu->events_list. This ensures that
+	 * perf_pmu_unregister() will see any in-progress event creation that
+	 * races.
+	 */
+	guard(srcu)(&pmus_srcu);
 	pmu = NULL;
 
 	hwc = &event->hw;
@@ -12251,51 +12487,43 @@ perf_event_alloc(struct perf_event_attr *attr, int cpu,
 	 * See perf_output_read().
 	 */
 	if (has_inherit_and_sample_read(attr) && !(attr->sample_type & PERF_SAMPLE_TID))
-		goto err_ns;
+		return ERR_PTR(-EINVAL);
 
 	if (!has_branch_stack(event))
 		event->attr.branch_sample_type = 0;
 
 	pmu = perf_init_event(event);
-	if (IS_ERR(pmu)) {
-		err = PTR_ERR(pmu);
-		goto err_ns;
-	}
+	if (IS_ERR(pmu))
+		return (void*)pmu;
 
 	/*
 	 * Disallow uncore-task events. Similarly, disallow uncore-cgroup
 	 * events (they don't make sense as the cgroup will be different
 	 * on other CPUs in the uncore mask).
 	 */
-	if (pmu->task_ctx_nr == perf_invalid_context && (task || cgroup_fd != -1)) {
-		err = -EINVAL;
-		goto err_pmu;
-	}
+	if (pmu->task_ctx_nr == perf_invalid_context && (task || cgroup_fd != -1))
+		return ERR_PTR(-EINVAL);
 
 	if (event->attr.aux_output &&
-	    !(pmu->capabilities & PERF_PMU_CAP_AUX_OUTPUT)) {
-		err = -EOPNOTSUPP;
-		goto err_pmu;
-	}
+	    !(pmu->capabilities & PERF_PMU_CAP_AUX_OUTPUT))
+		return ERR_PTR(-EOPNOTSUPP);
 
 	if (cgroup_fd != -1) {
 		err = perf_cgroup_connect(cgroup_fd, event, attr, group_leader);
 		if (err)
-			goto err_pmu;
+			return ERR_PTR(err);
 	}
 
 	err = exclusive_event_init(event);
 	if (err)
-		goto err_pmu;
+		return ERR_PTR(err);
 
 	if (has_addr_filter(event)) {
 		event->addr_filter_ranges = kcalloc(pmu->nr_addr_filters,
 						    sizeof(struct perf_addr_filter_range),
 						    GFP_KERNEL);
-		if (!event->addr_filter_ranges) {
-			err = -ENOMEM;
-			goto err_per_task;
-		}
+		if (!event->addr_filter_ranges)
+			return ERR_PTR(-ENOMEM);
 
 		/*
 		 * Clone the parent's vma offsets: they are valid until exec()
@@ -12319,42 +12547,22 @@ perf_event_alloc(struct perf_event_attr *attr, int cpu,
 		if (event->attr.sample_type & PERF_SAMPLE_CALLCHAIN) {
 			err = get_callchain_buffers(attr->sample_max_stack);
 			if (err)
-				goto err_addr_filters;
+				return ERR_PTR(err);
+			event->attach_state |= PERF_ATTACH_CALLCHAIN;
 		}
 	}
 
 	err = security_perf_event_alloc(event);
 	if (err)
-		goto err_callchain_buffer;
+		return ERR_PTR(err);
 
 	/* symmetric to unaccount_event() in _free_event() */
 	account_event(event);
 
-	return event;
-
-err_callchain_buffer:
-	if (!event->parent) {
-		if (event->attr.sample_type & PERF_SAMPLE_CALLCHAIN)
-			put_callchain_buffers();
-	}
-err_addr_filters:
-	kfree(event->addr_filter_ranges);
+	scoped_guard (spinlock, &pmu->events_lock)
+		list_add(&event->pmu_list, &pmu->events);
 
-err_per_task:
-	exclusive_event_destroy(event);
-
-err_pmu:
-	if (is_cgroup_event(event))
-		perf_detach_cgroup(event);
-	if (event->destroy)
-		event->destroy(event);
-	module_put(pmu->module);
-err_ns:
-	if (event->hw.target)
-		put_task_struct(event->hw.target);
-	call_rcu(&event->rcu_head, free_event_rcu);
-
-	return ERR_PTR(err);
+	return_ptr(event);
 }
 
 static int perf_copy_attr(struct perf_event_attr __user *uattr,
@@ -12740,6 +12948,10 @@ SYSCALL_DEFINE5(perf_event_open,
 		if (err)
 			goto err_fd;
 		group_leader = fd_file(group)->private_data;
+		if (group_leader->state <= PERF_EVENT_STATE_REVOKED) {
+			err = -ENODEV;
+			goto err_group_fd;
+		}
 		if (flags & PERF_FLAG_FD_OUTPUT)
 			output_event = group_leader;
 		if (flags & PERF_FLAG_FD_NO_GROUP)
@@ -13287,10 +13499,11 @@ static void sync_child_event(struct perf_event *child_event)
 }
 
 static void
-perf_event_exit_event(struct perf_event *event, struct perf_event_context *ctx)
+perf_event_exit_event(struct perf_event *event,
+		      struct perf_event_context *ctx, bool revoke)
 {
 	struct perf_event *parent_event = event->parent;
-	unsigned long detach_flags = 0;
+	unsigned long detach_flags = DETACH_EXIT;
 
 	if (parent_event) {
 		/*
@@ -13305,16 +13518,14 @@ perf_event_exit_event(struct perf_event *event, struct perf_event_context *ctx)
 		 * Do destroy all inherited groups, we don't care about those
 		 * and being thorough is better.
 		 */
-		detach_flags = DETACH_GROUP | DETACH_CHILD;
+		detach_flags |= DETACH_GROUP | DETACH_CHILD;
 		mutex_lock(&parent_event->child_mutex);
 	}
 
-	perf_remove_from_context(event, detach_flags);
+	if (revoke)
+		detach_flags |= DETACH_GROUP | DETACH_REVOKE;
 
-	raw_spin_lock_irq(&ctx->lock);
-	if (event->state > PERF_EVENT_STATE_EXIT)
-		perf_event_set_state(event, PERF_EVENT_STATE_EXIT);
-	raw_spin_unlock_irq(&ctx->lock);
+	perf_remove_from_context(event, detach_flags);
 
 	/*
 	 * Child events can be freed.
@@ -13390,7 +13601,7 @@ static void perf_event_exit_task_context(struct task_struct *child)
 	perf_event_task(child, child_ctx, 0);
 
 	list_for_each_entry_safe(child_event, next, &child_ctx->event_list, event_entry)
-		perf_event_exit_event(child_event, child_ctx);
+		perf_event_exit_event(child_event, child_ctx, false);
 
 	mutex_unlock(&child_ctx->mutex);
 
@@ -13580,6 +13791,9 @@ inherit_event(struct perf_event *parent_event,
 	if (parent_event->parent)
 		parent_event = parent_event->parent;
 
+	if (parent_event->state <= PERF_EVENT_STATE_REVOKED)
+		return NULL;
+
 	child_event = perf_event_alloc(&parent_event->attr,
 					   parent_event->cpu,
 					   child,
-- 
2.47.0

