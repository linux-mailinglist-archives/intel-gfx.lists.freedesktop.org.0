Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 572E51EE29F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 12:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C32496E323;
	Thu,  4 Jun 2020 10:38:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F34189AC2
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 10:38:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21393762-1500050 
 for multiple; Thu, 04 Jun 2020 11:37:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jun 2020 11:37:45 +0100
Message-Id: <20200604103751.18816-16-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200604103751.18816-1-chris@chris-wilson.co.uk>
References: <20200604103751.18816-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/22] drm/i915/gem: Separate reloc validation
 into an earlier step
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

Over the next couple of patches, we will want to lock all the modified
vma for relocation processing under a single ww_mutex. We neither want
to have to include the vma that are skipped (due to no modifications
required) nor do we want those to be marked as written too. So separate
out the reloc validation into an early step, which we can use both to
reject the execbuf before committing to making our changes, and to
filter out the unmodified vma.

This does introduce a second pass through the reloc[], but only if we
need to emit relocations.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 178 +++++++++++++-----
 1 file changed, 133 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index ae3a3ff3535b..eda770f36b34 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1331,6 +1331,117 @@ static u64
 eb_relocate_entry(struct i915_execbuffer *eb,
 		  struct eb_vma *ev,
 		  const struct drm_i915_gem_relocation_entry *reloc)
+{
+	struct eb_vma *target;
+
+	/* we've already hold a reference to all valid objects */
+	target = eb_get_vma(eb, reloc->target_handle);
+	if (unlikely(!target))
+		return -ENOENT;
+
+	/*
+	 * If the relocation already has the right value in it, no
+	 * more work needs to be done.
+	 */
+	if (gen8_canonical_addr(target->vma->node.start) == reloc->presumed_offset)
+		return 0;
+
+	/*
+	 * If we write into the object, we need to force the synchronisation
+	 * barrier, either with an asynchronous clflush or if we executed the
+	 * patching using the GPU (though that should be serialised by the
+	 * timeline). To be completely sure, and since we are required to
+	 * do relocations we are already stalling, disable the user's opt
+	 * out of our synchronisation.
+	 */
+	ev->flags &= ~EXEC_OBJECT_ASYNC;
+
+	/* and update the user's relocation entry */
+	return relocate_entry(eb, ev->vma, reloc, target->vma);
+}
+
+static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
+{
+#define N_RELOC(x) ((x) / sizeof(struct drm_i915_gem_relocation_entry))
+	struct drm_i915_gem_relocation_entry stack[N_RELOC(512)];
+	const struct drm_i915_gem_exec_object2 *entry = ev->exec;
+	struct drm_i915_gem_relocation_entry __user *urelocs =
+		u64_to_user_ptr(entry->relocs_ptr);
+	unsigned long remain = entry->relocation_count;
+
+	if (unlikely(remain > N_RELOC(ULONG_MAX)))
+		return -EINVAL;
+
+	/*
+	 * We must check that the entire relocation array is safe
+	 * to read. However, if the array is not writable the user loses
+	 * the updated relocation values.
+	 */
+	if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
+		return -EFAULT;
+
+	do {
+		struct drm_i915_gem_relocation_entry *r = stack;
+		unsigned int count =
+			min_t(unsigned long, remain, ARRAY_SIZE(stack));
+		unsigned int copied;
+
+		/*
+		 * This is the fast path and we cannot handle a pagefault
+		 * whilst holding the struct mutex lest the user pass in the
+		 * relocations contained within a mmaped bo. For in such a case
+		 * we, the page fault handler would call i915_gem_fault() and
+		 * we would try to acquire the struct mutex again. Obviously
+		 * this is bad and so lockdep complains vehemently.
+		 */
+		copied = __copy_from_user(r, urelocs, count * sizeof(r[0]));
+		if (unlikely(copied))
+			return -EFAULT;
+
+		remain -= count;
+		do {
+			u64 offset = eb_relocate_entry(eb, ev, r);
+
+			if (likely(offset == 0)) {
+			} else if ((s64)offset < 0) {
+				return (int)offset;
+			} else {
+				/*
+				 * Note that reporting an error now
+				 * leaves everything in an inconsistent
+				 * state as we have *already* changed
+				 * the relocation value inside the
+				 * object. As we have not changed the
+				 * reloc.presumed_offset or will not
+				 * change the execobject.offset, on the
+				 * call we may not rewrite the value
+				 * inside the object, leaving it
+				 * dangling and causing a GPU hang. Unless
+				 * userspace dynamically rebuilds the
+				 * relocations on each execbuf rather than
+				 * presume a static tree.
+				 *
+				 * We did previously check if the relocations
+				 * were writable (access_ok), an error now
+				 * would be a strange race with mprotect,
+				 * having already demonstrated that we
+				 * can read from this userspace address.
+				 */
+				offset = gen8_canonical_addr(offset & ~UPDATE);
+				__put_user(offset,
+					   &urelocs[r - stack].presumed_offset);
+			}
+		} while (r++, --count);
+		urelocs += ARRAY_SIZE(stack);
+	} while (remain);
+
+	return 0;
+}
+
+static int
+eb_reloc_valid(struct i915_execbuffer *eb,
+	       struct eb_vma *ev,
+	       const struct drm_i915_gem_relocation_entry *reloc)
 {
 	struct drm_i915_private *i915 = eb->i915;
 	struct eb_vma *target;
@@ -1408,21 +1519,10 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 		return -EINVAL;
 	}
 
