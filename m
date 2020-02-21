Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D60168A88
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 00:52:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85A506E32E;
	Fri, 21 Feb 2020 23:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEB916E32E
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 23:51:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20308204-1500050 
 for multiple; Fri, 21 Feb 2020 23:51:36 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Feb 2020 23:51:35 +0000
Message-Id: <20200221235135.2883006-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200221225451.2861978-1-chris@chris-wilson.co.uk>
References: <20200221225451.2861978-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Push the GPU cancellation to the
 backend
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

Upon unregistering the user interface, we mark the GPU as wedged to
ensure we push no new work to the GPU, and to flush all current work
from the GPU. Move this call to the GT backend.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 7 +++++++
 drivers/gpu/drm/i915/i915_drv.c    | 7 -------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index cd64f81a3e60..3dea8881e915 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -644,6 +644,13 @@ void intel_gt_driver_remove(struct intel_gt *gt)
 void intel_gt_driver_unregister(struct intel_gt *gt)
 {
 	intel_rps_driver_unregister(&gt->rps);
+
+	/*
+	 * Upon unregistering the device to prevent any new users, cancel
+	 * all in-flight requests so that we can quickly unbind the active
+	 * resources.
+	 */
+	intel_gt_set_wedged(gt);
 }
 
 void intel_gt_driver_release(struct intel_gt *gt)
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 759d333448e1..80574833d28e 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -1494,13 +1494,6 @@ void i915_driver_remove(struct drm_i915_private *i915)
 
 	i915_driver_unregister(i915);
 
-	/*
-	 * After unregistering the device to prevent any new users, cancel
-	 * all in-flight requests so that we can quickly unbind the active
-	 * resources.
-	 */
-	intel_gt_set_wedged(&i915->gt);
-
 	/* Flush any external code that still may be under the RCU lock */
 	synchronize_rcu();
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
