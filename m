Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A48B209F8B
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 15:16:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B57588F94;
	Thu, 25 Jun 2020 13:16:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC584898E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 13:16:56 +0000 (UTC)
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 2FD2B4C4; Thu, 25 Jun 2020 15:08:39 +0200 (CEST)
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Date: Thu, 25 Jun 2020 15:08:30 +0200
Message-Id: <20200625130836.1916-8-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200625130836.1916-1-joro@8bytes.org>
References: <20200625130836.1916-1-joro@8bytes.org>
Subject: [Intel-gfx] [PATCH 07/13] iommu/pamu: Use dev_iommu_priv_get/set()
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

Remove the use of dev->archdata.iommu_domain and use the private
per-device pointer provided by IOMMU core code instead.

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/fsl_pamu_domain.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/fsl_pamu_domain.c b/drivers/iommu/fsl_pamu_domain.c
index 928d37771ece..b2110767caf4 100644
--- a/drivers/iommu/fsl_pamu_domain.c
+++ b/drivers/iommu/fsl_pamu_domain.c
@@ -323,7 +323,7 @@ static void remove_device_ref(struct device_domain_info *info, u32 win_cnt)
 	pamu_disable_liodn(info->liodn);
 	spin_unlock_irqrestore(&iommu_lock, flags);
 	spin_lock_irqsave(&device_domain_lock, flags);
-	info->dev->archdata.iommu_domain = NULL;
+	dev_iommu_priv_set(info->dev, NULL);
 	kmem_cache_free(iommu_devinfo_cache, info);
 	spin_unlock_irqrestore(&device_domain_lock, flags);
 }
@@ -352,7 +352,7 @@ static void attach_device(struct fsl_dma_domain *dma_domain, int liodn, struct d
 	 * Check here if the device is already attached to domain or not.
 	 * If the device is already attached to a domain detach it.
 	 */
-	old_domain_info = dev->archdata.iommu_domain;
+	old_domain_info = dev_iommu_priv_get(dev);
 	if (old_domain_info && old_domain_info->domain != dma_domain) {
 		spin_unlock_irqrestore(&device_domain_lock, flags);
 		detach_device(dev, old_domain_info->domain);
@@ -371,8 +371,8 @@ static void attach_device(struct fsl_dma_domain *dma_domain, int liodn, struct d
 	 * the info for the first LIODN as all
 	 * LIODNs share the same domain
 	 */
-	if (!dev->archdata.iommu_domain)
-		dev->archdata.iommu_domain = info;
+	if (!dev_iommu_priv_get(dev))
+		dev_iommu_priv_set(dev, info);
 	spin_unlock_irqrestore(&device_domain_lock, flags);
 }
 
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
