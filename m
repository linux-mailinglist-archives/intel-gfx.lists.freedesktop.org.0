Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0C34CFC6B
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 12:13:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F43E10F65C;
	Mon,  7 Mar 2022 11:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3B0E10F270;
 Sun,  6 Mar 2022 05:33:06 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 68C2AB80E6B;
 Sun,  6 Mar 2022 05:33:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89E4AC340EF;
 Sun,  6 Mar 2022 05:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646544784;
 bh=JPrGfrBIfwoosLcMMvbL+zi9gIDR6vfO7x+qghhJuJA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ByezMtLM7pcFwWtRCMJjNb7r+tsYkR20cW5WDkFodbF3t/Og2PifK6FN2xWyvcW3Y
 +OPaUcWvx8G4lwaH/q4ZVGbc2LaF/6RMJHEJgMyidNDEAp43XVjwZwV+WB1h8jlsxv
 UrrZxY9Jsaddk3KqjRF1cX/7WaZbHHogXHVIb0luBogdEswsEnFgoD7Vd9KP2r37S+
 s1QduZpoGTpn6FqxN2/QKmMkAujXwfnT9XJ6l7r8cXocklj+F32I9VbWXbekniYscU
 82Ghr0Citc5HwkAIkUMCxbS/Aq5L97CsDRRbXgEwTI+P6U6wgzrv8snZPam5pKCgko
 g6KOgW0lQbfpw==
From: Jarkko Sakkinen <jarkko@kernel.org>
To: linux-mm@kvack.org
Date: Sun,  6 Mar 2022 07:32:05 +0200
Message-Id: <20220306053211.135762-2-jarkko@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220306053211.135762-1-jarkko@kernel.org>
References: <20220306053211.135762-1-jarkko@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 07 Mar 2022 11:13:15 +0000
Subject: [Intel-gfx] [PATCH RFC 1/3] mm: Add f_ops->populate()
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
Cc: zhangyiru <zhangyiru3@huawei.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Alexander Mikhalitsyn <alexander.mikhalitsyn@virtuozzo.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-unionfs@vger.kernel.org,
 codalist@coda.cs.cmu.edu, Matthew Auld <matthew.auld@intel.com>,
 Vasily Averin <vvs@virtuozzo.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, linux-mips@vger.kernel.org,
 Shakeel Butt <shakeelb@google.com>,
 Reinette Chatre <reinette.chatre@intel.com>, linux-sgx@vger.kernel.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Nathaniel McCallum <nathaniel@profian.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jarkko Sakkinen <jarkko@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Alexey Gladkov <legion@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sometimes you might want to use MAP_POPULATE to ask a device driver to
initialize the device memory in some specific manner. SGX driver can use
this to request more memory by issuing ENCLS[EAUG] x86 opcode for each
page in the address range.

Add f_ops->populate() with the same parameters as f_ops->mmap() and make
it conditionally called inside call_mmap(). Update call sites
accodingly.
---
Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
v3:
-       if (!ret && do_populate && file->f_op->populate)
+       if (!ret && do_populate && file->f_op->populate &&
+           !!(vma->vm_flags & (VM_IO | VM_PFNMAP)))
(reported by Matthew Wilcox)
v2:
-       if (!ret && do_populate)
+       if (!ret && do_populate && file->f_op->populate)
(reported by Jan Harkes)
---
 arch/mips/kernel/vdso.c                    |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c |  2 +-
 fs/coda/file.c                             |  2 +-
 fs/overlayfs/file.c                        |  2 +-
 include/linux/fs.h                         | 12 ++++++++++--
 include/linux/mm.h                         |  2 +-
 ipc/shm.c                                  |  2 +-
 mm/mmap.c                                  | 10 +++++-----
 mm/nommu.c                                 |  4 ++--
 9 files changed, 23 insertions(+), 15 deletions(-)

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
index e2d892b201b0..2909e2d14af8 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -42,6 +42,7 @@
 #include <linux/mount.h>
 #include <linux/cred.h>
 #include <linux/mnt_idmapping.h>
+#include <linux/mm.h>
 
 #include <asm/byteorder.h>
 #include <uapi/linux/fs.h>
@@ -1993,6 +1994,7 @@ struct file_operations {
 	long (*unlocked_ioctl) (struct file *, unsigned int, unsigned long);
 	long (*compat_ioctl) (struct file *, unsigned int, unsigned long);
 	int (*mmap) (struct file *, struct vm_area_struct *);
+	int (*populate)(struct file *, struct vm_area_struct *);
 	unsigned long mmap_supported_flags;
 	int (*open) (struct inode *, struct file *);
 	int (*flush) (struct file *, fl_owner_t id);
@@ -2074,9 +2076,15 @@ static inline ssize_t call_write_iter(struct file *file, struct kiocb *kio,
 	return file->f_op->write_iter(kio, iter);
 }
 
-static inline int call_mmap(struct file *file, struct vm_area_struct *vma)
+static inline int call_mmap(struct file *file, struct vm_area_struct *vma, bool do_populate)
 {
-	return file->f_op->mmap(file, vma);
+	int ret = file->f_op->mmap(file, vma);
+
+	if (!ret && do_populate && file->f_op->populate &&
+	    !!(vma->vm_flags & (VM_IO | VM_PFNMAP)))
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

