Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7048E26777A
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Sep 2020 05:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32D896EB14;
	Sat, 12 Sep 2020 03:28:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B0816E10D
 for <Intel-gfx@lists.freedesktop.org>; Sat, 12 Sep 2020 03:28:18 +0000 (UTC)
IronPort-SDR: tsFLaXAcnSj76pG5dktcPWIK9gAsHorZw4XJtbrzg7Agmc1MnVsTa+c8orhw+6mB3saqijmBil
 Q5b6Me0ZHSQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="220441599"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="220441599"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 20:28:17 -0700
IronPort-SDR: mopWuaxPAktfWcu9Aw9DSgFZNdp8ZqQ+lfl4n2xmsELXWXmU278ypX7gGmifljBm+0nEM0BLaa
 8+tIcvBEQcow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="408321438"
Received: from allen-box.sh.intel.com ([10.239.159.139])
 by fmsmga001.fm.intel.com with ESMTP; 11 Sep 2020 20:28:15 -0700
From: Lu Baolu <baolu.lu@linux.intel.com>
To: Joerg Roedel <joro@8bytes.org>, Tom Murphy <murphyt7@tcd.ie>,
 David Woodhouse <dwmw2@infradead.org>,
 Christoph Hellwig <hch@infradead.org>
Date: Sat, 12 Sep 2020 11:22:00 +0800
Message-Id: <20200912032200.11489-7-baolu.lu@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200912032200.11489-1-baolu.lu@linux.intel.com>
References: <20200912032200.11489-1-baolu.lu@linux.intel.com>
Subject: [Intel-gfx] [PATCH v3 6/6] iommu/vt-d: Cleanup after converting to
 dma-iommu ops
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

Some cleanups after converting the driver to use dma-iommu ops.
- Remove nobounce option;
- Cleanup and simplify the path in domain mapping.

Signed-off-by: Lu Baolu <baolu.lu@linux.intel.com>
---
 .../admin-guide/kernel-parameters.txt         |  5 --
 drivers/iommu/intel/iommu.c                   | 90 ++++++-------------
 2 files changed, 28 insertions(+), 67 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index a1068742a6df..0d11ef43d314 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -1866,11 +1866,6 @@
 			Note that using this option lowers the security
 			provided by tboot because it makes the system
 			vulnerable to DMA attacks.
-		nobounce [Default off]
-			Disable bounce buffer for untrusted devices such as
-			the Thunderbolt devices. This will treat the untrusted
-			devices as the trusted ones, hence might expose security
-			risks of DMA attacks.
 
 	intel_idle.max_cstate=	[KNL,HW,ACPI,X86]
 			0	disables intel_idle and fall back on acpi_idle.
diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index adc231790e0a..fe2544c95013 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -355,7 +355,6 @@ static int dmar_forcedac;
 static int intel_iommu_strict;
 static int intel_iommu_superpage = 1;
 static int iommu_identity_mapping;
-static int intel_no_bounce;
 static int iommu_skip_te_disable;
 
 #define IDENTMAP_GFX		2
@@ -457,9 +456,6 @@ static int __init intel_iommu_setup(char *str)
 		} else if (!strncmp(str, "tboot_noforce", 13)) {
 			pr_info("Intel-IOMMU: not forcing on after tboot. This could expose security risk for tboot\n");
 			intel_iommu_tboot_noforce = 1;
-		} else if (!strncmp(str, "nobounce", 8)) {
-			pr_info("Intel-IOMMU: No bounce buffer. This could expose security risks of DMA attacks\n");
-			intel_no_bounce = 1;
 		}
 
 		str += strcspn(str, ",");
@@ -2230,15 +2226,14 @@ static inline int hardware_largepage_caps(struct dmar_domain *domain,
 	return level;
 }
 
