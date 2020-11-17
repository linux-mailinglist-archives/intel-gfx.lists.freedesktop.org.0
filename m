Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5012B5E58
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 12:31:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A82A6E1E0;
	Tue, 17 Nov 2020 11:31:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9D026E1B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 11:31:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23016322-1500050 
 for multiple; Tue, 17 Nov 2020 11:31:02 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 11:30:43 +0000
Message-Id: <20201117113103.21480-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201117113103.21480-1-chris@chris-wilson.co.uk>
References: <20201117113103.21480-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/28] drm/i915/gt: Show all active timelines
 for debugging
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Include the active timelines for debugfs/i915_engine_info, so that we
can see which have unready requests inflight which are not shown
otherwise.

Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_timeline.c | 79 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_timeline.h |  8 +++
 drivers/gpu/drm/i915/i915_debugfs.c      | 18 +++---
 3 files changed, 97 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 7ea94d201fe6..2b4ed4b2b67c 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -617,6 +617,85 @@ void intel_gt_fini_timelines(struct intel_gt *gt)
 	GEM_BUG_ON(!list_empty(&timelines->hwsp_free_list));
 }
 
+void intel_gt_show_timelines(struct intel_gt *gt,
+			     struct drm_printer *m,
+			     void (*show_request)(struct drm_printer *m,
+						  const struct i915_request *rq,
+						  const char *prefix))
+{
+	struct intel_gt_timelines *timelines = &gt->timelines;
+	struct intel_timeline *tl, *tn;
+	LIST_HEAD(free);
+
+	spin_lock(&timelines->lock);
+	list_for_each_entry_safe(tl, tn, &timelines->active_list, link) {
+		unsigned long count, ready, inflight;
+		struct i915_request *rq, *rn;
+		struct dma_fence *fence;
+
+		if (!mutex_trylock(&tl->mutex))
+			continue;
+
+		intel_timeline_get(tl);
+		GEM_BUG_ON(!atomic_read(&tl->active_count));
+		atomic_inc(&tl->active_count); /* pin the list element */
+		spin_unlock(&timelines->lock);
+
+		count = 0;
+		ready = 0;
+		inflight = 0;
+		list_for_each_entry_safe(rq, rn, &tl->requests, link) {
+			if (i915_request_completed(rq))
+				continue;
+
+			count++;
+			if (i915_request_is_ready(rq))
+				ready++;
+			if (i915_request_is_active(rq))
+				inflight++;
+		}
+
+		drm_printf(m, "Timeline %llx: { ", tl->fence_context);
+		drm_printf(m, "count %lu, ready: %lu, inflight: %lu",
+			   count, ready, inflight);
+		drm_printf(m, ", seqno: { current: %d, last: %d }",
+			   *tl->hwsp_seqno, tl->seqno);
+		fence = i915_active_fence_get(&tl->last_request);
+		if (fence) {
+			drm_printf(m, ", engine: %s",
+				   to_request(fence)->engine->name);
+			dma_fence_put(fence);
+		}
+		drm_printf(m, " }\n");
+
+		if (show_request) {
+			list_for_each_entry_safe(rq, rn, &tl->requests, link)
+				show_request(m, rq,
+					     i915_request_is_active(rq) ? "  E" :
+					     i915_request_is_ready(rq) ? "  Q" :
+					     "  U");
+		}
+
+		mutex_unlock(&tl->mutex);
+		spin_lock(&timelines->lock);
+
+		/* Resume list iteration after reacquiring spinlock */
+		list_safe_reset_next(tl, tn, link);
+		if (atomic_dec_and_test(&tl->active_count))
+			list_del(&tl->link);
+
+		/* Defer the final release to after the spinlock */
+		if (refcount_dec_and_test(&tl->kref.refcount)) {
+			GEM_BUG_ON(atomic_read(&tl->active_count));
+			list_add(&tl->link, &free);
+		}
+	}
+	spin_unlock(&timelines->lock);
+
+	list_for_each_entry_safe(tl, tn, &free, link)
+		__intel_timeline_free(&tl->kref);
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "gt/selftests/mock_timeline.c"
 #include "gt/selftest_timeline.c"
diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.h b/drivers/gpu/drm/i915/gt/intel_timeline.h
index 9882cd911d8e..9b88f220be2b 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.h
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.h
@@ -31,6 +31,8 @@
 #include "i915_syncmap.h"
 #include "intel_timeline_types.h"
 
+struct drm_printer;
+
 struct intel_timeline *
 __intel_timeline_create(struct intel_gt *gt,
 			struct i915_vma *global_hwsp,
@@ -106,4 +108,10 @@ int intel_timeline_read_hwsp(struct i915_request *from,
 void intel_gt_init_timelines(struct intel_gt *gt);
 void intel_gt_fini_timelines(struct intel_gt *gt);
 
+void intel_gt_show_timelines(struct intel_gt *gt,
+			     struct drm_printer *m,
+			     void (*show_request)(struct drm_printer *m,
+						  const struct i915_request *rq,
+						  const char *prefix));
+
 #endif
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 337293c7bb7d..498c82dcc7e9 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1306,26 +1306,28 @@ static int i915_runtime_pm_status(struct seq_file *m, void *unused)
 
 static int i915_engine_info(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
+	struct drm_i915_private *i915 = node_to_i915(m->private);
 	struct intel_engine_cs *engine;
 	intel_wakeref_t wakeref;
 	struct drm_printer p;
 
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	seq_printf(m, "GT awake? %s [%d]\n",
-		   yesno(dev_priv->gt.awake),
-		   atomic_read(&dev_priv->gt.wakeref.count));
+		   yesno(i915->gt.awake),
+		   atomic_read(&i915->gt.wakeref.count));
 	seq_printf(m, "GT busy: %llu ms\n",
-		   ktime_to_ms(intel_gt_get_busy_time(&dev_priv->gt)));
+		   ktime_to_ms(intel_gt_get_busy_time(&i915->gt)));
 	seq_printf(m, "CS timestamp frequency: %u Hz\n",
-		   RUNTIME_INFO(dev_priv)->cs_timestamp_frequency_hz);
+		   RUNTIME_INFO(i915)->cs_timestamp_frequency_hz);
 
 	p = drm_seq_file_printer(m);
-	for_each_uabi_engine(engine, dev_priv)
+	for_each_uabi_engine(engine, i915)
 		intel_engine_dump(engine, &p, "%s\n", engine->name);
 
-	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
+	intel_gt_show_timelines(&i915->gt, &p, NULL);
+
+	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
 	return 0;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
