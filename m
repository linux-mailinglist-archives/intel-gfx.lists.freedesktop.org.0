Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BD915037D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 10:42:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B9CF6EB7F;
	Mon,  3 Feb 2020 09:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 480A86EB7D
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 09:42:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20096986-1500050 
 for multiple; Mon, 03 Feb 2020 09:41:54 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 09:41:47 +0000
Message-Id: <20200203094152.4150550-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/6] drm/i915: Hold reference to previous active
 fence as we queue
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Take a reference to the previous exclusive fence on the i915_active, as
we wish to add an await to it in the caller (and so must prevent it from
being freed until we have completed that task).

Fixes: e3793468b466 ("drm/i915: Use the async worker to avoid reclaim tainting the ggtt->mutex")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/i915_active.c | 6 +++++-
 drivers/gpu/drm/i915/i915_vma.c    | 4 +++-
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index da58e5d084f4..9ccb931a733e 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -398,9 +398,13 @@ i915_active_set_exclusive(struct i915_active *ref, struct dma_fence *f)
 	/* We expect the caller to manage the exclusive timeline ordering */
 	GEM_BUG_ON(i915_active_is_idle(ref));
 
+	rcu_read_lock();
 	prev = __i915_active_fence_set(&ref->excl, f);
-	if (!prev)
+	if (prev)
+		prev = dma_fence_get_rcu(prev);
+	else
 		atomic_inc(&ref->count);
+	rcu_read_unlock();
 
 	return prev;
 }
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index e801e28de470..74dc3ba59ce5 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -422,10 +422,12 @@ int i915_vma_bind(struct i915_vma *vma,
 		 * execution and not content or object's backing store lifetime.
 		 */
 		prev = i915_active_set_exclusive(&vma->active, &work->base.dma);
-		if (prev)
+		if (prev) {
 			__i915_sw_fence_await_dma_fence(&work->base.chain,
 							prev,
 							&work->cb);
+			dma_fence_put(prev);
+		}
 
 		work->base.dma.error = 0; /* enable the queue_work() */
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
