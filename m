Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6351E26C1E4
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 12:50:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B124C6E97F;
	Wed, 16 Sep 2020 10:50:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6D16E392
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 10:50:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22444377-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 11:50:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Sep 2020 11:50:22 +0100
Message-Id: <20200916105022.28316-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200916105022.28316-1-chris@chris-wilson.co.uk>
References: <20200916105022.28316-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/selftests: Push the fake iommu device
 from the stack to data
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we store a pointer to the fake iommu device that is allocated on
the stack, as soon as we leave the function it goes out of scope and any
future dereference is undefined behaviour. Just in case we may need to
look at the fake iommu device after initialiation, move the allocation
from the stack into the data.

Fixes: 01b9d4e21148 ("iommu/vt-d: Use dev_iommu_priv_get/set()")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index f127e633f7ca..397c313a8b69 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -118,11 +118,11 @@ static struct dev_pm_domain pm_domain = {
 
 struct drm_i915_private *mock_gem_device(void)
 {
-	struct drm_i915_private *i915;
-	struct pci_dev *pdev;
 #if IS_ENABLED(CONFIG_IOMMU_API) && defined(CONFIG_INTEL_IOMMU)
-	struct dev_iommu iommu;
+	static struct dev_iommu fake_iommu = { .priv = (void *)-1 };
 #endif
+	struct drm_i915_private *i915;
+	struct pci_dev *pdev;
 	int err;
 
 	pdev = kzalloc(sizeof(*pdev), GFP_KERNEL);
@@ -141,10 +141,8 @@ struct drm_i915_private *mock_gem_device(void)
 	dma_coerce_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
 
 #if IS_ENABLED(CONFIG_IOMMU_API) && defined(CONFIG_INTEL_IOMMU)
-	/* HACK HACK HACK to disable iommu for the fake device; force identity mapping */
-	memset(&iommu, 0, sizeof(iommu));
-	iommu.priv = (void *)-1;
-	pdev->dev.iommu = &iommu;
+	/* HACK to disable iommu for the fake device; force identity mapping */
+	pdev->dev.iommu = &fake_iommu;
 #endif
 
 	pci_set_drvdata(pdev, i915);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
