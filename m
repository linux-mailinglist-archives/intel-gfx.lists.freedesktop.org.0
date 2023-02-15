Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E643697DEF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 14:56:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC19410E1D1;
	Wed, 15 Feb 2023 13:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9430F10E259
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 13:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676469380; x=1708005380;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eHK6NXcQ7LhD3DA2hs2kT4Z5RXhJDfRqwiT2GIB5GB8=;
 b=OxPReX67h6P55O99NcpxhN9WBYtAjAvHTOTUAjE2IfkzKocg+Csi2OHK
 V0Eh+sSsKvgiWpIi6iEy1dE63RD8xFXRiEn2BEvMhtjK0cufsgZDr0B7n
 gOuRdwxMBdTssCegUtWowAw/xh8qGxPZ3yNvOSsFaJS4tYiI6K9yrGMWS
 2cY/nIWGyZq8sZqEVuWYFk14IdAGx2Xc/g5XOOnmNomud15ALXOkan2td
 ZrjcVx6Z8hag8qQfmljAdXY8JHwHjzpRGCnuLOFA/zWUinIfCsQfZQQF5
 rlAo7u4DnszWrhtdbLSWvFq/x67D/19JMhMuouuODjS5n0P89+hi1pBV8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="329148301"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="329148301"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 05:56:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="662942060"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="662942060"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 15 Feb 2023 05:56:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Feb 2023 15:56:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Feb 2023 15:56:16 +0200
Message-Id: <20230215135616.30411-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230214134739.25077-1-ville.syrjala@linux.intel.com>
References: <20230214134739.25077-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915: Make backlight setup debugs
 consistent
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

It's confusing to debug backlight issues when one can't
easily even tell what kind of backlight control was
selected. Sprinkle uniform debug messages to all the
backlight setup functions.

Also the one that was already there (ext_pwm) was
using drm_info() for some reason. I don't think that's
warranted so switch it to drm_dbg_kms() as well.

v2: Deal with AUX backlights too (Jani)
    Move the VLV/CHV initial pipe debug there too (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_backlight.c    | 36 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_dp.c       |  5 ---
 .../drm/i915/display/intel_dp_aux_backlight.c | 29 +++++++++++----
 .../i915/display/intel_dsi_dcs_backlight.c    |  5 +++
 4 files changed, 62 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index a4e4b7f79e4d..cb1e4423decb 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -1270,6 +1270,10 @@ static int lpt_setup_backlight(struct intel_connector *connector, enum pipe unus
 			       cpu_ctl2 & ~BLM_PWM_ENABLE);
 	}
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight control\n",
+		    connector->base.base.id, connector->base.name);
+
 	return 0;
 }
 
@@ -1297,6 +1301,10 @@ static int pch_setup_backlight(struct intel_connector *connector, enum pipe unus
 	panel->backlight.pwm_enabled = (cpu_ctl2 & BLM_PWM_ENABLE) &&
 		(pch_ctl1 & BLM_PCH_PWM_ENABLE);
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight control\n",
+		    connector->base.base.id, connector->base.name);
+
 	return 0;
 }
 
@@ -1335,6 +1343,10 @@ static int i9xx_setup_backlight(struct intel_connector *connector, enum pipe unu
 
 	panel->backlight.pwm_enabled = val != 0;
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using native PWM for backlight control\n",
+		    connector->base.base.id, connector->base.name);
+
 	return 0;
 }
 
@@ -1364,6 +1376,10 @@ static int i965_setup_backlight(struct intel_connector *connector, enum pipe unu
 
 	panel->backlight.pwm_enabled = ctl2 & BLM_PWM_ENABLE;
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using native PWM for backlight control\n",
+		    connector->base.base.id, connector->base.name);
+
 	return 0;
 }
 
@@ -1392,6 +1408,10 @@ static int vlv_setup_backlight(struct intel_connector *connector, enum pipe pipe
 
 	panel->backlight.pwm_enabled = ctl2 & BLM_PWM_ENABLE;
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using native PWM for backlight control (on pipe %c)\n",
+		    connector->base.base.id, connector->base.name, pipe_name(pipe));
+
 	return 0;
 }
 
@@ -1428,6 +1448,11 @@ bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
 
 	panel->backlight.pwm_enabled = pwm_ctl & BXT_BLC_PWM_ENABLE;
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using native PWM for backlight control (controller=%d)\n",
+		    connector->base.base.id, connector->base.name,
+		    panel->backlight.controller);
+
 	return 0;
 }
 
