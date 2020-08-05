Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AFB23CA86
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 14:23:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E0506E5A0;
	Wed,  5 Aug 2020 12:22:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00D406E591
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 12:22:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22039482-1500050 
 for multiple; Wed, 05 Aug 2020 13:22:34 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 13:22:17 +0100
Message-Id: <20200805122231.23313-24-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200805122231.23313-1-chris@chris-wilson.co.uk>
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/37] drm/i915/gem: Manage GTT placement bias
 (starting offset) explicitly
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

Since we can control placement in the ppGTT explicitly, we can specify
our desired starting offset exactly on a per-vma basis. This prevents us
falling down a few corner cases where we confuse the user with our choices.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 67 +++++++++----------
 1 file changed, 31 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 19cab5541dbc..0839397c7e50 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -36,6 +36,7 @@ struct eb_vma {
 
 	/** This vma's place in the execbuf reservation list */
 	struct drm_i915_gem_exec_object2 *exec;
+	u32 bias;
 
 	struct list_head bind_link;
 	struct list_head unbound_link;
@@ -61,15 +62,12 @@ struct eb_vma_array {
 #define __EXEC_OBJECT_HAS_PIN		BIT(31)
 #define __EXEC_OBJECT_HAS_FENCE		BIT(30)
 #define __EXEC_OBJECT_NEEDS_MAP		BIT(29)
-#define __EXEC_OBJECT_NEEDS_BIAS	BIT(28)
-#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 28) /* all of the above */
+#define __EXEC_OBJECT_INTERNAL_FLAGS	(~0u << 29) /* all of the above */
 
 #define __EXEC_HAS_RELOC	BIT(31)
 #define __EXEC_INTERNAL_FLAGS	(~0u << 31)
 #define UPDATE			PIN_OFFSET_FIXED
 
-#define BATCH_OFFSET_BIAS (256*1024)
-
 #define __I915_EXEC_ILLEGAL_FLAGS \
 	(__I915_EXEC_UNKNOWN_FLAGS | \
 	 I915_EXEC_CONSTANTS_MASK  | \
@@ -291,7 +289,7 @@ struct i915_execbuffer {
 	} parser;
 
 	u64 invalid_flags; /** Set of execobj.flags that are invalid */
-	u32 context_flags; /** Set of execobj.flags to insert from the ctx */
+	u32 context_bias;
 
 	u32 batch_start_offset; /** Location within object of batch */
 	u32 batch_len; /** Length of batch within object */
@@ -491,11 +489,12 @@ static int eb_create(struct i915_execbuffer *eb)
 	return 0;
 }
 
-static bool
-eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
-		 const struct i915_vma *vma,
-		 unsigned int flags)
+static bool eb_vma_misplaced(const struct eb_vma *ev)
 {
+	const struct drm_i915_gem_exec_object2 *entry = ev->exec;
+	const struct i915_vma *vma = ev->vma;
+	unsigned int flags = ev->flags;
+
 	if (test_bit(I915_VMA_ERROR_BIT, __i915_vma_flags(vma)))
 		return true;
 
@@ -509,8 +508,7 @@ eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
 	    vma->node.start != entry->offset)
 		return true;
 
-	if (flags & __EXEC_OBJECT_NEEDS_BIAS &&
-	    vma->node.start < BATCH_OFFSET_BIAS)
+	if (vma->node.start < ev->bias)
 		return true;
 
 	if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS) &&
@@ -529,10 +527,7 @@ static bool eb_pin_vma_fence_inplace(struct eb_vma *ev)
 	return false; /* We need to add some new fence serialisation */
 }
 
-static inline bool
-eb_pin_vma_inplace(struct i915_execbuffer *eb,
-		   const struct drm_i915_gem_exec_object2 *entry,
-		   struct eb_vma *ev)
+static inline bool eb_pin_vma_inplace(struct eb_vma *ev)
 {
 	struct i915_vma *vma = ev->vma;
 	unsigned int pin_flags;
@@ -541,7 +536,7 @@ eb_pin_vma_inplace(struct i915_execbuffer *eb,
 	if (!i915_active_is_idle(&vma->vm->binding))
 		return false;
 
-	if (eb_vma_misplaced(entry, vma, ev->flags))
+	if (eb_vma_misplaced(ev))
 		return false;
 
 	pin_flags = PIN_USER;
@@ -559,7 +554,7 @@ eb_pin_vma_inplace(struct i915_execbuffer *eb,
 		}
 	}
 
-	GEM_BUG_ON(eb_vma_misplaced(entry, vma, ev->flags));
+	GEM_BUG_ON(eb_vma_misplaced(ev));
 
 	ev->flags |= __EXEC_OBJECT_HAS_PIN;
 	return true;
@@ -608,9 +603,6 @@ eb_validate_vma(struct i915_execbuffer *eb,
 			entry->flags |= EXEC_OBJECT_NEEDS_GTT | __EXEC_OBJECT_NEEDS_MAP;
 	}
 
-	if (!(entry->flags & EXEC_OBJECT_PINNED))
-		entry->flags |= eb->context_flags;
-
 	return 0;
 }
 
