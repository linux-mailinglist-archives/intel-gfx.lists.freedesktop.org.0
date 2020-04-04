Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 400C719E677
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 18:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E327A6E14D;
	Sat,  4 Apr 2020 16:33:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D9DE89C68
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Apr 2020 16:33:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20800272-1500050 
 for multiple; Sat, 04 Apr 2020 17:33:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  4 Apr 2020 17:32:59 +0100
Message-Id: <20200404163301.9879-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Make exclusive awaits on
 i915_active optional
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

Later use will require asynchronous waits on the active timelines, but
will not utilize an async wait on the exclusive channel. Make the await
on the exclusive fence explicit in the selection flags.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_active.c | 7 ++++---
 drivers/gpu/drm/i915/i915_active.h | 3 ++-
 drivers/gpu/drm/i915/i915_perf.c   | 2 +-
 drivers/gpu/drm/i915/i915_vma.c    | 3 ++-
 4 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 5df7704369fd..d5e24be759f7 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -549,14 +549,15 @@ static int await_active(struct i915_active *ref,
 {
 	int err = 0;
 
-	/* We must always wait for the exclusive fence! */
-	if (rcu_access_pointer(ref->excl.fence)) {
+	if (flags & I915_ACTIVE_AWAIT_EXCL &&
+	    rcu_access_pointer(ref->excl.fence)) {
 		err = __await_active(&ref->excl, fn, arg);
 		if (err)
 			return err;
 	}
 
-	if (flags & I915_ACTIVE_AWAIT_ALL && i915_active_acquire_if_busy(ref)) {
+	if (flags & I915_ACTIVE_AWAIT_ACTIVE &&
+	    i915_active_acquire_if_busy(ref)) {
 		struct active_node *it, *n;
 
 		rbtree_postorder_for_each_entry_safe(it, n, &ref->tree, node) {
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index b526d310a585..ffafaa78c494 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -193,7 +193,8 @@ int i915_sw_fence_await_active(struct i915_sw_fence *fence,
 int i915_request_await_active(struct i915_request *rq,
 			      struct i915_active *ref,
 			      unsigned int flags);
-#define I915_ACTIVE_AWAIT_ALL BIT(0)
+#define I915_ACTIVE_AWAIT_EXCL BIT(0)
+#define I915_ACTIVE_AWAIT_ACTIVE BIT(1)
 
 int i915_active_acquire(struct i915_active *ref);
 bool i915_active_acquire_if_busy(struct i915_active *ref);
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 2f78b147bb2d..5cde3e4e7be6 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1948,7 +1948,7 @@ emit_oa_config(struct i915_perf_stream *stream,
 	if (!IS_ERR_OR_NULL(active)) {
 		/* After all individual context modifications */
 		err = i915_request_await_active(rq, active,
-						I915_ACTIVE_AWAIT_ALL);
+						I915_ACTIVE_AWAIT_ACTIVE);
 		if (err)
 			goto err_add_request;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 6cc2d9c44015..f0383a68c981 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1167,7 +1167,8 @@ int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
 	GEM_BUG_ON(!i915_vma_is_pinned(vma));
 
 	/* Wait for the vma to be bound before we start! */
-	err = i915_request_await_active(rq, &vma->active, 0);
+	err = i915_request_await_active(rq, &vma->active,
+					I915_ACTIVE_AWAIT_EXCL);
 	if (err)
 		return err;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
