Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E42E8128C4F
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 03:34:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA7776E4CB;
	Sun, 22 Dec 2019 02:34:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 873F06E480
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 15:04:34 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id b8so11390029edx.7
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 07:04:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3kw9XOM83Gnbnm5VBWA2//dqKfolDXj7oZ7r7B1xmXk=;
 b=LF2xaqTBBlPQ7i0KVmncE+goIEe89wuyJqhz7klIJWAT71TTSCk30NViAVT7SqjMw+
 7mDm8B7wD8nu4PWLGnZXpzTlibPXPwnZcaD0bsKB74d0NgcPmlUzaRXKjLR17+gOcimK
 8fjIXvrME+nRk1BO7gm1A2LxBEHGbznK81gTHWmTZMMCaBlZyxrmIn7FGdI85YZOwsIG
 mZw5pwH6nNkr1sXWvObIhq7po60PRXw2xmIt1UG+M5Qvx3peWdtOiYVPQYFu+brgYfWA
 HDkIR8dxB86cKmJJ7DVe6QZcvYxm/BF8hmbwSr9yCIqznQUjonCUJj32NcQy9vmF1Oq+
 PxqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3kw9XOM83Gnbnm5VBWA2//dqKfolDXj7oZ7r7B1xmXk=;
 b=Lv11Ksxwoiz43iQdb6+mCmfs+6nQ+0YcMRDCNgQEiaXF9g7fxCP4bJ/1ru+hO8Xd3e
 McLsLF1nGlAbGlRHTG8aiUEPEcNKf2lyI56hA57G3AD6MTc38+UW+7NRicVIQCi2O1Ip
 l7RLYgeQNRKz2s8LSv8wobJ2VTducBieoPGDX7ZoH+9i9WUBaXXKsfyMVy/M6clp4HZ8
 6NaLC8EhlNNSQL+juwJkB+A6KI/t33PpEs28uYsJq9vxi9kS31vr5Faufvn2D+5XPLTF
 jRmmxvjih8OXNbBz9nD9hH2byJa6gKc7E0OnpvX4O0HU0kTWBeaY/TKzFHZO7O4HRTot
 drkw==
X-Gm-Message-State: APjAAAVcAC8KAbaHzB892Y7fNGHc5xRrPz+y6PzWfNv7KTvqxaEhZZqF
 NBessMjziaV4J0SznP8L/YEuLA==
X-Google-Smtp-Source: APXvYqyaL08IHL0GcHhm3cVmdCwxRxirUVhP6DZU/+/bnczE7blAGMOLi2oiWq+7pBmE+gO544tPVg==
X-Received: by 2002:a17:906:49c4:: with SMTP id
 w4mr22272847ejv.158.1576940673039; 
 Sat, 21 Dec 2019 07:04:33 -0800 (PST)
Received: from localhost.localdomain ([80.233.37.20])
 by smtp.googlemail.com with ESMTPSA id u13sm1517639ejz.69.2019.12.21.07.04.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Dec 2019 07:04:32 -0800 (PST)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Date: Sat, 21 Dec 2019 15:03:55 +0000
Message-Id: <20191221150402.13868-4-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191221150402.13868-1-murphyt7@tcd.ie>
References: <20191221150402.13868-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 22 Dec 2019 02:34:03 +0000
Subject: [Intel-gfx] [PATCH 3/8] iommu/vt-d: Remove IOVA handling code from
 non-dma_ops path
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

Remove all IOVA handling code from the non-dma_ops path in the intel
iommu driver.

There's no need for the non-dma_ops path to keep track of IOVAs. The
whole point of the non-dma_ops path is that it allows the IOVAs to be
handled separately. The IOVA handling code removed in this patch is
pointless.

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
---
 drivers/iommu/intel-iommu.c | 89 ++++++++++++++-----------------------
 1 file changed, 33 insertions(+), 56 deletions(-)

diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index 64b1a9793daa..8d72ea0fb843 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -1908,7 +1908,8 @@ static void domain_exit(struct dmar_domain *domain)
 	domain_remove_dev_info(domain);
 
 	/* destroy iovas */
