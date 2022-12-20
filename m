Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4EE651E19
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:55:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5B4710E381;
	Tue, 20 Dec 2022 09:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 448 seconds by postgrey-1.36 at gabe;
 Tue, 20 Dec 2022 09:54:25 UTC
Received: from mblankhorst.nl (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6919410E372
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:54:25 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Dec 2022 10:46:18 +0100
Message-Id: <20221220094618.207126-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix a use-after-free when
 intel_edp_init_connector fails
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

We enable the DP aux channel during probe, but may free the connector
soon afterwards. Ensure the DP aux display power put is completed before
everything is freed, to prevent a use-after-free in icl_aux_pw_to_phy(),
called from icl_combo_phy_aux_power_well_disable.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp_aux.c        | 2 ++
 3 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 04915f85a0df..0edb5532461f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -776,7 +776,7 @@ void intel_display_power_flush_work(struct drm_i915_private *i915)
  * Like intel_display_power_flush_work(), but also ensure that the work
  * handler function is not running any more when this function returns.
  */
-static void
+void
 intel_display_power_flush_work_sync(struct drm_i915_private *i915)
 {
 	struct i915_power_domains *power_domains = &i915->display.power.domains;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 7136ea3f233e..dc10ee0519e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -188,6 +188,7 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
 				     enum intel_display_power_domain domain,
 				     intel_wakeref_t wakeref);
 void intel_display_power_flush_work(struct drm_i915_private *i915);
+void intel_display_power_flush_work_sync(struct drm_i915_private *i915);
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 void intel_display_power_put(struct drm_i915_private *dev_priv,
 			     enum intel_display_power_domain domain,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index f1835c74bff0..1006dddad2d5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -680,6 +680,8 @@ void intel_dp_aux_fini(struct intel_dp *intel_dp)
 	if (cpu_latency_qos_request_active(&intel_dp->pm_qos))
 		cpu_latency_qos_remove_request(&intel_dp->pm_qos);
 
+	/* Ensure async work from intel_dp_aux_xfer() is flushed before we clean up */
+	intel_display_power_flush_work_sync(dp_to_i915(intel_dp));
 	kfree(intel_dp->aux.name);
 }
 
-- 
2.37.2

