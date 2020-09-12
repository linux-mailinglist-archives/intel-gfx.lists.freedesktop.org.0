Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14650267771
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Sep 2020 05:28:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88B4F6E081;
	Sat, 12 Sep 2020 03:28:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7205E6E081
 for <Intel-gfx@lists.freedesktop.org>; Sat, 12 Sep 2020 03:28:09 +0000 (UTC)
IronPort-SDR: SqGhw41FweP6PR5GNiR7irKqQE+uL/aSuT/lxEayd7tJ7BYMRNIhJW8nqAuHbyoXZXUh9nsbCc
 qiQC/9uOrU1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="220441584"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="220441584"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 20:28:06 -0700
IronPort-SDR: xQh4118GOqs/1+PyAwnEcCygSu27/CDuu8TcRwx3fsmE9n57zbqAAeMWgr4sB3HFl6MHKfMTtZ
 ixIYv4R2yRVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="408321393"
Received: from allen-box.sh.intel.com ([10.239.159.139])
 by fmsmga001.fm.intel.com with ESMTP; 11 Sep 2020 20:28:03 -0700
From: Lu Baolu <baolu.lu@linux.intel.com>
To: Joerg Roedel <joro@8bytes.org>, Tom Murphy <murphyt7@tcd.ie>,
 David Woodhouse <dwmw2@infradead.org>,
 Christoph Hellwig <hch@infradead.org>
Date: Sat, 12 Sep 2020 11:21:55 +0800
Message-Id: <20200912032200.11489-2-baolu.lu@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200912032200.11489-1-baolu.lu@linux.intel.com>
References: <20200912032200.11489-1-baolu.lu@linux.intel.com>
Subject: [Intel-gfx] [PATCH v3 1/6] iommu: Handle freelists when using
 deferred flushing in iommu drivers
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
Cc: Ashok Raj <ashok.raj@intel.com>, Intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Lu Baolu <baolu.lu@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tom Murphy <murphyt7@tcd.ie>

Allow the iommu_unmap_fast to return newly freed page table pages and
pass the freelist to queue_iova in the dma-iommu ops path.

This is useful for iommu drivers (in this case the intel iommu driver)
which need to wait for the ioTLB to be flushed before newly
free/unmapped page table pages can be freed. This way we can still batch
ioTLB free operations and handle the freelists.

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
Signed-off-by: Lu Baolu <baolu.lu@linux.intel.com>
---
 drivers/iommu/dma-iommu.c   | 30 ++++++++++++++------
 drivers/iommu/intel/iommu.c | 55 ++++++++++++++++++++++++-------------
 include/linux/iommu.h       |  1 +
 3 files changed, 59 insertions(+), 27 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 5141d49a046b..82c071b2d5c8 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -50,6 +50,18 @@ struct iommu_dma_cookie {
 	struct iommu_domain		*fq_domain;
 };
 
