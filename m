Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EB6E327950
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Mar 2021 09:34:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC4506E508;
	Mon,  1 Mar 2021 08:34:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 817EE6E508;
 Mon,  1 Mar 2021 08:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=5okII3/8h58rgn4jp5TNF5PQZbN/aK3fOX2J854+QJw=; b=C6Q2MCZ2aX31fQTNK5IHPR7eU5
 sZLuU5AFntTYfe0IH9nbPNeqgsobaM2Bx9+oayfhZA2B+wUkOWkm7JHOEWCd3z6EB/KnJIDQ1Jo59
 aMqp8o8OnFsAz3ieMpl4qA2a5JISLxjBpERJEIx9FpurnEPzwPI0FurR4I0vpmFt8HkObYYBbhJ6w
 skBtu6QwrVIGimFo1Sn0VLMYA3efIGRNwGMIrmVp/ZtMeuIBM9Q3n4taUDAaAOB8QXn3yke6TbSId
 uh4IrqYoKKem33eWgBsr3vz/dOGF1/3zpHWiYu4xVa2N0/YrstoSYbjOyPcUJERztsTJYJyyOLRb6
 2mrDghIQ==;
Received: from [2001:4bb8:19b:e4b7:cdf9:733f:4874:8eb4] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lGdzr-00FTyT-RE; Mon, 01 Mar 2021 08:33:54 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon,  1 Mar 2021 09:33:19 +0100
Message-Id: <20210301083320.943079-2-hch@lst.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301083320.943079-1-hch@lst.de>
References: <20210301083320.943079-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 1/2] mm: add remap_pfn_range_notrack
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

Add a version of remap_pfn_range that does not call track_pfn_range.
This will be used to fix horrible abuses of VM internals in the i915
driver.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/mm.h |  2 ++
 mm/memory.c        | 52 ++++++++++++++++++++++++++++------------------
 2 files changed, 34 insertions(+), 20 deletions(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 77e64e3eac80bd..fc3438daf5cfd8 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2688,6 +2688,8 @@ unsigned long change_prot_numa(struct vm_area_struct *vma,
 struct vm_area_struct *find_extend_vma(struct mm_struct *, unsigned long addr);
 int remap_pfn_range(struct vm_area_struct *, unsigned long addr,
 			unsigned long pfn, unsigned long size, pgprot_t);
+int remap_pfn_range_notrack(struct vm_area_struct *vma, unsigned long addr,
+		unsigned long pfn, unsigned long size, pgprot_t prot);
 int vm_insert_page(struct vm_area_struct *, unsigned long addr, struct page *);
 int vm_insert_pages(struct vm_area_struct *vma, unsigned long addr,
 			struct page **pages, unsigned long *num);
diff --git a/mm/memory.c b/mm/memory.c
index c8e35762731861..d038c13f489b78 100644
--- a/mm/memory.c
+++ b/mm/memory.c
@@ -2266,26 +2266,17 @@ static inline int remap_p4d_range(struct mm_struct *mm, pgd_t *pgd,
 	return 0;
 }
 
-/**
- * remap_pfn_range - remap kernel memory to userspace
- * @vma: user vma to map to
- * @addr: target page aligned user address to start at
- * @pfn: page frame number of kernel physical memory address
- * @size: size of mapping area
- * @prot: page protection flags for this mapping
- *
- * Note: this is only safe if the mm semaphore is held when called.
- *
- * Return: %0 on success, negative error code otherwise.
+/*
+ * Variant of remap_pfn_range that does not call track_pfn_remap.  The caller
+ * must have pre-validated the caching bits of the pgprot_t.
  */
-int remap_pfn_range(struct vm_area_struct *vma, unsigned long addr,
-		    unsigned long pfn, unsigned long size, pgprot_t prot)
+int remap_pfn_range_notrack(struct vm_area_struct *vma, unsigned long addr,
+		unsigned long pfn, unsigned long size, pgprot_t prot)
 {
 	pgd_t *pgd;
 	unsigned long next;
 	unsigned long end = addr + PAGE_ALIGN(size);
 	struct mm_struct *mm = vma->vm_mm;
-	unsigned long remap_pfn = pfn;
 	int err;
 
 	if (WARN_ON_ONCE(!PAGE_ALIGNED(addr)))
@@ -2315,10 +2306,6 @@ int remap_pfn_range(struct vm_area_struct *vma, unsigned long addr,
 		vma->vm_pgoff = pfn;
 	}
 
-	err = track_pfn_remap(vma, &prot, remap_pfn, addr, PAGE_ALIGN(size));
-	if (err)
-		return -EINVAL;
-
 	vma->vm_flags |= VM_IO | VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP;
 
 	BUG_ON(addr >= end);
@@ -2330,12 +2317,37 @@ int remap_pfn_range(struct vm_area_struct *vma, unsigned long addr,
 		err = remap_p4d_range(mm, pgd, addr, next,
 				pfn + (addr >> PAGE_SHIFT), prot);
 		if (err)
-			break;
+			return err;
 	} while (pgd++, addr = next, addr != end);
 
+	return 0;
+}
+EXPORT_SYMBOL_GPL(remap_pfn_range_notrack);
+
+/**
+ * remap_pfn_range - remap kernel memory to userspace
+ * @vma: user vma to map to
+ * @addr: target page aligned user address to start at
+ * @pfn: page frame number of kernel physical memory address
+ * @size: size of mapping area
+ * @prot: page protection flags for this mapping
+ *
+ * Note: this is only safe if the mm semaphore is held when called.
+ *
+ * Return: %0 on success, negative error code otherwise.
+ */
+int remap_pfn_range(struct vm_area_struct *vma, unsigned long addr,
+		    unsigned long pfn, unsigned long size, pgprot_t prot)
+{
+	int err;
+
+	err = track_pfn_remap(vma, &prot, pfn, addr, PAGE_ALIGN(size));
 	if (err)
-		untrack_pfn(vma, remap_pfn, PAGE_ALIGN(size));
+		return -EINVAL;
 
+	err = remap_pfn_range_notrack(vma, addr, pfn, size, prot);
+	if (err)
+		untrack_pfn(vma, pfn, PAGE_ALIGN(size));
 	return err;
 }
 EXPORT_SYMBOL(remap_pfn_range);
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
