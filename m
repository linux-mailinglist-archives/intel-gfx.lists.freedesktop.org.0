Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 268D5252FB3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 15:28:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE0ED6EA62;
	Wed, 26 Aug 2020 13:28:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 876456E953
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 13:28:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22244762-1500050 
 for multiple; Wed, 26 Aug 2020 14:28:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Aug 2020 14:28:07 +0100
Message-Id: <20200826132811.17577-35-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200826132811.17577-1-chris@chris-wilson.co.uk>
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 35/39] drm/i915: Encode fence specific waitqueue
 behaviour into the wait.flags
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

Use the wait_queue_entry.flags to denote the special fence behaviour
(flattening continuations along fence chains, and for propagating
errors) rather than trying to detect ordinary waiters by their
functions.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_sw_fence.c | 25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
index 4cd2038cbe35..4e557d1c4644 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence.c
@@ -18,10 +18,15 @@
 #define I915_SW_FENCE_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
 #endif
 
-#define I915_SW_FENCE_FLAG_ALLOC BIT(3) /* after WQ_FLAG_* for safety */
-
 static DEFINE_SPINLOCK(i915_sw_fence_lock);
 
+#define WQ_FLAG_BITS \
+	BITS_PER_TYPE(typeof_member(struct wait_queue_entry, flags))
+
+/* after WQ_FLAG_* for safety */
+#define I915_SW_FENCE_FLAG_FENCE BIT(WQ_FLAG_BITS - 1)
+#define I915_SW_FENCE_FLAG_ALLOC BIT(WQ_FLAG_BITS - 2)
+
 enum {
 	DEBUG_FENCE_IDLE = 0,
 	DEBUG_FENCE_NOTIFY,
@@ -154,10 +159,10 @@ static void __i915_sw_fence_wake_up_all(struct i915_sw_fence *fence,
 	spin_lock_irqsave_nested(&x->lock, flags, 1 + !!continuation);
 	if (continuation) {
 		list_for_each_entry_safe(pos, next, &x->head, entry) {
-			if (pos->func == autoremove_wake_function)
-				pos->func(pos, TASK_NORMAL, 0, continuation);
-			else
+			if (pos->flags & I915_SW_FENCE_FLAG_FENCE)
 				list_move_tail(&pos->entry, continuation);
+			else
+				pos->func(pos, TASK_NORMAL, 0, continuation);
 		}
 	} else {
 		LIST_HEAD(extra);
@@ -166,9 +171,9 @@ static void __i915_sw_fence_wake_up_all(struct i915_sw_fence *fence,
 			list_for_each_entry_safe(pos, next, &x->head, entry) {
 				int wake_flags;
 
-				wake_flags = fence->error;
-				if (pos->func == autoremove_wake_function)
-					wake_flags = 0;
+				wake_flags = 0;
+				if (pos->flags & I915_SW_FENCE_FLAG_FENCE)
+					wake_flags = fence->error;
 
 				pos->func(pos, TASK_NORMAL, wake_flags, &extra);
 			}
@@ -332,8 +337,8 @@ static int __i915_sw_fence_await_sw_fence(struct i915_sw_fence *fence,
 					  struct i915_sw_fence *signaler,
 					  wait_queue_entry_t *wq, gfp_t gfp)
 {
+	unsigned int pending;
 	unsigned long flags;
-	int pending;
 
 	debug_fence_assert(fence);
 	might_sleep_if(gfpflags_allow_blocking(gfp));
@@ -349,7 +354,7 @@ static int __i915_sw_fence_await_sw_fence(struct i915_sw_fence *fence,
 	if (unlikely(i915_sw_fence_check_if_after(fence, signaler)))
 		return -EINVAL;
 
-	pending = 0;
+	pending = I915_SW_FENCE_FLAG_FENCE;
 	if (!wq) {
 		wq = kmalloc(sizeof(*wq), gfp);
 		if (!wq) {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
