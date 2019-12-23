Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A1C1297CD
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 16:08:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A23736E2BD;
	Mon, 23 Dec 2019 15:08:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB056E2BD
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 15:08:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19673216-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 15:08:34 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 15:08:33 +0000
Message-Id: <20191223150833.2329366-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Tidy up checking active timelines
 during retirement
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

Use the status of the timeline request list as we retire it to determine
if the timeline is still active.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_requests.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index b4f04614230e..9e75fa1b6bc1 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -14,13 +14,16 @@
 #include "intel_gt_requests.h"
 #include "intel_timeline.h"
 
-static void retire_requests(struct intel_timeline *tl)
+static bool retire_requests(struct intel_timeline *tl)
 {
 	struct i915_request *rq, *rn;
 
 	list_for_each_entry_safe(rq, rn, &tl->requests, link)
 		if (!i915_request_retire(rq))
-			break;
+			return false;
+
+	/* And check nothing new was submitted */
+	return !i915_active_fence_isset(&tl->last_request);
 }
 
 static bool flush_submission(struct intel_gt *gt)
@@ -29,6 +32,9 @@ static bool flush_submission(struct intel_gt *gt)
 	enum intel_engine_id id;
 	bool active = false;
 
+	if (!intel_gt_pm_is_awake(gt))
+		return false;
+
 	for_each_engine(engine, gt, id) {
 		active |= intel_engine_flush_submission(engine);
 		active |= flush_work(&engine->retire_work);
@@ -145,7 +151,7 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
 			}
 		}
 
-		retire_requests(tl);
+		active_count += !retire_requests(tl);
 
 		spin_lock(&timelines->lock);
 
@@ -153,8 +159,6 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
 		list_safe_reset_next(tl, tn, link);
 		if (atomic_dec_and_test(&tl->active_count))
 			list_del(&tl->link);
-		else
-			active_count += i915_active_fence_isset(&tl->last_request);
 
 		mutex_unlock(&tl->mutex);
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
