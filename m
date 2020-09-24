Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC9E27734E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 15:59:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF30E6EB23;
	Thu, 24 Sep 2020 13:59:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7856A6EB0B;
 Thu, 24 Sep 2020 13:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=egAh0AyaJU/L8zB++A7y8+b+g9+HnktXyv/oSuuetso=; b=u8zXv86Jo0uvHG04wra1Ey2FC5
 4BmGm5rwILkRlXWjNo27W+sYj1vETLRMbiA4/fWiPqk4byxXZWqRE685R4RRF+w0dgExTfCbVtFh5
 +2RhGbduILeabm6vLx9zVmYo43Px3DA0P2YOCwRFFtS05jzHEf6zcWNFmZOTxI+un96fpjKjEkGLZ
 Z7UQLa0aAVYhycLBRUmZmcNmFbr9EddfkWvsChn0SzDWwK28fb1uUfnti7yy3BPrKuF2lDlN6TeYr
 OjqPvwDRq77s0mmrlrGQup9jWQSEGcRmoDlWfevvV7pax80ghmy8o7JsqBu4tzzebz8Q3owfyJLuS
 oG0ke2LA==;
Received: from p4fdb0c34.dip0.t-ipconnect.de ([79.219.12.52] helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLRm2-0003vy-8W; Thu, 24 Sep 2020 13:59:02 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Thu, 24 Sep 2020 15:58:48 +0200
Message-Id: <20200924135853.875294-7-hch@lst.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200924135853.875294-1-hch@lst.de>
References: <20200924135853.875294-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 06/11] drm/i915: use vmap in shmem_pin_map
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
 Stefano Stabellini <sstabellini@kernel.org>,
 Matthew Wilcox <willy@infradead.org>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, Peter Zijlstra <peterz@infradead.org>,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, x86@kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Minchan Kim <minchan@kernel.org>,
 Matthew Auld <matthew.auld@intel.com>, xen-devel@lists.xenproject.org,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Nitin Gupta <ngupta@vflare.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

shmem_pin_map somewhat awkwardly reimplements vmap using
alloc_vm_area and manual pte setup.  The only practical difference
is that alloc_vm_area prefeaults the vmalloc area PTEs, which doesn't
seem to be required here (and could be added to vmap using a flag if
actually required).  Switch to use vmap, and use vfree to free both the
vmalloc mapping and the page array, as well as dropping the references
to each page.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/gpu/drm/i915/gt/shmem_utils.c | 76 +++++++--------------------
 1 file changed, 18 insertions(+), 58 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
index 43c7acbdc79dea..f011ea42487e11 100644
--- a/drivers/gpu/drm/i915/gt/shmem_utils.c
+++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
@@ -49,80 +49,40 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
 	return file;
 }
 
-static size_t shmem_npte(struct file *file)
-{
-	return file->f_mapping->host->i_size >> PAGE_SHIFT;
-}
-
-static void __shmem_unpin_map(struct file *file, void *ptr, size_t n_pte)
-{
-	unsigned long pfn;
-
-	vunmap(ptr);
-
-	for (pfn = 0; pfn < n_pte; pfn++) {
-		struct page *page;
-
-		page = shmem_read_mapping_page_gfp(file->f_mapping, pfn,
-						   GFP_KERNEL);
-		if (!WARN_ON(IS_ERR(page))) {
-			put_page(page);
-			put_page(page);
-		}
-	}
-}
-
 void *shmem_pin_map(struct file *file)
 {
-	const size_t n_pte = shmem_npte(file);
-	pte_t *stack[32], **ptes, **mem;
-	struct vm_struct *area;
-	unsigned long pfn;
-
-	mem = stack;
-	if (n_pte > ARRAY_SIZE(stack)) {
-		mem = kvmalloc_array(n_pte, sizeof(*mem), GFP_KERNEL);
-		if (!mem)
-			return NULL;
-	}
+	struct page **pages;
+	size_t n_pages, i;
+	void *vaddr;
 
-	area = alloc_vm_area(n_pte << PAGE_SHIFT, mem);
-	if (!area) {
-		if (mem != stack)
-			kvfree(mem);
+	n_pages = file->f_mapping->host->i_size >> PAGE_SHIFT;
+	pages = kvmalloc_array(n_pages, sizeof(*pages), GFP_KERNEL);
+	if (!pages)
 		return NULL;
-	}
 
-	ptes = mem;
-	for (pfn = 0; pfn < n_pte; pfn++) {
-		struct page *page;
-
-		page = shmem_read_mapping_page_gfp(file->f_mapping, pfn,
-						   GFP_KERNEL);
-		if (IS_ERR(page))
+	for (i = 0; i < n_pages; i++) {
+		pages[i] = shmem_read_mapping_page_gfp(file->f_mapping, i,
+						       GFP_KERNEL);
+		if (IS_ERR(pages[i]))
 			goto err_page;
-
-		**ptes++ = mk_pte(page,  PAGE_KERNEL);
 	}
 
-	if (mem != stack)
-		kvfree(mem);
-
+	vaddr = vmap(pages, n_pages, VM_MAP_PUT_PAGES, PAGE_KERNEL);
+	if (!vaddr)
+		goto err_page;
 	mapping_set_unevictable(file->f_mapping);
-	return area->addr;
-
+	return vaddr;
 err_page:
-	if (mem != stack)
-		kvfree(mem);
-
-	__shmem_unpin_map(file, area->addr, pfn);
+	while (--i >= 0)
+		put_page(pages[i]);
+	kvfree(pages);
 	return NULL;
 }
 
 void shmem_unpin_map(struct file *file, void *ptr)
 {
 	mapping_clear_unevictable(file->f_mapping);
-	__shmem_unpin_map(file, ptr, shmem_npte(file));
+	vfree(ptr);
 }
 
 static int __shmem_rw(struct file *file, loff_t off,
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
