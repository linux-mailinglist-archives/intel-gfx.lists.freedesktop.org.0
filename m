Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E003155B81
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 17:13:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6886EAE8;
	Fri,  7 Feb 2020 16:13:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9AD66EAD9
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:13:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 08:13:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,414,1574150400"; d="scan'208";a="226515324"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.21.249])
 by fmsmga008.fm.intel.com with ESMTP; 07 Feb 2020 08:13:38 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Feb 2020 16:13:29 +0000
Message-Id: <20200207161331.23447-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200207161331.23447-1-tvrtko.ursulin@linux.intel.com>
References: <20200207161331.23447-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Track per-context engine busyness
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Some customers want to know how much of the GPU time are their clients
using in order to make dynamic load balancing decisions.

With the hooks already in place which track the overall engine busyness,
we can extend that slightly to split that time between contexts.

v2: Fix accounting for tail updates.
v3: Rebase.
v4: Mark currently running contexts as active on stats enable.
v5: Include some headers to fix the build.
v6: Added fine grained lock.
v7: Convert to seqlock. (Chris Wilson)
v8: Rebase and tidy with helpers.
v9: Refactor.
v10: Move recording start to promotion. (Chris)
v11: Consolidate duplicated code. (Chris)
v12: execlists->active cannot be NULL. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 20 ++++++++
 drivers/gpu/drm/i915/gt/intel_context.h       | 13 ++++++
 drivers/gpu/drm/i915/gt/intel_context_types.h |  9 ++++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 15 +++++-
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 46 ++++++++++++++++---
 5 files changed, 95 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 57e8a051ddc2..c8669036c303 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -286,6 +286,7 @@ intel_context_init(struct intel_context *ce,
 	INIT_LIST_HEAD(&ce->signals);
 
 	mutex_init(&ce->pin_mutex);
+	seqlock_init(&ce->stats.lock);
 
 	i915_active_init(&ce->active,
 			 __intel_context_active, __intel_context_retire);
@@ -380,6 +381,25 @@ struct i915_request *intel_context_create_request(struct intel_context *ce)
 	return rq;
 }
 
+ktime_t intel_context_get_busy_time(struct intel_context *ce)
+{
+	unsigned int seq;
+	ktime_t total;
+
+	do {
+		seq = read_seqbegin(&ce->stats.lock);
+
+		total = ce->stats.total;
+
+		if (ce->stats.active)
+			total = ktime_add(total,
+					  ktime_sub(ktime_get(),
+						    ce->stats.start));
+	} while (read_seqretry(&ce->stats.lock, seq));
+
+	return total;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftest_context.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 604d5cfc46ba..871196aa7d5a 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -227,4 +227,17 @@ intel_context_clear_nopreempt(struct intel_context *ce)
 	clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
 }
 
+static inline void
+__intel_context_stats_start(struct intel_context *ce, ktime_t now)
+{
+	struct intel_context_stats *stats = &ce->stats;
+
+	if (!stats->active) {
+		stats->start = now;
+		stats->active = true;
+	}
+}
+
+ktime_t intel_context_get_busy_time(struct intel_context *ce);
+
 #endif /* __INTEL_CONTEXT_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index ca1420fb8b53..963d33dc5289 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -11,6 +11,7 @@
 #include <linux/list.h>
 #include <linux/mutex.h>
 #include <linux/types.h>
+#include <linux/seqlock.h>
 
 #include "i915_active_types.h"
 #include "i915_utils.h"
@@ -83,6 +84,14 @@ struct intel_context {
 
 	/** sseu: Control eu/slice partitioning */
 	struct intel_sseu sseu;
+
+	/** stats: Context GPU engine busyness tracking. */
+	struct intel_context_stats {
+		seqlock_t lock;
+		bool active;
+		ktime_t start;
+		ktime_t total;
+	} stats;
 };
 
 #endif /* __INTEL_CONTEXT_TYPES__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index b1c7b1ed6149..a5344d2c7c10 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1599,8 +1599,19 @@ int intel_enable_engine_stats(struct intel_engine_cs *engine)
 
 		engine->stats.enabled_at = ktime_get();
 
