Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A5969601F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 11:01:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BD6110E148;
	Tue, 14 Feb 2023 10:01:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1EBD10E148
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 10:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676368895; x=1707904895;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E3dtrkdwlCC6Hs48qjfIJEODqAiivhXSHCaEVTs2/94=;
 b=WWWvcwVXmNpcu+d9cJpIYj3eW+4MvFOts5NEHHofYfUBWs203VQyM5wA
 j8QS5IZ8b/wjPnErg0ZYjrBTs5FupPsLxQV8nnHdOFVSSLR7ZCSWAGK/E
 s6kdTV5InPOfb9KfodvHjid9cfhb5+Yfm3kflqHoLDvnPCe1LsPrpF8nw
 1Ijmrszuqwp7zpah1uifmobp2d7+3sAuaRw7BBUTQ84fVGPQBWHm1wkDR
 e8l7vV7DqUcf9zG+d+HkWNdiZIM+Y8X3nba0hrU/9GL/6VSzLsJkjG67U
 +ZFoIbZz+f8v9LGvkGR52INsThgsSWFWo6AVDjdgdeQO2QXT+rYfThpVg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="311484933"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="311484933"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 02:01:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="811963151"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="811963151"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga001.fm.intel.com with ESMTP; 14 Feb 2023 02:01:32 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 12:01:32 +0200
Message-Id: <20230214100132.24208-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Communicate display
 configuration to pcode
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jigar Bhatt <jigar.bhatt@intel.com>

Display to communicate "display configuration" to Pcode for more accurate
power accounting for DG2. Existing sequence is only sending the voltage
value to the Pcode. Adding new sequence with current cdclk associate
with voltage value masking. Adding pcode request when any power well
will disable or enable.

v2: - Fixed identation(Stanislav Lisovskiy)
    - Made conditions more specific(in the commit we declare that
      we do this for DG2 only, however that commit changes >= to
      == for many other platforms.(Stanislav Lisovskiy)

v3: - Refactored code for proper identation and smaller conditions
      (Andi Shyti)
    - Switched to proper function naming, removed platform specific
      code from intel_atomic_commit_tail(Jani Nikula)
    - Moved intel_cdclk_power_usage_to_pcode_pre/post_notification
      to proper places, before and after setting CDCLK(Stanislav Lisovskiy)

Signed-off-by: Jigar Bhatt <jigar.bhatt@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 97 ++++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_cdclk.h |  2 +
 drivers/gpu/drm/i915/i915_reg.h            |  4 +
 3 files changed, 94 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 82da76b586ed..4f8bcc0b51e8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1908,10 +1908,10 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		 * NOOP - No Pcode communication needed for
 		 * Display versions 14 and beyond
 		 */;
-	else if (DISPLAY_VER(dev_priv) >= 11)
+	else if (DISPLAY_VER(dev_priv) >= 11 && !IS_DG2(dev_priv))
 		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
 				      cdclk_config->voltage_level);
