Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBCF220C6C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 13:53:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B74AE6EB37;
	Wed, 15 Jul 2020 11:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6264E6EAD9
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 11:52:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21826115-1500050 
 for multiple; Wed, 15 Jul 2020 12:51:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jul 2020 12:50:50 +0100
Message-Id: <20200715115147.11866-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200715115147.11866-1-chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/66] drm/i915: Provide a fastpath for waiting
 on vma bindings
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

Before we can execute a request, we must wait for all of its vma to be
bound. This is a frequent operation for which we can optimise away a
few atomic operations (notably a cmpxchg) in lieu of the RCU protection.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_active.h | 15 +++++++++++++++
 drivers/gpu/drm/i915/i915_vma.c    |  9 +++++++--
 2 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index b9e0394e2975..fb165d3f01cf 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -231,4 +231,19 @@ struct i915_active *i915_active_create(void);
 struct i915_active *i915_active_get(struct i915_active *ref);
 void i915_active_put(struct i915_active *ref);
 
+static inline int __i915_request_await_exclusive(struct i915_request *rq,
+						 struct i915_active *active)
+{
+	struct dma_fence *fence;
+	int err = 0;
+
+	fence = i915_active_fence_get(&active->excl);
+	if (fence) {
+		err = i915_request_await_dma_fence(rq, fence);
+		dma_fence_put(fence);
+	}
+
+	return err;
+}
+
 #endif /* _I915_ACTIVE_H_ */
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index bc64f773dcdb..cd12047c7791 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1167,6 +1167,12 @@ void i915_vma_revoke_mmap(struct i915_vma *vma)
 		list_del(&vma->obj->userfault_link);
 }
 
+static int
+__i915_request_await_bind(struct i915_request *rq, struct i915_vma *vma)
+{
+	return __i915_request_await_exclusive(rq, &vma->active);
+}
+
 int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
 {
 	int err;
@@ -1174,8 +1180,7 @@ int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
 	GEM_BUG_ON(!i915_vma_is_pinned(vma));
 
 	/* Wait for the vma to be bound before we start! */
-	err = i915_request_await_active(rq, &vma->active,
-					I915_ACTIVE_AWAIT_EXCL);
+	err = __i915_request_await_bind(rq, vma);
 	if (err)
 		return err;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
