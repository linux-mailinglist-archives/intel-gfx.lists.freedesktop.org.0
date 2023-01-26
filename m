Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DBA67C207
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 01:54:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 823BF10E8CF;
	Thu, 26 Jan 2023 00:54:35 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1324110E8D1;
 Thu, 26 Jan 2023 00:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674694473; x=1706230473;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I2QGYGUHU2bsMx7P4C4vWRT7MkAIYM5yq1q7G5IDyzE=;
 b=fpgTnhHkN+n4z2aJPtDCND1prhk4bVU+9SDsSxdn0slVTN7BNC2HRady
 abC3RsvSQQJVMG3QS3eWjJjnhqafZ15LLEGlb1n7ZYxQz4PV5BqdIMTlD
 LSvKyX5tJiweVa1ySACCsP3RSfnSJwVnDuqfisiTmKmsbPjK/RTZHWAAQ
 SRQiR3yPkpjwBGVwVvZ7MVBG2/G8Lvk5UQ7SXnmEnwoa+E6x1ZwgtC46e
 rysA9J70upFbq0yGaSBtKdqvVWWrQMT6tjv6Pfl+8bs9//+lHPzIV1J2R
 b76sryY6Kbemi4hMal6tUo/o7M1T2/yfem21ApvuCGg6dpQoaT/YGx49P Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="389064427"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="389064427"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 16:54:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="751404284"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="751404284"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jan 2023 16:54:31 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 25 Jan 2023 16:54:15 -0800
Message-Id: <20230126005420.160070-4-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230126005420.160070-1-John.C.Harrison@Intel.com>
References: <20230126005420.160070-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/8] drm/i915: Fix up locking around dumping
 requests lists
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
Cc: Michael Cheng <michael.cheng@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, DRI-Devel@Lists.FreeDesktop.Org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The debugfs dump of requests was confused about what state requires
the execlist lock versus the GuC lock. There was also a bunch of
duplicated messy code between it and the error capture code.

So refactor the hung request search into a re-usable function. And
reduce the span of the execlist state lock to only the execlist
specific code paths. In order to do that, also move the report of hold
count (which is an execlist only concept) from the top level dump
function to the lower level execlist specific function. Also, move the
execlist specific code into the execlist source file.

v2: Rename some functions and move to more appropriate files (Daniele).
v3: Rename new execlist dump function (Daniele)

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Fixes: dc0dad365c5e ("drm/i915/guc: Fix for error capture after full GPU reset with GuC")
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Cc: Michael Cheng <michael.cheng@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Bruce Chang <yu.bruce.chang@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h        |  4 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 74 +++++++++----------
 .../drm/i915/gt/intel_execlists_submission.c  | 27 +++++++
 .../drm/i915/gt/intel_execlists_submission.h  |  4 +
 drivers/gpu/drm/i915/i915_gpu_error.c         | 26 +------
 5 files changed, 73 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 0e24af5efee9c..b58c30ac8ef02 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -250,8 +250,8 @@ void intel_engine_dump_active_requests(struct list_head *requests,
 ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine,
 				   ktime_t *now);
 
-struct i915_request *
-intel_engine_execlist_find_hung_request(struct intel_engine_cs *engine);
+void intel_engine_get_hung_entity(struct intel_engine_cs *engine,
+				  struct intel_context **ce, struct i915_request **rq);
 
 u32 intel_engine_context_size(struct intel_gt *gt, u8 class);
 struct intel_context *
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index a86bdbee7a6be..9f703f255d721 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -2114,17 +2114,6 @@ static void print_request_ring(struct drm_printer *m, struct i915_request *rq)
 	}
 }
 
-static unsigned long list_count(struct list_head *list)
-{
-	struct list_head *pos;
-	unsigned long count = 0;
-
-	list_for_each(pos, list)
-		count++;
-
-	return count;
-}
-
 static unsigned long read_ul(void *p, size_t x)
 {
 	return *(unsigned long *)(p + x);
@@ -2216,11 +2205,11 @@ void intel_engine_dump_active_requests(struct list_head *requests,
 	}
 }
 
