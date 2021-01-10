Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 912202F07BC
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Jan 2021 16:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32C796E0CA;
	Sun, 10 Jan 2021 15:04:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98D6D6E0AA
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Jan 2021 15:04:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23553105-1500050 
 for multiple; Sun, 10 Jan 2021 15:04:08 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 10 Jan 2021 15:04:03 +0000
Message-Id: <20210110150404.19535-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210110150404.19535-1-chris@chris-wilson.co.uk>
References: <20210110150404.19535-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/11] drm/i915/selftests: Prepare the selftests
 for engine resets with ring submission
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

The engine resets selftests kick the tasklets, safe up until now as only
execlists supported engine resets.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 18 ++++++++++++++----
 drivers/gpu/drm/i915/gt/selftest_reset.c     | 11 ++++++++---
 2 files changed, 22 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index c28d1fcad673..28f71cc2004d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -560,6 +560,7 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
 
 	for_each_engine(engine, gt, id) {
 		unsigned int reset_count, reset_engine_count;
+		unsigned long count;
 		IGT_TIMEOUT(end_time);
 
 		if (active && !intel_engine_can_store_dword(engine))
@@ -577,6 +578,7 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
 
 		st_engine_heartbeat_disable(engine);
 		set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		count = 0;
 		do {
 			if (active) {
 				struct i915_request *rq;
@@ -625,9 +627,13 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
 				err = -EINVAL;
 				break;
 			}
+
+			count++;
 		} while (time_before(jiffies, end_time));
 		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
 		st_engine_heartbeat_enable(engine);
+		pr_info("%s: Completed %lu %s resets\n",
+			engine->name, count, active ? "active" : "idle");
 
 		if (err)
 			break;
@@ -1478,7 +1484,8 @@ static int igt_reset_queue(void *arg)
 			prev = rq;
 			count++;
 		} while (time_before(jiffies, end_time));
-		pr_info("%s: Completed %d resets\n", engine->name, count);
+		pr_info("%s: Completed %d queued resets\n",
+			engine->name, count);
 
 		*h.batch = MI_BATCH_BUFFER_END;
 		intel_gt_chipset_flush(engine->gt);
@@ -1575,7 +1582,8 @@ static int __igt_atomic_reset_engine(struct intel_engine_cs *engine,
 	GEM_TRACE("i915_reset_engine(%s:%s) under %s\n",
 		  engine->name, mode, p->name);
 
-	tasklet_disable(t);
+	if (t->func)
+		tasklet_disable(t);
 	if (strcmp(p->name, "softirq"))
 		local_bh_disable();
 	p->critical_section_begin();
@@ -1585,8 +1593,10 @@ static int __igt_atomic_reset_engine(struct intel_engine_cs *engine,
 	p->critical_section_end();
 	if (strcmp(p->name, "softirq"))
 		local_bh_enable();
-	tasklet_enable(t);
-	tasklet_hi_schedule(t);
+	if (t->func) {
+		tasklet_enable(t);
+		tasklet_hi_schedule(t);
+	}
 
 	if (err)
 		pr_err("i915_reset_engine(%s:%s) failed under %s\n",
diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c
index b7befcfbdcde..8784257ec808 100644
--- a/drivers/gpu/drm/i915/gt/selftest_reset.c
+++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
@@ -321,7 +321,10 @@ static int igt_atomic_engine_reset(void *arg)
 		goto out_unlock;
 
 	for_each_engine(engine, gt, id) {
-		tasklet_disable(&engine->execlists.tasklet);
+		struct tasklet_struct *t = &engine->execlists.tasklet;
+
+		if (t->func)
+			tasklet_disable(t);
 		intel_engine_pm_get(engine);
 
 		for (p = igt_atomic_phases; p->name; p++) {
@@ -345,8 +348,10 @@ static int igt_atomic_engine_reset(void *arg)
 		}
 
 		intel_engine_pm_put(engine);
-		tasklet_enable(&engine->execlists.tasklet);
-		tasklet_hi_schedule(&engine->execlists.tasklet);
+		if (t->func) {
+			tasklet_enable(t);
+			tasklet_hi_schedule(t);
+		}
 		if (err)
 			break;
 	}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
