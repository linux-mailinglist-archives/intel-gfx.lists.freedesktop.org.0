Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B97215D5AA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 11:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80A526EB68;
	Fri, 14 Feb 2020 10:31:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 829A66EB6B
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 10:30:59 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Feb 2020 11:30:38 +0100
Message-Id: <20200214103055.2117836-3-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.0.24.g3f081b084b0
In-Reply-To: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
References: <20200214103055.2117836-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/19] drm/i915/gem: Extract transient execbuf
 flags from i915_vma
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

From: Chris Wilson <chris@chris-wilson.co.uk>

For our convenience, and to avoid frequent allocations, we placed some
lists we use for execbuf inside the common i915_vma struct. As we look
to parallelise execbuf, such fields guarded by the struct_mutex BKL must
be pulled under local control. Instead of using the i915_vma as our
primary means of tracking the user's list of objects and their virtual
mappings, we use a local eb_vma with the same lists as before (just now
local not global).

This should allow us to only perform the lookup of vma used for
execution once during the execbuf ioctl, as currently we need to remove
our secrets from inside i915_vma everytime we drop the struct_mutex as
another execbuf may use the shared locations.

Once user visible consequence is that we can remove the requirement that
the execobj[] be unique, and only require that they do not conflict
(i.e. you cannot softpin the same object into two locations... hmm, we
could allow that if truly required, but atm we only allow one vma per
ppGTT per object.)

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20191203121316.2972257-2-chris@chris-wilson.co.uk
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 279 +++++++++---------
 drivers/gpu/drm/i915/i915_vma_types.h         |  11 -
 2 files changed, 132 insertions(+), 158 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 87fa5f42c39a..efec64e92a74 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -28,6 +28,19 @@
 #include "i915_sw_fence_work.h"
 #include "i915_trace.h"
 
