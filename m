Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B64666E0A84
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 11:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 774F510EAAA;
	Thu, 13 Apr 2023 09:48:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E45910EAAD
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 09:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681379285; x=1712915285;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OfJQq0aDQuP/IDYbwkjXk4gMxlo41Egmq+spbNDO57Q=;
 b=asq2MNow2lewAbepxWlafPRqwJ13Xp63iH6zxEay5r5nRXPbPvoaPKCs
 sxsrBFafH/lDRrELOw6TDEZzr5bJVqKxIV9NGkIHLhfOqLl8mwh3EUHll
 AnJ+2XF55yCP9QJeuBqxZJWHDhQjclwSwEQoLhYpScZmquH06LxFpxKmJ
 pdKPi3qvrg6REtJnLXoYm+bUDPUuV2YQXPRXRU1xS80wdxN7GoGe6NUzz
 go+p0vlI7oHw6pTevzOQaotB/Lme/iV54fpmoSi4BapQWBMijf0Du+r8b
 QG7cuBzHEd82PkSm0Alf0mRfTyCGaC+w3PehAflbdYeum2jcntrH1Mw/P g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="371991340"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="371991340"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:48:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="639599195"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="639599195"
Received: from merkanx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.88])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:48:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Apr 2023 12:47:32 +0300
Message-Id: <9ac5d37811b806e6849f913a3f527cfb6d869818.1681379167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/10] drm/i915/display: rename
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the usual naming conventions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_driver.c   | 16 +++++++-------
 .../drm/i915/display/intel_display_driver.h   | 14 ++++++-------
 drivers/gpu/drm/i915/i915_driver.c            | 21 ++++++++++---------
 4 files changed, 27 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 56e3aab7e1c6..f425e5ed155b 100644
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
index 5ccb24498cbf..9d06dae47735 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
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
 
@@ -1244,7 +1244,8 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	i915_gem_resume(dev_priv);
 
-	intel_modeset_init_hw(dev_priv);
+	intel_display_driver_init_hw(dev_priv);
+
 	intel_clock_gating_init(dev_priv);
 	intel_hpd_init(dev_priv);
 
-- 
2.39.2

