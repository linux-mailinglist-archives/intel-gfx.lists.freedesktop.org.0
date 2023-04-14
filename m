Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7926D6E1F89
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:42:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD61010ECA8;
	Fri, 14 Apr 2023 09:42:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C17DE10ECB0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681465353; x=1713001353;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GPlI5L2MU2vlVs7AngI8Wj9qOtO08PH7xTf82xfbkW4=;
 b=MLg5vqhDdxsY1qPT5/MFkvmZ5UdSRlXPxR35a0WKChDRNOhf/lvuH9y8
 tQxeWoND8Em3UeCC8b+knhls+9XHUriOFVCbbYTrOvUC2Lr18AMMI4rBG
 cUPP4CQ77zNaf8i9nOd45WlsMKye1JkV2zJy2Zm7b59pOHE0rGAIRkwh9
 NwidKJ8LOWpH4nMWRbt70PxEBBJK3oOmk19lDzctLyJVN+HDWtwVjxY+w
 PT7Js/D5k7+vwkHfDx9GrwFu+flVhrjX1ZI1678FY7Atu+0gR1eNo/1Lf
 IbecWe33aRKb/uTJxe6Di8fwq3UBR93nFNyu3R5SSha/HvGK4LxVJB1Fd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="346259027"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="346259027"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="801137962"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="801137962"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Apr 2023 12:41:58 +0300
Message-Id: <6ff7b76018bf4cf611037d7bf027c975cddfe2af.1681465222.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1681465222.git.jani.nikula@intel.com>
References: <cover.1681465222.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/10] drm/i915/display: rename
 intel_display_driver_* functions
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the usual naming conventions.

v2:
- Also rename references in comments (Gustavo)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_driver.c   | 16 ++++++------
 .../drm/i915/display/intel_display_driver.h   | 14 +++++------
 drivers/gpu/drm/i915/i915_driver.c            | 25 ++++++++++---------
 drivers/gpu/drm/i915/i915_irq.c               |  2 +-
 5 files changed, 30 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 86cc2b6085a8..59684febc345 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -833,7 +833,7 @@ void intel_display_finish_reset(struct drm_i915_private *i915)
 		 * so need a full re-initialization.
 		 */
 		intel_pps_unlock_regs_wa(i915);
-		intel_modeset_init_hw(i915);
+		intel_display_driver_init_hw(i915);
 		intel_clock_gating_init(i915);
 		intel_hpd_init(i915);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index f7805c6f1b63..45e425100385 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -72,7 +72,7 @@ bool intel_display_driver_probe_defer(struct pci_dev *pdev)
 	return false;
 }
 
-void intel_modeset_init_hw(struct drm_i915_private *i915)
+void intel_display_driver_init_hw(struct drm_i915_private *i915)
 {
 	struct intel_cdclk_state *cdclk_state;
 
@@ -170,7 +170,7 @@ static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev_priv)
 }
 
 /* part #1: call before irq install */
-int intel_modeset_init_noirq(struct drm_i915_private *i915)
+int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 {
 	int ret;
 
@@ -246,7 +246,7 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 }
 
 /* part #2: call after irq install, but before gem init */
-int intel_modeset_init_nogem(struct drm_i915_private *i915)
+int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 {
 	struct drm_device *dev = &i915->drm;
 	enum pipe pipe;
@@ -281,7 +281,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 	intel_fdi_pll_freq_update(i915);
 
 	intel_update_czclk(i915);
-	intel_modeset_init_hw(i915);
+	intel_display_driver_init_hw(i915);
 	intel_dpll_update_ref_clks(i915);
 
 	intel_hdcp_component_init(i915);
@@ -318,7 +318,7 @@ int intel_modeset_init_nogem(struct drm_i915_private *i915)
 }
 
 /* part #3: call after gem init */
-int intel_modeset_init(struct drm_i915_private *i915)
+int intel_display_driver_probe(struct drm_i915_private *i915)
 {
 	int ret;
 
@@ -382,7 +382,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 }
 
 /* part #1: call before irq uninstall */
-void intel_modeset_driver_remove(struct drm_i915_private *i915)
+void intel_display_driver_remove(struct drm_i915_private *i915)
 {
 	if (!HAS_DISPLAY(i915))
 		return;
@@ -402,7 +402,7 @@ void intel_modeset_driver_remove(struct drm_i915_private *i915)
 }
 
 /* part #2: call after irq uninstall */
-void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
+void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
 {
 	if (!HAS_DISPLAY(i915))
 		return;
@@ -436,7 +436,7 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
 }
 
 /* part #3: call after gem init */
