Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C7434A133
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 06:55:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E572D6E195;
	Fri, 26 Mar 2021 05:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D36EC6E195;
 Fri, 26 Mar 2021 05:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=mWIEkU6jedu0G94rekUFSLElVM7olvsImROH2Stq5bI=; b=g2JiuWrlTQL+wDaNjKbfVftIYn
 KYuF8GUcf1NNzam15/Hjcm4/lFevXxGjBp2MNs+bKZLSSDAeKsYMkOSdLiyZhTDehGHw/dnJEGEl/
 iPo4bHIPi8+baHEmkcDSBLTm5UGQUksu1/BV/nAJBi0u3niMUHWbDM4FYR0xArYzgy9ZW1cA0QVoe
 fsb5zJdckcdMACC8T7Y+dx7ZHt5oyIkme8fq6pz8DnIN7yF6lMtUtfJhoXDIzU0xtwaDGVYLJ7GhX
 c0TX9PnZARW6FEJpsUBSbG+lx16b+nyaT7oUXa+GKl2wVh1ubWq7c41TVt4GbjaAM1ExCY/1MLSef
 W2ifC6xQ==;
Received: from [2001:4bb8:191:f692:97ff:1e47:aee2:c7e5] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lPfRF-005AI5-D1; Fri, 26 Mar 2021 05:55:17 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri, 26 Mar 2021 06:55:05 +0100
Message-Id: <20210326055505.1424432-5-hch@lst.de>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210326055505.1424432-1-hch@lst.de>
References: <20210326055505.1424432-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 4/4] i915: fix remap_io_sg to verify the pgprot
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

remap_io_sg claims that that the pgprot is pre-verified using an
io_mapping, but actually does not get passed an io_mapping and just
uses the pgprot in the VMA.  Remove the apply_to_page_range abuse
and just loop over remap_pfn_range for each segment.

Note: this could use io_mapping_map_user by passing an iomap to
remap_io_sg if the maintainers can verify that the pgprot in the
iomap in the only caller is indeed the desired one here.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/gpu/drm/i915/i915_mm.c | 73 +++++++++++-----------------------
 1 file changed, 23 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 9a777b0ff59b05..4c8cd08c672d2d 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -28,46 +28,10 @@
 
 #include "i915_drv.h"
 
-struct remap_pfn {
-	struct mm_struct *mm;
-	unsigned long pfn;
-	pgprot_t prot;
-
-	struct sgt_iter sgt;
-	resource_size_t iobase;
-};
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
-#define EXPECTED_FLAGS (VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP)
-
 /**
  * remap_io_sg - remap an IO mapping to userspace
  * @vma: user vma to map to
@@ -82,12 +46,7 @@ int remap_io_sg(struct vm_area_struct *vma,
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
@@ -96,11 +55,25 @@ int remap_io_sg(struct vm_area_struct *vma,
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
+		err = remap_pfn_range(vma, addr + remapped, pfn, len,
+				      vma->vm_page_prot);
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
2.30.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
