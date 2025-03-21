Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E451A6B920
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 11:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A97810E793;
	Fri, 21 Mar 2025 10:53:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aiQ90kUR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B89A910E78C;
 Fri, 21 Mar 2025 10:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742554395; x=1774090395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=a4912k9wbICp22b7TdhdYKrdNh71mA+gDgvXf10SxYQ=;
 b=aiQ90kURf89V3Fl17U6D1sQuEp5u/A8NpGdtNz5jX7ZQEnvpbS3NGY3g
 cD859kQuEZ4wSVVSOlNESRbxq5B/3nCgCvF78xsZXlDq/Bb1GB8Bb9gQo
 TlOs9t72FhGRIDg5U/+1X2j0wIdOgUwDJtjdLdppfPn41AVQCUtUabNeQ
 k+0WzVtRAhKUwNKGHvQetpLP4qCfPGKZffSZ5ZiPqLD5yCpTrj/0bAl7T
 JeFFlqVwaUVC9rt0L5pkEq51YhQBMaSKVCsXQKyiSmVpE3BmbrYwLFMby
 chFCXA648dGYo9k7Mg6ennPPPX163qan7PrR0d2+vDxWufwZvKbdsQ8jS Q==;
X-CSE-ConnectionGUID: 2AshcBF6T5mXGPFlF1kryA==
X-CSE-MsgGUID: sahRM93hQZq3gp/9DITvbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="54483888"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="54483888"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:15 -0700
X-CSE-ConnectionGUID: YC8j1x+TQPa3pwMOXaYn1A==
X-CSE-MsgGUID: CsH7/ztuRM6cMZ9t6pBrlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123830026"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/12] drm/i915/dsi: convert parameter printing to drm_printer
Date: Fri, 21 Mar 2025 12:52:47 +0200
Message-Id: <50ff85e66c058a12b2fe0d0cba6a542f7cfa71cf.1742554320.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742554320.git.jani.nikula@intel.com>
References: <cover.1742554320.git.jani.nikula@intel.com>
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

The DSI VBT initialization debug logs a lot of parameters. Convert this
to use struct drm_printer with a prefix.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 80 +++++++++-----------
 1 file changed, 35 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 7b2ffd14ae6e..802f210bfafe 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -695,54 +695,44 @@ void intel_dsi_vbt_exec_sequence(struct intel_dsi *intel_dsi,
 
 void intel_dsi_log_params(struct intel_dsi *intel_dsi)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dsi->base.base.dev);
-
-	drm_dbg_kms(&i915->drm, "Pclk %d\n", intel_dsi->pclk);
-	drm_dbg_kms(&i915->drm, "Pixel overlap %d\n",
-		    intel_dsi->pixel_overlap);
-	drm_dbg_kms(&i915->drm, "Lane count %d\n", intel_dsi->lane_count);
-	drm_dbg_kms(&i915->drm, "DPHY param reg 0x%x\n", intel_dsi->dphy_reg);
-	drm_dbg_kms(&i915->drm, "Video mode format %s\n",
-		    intel_dsi->video_mode == NON_BURST_SYNC_PULSE ?
-		    "non-burst with sync pulse" :
-		    intel_dsi->video_mode == NON_BURST_SYNC_EVENTS ?
-		    "non-burst with sync events" :
-		    intel_dsi->video_mode == BURST_MODE ?
-		    "burst" : "<unknown>");
-	drm_dbg_kms(&i915->drm, "Burst mode ratio %d\n",
-		    intel_dsi->burst_mode_ratio);
-	drm_dbg_kms(&i915->drm, "Reset timer %d\n", intel_dsi->rst_timer_val);
-	drm_dbg_kms(&i915->drm, "Eot %s\n",
-		    str_enabled_disabled(intel_dsi->eotp_pkt));
-	drm_dbg_kms(&i915->drm, "Clockstop %s\n",
-		    str_enabled_disabled(!intel_dsi->clock_stop));
-	drm_dbg_kms(&i915->drm, "Mode %s\n",
-		    intel_dsi->operation_mode ? "command" : "video");
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
+	struct drm_printer p = drm_dbg_printer(display->drm, DRM_UT_KMS,
+					       "DSI parameters:");
+
+	drm_printf(&p, "Pclk %d\n", intel_dsi->pclk);
+	drm_printf(&p, "Pixel overlap %d\n", intel_dsi->pixel_overlap);
+	drm_printf(&p, "Lane count %d\n", intel_dsi->lane_count);
+	drm_printf(&p, "DPHY param reg 0x%x\n", intel_dsi->dphy_reg);
+	drm_printf(&p, "Video mode format %s\n",
+		   intel_dsi->video_mode == NON_BURST_SYNC_PULSE ?
+		   "non-burst with sync pulse" :
+		   intel_dsi->video_mode == NON_BURST_SYNC_EVENTS ?
+		   "non-burst with sync events" :
+		   intel_dsi->video_mode == BURST_MODE ?
+		   "burst" : "<unknown>");
+	drm_printf(&p, "Burst mode ratio %d\n", intel_dsi->burst_mode_ratio);
+	drm_printf(&p, "Reset timer %d\n", intel_dsi->rst_timer_val);
+	drm_printf(&p, "Eot %s\n", str_enabled_disabled(intel_dsi->eotp_pkt));
+	drm_printf(&p, "Clockstop %s\n", str_enabled_disabled(!intel_dsi->clock_stop));
+	drm_printf(&p, "Mode %s\n", intel_dsi->operation_mode ? "command" : "video");
 	if (intel_dsi->dual_link == DSI_DUAL_LINK_FRONT_BACK)
