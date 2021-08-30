Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 768823FB5B7
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:10:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40C4789D99;
	Mon, 30 Aug 2021 12:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9759289CF6
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:09:54 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Date: Mon, 30 Aug 2021 14:09:56 +0200
Message-Id: <20210830121006.2978297-10-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/19] drm/i915: Change shrink ordering to use
 locking around unbinding.
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

Call drop_pages with the gem object lock held, instead of the other
way around. This will allow us to drop the vma bindings with the
gem object lock held.

We plan to require the object lock for unpinning in the future,
and this is an easy target.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c | 42 ++++++++++----------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index 5ab136ffdeb2..7f7849b6296d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -37,8 +37,8 @@ static bool can_release_pages(struct drm_i915_gem_object *obj)
 	return swap_available() || obj->mm.madv == I915_MADV_DONTNEED;
 }
 
-static bool unsafe_drop_pages(struct drm_i915_gem_object *obj,
-			      unsigned long shrink, bool trylock_vm)
+static int drop_pages(struct drm_i915_gem_object *obj,
+		       unsigned long shrink, bool trylock_vm)
 {
 	unsigned long flags;
 
@@ -209,27 +209,27 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 
 			spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
 
-			err = 0;
-			if (unsafe_drop_pages(obj, shrink, trylock_vm)) {
-				/* May arrive from get_pages on another bo */
-				if (!ww) {
-					if (!i915_gem_object_trylock(obj))
-						goto skip;
-				} else {
-					err = i915_gem_object_lock(obj, ww);
-					if (err)
-						goto skip;
-				}
-
-				if (!__i915_gem_object_put_pages(obj)) {
-					try_to_writeback(obj, shrink);
-					count += obj->base.size >> PAGE_SHIFT;
-				}
-				if (!ww)
-					i915_gem_object_unlock(obj);
+			/* May arrive from get_pages on another bo */
+			if (!ww) {
+				if (!i915_gem_object_trylock(obj))
+					goto skip;
+			} else {
+				err = i915_gem_object_lock(obj, ww);
+				if (err)
+					goto skip;
 			}
 
-			dma_resv_prune(obj->base.resv);
+			if (drop_pages(obj, shrink, trylock_vm) &&
+			    !__i915_gem_object_put_pages(obj)) {
+				try_to_writeback(obj, shrink);
+				count += obj->base.size >> PAGE_SHIFT;
+			}
+
+			if (dma_resv_test_signaled(obj->base.resv, true))
+				dma_resv_add_excl_fence(obj->base.resv, NULL);
+
+			if (!ww)
+				i915_gem_object_unlock(obj);
 
 			scanned += obj->base.size >> PAGE_SHIFT;
 skip:
-- 
2.32.0

