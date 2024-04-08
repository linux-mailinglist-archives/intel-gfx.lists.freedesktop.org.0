Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED5E89CB7B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 20:09:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B1361127EE;
	Mon,  8 Apr 2024 18:09:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ANqt8dWR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D9EF1127E9;
 Mon,  8 Apr 2024 18:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712599758; x=1744135758;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JoPKK76pUgWZwR2OFx1ql16FgoONfsEE8sthp2+9yLQ=;
 b=ANqt8dWRZAx697mmCyazaij0UFaiLqvC1W2GGZUgFD4cn+UGanX/bFXT
 9oAc1fpcLDN8P/OW9P0OaRkRmyfK18LuH6MUoCgq27yCvNeAq48CFvHZ5
 cXoUZUWdkupDwDZw0wPxKc7TlIzYDu9tHCaM9rvLy6xmQ93bwWCgMd3MK
 7fCJY6mK9lp8CeM169rQkyw/G5hRw6we9zOIDfeFqIK65GHUAjlq15Aru
 lOjkFkhAvw43YzJOFqA6uASfQqrPCfqRGPAQHcx/OqMXiFMlYclFEQkwV
 1cnw8AU1unc5sbAs20E0wsrDKHQGk1JVAFGEWWQ30ePmN7J7Stzj8z+jB g==;
X-CSE-ConnectionGUID: 5A5PEOw4RNWFVv7xGZh+xw==
X-CSE-MsgGUID: RCwDBkGfRsSv6BJepRfCAw==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="19038681"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="19038681"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:09:18 -0700
X-CSE-ConnectionGUID: +vnMe4sHTcuQZ5SyL/YeBw==
X-CSE-MsgGUID: 7xSCeadgSoCklxkjrDa+3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="43145310"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:09:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 3/8] drm/i915: move max_dotclk_freq to display substruct
Date: Mon,  8 Apr 2024 21:08:38 +0300
Message-Id: <ea012aa72c93f3d436ccacf8f75683757d144b82.1712599670.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712599670.git.jani.nikula@intel.com>
References: <cover.1712599670.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The info is related to display, and should be placed under
i915->display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c        | 6 +++---
 drivers/gpu/drm/i915/display/intel_crt.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c      | 6 +++---
 drivers/gpu/drm/i915/display/intel_display_core.h | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c           | 4 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c       | 2 +-
 drivers/gpu/drm/i915/display/intel_dsi.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_tv.c           | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                   | 1 -
 drivers/gpu/drm/xe/xe_device_types.h              | 3 ---
 14 files changed, 17 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 950942dc3d60..7a833b5f2de2 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3438,13 +3438,13 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 		dev_priv->display.cdclk.max_cdclk_freq = dev_priv->display.cdclk.hw.cdclk;
 	}
 
-	dev_priv->max_dotclk_freq = intel_compute_max_dotclk(dev_priv);
+	dev_priv->display.cdclk.max_dotclk_freq = intel_compute_max_dotclk(dev_priv);
 
 	drm_dbg(&dev_priv->drm, "Max CD clock rate: %d kHz\n",
 		dev_priv->display.cdclk.max_cdclk_freq);
 
 	drm_dbg(&dev_priv->drm, "Max dotclock rate: %d kHz\n",
-		dev_priv->max_dotclk_freq);
+		dev_priv->display.cdclk.max_dotclk_freq);
 }
 
 /**
@@ -3618,7 +3618,7 @@ static int i915_cdclk_info_show(struct seq_file *m, void *unused)
 
 	seq_printf(m, "Current CD clock frequency: %d kHz\n", i915->display.cdclk.hw.cdclk);
 	seq_printf(m, "Max CD clock frequency: %d kHz\n", i915->display.cdclk.max_cdclk_freq);
-	seq_printf(m, "Max pixel clock frequency: %d kHz\n", i915->max_dotclk_freq);
+	seq_printf(m, "Max pixel clock frequency: %d kHz\n", i915->display.cdclk.max_dotclk_freq);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 2e95093aa4d4..10e95dc425a6 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -348,7 +348,7 @@ intel_crt_mode_valid(struct drm_connector *connector,
 {
 	struct drm_device *dev = connector->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	int max_dotclk = dev_priv->max_dotclk_freq;
+	int max_dotclk = dev_priv->display.cdclk.max_dotclk_freq;
 	enum drm_mode_status status;
 	int max_clock;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 41062b4fb6ae..74018de5a17f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2419,7 +2419,7 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
-	int clock_limit = i915->max_dotclk_freq;
+	int clock_limit = i915->display.cdclk.max_dotclk_freq;
 
 	/*
 	 * Start with the adjusted_mode crtc timings, which
@@ -2443,7 +2443,7 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 		 */
 		if (intel_crtc_supports_double_wide(crtc) &&
 		    pipe_mode->crtc_clock > clock_limit) {
-			clock_limit = i915->max_dotclk_freq;
+			clock_limit = i915->display.cdclk.max_dotclk_freq;
 			crtc_state->double_wide = true;
 		}
 	}
