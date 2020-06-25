Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D029209F99
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 15:17:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 965BB6E27A;
	Thu, 25 Jun 2020 13:17:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60E366E243
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 13:16:58 +0000 (UTC)
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 5E1104CB; Thu, 25 Jun 2020 15:08:39 +0200 (CEST)
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Date: Thu, 25 Jun 2020 15:08:31 +0200
Message-Id: <20200625130836.1916-9-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200625130836.1916-1-joro@8bytes.org>
References: <20200625130836.1916-1-joro@8bytes.org>
Subject: [Intel-gfx] [PATCH 08/13] iommu/mediatek: Do no use
 dev->archdata.iommu
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
Cc: linux-ia64@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Joerg Roedel <joro@8bytes.org>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Fenghua Yu <fenghua.yu@intel.com>,
 Joerg Roedel <jroedel@suse.de>, intel-gfx@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Tony Luck <tony.luck@intel.com>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 David Woodhouse <dwmw2@infradead.org>, Lu Baolu <baolu.lu@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Joerg Roedel <jroedel@suse.de>

The iommu private pointer is already used in the Mediatek IOMMU v1
driver, so move the dma_iommu_mapping pointer into 'struct
mtk_iommu_data' and do not use dev->archdata.iommu anymore.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/mtk_iommu.h    |  2 ++
 drivers/iommu/mtk_iommu_v1.c | 10 ++++------
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index ea949a324e33..1682406e98dc 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -62,6 +62,8 @@ struct mtk_iommu_data {
 	struct iommu_device		iommu;
 	const struct mtk_iommu_plat_data *plat_data;
 
+	struct dma_iommu_mapping	*mapping; /* For mtk_iommu_v1.c */
+
 	struct list_head		list;
 	struct mtk_smi_larb_iommu	larb_imu[MTK_LARB_NR_MAX];
 };
diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index c9d79cff4d17..82ddfe9170d4 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -269,7 +269,7 @@ static int mtk_iommu_attach_device(struct iommu_domain *domain,
 	int ret;
 
 	/* Only allow the domain created internally. */
-	mtk_mapping = data->dev->archdata.iommu;
+	mtk_mapping = data->mapping;
 	if (mtk_mapping->domain != domain)
 		return 0;
 
@@ -369,7 +369,6 @@ static int mtk_iommu_create_mapping(struct device *dev,
 	struct mtk_iommu_data *data;
 	struct platform_device *m4updev;
 	struct dma_iommu_mapping *mtk_mapping;
-	struct device *m4udev;
 	int ret;
 
 	if (args->args_count != 1) {
@@ -401,8 +400,7 @@ static int mtk_iommu_create_mapping(struct device *dev,
 		return ret;
 
 	data = dev_iommu_priv_get(dev);
-	m4udev = data->dev;
-	mtk_mapping = m4udev->archdata.iommu;
+	mtk_mapping = data->mapping;
 	if (!mtk_mapping) {
 		/* MTK iommu support 4GB iova address space. */
 		mtk_mapping = arm_iommu_create_mapping(&platform_bus_type,
@@ -410,7 +408,7 @@ static int mtk_iommu_create_mapping(struct device *dev,
 		if (IS_ERR(mtk_mapping))
 			return PTR_ERR(mtk_mapping);
 
-		m4udev->archdata.iommu = mtk_mapping;
+		data->mapping = mtk_mapping;
 	}
 
 	return 0;
@@ -459,7 +457,7 @@ static void mtk_iommu_probe_finalize(struct device *dev)
 	int err;
 
 	data        = dev_iommu_priv_get(dev);
-	mtk_mapping = data->dev->archdata.iommu;
+	mtk_mapping = data->mapping;
 
 	err = arm_iommu_attach_device(dev, mtk_mapping);
 	if (err)
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
