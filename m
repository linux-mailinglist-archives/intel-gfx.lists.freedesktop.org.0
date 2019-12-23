Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5AB129B00
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 22:10:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 737E96E2F0;
	Mon, 23 Dec 2019 21:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 386636E2F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 21:10:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19676461-1500050 
 for multiple; Mon, 23 Dec 2019 21:10:09 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 21:10:08 +0000
Message-Id: <20191223211008.2371613-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Flush other retirees inside
 intel_gt_retire_requests()
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

Our goal in wait_for_idle (intel_gt_retire_requests) is to the current
workload *and* their idle barriers. This requires us to notice the late
arrival of those, which is done by inspecting the list of active
timelines. However, if a concurrent retirer is running that new timeline
may not be added until after we drop the lock -- so flush concurrent
retirers before we take the lock and inspect the list.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/878
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt_requests.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index 9e75fa1b6bc1..fc691c130ba6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -26,21 +26,18 @@ static bool retire_requests(struct intel_timeline *tl)
 	return !i915_active_fence_isset(&tl->last_request);
 }
 
-static bool flush_submission(struct intel_gt *gt)
+static void flush_submission(struct intel_gt *gt)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
-	bool active = false;
 
 	if (!intel_gt_pm_is_awake(gt))
-		return false;
+		return;
 
 	for_each_engine(engine, gt, id) {
-		active |= intel_engine_flush_submission(engine);
-		active |= flush_work(&engine->retire_work);
+		intel_engine_flush_submission(engine);
+		flush_work(&engine->retire_work);
 	}
-
-	return active;
 }
 
 static void engine_retire(struct work_struct *work)
@@ -126,7 +123,6 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
 		timeout = -timeout, interruptible = false;
 
 	flush_submission(gt); /* kick the ksoftirqd tasklets */
-
 	spin_lock(&timelines->lock);
 	list_for_each_entry_safe(tl, tn, &timelines->active_list, link) {
 		if (!mutex_trylock(&tl->mutex)) {
@@ -153,6 +149,7 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
 
 		active_count += !retire_requests(tl);
 
+		flush_submission(gt); /* sync with concurrent retirees */
 		spin_lock(&timelines->lock);
 
 		/* Resume iteration after dropping lock */
@@ -173,9 +170,6 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
 	list_for_each_entry_safe(tl, tn, &free, link)
 		__intel_timeline_free(&tl->kref);
 
-	if (flush_submission(gt))
-		active_count++;
-
 	return active_count ? timeout : 0;
 }
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