@@ -7795,7 +7795,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 static int max_dotclock(struct drm_i915_private *i915)
 {
-	int max_dotclock = i915->max_dotclk_freq;
+	int max_dotclock = i915->display.cdclk.max_dotclk_freq;
 
 	/* icl+ might use bigjoiner */
 	if (DISPLAY_VER(i915) >= 11)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index b577429ee6e9..eed9be8e9f49 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -345,6 +345,7 @@ struct intel_display {
 		struct intel_global_obj obj;
 
 		unsigned int max_cdclk_freq;
+		unsigned int max_dotclk_freq;
 		unsigned int skl_preferred_vco_freq;
 	} cdclk;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1df4b93e5e71..be9188bbac33 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1210,7 +1210,7 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
 	if (!intel_dp_can_bigjoiner(intel_dp))
 		return false;
 
-	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
+	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120 ||
 	       connector->force_bigjoiner_enable;
 }
 
@@ -1224,7 +1224,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
-	int max_dotclk = dev_priv->max_dotclk_freq;
+	int max_dotclk = dev_priv->display.cdclk.max_dotclk_freq;
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 6497542e3e65..cb3c529bfe38 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1285,7 +1285,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
 	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
 	struct drm_dp_mst_port *port = intel_connector->port;
 	const int min_bpp = 18;
-	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
+	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	int ret;
 	bool dsc = false, bigjoiner = false;
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index 2dfc60e4b615..bd5888ce4852 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -64,7 +64,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_fixed_mode(intel_connector, mode);
-	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
+	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
 	enum drm_mode_status status;
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 060328c0df7e..1840f5b59229 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -223,7 +223,7 @@ intel_dvo_mode_valid(struct drm_connector *_connector,
 	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_fixed_mode(connector, mode);
-	int max_dotclk = to_i915(connector->base.dev)->max_dotclk_freq;
+	int max_dotclk = to_i915(connector->base.dev)->display.cdclk.max_dotclk_freq;
 	int target_clock = mode->clock;
 	enum drm_mode_status status;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 12eff05a7157..5f6deceaf8ba 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1993,7 +1993,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 	struct drm_i915_private *dev_priv = intel_hdmi_to_i915(hdmi);
 	enum drm_mode_status status;
 	int clock = mode->clock;
-	int max_dotclk = to_i915(connector->dev)->max_dotclk_freq;
+	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
 	bool has_hdmi_sink = intel_has_hdmi_sink(hdmi, connector->state);
 	bool ycbcr_420_only;
 	enum intel_output_format sink_format;
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 24860945f2e4..8b8959073466 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -392,7 +392,7 @@ intel_lvds_mode_valid(struct drm_connector *_connector,
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_fixed_mode(connector, mode);
-	int max_pixclk = to_i915(connector->base.dev)->max_dotclk_freq;
+	int max_pixclk = to_i915(connector->base.dev)->display.cdclk.max_dotclk_freq;
 	enum drm_mode_status status;
 
 	status = intel_cpu_transcoder_mode_valid(i915, mode);
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index df76044a739a..d0d712405129 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1944,7 +1944,7 @@ intel_sdvo_mode_valid(struct drm_connector *connector,
 	struct intel_sdvo_connector *intel_sdvo_connector =
 		to_intel_sdvo_connector(connector);
 	bool has_hdmi_sink = intel_has_hdmi_sink(intel_sdvo_connector, connector->state);
-	int max_dotclk = i915->max_dotclk_freq;
+	int max_dotclk = i915->display.cdclk.max_dotclk_freq;
 	enum drm_mode_status status;
 	int clock = mode->clock;
 
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 79d35c1b3c81..9df0f1263913 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -962,7 +962,7 @@ intel_tv_mode_valid(struct drm_connector *connector,
 {
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 	const struct tv_mode *tv_mode = intel_tv_mode_find(connector->state);
-	int max_dotclk = i915->max_dotclk_freq;
+	int max_dotclk = i915->display.cdclk.max_dotclk_freq;
 	enum drm_mode_status status;
 
 	status = intel_cpu_transcoder_mode_valid(i915, mode);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ba3c27c969f2..ac8ad18c5fc2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -252,7 +252,6 @@ struct drm_i915_private {
 
 	unsigned int fsb_freq, mem_freq, is_ddr3;
 
-	unsigned int max_dotclk_freq;
 	unsigned int hpll_freq;
 	unsigned int czclk_freq;
 
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 6f46234d1241..6b3a22197322 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -500,9 +500,6 @@ struct xe_device {
 	/* For pcode */
 	struct mutex sb_lock;
 
-	/* Should be in struct intel_display */
-	u32 max_dotclk_freq;
-
 	union {
 		/* only to allow build, not used functionally */
 		u32 irq_mask;
-- 
2.39.2

