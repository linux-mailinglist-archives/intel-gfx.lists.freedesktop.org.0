Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 908F6126898
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 19:00:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9364E6E3A4;
	Thu, 19 Dec 2019 18:00:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FBAE6E39B
 for <Intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 18:00:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 10:00:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="206283907"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.84.191])
 by orsmga007.jf.intel.com with ESMTP; 19 Dec 2019 10:00:31 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 19 Dec 2019 18:00:16 +0000
Message-Id: <20191219180019.25562-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
References: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 5/8] drm/i915: Track per-context engine busyness
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

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 20 +++++++
 drivers/gpu/drm/i915/gt/intel_context.h       | 11 ++++
 drivers/gpu/drm/i915/gt/intel_context_types.h |  9 ++++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 16 +++++-
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 52 ++++++++++++++++---
 5 files changed, 100 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index b1e346d2d35f..b211b48d6cae 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -243,6 +243,7 @@ intel_context_init(struct intel_context *ce,
 	INIT_LIST_HEAD(&ce->signals);
 
 	mutex_init(&ce->pin_mutex);
+	seqlock_init(&ce->stats.lock);
 
 	i915_active_init(&ce->active,
 			 __intel_context_active, __intel_context_retire);
@@ -337,6 +338,25 @@ struct i915_request *intel_context_create_request(struct intel_context *ce)
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
index b39eb1fcfbca..3a15cf32f0a3 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -160,4 +160,15 @@ static inline struct intel_ring *__intel_context_ring_size(u64 sz)
 	return u64_to_ptr(struct intel_ring, sz);
 }
 
+static inline void
+__intel_context_stats_start(struct intel_context_stats *stats, ktime_t now)
+{
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
index d1204cc899a3..12cbad0798cb 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -11,6 +11,7 @@
 #include <linux/list.h>
 #include <linux/mutex.h>
 #include <linux/types.h>
+#include <linux/seqlock.h>
 
 #include "i915_active_types.h"
 #include "i915_utils.h"
@@ -76,6 +77,14 @@ struct intel_context {
 
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
index 3d1d48bf90cf..ac08781c8b24 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1577,8 +1577,20 @@ int intel_enable_engine_stats(struct intel_engine_cs *engine)
 
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
+		if (port)
+			rq = *port;
+		if (rq)
+			__intel_context_stats_start(&rq->hw_context->stats,
+						    engine->stats.enabled_at);
+
+		for (; (rq = *port); port++)
 			engine->stats.active++;
 
 		for (port = execlists->pending; (rq = *port); port++) {
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 4db54fd6a2fe..b186f06e508d 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -940,6 +940,7 @@ static void intel_engine_context_in(struct intel_engine_cs *engine)
 	if (engine->stats.enabled > 0) {
 		if (engine->stats.active++ == 0)
 			engine->stats.start = ktime_get();
+
 		GEM_BUG_ON(engine->stats.active == 0);
 	}
 
@@ -1088,6 +1089,32 @@ static void reset_active(struct i915_request *rq,
 	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
 }
 
+static void
+intel_context_stats_start(struct intel_context_stats *stats)
+{
+	unsigned long flags;
+
+	write_seqlock_irqsave(&stats->lock, flags);
+	__intel_context_stats_start(stats, ktime_get());
+	write_sequnlock_irqrestore(&stats->lock, flags);
+}
+
+static void
+intel_context_stats_stop(struct intel_context_stats *stats)
+{
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
@@ -1155,7 +1182,7 @@ static inline void
 __execlists_schedule_out(struct i915_request *rq,
 			 struct intel_engine_cs * const engine)
 {
-	struct intel_context * const ce = rq->hw_context;
+	struct intel_context *ce = rq->hw_context;
 
 	/*
 	 * NB process_csb() is not under the engine->active.lock and hence
@@ -1172,6 +1199,7 @@ __execlists_schedule_out(struct i915_request *rq,
 		intel_engine_add_retire(engine, ce->timeline);
 
 	intel_engine_context_out(engine);
+	intel_context_stats_stop(&ce->stats);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
 	intel_gt_pm_put_async(engine->gt);
 
@@ -2174,9 +2202,11 @@ static void process_csb(struct intel_engine_cs *engine)
 			promote = gen8_csb_parse(execlists, buf + 2 * head);
 		if (promote) {
 			struct i915_request * const *old = execlists->active;
+			struct i915_request *rq;
 
 			/* Point active to the new ELSP; prevent overwriting */
 			WRITE_ONCE(execlists->active, execlists->pending);
+
 			set_timeslice(engine);
 
 			if (!inject_preempt_hang(execlists))
@@ -2196,8 +2226,16 @@ static void process_csb(struct intel_engine_cs *engine)
 					  sizeof(*execlists->pending)));
 
 			WRITE_ONCE(execlists->pending[0], NULL);
+
+			rq = *execlists->active;
+			if (rq)
+				intel_context_stats_start(&rq->hw_context->stats);
 		} else {
-			GEM_BUG_ON(!*execlists->active);
+			struct i915_request *rq = *execlists->active++;
+
+			GEM_BUG_ON(!rq);
+			GEM_BUG_ON(execlists->active - execlists->inflight >
+				   execlists_num_ports(execlists));
 
 			/* port0 completed, advanced to port1 */
 			trace_ports(execlists, "completed", execlists->active);
@@ -2208,12 +2246,14 @@ static void process_csb(struct intel_engine_cs *engine)
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
+			rq = *execlists->active;
+			if (rq)
+				intel_context_stats_start(&rq->hw_context->stats);
+
 		}
 	} while (head != tail);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