-void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
+void intel_display_driver_remove_nogem(struct drm_i915_private *i915)
 {
 	intel_dmc_fini(i915);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 947b666575ee..aab498617b90 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -12,14 +12,14 @@ struct drm_i915_private;
 struct pci_dev;
 
 bool intel_display_driver_probe_defer(struct pci_dev *pdev);
-void intel_modeset_init_hw(struct drm_i915_private *i915);
-int intel_modeset_init_noirq(struct drm_i915_private *i915);
-int intel_modeset_init_nogem(struct drm_i915_private *i915);
-int intel_modeset_init(struct drm_i915_private *i915);
+void intel_display_driver_init_hw(struct drm_i915_private *i915);
+int intel_display_driver_probe_noirq(struct drm_i915_private *i915);
+int intel_display_driver_probe_nogem(struct drm_i915_private *i915);
+int intel_display_driver_probe(struct drm_i915_private *i915);
 void intel_display_driver_register(struct drm_i915_private *i915);
-void intel_modeset_driver_remove(struct drm_i915_private *i915);
-void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
-void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
+void intel_display_driver_remove(struct drm_i915_private *i915);
+void intel_display_driver_remove_noirq(struct drm_i915_private *i915);
+void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
 void intel_display_driver_unregister(struct drm_i915_private *i915);
 
 #endif /* __INTEL_DISPLAY_DRIVER_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 5ccb24498cbf..f11ca12cb55d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -753,7 +753,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
  * @ent: matching PCI ID entry
  *
  * The driver probe routine has to do several things:
- *   - drive output discovery via intel_modeset_init()
+ *   - drive output discovery via intel_display_driver_probe()
  *   - initialize the memory manager
  *   - allocate initial config memory
  *   - setup the DRM framebuffer with the allocated memory
@@ -791,7 +791,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret < 0)
 		goto out_cleanup_mmio;
 
-	ret = intel_modeset_init_noirq(i915);
+	ret = intel_display_driver_probe_noirq(i915);
 	if (ret < 0)
 		goto out_cleanup_hw;
 
@@ -799,7 +799,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (ret)
 		goto out_cleanup_modeset;
 
-	ret = intel_modeset_init_nogem(i915);
+	ret = intel_display_driver_probe_nogem(i915);
 	if (ret)
 		goto out_cleanup_irq;
 
@@ -809,7 +809,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	intel_pxp_init(i915);
 
-	ret = intel_modeset_init(i915);
+	ret = intel_display_driver_probe(i915);
 	if (ret)
 		goto out_cleanup_gem;
 
@@ -829,14 +829,14 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	i915_gem_driver_release(i915);
 out_cleanup_modeset2:
 	/* FIXME clean up the error path */
-	intel_modeset_driver_remove(i915);
+	intel_display_driver_remove(i915);
 	intel_irq_uninstall(i915);
-	intel_modeset_driver_remove_noirq(i915);
+	intel_display_driver_remove_noirq(i915);
 	goto out_cleanup_modeset;
 out_cleanup_irq:
 	intel_irq_uninstall(i915);
 out_cleanup_modeset:
-	intel_modeset_driver_remove_nogem(i915);
+	intel_display_driver_remove_nogem(i915);
 out_cleanup_hw:
 	i915_driver_hw_remove(i915);
 	intel_memory_regions_driver_release(i915);
@@ -872,16 +872,16 @@ void i915_driver_remove(struct drm_i915_private *i915)
 
 	intel_gvt_driver_remove(i915);
 
-	intel_modeset_driver_remove(i915);
+	intel_display_driver_remove(i915);
 
 	intel_irq_uninstall(i915);
 
-	intel_modeset_driver_remove_noirq(i915);
+	intel_display_driver_remove_noirq(i915);
 
 	i915_reset_error_state(i915);
 	i915_gem_driver_remove(i915);
 
-	intel_modeset_driver_remove_nogem(i915);
+	intel_display_driver_remove_nogem(i915);
 
 	i915_driver_hw_remove(i915);
 
@@ -1234,7 +1234,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	 *
 	 * drm_mode_config_reset() needs AUX interrupts.
 	 *
-	 * Modeset enabling in intel_modeset_init_hw() also needs working
+	 * Modeset enabling in intel_display_driver_init_hw() also needs working
 	 * interrupts.
 	 */
 	intel_runtime_pm_enable_interrupts(dev_priv);
@@ -1244,7 +1244,8 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	i915_gem_resume(dev_priv);
 
-	intel_modeset_init_hw(dev_priv);
+	intel_display_driver_init_hw(dev_priv);
+
 	intel_clock_gating_init(dev_priv);
 	intel_hpd_init(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index d24bdea65a3d..3c27002547b1 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -4135,7 +4135,7 @@ void intel_irq_uninstall(struct drm_i915_private *dev_priv)
 	/*
 	 * FIXME we can get called twice during driver probe
 	 * error handling as well as during driver remove due to
-	 * intel_modeset_driver_remove() calling us out of sequence.
+	 * intel_display_driver_remove() calling us out of sequence.
 	 * Would be nice if it didn't do that...
 	 */
 	if (!dev_priv->irq_enabled)
-- 
2.39.2