+static void iommu_dma_entry_dtor(unsigned long data)
+{
+	struct page *freelist = (struct page *)data;
+
+	while (freelist) {
+		unsigned long p = (unsigned long)page_address(freelist);
+
+		freelist = freelist->freelist;
+		free_page(p);
+	}
+}
+
 static inline size_t cookie_msi_granule(struct iommu_dma_cookie *cookie)
 {
 	if (cookie->type == IOMMU_DMA_IOVA_COOKIE)
@@ -344,7 +356,8 @@ static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
 	if (!cookie->fq_domain && !iommu_domain_get_attr(domain,
 			DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE, &attr) && attr) {
 		cookie->fq_domain = domain;
-		init_iova_flush_queue(iovad, iommu_dma_flush_iotlb_all, NULL);
+		init_iova_flush_queue(iovad, iommu_dma_flush_iotlb_all,
+				      iommu_dma_entry_dtor);
 	}
 
 	if (!dev)
@@ -438,7 +451,7 @@ static dma_addr_t iommu_dma_alloc_iova(struct iommu_domain *domain,
 }
 
 static void iommu_dma_free_iova(struct iommu_dma_cookie *cookie,
-		dma_addr_t iova, size_t size)
+		dma_addr_t iova, size_t size, struct page *freelist)
 {
 	struct iova_domain *iovad = &cookie->iovad;
 
@@ -447,7 +460,8 @@ static void iommu_dma_free_iova(struct iommu_dma_cookie *cookie,
 		cookie->msi_iova -= size;
 	else if (cookie->fq_domain)	/* non-strict mode */
 		queue_iova(iovad, iova_pfn(iovad, iova),
-				size >> iova_shift(iovad), 0);
+				size >> iova_shift(iovad),
+				(unsigned long)freelist);
 	else
 		free_iova_fast(iovad, iova_pfn(iovad, iova),
 				size >> iova_shift(iovad));
@@ -472,7 +486,7 @@ static void __iommu_dma_unmap(struct device *dev, dma_addr_t dma_addr,
 
 	if (!cookie->fq_domain)
 		iommu_tlb_sync(domain, &iotlb_gather);
-	iommu_dma_free_iova(cookie, dma_addr, size);
+	iommu_dma_free_iova(cookie, dma_addr, size, iotlb_gather.freelist);
 }
 
 static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
@@ -494,7 +508,7 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
 		return DMA_MAPPING_ERROR;
 
 	if (iommu_map_atomic(domain, iova, phys - iova_off, size, prot)) {
-		iommu_dma_free_iova(cookie, iova, size);
+		iommu_dma_free_iova(cookie, iova, size, NULL);
 		return DMA_MAPPING_ERROR;
 	}
 	return iova + iova_off;
@@ -649,7 +663,7 @@ static void *iommu_dma_alloc_remap(struct device *dev, size_t size,
 out_free_sg:
 	sg_free_table(&sgt);
 out_free_iova:
-	iommu_dma_free_iova(cookie, iova, size);
+	iommu_dma_free_iova(cookie, iova, size, NULL);
 out_free_pages:
 	__iommu_dma_free_pages(pages, count);
 	return NULL;
@@ -900,7 +914,7 @@ static int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg,
 	return __finalise_sg(dev, sg, nents, iova);
 
 out_free_iova:
-	iommu_dma_free_iova(cookie, iova, iova_len);
+	iommu_dma_free_iova(cookie, iova, iova_len, NULL);
 out_restore_sg:
 	__invalidate_sg(sg, nents);
 	return 0;
@@ -1194,7 +1208,7 @@ static struct iommu_dma_msi_page *iommu_dma_get_msi_page(struct device *dev,
 	return msi_page;
 
 out_free_iova:
-	iommu_dma_free_iova(cookie, iova, size);
+	iommu_dma_free_iova(cookie, iova, size, NULL);
 out_free_page:
 	kfree(msi_page);
 	return NULL;
diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index 87b17bac04c2..63ee30c689a7 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -1208,17 +1208,17 @@ static struct page *dma_pte_clear_level(struct dmar_domain *domain, int level,
    pages can only be freed after the IOTLB flush has been done. */
 static struct page *domain_unmap(struct dmar_domain *domain,
 				 unsigned long start_pfn,
-				 unsigned long last_pfn)
+				 unsigned long last_pfn,
+				 struct page *freelist)
 {
-	struct page *freelist;
-
 	BUG_ON(!domain_pfn_supported(domain, start_pfn));
 	BUG_ON(!domain_pfn_supported(domain, last_pfn));
 	BUG_ON(start_pfn > last_pfn);
 
 	/* we don't need lock here; nobody else touches the iova range */
 	freelist = dma_pte_clear_level(domain, agaw_to_level(domain->agaw),
-				       domain->pgd, 0, start_pfn, last_pfn, NULL);
+				       domain->pgd, 0, start_pfn, last_pfn,
+				       freelist);
 
 	/* free pgd */
 	if (start_pfn == 0 && last_pfn == DOMAIN_MAX_PFN(domain->gaw)) {
@@ -1976,7 +1976,8 @@ static void domain_exit(struct dmar_domain *domain)
 	if (domain->pgd) {
 		struct page *freelist;
 
-		freelist = domain_unmap(domain, 0, DOMAIN_MAX_PFN(domain->gaw));
+		freelist = domain_unmap(domain, 0,
+					DOMAIN_MAX_PFN(domain->gaw), NULL);
 		dma_free_pagelist(freelist);
 	}
 
@@ -3532,7 +3533,7 @@ static void intel_unmap(struct device *dev, dma_addr_t dev_addr, size_t size)
 	if (dev_is_pci(dev))
 		pdev = to_pci_dev(dev);
 
-	freelist = domain_unmap(domain, start_pfn, last_pfn);
+	freelist = domain_unmap(domain, start_pfn, last_pfn, NULL);
 	if (intel_iommu_strict || (pdev && pdev->untrusted) ||
 			!has_iova_flush_queue(&domain->iovad)) {
 		iommu_flush_iotlb_psi(iommu, domain, start_pfn,
@@ -4595,7 +4596,8 @@ static int intel_iommu_memory_notifier(struct notifier_block *nb,
 			struct page *freelist;
 
 			freelist = domain_unmap(si_domain,
-						start_vpfn, last_vpfn);
+						start_vpfn, last_vpfn,
+						NULL);
 
 			rcu_read_lock();
 			for_each_active_iommu(iommu, drhd)
@@ -5570,10 +5572,8 @@ static size_t intel_iommu_unmap(struct iommu_domain *domain,
 				struct iommu_iotlb_gather *gather)
 {
 	struct dmar_domain *dmar_domain = to_dmar_domain(domain);
-	struct page *freelist = NULL;
 	unsigned long start_pfn, last_pfn;
-	unsigned int npages;
-	int iommu_id, level = 0;
+	int level = 0;
 
 	/* Cope with horrid API which requires us to unmap more than the
 	   size argument if it happens to be a large-page mapping. */
@@ -5585,22 +5585,38 @@ static size_t intel_iommu_unmap(struct iommu_domain *domain,
 	start_pfn = iova >> VTD_PAGE_SHIFT;
 	last_pfn = (iova + size - 1) >> VTD_PAGE_SHIFT;
 
-	freelist = domain_unmap(dmar_domain, start_pfn, last_pfn);
-
-	npages = last_pfn - start_pfn + 1;
-
-	for_each_domain_iommu(iommu_id, dmar_domain)
-		iommu_flush_iotlb_psi(g_iommus[iommu_id], dmar_domain,
-				      start_pfn, npages, !freelist, 0);
-
-	dma_free_pagelist(freelist);
+	gather->freelist = domain_unmap(dmar_domain, start_pfn,
+					last_pfn, gather->freelist);
 
 	if (dmar_domain->max_addr == iova + size)
 		dmar_domain->max_addr = iova;
 
+	iommu_iotlb_gather_add_page(domain, gather, iova, size);
+
 	return size;
 }
 
+static void intel_iommu_tlb_sync(struct iommu_domain *domain,
+				 struct iommu_iotlb_gather *gather)
+{
+	struct dmar_domain *dmar_domain = to_dmar_domain(domain);
+	unsigned long iova_pfn = IOVA_PFN(gather->start);
+	size_t size = gather->end - gather->start;
+	unsigned long start_pfn, last_pfn;
+	unsigned long nrpages;
+	int iommu_id;
+
+	nrpages = aligned_nrpages(gather->start, size);
+	start_pfn = mm_to_dma_pfn(iova_pfn);
+	last_pfn = start_pfn + nrpages - 1;
+
+	for_each_domain_iommu(iommu_id, dmar_domain)
+		iommu_flush_iotlb_psi(g_iommus[iommu_id], dmar_domain,
+				      start_pfn, nrpages, !gather->freelist, 0);
+
+	dma_free_pagelist(gather->freelist);
+}
+
 static phys_addr_t intel_iommu_iova_to_phys(struct iommu_domain *domain,
 					    dma_addr_t iova)
 {
@@ -6060,6 +6076,7 @@ const struct iommu_ops intel_iommu_ops = {
 	.aux_get_pasid		= intel_iommu_aux_get_pasid,
 	.map			= intel_iommu_map,
 	.unmap			= intel_iommu_unmap,
+	.iotlb_sync		= intel_iommu_tlb_sync,
 	.iova_to_phys		= intel_iommu_iova_to_phys,
 	.probe_device		= intel_iommu_probe_device,
 	.probe_finalize		= intel_iommu_probe_finalize,
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index fee209efb756..f0d56360a976 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -180,6 +180,7 @@ struct iommu_iotlb_gather {
 	unsigned long		start;
 	unsigned long		end;
 	size_t			pgsize;
+	struct page		*freelist;
 };
 
 /**
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
