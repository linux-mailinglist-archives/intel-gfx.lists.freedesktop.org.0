Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A83EB25AD1D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 16:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04A6A6E326;
	Wed,  2 Sep 2020 14:30:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 957DF89C9D
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Sep 2020 14:30:50 +0000 (UTC)
IronPort-SDR: zNfmzWZN6OWwZJ+R1Wu7+xCxpl1I1WSeCQ4sziDPH54X4lPn3svCJwSoMIdKX809WdL0HWw9rc
 L70Z/0coAzaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="156652883"
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="156652883"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 07:30:50 -0700
IronPort-SDR: XXx8VE/YK7FSf0Id7PedEcwk9LelTGbP6Jw2m9fm0e5QW6vRtM6Y7X4D7Yqgk8untDHYvJ13Ht
 bAFMZJNXasoA==
X-IronPort-AV: E=Sophos;i="5.76,383,1592895600"; d="scan'208";a="325802073"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.95.101])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2020 07:30:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Sep 2020 17:30:22 +0300
Message-Id: <197fa7e488b412e147ff0fe9440c48811888f1a6.1599056955.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1599056955.git.jani.nikula@intel.com>
References: <cover.1599056955.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: split out
 intel_modeset_driver_remove_nogem() and simplify
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

Split out a separate display function for driver remove after gem
deinitialization. Note that the sequence is not symmetric with
init. However use similar naming as that reflects the deinit sequence.

No functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/i915/i915_drv.c              | 24 +++-----------------
 3 files changed, 16 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 79c74b072a15..81ea609a5fa0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -18948,6 +18948,18 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
 	intel_fbc_cleanup_cfb(i915);
 }
 
+/* part #3: call after gem init */
+void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
+{
+	intel_csr_ucode_fini(i915);
+
+	intel_power_domains_driver_remove(i915);
+
+	intel_vga_unregister(i915);
+
+	intel_bios_driver_remove(i915);
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 
 struct intel_display_error_state {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 63130e1a9eff..3670cabeb3cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -633,6 +633,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915);
 int intel_modeset_init(struct drm_i915_private *i915);
 void intel_modeset_driver_remove(struct drm_i915_private *i915);
 void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
+void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
 void intel_display_resume(struct drm_device *dev);
 void intel_init_pch_refclk(struct drm_i915_private *dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 6cf1330d3b8e..e332b6fd701d 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -255,24 +255,6 @@ static int i915_driver_modeset_probe(struct drm_i915_private *i915)
 	return ret;
 }
 
-/* part #1: call before irq uninstall */
-static void i915_driver_modeset_remove(struct drm_i915_private *i915)
-{
-	intel_modeset_driver_remove(i915);
-}
-
-/* part #2: call after irq uninstall */
-static void i915_driver_modeset_remove_noirq(struct drm_i915_private *i915)
-{
-	intel_csr_ucode_fini(i915);
-
-	intel_power_domains_driver_remove(i915);
-
-	intel_vga_unregister(i915);
-
-	intel_bios_driver_remove(i915);
-}
-
 static void intel_init_dpio(struct drm_i915_private *dev_priv)
 {
 	/*
@@ -966,7 +948,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 out_cleanup_irq:
 	intel_irq_uninstall(i915);
 out_cleanup_modeset:
-	i915_driver_modeset_remove_noirq(i915);
+	intel_modeset_driver_remove_nogem(i915);
 out_cleanup_hw:
 	i915_driver_hw_remove(i915);
 	intel_memory_regions_driver_release(i915);
@@ -998,7 +980,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
 
 	intel_gvt_driver_remove(i915);
 
-	i915_driver_modeset_remove(i915);
+	intel_modeset_driver_remove(i915);
 
 	intel_irq_uninstall(i915);
 
@@ -1007,7 +989,7 @@ void i915_driver_remove(struct drm_i915_private *i915)
 	i915_reset_error_state(i915);
 	i915_gem_driver_remove(i915);
 
-	i915_driver_modeset_remove_noirq(i915);
+	intel_modeset_driver_remove_nogem(i915);
 
 	i915_driver_hw_remove(i915);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
