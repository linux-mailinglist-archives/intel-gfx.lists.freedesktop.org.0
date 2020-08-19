Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B283124A14B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 16:09:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03F976E3E1;
	Wed, 19 Aug 2020 14:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108206E329
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 14:09:11 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Aug 2020 16:08:43 +0200
Message-Id: <20200819140904.1708856-4-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
References: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 03/24] Revert "drm/i915/gem: Drop relocation
 slowpath".
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Matthew Auld <matthew.auld@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 7dc8f1143778 ("drm/i915/gem: Drop relocation
slowpath"). We need the slowpath relocation for taking ww-mutex
inside the page fault handler, and we will take this mutex when
pinning all objects.

We also functionally revert ef398881d27d ("drm/i915/gem: Limit
struct_mutex to eb_reserve"), as we need the struct_mutex in
the slowpath as well, and a tiny part of 003d8b9143a6 ("drm/i915/gem:
Only call eb_lookup_vma once during execbuf ioctl"). Specifically,
we make the -EAGAIN handling part of fallback to slowpath again.

With this, we have a proper working slowpath again, which
will allow us to do fault handling with WW locks held.

[mlankhorst: Adjusted for reloc_gpu_flush() changes]

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
[mlankhorst: Removed extra reloc_gpu_flush()]
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 262 +++++++++++++++++-
 1 file changed, 252 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 6acbd08f82f0..e8d713f78323 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -707,7 +707,7 @@ static int eb_reserve(struct i915_execbuffer *eb)
 			if (err)
 				break;
 		}
-		if (!(err == -ENOSPC || err == -EAGAIN))
+		if (err != -ENOSPC)
 			break;
 
 		/* Resort *all* the objects into priority order */
@@ -738,13 +738,6 @@ static int eb_reserve(struct i915_execbuffer *eb)
 		}
 		list_splice_tail(&last, &eb->unbound);
 
-		if (err == -EAGAIN) {
-			mutex_unlock(&eb->i915->drm.struct_mutex);
-			flush_workqueue(eb->i915->mm.userptr_wq);
-			mutex_lock(&eb->i915->drm.struct_mutex);
-			continue;
-		}
-
 		switch (pass++) {
 		case 0:
 			break;
@@ -1626,7 +1619,9 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 		 * we would try to acquire the struct mutex again. Obviously
 		 * this is bad and so lockdep complains vehemently.
 		 */
-		copied = __copy_from_user(r, urelocs, count * sizeof(r[0]));
+		pagefault_disable();
+		copied = __copy_from_user_inatomic(r, urelocs, count * sizeof(r[0]));
+		pagefault_enable();
 		if (unlikely(copied)) {
 			remain = -EFAULT;
 			goto out;
@@ -1674,6 +1669,250 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
 	return remain;
 }
 
+static int
+eb_relocate_vma_slow(struct i915_execbuffer *eb, struct eb_vma *ev)
+{
+	const struct drm_i915_gem_exec_object2 *entry = ev->exec;
+	struct drm_i915_gem_relocation_entry *relocs =
+		u64_to_ptr(typeof(*relocs), entry->relocs_ptr);
+	unsigned int i;
+	int err;
+
+	for (i = 0; i < entry->relocation_count; i++) {
+		u64 offset = eb_relocate_entry(eb, ev, &relocs[i]);
+
+		if ((s64)offset < 0) {
+			err = (int)offset;
+			goto err;
+		}
+	}
+	err = 0;
+err:
+	reloc_cache_reset(&eb->reloc_cache);
+	return err;
+}
+
+static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
+{
+	const char __user *addr, *end;
+	unsigned long size;
+	char __maybe_unused c;
+
+	size = entry->relocation_count;
+	if (size == 0)
+		return 0;
+
+	if (size > N_RELOC(ULONG_MAX))
+		return -EINVAL;
+
+	addr = u64_to_user_ptr(entry->relocs_ptr);
+	size *= sizeof(struct drm_i915_gem_relocation_entry);
+	if (!access_ok(addr, size))
+		return -EFAULT;
+
+	end = addr + size;
+	for (; addr < end; addr += PAGE_SIZE) {
+		int err = __get_user(c, addr);
+		if (err)
+			return err;
+	}
+	return __get_user(c, end - 1);
+}
+
+static int eb_copy_relocations(const struct i915_execbuffer *eb)
+{
+	struct drm_i915_gem_relocation_entry *relocs;
+	const unsigned int count = eb->buffer_count;
+	unsigned int i;
+	int err;
+
+	for (i = 0; i < count; i++) {
+		const unsigned int nreloc = eb->exec[i].relocation_count;
+		struct drm_i915_gem_relocation_entry __user *urelocs;
+		unsigned long size;
+		unsigned long copied;
+
+		if (nreloc == 0)
+			continue;
+
+		err = check_relocations(&eb->exec[i]);
+		if (err)
+			goto err;
+
+		urelocs = u64_to_user_ptr(eb->exec[i].relocs_ptr);
+		size = nreloc * sizeof(*relocs);
+
+		relocs = kvmalloc_array(size, 1, GFP_KERNEL);
+		if (!relocs) {
+			err = -ENOMEM;
+			goto err;
+		}
+
+		/* copy_from_user is limited to < 4GiB */
+		copied = 0;
+		do {
+			unsigned int len =
+				min_t(u64, BIT_ULL(31), size - copied);
+
+			if (__copy_from_user((char *)relocs + copied,
+					     (char __user *)urelocs + copied,
+					     len))
+				goto end;
+
+			copied += len;
+		} while (copied < size);
+
+		/*
+		 * As we do not update the known relocation offsets after
+		 * relocating (due to the complexities in lock handling),
+		 * we need to mark them as invalid now so that we force the
+		 * relocation processing next time. Just in case the target
+		 * object is evicted and then rebound into its old
+		 * presumed_offset before the next execbuffer - if that
+		 * happened we would make the mistake of assuming that the
+		 * relocations were valid.
+		 */
+		if (!user_access_begin(urelocs, size))
+			goto end;
+
+		for (copied = 0; copied < nreloc; copied++)
+			unsafe_put_user(-1,
+					&urelocs[copied].presumed_offset,
+					end_user);
+		user_access_end();
+
+		eb->exec[i].relocs_ptr = (uintptr_t)relocs;
+	}
+
+	return 0;
+
+end_user:
+	user_access_end();
+end:
+	kvfree(relocs);
+	err = -EFAULT;
+err:
+	while (i--) {
+		relocs = u64_to_ptr(typeof(*relocs), eb->exec[i].relocs_ptr);
+		if (eb->exec[i].relocation_count)
+			kvfree(relocs);
+	}
+	return err;
+}
+
+static int eb_prefault_relocations(const struct i915_execbuffer *eb)
+{
+	const unsigned int count = eb->buffer_count;
+	unsigned int i;
+
+	for (i = 0; i < count; i++) {
+		int err;
+
+		err = check_relocations(&eb->exec[i]);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+static noinline int eb_relocate_slow(struct i915_execbuffer *eb)
+{
+	bool have_copy = false;
+	struct eb_vma *ev;
+	int err = 0;
+
+repeat:
+	if (signal_pending(current)) {
+		err = -ERESTARTSYS;
+		goto out;
+	}
+
+	/*
+	 * We take 3 passes through the slowpatch.
+	 *
+	 * 1 - we try to just prefault all the user relocation entries and
+	 * then attempt to reuse the atomic pagefault disabled fast path again.
+	 *
+	 * 2 - we copy the user entries to a local buffer here outside of the
+	 * local and allow ourselves to wait upon any rendering before
+	 * relocations
+	 *
+	 * 3 - we already have a local copy of the relocation entries, but
+	 * were interrupted (EAGAIN) whilst waiting for the objects, try again.
+	 */
+	if (!err) {
+		err = eb_prefault_relocations(eb);
+	} else if (!have_copy) {
+		err = eb_copy_relocations(eb);
+		have_copy = err == 0;
+	} else {
+		cond_resched();
+		err = 0;
+	}
+
+	flush_workqueue(eb->i915->mm.userptr_wq);
+
+	if (err)
+		goto out;
+
+	err = mutex_lock_interruptible(&eb->i915->drm.struct_mutex);
+	if (err)
+		goto out;
+
+	list_for_each_entry(ev, &eb->relocs, reloc_link) {
+		if (!have_copy) {
+			pagefault_disable();
+			err = eb_relocate_vma(eb, ev);
+			pagefault_enable();
+			if (err)
+				break;
+		} else {
+			err = eb_relocate_vma_slow(eb, ev);
+			if (err)
+				break;
+		}
+	}
+
+	mutex_unlock(&eb->i915->drm.struct_mutex);
+	if (err && !have_copy)
+		goto repeat;
+
+	if (err)
+		goto err;
+
+	/*
+	 * Leave the user relocations as are, this is the painfully slow path,
+	 * and we want to avoid the complication of dropping the lock whilst
+	 * having buffers reserved in the aperture and so causing spurious
+	 * ENOSPC for random operations.
+	 */
+
+err:
+	if (err == -EAGAIN)
+		goto repeat;
+
+out:
+	if (have_copy) {
+		const unsigned int count = eb->buffer_count;
+		unsigned int i;
+
+		for (i = 0; i < count; i++) {
+			const struct drm_i915_gem_exec_object2 *entry =
+				&eb->exec[i];
+			struct drm_i915_gem_relocation_entry *relocs;
+
+			if (!entry->relocation_count)
+				continue;
+
+			relocs = u64_to_ptr(typeof(*relocs), entry->relocs_ptr);
+			kvfree(relocs);
+		}
+	}
+
+	return err;
+}
+
 static int eb_relocate(struct i915_execbuffer *eb)
 {
 	int err;
@@ -1695,8 +1934,11 @@ static int eb_relocate(struct i915_execbuffer *eb)
 		list_for_each_entry(ev, &eb->relocs, reloc_link) {
 			err = eb_relocate_vma(eb, ev);
 			if (err)
-				return err;
+				break;
 		}
+
+		if (err)
+			return eb_relocate_slow(eb);
 	}
 
 	return 0;
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
