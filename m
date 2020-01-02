Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 981EE12F1BD
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 00:16:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC2A36E159;
	Thu,  2 Jan 2020 23:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 500606E158
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 23:16:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19754832-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Jan 2020 23:16:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jan 2020 23:16:04 +0000
Message-Id: <20200102231604.1669010-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Flush ongoing retires during
 wait_for_idle
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

Synchronise with any background retires and parking we may have spawned,
so that all requests are accounted for.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/878
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt_requests.c | 14 +++++++++-----
 drivers/gpu/drm/i915/intel_wakeref.c        |  5 +++--
 drivers/gpu/drm/i915/intel_wakeref.h        |  9 +++++++--
 3 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index fc691c130ba6..7ef1d37970f6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -26,18 +26,22 @@ static bool retire_requests(struct intel_timeline *tl)
 	return !i915_active_fence_isset(&tl->last_request);
 }
 
-static void flush_submission(struct intel_gt *gt)
+static bool flush_submission(struct intel_gt *gt)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
+	bool active = false;
 
 	if (!intel_gt_pm_is_awake(gt))
-		return;
+		return false;
 
 	for_each_engine(engine, gt, id) {
 		intel_engine_flush_submission(engine);
-		flush_work(&engine->retire_work);
+		active |= flush_work(&engine->retire_work);
+		active |= flush_work(&engine->wakeref.work);
 	}
+
+	return active;
 }
 
 static void engine_retire(struct work_struct *work)
@@ -147,9 +151,9 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
 			}
 		}
 
-		active_count += !retire_requests(tl);
+		if (!retire_requests(tl) || flush_submission(gt))
+			active_count++;
 
-		flush_submission(gt); /* sync with concurrent retirees */
 		spin_lock(&timelines->lock);
 
 		/* Resume iteration after dropping lock */
diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
index 59aa1b6f1827..8fbf6f4d3f26 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.c
+++ b/drivers/gpu/drm/i915/intel_wakeref.c
@@ -95,16 +95,17 @@ static void __intel_wakeref_put_work(struct work_struct *wrk)
 void __intel_wakeref_init(struct intel_wakeref *wf,
 			  struct intel_runtime_pm *rpm,
 			  const struct intel_wakeref_ops *ops,
-			  struct lock_class_key *key)
+			  struct intel_wakeref_lockclass *key)
 {
 	wf->rpm = rpm;
 	wf->ops = ops;
 
-	__mutex_init(&wf->mutex, "wakeref", key);
+	__mutex_init(&wf->mutex, "wakeref.mutex", &key->mutex);
 	atomic_set(&wf->count, 0);
 	wf->wakeref = 0;
 
 	INIT_WORK(&wf->work, __intel_wakeref_put_work);
+	lockdep_init_map(&wf->work.lockdep_map, "wakeref.work", &key->work, 0);
 }
 
 int intel_wakeref_wait_for_idle(struct intel_wakeref *wf)
diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
index 8d945db94b7a..7d1e676b71ef 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.h
+++ b/drivers/gpu/drm/i915/intel_wakeref.h
@@ -44,12 +44,17 @@ struct intel_wakeref {
 	struct work_struct work;
 };
 
+struct intel_wakeref_lockclass {
+	struct lock_class_key mutex;
+	struct lock_class_key work;
+};
+
 void __intel_wakeref_init(struct intel_wakeref *wf,
 			  struct intel_runtime_pm *rpm,
 			  const struct intel_wakeref_ops *ops,
-			  struct lock_class_key *key);
+			  struct intel_wakeref_lockclass *key);
 #define intel_wakeref_init(wf, rpm, ops) do {				\
-	static struct lock_class_key __key;				\
+	static struct intel_wakeref_lockclass __key;			\
 									\
 	__intel_wakeref_init((wf), (rpm), (ops), &__key);		\
 } while (0)
-- 
2.25.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
