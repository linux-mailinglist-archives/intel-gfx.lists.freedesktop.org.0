Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BA64CFC65
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 12:13:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3490810F648;
	Mon,  7 Mar 2022 11:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F4BE10EA70;
 Sun,  6 Mar 2022 03:27:46 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id CBC75B80CB0;
 Sun,  6 Mar 2022 03:27:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0E25C340F3;
 Sun,  6 Mar 2022 03:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646537263;
 bh=09ZweK9i1u0ASFApgXgW2Nh8jSgj+rn5+iNYfmKx5GM=;
 h=From:To:Cc:Subject:Date:From;
 b=Jj9ij6RDwvXlxM74BaGmcS6hW70GzXx6LrhqvIczWA9FnkC+Pd6DaaNfcxohQQOSG
 4yESnK7GH/oKl+Qw1NOT8HrBxUfPxNfZnarVI/E8yUUdhXQM5nyNGM65aZJT+PS7ET
 q93aUGiux960MOzw1DTBaD6dOaez/ykQ9KEWBY6a+4kYOVy80nus0yHUypHjeFG4ZG
 fVtiXQzjToNkCfe6FR+LTQUNkjhmkK3pzPvOs5EacvNk8XjKkie9KHt9zxW1eYrn4V
 GrvsJBvKskdD2HF8rEgoYifAt0m5id9bi9phxFbDpEmWVg8d/35SlPUHzaGAvV8w0+
 djSqyVIJiNaog==
From: Jarkko Sakkinen <jarkko@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Sun,  6 Mar 2022 05:26:55 +0200
Message-Id: <20220306032655.97863-1-jarkko@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 07 Mar 2022 11:13:15 +0000
Subject: [Intel-gfx] [PATCH RFC v2] mm: Add f_ops->populate()
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
Cc: jaharkes@cs.cmu.edu, Nathaniel McCallum <nathaniel@profian.com>,
 linux-unionfs@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mips@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Jarkko Sakkinen <jarkko@kernel.org>,
 linux-fsdevel@vger.kernel.org, Reinette Chatre <reinette.chatre@intel.com>,
 codalist@coda.cs.cmu.edu, linux-sgx@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sometimes you might want to use MAP_POPULATE to ask a device driver to
initialize the device memory in some specific manner. SGX driver can use
this to request more memory by issuing ENCLS[EAUG] x86 opcode for each
page in the address range.

Add f_ops->populate() with the same parameters as f_ops->mmap() and make
it conditionally called inside call_mmap(). Update call sites
accodingly.

Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
---
v2:
-       if (!ret && do_populate)
+       if (!ret && do_populate && file->f_op->populate)
(reported by Jan Harkes)
---
 arch/mips/kernel/vdso.c                    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c |  2 +-
 fs/coda/file.c                             |  2 +-
 fs/overlayfs/file.c                        |  2 +-
 include/linux/fs.h                         | 10 ++++++++--
 include/linux/mm.h                         |  2 +-
 ipc/shm.c                                  |  2 +-
 mm/mmap.c                                  | 10 +++++-----
 mm/nommu.c                                 |  4 ++--
 9 files changed, 21 insertions(+), 15 deletions(-)

