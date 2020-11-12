Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFE62B02FC
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 11:43:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 192C06E1E6;
	Thu, 12 Nov 2020 10:43:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EF936E1E9
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 10:43:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22970255-1500050 
 for multiple; Thu, 12 Nov 2020 10:43:39 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 10:43:36 +0000
Message-Id: <20201112104336.20557-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201112104336.20557-1-chris@chris-wilson.co.uk>
References: <20201112104336.20557-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Show timeline dependencies for
 debug
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Include the signalers each request in the timeline is waiting on, as a
means to try and identify the cause of a stall. This can be quite
verbose, even as for now we only show each request in the timeline and
its immediate antecedents.

This generates output like:

Timeline 886: { count 1, ready: 0, inflight: 0, seqno: { current: 664, last: 666 }, engine: rcs0 }
  U 886:29a-  prio=0 @ 134ms: gem_exec_parall<4621>
  - U bc1:27a-  prio=0 @ 134ms: gem_exec_parall[4917]
Timeline 825: { count 1, ready: 0, inflight: 0, seqno: { current: 802, last: 804 }, engine: vcs0 }
  U 825:324  prio=0 @ 107ms: gem_exec_parall<4518>
  - U b75:140-  prio=0 @ 110ms: gem_exec_parall<5486>
Timeline b46: { count 1, ready: 0, inflight: 0, seqno: { current: 782, last: 784 }, engine: vcs0 }
  U b46:310-  prio=0 @ 70ms: gem_exec_parall<5428>
  - U c11:170-  prio=0 @ 70ms: gem_exec_parall[5501]
Timeline 96b: { count 1, ready: 0, inflight: 0, seqno: { current: 632, last: 634 }, engine: vcs0 }
  U 96b:27a-  prio=0 @ 67ms: gem_exec_parall<4878>
  - U b75:19e-  prio=0 @ 67ms: gem_exec_parall<5486>

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_debugfs.c   |  3 ++-
 drivers/gpu/drm/i915/i915_scheduler.c | 31 +++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_scheduler.h |  4 ++++
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
index cbb880b10c65..8837ba672933 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.c
+++ b/drivers/gpu/drm/i915/i915_scheduler.c
@@ -504,6 +504,37 @@ void i915_sched_node_fini(struct i915_sched_node *node)
 	spin_unlock_irq(&schedule_lock);
 }
 
+void i915_request_show_with_schedule(struct drm_printer *m,
+				     const struct i915_request *rq,
+				     const char *prefix)
+{
+	struct i915_dependency *dep;
+
+	i915_request_show(m, rq, prefix);
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
+		/* XXX ideally build indent into prefix */
+		i915_request_show(m, signaler,
+				  i915_request_is_active(signaler) ? "  - E" :
+				  i915_request_is_ready(signaler) ? "  - Q" :
+				  "  - U");
+	}
+	rcu_read_unlock();
+}
+
 static void i915_global_scheduler_shrink(void)
 {
 	kmem_cache_shrink(global.slab_dependencies);
diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915/i915_scheduler.h
index 6f0bf00fc569..5b16d333e9e5 100644
--- a/drivers/gpu/drm/i915/i915_scheduler.h
+++ b/drivers/gpu/drm/i915/i915_scheduler.h
@@ -54,4 +54,8 @@ static inline void i915_priolist_free(struct i915_priolist *p)
 		__i915_priolist_free(p);
 }
 
+void i915_request_show_with_schedule(struct drm_printer *m,
+				     const struct i915_request *rq,
+				     const char *prefix);
+
 #endif /* _I915_SCHEDULER_H_ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