-	/*
-	 * If we write into the object, we need to force the synchronisation
-	 * barrier, either with an asynchronous clflush or if we executed the
-	 * patching using the GPU (though that should be serialised by the
-	 * timeline). To be completely sure, and since we are required to
-	 * do relocations we are already stalling, disable the user's opt
-	 * out of our synchronisation.
-	 */
-	ev->flags &= ~EXEC_OBJECT_ASYNC;
-
-	/* and update the user's relocation entry */
-	return relocate_entry(eb, ev->vma, reloc, target->vma);
+	return 1;
 }
 
-static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
+static long eb_reloc_vma_validate(struct i915_execbuffer *eb, struct eb_vma *ev)
 {
 #define N_RELOC(x) ((x) / sizeof(struct drm_i915_gem_relocation_entry))
 	struct drm_i915_gem_relocation_entry stack[N_RELOC(512)];
@@ -1430,6 +1530,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	struct drm_i915_gem_relocation_entry __user *urelocs =
 		u64_to_user_ptr(entry->relocs_ptr);
 	unsigned long remain = entry->relocation_count;
+	long required = 0;
 
 	if (unlikely(remain > N_RELOC(ULONG_MAX)))
 		return -EINVAL;
@@ -1462,42 +1563,18 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 
 		remain -= count;
 		do {
-			u64 offset = eb_relocate_entry(eb, ev, r);
+			int ret;
 
-			if (likely(offset == 0)) {
-			} else if ((s64)offset < 0) {
-				return (int)offset;
-			} else {
-				/*
-				 * Note that reporting an error now
-				 * leaves everything in an inconsistent
-				 * state as we have *already* changed
-				 * the relocation value inside the
-				 * object. As we have not changed the
-				 * reloc.presumed_offset or will not
-				 * change the execobject.offset, on the
-				 * call we may not rewrite the value
-				 * inside the object, leaving it
-				 * dangling and causing a GPU hang. Unless
-				 * userspace dynamically rebuilds the
-				 * relocations on each execbuf rather than
-				 * presume a static tree.
-				 *
-				 * We did previously check if the relocations
-				 * were writable (access_ok), an error now
-				 * would be a strange race with mprotect,
-				 * having already demonstrated that we
-				 * can read from this userspace address.
-				 */
-				offset = gen8_canonical_addr(offset & ~UPDATE);
-				__put_user(offset,
-					   &urelocs[r - stack].presumed_offset);
-			}
+			ret = eb_reloc_valid(eb, ev, r);
+			if (ret < 0)
+				return ret;
+
+			required += ret;
 		} while (r++, --count);
 		urelocs += ARRAY_SIZE(stack);
 	} while (remain);
 
-	return 0;
+	return required;
 }
 
 static int eb_relocate(struct i915_execbuffer *eb)
@@ -1516,9 +1593,20 @@ static int eb_relocate(struct i915_execbuffer *eb)
 
 	/* The objects are in their final locations, apply the relocations. */
 	if (eb->args->flags & __EXEC_HAS_RELOC) {
-		struct eb_vma *ev;
+		struct eb_vma *ev, *en;
 		int flush;
 
+		list_for_each_entry_safe(ev, en, &eb->relocs, reloc_link) {
+			long count;
+
+			count = eb_reloc_vma_validate(eb, ev);
+			if (count < 0)
+				return count;
+
+			if (count == 0)
+				list_del_init(&ev->reloc_link);
+		}
+
 		list_for_each_entry(ev, &eb->relocs, reloc_link) {
 			err = eb_relocate_vma(eb, ev);
 			if (err)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