@@ -627,6 +619,7 @@ eb_add_vma(struct i915_execbuffer *eb,
 	ev->vma = vma;
 	ev->exec = entry;
 	ev->flags = entry->flags;
+	ev->bias = eb->context_bias;
 
 	if (eb->lut_size > 0) {
 		ev->handle = entry->handle;
@@ -653,7 +646,8 @@ eb_add_vma(struct i915_execbuffer *eb,
 	if (i == batch_idx) {
 		if (entry->relocation_count &&
 		    !(ev->flags & EXEC_OBJECT_PINNED))
-			ev->flags |= __EXEC_OBJECT_NEEDS_BIAS;
+			ev->bias = max_t(u32, ev->bias, SZ_256K);
+
 		if (eb->has_fence)
 			ev->flags |= EXEC_OBJECT_NEEDS_FENCE;
 
@@ -979,8 +973,9 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
 	const unsigned int exec_flags = bind->ev->flags;
 	struct i915_vma *vma = bind->ev->vma;
 	struct i915_address_space *vm = vma->vm;
-	u64 start = 0, end = vm->total;
 	u64 align = entry->alignment ?: I915_GTT_MIN_ALIGNMENT;
+	u64 start = round_up(bind->ev->bias, align);
+	u64 end = vm->total;
 	unsigned int bind_flags;
 	int err;
 
@@ -999,7 +994,7 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
 	GEM_BUG_ON(!vma->size);
 
 	/* Reuse old address (if it doesn't conflict with new requirements) */
-	if (eb_vma_misplaced(entry, vma, exec_flags)) {
+	if (eb_vma_misplaced(bind->ev)) {
 		vma->node.start = entry->offset & PIN_OFFSET_MASK;
 		vma->node.size = max(entry->pad_to_size, vma->size);
 		vma->node.color = 0;
@@ -1021,11 +1016,8 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
 		align = max_t(u64, align, vma->fence_alignment);
 	}
 
-	if (exec_flags & __EXEC_OBJECT_NEEDS_BIAS)
-		start = BATCH_OFFSET_BIAS;
-
 	GEM_BUG_ON(!vma->node.size);
-	if (vma->node.size > end - start)
+	if (start > end || vma->node.size > end - start)
 		return -E2BIG;
 
 	/* Try the user's preferred location first (mandatory if soft-pinned) */
@@ -1108,7 +1100,7 @@ static int eb_reserve_vma(struct eb_vm_work *work, struct eb_bind_vma *bind)
 	}
 
 	bind->ev->flags |= __EXEC_OBJECT_HAS_PIN;
-	GEM_BUG_ON(eb_vma_misplaced(entry, vma, bind->ev->flags));
+	GEM_BUG_ON(eb_vma_misplaced(bind->ev));
 
 	if (unlikely(exec_flags & EXEC_OBJECT_NEEDS_FENCE)) {
 		err = __i915_vma_pin_fence_async(vma, &work->base);
@@ -1341,8 +1333,7 @@ static int wait_for_unbinds(struct i915_execbuffer *eb,
 
 		GEM_BUG_ON(ev->flags & __EXEC_OBJECT_HAS_PIN);
 
-		if (drm_mm_node_allocated(&vma->node) &&
-		    eb_vma_misplaced(ev->exec, vma, ev->flags)) {
+		if (drm_mm_node_allocated(&vma->node) && eb_vma_misplaced(ev)) {
 			err = i915_vma_unbind(vma);
 			if (err)
 				return err;
@@ -1391,10 +1382,10 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 	count = 0;
 	INIT_LIST_HEAD(&unbound);
 	list_for_each_entry(ev, &eb->bind_list, bind_link) {
-		struct drm_i915_gem_exec_object2 *entry = ev->exec;
-		struct i915_vma *vma = ev->vma;
+		if (eb_pin_vma_inplace(ev)) {
+			struct drm_i915_gem_exec_object2 *entry = ev->exec;
+			struct i915_vma *vma = ev->vma;
 
-		if (eb_pin_vma_inplace(eb, entry, ev)) {
 			if (entry != &no_entry &&
 			    entry->offset != vma->node.start) {
 				entry->offset = vma->node.start | UPDATE;
@@ -1478,7 +1469,7 @@ static int eb_reserve_vm(struct i915_execbuffer *eb)
 			 * we cannot handle migrating the vma inside the worker.
 			 */
 			if (drm_mm_node_allocated(&vma->node)) {
-				if (eb_vma_misplaced(ev->exec, vma, ev->flags)) {
+				if (eb_vma_misplaced(ev)) {
 					err = -ENOSPC;
 					break;
 				}
@@ -1736,9 +1727,13 @@ static int eb_select_context(struct i915_execbuffer *eb)
 	if (rcu_access_pointer(ctx->vm))
 		eb->invalid_flags |= EXEC_OBJECT_NEEDS_GTT;
 
-	eb->context_flags = 0;
+	/*
+	 * At the user's discretion, ensure that we place no objects at
+	 * offset 0, allowing them to use 0 as a 'NULL' pointer.
+	 */
+	eb->context_bias = 0;
 	if (test_bit(UCONTEXT_NO_ZEROMAP, &ctx->user_flags))
-		eb->context_flags |= __EXEC_OBJECT_NEEDS_BIAS;
+		eb->context_bias = I915_GTT_MIN_ALIGNMENT;
 
 	return 0;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
