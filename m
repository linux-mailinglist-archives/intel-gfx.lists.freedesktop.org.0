Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2199719F230
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 11:13:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E6F89BB2;
	Mon,  6 Apr 2020 09:13:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9987E6E2FF
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 09:13:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20812399-1500050 
 for multiple; Mon, 06 Apr 2020 10:12:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Apr 2020 10:12:51 +0100
Message-Id: <20200406091254.17675-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200406091254.17675-1-chris@chris-wilson.co.uk>
References: <20200406091254.17675-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Allow asynchronous waits on the
 i915_active barriers
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

Allow the caller to also wait upon the barriers stored in i915_active.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_active.c | 60 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_active.h |  1 +
 2 files changed, 61 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index d5e24be759f7..048ab9edd2c2 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -542,6 +542,55 @@ static int __await_active(struct i915_active_fence *active,
 	return 0;
 }
 
+struct wait_barrier {
+	struct wait_queue_entry base;
+	struct i915_active *ref;
+};
+
+static int
+barrier_wake(wait_queue_entry_t *wq, unsigned int mode, int flags, void *key)
+{
+	struct wait_barrier *wb = container_of(wq, typeof(*wb), base);
+
+	if (i915_active_is_idle(wb->ref)) { /* shared waitqueue, must check! */
+		list_del(&wq->entry);
+		i915_sw_fence_complete(wq->private);
+		kfree(wq);
+	}
+
+	return 0;
+}
+
+static int __await_barrier(struct i915_active *ref, struct i915_sw_fence *fence)
+{
+	struct wait_barrier *wb;
+
+	wb = kmalloc(sizeof(*wb), GFP_KERNEL);
+	if (unlikely(!wb))
+		return -ENOMEM;
+
+	if (!i915_active_acquire_if_busy(ref)) {
+		kfree(wb);
+		return 0;
+	}
+
+	if (!i915_sw_fence_await(fence)) {
+		kfree(wb);
+		i915_active_release(ref);
+		return -EINVAL;
+	}
+
+	wb->base.flags = 0;
+	wb->base.func = barrier_wake;
+	wb->base.private = fence;
+	wb->ref = ref;
+
+	add_wait_queue(__var_waitqueue(ref), &wb->base);
+
+	i915_active_release(ref);
+	return 0;
+}
+
 static int await_active(struct i915_active *ref,
 			unsigned int flags,
 			int (*fn)(void *arg, struct dma_fence *fence),
@@ -570,6 +619,16 @@ static int await_active(struct i915_active *ref,
 			return err;
 	}
 
+	if (flags & I915_ACTIVE_AWAIT_BARRIER) {
+		err = flush_lazy_signals(ref);
+		if (err)
+			return err;
+
+		err = __await_barrier(ref, arg);
+		if (err)
+			return err;
+	}
+
 	return 0;
 }
 
@@ -582,6 +641,7 @@ int i915_request_await_active(struct i915_request *rq,
 			      struct i915_active *ref,
 			      unsigned int flags)
 {
+	GEM_BUG_ON(flags & I915_ACTIVE_AWAIT_BARRIER);
 	return await_active(ref, flags, rq_await_fence, rq);
 }
 
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index ffafaa78c494..cf4058150966 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -195,6 +195,7 @@ int i915_request_await_active(struct i915_request *rq,
 			      unsigned int flags);
 #define I915_ACTIVE_AWAIT_EXCL BIT(0)
 #define I915_ACTIVE_AWAIT_ACTIVE BIT(1)
+#define I915_ACTIVE_AWAIT_BARRIER BIT(2)
 
 int i915_active_acquire(struct i915_active *ref);
 bool i915_active_acquire_if_busy(struct i915_active *ref);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