-static int __domain_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
-			    struct scatterlist *sg, unsigned long phys_pfn,
-			    unsigned long nr_pages, int prot)
+static int
+__domain_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
+		 unsigned long phys_pfn, unsigned long nr_pages, int prot)
 {
 	struct dma_pte *first_pte = NULL, *pte = NULL;
-	phys_addr_t pteval;
-	unsigned long sg_res = 0;
 	unsigned int largepage_lvl = 0;
 	unsigned long lvl_pages = 0;
+	phys_addr_t pteval;
 	u64 attr;
 
 	BUG_ON(!domain_pfn_supported(domain, iov_pfn + nr_pages - 1));
@@ -2250,26 +2245,14 @@ static int __domain_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
 	if (domain_use_first_level(domain))
 		attr |= DMA_FL_PTE_PRESENT | DMA_FL_PTE_XD | DMA_FL_PTE_US;
 
-	if (!sg) {
-		sg_res = nr_pages;
-		pteval = ((phys_addr_t)phys_pfn << VTD_PAGE_SHIFT) | attr;
-	}
+	pteval = ((phys_addr_t)phys_pfn << VTD_PAGE_SHIFT) | attr;
 
 	while (nr_pages > 0) {
 		uint64_t tmp;
 
-		if (!sg_res) {
-			unsigned int pgoff = sg->offset & ~PAGE_MASK;
-
-			sg_res = aligned_nrpages(sg->offset, sg->length);
-			sg->dma_address = ((dma_addr_t)iov_pfn << VTD_PAGE_SHIFT) + pgoff;
-			sg->dma_length = sg->length;
-			pteval = (sg_phys(sg) - pgoff) | attr;
-			phys_pfn = pteval >> VTD_PAGE_SHIFT;
-		}
-
 		if (!pte) {
-			largepage_lvl = hardware_largepage_caps(domain, iov_pfn, phys_pfn, sg_res);
+			largepage_lvl = hardware_largepage_caps(domain, iov_pfn,
+					phys_pfn, nr_pages);
 
 			first_pte = pte = pfn_to_dma_pte(domain, iov_pfn, &largepage_lvl);
 			if (!pte)
@@ -2281,7 +2264,7 @@ static int __domain_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
 				pteval |= DMA_PTE_LARGE_PAGE;
 				lvl_pages = lvl_to_nr_pages(largepage_lvl);
 
-				nr_superpages = sg_res / lvl_pages;
+				nr_superpages = nr_pages / lvl_pages;
 				end_pfn = iov_pfn + nr_superpages * lvl_pages - 1;
 
 				/*
@@ -2315,48 +2298,45 @@ static int __domain_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
 		lvl_pages = lvl_to_nr_pages(largepage_lvl);
 
 		BUG_ON(nr_pages < lvl_pages);
-		BUG_ON(sg_res < lvl_pages);
 
 		nr_pages -= lvl_pages;
 		iov_pfn += lvl_pages;
 		phys_pfn += lvl_pages;
 		pteval += lvl_pages * VTD_PAGE_SIZE;
-		sg_res -= lvl_pages;
 
 		/* If the next PTE would be the first in a new page, then we
-		   need to flush the cache on the entries we've just written.
-		   And then we'll need to recalculate 'pte', so clear it and
-		   let it get set again in the if (!pte) block above.
-
-		   If we're done (!nr_pages) we need to flush the cache too.
-
-		   Also if we've been setting superpages, we may need to
-		   recalculate 'pte' and switch back to smaller pages for the
-		   end of the mapping, if the trailing size is not enough to
-		   use another superpage (i.e. sg_res < lvl_pages). */
+		 * need to flush the cache on the entries we've just written.
+		 * And then we'll need to recalculate 'pte', so clear it and
+		 * let it get set again in the if (!pte) block above.
+		 *
+		 * If we're done (!nr_pages) we need to flush the cache too.
+		 *
+		 * Also if we've been setting superpages, we may need to
+		 * recalculate 'pte' and switch back to smaller pages for the
+		 * end of the mapping, if the trailing size is not enough to
+		 * use another superpage (i.e. nr_pages < lvl_pages).
+		 */
 		pte++;
 		if (!nr_pages || first_pte_in_page(pte) ||
-		    (largepage_lvl > 1 && sg_res < lvl_pages)) {
+		    (largepage_lvl > 1 && nr_pages < lvl_pages)) {
 			domain_flush_cache(domain, first_pte,
 					   (void *)pte - (void *)first_pte);
 			pte = NULL;
 		}
-
-		if (!sg_res && nr_pages)
-			sg = sg_next(sg);
 	}
+
 	return 0;
 }
 
-static int domain_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
-			  struct scatterlist *sg, unsigned long phys_pfn,
-			  unsigned long nr_pages, int prot)
+static int
+domain_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
+	       unsigned long phys_pfn, unsigned long nr_pages, int prot)
 {
 	int iommu_id, ret;
 	struct intel_iommu *iommu;
 
 	/* Do the real mapping first */
-	ret = __domain_mapping(domain, iov_pfn, sg, phys_pfn, nr_pages, prot);
+	ret = __domain_mapping(domain, iov_pfn, phys_pfn, nr_pages, prot);
 	if (ret)
 		return ret;
 
@@ -2368,20 +2348,6 @@ static int domain_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
 	return 0;
 }
 
-static inline int domain_sg_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
-				    struct scatterlist *sg, unsigned long nr_pages,
-				    int prot)
-{
-	return domain_mapping(domain, iov_pfn, sg, 0, nr_pages, prot);
-}
-
-static inline int domain_pfn_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
-				     unsigned long phys_pfn, unsigned long nr_pages,
-				     int prot)
-{
-	return domain_mapping(domain, iov_pfn, NULL, phys_pfn, nr_pages, prot);
-}
-
 static void domain_context_clear_one(struct intel_iommu *iommu, u8 bus, u8 devfn)
 {
 	unsigned long flags;
@@ -2638,7 +2604,7 @@ static int iommu_domain_identity_map(struct dmar_domain *domain,
 	 */
 	dma_pte_clear_range(domain, first_vpfn, last_vpfn);
 
-	return __domain_mapping(domain, first_vpfn, NULL,
+	return __domain_mapping(domain, first_vpfn,
 				first_vpfn, last_vpfn - first_vpfn + 1,
 				DMA_PTE_READ|DMA_PTE_WRITE);
 }
@@ -4895,8 +4861,8 @@ static int intel_iommu_map(struct iommu_domain *domain,
 	/* Round up size to next multiple of PAGE_SIZE, if it and
 	   the low bits of hpa would take us onto the next page */
 	size = aligned_nrpages(hpa, size);
-	ret = domain_pfn_mapping(dmar_domain, iova >> VTD_PAGE_SHIFT,
-				 hpa >> VTD_PAGE_SHIFT, size, prot);
+	ret = domain_mapping(dmar_domain, iova >> VTD_PAGE_SHIFT,
+			     hpa >> VTD_PAGE_SHIFT, size, prot);
 	return ret;
 }
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
