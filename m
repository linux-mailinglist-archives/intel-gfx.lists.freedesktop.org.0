Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFA8128C4C
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 03:34:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EE396E4CA;
	Sun, 22 Dec 2019 02:34:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A33856E480
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 15:04:27 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id v28so11362483edw.12
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 07:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g9kFTz+OIjtd02sboEb/xPH2umLLduJGHZnkezx3k0U=;
 b=CTktPvnNq1jyejKuw4FPmsDHJqlMqnIK+LqTDjsTZ1ZsJVdD5K3EVXU9H9QfhP1vZi
 Dr+qg3qIXY699xoJ8F0TOCouYc1BBGbU43hDF2kmAYXm04HO5vI0AZGZAi2jkV0r6EFN
 Uqqu8MF/N0nkVC19U2nfYFQHC/XM6Mw8TaFgZUgu9czVrLEwvawDZRjnsTBB+/yigVh0
 MNGrdrt/6eys15k3D6741eDIFVQEakAIF0yLafdCTI/WakOrjNrokbN5gIZLsHdv6rvT
 JHYoqwNQsVMDBB0wYNztnmjEhP8hzVgepORwDvLZVBZd6aM2+hZeuyiCzwGgtYXJJ1Dy
 5Qag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g9kFTz+OIjtd02sboEb/xPH2umLLduJGHZnkezx3k0U=;
 b=f28n4x6EeWSuE1wHMfp958r9JumEI5KbkdnwUsvKB9RNyxXn4DIJlZ2KmqR60tZTLp
 rp234kWCzXnwM8YgOLVLtGsGnr3OQOT95gJ/Kg+nrWG6FUfM128/oyiYX8nx5HPJuTVz
 tIqvof/knjZq/ULJ5hxl+2AbticmVcZRAyIAisKyZunx9a6TS6Vho0WuHcRSp/6KUrVO
 dIuCUns4YEqOAOVlIpSg0B51Xf1A+9CtCQe72HjoM3QtgVPs4Zx/qy4IOYCeItmiDyB0
 F7Ttqtmfu6ug0wo7b5pNvPvGeUV4CRj4wQ3mnFfsz4PKVIxF6BgwzuglWvAgQNGSnTD0
 +R5g==
X-Gm-Message-State: APjAAAUewGIF/71f3O2SiBI8JhfV5nhukrSA37jml3URLEDnAbgU0wS4
 jjyOEhpylejgvLsYmAO54GOmjQ==
X-Google-Smtp-Source: APXvYqz53m9hdZ0HCFwnxdnPVWgrcBCgGDP73tz51CWh/bfe9HlHp6dFxdkAOOP0s/SRLuvh29w7og==
X-Received: by 2002:a50:d0d0:: with SMTP id g16mr22057226edf.75.1576940666211; 
 Sat, 21 Dec 2019 07:04:26 -0800 (PST)
Received: from localhost.localdomain ([80.233.37.20])
 by smtp.googlemail.com with ESMTPSA id u13sm1517639ejz.69.2019.12.21.07.04.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Dec 2019 07:04:25 -0800 (PST)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Date: Sat, 21 Dec 2019 15:03:54 +0000
Message-Id: <20191221150402.13868-3-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191221150402.13868-1-murphyt7@tcd.ie>
References: <20191221150402.13868-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 22 Dec 2019 02:34:03 +0000
Subject: [Intel-gfx] [PATCH 2/8] iommu/vt-d: Use default dma_direct_*
 mapping functions for direct mapped devices
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-tegra@vger.kernel.org,
 Julien Grall <julien.grall@arm.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Eric Auger <eric.auger@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Kukjin Kim <kgene@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We should only assign intel_dma_ops to devices which will actually use
the iommu and let the default fall back dma_direct_* functions handle
all other devices. This won't change any behaviour but will just use the
generic implementations for direct mapped devices rather than intel
specific ones.

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
---
 drivers/iommu/intel-iommu.c | 52 +++++--------------------------------
 1 file changed, 6 insertions(+), 46 deletions(-)

diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index c1ea66467918..64b1a9793daa 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -2794,17 +2794,6 @@ static int __init si_domain_init(int hw)
 	return 0;
 }
 
-static int identity_mapping(struct device *dev)
-{
-	struct device_domain_info *info;
-
-	info = dev->archdata.iommu;
-	if (info && info != DUMMY_DEVICE_DOMAIN_INFO && info != DEFER_DEVICE_DOMAIN_INFO)
-		return (info->domain == si_domain);
-
-	return 0;
-}
-
 static int domain_add_dev_info(struct dmar_domain *domain, struct device *dev)
 {
 	struct dmar_domain *ndomain;
@@ -3461,12 +3450,6 @@ static struct dmar_domain *get_private_domain_for_dev(struct device *dev)
 	return domain;
 }
 
