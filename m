Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E166F155B83
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 17:13:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354556FD1F;
	Fri,  7 Feb 2020 16:13:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 032616EAE5
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:13:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 08:13:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,414,1574150400"; d="scan'208";a="226515331"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.21.249])
 by fmsmga008.fm.intel.com with ESMTP; 07 Feb 2020 08:13:39 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Feb 2020 16:13:30 +0000
Message-Id: <20200207161331.23447-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200207161331.23447-1-tvrtko.ursulin@linux.intel.com>
References: <20200207161331.23447-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915: Track per drm client engine class
 busyness
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

Add per client, per engine class tracking of on GPU runtime on top of the
previously added per context tracking.

This data will then be exported via sysfs in a following patch in order to
implement per DRM client view of GPU utilization.

To implement this we add a stats structure to each drm client, which is
per engine class, used to track the total time spent on engines of a
certain class before the last activity transition, count of currently
active contexts and a timestamp of the last activity transition (any
increase or decrease). This allow accumulating activity segments and
reporting in-progress activity.

There is a small locked section (seqlock) from which time accounting
updates are made as contexts are entering and exiting from the GPU. Lock
is per class so contention is limited to same client activity on the same
engine class. Other scenarios add no new lock contention.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.h   | 32 ++++++++++++++++++----
 drivers/gpu/drm/i915/gt/intel_engine_cs.c |  1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c       | 33 ++++++++++++++++++-----
 drivers/gpu/drm/i915/i915_drm_client.c    |  4 ++-
 drivers/gpu/drm/i915/i915_drm_client.h    | 10 +++++++
 5 files changed, 67 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index 871196aa7d5a..a0a77a590566 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -12,6 +12,7 @@
 #include <linux/types.h>
 
 #include "i915_active.h"
+#include "i915_drm_client.h"
 #include "intel_context_types.h"
 #include "intel_engine_types.h"
 #include "intel_ring_types.h"
@@ -228,14 +229,35 @@ intel_context_clear_nopreempt(struct intel_context *ce)
 }
 
 static inline void