-static void engine_dump_active_requests(struct intel_engine_cs *engine, struct drm_printer *m)
+static void engine_dump_active_requests(struct intel_engine_cs *engine,
+					struct drm_printer *m)
 {
+	struct intel_context *hung_ce = NULL;
 	struct i915_request *hung_rq = NULL;
-	struct intel_context *ce;
-	bool guc;
 
 	/*
 	 * No need for an engine->irq_seqno_barrier() before the seqno reads.
@@ -2229,29 +2218,20 @@ static void engine_dump_active_requests(struct intel_engine_cs *engine, struct d
 	 * But the intention here is just to report an instantaneous snapshot
 	 * so that's fine.
 	 */
-	lockdep_assert_held(&engine->sched_engine->lock);
+	intel_engine_get_hung_entity(engine, &hung_ce, &hung_rq);
 
 	drm_printf(m, "\tRequests:\n");
 
-	guc = intel_uc_uses_guc_submission(&engine->gt->uc);
-	if (guc) {
-		ce = intel_engine_get_hung_context(engine);
-		if (ce)
-			hung_rq = intel_context_get_active_request(ce);
-	} else {
-		hung_rq = intel_engine_execlist_find_hung_request(engine);
-		if (hung_rq)
-			hung_rq = i915_request_get_rcu(hung_rq);
-	}
-
 	if (hung_rq)
 		engine_dump_request(hung_rq, m, "\t\thung");
+	else if (hung_ce)
+		drm_printf(m, "\t\tGot hung ce but no hung rq!\n");
 
-	if (guc)
+	if (intel_uc_uses_guc_submission(&engine->gt->uc))
 		intel_guc_dump_active_requests(engine, hung_rq, m);
 	else
-		intel_engine_dump_active_requests(&engine->sched_engine->requests,
-						  hung_rq, m);
+		intel_execlists_dump_active_requests(engine, hung_rq, m);
+
 	if (hung_rq)
 		i915_request_put(hung_rq);
 }
@@ -2263,7 +2243,6 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 	struct i915_gpu_error * const error = &engine->i915->gpu_error;
 	struct i915_request *rq;
 	intel_wakeref_t wakeref;
