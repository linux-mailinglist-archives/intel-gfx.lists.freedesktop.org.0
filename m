Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED09E267773
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Sep 2020 05:28:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4666E0EB;
	Sat, 12 Sep 2020 03:28:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8EB96E0E9
 for <Intel-gfx@lists.freedesktop.org>; Sat, 12 Sep 2020 03:28:10 +0000 (UTC)
IronPort-SDR: La/kH3YK2oCiozGM6zoQ6Kq7nSMbzgmg0HnaOsDIiXIJmZ8kkpSCgB1U/TkC+FeoRINB+hYX2s
 bqYDHKgMLpvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="220441586"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="220441586"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 20:28:08 -0700
IronPort-SDR: xNAE87tAbhnUc0sPSWwvHmsNmjXPjCwtXN2eJaBvM8oIzBSsjL5IUUNc6J98KjY8ryWcCyePV2
 5EuUMoqnrUeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="408321397"
Received: from allen-box.sh.intel.com ([10.239.159.139])
 by fmsmga001.fm.intel.com with ESMTP; 11 Sep 2020 20:28:06 -0700
From: Lu Baolu <baolu.lu@linux.intel.com>
To: Joerg Roedel <joro@8bytes.org>, Tom Murphy <murphyt7@tcd.ie>,
 David Woodhouse <dwmw2@infradead.org>,
 Christoph Hellwig <hch@infradead.org>
Date: Sat, 12 Sep 2020 11:21:56 +0800
Message-Id: <20200912032200.11489-3-baolu.lu@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200912032200.11489-1-baolu.lu@linux.intel.com>
References: <20200912032200.11489-1-baolu.lu@linux.intel.com>
Subject: [Intel-gfx] [PATCH v3 2/6] iommu: Add
 iommu_dma_free_cpu_cached_iovas()
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

Add a iommu_dma_free_cpu_cached_iovas function to allow drivers which
use the dma-iommu ops to free cached cpu iovas.

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
Signed-off-by: Lu Baolu <baolu.lu@linux.intel.com>
---
 drivers/iommu/dma-iommu.c | 9 +++++++++
 include/linux/dma-iommu.h | 8 ++++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 82c071b2d5c8..d06411bd5e08 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -50,6 +50,15 @@ struct iommu_dma_cookie {
 	struct iommu_domain		*fq_domain;
 };
 
+void iommu_dma_free_cpu_cached_iovas(unsigned int cpu,
+		struct iommu_domain *domain)
+{
+	struct iommu_dma_cookie *cookie = domain->iova_cookie;
+	struct iova_domain *iovad = &cookie->iovad;
+
+	free_cpu_cached_iovas(cpu, iovad);
+}
+
 static void iommu_dma_entry_dtor(unsigned long data)
 {
 	struct page *freelist = (struct page *)data;
diff --git a/include/linux/dma-iommu.h b/include/linux/dma-iommu.h
index 2112f21f73d8..706b68d1359b 100644
--- a/include/linux/dma-iommu.h
+++ b/include/linux/dma-iommu.h
@@ -37,6 +37,9 @@ void iommu_dma_compose_msi_msg(struct msi_desc *desc,
 
 void iommu_dma_get_resv_regions(struct device *dev, struct list_head *list);
 
+void iommu_dma_free_cpu_cached_iovas(unsigned int cpu,
+		struct iommu_domain *domain);
+
 #else /* CONFIG_IOMMU_DMA */
 
 struct iommu_domain;
@@ -78,5 +81,10 @@ static inline void iommu_dma_get_resv_regions(struct device *dev, struct list_he
 {
 }
 
+static inline void iommu_dma_free_cpu_cached_iovas(unsigned int cpu,
+		struct iommu_domain *domain)
+{
+}
+
 #endif	/* CONFIG_IOMMU_DMA */
 #endif	/* __DMA_IOMMU_H */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
