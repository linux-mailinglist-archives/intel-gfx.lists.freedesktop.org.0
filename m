Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED874327952
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 09:34:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604136E50D;
	Mon,  1 Mar 2021 08:34:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 489A26E50B;
 Mon,  1 Mar 2021 08:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=u8wenE83xNnepC5igb4zL7nbRigZYhYPUAh9K0DcSt4=; b=le2X1i9G+q9874lCk+S1kQo4w0
 +ExgRDaa/Omact5Rb4dB1EeYpycDSNeMU32iwrMYNoEmsf4vC8i7w11GJO51oKZYFE9+xnxvirUSR
 XfiAzTgXS+8FyRuncAqy+hK+xu7Cdp/H5dtKumAnGsQdW5ivFyoPG4zy9Un5SsV+S2UedInfXjDIm
 89aLhh7pPjsMppJ7JsWu1SK9Wuwu/zIGIp3n2CK/bCkfeO2UNDm0rwBse8G8NjDZIiOTpCgdzOK5M
 RconJ4hCSWP33FgcLJzkAqvYVJTuy04fP8GdCXyMhP7VXmk7fZNDipSgIJQkzGQaPzht7taUYjSgG
 77MghFfQ==;
Received: from [2001:4bb8:19b:e4b7:cdf9:733f:4874:8eb4] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lGe0J-00FTzw-Ew; Mon, 01 Mar 2021 08:34:16 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon,  1 Mar 2021 09:33:20 +0100
Message-Id: <20210301083320.943079-3-hch@lst.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301083320.943079-1-hch@lst.de>
References: <20210301083320.943079-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 2/2] i915: use remap_pfn_range_notrack
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use the remap_pfn_range_notrack helper instead of directly messing
with PTEs.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/gpu/drm/i915/i915_mm.c | 101 +++++++++------------------------
 1 file changed, 26 insertions(+), 75 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 666808cb3a3260..a6bafac5ade0bd 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -28,55 +28,10 @@
 
 #include "i915_drv.h"
 
-struct remap_pfn {
-	struct mm_struct *mm;
-	unsigned long pfn;
-	pgprot_t prot;
-
-	struct sgt_iter sgt;
-	resource_size_t iobase;
-};
-
-static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
-{
-	struct remap_pfn *r = data;
-
-	/* Special PTE are not associated with any struct page */
-	set_pte_at(r->mm, addr, pte, pte_mkspecial(pfn_pte(r->pfn, r->prot)));
-	r->pfn++;
-
-	return 0;
-}
+#define EXPECTED_FLAGS (VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP)
 
 #define use_dma(io) ((io) != -1)
 
-static inline unsigned long sgt_pfn(const struct remap_pfn *r)
-{
-	if (use_dma(r->iobase))
-		return (r->sgt.dma + r->sgt.curr + r->iobase) >> PAGE_SHIFT;
-	else
-		return r->sgt.pfn + (r->sgt.curr >> PAGE_SHIFT);
-}
-
-static int remap_sg(pte_t *pte, unsigned long addr, void *data)
-{
-	struct remap_pfn *r = data;
-
-	if (GEM_WARN_ON(!r->sgt.sgp))
-		return -EINVAL;
-
-	/* Special PTE are not associated with any struct page */
-	set_pte_at(r->mm, addr, pte,
-		   pte_mkspecial(pfn_pte(sgt_pfn(r), r->prot)));
-	r->pfn++; /* track insertions in case we need to unwind later */
-
-	r->sgt.curr += PAGE_SIZE;
-	if (r->sgt.curr >= r->sgt.max)
-		r->sgt = __sgt_iter(__sg_next(r->sgt.sgp), use_dma(r->iobase));
-
-	return 0;
-}
-
 /**
  * remap_io_mapping - remap an IO mapping to userspace
  * @vma: user vma to map to
@@ -91,25 +46,12 @@ int remap_io_mapping(struct vm_area_struct *vma,
 		     unsigned long addr, unsigned long pfn, unsigned long size,
 		     struct io_mapping *iomap)
 {
-	struct remap_pfn r;
-	int err;
-
-#define EXPECTED_FLAGS (VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP)
 	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
 
 	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
-	r.mm = vma->vm_mm;
-	r.pfn = pfn;
-	r.prot = __pgprot((pgprot_val(iomap->prot) & _PAGE_CACHE_MASK) |
-			  (pgprot_val(vma->vm_page_prot) & ~_PAGE_CACHE_MASK));
-
-	err = apply_to_page_range(r.mm, addr, size, remap_pfn, &r);
-	if (unlikely(err)) {
-		zap_vma_ptes(vma, addr, (r.pfn - pfn) << PAGE_SHIFT);
-		return err;
-	}
-
-	return 0;
+	return remap_pfn_range_notrack(vma, addr, pfn, size,
+		__pgprot((pgprot_val(iomap->prot) & _PAGE_CACHE_MASK) |
+			 (pgprot_val(vma->vm_page_prot) & ~_PAGE_CACHE_MASK)));
 }
 
 /**
@@ -126,12 +68,7 @@ int remap_io_sg(struct vm_area_struct *vma,
 		unsigned long addr, unsigned long size,
 		struct scatterlist *sgl, resource_size_t iobase)
 {
-	struct remap_pfn r = {
-		.mm = vma->vm_mm,
-		.prot = vma->vm_page_prot,
-		.sgt = __sgt_iter(sgl, use_dma(iobase)),
-		.iobase = iobase,
-	};
+	unsigned long pfn, len, remapped = 0;
 	int err;
 
 	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
@@ -140,11 +77,25 @@ int remap_io_sg(struct vm_area_struct *vma,
 	if (!use_dma(iobase))
 		flush_cache_range(vma, addr, size);
 
-	err = apply_to_page_range(r.mm, addr, size, remap_sg, &r);
-	if (unlikely(err)) {
-		zap_vma_ptes(vma, addr, r.pfn << PAGE_SHIFT);
-		return err;
-	}
-
-	return 0;
+	do {
+		if (use_dma(iobase)) {
+			if (!sg_dma_len(sgl))
+				break;
+			pfn = (sg_dma_address(sgl) + iobase) >> PAGE_SHIFT;
+			len = sg_dma_len(sgl);
+		} else {
+			pfn = page_to_pfn(sg_page(sgl));
+			len = sgl->length;
+		}
+
+		err = remap_pfn_range_notrack(vma, addr + remapped, pfn, len,
+					      vma->vm_page_prot);
+		if (err)
+			break;
+		remapped += len;
+	} while ((sgl = __sg_next(sgl)));
+
+	if (err)
+		zap_vma_ptes(vma, addr, remapped);
+	return err;
 }
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
