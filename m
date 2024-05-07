Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9078BD9FF
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 06:06:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D87B10E907;
	Tue,  7 May 2024 04:06:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aO/SbpaH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF03F10E907
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 04:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715054799; x=1746590799;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xAeytDhDvDG28cdskr6LimrN/n2Ap70yK0Pt5+vgeGk=;
 b=aO/SbpaH5PxPA5DuLhW+6f4N8UL2ME/dKpyq1wZRDIrcyqoya/4JuFsR
 dJng/rJYK6sCAmySDiI8/bKh70fc60Z4THvDELODRfjQVkcPm2W8zlOu5
 nTfTasUdspXj9VZ6/hrFSlwYm9UR30t5uAljbxoYwIoJVr4npa44+Hz81
 jD+XFX31/0YoHpDwxJRZqIw4/saujNEQ9EDG8mb8PJHH+eGokvb/oW2xo
 WiHIZMAk/kOxOownBRIIYQYcis+yuEHWIMxSOVaGlkpx9meoGLh6kfizZ
 pFeqrWXUuTKbXITGRK1POSNKASVOXuqIsYfrA0OoqkPoIt7RyhS+KdtrA A==;
X-CSE-ConnectionGUID: udSRZavETdmiXDoB6zfimg==
X-CSE-MsgGUID: Vok6bnu6Se6cmTQHILtToQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="14645340"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="14645340"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 21:06:39 -0700
X-CSE-ConnectionGUID: cxsdbDuTQDexwKrLyQJnyw==
X-CSE-MsgGUID: yHzkj7GlSryrrV2Hw6lqJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28468367"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 06 May 2024 21:06:37 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/7] drm/i915/dp: Rename intel struct inside intel_panel
Date: Tue,  7 May 2024 09:34:02 +0530
Message-ID: <20240507040407.1056061-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240507040407.1056061-1-suraj.kandpal@intel.com>
References: <20240507040407.1056061-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Rename intel to intel cap which is present inside panel.edp struct
to make it more sensible to tell us what it contains.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  2 +-
 .../gpu/drm/i915/display/intel_dp_aux_backlight.c  | 14 +++++++-------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 00eba3fbcdc6..66cc9c97fe58 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -401,7 +401,7 @@ struct intel_panel {
 			} vesa;
 			struct {
 				bool sdr_uses_aux;
-			} intel;
+			} intel_cap;
 		} edp;
 
 		struct backlight_device *device;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 4f58efdc688a..44bc6fa04332 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -156,7 +156,7 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 		return false;
 	}
 
-	panel->backlight.edp.intel.sdr_uses_aux =
+	panel->backlight.edp.intel_cap.sdr_uses_aux =
 		tcon_cap[2] & INTEL_EDP_SDR_TCON_BRIGHTNESS_AUX_CAP;
 
 	return true;
@@ -178,7 +178,7 @@ intel_dp_aux_hdr_get_backlight(struct intel_connector *connector, enum pipe pipe
 	}
 
 	if (!(tmp & INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE)) {
-		if (!panel->backlight.edp.intel.sdr_uses_aux) {
+		if (!panel->backlight.edp.intel_cap.sdr_uses_aux) {
 			u32 pwm_level = panel->backlight.pwm_funcs->get(connector, pipe);
 
 			return intel_backlight_level_from_pwm(connector, pwm_level);
@@ -221,7 +221,7 @@ intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct intel_panel *panel = &connector->panel;
 
-	if (panel->backlight.edp.intel.sdr_uses_aux) {
+	if (panel->backlight.edp.intel_cap.sdr_uses_aux) {
 		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
 	} else {
 		const u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
@@ -251,7 +251,7 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
 	}
 
 	ctrl = old_ctrl;
-	if (panel->backlight.edp.intel.sdr_uses_aux) {
+	if (panel->backlight.edp.intel_cap.sdr_uses_aux) {
 		ctrl |= INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
 		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
 	} else {
@@ -275,7 +275,7 @@ intel_dp_aux_hdr_disable_backlight(const struct drm_connector_state *conn_state,
 	struct intel_panel *panel = &connector->panel;
 
 	/* Nothing to do for AUX based backlight controls */
-	if (panel->backlight.edp.intel.sdr_uses_aux)
+	if (panel->backlight.edp.intel_cap.sdr_uses_aux)
 		return;
 
 	/* Note we want the actual pwm_level to be 0, regardless of pwm_min */
@@ -298,9 +298,9 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDR backlight is controlled through %s\n",
 		    connector->base.base.id, connector->base.name,
-		    dpcd_vs_pwm_str(panel->backlight.edp.intel.sdr_uses_aux));
+		    dpcd_vs_pwm_str(panel->backlight.edp.intel_cap.sdr_uses_aux));
 
-	if (!panel->backlight.edp.intel.sdr_uses_aux) {
+	if (!panel->backlight.edp.intel_cap.sdr_uses_aux) {
 		ret = panel->backlight.pwm_funcs->setup(connector, pipe);
 		if (ret < 0) {
 			drm_err(&i915->drm,
-- 
2.43.2