-	unsigned long flags;
 	ktime_t dummy;
 
 	if (header) {
@@ -2300,13 +2279,8 @@ void intel_engine_dump(struct intel_engine_cs *engine,
 		   i915_reset_count(error));
 	print_properties(engine, m);
 
-	spin_lock_irqsave(&engine->sched_engine->lock, flags);
 	engine_dump_active_requests(engine, m);
 
-	drm_printf(m, "\tOn hold?: %lu\n",
-		   list_count(&engine->sched_engine->hold));
-	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
-
 	drm_printf(m, "\tMMIO base:  0x%08x\n", engine->mmio_base);
 	wakeref = intel_runtime_pm_get_if_in_use(engine->uncore->rpm);
 	if (wakeref) {
@@ -2352,8 +2326,7 @@ intel_engine_create_virtual(struct intel_engine_cs **siblings,
 	return siblings[0]->cops->create_virtual(siblings, count, flags);
 }
 
-struct i915_request *
-intel_engine_execlist_find_hung_request(struct intel_engine_cs *engine)
+static struct i915_request *engine_execlist_find_hung_request(struct intel_engine_cs *engine)
 {
 	struct i915_request *request, *active = NULL;
 
@@ -2405,6 +2378,33 @@ intel_engine_execlist_find_hung_request(struct intel_engine_cs *engine)
 	return active;
 }
 
+void intel_engine_get_hung_entity(struct intel_engine_cs *engine,
+				  struct intel_context **ce, struct i915_request **rq)
+{
+	unsigned long flags;
+
+	*ce = intel_engine_get_hung_context(engine);
+	if (*ce) {
+		intel_engine_clear_hung_context(engine);
+
+		*rq = intel_context_get_active_request(*ce);
+		return;
+	}
+
+	/*
+	 * Getting here with GuC enabled means it is a forced error capture
+	 * with no actual hang. So, no need to attempt the execlist search.
+	 */
+	if (intel_uc_uses_guc_submission(&engine->gt->uc))
+		return;
+
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
+	*rq = engine_execlist_find_hung_request(engine);
+	if (*rq)
+		*rq = i915_request_get_rcu(*rq);
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
+}
+
 void xehp_enable_ccs_engines(struct intel_engine_cs *engine)
 {
 	/*
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 18ffe55282e59..3c573d41d4046 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -4150,6 +4150,33 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 	spin_unlock_irqrestore(&sched_engine->lock, flags);
 }
 
+static unsigned long list_count(struct list_head *list)
+{
+	struct list_head *pos;
+	unsigned long count = 0;
+
+	list_for_each(pos, list)
+		count++;
+
+	return count;
+}
+
+void intel_execlists_dump_active_requests(struct intel_engine_cs *engine,
+					  struct i915_request *hung_rq,
+					  struct drm_printer *m)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&engine->sched_engine->lock, flags);
+
+	intel_engine_dump_active_requests(&engine->sched_engine->requests, hung_rq, m);
+
+	drm_printf(m, "\tOn hold?: %lu\n",
+		   list_count(&engine->sched_engine->hold));
+
+	spin_unlock_irqrestore(&engine->sched_engine->lock, flags);
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftest_execlists.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.h b/drivers/gpu/drm/i915/gt/intel_execlists_submission.h
index a1aa92c983a51..d2c7d45ea0623 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.h
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.h
@@ -32,6 +32,10 @@ void intel_execlists_show_requests(struct intel_engine_cs *engine,
 							int indent),
 				   unsigned int max);
 
+void intel_execlists_dump_active_requests(struct intel_engine_cs *engine,
+					  struct i915_request *hung_rq,
+					  struct drm_printer *m);
+
 bool
 intel_engine_in_execlists_submission_mode(const struct intel_engine_cs *engine);
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 9e2d17785a9a8..b20bd6365615b 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1596,35 +1596,15 @@ capture_engine(struct intel_engine_cs *engine,
 {
 	struct intel_engine_capture_vma *capture = NULL;
 	struct intel_engine_coredump *ee;
-	struct intel_context *ce;
+	struct intel_context *ce = NULL;
 	struct i915_request *rq = NULL;
-	unsigned long flags;
 
 	ee = intel_engine_coredump_alloc(engine, ALLOW_FAIL, dump_flags);
 	if (!ee)
 		return NULL;
 
-	ce = intel_engine_get_hung_context(engine);
-	if (ce) {
-		intel_engine_clear_hung_context(engine);
-		rq = intel_context_get_active_request(ce);
-		if (!rq || !i915_request_started(rq))
-			goto no_request_capture;
-	} else {
-		/*
-		 * Getting here with GuC enabled means it is a forced error capture
-		 * with no actual hang. So, no need to attempt the execlist search.
-		 */
-		if (!intel_uc_uses_guc_submission(&engine->gt->uc)) {
-			spin_lock_irqsave(&engine->sched_engine->lock, flags);
-			rq = intel_engine_execlist_find_hung_request(engine);
-			if (rq)
-				rq = i915_request_get_rcu(rq);
-			spin_unlock_irqrestore(&engine->sched_engine->lock,
-					       flags);
-		}
-	}
-	if (!rq)
+	intel_engine_get_hung_entity(engine, &ce, &rq);
+	if (!rq || !i915_request_started(rq))
 		goto no_request_capture;
 
 	capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
-- 
2.39.1