+struct eb_vma {
+	struct i915_vma *vma;
+	unsigned int flags;
+
+	/** This vma's place in the execbuf reservation list */
+	struct drm_i915_gem_exec_object2 *exec;
+	struct list_head bind_link;
+	struct list_head reloc_link;
+
+	struct hlist_node node;
+	u32 handle;
+};
+
 enum {
 	FORCE_CPU_RELOC = 1,
 	FORCE_GTT_RELOC,
@@ -220,15 +233,14 @@ struct i915_execbuffer {
 	struct drm_file *file; /** per-file lookup tables and limits */
 	struct drm_i915_gem_execbuffer2 *args; /** ioctl parameters */
 	struct drm_i915_gem_exec_object2 *exec; /** ioctl execobj[] */
-	struct i915_vma **vma;
-	unsigned int *flags;
+	struct eb_vma *vma;
 
 	struct intel_engine_cs *engine; /** engine to queue the request to */
 	struct intel_context *context; /* logical state for the request */
 	struct i915_gem_context *gem_context; /** caller's context */
 
 	struct i915_request *request; /** our request to build */
-	struct i915_vma *batch; /** identity of the batch obj/vma */
+	struct eb_vma *batch; /** identity of the batch obj/vma */
 	struct i915_vma *trampoline; /** trampoline used for chaining */
 
 	/** actual size of execobj[] as we may extend it for the cmdparser */
@@ -276,8 +288,6 @@ struct i915_execbuffer {
 	struct hlist_head *buckets; /** ht for relocation handles */
 };
 
-#define exec_entry(EB, VMA) (&(EB)->exec[(VMA)->exec_flags - (EB)->flags])
-
 static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
 {
 	return intel_engine_requires_cmd_parser(eb->engine) ||
@@ -364,9 +374,9 @@ eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
 static inline bool
 eb_pin_vma(struct i915_execbuffer *eb,
 	   const struct drm_i915_gem_exec_object2 *entry,
-	   struct i915_vma *vma)
+	   struct eb_vma *ev)
 {
-	unsigned int exec_flags = *vma->exec_flags;
+	struct i915_vma *vma = ev->vma;
 	u64 pin_flags;
 
 	if (vma->node.size)
@@ -375,24 +385,24 @@ eb_pin_vma(struct i915_execbuffer *eb,
 		pin_flags = entry->offset & PIN_OFFSET_MASK;
 
 	pin_flags |= PIN_USER | PIN_NOEVICT | PIN_OFFSET_FIXED;
-	if (unlikely(exec_flags & EXEC_OBJECT_NEEDS_GTT))
+	if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_GTT))
 		pin_flags |= PIN_GLOBAL;
 
 	if (unlikely(i915_vma_pin(vma, 0, 0, pin_flags)))
 		return false;
 
-	if (unlikely(exec_flags & EXEC_OBJECT_NEEDS_FENCE)) {
+	if (unlikely(ev->flags & EXEC_OBJECT_NEEDS_FENCE)) {
 		if (unlikely(i915_vma_pin_fence(vma))) {
 			i915_vma_unpin(vma);
 			return false;
 		}
 
 		if (vma->fence)
-			exec_flags |= __EXEC_OBJECT_HAS_FENCE;
+			ev->flags |= __EXEC_OBJECT_HAS_FENCE;
 	}
 
-	*vma->exec_flags = exec_flags | __EXEC_OBJECT_HAS_PIN;
-	return !eb_vma_misplaced(entry, vma, exec_flags);
+	ev->flags |= __EXEC_OBJECT_HAS_PIN;
+	return !eb_vma_misplaced(entry, vma, ev->flags);
 }
 
 static inline void __eb_unreserve_vma(struct i915_vma *vma, unsigned int flags)
@@ -406,13 +416,13 @@ static inline void __eb_unreserve_vma(struct i915_vma *vma, unsigned int flags)
 }
 
 static inline void
-eb_unreserve_vma(struct i915_vma *vma, unsigned int *flags)
+eb_unreserve_vma(struct eb_vma *ev)
 {
-	if (!(*flags & __EXEC_OBJECT_HAS_PIN))
+	if (!(ev->flags & __EXEC_OBJECT_HAS_PIN))
 		return;
 
-	__eb_unreserve_vma(vma, *flags);
-	*flags &= ~__EXEC_OBJECT_RESERVED;
+	__eb_unreserve_vma(ev->vma, ev->flags);
+	ev->flags &= ~__EXEC_OBJECT_RESERVED;
 }
 
 static int
@@ -420,7 +430,6 @@ eb_validate_vma(struct i915_execbuffer *eb,
 		struct drm_i915_gem_exec_object2 *entry,
 		struct i915_vma *vma)
 {
-	struct drm_i915_private *i915 = eb->i915;
 	if (unlikely(entry->flags & eb->invalid_flags))
 		return -EINVAL;
 
@@ -442,14 +451,6 @@ eb_validate_vma(struct i915_execbuffer *eb,
 	} else {
 		entry->pad_to_size = 0;
 	}
-
-	if (unlikely(vma->exec_flags)) {
-		drm_dbg(&i915->drm,
-			"Object [handle %d, index %d] appears more than once in object list\n",
-			entry->handle, (int)(entry - eb->exec));
-		return -EINVAL;
-	}
-
 	/*
 	 * From drm_mm perspective address space is continuous,
 	 * so from this point we're always using non-canonical
@@ -478,6 +479,7 @@ eb_add_vma(struct i915_execbuffer *eb,
 	   struct i915_vma *vma)
 {
 	struct drm_i915_gem_exec_object2 *entry = &eb->exec[i];
+	struct eb_vma *ev = &eb->vma[i];
 	int err;
 
 	GEM_BUG_ON(i915_vma_is_closed(vma));
@@ -488,25 +490,19 @@ eb_add_vma(struct i915_execbuffer *eb,
 			return err;
 	}
 
+	ev->vma = vma;
+	ev->exec = entry;
+	ev->flags = entry->flags;
+
 	if (eb->lut_size > 0) {
-		vma->exec_handle = entry->handle;
-		hlist_add_head(&vma->exec_node,
+		ev->handle = entry->handle;
+		hlist_add_head(&ev->node,
 			       &eb->buckets[hash_32(entry->handle,
 						    eb->lut_size)]);
 	}
 
 	if (entry->relocation_count)
-		list_add_tail(&vma->reloc_link, &eb->relocs);
-
-	/*
-	 * Stash a pointer from the vma to execobj, so we can query its flags,
-	 * size, alignment etc as provided by the user. Also we stash a pointer
-	 * to the vma inside the execobj so that we can use a direct lookup
-	 * to find the right target VMA when doing relocations.
-	 */
-	eb->vma[i] = vma;
-	eb->flags[i] = entry->flags;
-	vma->exec_flags = &eb->flags[i];
+		list_add_tail(&ev->reloc_link, &eb->relocs);
 
 	/*
 	 * SNA is doing fancy tricks with compressing batch buffers, which leads
@@ -519,28 +515,26 @@ eb_add_vma(struct i915_execbuffer *eb,
 	 */
 	if (i == batch_idx) {
 		if (entry->relocation_count &&
-		    !(eb->flags[i] & EXEC_OBJECT_PINNED))
-			eb->flags[i] |= __EXEC_OBJECT_NEEDS_BIAS;
+		    !(ev->flags & EXEC_OBJECT_PINNED))
+			ev->flags |= __EXEC_OBJECT_NEEDS_BIAS;
 		if (eb->reloc_cache.has_fence)
-			eb->flags[i] |= EXEC_OBJECT_NEEDS_FENCE;
+			ev->flags |= EXEC_OBJECT_NEEDS_FENCE;
 
-		eb->batch = vma;
+		eb->batch = ev;
 	}
 
 	err = 0;
-	if (eb_pin_vma(eb, entry, vma)) {
+	if (eb_pin_vma(eb, entry, ev)) {
 		if (entry->offset != vma->node.start) {
 			entry->offset = vma->node.start | UPDATE;
 			eb->args->flags |= __EXEC_HAS_RELOC;
 		}
 	} else {
-		eb_unreserve_vma(vma, vma->exec_flags);
+		eb_unreserve_vma(ev);
 
-		list_add_tail(&vma->exec_link, &eb->unbound);
+		list_add_tail(&ev->bind_link, &eb->unbound);
 		if (drm_mm_node_allocated(&vma->node))
 			err = i915_vma_unbind(vma);
-		if (unlikely(err))
-			vma->exec_flags = NULL;
 	}
 	return err;
 }
@@ -562,11 +556,11 @@ static inline int use_cpu_reloc(const struct reloc_cache *cache,
 		obj->cache_level != I915_CACHE_NONE);
 }
 
