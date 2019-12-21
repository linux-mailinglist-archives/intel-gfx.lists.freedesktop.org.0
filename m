Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42074128AB3
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 19:02:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB1996E48B;
	Sat, 21 Dec 2019 18:02:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 445386E48B
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 18:02:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19657739-1500050 
 for multiple; Sat, 21 Dec 2019 18:02:06 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 21 Dec 2019 18:02:04 +0000
Message-Id: <20191221180204.1201217-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Repeat wait_for_idle for
 retirement workers
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

Since we may retire timelines from secondary workers,
intel_gt_retire_requests() is not always a reliable indicator that all
pending retirements are complete. If we do detect secondary workers are
in progress, recommend intel_gt_wait_for_idle() to repeat the retirement
check.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine.h      |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c   |  6 +++++-
 drivers/gpu/drm/i915/gt/intel_gt_requests.c | 23 +++++++++++++--------
 3 files changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 6fa49d3f7fa7..428ec76b49d0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -284,7 +284,7 @@ static inline void __intel_engine_reset(struct intel_engine_cs *engine,
 
 bool intel_engines_are_idle(struct intel_gt *gt);
 bool intel_engine_is_idle(struct intel_engine_cs *engine);
-void intel_engine_flush_submission(struct intel_engine_cs *engine);
+bool intel_engine_flush_submission(struct intel_engine_cs *engine);
 
 void intel_engines_reset_default_submission(struct intel_gt *gt);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 127a9880df6d..3964d3198263 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1057,9 +1057,10 @@ static bool ring_is_idle(struct intel_engine_cs *engine)
 	return idle;
 }
 
-void intel_engine_flush_submission(struct intel_engine_cs *engine)
+bool intel_engine_flush_submission(struct intel_engine_cs *engine)
 {
 	struct tasklet_struct *t = &engine->execlists.tasklet;
+	bool active = tasklet_is_locked(t);
 
 	if (__tasklet_is_scheduled(t)) {
 		local_bh_disable();
@@ -1070,10 +1071,13 @@ void intel_engine_flush_submission(struct intel_engine_cs *engine)
 			tasklet_unlock(t);
 		}
 		local_bh_enable();
+		active = true;
 	}
 
 	/* Otherwise flush the tasklet if it was running on another cpu */
 	tasklet_unlock_wait(t);
+
+	return active;
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index 063f863ee21c..b4f04614230e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -23,15 +23,18 @@ static void retire_requests(struct intel_timeline *tl)
 			break;
 }
 
-static void flush_submission(struct intel_gt *gt)
+static bool flush_submission(struct intel_gt *gt)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	bool active = false;
 
 	for_each_engine(engine, gt, id) {
-		intel_engine_flush_submission(engine);
-		flush_work(&engine->retire_work);
+		active |= intel_engine_flush_submission(engine);
+		active |= flush_work(&engine->retire_work);
 	}
+
+	return active;
 }
 
 static void engine_retire(struct work_struct *work)
@@ -120,9 +123,10 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
 
 	spin_lock(&timelines->lock);
 	list_for_each_entry_safe(tl, tn, &timelines->active_list, link) {
-		active_count++; /* report busy to caller, try again? */
-		if (!mutex_trylock(&tl->mutex))
+		if (!mutex_trylock(&tl->mutex)) {
+			active_count++; /* report busy to caller, try again? */
 			continue;
+		}
 
 		intel_timeline_get(tl);
 		GEM_BUG_ON(!atomic_read(&tl->active_count));
@@ -147,10 +151,10 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
 
 		/* Resume iteration after dropping lock */
 		list_safe_reset_next(tl, tn, link);
-		if (atomic_dec_and_test(&tl->active_count)) {
+		if (atomic_dec_and_test(&tl->active_count))
 			list_del(&tl->link);
-			active_count--;
-		}
+		else
+			active_count += i915_active_fence_isset(&tl->last_request);
 
 		mutex_unlock(&tl->mutex);
 
@@ -165,7 +169,8 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
 	list_for_each_entry_safe(tl, tn, &free, link)
 		__intel_timeline_free(&tl->kref);
 
-	flush_submission(gt);
+	if (flush_submission(gt))
+		active_count++;
 
 	return active_count ? timeout : 0;
 }
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
