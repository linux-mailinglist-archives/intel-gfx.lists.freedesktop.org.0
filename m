Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C811F27F0CA
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 19:52:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566146E81D;
	Wed, 30 Sep 2020 17:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBABD89C52;
 Wed, 30 Sep 2020 17:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=cxDf+nMgR/LOq5Vlf/2efNcelt6NT7vAwUR//5r7v5s=; b=oIbNov1yr7qopxOY0Au4jvEsdK
 7bue1e+CqD8gaid60++NSJbw8dKsKhgJV5OlIs4HYzIAnz0SkWmAXE87RWoUPGI/kYTJxn3sUhlEg
 3f7sdlFNrjb5IbY4ChhuhAZFxXgHQ3ij8YTJ7ltX6zy1iyDYPSjxQ8kb2JiLJNZAZMMZ0NeB+OIXb
 /Zyt4LeJocN4doFnDh6aDHwEvg1uaikYeDNU09gRcviPalqMuK7x2RDGwcIQJAkFbfkl+Oyh7gjEh
 gQDGwjP0PaYPey4sImu7Knye+XoWXan8+84cVPE9TYHiU8cuDBP+6Tdpjwh2JeSPCmbaw+91IgtQ0
 fOFxmfEg==;
Received: from [2001:4bb8:180:7b62:c70:4a89:bc61:4] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNgGR-0001Bv-8l; Wed, 30 Sep 2020 17:51:39 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Date: Wed, 30 Sep 2020 19:51:26 +0200
Message-Id: <20200930175133.1252382-4-hch@lst.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200930175133.1252382-1-hch@lst.de>
References: <20200930175133.1252382-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 03/10] mm: add a vmap_pfn function
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

Add a proper helper to remap PFNs into kernel virtual space so that
drivers don't have to abuse alloc_vm_area and open coded PTE
manipulation for it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/vmalloc.h |  1 +
 mm/Kconfig              |  3 +++
 mm/vmalloc.c            | 45 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 49 insertions(+)

diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
index b899681e3ff9f0..c77efeac242514 100644
--- a/include/linux/vmalloc.h
+++ b/include/linux/vmalloc.h
@@ -122,6 +122,7 @@ extern void vfree_atomic(const void *addr);
 
 extern void *vmap(struct page **pages, unsigned int count,
 			unsigned long flags, pgprot_t prot);
+void *vmap_pfn(unsigned long *pfns, unsigned int count, pgprot_t prot);
 extern void vunmap(const void *addr);
 
 extern int remap_vmalloc_range_partial(struct vm_area_struct *vma,
diff --git a/mm/Kconfig b/mm/Kconfig
index 6c974888f86f97..6fa7ba1199eb1e 100644
--- a/mm/Kconfig
+++ b/mm/Kconfig
@@ -815,6 +815,9 @@ config DEVICE_PRIVATE
 	  memory; i.e., memory that is only accessible from the device (or
 	  group of devices). You likely also want to select HMM_MIRROR.
 
+config VMAP_PFN
+	bool
+
 config FRAME_VECTOR
 	bool
 
diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index ffad65f052c3f9..e2a2ded8d93478 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -2413,6 +2413,51 @@ void *vmap(struct page **pages, unsigned int count,
 }
 EXPORT_SYMBOL(vmap);
 
+#ifdef CONFIG_VMAP_PFN
+struct vmap_pfn_data {
+	unsigned long	*pfns;
+	pgprot_t	prot;
+	unsigned int	idx;
+};
+
+static int vmap_pfn_apply(pte_t *pte, unsigned long addr, void *private)
+{
+	struct vmap_pfn_data *data = private;
+
+	if (WARN_ON_ONCE(pfn_valid(data->pfns[data->idx])))
+		return -EINVAL;
+	*pte = pte_mkspecial(pfn_pte(data->pfns[data->idx++], data->prot));
+	return 0;
+}
+
+/**
+ * vmap_pfn - map an array of PFNs into virtually contiguous space
+ * @pfns: array of PFNs
+ * @count: number of pages to map
+ * @prot: page protection for the mapping
+ *
+ * Maps @count PFNs from @pfns into contiguous kernel virtual space and returns
+ * the start address of the mapping.
+ */
+void *vmap_pfn(unsigned long *pfns, unsigned int count, pgprot_t prot)
+{
+	struct vmap_pfn_data data = { .pfns = pfns, .prot = pgprot_nx(prot) };
+	struct vm_struct *area;
+
+	area = get_vm_area_caller(count * PAGE_SIZE, VM_IOREMAP,
+			__builtin_return_address(0));
+	if (!area)
+		return NULL;
+	if (apply_to_page_range(&init_mm, (unsigned long)area->addr,
+			count * PAGE_SIZE, vmap_pfn_apply, &data)) {
+		free_vm_area(area);
+		return NULL;
+	}
+	return area->addr;
+}
+EXPORT_SYMBOL_GPL(vmap_pfn);
+#endif /* CONFIG_VMAP_PFN */
+
 static void *__vmalloc_area_node(struct vm_struct *area, gfp_t gfp_mask,
 				 pgprot_t prot, int node)
 {
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
