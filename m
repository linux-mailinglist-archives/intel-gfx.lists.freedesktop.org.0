Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C401EFD3D
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 18:07:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 027F56E94A;
	Fri,  5 Jun 2020 16:07:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEECE6E94A
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 16:07:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21409116-1500050 
 for multiple; Fri, 05 Jun 2020 17:07:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jun 2020 17:07:18 +0100
Message-Id: <20200605160718.8676-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200605095858.28455-2-chris@chris-wilson.co.uk>
References: <20200605095858.28455-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gem: Separate reloc validation into
 an earlier step
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

v2: reuse the outer loop, not cut'n'paste.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 145 +++++++++++-------
 1 file changed, 86 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index cfe6d2cdbef1..7b9785754a25 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -911,9 +911,9 @@ static void eb_destroy(const struct i915_execbuffer *eb)
 
 static inline u64
 relocation_target(const struct drm_i915_gem_relocation_entry *reloc,
-		  const struct i915_vma *target)
+		  u64 target)
 {
-	return gen8_canonical_addr((int)reloc->delta + target->node.start);
+	return gen8_canonical_addr((int)reloc->delta + target);
 }
 
 static void reloc_cache_init(struct reloc_cache *cache,
@@ -1311,26 +1311,11 @@ static int __reloc_entry_gpu(struct i915_execbuffer *eb,
 	return 0;
 }
 
-static u64
-relocate_entry(struct i915_execbuffer *eb,
-	       struct i915_vma *vma,
-	       const struct drm_i915_gem_relocation_entry *reloc,
-	       const struct i915_vma *target)
-{
-	u64 target_addr = relocation_target(reloc, target);
-	int err;
-
-	err = __reloc_entry_gpu(eb, vma, reloc->offset, target_addr);
-	if (err)
-		return err;
-
-	return target->node.start | UPDATE;
-}
-
-static u64
-eb_relocate_entry(struct i915_execbuffer *eb,
-		  struct eb_vma *ev,
-		  const struct drm_i915_gem_relocation_entry *reloc)
+static int
+eb_reloc_prepare(struct i915_execbuffer *eb,
+		 struct eb_vma *ev,
+		 const struct drm_i915_gem_relocation_entry *reloc,
+		 struct drm_i915_gem_relocation_entry __user *user)
 {
 	struct drm_i915_private *i915 = eb->i915;
 	struct eb_vma *target;
@@ -1408,6 +1393,32 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 		return -EINVAL;
 	}
 
+	return 1;
+}
+
+static int
+eb_reloc_entry(struct i915_execbuffer *eb,
+	       struct eb_vma *ev,
+	       const struct drm_i915_gem_relocation_entry *reloc,
+	       struct drm_i915_gem_relocation_entry __user *user)
+{
+	struct eb_vma *target;
+	u64 offset;
+	int err;
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
+	offset = gen8_canonical_addr(target->vma->node.start);
+	if (offset == reloc->presumed_offset)
+		return 0;
+
 	/*
 	 * If we write into the object, we need to force the synchronisation
 	 * barrier, either with an asynchronous clflush or if we executed the
@@ -1418,11 +1429,41 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 	 */
 	ev->flags &= ~EXEC_OBJECT_ASYNC;
 
-	/* and update the user's relocation entry */
-	return relocate_entry(eb, ev->vma, reloc, target->vma);
+	err = __reloc_entry_gpu(eb, ev->vma, reloc->offset,
+				relocation_target(reloc, offset));
+	if (err)
+		return err;
+
+	/*
+	 * Note that reporting an error now
+	 * leaves everything in an inconsistent
+	 * state as we have *already* changed
+	 * the relocation value inside the
+	 * object. As we have not changed the
+	 * reloc.presumed_offset or will not
+	 * change the execobject.offset, on the
+	 * call we may not rewrite the value
+	 * inside the object, leaving it
+	 * dangling and causing a GPU hang. Unless
+	 * userspace dynamically rebuilds the
+	 * relocations on each execbuf rather than
+	 * presume a static tree.
+	 *
+	 * We did previously check if the relocations
+	 * were writable (access_ok), an error now
+	 * would be a strange race with mprotect,
+	 * having already demonstrated that we
+	 * can read from this userspace address.
+	 */
+	__put_user(offset, &user->presumed_offset);
+	return 0;
 }
 
-static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
+static long eb_reloc_vma(struct i915_execbuffer *eb, struct eb_vma *ev,
+			 int (*fn)(struct i915_execbuffer *eb,
+				   struct eb_vma *ev,
+				   const struct drm_i915_gem_relocation_entry *reloc,
+				   struct drm_i915_gem_relocation_entry __user *user))
 {
 #define N_RELOC(x) ((x) / sizeof(struct drm_i915_gem_relocation_entry))
 	struct drm_i915_gem_relocation_entry stack[N_RELOC(512)];
@@ -1430,6 +1471,7 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	struct drm_i915_gem_relocation_entry __user *urelocs =
 		u64_to_user_ptr(entry->relocs_ptr);
 	unsigned long remain = entry->relocation_count;
+	int required = 0;
 
 	if (unlikely(remain > N_RELOC(ULONG_MAX)))
 		return -EINVAL;
@@ -1462,42 +1504,18 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 
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
+			ret = fn(eb, ev, r, &urelocs[r - stack]);
+			if (ret < 0)
+				return ret;
+
+			required |= ret;
 		} while (r++, --count);
 		urelocs += ARRAY_SIZE(stack);
 	} while (remain);
 
-	return 0;
+	return required;
 }
 
 static int eb_relocate(struct i915_execbuffer *eb)
@@ -1516,12 +1534,21 @@ static int eb_relocate(struct i915_execbuffer *eb)
 
 	/* The objects are in their final locations, apply the relocations. */
 	if (eb->args->flags & __EXEC_HAS_RELOC) {
-		struct eb_vma *ev;
+		struct eb_vma *ev, *en;
 		int flush;
 
+		list_for_each_entry_safe(ev, en, &eb->relocs, reloc_link) {
+			err = eb_reloc_vma(eb, ev, eb_reloc_prepare);
+			if (err < 0)
+				return err;
+
+			if (err == 0)
+				list_del_init(&ev->reloc_link);
+		}
+
 		list_for_each_entry(ev, &eb->relocs, reloc_link) {
-			err = eb_relocate_vma(eb, ev);
-			if (err)
+			err = eb_reloc_vma(eb, ev, eb_reloc_entry);
+			if (err < 0)
 				break;
 		}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
