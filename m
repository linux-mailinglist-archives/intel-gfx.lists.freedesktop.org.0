Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96ABD582C53
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 18:45:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16F6CBBD1D;
	Wed, 27 Jul 2022 16:45:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EBF1BBBFC
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 16:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658940328; x=1690476328;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8RJMOiTc24Qjyn5oVovcawuo6uvfhuQq08wyflJUuCI=;
 b=jS7OgMzoSzUpRb1DFoG/59jLuXuesox95/+TVV/OZEalPXlYTCtCur6G
 vfdqYhikHCHCfP7vXFjV7lEV1ndLIcZFop5D3wD5PdfbPWEdp+7/kV4tr
 uY0diM/LOBT4yvv4QJraeKZGL+54wtkt5NOp60MKe25CRZ4x/ePwnsIQG
 PBLAGVzMlsIajI7Kzu/luZUVjfJD2nbvV6UyRsSlmEpxR9vBPuaXtzeov
 Yo2l2emaCgNQlhtmMIe2hsAd1B41p00/b3u6GhU93XiJqwRpI8aPJBPfC
 xUUniCOoX5grt6mJsG3J2O+e3TD7lTkoMHnQv4vPoSW2rgHZDLmvuH+r2 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271325472"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="271325472"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 09:45:27 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="633271824"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 09:45:26 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 19:45:22 +0300
Message-Id: <20220727164523.1621361-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/d12+: Disable DMC handlers during
 loading/disabling the firmware
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

Disable the DMC event handlers before loading the firmware and after
uninitializing the display, to make sure the firmware is inactive. This
matches the Bspec "Sequences for Display C5 and C6" page for GEN12+.

Add a TODO comment for doing the same on pre-GEN12 platforms.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power.c    |  3 ++
 drivers/gpu/drm/i915/display/intel_dmc.c      | 52 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dmc.h      |  1 +
 3 files changed, 50 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 589af257edebc..22f65a9968c6a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1433,6 +1433,7 @@ static void skl_display_core_uninit(struct drm_i915_private *dev_priv)
 		return;
 
 	gen9_disable_dc_states(dev_priv);
+	/* TODO: disable DMC program */
 
 	gen9_dbuf_disable(dev_priv);
 
@@ -1500,6 +1501,7 @@ static void bxt_display_core_uninit(struct drm_i915_private *dev_priv)
 		return;
 
 	gen9_disable_dc_states(dev_priv);
+	/* TODO: disable DMC program */
 
 	gen9_dbuf_disable(dev_priv);
 
@@ -1675,6 +1677,7 @@ static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
 		return;
 
 	gen9_disable_dc_states(dev_priv);
+	intel_dmc_disable_program(dev_priv);
 
 	/* 1. Disable all display engine functions -> aready done */
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index fa9ef591b8853..9ae62bb1184d5 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -277,6 +277,17 @@ static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
 	intel_de_posting_read(dev_priv, DC_STATE_DEBUG);
 }
 
+static void disable_event_handler(struct drm_i915_private *i915,
+				  i915_reg_t ctl_reg, i915_reg_t htp_reg)
+{
+	intel_de_write(i915, ctl_reg,
+		       REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
+		       REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+				      DMC_EVT_CTL_EVENT_ID_FALSE));
+	intel_de_write(i915, htp_reg, 0);
+}
+
 static void
 disable_flip_queue_event(struct drm_i915_private *i915,
 			 i915_reg_t ctl_reg, i915_reg_t htp_reg)
@@ -299,12 +310,7 @@ disable_flip_queue_event(struct drm_i915_private *i915,
 		return;
 	}
 
-	intel_de_write(i915, ctl_reg,
-		       REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
-				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
-		       REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
-				      DMC_EVT_CTL_EVENT_ID_FALSE));
-	intel_de_write(i915, htp_reg, 0);
+	disable_event_handler(i915, ctl_reg, htp_reg);
 }
 
 static bool
@@ -356,6 +362,23 @@ disable_all_flip_queue_events(struct drm_i915_private *i915)
 	}
 }
 
+static void disable_all_event_handlers(struct drm_i915_private *i915)
+{
+	int id;
+
+	for (id = DMC_FW_MAIN; id < DMC_FW_MAX; id++) {
+		int handler;
+
+		if (!has_dmc_id_fw(i915, id))
+			continue;
+
+		for (handler = 0; handler < 8; handler++)
+			disable_event_handler(i915,
+					      DMC_EVT_CTL(i915, id, handler),
+					      DMC_EVT_HTP(i915, id, handler));
+	}
+}
+
 /**
  * intel_dmc_load_program() - write the firmware from memory to register.
  * @dev_priv: i915 drm device.
@@ -372,6 +395,8 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 	if (!intel_dmc_has_payload(dev_priv))
 		return;
 
+	disable_all_event_handlers(dev_priv);
+
 	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
 
 	preempt_disable();
@@ -405,6 +430,21 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 	disable_all_flip_queue_events(dev_priv);
 }
 
+/**
+ * intel_dmc_disable_program() - disable the firmware
+ * @dev_priv: i915 drm device
+ *
+ * Disable all event handlers in the firmware, making sure the firmware is
+ * inactive after the display is uninitialized.
+ */
+void intel_dmc_disable_program(struct drm_i915_private *i915)
+{
+	if (!intel_dmc_has_payload(i915))
+		return;
+
+	disable_all_event_handlers(i915);
+}
+
 void assert_dmc_loaded(struct drm_i915_private *i915)
 {
 	drm_WARN_ONCE(&i915->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 41091aee3b47b..67e03315ef999 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -47,6 +47,7 @@ struct intel_dmc {
 
 void intel_dmc_ucode_init(struct drm_i915_private *i915);
 void intel_dmc_load_program(struct drm_i915_private *i915);
+void intel_dmc_disable_program(struct drm_i915_private *i915);
 void intel_dmc_ucode_fini(struct drm_i915_private *i915);
 void intel_dmc_ucode_suspend(struct drm_i915_private *i915);
 void intel_dmc_ucode_resume(struct drm_i915_private *i915);
-- 
2.34.1

