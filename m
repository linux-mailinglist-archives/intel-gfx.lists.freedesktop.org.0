Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C64584DB13D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 14:21:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDA7310E595;
	Wed, 16 Mar 2022 13:21:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB5710E595
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 13:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647436864; x=1678972864;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vbcyDn5W2ZO3IS5FhgpNZ/lbFoeZwu0FItNvf0w6rNs=;
 b=S6+F6j4wFg8GylGSRVU3PrBX6SBAl33MrkB5y7it1cjEnKcGuMSg3sO+
 L6qfNcwxUsSN9Dbkjd3xhAZcRRhrs8+Dgz+qCi3Mry4HtMPSgKi1ELp5S
 tVfn3MnI4saj2bkIgLz7XJgWhK00tno1qqZPblf4Mhb5hIxquHYmRDajG
 hxO8+hbfGq8dmE8HY0enDubYNZV6oVwqw8HGtyCMKupnSHVlKgbj139Ee
 R1PjApLhY/l45nNfaNyisDTiSAbw/tS4+cfJL1uM59GzyvVurIqM8hs+1
 xYb8AZ1bIYgXcTZ/ENYotnyWFKN/HE0ZUl2FXwMloYCxCr3DNSuj9CMMY Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="281364288"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="281364288"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 06:21:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="646643908"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga004.jf.intel.com with ESMTP; 16 Mar 2022 06:21:01 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Mar 2022 18:37:53 +0530
Message-Id: <20220316130754.813761-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: preempt engine to idle before
 reset
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
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

We need to be able to suspend execution along an
engine and flush any active contexts away from
the HW, back into the execution queue. This is
done using a preempt-to-idle, disabling the
submission backed while sending a preemption
request to ELSP. Unpon completion of the context
switch into the preemption context, we know the
existing contexts are now idle.

