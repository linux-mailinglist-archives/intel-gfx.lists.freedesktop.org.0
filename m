Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C6F3FB5B2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:10:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CCF889D8A;
	Mon, 30 Aug 2021 12:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC11D89CCE
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:09:55 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Mon, 30 Aug 2021 14:10:02 +0200
Message-Id: <20210830121006.2978297-16-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/19] drm/i915: Remove support for unlocked
 i915_vma unbind
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that we require the object lock for all ops, some code handling
race conditions can be removed.

This is required to not take short-term pins inside execbuf.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 40 +++++----------------------------
 1 file changed, 5 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index da54e6882650..f6dacfc3e840 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -748,7 +748,6 @@ i915_vma_detach(struct i915_vma *vma)
 static bool try_qad_pin(struct i915_vma *vma, unsigned int flags)
 {
 	unsigned int bound;
-	bool pinned = true;
 
 	bound = atomic_read(&vma->flags);
 	do {
@@ -758,34 +757,10 @@ static bool try_qad_pin(struct i915_vma *vma, unsigned int flags)
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
 
 
@@ -1085,13 +1060,7 @@ __i915_vma_get_pages(struct i915_vma *vma)
 			vma->ggtt_view.type, ret);
 	}
 
-	pages = xchg(&vma->pages, pages);
-
-	/* did we race against a put_pages? */
-	if (pages && pages != vma->obj->mm.pages) {
-		sg_free_table(vma->pages);
-		kfree(vma->pages);
-	}
+	vma->pages = pages;
 
 	return ret;
 }
@@ -1125,13 +1094,14 @@ I915_SELFTEST_EXPORT int i915_vma_get_pages(struct i915_vma *vma)
 static void __vma_put_pages(struct i915_vma *vma, unsigned int count)
 {
 	/* We allocate under vma_get_pages, so beware the shrinker */
-	struct sg_table *pages = READ_ONCE(vma->pages);
+	struct sg_table *pages = vma->pages;
 
 	GEM_BUG_ON(atomic_read(&vma->pages_count) < count);
 
 	if (atomic_sub_return(count, &vma->pages_count) == 0) {
-		if (pages == cmpxchg(&vma->pages, pages, NULL) &&
-		    pages != vma->obj->mm.pages) {
+		vma->pages = NULL;
+
+		if (pages != vma->obj->mm.pages) {
 			sg_free_table(pages);
 			kfree(pages);
 		}
-- 
2.32.0