-		drm_dbg_kms(&i915->drm,
-			    "Dual link: DSI_DUAL_LINK_FRONT_BACK\n");
+		drm_printf(&p, "Dual link: DSI_DUAL_LINK_FRONT_BACK\n");
 	else if (intel_dsi->dual_link == DSI_DUAL_LINK_PIXEL_ALT)
-		drm_dbg_kms(&i915->drm,
-			    "Dual link: DSI_DUAL_LINK_PIXEL_ALT\n");
+		drm_printf(&p, "Dual link: DSI_DUAL_LINK_PIXEL_ALT\n");
 	else
-		drm_dbg_kms(&i915->drm, "Dual link: NONE\n");
-	drm_dbg_kms(&i915->drm, "Pixel Format %d\n", intel_dsi->pixel_format);
-	drm_dbg_kms(&i915->drm, "TLPX %d\n", intel_dsi->escape_clk_div);
-	drm_dbg_kms(&i915->drm, "LP RX Timeout 0x%x\n",
-		    intel_dsi->lp_rx_timeout);
-	drm_dbg_kms(&i915->drm, "Turnaround Timeout 0x%x\n",
-		    intel_dsi->turn_arnd_val);
-	drm_dbg_kms(&i915->drm, "Init Count 0x%x\n", intel_dsi->init_count);
-	drm_dbg_kms(&i915->drm, "HS to LP Count 0x%x\n",
-		    intel_dsi->hs_to_lp_count);
-	drm_dbg_kms(&i915->drm, "LP Byte Clock %d\n", intel_dsi->lp_byte_clk);
-	drm_dbg_kms(&i915->drm, "DBI BW Timer 0x%x\n", intel_dsi->bw_timer);
-	drm_dbg_kms(&i915->drm, "LP to HS Clock Count 0x%x\n",
-		    intel_dsi->clk_lp_to_hs_count);
-	drm_dbg_kms(&i915->drm, "HS to LP Clock Count 0x%x\n",
-		    intel_dsi->clk_hs_to_lp_count);
-	drm_dbg_kms(&i915->drm, "BTA %s\n",
-		    str_enabled_disabled(!(intel_dsi->video_frmt_cfg_bits & DISABLE_VIDEO_BTA)));
+		drm_printf(&p, "Dual link: NONE\n");
+	drm_printf(&p, "Pixel Format %d\n", intel_dsi->pixel_format);
+	drm_printf(&p, "TLPX %d\n", intel_dsi->escape_clk_div);
+	drm_printf(&p, "LP RX Timeout 0x%x\n", intel_dsi->lp_rx_timeout);
+	drm_printf(&p, "Turnaround Timeout 0x%x\n", intel_dsi->turn_arnd_val);
+	drm_printf(&p, "Init Count 0x%x\n", intel_dsi->init_count);
+	drm_printf(&p, "HS to LP Count 0x%x\n", intel_dsi->hs_to_lp_count);
+	drm_printf(&p, "LP Byte Clock %d\n", intel_dsi->lp_byte_clk);
+	drm_printf(&p, "DBI BW Timer 0x%x\n", intel_dsi->bw_timer);
+	drm_printf(&p, "LP to HS Clock Count 0x%x\n", intel_dsi->clk_lp_to_hs_count);
+	drm_printf(&p, "HS to LP Clock Count 0x%x\n", intel_dsi->clk_hs_to_lp_count);
+	drm_printf(&p, "BTA %s\n",
+		   str_enabled_disabled(!(intel_dsi->video_frmt_cfg_bits & DISABLE_VIDEO_BTA)));
 }
 
 static enum mipi_dsi_pixel_format vbt_to_dsi_pixel_format(unsigned int format)
-- 
2.39.5