This is useful for reset, as it means we can
proceed knowing that the engine is idle or hung
(and so needs a reset).

Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h  |   4 +-
 .../drm/i915/gt/intel_execlists_submission.c  | 131 +++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_reset.c         |   9 ++
 3 files changed, 142 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index eac20112709c..194155de900d 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -237,6 +237,7 @@ struct intel_engine_execlists {
 	 */
 	struct rb_root_cached virtual;
 
+	struct intel_context *preempt_context;
 	/**
 	 * @csb_write: control register for Context Switch buffer
 	 *
@@ -445,8 +446,9 @@ struct intel_engine_cs {
 	void		(*irq_disable)(struct intel_engine_cs *engine);
 	void		(*irq_handler)(struct intel_engine_cs *engine, u16 iir);
 
-	void		(*sanitize)(struct intel_engine_cs *engine);
+	int             (*suspend)(struct intel_engine_cs *engine);
 	int		(*resume)(struct intel_engine_cs *engine);
+	void		(*sanitize)(struct intel_engine_cs *engine);
 
 	struct {
 		void (*prepare)(struct intel_engine_cs *engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index e1470bb60f34..006e2d9a53e3 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2440,6 +2440,125 @@ static void execlists_submission_tasklet(struct tasklet_struct *t)
 	rcu_read_unlock();
 }
 
+static void suspend_tasklet(struct tasklet_struct *t)
+{
+	struct i915_sched_engine *se = from_tasklet(se, t, tasklet);
+	struct intel_engine_cs * const engine = se->private_data;
+	struct i915_request *post[EXECLIST_MAX_PORTS];
+
+	rcu_read_lock();
+	post_process_csb(post, process_csb(engine, post));
+	rcu_read_unlock();
+}
+
+/* XXX return error and force a full reset if we fail to
+ * preempt-to-idle
+ */
+static int execlists_suspend(struct intel_engine_cs *engine)
+{
+	struct i915_sched_engine *se = engine->sched_engine;
+	struct intel_engine_execlists * const el = &engine->execlists;
+	unsigned long timeout;
+	int err;
+
+	/* Stop further submissions, but listen for our own preempt-to-idle */
+	tasklet_disable(&se->tasklet);
+	se->tasklet.callback = suspend_tasklet;
+	tasklet_enable(&se->tasklet);
+
+	/*
+	 * We have to wait for the HW to complete a pending context switch
+	 * before we can write to ELS[PQ] again. Otherwise the behaviour
+	 * is undefined...
+	 *
+	 * If the engine is truly hung, it will neither clear pending
+	 * nor respond to our preemption request. In the later case,
+	 * we have the dilemma of how to restore hang detection...
+	 */
+	timeout = jiffies + HZ / 2;
+	while (READ_ONCE(el->pending[0]) && time_before(jiffies, timeout))
+		intel_engine_flush_submission(engine);
+	if (READ_ONCE(el->pending[0])) {
+		err = -EBUSY;
+		goto err;
+	}
+
+	if (*el->active) { /* preempt to idle required */
+		struct i915_request **pending = el->pending;
+		struct intel_context *ce = el->preempt_context;
+		u64 desc;
+		int n;
+
+		/* Always submit an empty / idle context */
+		desc = lrc_update_regs(ce, engine, ce->ring->tail);
+
+		/*
+		 * As we submit a dummy context, we will get two events.
+		 * First a preemption of the running context, causing us
+		 * to promote el->pending to el->inflight. And then
+		 * we will receive a completion event as our context
+		 * idles.
+		 *
+		 * We can use any dummy request here for tracking the
+		 * preemption events.
+		 */
+		execlists_schedule_in(*el->active, 0);
+		*pending++ = i915_request_get(*el->active);
+		*pending++ = NULL;
+
+		/* Tell the HW to preempt to our special context */
+		for (n = execlists_num_ports(el); --n; )
+			write_desc(el, 0, n);
+		write_desc(el, desc, 0);
+		if (el->ctrl_reg)
+			writel(EL_CTRL_LOAD, el->ctrl_reg);
+
+		timeout = jiffies + HZ / 2;
+		while (READ_ONCE(el->pending[0]) &&
+		       time_before(jiffies, timeout))
+			intel_engine_flush_submission(engine);
+
+		if (READ_ONCE(el->pending[0])) {
+			err = -EIO;
+			goto err;
+		}
+	}
+
+	return 0;
+
+err:
+	tasklet_disable(&se->tasklet);
+	se->tasklet.callback = execlists_submission_tasklet;
+	tasklet_enable(&se->tasklet);
+	return err;
+}
+
+static int setup_preempt_to_idle(struct intel_engine_cs *engine)
+{
+	struct intel_engine_execlists * const el = &engine->execlists;
+	static struct lock_class_key preempt;
+	struct intel_context *ce;
+
+	ce = intel_engine_create_pinned_context(engine, engine->gt->vm, SZ_4K,
+						I915_GEM_HWS_SEQNO_ADDR, /* unused */
+						&preempt, "preempt_context");
+	if (IS_ERR(ce))
+		return PTR_ERR(ce);
+
+	el->preempt_context = ce;
+	return 0;
+}
+
+static void cleanup_preempt_to_idle(struct intel_engine_cs *engine)
+{
+	struct intel_engine_execlists * const el = &engine->execlists;
+
+	if (el->preempt_context) {
+		intel_engine_destroy_pinned_context(el->preempt_context);
+		el->preempt_context = NULL;
+	}
+}
+
 static void execlists_irq_handler(struct intel_engine_cs *engine, u16 iir)
 {
 	bool tasklet = false;
@@ -2907,6 +3026,10 @@ static void enable_execlists(struct intel_engine_cs *engine)
 
 static int execlists_resume(struct intel_engine_cs *engine)
 {
+	struct i915_sched_engine *se = engine->sched_engine;
+
+	se->tasklet.callback = execlists_submission_tasklet;
+
 	intel_mocs_init_engine(engine);
 	intel_breadcrumbs_reset(engine->breadcrumbs);
 
@@ -3337,6 +3460,7 @@ static void execlists_release(struct intel_engine_cs *engine)
 	engine->sanitize = NULL; /* no longer in control, nothing to sanitize */
 
 	execlists_shutdown(engine);
+	cleanup_preempt_to_idle(engine);
 
 	intel_engine_cleanup_common(engine);
 	lrc_fini_wa_ctx(engine);
@@ -3378,7 +3502,7 @@ static void
 logical_ring_default_vfuncs(struct intel_engine_cs *engine)
 {
 	/* Default vfuncs which can be overridden by each engine. */
-
+	engine->suspend = execlists_suspend;
 	engine->resume = execlists_resume;
 
 	engine->cops = &execlists_context_ops;
@@ -3480,6 +3604,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	struct drm_i915_private *i915 = engine->i915;
 	struct intel_uncore *uncore = engine->uncore;
 	u32 base = engine->mmio_base;
+	int err;
 
 	tasklet_setup(&engine->sched_engine->tasklet, execlists_submission_tasklet);
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
@@ -3491,6 +3616,10 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	if (engine->flags & I915_ENGINE_HAS_RCS_REG_STATE)
 		rcs_submission_override(engine);
 
+	err = setup_preempt_to_idle(engine);
+	if (err)
+		return err;
+
 	lrc_init_wa_ctx(engine);
 
 	if (HAS_LOGICAL_RING_ELSQ(i915)) {
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index a6ae213c7d89..e10718e2eee9 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -772,6 +772,12 @@ static intel_engine_mask_t reset_prepare(struct intel_gt *gt)
 	intel_engine_mask_t awake = 0;
 	enum intel_engine_id id;
 
+	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
+	/* XXX Assumes we have reset_domain broadening */
+	for_each_engine(engine, gt, id)
+		if (engine->suspend)
+			engine->suspend(engine);
+
 	for_each_engine(engine, gt, id) {
 		if (intel_engine_pm_get_if_awake(engine))
 			awake |= engine->mask;
@@ -830,11 +836,14 @@ static void reset_finish(struct intel_gt *gt, intel_engine_mask_t awake)
 
 	for_each_engine(engine, gt, id) {
 		reset_finish_engine(engine);
+		if (engine->resume)
+			engine->resume(engine);
 		if (awake & engine->mask)
 			intel_engine_pm_put(engine);
 	}
 
 	intel_uc_reset_finish(&gt->uc);
+	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
 }
 
 static void nop_submit_request(struct i915_request *request)
-- 
2.34.1

