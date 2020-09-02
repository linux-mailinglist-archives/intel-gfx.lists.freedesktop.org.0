Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD07B25AD1E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 16:31:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 253A86E454;
	Wed,  2 Sep 2020 14:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCB586E454
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 14:31:04 +0000 (UTC)
IronPort-SDR: 07oV+jQ7nM7QWG8fMmo5nq3w2tufgRanLyf0pqSc3oOkn1gdAZPE6s/cZqdXZ+9ndW1JURdVRf
 zXUBD1Df4Lgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="218942165"
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="218942165"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 07:30:55 -0700
IronPort-SDR: DCC4a28tXL+jc8Fj3SeiNo/3BOUDxTMbpU+2wZPQakTzthvaLd0HwK1IJ+5is0OURDrBY9hEz4
 XDypbERMWvSQ==
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="301855505"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.95.101])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 07:30:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Sep 2020 17:30:23 +0300
Message-Id: <62c32c35683b843ecdc2eca2bd2d3e62cb705e96.1599056955.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1599056955.git.jani.nikula@intel.com>
References: <cover.1599056955.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: remove the extra modeset init
 layer
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Streamline the modeset init by removing the extra init layer.

No functional changes, which means the cleanup path looks hideous.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.c | 63 +++++++++++----------------------
 1 file changed, 20 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index e332b6fd701d..4d9b61b1a115 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -215,46 +215,6 @@ intel_teardown_mchbar(struct drm_i915_private *dev_priv)
 		release_resource(&dev_priv->mch_res);
 }
 
-/* part #1: call before irq install */
-static int i915_driver_modeset_probe_noirq(struct drm_i915_private *i915)
-{
-	return intel_modeset_init_noirq(i915);
-}
-
-/* part #2: call after irq install */
-static int i915_driver_modeset_probe(struct drm_i915_private *i915)
-{
-	int ret;
-
-	/* Important: The output setup functions called by modeset_init need
-	 * working irqs for e.g. gmbus and dp aux transfers. */
-	ret = intel_modeset_init_nogem(i915);
-	if (ret)
-		goto out;
-
-	ret = i915_gem_init(i915);
-	if (ret)
-		goto cleanup_modeset;
-
-	ret = intel_modeset_init(i915);
-	if (ret)
-		goto cleanup_gem;
-
-	return 0;
-
-cleanup_gem:
-	i915_gem_suspend(i915);
-	i915_gem_driver_remove(i915);
-	i915_gem_driver_release(i915);
-cleanup_modeset:
-	/* FIXME */
-	intel_modeset_driver_remove(i915);
-	intel_irq_uninstall(i915);
-	intel_modeset_driver_remove_noirq(i915);
-out:
-	return ret;
-}
-
 static void intel_init_dpio(struct drm_i915_private *dev_priv)
 {
 	/*
@@ -923,7 +883,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret < 0)
 		goto out_cleanup_mmio;
 
-	ret = i915_driver_modeset_probe_noirq(i915);
+	ret = intel_modeset_init_noirq(i915);
 	if (ret < 0)
 		goto out_cleanup_hw;
 
@@ -931,10 +891,18 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret)
 		goto out_cleanup_modeset;
 
-	ret = i915_driver_modeset_probe(i915);
-	if (ret < 0)
+	ret = intel_modeset_init_nogem(i915);
+	if (ret)
 		goto out_cleanup_irq;
 
+	ret = i915_gem_init(i915);
+	if (ret)
+		goto out_cleanup_modeset2;
+
+	ret = intel_modeset_init(i915);
+	if (ret)
+		goto out_cleanup_gem;
+
 	i915_driver_register(i915);
 
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
@@ -945,6 +913,15 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	return 0;
 
+out_cleanup_gem:
+	i915_gem_suspend(i915);
+	i915_gem_driver_remove(i915);
+	i915_gem_driver_release(i915);
+out_cleanup_modeset2:
+	intel_modeset_driver_remove(i915);
+	intel_irq_uninstall(i915);
+	intel_modeset_driver_remove_noirq(i915);
+	goto out_cleanup_modeset;
 out_cleanup_irq:
 	intel_irq_uninstall(i915);
 out_cleanup_modeset:
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
