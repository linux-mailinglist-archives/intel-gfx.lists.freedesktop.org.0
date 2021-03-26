Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E730734A134
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 06:55:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FEC36EEAB;
	Fri, 26 Mar 2021 05:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7850D6EEAC;
 Fri, 26 Mar 2021 05:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=srZLUGAw17B4DKxUM/khdNRs68ZOfJYzOK7gOdwO05M=; b=xfuPug9iUxzuRea3Fc/tNlMq6y
 tmpo2jNazcAhEROZzXHr8UGDwEhpPP5hzr3XRskweW8lTXKz2LApGN1rwLw7f1RGyXTIQuyhQmAao
 /FoMGCSa3kMi4EY3LPzJQwPM8D+qy2hKIfQzVMK/RQwCzNl7vp3IBcvfbOsMsyBTqpyMauljI4wge
 cItHLEOwneHcaDMmE694zFbj+ElDujsdGSWEDs6YoWRuSVczlgqFiLOG43h+s//+NHlpNpjkgYvH4
 +6kmVA3vb+ox0Z0IjhgPXzY3FOu78PvcqYf0HrD0mubu4Iz7QAv1i/Dyt8YoAGUkM3wOjd12Hyrhu
 Uz2IvHTw==;
Received: from [2001:4bb8:191:f692:97ff:1e47:aee2:c7e5] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lPfRC-005AHx-UL; Fri, 26 Mar 2021 05:55:15 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri, 26 Mar 2021 06:55:04 +0100
Message-Id: <20210326055505.1424432-4-hch@lst.de>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210326055505.1424432-1-hch@lst.de>
References: <20210326055505.1424432-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 3/4] i915: use io_mapping_map_user
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

Replace the home-grown remap_io_mapping that abuses apply_to_page_range
with the proper io_mapping_map_user interface.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/gpu/drm/i915/Kconfig             |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_mman.c |  9 +++--
 drivers/gpu/drm/i915/i915_drv.h          |  3 --
 drivers/gpu/drm/i915/i915_mm.c           | 44 ------------------------
 4 files changed, 5 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 1e1cb245fca778..93f4d059fc89f6 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -20,6 +20,7 @@ config DRM_I915
 	select INPUT if ACPI
 	select ACPI_VIDEO if ACPI
 	select ACPI_BUTTON if ACPI
+	select IO_MAPPING
 	select SYNC_FILE
 	select IOSF_MBI
 	select CRC32
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index ec28a6cde49bdd..3ef734dd0a7c42 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -363,11 +363,10 @@ static vm_fault_t vm_fault_gtt(struct vm_fault *vmf)
 		goto err_unpin;
 
 	/* Finally, remap it using the new GTT offset */
-	ret = remap_io_mapping(area,
-			       area->vm_start + (vma->ggtt_view.partial.offset << PAGE_SHIFT),
-			       (ggtt->gmadr.start + vma->node.start) >> PAGE_SHIFT,
-			       min_t(u64, vma->size, area->vm_end - area->vm_start),
-			       &ggtt->iomap);
+	ret = io_mapping_map_user(&ggtt->iomap, area, area->vm_start +
+			(vma->ggtt_view.partial.offset << PAGE_SHIFT),
+			(ggtt->gmadr.start + vma->node.start) >> PAGE_SHIFT,
+			min_t(u64, vma->size, area->vm_end - area->vm_start));
 	if (ret)
 		goto err_fence;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index cb62ddba203522..d6aaf0baa5c2fc 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1973,9 +1973,6 @@ int i915_reg_read_ioctl(struct drm_device *dev, void *data,
 			struct drm_file *file);
 
 /* i915_mm.c */
-int remap_io_mapping(struct vm_area_struct *vma,
-		     unsigned long addr, unsigned long pfn, unsigned long size,
-		     struct io_mapping *iomap);
 int remap_io_sg(struct vm_area_struct *vma,
 		unsigned long addr, unsigned long size,
 		struct scatterlist *sgl, resource_size_t iobase);
diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index 666808cb3a3260..9a777b0ff59b05 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -37,17 +37,6 @@ struct remap_pfn {
 	resource_size_t iobase;
 };
 
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
-
 #define use_dma(io) ((io) != -1)
 
 static inline unsigned long sgt_pfn(const struct remap_pfn *r)
@@ -77,40 +66,7 @@ static int remap_sg(pte_t *pte, unsigned long addr, void *data)
 	return 0;
 }
 
-/**
- * remap_io_mapping - remap an IO mapping to userspace
- * @vma: user vma to map to
- * @addr: target user address to start at
- * @pfn: physical address of kernel memory
- * @size: size of map area
- * @iomap: the source io_mapping
- *
- *  Note: this is only safe if the mm semaphore is held when called.
- */
-int remap_io_mapping(struct vm_area_struct *vma,
-		     unsigned long addr, unsigned long pfn, unsigned long size,
-		     struct io_mapping *iomap)
-{
-	struct remap_pfn r;
-	int err;
-
 #define EXPECTED_FLAGS (VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP)
-	GEM_BUG_ON((vma->vm_flags & EXPECTED_FLAGS) != EXPECTED_FLAGS);
-
-	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
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
-}
 
 /**
  * remap_io_sg - remap an IO mapping to userspace
-- 
2.30.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