-/* Check if the dev needs to go through non-identity map and unmap process.*/
-static bool iommu_no_mapping(struct device *dev)
-{
-	return iommu_dummy(dev) || identity_mapping(dev);
-}
-
 static dma_addr_t __intel_map_single(struct device *dev, phys_addr_t paddr,
 				     size_t size, int dir, u64 dma_mask)
 {
@@ -3531,9 +3514,6 @@ static dma_addr_t intel_map_page(struct device *dev, struct page *page,
 				 enum dma_data_direction dir,
 				 unsigned long attrs)
 {
-	if (iommu_no_mapping(dev))
-		return dma_direct_map_page(dev, page, offset, size, dir, attrs);
-
 	return __intel_map_single(dev, page_to_phys(page) + offset, size, dir,
 			*dev->dma_mask);
 }
@@ -3542,10 +3522,6 @@ static dma_addr_t intel_map_resource(struct device *dev, phys_addr_t phys_addr,
 				     size_t size, enum dma_data_direction dir,
 				     unsigned long attrs)
 {
-	if (iommu_no_mapping(dev))
-		return dma_direct_map_resource(dev, phys_addr, size, dir,
-				attrs);
-
 	return __intel_map_single(dev, phys_addr, size, dir, *dev->dma_mask);
 }
 
@@ -3597,17 +3573,13 @@ static void intel_unmap_page(struct device *dev, dma_addr_t dev_addr,
 			     size_t size, enum dma_data_direction dir,
 			     unsigned long attrs)
 {
-	if (iommu_no_mapping(dev))
-		dma_direct_unmap_page(dev, dev_addr, size, dir, attrs);
-	else
-		intel_unmap(dev, dev_addr, size);
+	intel_unmap(dev, dev_addr, size);
 }
 
 static void intel_unmap_resource(struct device *dev, dma_addr_t dev_addr,
 		size_t size, enum dma_data_direction dir, unsigned long attrs)
 {
-	if (!iommu_no_mapping(dev))
-		intel_unmap(dev, dev_addr, size);
+	intel_unmap(dev, dev_addr, size);
 }
 
 static void *intel_alloc_coherent(struct device *dev, size_t size,
@@ -3617,9 +3589,6 @@ static void *intel_alloc_coherent(struct device *dev, size_t size,
 	struct page *page = NULL;
 	int order;
 
-	if (iommu_no_mapping(dev))
-		return dma_direct_alloc(dev, size, dma_handle, flags, attrs);
-
 	size = PAGE_ALIGN(size);
 	order = get_order(size);
 
@@ -3653,9 +3622,6 @@ static void intel_free_coherent(struct device *dev, size_t size, void *vaddr,
 	int order;
 	struct page *page = virt_to_page(vaddr);
 
-	if (iommu_no_mapping(dev))
-		return dma_direct_free(dev, size, vaddr, dma_handle, attrs);
-
 	size = PAGE_ALIGN(size);
 	order = get_order(size);
 
@@ -3673,9 +3639,6 @@ static void intel_unmap_sg(struct device *dev, struct scatterlist *sglist,
 	struct scatterlist *sg;
 	int i;
 
-	if (iommu_no_mapping(dev))
-		return dma_direct_unmap_sg(dev, sglist, nelems, dir, attrs);
-
 	for_each_sg(sglist, sg, nelems, i) {
 		nrpages += aligned_nrpages(sg_dma_address(sg), sg_dma_len(sg));
 	}
@@ -3699,8 +3662,6 @@ static int intel_map_sg(struct device *dev, struct scatterlist *sglist, int nele
 	struct intel_iommu *iommu;
 
 	BUG_ON(dir == DMA_NONE);
-	if (iommu_no_mapping(dev))
-		return dma_direct_map_sg(dev, sglist, nelems, dir, attrs);
 
 	domain = deferred_attach_domain(dev);
 	if (!domain)
@@ -3747,8 +3708,6 @@ static int intel_map_sg(struct device *dev, struct scatterlist *sglist, int nele
 
 static u64 intel_get_required_mask(struct device *dev)
 {
-	if (iommu_no_mapping(dev))
-		return dma_direct_get_required_mask(dev);
 	return DMA_BIT_MASK(32);
 }
 
@@ -5014,7 +4973,6 @@ int __init intel_iommu_init(void)
 	if (!has_untrusted_dev() || intel_no_bounce)
 		swiotlb = 0;
 #endif
-	dma_ops = &intel_dma_ops;
 
 	init_iommu_pm_ops();
 
@@ -5623,6 +5581,8 @@ static int intel_iommu_add_device(struct device *dev)
 				dev_info(dev,
 					 "Device uses a private identity domain.\n");
 			}
+		} else {
+			dev->dma_ops = &intel_dma_ops;
 		}
 	} else {
 		if (device_def_domain_type(dev) == IOMMU_DOMAIN_DMA) {
@@ -5639,6 +5599,7 @@ static int intel_iommu_add_device(struct device *dev)
 				dev_info(dev,
 					 "Device uses a private dma domain.\n");
 			}
+			dev->dma_ops = &intel_dma_ops;
 		}
 	}
 
@@ -5665,8 +5626,7 @@ static void intel_iommu_remove_device(struct device *dev)
 
 	iommu_device_unlink(&iommu->iommu, dev);
 
-	if (device_needs_bounce(dev))
-		set_dma_ops(dev, NULL);
+	set_dma_ops(dev, NULL);
 }
 
 static void intel_iommu_get_resv_regions(struct device *device,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
