Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 623C9270279
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 18:46:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 475EC6ED2A;
	Fri, 18 Sep 2020 16:46:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C2CC6ED2A;
 Fri, 18 Sep 2020 16:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=7fs8HGSpQrTl+v/OwgRrDMGgHGbn/JMy8asyFQyDmh8=; b=e9komF0Y9BGr2JEd5nRCwfZGwu
 WgoyBjM/v1bwwxG5OopAOaU35R+LcutCR1SpMFCWxQCpjx9g6cixuVx7KaT0fhA2NuU5cCOunJo+X
 fW/qXOKpcoUDMx+c/bls1dGccdJCa3KD46PJkEv+RVR9MDU8wWxOExdg9c/bL3lC7TJcRe+xbhRq/
 Y5aFYw3lFs85h8w/8cjIxpDc1vkJdBCRBkBlm8B3G5PAEhdtWSSqdoEymKe3ocX4cREzfa2jtiSb5
 AcpuMQXGe9/JBS2UlCP/59di88TNsIBDuUeD8gl6+7QLqmcSeBs+Q9mGT7sOHMcE266jnGbc3SS6g
 6CGVxrlw==;
Received: from 089144214092.atnat0023.highway.a1.net ([89.144.214.92]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJJWS-0007Vm-Ib; Fri, 18 Sep 2020 16:46:08 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Fri, 18 Sep 2020 18:37:21 +0200
Message-Id: <20200918163724.2511-4-hch@lst.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918163724.2511-1-hch@lst.de>
References: <20200918163724.2511-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: use vmap in shmem_pin_map
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
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Nitin Gupta <ngupta@vflare.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

shmem_pin_map somewhat awkwardly reimplements vmap using
alloc_vm_area and manual pte setup.  The only practical difference
is that alloc_vm_area prefeaults the vmalloc area PTEs, which doesn't
seem to be required here (and could be added to vmap using a flag
if actually required).

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/gpu/drm/i915/gt/shmem_utils.c | 90 +++++++++++----------------
 1 file changed, 38 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c b/drivers/gpu/drm/i915/gt/shmem_utils.c
index 43c7acbdc79dea..77410091597f19 100644
--- a/drivers/gpu/drm/i915/gt/shmem_utils.c
+++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
@@ -49,80 +49,66 @@ struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
 	return file;
 }
 
-static size_t shmem_npte(struct file *file)
+static size_t shmem_npages(struct file *file)
 {
 	return file->f_mapping->host->i_size >> PAGE_SHIFT;
 }
 
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
+	const size_t n_pages = shmem_npages(file);
+	struct page **pages, *stack[32];
+	void *vaddr;
+	long i;
+
+	pages = stack;
+	if (n_pages > ARRAY_SIZE(stack)) {
+		pages = kvmalloc_array(n_pages, sizeof(*pages), GFP_KERNEL);
+		if (!pages)
 			return NULL;
 	}
 
-	area = alloc_vm_area(n_pte << PAGE_SHIFT, mem);
-	if (!area) {
-		if (mem != stack)
-			kvfree(mem);
-		return NULL;
-	}
-
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
+	vaddr = vmap(pages, n_pages, 0, PAGE_KERNEL);
+	if (!vaddr)
+		goto err_page;
 
+	if (pages != stack)
+		kvfree(pages);
 	mapping_set_unevictable(file->f_mapping);
-	return area->addr;
+	return vaddr;
 
 err_page:
-	if (mem != stack)
-		kvfree(mem);
-
-	__shmem_unpin_map(file, area->addr, pfn);
+	while (--i >= 0)
+		put_page(pages[i]);
+	if (pages != stack)
+		kvfree(pages);
 	return NULL;
 }
 
 void shmem_unpin_map(struct file *file, void *ptr)
 {
+	long i = shmem_npages(file);
+
 	mapping_clear_unevictable(file->f_mapping);
-	__shmem_unpin_map(file, ptr, shmem_npte(file));
+	vunmap(ptr);
+
+	for (i = 0; i < shmem_npages(file); i++) {
+		struct page *page;
+
+		page = shmem_read_mapping_page_gfp(file->f_mapping, i,
+						   GFP_KERNEL);
+		if (!WARN_ON(IS_ERR(page))) {
+			put_page(page);
+			put_page(page);
+		}
+	}
 }
 
 static int __shmem_rw(struct file *file, loff_t off,
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