-static int eb_reserve_vma(const struct i915_execbuffer *eb,
-			  struct i915_vma *vma)
+static int eb_reserve_vma(const struct i915_execbuffer *eb, struct eb_vma *ev)
 {
-	struct drm_i915_gem_exec_object2 *entry = exec_entry(eb, vma);
-	unsigned int exec_flags = *vma->exec_flags;
+	struct drm_i915_gem_exec_object2 *entry = ev->exec;
+	unsigned int exec_flags = ev->flags;
+	struct i915_vma *vma = ev->vma;
 	u64 pin_flags;
 	int err;
 
@@ -613,8 +607,8 @@ static int eb_reserve_vma(const struct i915_execbuffer *eb,
 			exec_flags |= __EXEC_OBJECT_HAS_FENCE;
 	}
 
-	*vma->exec_flags = exec_flags | __EXEC_OBJECT_HAS_PIN;
-	GEM_BUG_ON(eb_vma_misplaced(entry, vma, exec_flags));
+	ev->flags = exec_flags | __EXEC_OBJECT_HAS_PIN;
+	GEM_BUG_ON(eb_vma_misplaced(entry, vma, ev->flags));
 
 	return 0;
 }
@@ -623,7 +617,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
 {
 	const unsigned int count = eb->buffer_count;
 	struct list_head last;
-	struct i915_vma *vma;
+	struct eb_vma *ev;
 	unsigned int i, pass;
 	int err;
 
@@ -644,8 +638,8 @@ static int eb_reserve(struct i915_execbuffer *eb)
 	pass = 0;
 	err = 0;
 	do {
-		list_for_each_entry(vma, &eb->unbound, exec_link) {
-			err = eb_reserve_vma(eb, vma);
+		list_for_each_entry(ev, &eb->unbound, bind_link) {
+			err = eb_reserve_vma(eb, ev);
 			if (err)
 				break;
 		}
@@ -656,26 +650,26 @@ static int eb_reserve(struct i915_execbuffer *eb)
 		INIT_LIST_HEAD(&eb->unbound);
 		INIT_LIST_HEAD(&last);
 		for (i = 0; i < count; i++) {
-			unsigned int flags = eb->flags[i];
-			struct i915_vma *vma = eb->vma[i];
+			struct eb_vma *ev = &eb->vma[i];
+			unsigned int flags = ev->flags;
 
 			if (flags & EXEC_OBJECT_PINNED &&
 			    flags & __EXEC_OBJECT_HAS_PIN)
 				continue;
 
-			eb_unreserve_vma(vma, &eb->flags[i]);
+			eb_unreserve_vma(ev);
 
 			if (flags & EXEC_OBJECT_PINNED)
 				/* Pinned must have their slot */
-				list_add(&vma->exec_link, &eb->unbound);
+				list_add(&ev->bind_link, &eb->unbound);
 			else if (flags & __EXEC_OBJECT_NEEDS_MAP)
 				/* Map require the lowest 256MiB (aperture) */
-				list_add_tail(&vma->exec_link, &eb->unbound);
+				list_add_tail(&ev->bind_link, &eb->unbound);
 			else if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS))
 				/* Prioritise 4GiB region for restricted bo */
-				list_add(&vma->exec_link, &last);
+				list_add(&ev->bind_link, &last);
 			else
-				list_add_tail(&vma->exec_link, &last);
+				list_add_tail(&ev->bind_link, &last);
 		}
 		list_splice_tail(&last, &eb->unbound);
 
@@ -791,10 +785,8 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 		if (unlikely(err))
 			goto err_vma;
 
-		GEM_BUG_ON(vma != eb->vma[i]);
-		GEM_BUG_ON(vma->exec_flags != &eb->flags[i]);
 		GEM_BUG_ON(drm_mm_node_allocated(&vma->node) &&
-			   eb_vma_misplaced(&eb->exec[i], vma, eb->flags[i]));
+			   eb_vma_misplaced(&eb->exec[i], vma, eb->vma[i].flags));
 	}
 
 	mutex_unlock(&eb->gem_context->mutex);
