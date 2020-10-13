Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC8428CBBC
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Oct 2020 12:33:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12A0B6E204;
	Tue, 13 Oct 2020 10:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E116F6E204
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 10:33:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22700298-1500050 
 for multiple; Tue, 13 Oct 2020 11:32:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Oct 2020 11:32:56 +0100
Message-Id: <20201013103256.31446-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Make the GEM reclaim workqueue high
 priority
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

Since removing dev->struct_mutex usage, we only use i915->wq for batch
freeing of GEM objects and ppGTT, it is essential for memory reclaim. If
we let the workqueue dawdle, we trap excess amounts of memory, so give
it a priority boost. Although since we no longer depend on a singular
mutex, we could run unbounded, but first lets try to keep some
constraint upon the worker.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: CQ Tang <cq.tang@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 8bb7e2dcfaaa..8c9198f0d2ad 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -219,20 +219,10 @@ intel_teardown_mchbar(struct drm_i915_private *dev_priv)
 static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 {
 	/*
-	 * The i915 workqueue is primarily used for batched retirement of
-	 * requests (and thus managing bo) once the task has been completed
-	 * by the GPU. i915_retire_requests() is called directly when we
-	 * need high-priority retirement, such as waiting for an explicit
-	 * bo.
-	 *
-	 * It is also used for periodic low-priority events, such as
-	 * idle-timers and recording error state.
-	 *
-	 * All tasks on the workqueue are expected to acquire the dev mutex
-	 * so there is no point in running more than one instance of the
-	 * workqueue at any time.  Use an ordered one.
+	 * The i915 workqueue is primarily used for batched freeing of
+	 * GEM objects and ppGTT, and is essential for memory reclaim.
 	 */
-	dev_priv->wq = alloc_ordered_workqueue("i915", 0);
+	dev_priv->wq = alloc_ordered_workqueue("i915", WQ_HIGHPRI);
 	if (dev_priv->wq == NULL)
 		goto out_err;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