@@ -1490,6 +1515,11 @@ cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
 
 	panel->backlight.pwm_enabled = pwm_ctl & BXT_BLC_PWM_ENABLE;
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight control (controller=%d)\n",
+		    connector->base.base.id, connector->base.name,
+		    panel->backlight.controller);
+
 	return 0;
 }
 
@@ -1538,8 +1568,10 @@ static int ext_pwm_setup_backlight(struct intel_connector *connector,
 			NSEC_PER_SEC / get_vbt_pwm_freq(connector);
 	}
 
-	drm_info(&i915->drm, "Using %s PWM for LCD backlight control\n",
-		 desc);
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using %s PWM for backlight control\n",
+		    connector->base.base.id, connector->base.name, desc);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b92e0b0f5369..717be9a9ef5b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5256,11 +5256,6 @@ static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
 
 		if (pipe != PIPE_A && pipe != PIPE_B)
 			pipe = PIPE_A;
-
-		drm_dbg_kms(&i915->drm,
-			    "[CONNECTOR:%d:%s] using pipe %c for initial backlight setup\n",
-			    connector->base.base.id, connector->base.name,
-			    pipe_name(pipe));
 	}
 
 	intel_backlight_setup(connector, pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 83af95bce98d..8670b6956fee 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -273,6 +273,11 @@ intel_dp_aux_hdr_disable_backlight(const struct drm_connector_state *conn_state,
 	panel->backlight.pwm_funcs->disable(conn_state, intel_backlight_invert_pwm_level(connector, 0));
 }
 
+static const char *dpcd_vs_pwm_str(bool aux)
+{
+	return aux ? "DPCD" : "PWM";
+}
+
 static int
 intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pipe)
 {
@@ -282,11 +287,11 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 		&connector->base.display_info.luminance_range;
 	int ret;
 
-	if (panel->backlight.edp.intel.sdr_uses_aux) {
-		drm_dbg_kms(&i915->drm, "SDR backlight is controlled through DPCD\n");
-	} else {
-		drm_dbg_kms(&i915->drm, "SDR backlight is controlled through PWM\n");
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDR backlight is controlled through %s\n",
+		    connector->base.base.id, connector->base.name,
+		    dpcd_vs_pwm_str(panel->backlight.edp.intel.sdr_uses_aux));
 
+	if (!panel->backlight.edp.intel.sdr_uses_aux) {
 		ret = panel->backlight.pwm_funcs->setup(connector, pipe);
 		if (ret < 0) {
 			drm_err(&i915->drm,
@@ -303,8 +308,10 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 		panel->backlight.min = 0;
 	}
 
-	drm_dbg_kms(&i915->drm, "Using backlight range %d..%d\n", panel->backlight.min,
-		    panel->backlight.max);
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR interface for backlight control (range %d..%d)\n",
+		    connector->base.base.id, connector->base.name,
+		    panel->backlight.min, panel->backlight.max);
+
 
 	panel->backlight.level = intel_dp_aux_hdr_get_backlight(connector, pipe);
 	panel->backlight.enabled = panel->backlight.level != 0;
@@ -386,6 +393,13 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 	if (ret < 0)
 		return ret;
 
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] AUX VESA backlight enable is controlled through %s\n",
+		    connector->base.base.id, connector->base.name,
+		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_enable));
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] AUX VESA backlight level is controlled through %s\n",
+		    connector->base.base.id, connector->base.name,
+		    dpcd_vs_pwm_str(panel->backlight.edp.vesa.info.aux_set));
+
 	if (!panel->backlight.edp.vesa.info.aux_set || !panel->backlight.edp.vesa.info.aux_enable) {
 		ret = panel->backlight.pwm_funcs->setup(connector, pipe);
 		if (ret < 0) {
@@ -418,6 +432,9 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
 		}
 	}
 
+	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX VESA interface for backlight control\n",
+		    connector->base.base.id, connector->base.name);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
index 20e466d843ce..049443245310 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
@@ -162,6 +162,7 @@ static void dcs_enable_backlight(const struct intel_crtc_state *crtc_state,
 static int dcs_setup_backlight(struct intel_connector *connector,
 			       enum pipe unused)
 {
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
 
 	if (panel->vbt.backlight.brightness_precision_bits > 8)
@@ -171,6 +172,10 @@ static int dcs_setup_backlight(struct intel_connector *connector,
 
 	panel->backlight.level = panel->backlight.max;
 
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] Using DCS for backlight control\n",
+		    connector->base.base.id, connector->base.name);
+
 	return 0;
 }
 
-- 
2.39.1