-	else
+	if (DISPLAY_VER(dev_priv) < 11) {
 		/*
 		 * The timeout isn't specified, the 2ms used here is based on
 		 * experiment.
@@ -1922,7 +1922,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 					      HSW_PCODE_DE_WRITE_FREQ_REQ,
 					      cdclk_config->voltage_level,
 					      150, 2);
-
+	}
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"PCode CDCLK freq set failed, (err %d, freq %d)\n",
@@ -2218,6 +2218,29 @@ void intel_cdclk_dump_config(struct drm_i915_private *i915,
 		    cdclk_config->voltage_level);
 }
 
+static void intel_pcode_notify(struct drm_i915_private *i915,
+			       unsigned int cdclk, u8 voltage_level,
+			       u8 active_pipes)
+{
+	int ret;
+
+	if (DISPLAY_VER(i915) < 12)
+		return;
+
+	ret = skl_pcode_request(&i915->uncore, SKL_PCODE_CDCLK_CONTROL,
+				SKL_CDCLK_PREPARE_FOR_CHANGE |
+				DISPLAY_TO_PCODE_MASK
+				(cdclk, active_pipes, voltage_level),
+				SKL_CDCLK_READY_FOR_CHANGE,
+				SKL_CDCLK_READY_FOR_CHANGE, 3);
+	if (ret) {
+		drm_err(&i915->drm,
+				"Failed to inform PCU about display config (err %d)\n",
+				ret);
+		return;
+	}
+}
+
 /**
  * intel_set_cdclk - Push the CDCLK configuration to the hardware
  * @dev_priv: i915 device
@@ -2287,6 +2310,56 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	}
 }
 
+/**
+ * intel_cdclk_power_usage_to_pcode_pre_notification: display to pcode notification
+ * before the enabling power wells.
+ * send notification with cdclk, number of pipes, voltage_level.
+ * @state: intel atomic state
+ */
+void intel_cdclk_power_usage_to_pcode_pre_notification(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_cdclk_state *old_cdclk_state =
+		intel_atomic_get_old_cdclk_state(state);
+	const struct intel_cdclk_state *new_cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
+	if (!intel_cdclk_changed(&old_cdclk_state->actual,
+				 &new_cdclk_state->actual) &&
+				 (new_cdclk_state->active_pipes ==
+				 old_cdclk_state->active_pipes))
+		return;
+	else if (old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk)
+		intel_pcode_notify(dev_priv, new_cdclk_state->actual.cdclk,
+				   new_cdclk_state->actual.voltage_level,
+				   new_cdclk_state->active_pipes);
+	else if (old_cdclk_state->actual.cdclk >= new_cdclk_state->actual.cdclk)
+		intel_pcode_notify(dev_priv, old_cdclk_state->actual.cdclk,
+				   old_cdclk_state->actual.voltage_level,
+				   old_cdclk_state->active_pipes);
+	else if (old_cdclk_state->active_pipes != new_cdclk_state->active_pipes)
+		intel_pcode_notify(dev_priv, new_cdclk_state->actual.cdclk,
+				   new_cdclk_state->actual.voltage_level,
+				   new_cdclk_state->active_pipes);
+
+	intel_pcode_notify(dev_priv, DISPLAY_TO_PCODE_CDCLK_MAX,
+			   new_cdclk_state->actual.voltage_level,
+			   new_cdclk_state->active_pipes);
+}
+
+/* intel_cdclk_power_usage_to_pcode_post_notification: after frequency change sending
+ * voltage_level, active pipes, current CDCLK frequency.
+ * @state: intel atomic state
+ */
+void intel_cdclk_power_usage_to_pcode_post_notification(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_cdclk_state *new_cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
+		intel_pcode_notify(dev_priv, new_cdclk_state->actual.cdclk,
+				   new_cdclk_state->actual.voltage_level,
+				   new_cdclk_state->active_pipes);
+}
+
 /**
  * intel_set_cdclk_pre_plane_update - Push the CDCLK state to the hardware
  * @state: intel atomic state
@@ -2297,7 +2370,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 void
 intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_cdclk_state *old_cdclk_state =
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
@@ -2308,11 +2381,14 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 				 &new_cdclk_state->actual))
 		return;
 
+	if (DISPLAY_VER(i915) >= 12)
+		intel_cdclk_power_usage_to_pcode_pre_notification(state);
+
 	if (pipe == INVALID_PIPE ||
 	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
-		drm_WARN_ON(&dev_priv->drm, !new_cdclk_state->base.changed);
+		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-		intel_set_cdclk(dev_priv, &new_cdclk_state->actual, pipe);
+		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
 	}
 }
 
@@ -2326,7 +2402,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 void
 intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_cdclk_state *old_cdclk_state =
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
@@ -2337,11 +2413,14 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 				 &new_cdclk_state->actual))
 		return;
 
+	if (DISPLAY_VER(i915) >= 12)
+		intel_cdclk_power_usage_to_pcode_post_notification(state);
+
 	if (pipe != INVALID_PIPE &&
 	    old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk) {
-		drm_WARN_ON(&dev_priv->drm, !new_cdclk_state->base.changed);
+		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-		intel_set_cdclk(dev_priv, &new_cdclk_state->actual, pipe);
+		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 51e2f6a11ce4..fa356adc61d9 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -64,6 +64,8 @@ bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b);
 void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
 void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
+void intel_cdclk_power_usage_to_pcode_pre_notification(struct intel_atomic_state *state);
+void intel_cdclk_power_usage_to_pcode_post_notification(struct intel_atomic_state *state);
 void intel_cdclk_dump_config(struct drm_i915_private *i915,
 			     const struct intel_cdclk_config *cdclk_config,
 			     const char *context);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 596efc940ee7..b90c31862083 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6498,6 +6498,10 @@
 #define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
 #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16) | (0x1 << 8))
 #define     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO	((0) | (0x2 << 8))
+#define   DISPLAY_TO_PCODE_CDCLK_MAX		0x28D
+#define   DISPLAY_TO_PCODE_MASK(cdclk, num_pipes, voltage_level) \
+		((1 << 31) | (num_pipes << 28) | \
+		(cdclk << 16) | (1 << 27) | voltage_level)
 #define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
 #define     ICL_PCODE_REP_QGV_MASK		REG_GENMASK(1, 0)
 #define     ICL_PCODE_REP_QGV_SAFE		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 0)
-- 
2.37.3

