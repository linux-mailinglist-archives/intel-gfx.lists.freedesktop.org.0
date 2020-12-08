Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE392D36CE
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 00:18:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 219476E098;
	Tue,  8 Dec 2020 23:18:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CEB76E098
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Dec 2020 23:18:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23259511-1500050 
 for multiple; Tue, 08 Dec 2020 23:18:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Dec 2020 23:18:34 +0000
Message-Id: <20201208231834.24812-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201208231834.24812-1-chris@chris-wilson.co.uk>
References: <20201208231834.24812-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Remove uninterruptible
 parameter from intel_gt_wait_for_idle
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

Now that the only user of the uninterruptible wait was eliminated,
remove the support.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_gt_requests.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index 66fcbf9d0fdd..dc06c78c9eeb 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -135,13 +135,8 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
 	struct intel_gt_timelines *timelines = &gt->timelines;
 	struct intel_timeline *tl, *tn;
 	unsigned long active_count = 0;
-	bool interruptible;
 	LIST_HEAD(free);
 
-	interruptible = true;
-	if (unlikely(timeout < 0))
-		timeout = -timeout, interruptible = false;
-
 	flush_submission(gt, timeout); /* kick the ksoftirqd tasklets */
 	spin_lock(&timelines->lock);
 	list_for_each_entry_safe(tl, tn, &timelines->active_list, link) {
@@ -163,7 +158,7 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
 				mutex_unlock(&tl->mutex);
 
 				timeout = dma_fence_wait_timeout(fence,
-								 interruptible,
+								 true,
 								 timeout);
 				dma_fence_put(fence);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
