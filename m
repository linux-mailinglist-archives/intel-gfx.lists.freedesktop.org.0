Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36444193E45
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 12:49:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98BD86E8B5;
	Thu, 26 Mar 2020 11:49:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D84D6E2E4
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 11:49:28 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 12:49:02 +0100
Message-Id: <20200326114922.1820274-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/21] Revert "drm/i915/gem: Drop relocation
 slowpath"
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 7dc8f1143778 ("drm/i915/gem: Drop relocation
slowpath"). We need the slowpath relocation for taking ww-mutex
inside the page fault handler, and we will take this mutex when
pinning all objects.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 239 +++++++++++++++++-
 1 file changed, 235 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index c643eec4dca0..b451aac69211 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1480,7 +1480,9 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
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
@@ -1530,6 +1532,236 @@ static int eb_relocate_vma(struct i915_execbuffer *eb, struct eb_vma *ev)
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
+	if (err)
+		goto out;
+
+	list_for_each_entry(ev, &eb->relocs, reloc_link) {
+		if (!have_copy) {
+			pagefault_disable();
+			err = eb_relocate_vma(eb, ev);
+			pagefault_enable();
+			if (err)
+				goto repeat;
+		} else {
+			err = eb_relocate_vma_slow(eb, ev);
+			if (err)
+				goto err;
+		}
+	}
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
@@ -1549,9 +1781,8 @@ static int eb_relocate(struct i915_execbuffer *eb)
 		struct eb_vma *ev;
 
 		list_for_each_entry(ev, &eb->relocs, reloc_link) {
-			err = eb_relocate_vma(eb, ev);
-			if (err)
-				return err;
+			if (eb_relocate_vma(eb, ev))
+				return eb_relocate_slow(eb);
 		}
 	}
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
