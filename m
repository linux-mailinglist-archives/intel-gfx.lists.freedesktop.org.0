Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 236825005C4
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 08:07:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0223010FC27;
	Thu, 14 Apr 2022 06:07:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DC6F10FBA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 06:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649916457; x=1681452457;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mKFyTPN8ZBxNGOqN1qrbb04X3tp0RMIaTb3+eOs7abM=;
 b=bDNiCt/t04N0wTR23JC+Y37YO+ZQvfm3eb7Fzr1RomOGPb1t6OS0HQ2O
 lr6xXvboxwbuv6nQY8wLSUXCLq37Ej1idFwSe63VD4Ft2A9fW4YUDyjxe
 Rqm2PxesfKBzv0a7ciD3gMhKkc0DZlEN/z/MPaTQVsa6M8s7wOgj8UAks
 VPx8kI3Wwdlr/DINBZKt7/uryvqnIam88+uzckVlkYAJLyDFLg08cX/LY
 2rPJvY9qCxnb1NShXrQblWK9S38LCEVrkA+wPEOhWDotG+b7JC/yaLDdM
 QLkM9Uf1VonRDdJ8vJKDwENnSgtpqaCztqce+ExgELLeMrQNfkBuP6Qfn A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="250147545"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="250147545"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 23:07:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="623981437"
Received: from srr4-3-linux-109-jbhatt.iind.intel.com ([10.190.239.24])
 by fmsmga004.fm.intel.com with ESMTP; 13 Apr 2022 23:07:34 -0700
From: Jigar Bhatt <jigar.bhatt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Apr 2022 11:37:29 +0530
Message-Id: <20220414060729.1973394-2-jigar.bhatt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220414060729.1973394-1-jigar.bhatt@intel.com>
References: <20220414060729.1973394-1-jigar.bhatt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH RFC 1/1] drm/i915/display: Communicate display
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
Cc: nischal.varide@intel.com, jigar.bhatt@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Display to communicate "display configuration" to Pcode for more accurate
power accounting for DG2. Existing sequence is only sending the voltage
value to the Pcode. Adding new sequence with current cdclk associate
with voltage value masking. Adding pcode request when any power well
will disable or enable.

Signed-off-by: Jigar Bhatt <jigar.bhatt@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 93 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cdclk.h   |  2 +
 drivers/gpu/drm/i915/display/intel_display.c |  6 ++
 drivers/gpu/drm/i915/i915_reg.h              |  4 +
 4 files changed, 101 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b2017d8161b4..ac134b1a28ff 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1701,12 +1701,12 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	int ret;
 
 	/* Inform power controller of upcoming frequency change. */
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(dev_priv) == 11)
 		ret = skl_pcode_request(dev_priv, SKL_PCODE_CDCLK_CONTROL,
 					SKL_CDCLK_PREPARE_FOR_CHANGE,
 					SKL_CDCLK_READY_FOR_CHANGE,
 					SKL_CDCLK_READY_FOR_CHANGE, 3);
