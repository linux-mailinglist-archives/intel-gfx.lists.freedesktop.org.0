Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D3E26779B
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Sep 2020 05:55:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A8636E12F;
	Sat, 12 Sep 2020 03:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B1B186E0F8;
 Sat, 12 Sep 2020 03:55:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1745A3C0D;
 Sat, 12 Sep 2020 03:55:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Logan Gunthorpe" <logang@deltatee.com>
Date: Sat, 12 Sep 2020 03:55:11 -0000
Message-ID: <159988291163.6916.1942728925165059705@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200912032200.11489-1-baolu.lu@linux.intel.com>
In-Reply-To: <20200912032200.11489-1-baolu.lu@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Convert_the_intel_iommu_driver_to_the_dma-iommu_api_=28rev2?=
 =?utf-8?q?=29?=
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

Series: Convert the intel iommu driver to the dma-iommu api (rev2)
URL   : https://patchwork.freedesktop.org/series/71260/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fd87dbc34e1f iommu: Handle freelists when using deferred flushing in iommu drivers
97922dbedb56 iommu: Add iommu_dma_free_cpu_cached_iovas()
-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/iommu/dma-iommu.c:54:
+void iommu_dma_free_cpu_cached_iovas(unsigned int cpu,
+		struct iommu_domain *domain)

-:41: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#41: FILE: include/linux/dma-iommu.h:41:
+void iommu_dma_free_cpu_cached_iovas(unsigned int cpu,
+		struct iommu_domain *domain);

-:51: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#51: FILE: include/linux/dma-iommu.h:85:
+static inline void iommu_dma_free_cpu_cached_iovas(unsigned int cpu,
+		struct iommu_domain *domain)

total: 0 errors, 0 warnings, 3 checks, 34 lines checked
ad5dd468bfc2 iommu: Allow the dma-iommu api to use bounce buffers
-:34: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#34: FILE: drivers/iommu/dma-iommu.c:504:
+static void __iommu_dma_unmap_swiotlb(struct device *dev, dma_addr_t dma_addr,
+		size_t size, enum dma_data_direction dir,

-:50: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#50: FILE: drivers/iommu/dma-iommu.c:520:
+		swiotlb_tbl_unmap_single(dev, phys, size,
+				iova_align(iovad, size), dir, attrs);

-:66: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#66: FILE: drivers/iommu/dma-iommu.c:554:
+static dma_addr_t __iommu_dma_map_swiotlb(struct device *dev, phys_addr_t phys,
+		size_t org_size, dma_addr_t dma_mask, bool coherent,

-:86: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#86: FILE: drivers/iommu/dma-iommu.c:574:
+		phys = swiotlb_tbl_map_single(dev,
+				__phys_to_dma(dev, io_tlb_start),

-:107: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'iova == DMA_MAPPING_ERROR'
#107: FILE: drivers/iommu/dma-iommu.c:595:
+	if ((iova == DMA_MAPPING_ERROR) && is_swiotlb_buffer(phys))

-:109: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#109: FILE: drivers/iommu/dma-iommu.c:597:
+		swiotlb_tbl_unmap_single(dev, phys, org_size,
+				aligned_size, dir, attrs);

-:204: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#204: FILE: drivers/iommu/dma-iommu.c:853:
+	dma_handle = __iommu_dma_map_swiotlb(dev, phys, size, dma_get_mask(dev),
+			coherent, dir, attrs);

-:222: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#222: FILE: drivers/iommu/dma-iommu.c:944:
+static void iommu_dma_unmap_sg_swiotlb(struct device *dev, struct scatterlist *sg,
+		int nents, enum dma_data_direction dir, unsigned long attrs)

-:229: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#229: FILE: drivers/iommu/dma-iommu.c:951:
+		__iommu_dma_unmap_swiotlb(dev, sg_dma_address(s),
+				sg_dma_len(s), dir, attrs);

-:233: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#233: FILE: drivers/iommu/dma-iommu.c:955:
+static int iommu_dma_map_sg_swiotlb(struct device *dev, struct scatterlist *sg,
+		int nents, enum dma_data_direction dir, unsigned long attrs)

-:240: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#240: FILE: drivers/iommu/dma-iommu.c:962:
+		sg_dma_address(s) = __iommu_dma_map_swiotlb(dev, sg_phys(s),
+				s->length, dma_get_mask(dev),

total: 0 errors, 0 warnings, 11 checks, 250 lines checked
0401236a9134 iommu: Add quirk for Intel graphic devices in map_sg
ee870127e9f4 iommu/vt-d: Convert intel iommu driver to the iommu ops
618c6431795e iommu/vt-d: Cleanup after converting to dma-iommu ops
-:96: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#96: FILE: drivers/iommu/intel/iommu.c:2253:
+			largepage_lvl = hardware_largepage_caps(domain, iov_pfn,
+					phys_pfn, nr_pages);

total: 0 errors, 0 warnings, 1 checks, 186 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
