Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 503DC23CA81
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 14:23:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E77956E59B;
	Wed,  5 Aug 2020 12:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 183A76E58B
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 12:22:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22039473-1500050 
 for multiple; Wed, 05 Aug 2020 13:22:33 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 13:22:08 +0100
Message-Id: <20200805122231.23313-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200805122231.23313-1-chris@chris-wilson.co.uk>
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/37] drm/i915: Serialise
 i915_vma_pin_inplace() with i915_vma_unbind()
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

Directly seralise the atomic pinning with evicting the vma from unbind
with a pair of coupled cmpxchg to avoid fighting over vm->mutex.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_vma.c | 45 ++++++++++-----------------------
 1 file changed, 14 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index dbe11b349175..17ce0bce318e 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -742,12 +742,10 @@ i915_vma_detach(struct i915_vma *vma)
 
 bool i915_vma_pin_inplace(struct i915_vma *vma, unsigned int flags)
 {
-	unsigned int bound;
-	bool pinned = true;
+	unsigned int bound = atomic_read(&vma->flags);
 
 	GEM_BUG_ON(flags & ~I915_VMA_BIND_MASK);
 
-	bound = atomic_read(&vma->flags);
 	do {
 		if (unlikely(flags & ~bound))
 			return false;
@@ -755,34 +753,10 @@ bool i915_vma_pin_inplace(struct i915_vma *vma, unsigned int flags)
 		if (unlikely(bound & (I915_VMA_OVERFLOW | I915_VMA_ERROR)))
 			return false;
 
-		if (!(bound & I915_VMA_PIN_MASK))
-			goto unpinned;
-
 		GEM_BUG_ON(((bound + 1) & I915_VMA_PIN_MASK) == 0);
 	} while (!atomic_try_cmpxchg(&vma->flags, &bound, bound + 1));
 
 	return true;
-
-unpinned:
-	/*
-	 * If pin_count==0, but we are bound, check under the lock to avoid
-	 * racing with a concurrent i915_vma_unbind().
-	 */
-	mutex_lock(&vma->vm->mutex);
-	do {
-		if (unlikely(bound & (I915_VMA_OVERFLOW | I915_VMA_ERROR))) {
-			pinned = false;
-			break;
-		}
-
-		if (unlikely(flags & ~bound)) {
-			pinned = false;
-			break;
-		}
-	} while (!atomic_try_cmpxchg(&vma->flags, &bound, bound + 1));
-	mutex_unlock(&vma->vm->mutex);
-
-	return pinned;
 }
 
 static int vma_get_pages(struct i915_vma *vma)
@@ -1292,6 +1266,7 @@ void __i915_vma_evict(struct i915_vma *vma)
 
 int __i915_vma_unbind(struct i915_vma *vma)
 {
+	unsigned int bound;
 	int ret;
 
 	lockdep_assert_held(&vma->vm->mutex);
@@ -1299,10 +1274,18 @@ int __i915_vma_unbind(struct i915_vma *vma)
 	if (!drm_mm_node_allocated(&vma->node))
 		return 0;
 
-	if (i915_vma_is_pinned(vma)) {
-		vma_print_allocator(vma, "is pinned");
-		return -EAGAIN;
-	}
+	/* Serialise with i915_vma_pin_inplace() */
+	bound = atomic_read(&vma->flags);
+	do {
+		if (unlikely(bound & I915_VMA_PIN_MASK)) {
+			vma_print_allocator(vma, "is pinned");
+			return -EAGAIN;
+		}
+
+		if (unlikely(bound & I915_VMA_ERROR))
+			break;
+	} while (!atomic_try_cmpxchg(&vma->flags,
+				     &bound, bound | I915_VMA_ERROR));
 
 	/*
 	 * After confirming that no one else is pinning this vma, wait for
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
