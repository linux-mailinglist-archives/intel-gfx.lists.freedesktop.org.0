Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD90618F1CA
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 10:29:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EF0C893EB;
	Mon, 23 Mar 2020 09:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 856C6894FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 09:29:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20657882-1500050 
 for multiple; Mon, 23 Mar 2020 09:28:42 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Mar 2020 09:28:36 +0000
Message-Id: <20200323092841.22240-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200323092841.22240-1-chris@chris-wilson.co.uk>
References: <20200323092841.22240-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/8] drm/i915: Extend intel_wakeref to support
 delayed puts
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

In some cases we want to hold onto the wakeref for a little after the
last user so that we can avoid having to drop and then immediately
reacquire it. Allow the last user to specify if they would like to keep
the wakeref alive for a short hysteresis.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_engine_pm.h   |  6 ++++++
 drivers/gpu/drm/i915/gt/intel_gt_requests.c |  2 +-
 drivers/gpu/drm/i915/intel_wakeref.c        | 11 ++++++-----
 drivers/gpu/drm/i915/intel_wakeref.h        | 10 ++++++++--
 4 files changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.h b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
index e52c2b0cb245..418df0a13145 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_pm.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
@@ -37,6 +37,12 @@ static inline void intel_engine_pm_put_async(struct intel_engine_cs *engine)
 	intel_wakeref_put_async(&engine->wakeref);
 }
 
+static inline void intel_engine_pm_put_delay(struct intel_engine_cs *engine,
+					     unsigned long delay)
+{
+	intel_wakeref_put_delay(&engine->wakeref, delay);
+}
+
 static inline void intel_engine_pm_flush(struct intel_engine_cs *engine)
 {
 	intel_wakeref_unlock_wait(&engine->wakeref);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index 24c99d0838af..835ec184763e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -38,7 +38,7 @@ static bool flush_submission(struct intel_gt *gt)
 	for_each_engine(engine, gt, id) {
 		intel_engine_flush_submission(engine);
 		active |= flush_work(&engine->retire_work);
-		active |= flush_work(&engine->wakeref.work);
+		active |= flush_delayed_work(&engine->wakeref.work);
 	}
 
 	return active;
diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
index 8fbf6f4d3f26..2977bc0428e2 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.c
+++ b/drivers/gpu/drm/i915/intel_wakeref.c
@@ -70,11 +70,11 @@ static void ____intel_wakeref_put_last(struct intel_wakeref *wf)
 
 void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags)
 {
-	INTEL_WAKEREF_BUG_ON(work_pending(&wf->work));
+	INTEL_WAKEREF_BUG_ON(delayed_work_pending(&wf->work));
 
 	/* Assume we are not in process context and so cannot sleep. */
 	if (flags & INTEL_WAKEREF_PUT_ASYNC || !mutex_trylock(&wf->mutex)) {
-		schedule_work(&wf->work);
+		mod_delayed_work(system_wq, &wf->work, flags >> 1);
 		return;
 	}
 
@@ -83,7 +83,7 @@ void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags)
 
 static void __intel_wakeref_put_work(struct work_struct *wrk)
 {
-	struct intel_wakeref *wf = container_of(wrk, typeof(*wf), work);
+	struct intel_wakeref *wf = container_of(wrk, typeof(*wf), work.work);
 
 	if (atomic_add_unless(&wf->count, -1, 1))
 		return;
@@ -104,8 +104,9 @@ void __intel_wakeref_init(struct intel_wakeref *wf,
 	atomic_set(&wf->count, 0);
 	wf->wakeref = 0;
 
-	INIT_WORK(&wf->work, __intel_wakeref_put_work);
-	lockdep_init_map(&wf->work.lockdep_map, "wakeref.work", &key->work, 0);
+	INIT_DELAYED_WORK(&wf->work, __intel_wakeref_put_work);
+	lockdep_init_map(&wf->work.work.lockdep_map,
+			 "wakeref.work", &key->work, 0);
 }
 
 int intel_wakeref_wait_for_idle(struct intel_wakeref *wf)
diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
index 7d1e676b71ef..e87532e282d2 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.h
+++ b/drivers/gpu/drm/i915/intel_wakeref.h
@@ -41,7 +41,7 @@ struct intel_wakeref {
 	struct intel_runtime_pm *rpm;
 	const struct intel_wakeref_ops *ops;
 
-	struct work_struct work;
+	struct delayed_work work;
 };
 
 struct intel_wakeref_lockclass {
@@ -154,6 +154,12 @@ intel_wakeref_put_async(struct intel_wakeref *wf)
 	__intel_wakeref_put(wf, INTEL_WAKEREF_PUT_ASYNC);
 }
 
+static inline void
+intel_wakeref_put_delay(struct intel_wakeref *wf, unsigned long delay)
+{
+	__intel_wakeref_put(wf, INTEL_WAKEREF_PUT_ASYNC | delay << 1);
+}
+
 /**
  * intel_wakeref_lock: Lock the wakeref (mutex)
  * @wf: the wakeref
@@ -194,7 +200,7 @@ intel_wakeref_unlock_wait(struct intel_wakeref *wf)
 {
 	mutex_lock(&wf->mutex);
 	mutex_unlock(&wf->mutex);
-	flush_work(&wf->work);
+	flush_delayed_work(&wf->work);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
