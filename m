Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 811BC2744D8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 16:58:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1E106E8A4;
	Tue, 22 Sep 2020 14:58:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EFD36E8A4;
 Tue, 22 Sep 2020 14:58:24 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0D7F667373; Tue, 22 Sep 2020 16:58:20 +0200 (CEST)
Date: Tue, 22 Sep 2020 16:58:19 +0200
From: Christoph Hellwig <hch@lst.de>
To: boris.ostrovsky@oracle.com
Message-ID: <20200922145819.GA28420@lst.de>
References: <20200918163724.2511-1-hch@lst.de>
 <20200918163724.2511-7-hch@lst.de>
 <0833b9a8-5096-d105-a850-1336150eada1@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0833b9a8-5096-d105-a850-1336150eada1@oracle.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 6/6] x86/xen: open code alloc_vm_area in
 arch_gnttab_valloc
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
Cc: Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>, linux-mm@kvack.org,
 Peter Zijlstra <peterz@infradead.org>, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, linux-kernel@vger.kernel.org, Minchan Kim <minchan@kernel.org>,
 dri-devel@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Nitin Gupta <ngupta@vflare.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 21, 2020 at 04:44:10PM -0400, boris.ostrovsky@oracle.com wrote:
> This will end up incrementing area->ptes pointer. So perhaps something li=
ke
> =

> =

> pte_t **ptes =3D area->ptes;
> =

> if (apply_to_page_range(&init_mm, (unsigned long)area->area->addr,
> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 PAG=
E_SIZE * nr_frames, gnttab_apply, &ptes)) {
> =

> =A0=A0=A0=A0=A0=A0 ...

Yeah.  What do you think of this version?  I think it is a little
cleaner and matches what xenbus does.  At this point it probably should
be split into a Xen and a alloc_vm_area removal patch, though.

---
From 74d6b797e049f72b5e9f63f14da6321c4209a792 Mon Sep 17 00:00:00 2001
From: Christoph Hellwig <hch@lst.de>
Date: Wed, 16 Sep 2020 16:09:42 +0200
Subject: x86/xen: open code alloc_vm_area in arch_gnttab_valloc

Open code alloc_vm_area in the last remaining caller.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/x86/xen/grant-table.c | 27 +++++++++++++++------
 include/linux/vmalloc.h    |  5 +---
 mm/nommu.c                 |  7 ------
 mm/vmalloc.c               | 48 --------------------------------------
 4 files changed, 21 insertions(+), 66 deletions(-)

diff --git a/arch/x86/xen/grant-table.c b/arch/x86/xen/grant-table.c
index 4988e19598c8a5..1e681bf62561a0 100644
--- a/arch/x86/xen/grant-table.c
+++ b/arch/x86/xen/grant-table.c
@@ -25,6 +25,7 @@
 static struct gnttab_vm_area {
 	struct vm_struct *area;
 	pte_t **ptes;
+	int idx;
 } gnttab_shared_vm_area, gnttab_status_vm_area;
 =

 int arch_gnttab_map_shared(unsigned long *frames, unsigned long nr_gframes,
@@ -90,19 +91,31 @@ void arch_gnttab_unmap(void *shared, unsigned long nr_g=
frames)
 	}
 }
 =

+static int gnttab_apply(pte_t *pte, unsigned long addr, void *data)
+{
+	struct gnttab_vm_area *area =3D data;
+
+	area->ptes[area->idx++] =3D pte;
+	return 0;
+}
+
 static int arch_gnttab_valloc(struct gnttab_vm_area *area, unsigned nr_fra=
mes)
 {
 	area->ptes =3D kmalloc_array(nr_frames, sizeof(*area->ptes), GFP_KERNEL);
 	if (area->ptes =3D=3D NULL)
 		return -ENOMEM;
-
-	area->area =3D alloc_vm_area(PAGE_SIZE * nr_frames, area->ptes);
-	if (area->area =3D=3D NULL) {
-		kfree(area->ptes);
-		return -ENOMEM;
-	}
-
+	area->area =3D get_vm_area(PAGE_SIZE * nr_frames, VM_IOREMAP);
+	if (!area->area)
+		goto out_free_ptes;
+	if (apply_to_page_range(&init_mm, (unsigned long)area->area->addr,
+			PAGE_SIZE * nr_frames, gnttab_apply, area))
+		goto out_free_vm_area;
 	return 0;
+out_free_vm_area:
+	free_vm_area(area->area);
+out_free_ptes:
+	kfree(area->ptes);
+	return -ENOMEM;
 }
 =

 static void arch_gnttab_vfree(struct gnttab_vm_area *area)
diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
index 8ecd92a947ee0c..a1a4e2f8163504 100644
--- a/include/linux/vmalloc.h
+++ b/include/linux/vmalloc.h
@@ -168,6 +168,7 @@ extern struct vm_struct *__get_vm_area_caller(unsigned =
long size,
 					unsigned long flags,
 					unsigned long start, unsigned long end,
 					const void *caller);
+void free_vm_area(struct vm_struct *area);
 extern struct vm_struct *remove_vm_area(const void *addr);
 extern struct vm_struct *find_vm_area(const void *addr);
 =

@@ -203,10 +204,6 @@ static inline void set_vm_flush_reset_perms(void *addr)
 }
 #endif
 =

-/* Allocate/destroy a 'vmalloc' VM area. */
-extern struct vm_struct *alloc_vm_area(size_t size, pte_t **ptes);
-extern void free_vm_area(struct vm_struct *area);
-
 /* for /dev/kmem */
 extern long vread(char *buf, char *addr, unsigned long count);
 extern long vwrite(char *buf, char *addr, unsigned long count);
diff --git a/mm/nommu.c b/mm/nommu.c
index 75a327149af127..9272f30e4c4726 100644
--- a/mm/nommu.c
+++ b/mm/nommu.c
@@ -354,13 +354,6 @@ void vm_unmap_aliases(void)
 }
 EXPORT_SYMBOL_GPL(vm_unmap_aliases);
 =

-struct vm_struct *alloc_vm_area(size_t size, pte_t **ptes)
-{
-	BUG();
-	return NULL;
-}
-EXPORT_SYMBOL_GPL(alloc_vm_area);
-
 void free_vm_area(struct vm_struct *area)
 {
 	BUG();
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index 59f2afcf26c312..9f29147deca580 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -3077,54 +3077,6 @@ int remap_vmalloc_range(struct vm_area_struct *vma, =
void *addr,
 }
 EXPORT_SYMBOL(remap_vmalloc_range);
 =

-static int f(pte_t *pte, unsigned long addr, void *data)
-{
-	pte_t ***p =3D data;
-
-	if (p) {
-		*(*p) =3D pte;
-		(*p)++;
-	}
-	return 0;
-}
-
-/**
- * alloc_vm_area - allocate a range of kernel address space
- * @size:	   size of the area
- * @ptes:	   returns the PTEs for the address space
- *
- * Returns:	NULL on failure, vm_struct on success
- *
- * This function reserves a range of kernel address space, and
- * allocates pagetables to map that range.  No actual mappings
- * are created.
- *
- * If @ptes is non-NULL, pointers to the PTEs (in init_mm)
- * allocated for the VM area are returned.
- */
-struct vm_struct *alloc_vm_area(size_t size, pte_t **ptes)
-{
-	struct vm_struct *area;
-
-	area =3D get_vm_area_caller(size, VM_IOREMAP,
-				__builtin_return_address(0));
-	if (area =3D=3D NULL)
-		return NULL;
-
-	/*
-	 * This ensures that page tables are constructed for this region
-	 * of kernel virtual address space and mapped into init_mm.
-	 */
-	if (apply_to_page_range(&init_mm, (unsigned long)area->addr,
-				size, f, ptes ? &ptes : NULL)) {
-		free_vm_area(area);
-		return NULL;
-	}
-
-	return area;
-}
-EXPORT_SYMBOL_GPL(alloc_vm_area);
-
 void free_vm_area(struct vm_struct *area)
 {
 	struct vm_struct *ret;
-- =

2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
