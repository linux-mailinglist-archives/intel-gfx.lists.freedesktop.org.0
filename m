Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC253128C58
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 03:43:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFEB16E4E6;
	Sun, 22 Dec 2019 02:43:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 813B36E4E3;
 Sun, 22 Dec 2019 02:43:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 69D4FA0091;
 Sun, 22 Dec 2019 02:43:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tom Murphy" <murphyt7@tcd.ie>
Date: Sun, 22 Dec 2019 02:43:42 -0000
Message-ID: <157698262240.8698.9302188286207253005@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191221150402.13868-1-murphyt7@tcd.ie>
In-Reply-To: <20191221150402.13868-1-murphyt7@tcd.ie>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Convert_the_intel_iommu_driver_to_the_dma-iommu_api?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Convert the intel iommu driver to the dma-iommu api
URL   : https://patchwork.freedesktop.org/series/71260/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4a2327b5e2dd iommu/vt-d: clean up 32bit si_domain assignment
-:189: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#189: FILE: drivers/iommu/intel-iommu.c:5615:
+		if (device_def_domain_type(dev) == IOMMU_DOMAIN_IDENTITY &&
+				dma_mask >= dma_get_required_mask(dev)) {

total: 0 errors, 0 warnings, 1 checks, 164 lines checked
746c1cb07c86 iommu/vt-d: Use default dma_direct_* mapping functions for direct mapped devices
da7e37085b86 iommu/vt-d: Remove IOVA handling code from non-dma_ops path
-:80: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#80: FILE: drivers/iommu/intel-iommu.c:4593:
+		if (iommu_domain_identity_map(si_domain, start_vpfn,
+					last_vpfn)) {

-:116: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#116: FILE: drivers/iommu/intel-iommu.c:4608:
+			freelist = domain_unmap(si_domain, start_vpfn,
+					last_vpfn);

-:163: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#163: FILE: drivers/iommu/intel-iommu.c:5092:
+	if (init_iova_flush_queue(&dmar_domain->iovad, iommu_flush_iova,
+				iova_entry_free)) {

total: 0 errors, 0 warnings, 3 checks, 159 lines checked
cd34da42186b iommu: Handle freelists when using deferred flushing in iommu drivers
-:96: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "freelist"
#96: FILE: drivers/iommu/dma-iommu.c:57:
+	while (freelist != NULL) {

-:104: CHECK:LINE_SPACING: Please don't use multiple blank lines
#104: FILE: drivers/iommu/dma-iommu.c:65:
+
+

-:114: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#114: FILE: drivers/iommu/dma-iommu.c:362:
+		init_iova_flush_queue(iovad, iommu_dma_flush_iotlb_all,
+				iommu_dma_entry_dtor);

-:133: CHECK:SPACING: No space is necessary after a cast
#133: FILE: drivers/iommu/dma-iommu.c:466:
+				(unsigned long) freelist);

-:150: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#150: FILE: drivers/iommu/dma-iommu.c:488:
+	unmapped = iommu_unmap_fast(domain, dma_addr, size, &iotlb_gather,
+			&freelist);

-:250: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#250: FILE: drivers/iommu/intel-iommu.c:1917:
+		freelist = domain_unmap(domain, 0, DOMAIN_MAX_PFN(domain->gaw),
+				NULL);

-:304: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#304: FILE: drivers/iommu/intel-iommu.c:5443:
+static void intel_iommu_flush_iotlb_range(struct iommu_domain *domain,
+		unsigned long iova, size_t size,

-:400: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#400: FILE: drivers/iommu/iommu.c:2032:
+	ret = __iommu_unmap(domain, iova, size, &iotlb_gather,
+			&freelist);

-:611: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#611: FILE: include/linux/iommu.h:270:
+	void (*flush_iotlb_range)(struct iommu_domain *domain,
+			unsigned long iova, size_t size,

-:638: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#638: FILE: include/linux/iommu.h:534:
+static inline void flush_iotlb_range(struct iommu_domain *domain,
+			unsigned long iova, size_t size,

total: 0 errors, 0 warnings, 10 checks, 523 lines checked
46112cc82738 iommu: Add iommu_dma_free_cpu_cached_iovas function
-:22: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#22: FILE: drivers/iommu/dma-iommu.c:54:
+void iommu_dma_free_cpu_cached_iovas(unsigned int cpu,
+		struct iommu_domain *domain)

-:42: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#42: FILE: include/linux/dma-iommu.h:41:
+void iommu_dma_free_cpu_cached_iovas(unsigned int cpu,
+		struct iommu_domain *domain);

total: 0 errors, 0 warnings, 2 checks, 24 lines checked
4be33d5f7bb6 iommu: allow the dma-iommu api to use bounce buffers
-:31: CHECK:LINE_SPACING: Please don't use multiple blank lines
#31: FILE: drivers/iommu/dma-iommu.c:510:
 
+

-:36: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#36: FILE: drivers/iommu/dma-iommu.c:515:
+static void __iommu_dma_unmap_swiotlb(struct device *dev, dma_addr_t dma_addr,
+		size_t size, enum dma_data_direction dir,

-:55: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#55: FILE: drivers/iommu/dma-iommu.c:534:
+		swiotlb_tbl_unmap_single(dev, phys, size,
+				aligned_size, dir, attrs);

-:82: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#82: FILE: drivers/iommu/dma-iommu.c:559:
+	if (iommu_needs_bounce_buffer(dev)
+			&& !iova_offset(iovad, phys | org_size)) {

-:84: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#84: FILE: drivers/iommu/dma-iommu.c:561:
+		phys = swiotlb_tbl_map_single(dev,
+				__phys_to_dma(dev, io_tlb_start),

-:113: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#113: FILE: drivers/iommu/dma-iommu.c:587:
+	if (iommu_map_atomic(domain, iova, phys - iova_off, aligned_size,
+				prot)) {

-:114: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#114: FILE: drivers/iommu/dma-iommu.c:588:
+				prot)) {
+

-:117: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#117: FILE: drivers/iommu/dma-iommu.c:591:
+			swiotlb_tbl_unmap_single(dev, phys, aligned_size,
+					aligned_size, dir, attrs);

-:131: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#131: FILE: drivers/iommu/dma-iommu.c:829:
+	dma_handle = __iommu_dma_map(dev, phys, size, dma_get_mask(dev),
+			coherent, dir, attrs);

-:185: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#185: FILE: drivers/iommu/dma-iommu.c:1138:
+	*handle = __iommu_dma_map(dev, page_to_phys(page), size,
+			dev->coherent_dma_mask, coherent, DMA_BIDIRECTIONAL,

-:227: CHECK:AVOID_EXTERNS: extern prototypes should be avoided in .h files
#227: FILE: include/linux/iommu.h:464:
+extern int iommu_needs_bounce_buffer(struct device *dev);

-:237: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#237: FILE: include/linux/iommu.h:536:
+static inline void iommu_flush_iotlb_range(struct iommu_domain *domain,
 			unsigned long iova, size_t size,

total: 0 errors, 0 warnings, 12 checks, 217 lines checked
0eeda0f2af1c iommu/vt-d: Convert intel iommu driver to the iommu ops
-:828: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#828: FILE: drivers/iommu/intel-iommu.c:4468:
+		if (type == IOMMU_DOMAIN_DMA &&
+				iommu_get_dma_cookie(&dmar_domain->domain))

-:865: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#865: FILE: drivers/iommu/intel-iommu.c:4928:
+			iommu_setup_dma_ops(dev, base,
+					__DOMAIN_MAX_ADDR(dmar_domain->gaw) -

-:876: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#876: FILE: drivers/iommu/intel-iommu.c:4947:
+			iommu_setup_dma_ops(dev, base,
+					__DOMAIN_MAX_ADDR(dmar_domain->gaw) -

-:894: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#894: FILE: drivers/iommu/intel-iommu.c:4974:
+static int intel_iommu_domain_get_attr(struct iommu_domain *domain,
+		enum iommu_attr attr, void *data)

total: 0 errors, 0 warnings, 4 checks, 920 lines checked
6c37d8e17b40 DO NOT MERGE: iommu: disable list appending in dma-iommu

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