diff --git a/arch/mips/kernel/vdso.c b/arch/mips/kernel/vdso.c
index 3d0cf471f2fe..89f3f3da9abd 100644
--- a/arch/mips/kernel/vdso.c
+++ b/arch/mips/kernel/vdso.c
@@ -102,7 +102,7 @@ int arch_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
 		base = mmap_region(NULL, STACK_TOP, PAGE_SIZE,
 				VM_READ | VM_EXEC |
 				VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC,
-				0, NULL);
+				0, NULL, false);
 		if (IS_ERR_VALUE(base)) {
 			ret = base;
 			goto out;
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
index 1b526039a60d..4c71f64d6a79 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
@@ -107,7 +107,7 @@ static int i915_gem_dmabuf_mmap(struct dma_buf *dma_buf, struct vm_area_struct *
 	if (!obj->base.filp)
 		return -ENODEV;
 
-	ret = call_mmap(obj->base.filp, vma);
+	ret = call_mmap(obj->base.filp, vma, false);
 	if (ret)
 		return ret;
 
diff --git a/fs/coda/file.c b/fs/coda/file.c
index 29dd87be2fb8..e14f312fdbf8 100644
--- a/fs/coda/file.c
+++ b/fs/coda/file.c
@@ -173,7 +173,7 @@ coda_file_mmap(struct file *coda_file, struct vm_area_struct *vma)
 	spin_unlock(&cii->c_lock);
 
 	vma->vm_file = get_file(host_file);
-	ret = call_mmap(vma->vm_file, vma);
+	ret = call_mmap(vma->vm_file, vma, false);
 
 	if (ret) {
 		/* if call_mmap fails, our caller will put host_file so we
diff --git a/fs/overlayfs/file.c b/fs/overlayfs/file.c
index fa125feed0ff..b963a9397e80 100644
--- a/fs/overlayfs/file.c
+++ b/fs/overlayfs/file.c
@@ -503,7 +503,7 @@ static int ovl_mmap(struct file *file, struct vm_area_struct *vma)
 	vma_set_file(vma, realfile);
 
 	old_cred = ovl_override_creds(file_inode(file)->i_sb);
-	ret = call_mmap(vma->vm_file, vma);
+	ret = call_mmap(vma->vm_file, vma, false);
 	revert_creds(old_cred);
 	ovl_file_accessed(file);
 
diff --git a/include/linux/fs.h b/include/linux/fs.h
index e2d892b201b0..4c6a3339373d 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -1993,6 +1993,7 @@ struct file_operations {
 	long (*unlocked_ioctl) (struct file *, unsigned int, unsigned long);
 	long (*compat_ioctl) (struct file *, unsigned int, unsigned long);
 	int (*mmap) (struct file *, struct vm_area_struct *);
+	int (*populate)(struct file *, struct vm_area_struct *);
 	unsigned long mmap_supported_flags;
 	int (*open) (struct inode *, struct file *);
 	int (*flush) (struct file *, fl_owner_t id);
@@ -2074,9 +2075,14 @@ static inline ssize_t call_write_iter(struct file *file, struct kiocb *kio,
 	return file->f_op->write_iter(kio, iter);
 }
 
-static inline int call_mmap(struct file *file, struct vm_area_struct *vma)
+static inline int call_mmap(struct file *file, struct vm_area_struct *vma, bool do_populate)
 {
-	return file->f_op->mmap(file, vma);
+	int ret = file->f_op->mmap(file, vma);
+
+	if (!ret && do_populate && file->f_op->populate)
+		ret = file->f_op->populate(file, vma);
+
+	return ret;
 }
 
 extern ssize_t vfs_read(struct file *, char __user *, size_t, loff_t *);
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 213cc569b192..6c8c036f423b 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2683,7 +2683,7 @@ extern unsigned long get_unmapped_area(struct file *, unsigned long, unsigned lo
 
 extern unsigned long mmap_region(struct file *file, unsigned long addr,
 	unsigned long len, vm_flags_t vm_flags, unsigned long pgoff,
-	struct list_head *uf);
+	struct list_head *uf, bool do_populate);
 extern unsigned long do_mmap(struct file *file, unsigned long addr,
 	unsigned long len, unsigned long prot, unsigned long flags,
 	unsigned long pgoff, unsigned long *populate, struct list_head *uf);
diff --git a/ipc/shm.c b/ipc/shm.c
index b3048ebd5c31..89b28f32acf0 100644
--- a/ipc/shm.c
+++ b/ipc/shm.c
@@ -587,7 +587,7 @@ static int shm_mmap(struct file *file, struct vm_area_struct *vma)
 	if (ret)
 		return ret;
 
-	ret = call_mmap(sfd->file, vma);
+	ret = call_mmap(sfd->file, vma, do_populate);
 	if (ret) {
 		shm_close(vma);
 		return ret;
diff --git a/mm/mmap.c b/mm/mmap.c
index 1e8fdb0b51ed..5eca79957d4c 100644
--- a/mm/mmap.c
+++ b/mm/mmap.c
@@ -1413,6 +1413,7 @@ unsigned long do_mmap(struct file *file, unsigned long addr,
 			unsigned long flags, unsigned long pgoff,
 			unsigned long *populate, struct list_head *uf)
 {
+	bool do_populate = (flags & (MAP_POPULATE | MAP_NONBLOCK)) == MAP_POPULATE;
 	struct mm_struct *mm = current->mm;
 	vm_flags_t vm_flags;
 	int pkey = 0;
@@ -1579,10 +1580,9 @@ unsigned long do_mmap(struct file *file, unsigned long addr,
 			vm_flags |= VM_NORESERVE;
 	}
 
-	addr = mmap_region(file, addr, len, vm_flags, pgoff, uf);
+	addr = mmap_region(file, addr, len, vm_flags, pgoff, uf, do_populate);
 	if (!IS_ERR_VALUE(addr) &&
-	    ((vm_flags & VM_LOCKED) ||
-	     (flags & (MAP_POPULATE | MAP_NONBLOCK)) == MAP_POPULATE))
+	    ((vm_flags & VM_LOCKED) || do_populate))
 		*populate = len;
 	return addr;
 }
@@ -1721,7 +1721,7 @@ static inline int accountable_mapping(struct file *file, vm_flags_t vm_flags)
 
 unsigned long mmap_region(struct file *file, unsigned long addr,
 		unsigned long len, vm_flags_t vm_flags, unsigned long pgoff,
-		struct list_head *uf)
+		struct list_head *uf, bool do_populate)
 {
 	struct mm_struct *mm = current->mm;
 	struct vm_area_struct *vma, *prev, *merge;
@@ -1790,7 +1790,7 @@ unsigned long mmap_region(struct file *file, unsigned long addr,
 		}
 
 		vma->vm_file = get_file(file);
-		error = call_mmap(file, vma);
+		error = call_mmap(file, vma, do_populate);
 		if (error)
 			goto unmap_and_free_vma;
 
diff --git a/mm/nommu.c b/mm/nommu.c
index 55a9e48a7a02..a3c20b803c27 100644
--- a/mm/nommu.c
+++ b/mm/nommu.c
@@ -941,7 +941,7 @@ static int do_mmap_shared_file(struct vm_area_struct *vma)
 {
 	int ret;
 
-	ret = call_mmap(vma->vm_file, vma);
+	ret = call_mmap(vma->vm_file, vma, false);
 	if (ret == 0) {
 		vma->vm_region->vm_top = vma->vm_region->vm_end;
 		return 0;
@@ -972,7 +972,7 @@ static int do_mmap_private(struct vm_area_struct *vma,
 	 * - VM_MAYSHARE will be set if it may attempt to share
 	 */
 	if (capabilities & NOMMU_MAP_DIRECT) {
-		ret = call_mmap(vma->vm_file, vma);
+		ret = call_mmap(vma->vm_file, vma, false);
 		if (ret == 0) {
 			/* shouldn't return success if we're not sharing */
 			BUG_ON(!(vma->vm_flags & VM_MAYSHARE));
-- 
2.35.1