-		/* XXX submission method oblivious? */
-		for (port = execlists->active; (rq = *port); port++)
+		/*
+		 * Mark currently running context as active.
+		 * XXX submission method oblivious?
+		 */
+
+		rq = NULL;
+		port = execlists->active;
+		rq = *port;
+		if (rq)
+			__intel_context_stats_start(rq->context,
+						    engine->stats.enabled_at);
+
+		for (; (rq = *port); port++)
 			engine->stats.active++;
 
 		for (port = execlists->pending; (rq = *port); port++) {
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index b350e01d86d2..1cd38b6eb189 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1197,6 +1197,32 @@ static void reset_active(struct i915_request *rq,
 	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
 }
 
+static void intel_context_stats_start(struct intel_context *ce)
+{
+	struct intel_context_stats *stats = &ce->stats;
+	unsigned long flags;
+
+	write_seqlock_irqsave(&stats->lock, flags);
+	__intel_context_stats_start(ce, ktime_get());
+	write_sequnlock_irqrestore(&stats->lock, flags);
+}
+
+static void intel_context_stats_stop(struct intel_context *ce)
+{
+	struct intel_context_stats *stats = &ce->stats;
+	unsigned long flags;
+
+	if (!READ_ONCE(stats->active))
+		return;
+
+	write_seqlock_irqsave(&stats->lock, flags);
+	GEM_BUG_ON(!READ_ONCE(stats->active));
+	stats->total = ktime_add(stats->total,
+				 ktime_sub(ktime_get(), stats->start));
+	stats->active = false;
+	write_sequnlock_irqrestore(&stats->lock, flags);
+}
+
 static inline struct intel_engine_cs *
 __execlists_schedule_in(struct i915_request *rq)
 {
@@ -1264,7 +1290,7 @@ static inline void
 __execlists_schedule_out(struct i915_request *rq,
 			 struct intel_engine_cs * const engine)
 {
-	struct intel_context * const ce = rq->context;
+	struct intel_context *ce = rq->context;
 
 	/*
 	 * NB process_csb() is not under the engine->active.lock and hence
@@ -1281,6 +1307,7 @@ __execlists_schedule_out(struct i915_request *rq,
 		intel_engine_add_retire(engine, ce->timeline);
 
 	intel_engine_context_out(engine);
+	intel_context_stats_stop(ce);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
 	intel_gt_pm_put_async(engine->gt);
 
@@ -2262,6 +2289,7 @@ static void process_csb(struct intel_engine_cs *engine)
 	rmb();
 
 	do {
+		struct i915_request *rq;
 		bool promote;
 
 		if (++head == num_entries)
@@ -2316,7 +2344,11 @@ static void process_csb(struct intel_engine_cs *engine)
 
 			WRITE_ONCE(execlists->pending[0], NULL);
 		} else {
-			GEM_BUG_ON(!*execlists->active);
+			rq = *execlists->active++;
+			GEM_BUG_ON(!rq);
+
+			GEM_BUG_ON(execlists->active - execlists->inflight >
+				   execlists_num_ports(execlists));
 
 			/* port0 completed, advanced to port1 */
 			trace_ports(execlists, "completed", execlists->active);
@@ -2327,13 +2359,15 @@ static void process_csb(struct intel_engine_cs *engine)
 			 * coherent (visible from the CPU) before the
 			 * user interrupt and CSB is processed.
 			 */
-			GEM_BUG_ON(!i915_request_completed(*execlists->active) &&
+			GEM_BUG_ON(!i915_request_completed(rq) &&
 				   !reset_in_progress(execlists));
-			execlists_schedule_out(*execlists->active++);
 
-			GEM_BUG_ON(execlists->active - execlists->inflight >
-				   execlists_num_ports(execlists));
+			execlists_schedule_out(rq);
 		}
+
+		rq = *execlists->active;
+		if (rq)
+			intel_context_stats_start(rq->context);
 	} while (head != tail);
 
 	execlists->csb_head = head;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