@@ -805,27 +797,27 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
 err_obj:
 	i915_gem_object_put(obj);
 err_vma:
-	eb->vma[i] = NULL;
+	eb->vma[i].vma = NULL;
 err_ctx:
 	mutex_unlock(&eb->gem_context->mutex);
 	return err;
 }
 
-static struct i915_vma *
+static struct eb_vma *
 eb_get_vma(const struct i915_execbuffer *eb, unsigned long handle)
 {
 	if (eb->lut_size < 0) {
 		if (handle >= -eb->lut_size)
 			return NULL;
-		return eb->vma[handle];
+		return &eb->vma[handle];
 	} else {
 		struct hlist_head *head;
-		struct i915_vma *vma;
+		struct eb_vma *ev;
 
 		head = &eb->buckets[hash_32(handle, eb->lut_size)];
-		hlist_for_each_entry(vma, head, exec_node) {
-			if (vma->exec_handle == handle)
-				return vma;
+		hlist_for_each_entry(ev, head, node) {
+			if (ev->handle == handle)
+				return ev;
 		}
 		return NULL;
 	}
@@ -837,20 +829,18 @@ static void eb_release_vmas(const struct i915_execbuffer *eb)
 	unsigned int i;
 
 	for (i = 0; i < count; i++) {
-		struct i915_vma *vma = eb->vma[i];
-		unsigned int flags = eb->flags[i];
+		struct eb_vma *ev = &eb->vma[i];
+		struct i915_vma *vma = ev->vma;
 
 		if (!vma)
 			break;
 
-		GEM_BUG_ON(vma->exec_flags != &eb->flags[i]);
-		vma->exec_flags = NULL;
-		eb->vma[i] = NULL;
+		eb->vma[i].vma = NULL;
 
-		if (flags & __EXEC_OBJECT_HAS_PIN)
-			__eb_unreserve_vma(vma, flags);
+		if (ev->flags & __EXEC_OBJECT_HAS_PIN)
+			__eb_unreserve_vma(vma, ev->flags);
 
-		if (flags & __EXEC_OBJECT_HAS_REF)
+		if (ev->flags & __EXEC_OBJECT_HAS_REF)
 			i915_vma_put(vma);
 	}
 }
@@ -1329,11 +1319,11 @@ relocate_entry(struct i915_vma *vma,
 
 static u64
 eb_relocate_entry(struct i915_execbuffer *eb,
-		  struct i915_vma *vma,
+		  struct eb_vma *ev,
 		  const struct drm_i915_gem_relocation_entry *reloc)
 {
 	struct drm_i915_private *i915 = eb->i915;
-	struct i915_vma *target;
+	struct eb_vma *target;
 	int err;
 
 	/* we've already hold a reference to all valid objects */
@@ -1365,7 +1355,7 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 	}
 
 	if (reloc->write_domain) {
-		*target->exec_flags |= EXEC_OBJECT_WRITE;
+		target->flags |= EXEC_OBJECT_WRITE;
 
 		/*
 		 * Sandybridge PPGTT errata: We need a global gtt mapping
@@ -1375,7 +1365,8 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 		 */
 		if (reloc->write_domain == I915_GEM_DOMAIN_INSTRUCTION &&
 		    IS_GEN(eb->i915, 6)) {
-			err = i915_vma_bind(target, target->obj->cache_level,
+			err = i915_vma_bind(target->vma,
+					    target->vma->obj->cache_level,
 					    PIN_GLOBAL, NULL);
 			if (WARN_ONCE(err,
 				      "Unexpected failure to bind target VMA!"))
@@ -1388,17 +1379,17 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 	 * more work needs to be done.
 	 */
 	if (!DBG_FORCE_RELOC &&
-	    gen8_canonical_addr(target->node.start) == reloc->presumed_offset)
+	    gen8_canonical_addr(target->vma->node.start) == reloc->presumed_offset)
 		return 0;
 
 	/* Check that the relocation address is valid... */
 	if (unlikely(reloc->offset >
-		     vma->size - (eb->reloc_cache.use_64bit_reloc ? 8 : 4))) {
+		     ev->vma->size - (eb->reloc_cache.use_64bit_reloc ? 8 : 4))) {
 		drm_dbg(&i915->drm, "Relocation beyond object bounds: "
 			  "target %d offset %d size %d.\n",
 			  reloc->target_handle,
 			  (int)reloc->offset,
-			  (int)vma->size);
+			  (int)ev->vma->size);
 		return -EINVAL;
 	}
 	if (unlikely(reloc->offset & 3)) {
@@ -1417,18 +1408,18 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 	 * do relocations we are already stalling, disable the user's opt
 	 * out of our synchronisation.
 	 */
-	*vma->exec_flags &= ~EXEC_OBJECT_ASYNC;
+	ev->flags &= ~EXEC_OBJECT_ASYNC;
 
 	/* and update the user's relocation entry */
-	return relocate_entry(vma, reloc, eb, target);
+	return relocate_entry(ev->vma, reloc, eb, target->vma);
 }
 
-static int eb_relocate_vma(struct i915_execbuffer *eb, struct i915_vma *vma)
+static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 {
 #define N_RELOC(x) ((x) / sizeof(struct drm_i915_gem_relocation_entry))
 	struct drm_i915_gem_relocation_entry stack[N_RELOC(512)];
 	struct drm_i915_gem_relocation_entry __user *urelocs;
-	const struct drm_i915_gem_exec_object2 *entry = exec_entry(eb, vma);
+	const struct drm_i915_gem_exec_object2 *entry = ev->exec;
 	unsigned int remain;
 
 	urelocs = u64_to_user_ptr(entry->relocs_ptr);
@@ -1468,7 +1459,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct i915_vma *vma)
 
 		remain -= count;
 		do {
-			u64 offset = eb_relocate_entry(eb, vma, r);
+			u64 offset = eb_relocate_entry(eb, ev, r);
 
 			if (likely(offset == 0)) {
 			} else if ((s64)offset < 0) {
@@ -1511,16 +1502,16 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct i915_vma *vma)
 }
 
 static int
-eb_relocate_vma_slow(struct i915_execbuffer *eb, struct i915_vma *vma)
+eb_relocate_vma_slow(struct i915_execbuffer *eb, struct eb_vma *ev)
 {
-	const struct drm_i915_gem_exec_object2 *entry = exec_entry(eb, vma);
+	const struct drm_i915_gem_exec_object2 *entry = ev->exec;
 	struct drm_i915_gem_relocation_entry *relocs =
 		u64_to_ptr(typeof(*relocs), entry->relocs_ptr);
 	unsigned int i;
 	int err;
 
 	for (i = 0; i < entry->relocation_count; i++) {
-		u64 offset = eb_relocate_entry(eb, vma, &relocs[i]);
+		u64 offset = eb_relocate_entry(eb, ev, &relocs[i]);
 
 		if ((s64)offset < 0) {
 			err = (int)offset;
@@ -1661,7 +1652,7 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 {
 	struct drm_device *dev = &eb->i915->drm;
 	bool have_copy = false;
-	struct i915_vma *vma;
+	struct eb_vma *ev;
 	int err = 0;
 
 repeat:
@@ -1717,15 +1708,15 @@ static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
 
 	GEM_BUG_ON(!eb->batch);
 
-	list_for_each_entry(vma, &eb->relocs, reloc_link) {
+	list_for_each_entry(ev, &eb->relocs, reloc_link) {
 		if (!have_copy) {
 			pagefault_disable();
-			err = eb_relocate_vma(eb, vma);
+			err = eb_relocate_vma(eb, ev);
 			pagefault_enable();
 			if (err)
 				goto repeat;
 		} else {
-			err = eb_relocate_vma_slow(eb, vma);
+			err = eb_relocate_vma_slow(eb, ev);
 			if (err)
 				goto err;
 		}
@@ -1770,10 +1761,10 @@ static int eb_relocate(struct i915_execbuffer *eb)
 
 	/* The objects are in their final locations, apply the relocations. */
 	if (eb->args->flags & __EXEC_HAS_RELOC) {
-		struct i915_vma *vma;
+		struct eb_vma *ev;
 
-		list_for_each_entry(vma, &eb->relocs, reloc_link) {
-			if (eb_relocate_vma(eb, vma))
+		list_for_each_entry(ev, &eb->relocs, reloc_link) {
+			if (eb_relocate_vma(eb, ev))
 				goto slow;
 		}
 	}
@@ -1794,39 +1785,34 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 	ww_acquire_init(&acquire, &reservation_ww_class);
 
 	for (i = 0; i < count; i++) {
-		struct i915_vma *vma = eb->vma[i];
+		struct eb_vma *ev = &eb->vma[i];
+		struct i915_vma *vma = ev->vma;
 
 		err = ww_mutex_lock_interruptible(&vma->resv->lock, &acquire);
-		if (!err)
-			continue;
-
-		GEM_BUG_ON(err == -EALREADY); /* No duplicate vma */
-
 		if (err == -EDEADLK) {
 			GEM_BUG_ON(i == 0);
 			do {
 				int j = i - 1;
 
-				ww_mutex_unlock(&eb->vma[j]->resv->lock);
+				ww_mutex_unlock(&eb->vma[j].vma->resv->lock);
 
-				swap(eb->flags[i], eb->flags[j]);
 				swap(eb->vma[i],  eb->vma[j]);
-				eb->vma[i]->exec_flags = &eb->flags[i];
 			} while (--i);
-			GEM_BUG_ON(vma != eb->vma[0]);
-			vma->exec_flags = &eb->flags[0];
 
 			err = ww_mutex_lock_slow_interruptible(&vma->resv->lock,
 							       &acquire);
 		}
+		if (err == -EALREADY)
+			err = 0;
 		if (err)
 			break;
 	}
 	ww_acquire_done(&acquire);
 
 	while (i--) {
-		unsigned int flags = eb->flags[i];
-		struct i915_vma *vma = eb->vma[i];
+		struct eb_vma *ev = &eb->vma[i];
+		struct i915_vma *vma = ev->vma;
+		unsigned int flags = ev->flags;
 		struct drm_i915_gem_object *obj = vma->obj;
 
 		assert_vma_held(vma);
@@ -1870,10 +1856,10 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
 		i915_vma_unlock(vma);
 
 		__eb_unreserve_vma(vma, flags);
-		vma->exec_flags = NULL;
-
 		if (unlikely(flags & __EXEC_OBJECT_HAS_REF))
 			i915_vma_put(vma);
+
+		ev->vma = NULL;
 	}
 	ww_acquire_fini(&acquire);
 
@@ -2008,7 +1994,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	if (!pw)
 		return -ENOMEM;
 
-	err = i915_active_acquire(&eb->batch->active);
+	err = i915_active_acquire(&eb->batch->vma->active);
 	if (err)
 		goto err_free;
 
@@ -2025,7 +2011,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 	dma_fence_work_init(&pw->base, &eb_parse_ops);
 
 	pw->engine = eb->engine;
-	pw->batch = eb->batch;
+	pw->batch = eb->batch->vma;
 	pw->batch_offset = eb->batch_start_offset;
 	pw->batch_length = eb->batch_len;
 	pw->shadow = shadow;
@@ -2067,7 +2053,7 @@ static int eb_parse_pipeline(struct i915_execbuffer *eb,
 err_shadow:
 	i915_active_release(&shadow->active);
 err_batch:
-	i915_active_release(&eb->batch->active);
+	i915_active_release(&eb->batch->vma->active);
 err_free:
 	kfree(pw);
 	return err;
@@ -2130,15 +2116,13 @@ static int eb_parse(struct i915_execbuffer *eb)
 	if (err)
 		goto err_trampoline;
 
-	eb->vma[eb->buffer_count] = i915_vma_get(shadow);
-	eb->flags[eb->buffer_count] =
+	eb->vma[eb->buffer_count].vma = i915_vma_get(shadow);
+	eb->vma[eb->buffer_count].flags =
 		__EXEC_OBJECT_HAS_PIN | __EXEC_OBJECT_HAS_REF;
-	shadow->exec_flags = &eb->flags[eb->buffer_count];
-	eb->buffer_count++;
+	eb->batch = &eb->vma[eb->buffer_count++];
 
 	eb->trampoline = trampoline;
 	eb->batch_start_offset = 0;
-	eb->batch = shadow;
 
 	shadow->private = pool;
 	return 0;
@@ -2165,7 +2149,7 @@ add_to_client(struct i915_request *rq, struct drm_file *file)
 	spin_unlock(&file_priv->mm.lock);
 }
 
-static int eb_submit(struct i915_execbuffer *eb)
+static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
 {
 	int err;
 
@@ -2192,7 +2176,7 @@ static int eb_submit(struct i915_execbuffer *eb)
 	}
 
 	err = eb->engine->emit_bb_start(eb->request,
-					eb->batch->node.start +
+					batch->node.start +
 					eb->batch_start_offset,
 					eb->batch_len,
 					eb->batch_flags);
@@ -2572,6 +2556,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	struct dma_fence *in_fence = NULL;
 	struct dma_fence *exec_fence = NULL;
 	struct sync_file *out_fence = NULL;
+	struct i915_vma *batch;
 	int out_fence_fd = -1;
 	int err;
 
@@ -2586,9 +2571,8 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		args->flags |= __EXEC_HAS_RELOC;
 
 	eb.exec = exec;
-	eb.vma = (struct i915_vma **)(exec + args->buffer_count + 1);
-	eb.vma[0] = NULL;
-	eb.flags = (unsigned int *)(eb.vma + args->buffer_count + 1);
+	eb.vma = (struct eb_vma *)(exec + args->buffer_count + 1);
+	eb.vma[0].vma = NULL;
 
 	eb.invalid_flags = __EXEC_OBJECT_UNKNOWN_FLAGS;
 	reloc_cache_init(&eb.reloc_cache, eb.i915);
@@ -2673,21 +2657,23 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		goto err_vma;
 	}
 
-	if (unlikely(*eb.batch->exec_flags & EXEC_OBJECT_WRITE)) {
+	if (unlikely(eb.batch->flags & EXEC_OBJECT_WRITE)) {
 		drm_dbg(&i915->drm,
 			"Attempting to use self-modifying batch buffer\n");
 		err = -EINVAL;
 		goto err_vma;
 	}
-	if (eb.batch_start_offset > eb.batch->size ||
-	    eb.batch_len > eb.batch->size - eb.batch_start_offset) {
+
+	if (range_overflows_t(u64,
+			      eb.batch_start_offset, eb.batch_len,
+			      eb.batch->vma->size)) {
 		drm_dbg(&i915->drm, "Attempting to use out-of-bounds batch\n");
 		err = -EINVAL;
 		goto err_vma;
 	}
 
 	if (eb.batch_len == 0)
-		eb.batch_len = eb.batch->size - eb.batch_start_offset;
+		eb.batch_len = eb.batch->vma->size - eb.batch_start_offset;
 
 	err = eb_parse(&eb);
 	if (err)
@@ -2697,6 +2683,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	 * snb/ivb/vlv conflate the "batch in ppgtt" bit with the "non-secure
 	 * batch" bit. Hence we need to pin secure batches into the global gtt.
 	 * hsw should have this fixed, but bdw mucks it up again. */
+	batch = eb.batch->vma;
 	if (eb.batch_flags & I915_DISPATCH_SECURE) {
 		struct i915_vma *vma;
 
@@ -2710,13 +2697,13 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		 *   fitting due to fragmentation.
 		 * So this is actually safe.
 		 */
-		vma = i915_gem_object_ggtt_pin(eb.batch->obj, NULL, 0, 0, 0);
+		vma = i915_gem_object_ggtt_pin(batch->obj, NULL, 0, 0, 0);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
 			goto err_vma;
 		}
 
-		eb.batch = vma;
+		batch = vma;
 	}
 
 	/* All GPU relocation batches must be submitted prior to the user rq */
@@ -2763,12 +2750,12 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	 * inactive_list and lose its active reference. Hence we do not need
 	 * to explicitly hold another reference here.
 	 */
-	eb.request->batch = eb.batch;
-	if (eb.batch->private)
-		intel_engine_pool_mark_active(eb.batch->private, eb.request);
+	eb.request->batch = batch;
+	if (batch->private)
+		intel_engine_pool_mark_active(batch->private, eb.request);
 
 	trace_i915_request_queue(eb.request, eb.batch_flags);
-	err = eb_submit(&eb);
+	err = eb_submit(&eb, batch);
 err_request:
 	add_to_client(eb.request, file);
 	i915_request_get(eb.request);
@@ -2791,9 +2778,9 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 
 err_batch_unpin:
 	if (eb.batch_flags & I915_DISPATCH_SECURE)
-		i915_vma_unpin(eb.batch);
-	if (eb.batch->private)
-		intel_engine_pool_put(eb.batch->private);
+		i915_vma_unpin(batch);
+	if (batch->private)
+		intel_engine_pool_put(batch->private);
 err_vma:
 	if (eb.exec)
 		eb_release_vmas(&eb);
@@ -2818,9 +2805,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 
 static size_t eb_element_size(void)
 {
-	return (sizeof(struct drm_i915_gem_exec_object2) +
-		sizeof(struct i915_vma *) +
-		sizeof(unsigned int));
+	return sizeof(struct drm_i915_gem_exec_object2) + sizeof(struct eb_vma);
 }
 
 static bool check_buffer_count(size_t count)
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index e0942efd5236..63831cdb7402 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -273,21 +273,10 @@ struct i915_vma {
 	struct rb_node obj_node;
 	struct hlist_node obj_hash;
 
-	/** This vma's place in the execbuf reservation list */
-	struct list_head exec_link;
-	struct list_head reloc_link;
-
 	/** This vma's place in the eviction list */
 	struct list_head evict_link;
 
 	struct list_head closed_link;
-
-	/**
-	 * Used for performing relocations during execbuffer insertion.
-	 */
-	unsigned int *exec_flags;
-	struct hlist_node exec_node;
-	u32 exec_handle;
 };
 
 #endif
-- 
2.25.0.24.g3f081b084b0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
