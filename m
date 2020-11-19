Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 936F42B98AA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 17:56:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 672FD6E5B6;
	Thu, 19 Nov 2020 16:56:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 964D06E59F
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 16:56:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23045124-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 16:56:18 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 16:56:16 +0000
Message-Id: <20201119165616.10834-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201119165616.10834-1-chris@chris-wilson.co.uk>
References: <20201119165616.10834-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 6/6] drm/i915: Show timeline dependencies for debug
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

Include the signalers each request in the timeline is waiting on, as a
means to try and identify the cause of a stall. This can be quite
verbose, even as for now we only show each request in the timeline and
its immediate antecedents.

This generates output like:

Timeline 886: { count 1, ready: 0, inflight: 0, seqno: { current: 664, last: 666 }, engine: rcs0 }
  U 886:29a-  prio=0 @ 134ms: gem_exec_parall<4621>
    U bc1:27a-  prio=0 @ 134ms: gem_exec_parall[4917]
Timeline 825: { count 1, ready: 0, inflight: 0, seqno: { current: 802, last: 804 }, engine: vcs0 }
  U 825:324  prio=0 @ 107ms: gem_exec_parall<4518>
    U b75:140-  prio=0 @ 110ms: gem_exec_parall<5486>
Timeline b46: { count 1, ready: 0, inflight: 0, seqno: { current: 782, last: 784 }, engine: vcs0 }
  U b46:310-  prio=0 @ 70ms: gem_exec_parall<5428>
    U c11:170-  prio=0 @ 70ms: gem_exec_parall[5501]
Timeline 96b: { count 1, ready: 0, inflight: 0, seqno: { current: 632, last: 634 }, engine: vcs0 }
  U 96b:27a-  prio=0 @ 67ms: gem_exec_parall<4878>
    U b75:19e-  prio=0 @ 67ms: gem_exec_parall<5486>

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_debugfs.c   |  3 ++-
 drivers/gpu/drm/i915/i915_scheduler.c | 28 +++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_scheduler.h |  7 +++++++
 3 files changed, 37 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 354b95c438d0..263074c2c097 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -45,6 +45,7 @@
 #include "i915_debugfs.h"
 #include "i915_debugfs_params.h"
 #include "i915_irq.h"
+#include "i915_scheduler.h"
 #include "i915_trace.h"
 #include "intel_pm.h"
 #include "intel_sideband.h"
@@ -1323,7 +1324,7 @@ static int i915_engine_info(struct seq_file *m, void *unused)
 	for_each_uabi_engine(engine, i915)
 		intel_engine_dump(engine, &p, "%s\n", engine->name);
 
-	intel_gt_show_timelines(&i915->gt, &p, NULL);
+	intel_gt_show_timelines(&i915->gt, &p, i915_request_show_with_schedule);
 
 	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
 
diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
index cbb880b10c65..b9cf9931ebd7 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -504,6 +504,34 @@ void i915_sched_node_fini(struct i915_sched_node *node)
 	spin_unlock_irq(&schedule_lock);
 }
 
+void i915_request_show_with_schedule(struct drm_printer *m,
+				     const struct i915_request *rq,
+				     const char *prefix,
+				     int indent)
+{
+	struct i915_dependency *dep;
+
+	i915_request_show(m, rq, prefix, indent);
+	if (i915_request_completed(rq))
+		return;
+
+	rcu_read_lock();
+	for_each_signaler(dep, rq) {
+		const struct i915_request *signaler =
+			node_to_request(dep->signaler);
+
+		/* Dependencies along the same timeline are expected. */
+		if (signaler->timeline == rq->timeline)
+			continue;
+
+		if (i915_request_completed(signaler))
+			continue;
+
+		i915_request_show(m, signaler, prefix, indent + 2);
+	}
+	rcu_read_unlock();
+}
+
 static void i915_global_scheduler_shrink(void)
 {
 	kmem_cache_shrink(global.slab_dependencies);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 6f0bf00fc569..4501e5ac2637 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -13,6 +13,8 @@
 
 #include "i915_scheduler_types.h"
 
+struct drm_printer;
+
 #define priolist_for_each_request(it, plist, idx) \
 	for (idx = 0; idx < ARRAY_SIZE((plist)->requests); idx++) \
 		list_for_each_entry(it, &(plist)->requests[idx], sched.link)
@@ -54,4 +56,9 @@ static inline void i915_priolist_free(struct i915_priolist *p)
 		__i915_priolist_free(p);
 }
 
+void i915_request_show_with_schedule(struct drm_printer *m,
+				     const struct i915_request *rq,
+				     const char *prefix,
+				     int indent);
+
 #endif /* _I915_SCHEDULER_H_ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
