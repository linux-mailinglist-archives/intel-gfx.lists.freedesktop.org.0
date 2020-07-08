Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 503B7218E66
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 19:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0CC66E901;
	Wed,  8 Jul 2020 17:37:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB85D6E8FF
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 17:37:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21756435-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 18:37:49 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Jul 2020 18:37:45 +0100
Message-Id: <20200708173748.32734-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/4] drm/i915/gem: Unpin idle contexts from kswapd
 reclaim
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

We removed retiring requests from the shrinker in order to decouple the
mutexes from reclaim in preparation for unravelling the struct_mutex.
The impact of not retiring is that we are much less agressive in making
global objects available for shrinking, as such objects remain pinned
until they are flushed by a heartbeat pulse following the last retired
request along their timeline. In order to ensure that pulse occurs in
time for memory reclamation, we should kick it from kswapd.

The catch is that we have added some flush_work() into the retirement
phase (to ensure that we reach a global idle in a timely manner), but
these flush_work() are not eligible (i.e do not belong to WQ_MEM_RELCAIM)
for use from inside kswapd. To avoid flushing those workqueues, we teach
the retirer not to do so unless we are actually waiting, and only do the
plain retire from inside the shrinker.

Note that for execlists, we already retire completed contexts as they
are scheduled out, so it should not be keeping global state
unnecessarily pinned. The legacy ringbuffer however...

References: 9e9539800dd4 ("drm/i915: Remove waiting & retiring from shrinker paths")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c | 25 +++++++++++++-------
 drivers/gpu/drm/i915/gt/intel_gt_requests.c  |  9 ++++---
 2 files changed, 22 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 1ced1e5d2ec0..dc8f052a0ffe 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -13,6 +13,8 @@
 #include <linux/dma-buf.h>
 #include <linux/vmalloc.h>
 
+#include "gt/intel_gt_requests.h"
+
 #include "i915_trace.h"
 
 static bool swap_available(void)
@@ -111,15 +113,6 @@ i915_gem_shrink(struct drm_i915_private *i915,
 	unsigned long count = 0;
 	unsigned long scanned = 0;
 
-	/*
-	 * When shrinking the active list, we should also consider active
-	 * contexts. Active contexts are pinned until they are retired, and
-	 * so can not be simply unbound to retire and unpin their pages. To
-	 * shrink the contexts, we must wait until the gpu is idle and
-	 * completed its switch to the kernel context. In short, we do
-	 * not have a good mechanism for idling a specific context.
-	 */
-
 	trace_i915_gem_shrink(i915, target, shrink);
 
 	/*
@@ -133,6 +126,20 @@ i915_gem_shrink(struct drm_i915_private *i915,
 			shrink &= ~I915_SHRINK_BOUND;
 	}
 
+	/*
+	 * When shrinking the active list, we should also consider active
+	 * contexts. Active contexts are pinned until they are retired, and
+	 * so can not be simply unbound to retire and unpin their pages. To
+	 * shrink the contexts, we must wait until the gpu is idle and
+	 * completed its switch to the kernel context. In short, we do
+	 * not have a good mechanism for idling a specific context, but
+	 * what we can do is give them a kick so that we do not keep idle
+	 * contexts around longer than is necessary.
+	 */
+	if (shrink & I915_SHRINK_ACTIVE)
+		/* Retire requests to unpin all idle contexts */
+		intel_gt_retire_requests(&i915->gt);
+
 	/*
 	 * As we may completely rewrite the (un)bound list whilst unbinding
 	 * (due to retiring requests) we have to strictly process only
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
index 16ff47c83bd5..66fcbf9d0fdd 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
@@ -31,12 +31,15 @@ static bool engine_active(const struct intel_engine_cs *engine)
 	return !list_empty(&engine->kernel_context->timeline->requests);
 }
 
-static bool flush_submission(struct intel_gt *gt)
+static bool flush_submission(struct intel_gt *gt, long timeout)
 {
 	struct intel_engine_cs *engine;
 	enum intel_engine_id id;
 	bool active = false;
 
+	if (!timeout)
+		return false;
+
 	if (!intel_gt_pm_is_awake(gt))
 		return false;
 
@@ -139,7 +142,7 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
 	if (unlikely(timeout < 0))
 		timeout = -timeout, interruptible = false;
 
-	flush_submission(gt); /* kick the ksoftirqd tasklets */
+	flush_submission(gt, timeout); /* kick the ksoftirqd tasklets */
 	spin_lock(&timelines->lock);
 	list_for_each_entry_safe(tl, tn, &timelines->active_list, link) {
 		if (!mutex_trylock(&tl->mutex)) {
@@ -194,7 +197,7 @@ out_active:	spin_lock(&timelines->lock);
 	list_for_each_entry_safe(tl, tn, &free, link)
 		__intel_timeline_free(&tl->kref);
 
-	if (flush_submission(gt)) /* Wait, there's more! */
+	if (flush_submission(gt, timeout)) /* Wait, there's more! */
 		active_count++;
 
 	return active_count ? timeout : 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