-	else
+	if (DISPLAY_VER(dev_priv) < 11) {
 		/*
 		 * BSpec requires us to wait up to 150usec, but that leads to
 		 * timeouts; the 2ms used here is based on experiment.
@@ -1714,6 +1714,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		ret = snb_pcode_write_timeout(dev_priv,
 					      HSW_PCODE_DE_WRITE_FREQ_REQ,
 					      0x80000000, 150, 2);
+	}
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
@@ -1773,10 +1774,11 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	if (pipe != INVALID_PIPE)
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
+	if (DISPLAY_VER(dev_priv) == 11) {
 		ret = snb_pcode_write(dev_priv, SKL_PCODE_CDCLK_CONTROL,
 				      cdclk_config->voltage_level);
-	} else {
+	}
+	if (DISPLAY_VER(dev_priv) < 11) {
 		/*
 		 * The timeout isn't specified, the 2ms used here is based on
 		 * experiment.
@@ -2062,6 +2064,34 @@ void intel_cdclk_dump_config(struct drm_i915_private *i915,
 		    cdclk_config->voltage_level);
 }
 
+/**
+ * intel_display_to_pcode- inform pcode for display config
+ * @cdclk: current cdclk as per new or old state
+ * @voltage_level: current voltage_level send to Pcode
+ * @active_pipes: active pipes for more accurate power accounting
+ */
+static void intel_display_to_pcode(struct drm_i915_private *dev_priv,
+					unsigned int cdclk, u8 voltage_level,
+					u8 active_pipes)
+{
+	int ret;
+
+	if (DISPLAY_VER(dev_priv) >= 12) {
+		ret = skl_pcode_request(dev_priv, SKL_PCODE_CDCLK_CONTROL,
+					SKL_CDCLK_PREPARE_FOR_CHANGE |
+					DISPLAY_TO_PCODE_MASK
+					(cdclk, active_pipes, voltage_level),
+					SKL_CDCLK_READY_FOR_CHANGE,
+					SKL_CDCLK_READY_FOR_CHANGE, 3);
+		if (ret) {
+			drm_err(&dev_priv->drm,
+					"Failed to inform PCU about display config (err %d)\n",
+					ret);
+			return;
+		}
+	}
+}
+
 /**
  * intel_set_cdclk - Push the CDCLK configuration to the hardware
  * @dev_priv: i915 device
@@ -2131,6 +2161,61 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	}
 }
 
+/**
+ * intel_display_to_pcode_pre_notification: display to pcode notification
+ * before the enabling power wells.
+ * send notification with cdclk, number of pipes, voltage_level.
+ * @state: intel atomic state
+ */
+void intel_display_to_pcode_pre_notification(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_cdclk_state *old_cdclk_state =
+		intel_atomic_get_old_cdclk_state(state);
+	const struct intel_cdclk_state *new_cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
+	if (!intel_cdclk_changed(&old_cdclk_state->actual,
+				&new_cdclk_state->actual) &&
+				(new_cdclk_state->active_pipes ==
+				old_cdclk_state->active_pipes))
+		return;
+	if (old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
+		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
+					new_cdclk_state->actual.voltage_level,
+					new_cdclk_state->active_pipes);
+		return;
+	}
+	if (old_cdclk_state->actual.cdclk >= new_cdclk_state->actual.cdclk) {
+		intel_display_to_pcode(dev_priv, old_cdclk_state->actual.cdclk,
+					old_cdclk_state->actual.voltage_level,
+					old_cdclk_state->active_pipes);
+		return;
+	}
+	if (old_cdclk_state->active_pipes != new_cdclk_state->active_pipes) {
+		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
+					new_cdclk_state->actual.voltage_level,
+					new_cdclk_state->active_pipes);
+		return;
+	}
+	intel_display_to_pcode(dev_priv, DISPLAY_TO_PCODE_CDCLK_MAX,
+				new_cdclk_state->actual.voltage_level,
+				new_cdclk_state->active_pipes);
+}
+
+/*intel_display_to_pcode_post_notification: after frequency change sending
+ * voltage_level, active pipes, current CDCLK frequency.
+ * @state: intel atomic state
+ */
+void intel_display_to_pcode_post_notification(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_cdclk_state *new_cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
+		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
+					new_cdclk_state->actual.voltage_level,
+					new_cdclk_state->active_pipes);
+}
+
 /**
  * intel_set_cdclk_pre_plane_update - Push the CDCLK state to the hardware
  * @state: intel atomic state
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index b535cf6a7d9e..18ccb4f16dbc 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -64,6 +64,8 @@ bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b);
 void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
 void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
+void intel_display_to_pcode_pre_notification(struct intel_atomic_state *state);
+void intel_display_to_pcode_post_notification(struct intel_atomic_state *state);
 void intel_cdclk_dump_config(struct drm_i915_private *i915,
 			     const struct intel_cdclk_config *cdclk_config,
 			     const char *context);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ca997a0a0517..436f04c69c65 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8518,6 +8518,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 	intel_atomic_prepare_plane_clear_colors(state);
 
+	if (IS_DG2(dev_priv))
+		intel_display_to_pcode_pre_notification(state);
+
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		if (intel_crtc_needs_modeset(new_crtc_state) ||
@@ -8542,6 +8545,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		intel_modeset_verify_disabled(dev_priv, state);
 	}
 
+	if (IS_DG2(dev_priv))
+		intel_display_to_pcode_post_notification(state);
+
 	intel_sagv_pre_plane_update(state);
 
 	/* Complete the events for pipes that have now been disabled */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index fef71b242706..2ad8ef3d9010 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6717,6 +6717,10 @@
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
2.25.1

