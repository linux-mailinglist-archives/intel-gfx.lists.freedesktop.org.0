Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32389663F0E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 12:11:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D118810E59D;
	Tue, 10 Jan 2023 11:11:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (lankhorst.se
 [IPv6:2a02:2308:0:7ec:e79c:4e97:b6c4:f0ae])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7FB310E59D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 11:11:30 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Jan 2023 11:59:02 +0100
Message-Id: <20230110105902.279004-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Remove i915_drm_suspend_mode
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

enum i915_drm_suspend_mode suspend_mode is only used in
intel_display_power, while we only care about whether we perform a
s2idle. Remove it and use a simple bool.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c   |  8 +++-----
 .../gpu/drm/i915/display/intel_display_power.h   |  3 +--
 drivers/gpu/drm/i915/i915_driver.c               | 16 ++--------------
 drivers/gpu/drm/i915/intel_runtime_pm.h          |  6 ------
 4 files changed, 6 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 060e0a2770f7..6ef937afe48e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2029,7 +2029,7 @@ void intel_power_domains_disable(struct drm_i915_private *i915)
 /**
  * intel_power_domains_suspend - suspend power domain state
  * @i915: i915 device instance
- * @suspend_mode: specifies the target suspend state (idle, mem, hibernation)
+ * @s2idle: specifies whether we go to idle, or deeper sleep
  *
  * This function prepares the hardware power domain state before entering
  * system suspend.
@@ -2037,8 +2037,7 @@ void intel_power_domains_disable(struct drm_i915_private *i915)
  * It must be called with power domains already disabled (after a call to
  * intel_power_domains_disable()) and paired with intel_power_domains_resume().
  */
-void intel_power_domains_suspend(struct drm_i915_private *i915,
-				 enum i915_drm_suspend_mode suspend_mode)
+void intel_power_domains_suspend(struct drm_i915_private *i915, bool s2idle)
 {
 	struct i915_power_domains *power_domains = &i915->display.power.domains;
 	intel_wakeref_t wakeref __maybe_unused =
@@ -2054,8 +2053,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
 	 * that would be blocked if the firmware was inactive.
 	 */
 	if (!(i915->display.dmc.allowed_dc_mask & DC_STATE_EN_DC9) &&
-	    suspend_mode == I915_DRM_SUSPEND_IDLE &&
-	    intel_dmc_has_payload(i915)) {
+	    s2idle && intel_dmc_has_payload(i915)) {
 		intel_display_power_flush_work(i915);
 		intel_power_domains_verify_state(i915);
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 6480afcfe0d8..04216be1d6fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -164,8 +164,7 @@ void intel_power_domains_init_hw(struct drm_i915_private *dev_priv, bool resume)
 void intel_power_domains_driver_remove(struct drm_i915_private *dev_priv);
 void intel_power_domains_enable(struct drm_i915_private *dev_priv);
 void intel_power_domains_disable(struct drm_i915_private *dev_priv);
-void intel_power_domains_suspend(struct drm_i915_private *dev_priv,
-				 enum i915_drm_suspend_mode);
+void intel_power_domains_suspend(struct drm_i915_private *dev_priv, bool s2idle);
 void intel_power_domains_resume(struct drm_i915_private *dev_priv);
 void intel_power_domains_sanitize_state(struct drm_i915_private *dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 9c49cc7a246d..a02dd8e38f2a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1232,18 +1232,6 @@ static int i915_drm_suspend(struct drm_device *dev)
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
@@ -1251,6 +1239,7 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct intel_gt *gt;
 	int ret, i;
+	bool s2idle = !hibernation && suspend_to_idle(dev_priv);
 
 	disable_rpm_wakeref_asserts(rpm);
 
@@ -1259,8 +1248,7 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	for_each_gt(gt, dev_priv, i)
 		intel_uncore_suspend(gt->uncore);
 
-	intel_power_domains_suspend(dev_priv,
-				    get_suspend_mode(dev_priv, hibernation));
+	intel_power_domains_suspend(dev_priv, s2idle);
 
 	intel_display_power_suspend_late(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index d9160e3ff4af..c87ae95bfd18 100644
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
2.34.1