-	put_iova_domain(&domain->iovad);
+	if (domain->domain.type == IOMMU_DOMAIN_DMA)
+		put_iova_domain(&domain->iovad);
 
 	if (domain->pgd) {
 		struct page *freelist;
@@ -2671,19 +2672,9 @@ static struct dmar_domain *set_domain_for_dev(struct device *dev,
 }
 
 static int iommu_domain_identity_map(struct dmar_domain *domain,
-				     unsigned long long start,
-				     unsigned long long end)
+				     unsigned long first_vpfn,
+				     unsigned long last_vpfn)
 {
-	unsigned long first_vpfn = start >> VTD_PAGE_SHIFT;
-	unsigned long last_vpfn = end >> VTD_PAGE_SHIFT;
-
-	if (!reserve_iova(&domain->iovad, dma_to_mm_pfn(first_vpfn),
-			  dma_to_mm_pfn(last_vpfn))) {
-		pr_err("Reserving iova failed\n");
-		return -ENOMEM;
-	}
-
-	pr_debug("Mapping reserved region %llx-%llx\n", start, end);
 	/*
 	 * RMRR range might have overlap with physical memory range,
 	 * clear it first
@@ -2760,7 +2751,8 @@ static int __init si_domain_init(int hw)
 
 		for_each_mem_pfn_range(i, nid, &start_pfn, &end_pfn, NULL) {
 			ret = iommu_domain_identity_map(si_domain,
-					PFN_PHYS(start_pfn), PFN_PHYS(end_pfn));
+					mm_to_dma_pfn(start_pfn),
+					mm_to_dma_pfn(end_pfn));
 			if (ret)
 				return ret;
 		}
@@ -4593,58 +4585,37 @@ static int intel_iommu_memory_notifier(struct notifier_block *nb,
 				       unsigned long val, void *v)
 {
 	struct memory_notify *mhp = v;
-	unsigned long long start, end;
-	unsigned long start_vpfn, last_vpfn;
+	unsigned long start_vpfn = mm_to_dma_pfn(mhp->start_pfn);
+	unsigned long last_vpfn = mm_to_dma_pfn(mhp->start_pfn +
+			mhp->nr_pages - 1);
 
 	switch (val) {
 	case MEM_GOING_ONLINE:
-		start = mhp->start_pfn << PAGE_SHIFT;
-		end = ((mhp->start_pfn + mhp->nr_pages) << PAGE_SHIFT) - 1;
-		if (iommu_domain_identity_map(si_domain, start, end)) {
-			pr_warn("Failed to build identity map for [%llx-%llx]\n",
-				start, end);
+		if (iommu_domain_identity_map(si_domain, start_vpfn,
+					last_vpfn)) {
+			pr_warn("Failed to build identity map for [%lx-%lx]\n",
+				start_vpfn, last_vpfn);
 			return NOTIFY_BAD;
 		}
 		break;
 
 	case MEM_OFFLINE:
 	case MEM_CANCEL_ONLINE:
-		start_vpfn = mm_to_dma_pfn(mhp->start_pfn);
-		last_vpfn = mm_to_dma_pfn(mhp->start_pfn + mhp->nr_pages - 1);
-		while (start_vpfn <= last_vpfn) {
-			struct iova *iova;
+		{
 			struct dmar_drhd_unit *drhd;
 			struct intel_iommu *iommu;
 			struct page *freelist;
 
-			iova = find_iova(&si_domain->iovad, start_vpfn);
-			if (iova == NULL) {
-				pr_debug("Failed get IOVA for PFN %lx\n",
-					 start_vpfn);
-				break;
-			}
-
-			iova = split_and_remove_iova(&si_domain->iovad, iova,
-						     start_vpfn, last_vpfn);
-			if (iova == NULL) {
-				pr_warn("Failed to split IOVA PFN [%lx-%lx]\n",
-					start_vpfn, last_vpfn);
-				return NOTIFY_BAD;
-			}
-
-			freelist = domain_unmap(si_domain, iova->pfn_lo,
-					       iova->pfn_hi);
+			freelist = domain_unmap(si_domain, start_vpfn,
+					last_vpfn);
 
 			rcu_read_lock();
 			for_each_active_iommu(iommu, drhd)
 				iommu_flush_iotlb_psi(iommu, si_domain,
-					iova->pfn_lo, iova_size(iova),
+					start_vpfn, mhp->nr_pages,
 					!freelist, 0);
 			rcu_read_unlock();
 			dma_free_pagelist(freelist);
-
-			start_vpfn = iova->pfn_hi + 1;
-			free_iova_mem(iova);
 		}
 		break;
 	}
@@ -4672,8 +4643,9 @@ static void free_all_cpu_cached_iovas(unsigned int cpu)
 		for (did = 0; did < cap_ndoms(iommu->cap); did++) {
 			domain = get_iommu_domain(iommu, (u16)did);
 
-			if (!domain)
+			if (!domain || domain->domain.type != IOMMU_DOMAIN_DMA)
 				continue;
+
 			free_cpu_cached_iovas(cpu, &domain->iovad);
 		}
 	}
@@ -5095,9 +5067,6 @@ static int md_domain_init(struct dmar_domain *domain, int guest_width)
 {
 	int adjust_width;
 
-	init_iova_domain(&domain->iovad, VTD_PAGE_SIZE, IOVA_START_PFN);
-	domain_reserve_special_ranges(domain);
-
 	/* calculate AGAW */
 	domain->gaw = guest_width;
 	adjust_width = guestwidth_to_adjustwidth(guest_width);
@@ -5116,6 +5085,18 @@ static int md_domain_init(struct dmar_domain *domain, int guest_width)
 	return 0;
 }
 
+static void intel_init_iova_domain(struct dmar_domain *dmar_domain)
+{
+	init_iova_domain(&dmar_domain->iovad, VTD_PAGE_SIZE, IOVA_START_PFN);
+	copy_reserved_iova(&reserved_iova_list, &dmar_domain->iovad);
+
+	if (init_iova_flush_queue(&dmar_domain->iovad, iommu_flush_iova,
+				iova_entry_free)) {
+		pr_warn("iova flush queue initialization failed\n");
+		intel_iommu_strict = 1;
+	}
+}
+
 static struct iommu_domain *intel_iommu_domain_alloc(unsigned type)
 {
 	struct dmar_domain *dmar_domain;
@@ -5136,12 +5117,8 @@ static struct iommu_domain *intel_iommu_domain_alloc(unsigned type)
 			return NULL;
 		}
 
-		if (type == IOMMU_DOMAIN_DMA &&
-		    init_iova_flush_queue(&dmar_domain->iovad,
-					  iommu_flush_iova, iova_entry_free)) {
-			pr_warn("iova flush queue initialization failed\n");
-			intel_iommu_strict = 1;
-		}
+		if (type == IOMMU_DOMAIN_DMA)
+			intel_init_iova_domain(dmar_domain);
 
 		domain_update_iommu_cap(dmar_domain);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
