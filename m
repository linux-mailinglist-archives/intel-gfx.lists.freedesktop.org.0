Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3C711CF3B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 15:05:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BA6D6ED78;
	Thu, 12 Dec 2019 14:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0664B6ED71
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 14:05:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19555629-1500050 
 for multiple; Thu, 12 Dec 2019 14:04:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:04:28 +0000
Message-Id: <20191212140459.1307617-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
References: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/33] drm/i915: Eliminate the trylock for
 awaiting an earlier request
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

We currently use an error-prone mutex_trylock to grab another timeline
to find an earlier request along it. However, with a bit of a
sleight-of-hand, we can reduce the mutex_trylock to a spin_lock on the
immediate request and careful pointer chasing to acquire a reference on
the previous request.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 39 ++++++++++++++++-------------
 1 file changed, 21 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index fb8738987aeb..f513747ff027 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -768,34 +768,37 @@ i915_request_create(struct intel_context *ce)
 static int
 i915_request_await_start(struct i915_request *rq, struct i915_request *signal)
 {
-	struct intel_timeline *tl;
 	struct dma_fence *fence;
 	int err;
 
 	GEM_BUG_ON(i915_request_timeline(rq) ==
 		   rcu_access_pointer(signal->timeline));
 
+	fence = NULL;
 	rcu_read_lock();
-	tl = rcu_dereference(signal->timeline);
-	if (i915_request_started(signal) || !kref_get_unless_zero(&tl->kref))
-		tl = NULL;
-	rcu_read_unlock();
-	if (!tl) /* already started or maybe even completed */
-		return 0;
+	spin_lock_irq(&signal->lock);
+	if (!i915_request_started(signal) &&
+	    !list_is_first(&signal->link,
+			   &rcu_dereference(signal->timeline)->requests)) {
+		struct i915_request *prev = list_prev_entry(signal, link);
 
-	fence = ERR_PTR(-EAGAIN);
-	if (mutex_trylock(&tl->mutex)) {
-		fence = NULL;
-		if (!i915_request_started(signal) &&
-		    !list_is_first(&signal->link, &tl->requests)) {
-			signal = list_prev_entry(signal, link);
-			fence = dma_fence_get(&signal->fence);
+		/*
+		 * Peek at the request before us in the timeline. That
+		 * request will only be valid before it is retired, so
+		 * after acquiring a reference to it, confirm that it is
+		 * still part of the signaler's timeline.
+		 */
+		if (i915_request_get_rcu(prev)) {
+			if (list_next_entry(prev, link) == signal)
+				fence = &prev->fence;
+			else
+				i915_request_put(prev);
 		}
-		mutex_unlock(&tl->mutex);
 	}
-	intel_timeline_put(tl);
-	if (IS_ERR_OR_NULL(fence))
-		return PTR_ERR_OR_ZERO(fence);
+	spin_unlock_irq(&signal->lock);
+	rcu_read_unlock();
+	if (!fence)
+		return 0;
 
 	err = 0;
 	if (intel_timeline_sync_is_later(i915_request_timeline(rq), fence))
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
