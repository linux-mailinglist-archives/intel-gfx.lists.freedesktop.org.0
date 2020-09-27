Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5C0279EF5
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Sep 2020 08:41:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B48C86E231;
	Sun, 27 Sep 2020 06:41:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C72F06E231
 for <Intel-gfx@lists.freedesktop.org>; Sun, 27 Sep 2020 06:41:06 +0000 (UTC)
IronPort-SDR: McGhuBPD1MGEQfhnf3scSD2bBlOgs0oc9Y0RLqFWtvSrax4+JzbvA7hrDRpvCYgq2coXPf8KWe
 fH092jmWaCCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9756"; a="141863674"
X-IronPort-AV: E=Sophos;i="5.77,309,1596524400"; d="scan'208";a="141863674"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2020 23:41:06 -0700
IronPort-SDR: sQ9Rqh7qnuuDrBqmt2IhYvJsW46yzj2J65+VmYZwvcZ7SWlDRXJnI9f0iwBS0Ut5s2+q9NolDG
 XW3ie8UZpcGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,309,1596524400"; d="scan'208";a="349457919"
Received: from allen-box.sh.intel.com ([10.239.159.139])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Sep 2020 23:41:04 -0700
From: Lu Baolu <baolu.lu@linux.intel.com>
To: Joerg Roedel <joro@8bytes.org>, Tom Murphy <murphyt7@tcd.ie>,
 David Woodhouse <dwmw2@infradead.org>,
 Christoph Hellwig <hch@infradead.org>
Date: Sun, 27 Sep 2020 14:34:37 +0800
Message-Id: <20200927063437.13988-8-baolu.lu@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200927063437.13988-1-baolu.lu@linux.intel.com>
References: <20200927063437.13988-1-baolu.lu@linux.intel.com>
Subject: [Intel-gfx] [PATCH v4 7/7] iommu/vt-d: Cleanup after converting to
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
index 69ccf92ab37b..5135d9ba0993 100644
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
@@ -2277,15 +2273,14 @@ static inline int hardware_largepage_caps(struct dmar_domain *domain,
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
@@ -2297,26 +2292,14 @@ static int __domain_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
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
@@ -2328,7 +2311,7 @@ static int __domain_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
 				pteval |= DMA_PTE_LARGE_PAGE;
 				lvl_pages = lvl_to_nr_pages(largepage_lvl);
 
-				nr_superpages = sg_res / lvl_pages;
+				nr_superpages = nr_pages / lvl_pages;
 				end_pfn = iov_pfn + nr_superpages * lvl_pages - 1;
 
 				/*
@@ -2362,48 +2345,45 @@ static int __domain_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
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
 
@@ -2415,20 +2395,6 @@ static int domain_mapping(struct dmar_domain *domain, unsigned long iov_pfn,
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
@@ -2685,7 +2651,7 @@ static int iommu_domain_identity_map(struct dmar_domain *domain,
 	 */
 	dma_pte_clear_range(domain, first_vpfn, last_vpfn);
 
-	return __domain_mapping(domain, first_vpfn, NULL,
+	return __domain_mapping(domain, first_vpfn,
 				first_vpfn, last_vpfn - first_vpfn + 1,
 				DMA_PTE_READ|DMA_PTE_WRITE);
 }
@@ -4940,8 +4906,8 @@ static int intel_iommu_map(struct iommu_domain *domain,
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
