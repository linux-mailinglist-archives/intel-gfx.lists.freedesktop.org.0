Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEDB19B680
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 21:42:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 675236E997;
	Wed,  1 Apr 2020 19:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 681536E997
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 19:42:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20769371-1500050 
 for multiple; Wed, 01 Apr 2020 20:41:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Apr 2020 20:41:35 +0100
Message-Id: <20200401194135.5442-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200401185834.20595-1-chris@chris-wilson.co.uk>
References: <20200401185834.20595-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gem: Try allocating va from free
 space
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the current node/entry location is occupied, and the object is not
pinned, try assigning it some free space. We cannot wait here, so if in
doubt, we unreserve and try to grab all at once.

v2: Use the final pin_flags so that we won't have to move the object if
we find the wrong free space.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 68 ++++++++++++-------
 1 file changed, 43 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 908fb877f875..9d11bad74e9a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -429,6 +429,32 @@ eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
 	return false;
 }
 
+static u64 eb_pin_flags(const struct drm_i915_gem_exec_object2 *entry,
+			unsigned int exec_flags)
+{
+	u64 pin_flags = 0;
+
+	if (exec_flags & EXEC_OBJECT_NEEDS_GTT)
+		pin_flags |= PIN_GLOBAL;
+
+	/*
+	 * Wa32bitGeneralStateOffset & Wa32bitInstructionBaseOffset,
+	 * limit address to the first 4GBs for unflagged objects.
+	 */
+	if (!(exec_flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS))
+		pin_flags |= PIN_ZONE_4G;
+
+	if (exec_flags & __EXEC_OBJECT_NEEDS_MAP)
+		pin_flags |= PIN_MAPPABLE;
+
+	if (exec_flags & EXEC_OBJECT_PINNED)
+		pin_flags |= entry->offset | PIN_OFFSET_FIXED;
+	else if (exec_flags & __EXEC_OBJECT_NEEDS_BIAS)
+		pin_flags |= BATCH_OFFSET_BIAS | PIN_OFFSET_BIAS;
+
+	return pin_flags;
+}
+
 static inline bool
 eb_pin_vma(struct i915_execbuffer *eb,
 	   const struct drm_i915_gem_exec_object2 *entry,
@@ -446,8 +472,19 @@ eb_pin_vma(struct i915_execbuffer *eb,
 	if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_GTT))
 		pin_flags |= PIN_GLOBAL;
 
-	if (unlikely(i915_vma_pin(vma, 0, 0, pin_flags)))
-		return false;
+	/* Attempt to reuse the current location if available */
+	if (unlikely(i915_vma_pin(vma, 0, 0, pin_flags))) {
+		if (entry->flags & EXEC_OBJECT_PINNED)
+			return false;
+
+		/* Failing that pick any _free_ space if suitable */
+		if (unlikely(i915_vma_pin(vma,
+					  entry->pad_to_size,
+					  entry->alignment,
+					  eb_pin_flags(entry, ev->flags) |
+					  PIN_USER | PIN_NOEVICT)))
+			return false;
+	}
 
 	if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_FENCE)) {
 		if (unlikely(i915_vma_pin_fence(vma))) {
@@ -588,28 +625,9 @@ static int eb_reserve_vma(const struct i915_execbuffer *eb,
 			  u64 pin_flags)
 {
 	struct drm_i915_gem_exec_object2 *entry = ev->exec;
-	unsigned int exec_flags = ev->flags;
 	struct i915_vma *vma = ev->vma;
 	int err;
 
-	if (exec_flags & EXEC_OBJECT_NEEDS_GTT)
-		pin_flags |= PIN_GLOBAL;
-
-	/*
-	 * Wa32bitGeneralStateOffset & Wa32bitInstructionBaseOffset,
-	 * limit address to the first 4GBs for unflagged objects.
-	 */
-	if (!(exec_flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS))
-		pin_flags |= PIN_ZONE_4G;
-
-	if (exec_flags & __EXEC_OBJECT_NEEDS_MAP)
-		pin_flags |= PIN_MAPPABLE;
-
-	if (exec_flags & EXEC_OBJECT_PINNED)
-		pin_flags |= entry->offset | PIN_OFFSET_FIXED;
-	else if (exec_flags & __EXEC_OBJECT_NEEDS_BIAS)
-		pin_flags |= BATCH_OFFSET_BIAS | PIN_OFFSET_BIAS;
-
 	if (drm_mm_node_allocated(&vma->node) &&
 	    eb_vma_misplaced(entry, vma, ev->flags)) {
 		err = i915_vma_unbind(vma);
@@ -619,7 +637,7 @@ static int eb_reserve_vma(const struct i915_execbuffer *eb,
 
 	err = i915_vma_pin(vma,
 			   entry->pad_to_size, entry->alignment,
-			   pin_flags);
+			   eb_pin_flags(entry, ev->flags) | pin_flags);
 	if (err)
 		return err;
 
@@ -628,7 +646,7 @@ static int eb_reserve_vma(const struct i915_execbuffer *eb,
 		eb->args->flags |= __EXEC_HAS_RELOC;
 	}
 
-	if (unlikely(exec_flags & EXEC_OBJECT_NEEDS_FENCE)) {
+	if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_FENCE)) {
 		err = i915_vma_pin_fence(vma);
 		if (unlikely(err)) {
 			i915_vma_unpin(vma);
@@ -636,10 +654,10 @@ static int eb_reserve_vma(const struct i915_execbuffer *eb,
 		}
 
 		if (vma->fence)
-			exec_flags |= __EXEC_OBJECT_HAS_FENCE;
+			ev->flags |= __EXEC_OBJECT_HAS_FENCE;
 	}
 
-	ev->flags = exec_flags | __EXEC_OBJECT_HAS_PIN;
+	ev->flags |= __EXEC_OBJECT_HAS_PIN;
 	GEM_BUG_ON(eb_vma_misplaced(entry, vma, ev->flags));
 
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
