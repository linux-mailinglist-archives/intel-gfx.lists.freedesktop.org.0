Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D3271483F
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 12:59:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E9DC10E272;
	Mon, 29 May 2023 10:59:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D219E10E272
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 10:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685357946; x=1716893946;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jcTjVmGLKXS91Nh1skmOP7tq4eLL52cT0XwN8WLIOL0=;
 b=NCOf+N4s3PXw5YcRVF9ZFHaylK3msGFPHwNe1wchegPa4vPHsJ9QkXXe
 IZ/9nixgAyQCG2hKDnLOiU5dRXx64OltQiX0O5RQJN+n+yg1BtaNITDoN
 zxGFN7UtajgrCLtqjJ1iBfgC4HNMLr36kMi4gbP18WFI+l8EJXBbjnhuT
 XCHa5X6Om4baFBfUifs17u/t4il2lJyTVGsKCpBK0aOLm3lXkHlursZdW
 pKs5V/W97rfZb1NQZ1ktIdejLrQLywpUIbE7mdNR1lhDiwLTxnYVePpuW
 6zKdYbXE6rNY5TLAeSIP1VaK+6/ysGiblhW4+WJ5nm89GrWeJt8/PEPOy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="441035018"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="441035018"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 03:59:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="952707881"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="952707881"
Received: from iswiersz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.191])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 03:59:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 May 2023 13:59:00 +0300
Message-Id: <20230529105900.1942814-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: Remove i915_drm_suspend_mode
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
Cc: jani.nikula@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

enum i915_drm_suspend_mode suspend_mode is only used in
intel_display_power, while we only care about whether we perform a
s2idle. Remove it and use a simple bool.

v2: Rebase

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c   |  8 +++-----
 .../gpu/drm/i915/display/intel_display_power.h   |  3 +--
 drivers/gpu/drm/i915/i915_driver.c               | 16 ++--------------
 drivers/gpu/drm/i915/intel_runtime_pm.h          |  6 ------
 4 files changed, 6 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 9c9a809c71f1..2f4f00ae2f57 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2031,7 +2031,7 @@ void intel_power_domains_disable(struct drm_i915_private *i915)
 /**
  * intel_power_domains_suspend - suspend power domain state
  * @i915: i915 device instance
- * @suspend_mode: specifies the target suspend state (idle, mem, hibernation)
+ * @s2idle: specifies whether we go to idle, or deeper sleep
  *
  * This function prepares the hardware power domain state before entering
  * system suspend.
@@ -2039,8 +2039,7 @@ void intel_power_domains_disable(struct drm_i915_private *i915)
  * It must be called with power domains already disabled (after a call to
  * intel_power_domains_disable()) and paired with intel_power_domains_resume().
  */
-void intel_power_domains_suspend(struct drm_i915_private *i915,
-				 enum i915_drm_suspend_mode suspend_mode)
+void intel_power_domains_suspend(struct drm_i915_private *i915, bool s2idle)
 {
 	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	intel_wakeref_t wakeref __maybe_unused =
@@ -2055,8 +2054,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
 	 * resources as required and also enable deeper system power states
 	 * that would be blocked if the firmware was inactive.
 	 */
-	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC9) &&
-	    suspend_mode == I915_DRM_SUSPEND_IDLE &&
+	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC9) && s2idle &&
 	    intel_dmc_has_payload(i915)) {
 		intel_display_power_flush_work(i915);
 		intel_power_domains_verify_state(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 8e96be8e6330..be1a87bde0c9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -171,8 +171,7 @@ void intel_power_domains_init_hw(struct drm_i915_private *dev_priv, bool resume)
 void intel_power_domains_driver_remove(struct drm_i915_private *dev_priv);
 void intel_power_domains_enable(struct drm_i915_private *dev_priv);
 void intel_power_domains_disable(struct drm_i915_private *dev_priv);
-void intel_power_domains_suspend(struct drm_i915_private *dev_priv,
-				 enum i915_drm_suspend_mode);
+void intel_power_domains_suspend(struct drm_i915_private *dev_priv, bool s2idle);
 void intel_power_domains_resume(struct drm_i915_private *dev_priv);
 void intel_power_domains_sanitize_state(struct drm_i915_private *dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 37532e55327d..4394bbe3753b 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1118,18 +1118,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 	return 0;
 }
 
-static enum i915_drm_suspend_mode
-get_suspend_mode(struct drm_i915_private *dev_priv, bool hibernate)
-{
-	if (hibernate)
-		return I915_DRM_SUSPEND_HIBERNATE;
-
-	if (suspend_to_idle(dev_priv))
-		return I915_DRM_SUSPEND_IDLE;
-
-	return I915_DRM_SUSPEND_MEM;
-}
-
 static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -1137,6 +1125,7 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct intel_gt *gt;
 	int ret, i;
+	bool s2idle = !hibernation && suspend_to_idle(dev_priv);
 
 	disable_rpm_wakeref_asserts(rpm);
 
@@ -1147,8 +1136,7 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	for_each_gt(gt, dev_priv, i)
 		intel_uncore_suspend(gt->uncore);
 
-	intel_power_domains_suspend(dev_priv,
-				    get_suspend_mode(dev_priv, hibernation));
+	intel_power_domains_suspend(dev_priv, s2idle);
 
 	intel_display_power_suspend_late(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index e592e8d6499a..764b183ae452 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -16,12 +16,6 @@ struct device;
 struct drm_i915_private;
 struct drm_printer;
 
-enum i915_drm_suspend_mode {
-	I915_DRM_SUSPEND_IDLE,
-	I915_DRM_SUSPEND_MEM,
-	I915_DRM_SUSPEND_HIBERNATE,
-};
-
 /*
  * This struct helps tracking the state needed for runtime PM, which puts the
  * device in PCI D3 state. Notice that when this happens, nothing on the
-- 
2.39.2