-__intel_context_stats_start(struct intel_context *ce, ktime_t now)
+__intel_context_stats_start(struct intel_context *ce,
+			    struct intel_engine_cs *engine,
+			    ktime_t now)
 {
 	struct intel_context_stats *stats = &ce->stats;
-
-	if (!stats->active) {
-		stats->start = now;
-		stats->active = true;
+	struct i915_gem_context *ctx;
+
+	if (stats->active)
+		return;
+
+	stats->start = now;
+	stats->active = true;
+
+	rcu_read_lock();
+	ctx = rcu_dereference(ce->gem_context);
+	if (ctx && ctx->client) {
+		struct i915_drm_client_stats *cstats =
+			&ctx->client->stats[engine->uabi_class];
+		ktime_t now = ktime_get();
+		unsigned long flags;
+
+		write_seqlock_irqsave(&cstats->lock, flags);
+		cstats->busy += ktime_to_ns(ktime_sub(now, cstats->start)) *
+				cstats->active++;
+		GEM_WARN_ON(cstats->active == 0);
+		cstats->start = now;
+		write_sequnlock_irqrestore(&cstats->lock, flags);
 	}
+	rcu_read_unlock();
 }
 
 ktime_t intel_context_get_busy_time(struct intel_context *ce);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index a5344d2c7c10..a9f8c5af8f81 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1609,6 +1609,7 @@ int intel_enable_engine_stats(struct intel_engine_cs *engine)
 		rq = *port;
 		if (rq)
 			__intel_context_stats_start(rq->context,
+						    engine,
 						    engine->stats.enabled_at);
 
 		for (; (rq = *port); port++)
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 1cd38b6eb189..7eefa7fe160b 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1197,19 +1197,23 @@ static void reset_active(struct i915_request *rq,
 	ce->lrc_desc |= CTX_DESC_FORCE_RESTORE;
 }
 
-static void intel_context_stats_start(struct intel_context *ce)
+static void intel_context_stats_start(struct intel_context *ce,
+				      struct intel_engine_cs *engine)
 {
 	struct intel_context_stats *stats = &ce->stats;
 	unsigned long flags;
 
 	write_seqlock_irqsave(&stats->lock, flags);
-	__intel_context_stats_start(ce, ktime_get());
+	__intel_context_stats_start(ce, engine, ktime_get());
 	write_sequnlock_irqrestore(&stats->lock, flags);
 }
 
-static void intel_context_stats_stop(struct intel_context *ce)
+static void intel_context_stats_stop(struct intel_context *ce,
+				     struct intel_engine_cs *engine)
 {
 	struct intel_context_stats *stats = &ce->stats;
+	struct i915_gem_context *ctx;
+	ktime_t now, runtime;
 	unsigned long flags;
 
 	if (!READ_ONCE(stats->active))
@@ -1217,10 +1221,25 @@ static void intel_context_stats_stop(struct intel_context *ce)
 
 	write_seqlock_irqsave(&stats->lock, flags);
 	GEM_BUG_ON(!READ_ONCE(stats->active));
-	stats->total = ktime_add(stats->total,
-				 ktime_sub(ktime_get(), stats->start));
+	now = ktime_get();
+	runtime = ktime_sub(now, stats->start);
+	stats->total = ktime_add(stats->total, runtime);
 	stats->active = false;
 	write_sequnlock_irqrestore(&stats->lock, flags);
+
+	rcu_read_lock();
+	ctx = rcu_dereference(ce->gem_context);
+	if (ctx && ctx->client) {
+		struct i915_drm_client_stats *cstats =
+			&ctx->client->stats[engine->uabi_class];
+
+		write_seqlock_irqsave(&cstats->lock, flags);
+		GEM_WARN_ON(cstats->active == 0);
+		cstats->busy += ktime_to_ns(runtime) * cstats->active--;
+		cstats->start = now;
+		write_sequnlock_irqrestore(&cstats->lock, flags);
+	}
+	rcu_read_unlock();
 }
 
 static inline struct intel_engine_cs *
@@ -1307,7 +1326,7 @@ __execlists_schedule_out(struct i915_request *rq,
 		intel_engine_add_retire(engine, ce->timeline);
 
 	intel_engine_context_out(engine);
-	intel_context_stats_stop(ce);
+	intel_context_stats_stop(ce, engine);
 	execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
 	intel_gt_pm_put_async(engine->gt);
 
@@ -2367,7 +2386,7 @@ static void process_csb(struct intel_engine_cs *engine)
 
 		rq = *execlists->active;
 		if (rq)
-			intel_context_stats_start(rq->context);
+			intel_context_stats_start(rq->context, engine);
 	} while (head != tail);
 
 	execlists->csb_head = head;
diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index 770094ef2e67..d26583d5825f 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -121,7 +121,7 @@ i915_drm_client_add(struct i915_drm_clients *clients, struct task_struct *task)
 {
 	struct i915_drm_client *client;
 	u32 next = 0;
-	int ret;
+	int i, ret;
 
 	client = kzalloc(sizeof(*client), GFP_KERNEL);
 	if (!client)
@@ -129,6 +129,8 @@ i915_drm_client_add(struct i915_drm_clients *clients, struct task_struct *task)
 
 	kref_init(&client->kref);
 	mutex_init(&client->update_lock);
+	for (i = 0; i < ARRAY_SIZE(client->stats); i++)
+		seqlock_init(&client->stats[i].lock);
 	client->clients = clients;
 
 	ret = xa_alloc_cyclic(&clients->xarray, &client->id, client,
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index a9d4d7396e43..6361976a9f05 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -14,8 +14,11 @@
 #include <linux/pid.h>
 #include <linux/rcupdate.h>
 #include <linux/sched.h>
+#include <linux/seqlock.h>
 #include <linux/xarray.h>
 
+#include "gt/intel_engine_types.h"
+
 struct i915_drm_clients {
 	struct xarray xarray;
 	struct kobject *root;
@@ -33,6 +36,13 @@ struct i915_drm_client {
 	char __rcu *name;
 	bool closed;
 
+	struct i915_drm_client_stats {
+		seqlock_t lock;
+		unsigned int active;
+		ktime_t start;
+		u64 busy;
+	} stats[MAX_ENGINE_CLASS + 1];
+
 	struct i915_drm_clients *clients;
 
 	struct kobject *root;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
