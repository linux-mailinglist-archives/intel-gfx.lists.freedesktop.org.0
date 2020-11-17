Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 607F62B68E5
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 16:43:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89CC66E04A;
	Tue, 17 Nov 2020 15:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D8806E04A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 15:43:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23020291-1500050 
 for multiple; Tue, 17 Nov 2020 15:42:50 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 15:42:52 +0000
Message-Id: <20201117154252.12956-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Register DMAR fault handler
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Attach a iommu [DMAR] fault handler for our device and try and reset the
GPU upon a fault. At worst this will allow us to more quickly recover
from a fault, rather than wait 10s for the hangcheck to determine a
stuctk GPU. At best, it will immediately restart the GPU and paper over
the bad iommu.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_drv.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index f2389ba49c69..f881de6e4583 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -501,6 +501,22 @@ static int i915_set_dma_info(struct drm_i915_private *i915)
 	return ret;
 }
 
+static int fault_handler(struct iommu_fault *f, void *arg)
+{
+	struct drm_i915_private *i915 = arg;
+
+	intel_gt_handle_error(&i915->gt, ALL_ENGINES, 0, "DMAR fault");
+
+	/*
+	 * If we successfully handle the fault, eg mapping a new page,
+	 * we should call iommu_page_response().
+	 *
+	 * We make no attempt to resolve the cause of the fault, as it
+	 * should only be from misconfiguration of the iommu device itself.
+	 */
+	return 0;
+}
+
 /**
  * i915_driver_hw_probe - setup state requiring device access
  * @dev_priv: device private
@@ -621,6 +637,9 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	intel_bw_init_hw(dev_priv);
 
+	iommu_register_device_fault_handler(dev_priv->drm.dev,
+					    fault_handler, dev_priv);
+
 	return 0;
 
 err_msi:
@@ -644,6 +663,8 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
 {
 	struct pci_dev *pdev = dev_priv->drm.pdev;
 
+	iommu_unregister_device_fault_handler(dev_priv->drm.dev);
+
 	i915_perf_fini(dev_priv);
 
 	if (pdev->msi_enabled)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
