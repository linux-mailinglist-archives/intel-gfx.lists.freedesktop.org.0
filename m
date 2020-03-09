Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5A617E737
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 19:31:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CAF86E506;
	Mon,  9 Mar 2020 18:31:48 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05EB86E4F3
 for <Intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 18:31:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 11:31:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,534,1574150400"; d="scan'208";a="231027953"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.21.27])
 by orsmga007.jf.intel.com with ESMTP; 09 Mar 2020 11:31:43 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 18:31:26 +0000
Message-Id: <20200309183129.2296-10-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 09/12] drm/i915: Track per-context engine busyness
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
v13: Move start to set_timeslice. (Chris)

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c       | 20 +++++++++++
 drivers/gpu/drm/i915/gt/intel_context.h       | 13 +++++++
 drivers/gpu/drm/i915/gt/intel_context_types.h |  9 +++++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 15 ++++++--
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 34 ++++++++++++++++++-
 5 files changed, 88 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 01474d3a558b..c09b5fe7f61d 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -296,6 +296,7 @@ intel_context_init(struct intel_context *ce,
 	INIT_LIST_HEAD(&ce->signals);
 
 	mutex_init(&ce->pin_mutex);
+	seqlock_init(&ce->stats.lock);
 
 	i915_active_init(&ce->active,
 			 __intel_context_active, __intel_context_retire);
@@ -390,6 +391,25 @@ struct i915_request *intel_context_create_request(struct intel_context *ce)
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
index 18efad255124..b18b0012cb40 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -244,4 +244,17 @@ static inline u64 intel_context_get_avg_runtime_ns(struct intel_context *ce)
 	return mul_u32_u32(ewma_runtime_read(&ce->runtime.avg), period);
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
index c60490e756f9..120532ddd6fa 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -12,6 +12,7 @@
 #include <linux/list.h>
 #include <linux/mutex.h>
 #include <linux/types.h>
+#include <linux/seqlock.h>
 
 #include "i915_active_types.h"
 #include "i915_utils.h"
@@ -96,6 +97,14 @@ struct intel_context {
 
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
index 53ac3f00909a..3845093b41ee 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1594,8 +1594,19 @@ int intel_enable_engine_stats(struct intel_engine_cs *engine)
 
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
index 13941d1c0a4a..5f7bf4cf86cd 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1237,6 +1237,32 @@ static void intel_context_update_runtime(struct intel_context *ce)
 	ce->runtime.total += dt;
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
@@ -1304,7 +1330,7 @@ static inline void
 __execlists_schedule_out(struct i915_request *rq,
 			 struct intel_engine_cs * const engine)
 {
-	struct intel_context * const ce = rq->context;
+	struct intel_context *ce = rq->context;
 
 	/*
 	 * NB process_csb() is not under the engine->active.lock and hence
@@ -1322,6 +1348,7 @@ __execlists_schedule_out(struct i915_request *rq,
 
 	intel_context_update_runtime(ce);
 	intel_engine_context_out(engine);
+	intel_context_stats_stop(ce);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
 	intel_gt_pm_put_async(engine->gt);
 
@@ -1797,6 +1824,11 @@ active_timeslice(const struct intel_engine_cs *engine)
 
 static void set_timeslice(struct intel_engine_cs *engine)
 {
+	struct intel_engine_execlists * const execlists = &engine->execlists;
+
+	if (*execlists->active)
+		intel_context_stats_start((*execlists->active)->context);
+
 	if (!intel_engine_has_timeslices(engine))
 		return;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
