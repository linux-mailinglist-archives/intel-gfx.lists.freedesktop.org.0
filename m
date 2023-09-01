Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F16978FB79
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 11:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8526410E76C;
	Fri,  1 Sep 2023 09:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3CD410E76D
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 09:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693561867; x=1725097867;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qm8zTrO/up9haXu3F11VNiJaWwHlkQKzOtWi44wum7I=;
 b=ahrfkatGEDn2d9Lxy9vXpE7MjjKWn1iGUks8uVq8MfZ9Eaav8jWyWHqG
 9imlhVJDQLl/cfwjADX+t99ouN9hB2hTPKvAYQ2rpC0YkXO6VUba/dHt0
 6Gdxnf+YTyv7eEftc1fCosWw5lqm+kZe0KAsBKafsx4KXX51wxQH78flk
 yNfLOcRZLZuZzkLRKEf8zGEfPLNTAvDg9yLcmAsnqemi3PQPg8tx32Dl6
 FMr+Or6AWV4URX+zOlvxuaoCnETd/2gfdDSValzmaQj/wAhQqLc03CvM9
 6OYa0/5UYZbWiJWn5inhfSf00R/pnLcmvo8iO8UGDareiT8qNCr60nVGG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="375086800"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="375086800"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 02:51:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="774929994"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="774929994"
Received: from tsengwil-desk2.itwn.intel.com (HELO gar) ([10.5.231.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 02:51:04 -0700
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 17:51:00 +0800
Message-Id: <20230901095100.3771188-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: let HW maintain HS-TRAIL and
 CLK_POST
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
Cc: William Tseng <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This change is to adjust TEOT timing and TCLK-POST timing so DSI
signaling can meet CTS specification.

For clock lane, the measured TEOT may be changed from 142.64 ns to
107.36 ns, which is less than (105 ns+12*UI) and is conformed to
mipi D-PHY v1.2 CTS v1.0.

As to TCLK-POST, it may be changed from 133.44 ns to 178.72 ns, which
is greater than (60 ns+52*UI) and is conformed to the CTS standard.

The computed UI is around 1.47 ns.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 31 ++++----------------------
 1 file changed, 4 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ad6488e9c2b2..4a13f467ca46 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1819,10 +1819,10 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	struct intel_connector *connector = intel_dsi->attached_connector;
 	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 	u32 tlpx_ns;
-	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt, trail_cnt;
-	u32 ths_prepare_ns, tclk_trail_ns;
+	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt;
+	u32 ths_prepare_ns;
 	u32 hs_zero_cnt;
-	u32 tclk_pre_cnt, tclk_post_cnt;
+	u32 tclk_pre_cnt;
 
 	tlpx_ns = intel_dsi_tlpx_ns(intel_dsi);
 
@@ -1853,14 +1853,6 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 		clk_zero_cnt = ICL_CLK_ZERO_CNT_MAX;
 	}
 
-	/* trail cnt in escape clocks*/
-	trail_cnt = DIV_ROUND_UP(tclk_trail_ns, tlpx_ns);
-	if (trail_cnt > ICL_TRAIL_CNT_MAX) {
-		drm_dbg_kms(&dev_priv->drm, "trail_cnt out of range (%d)\n",
-			    trail_cnt);
-		trail_cnt = ICL_TRAIL_CNT_MAX;
-	}
-
 	/* tclk pre count in escape clocks */
 	tclk_pre_cnt = DIV_ROUND_UP(mipi_config->tclk_pre, tlpx_ns);
 	if (tclk_pre_cnt > ICL_TCLK_PRE_CNT_MAX) {
@@ -1869,15 +1861,6 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 		tclk_pre_cnt = ICL_TCLK_PRE_CNT_MAX;
 	}
 
-	/* tclk post count in escape clocks */
-	tclk_post_cnt = DIV_ROUND_UP(mipi_config->tclk_post, tlpx_ns);
-	if (tclk_post_cnt > ICL_TCLK_POST_CNT_MAX) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "tclk_post_cnt out of range (%d)\n",
-			    tclk_post_cnt);
-		tclk_post_cnt = ICL_TCLK_POST_CNT_MAX;
-	}
-
 	/* hs zero cnt in escape clocks */
 	hs_zero_cnt = DIV_ROUND_UP(mipi_config->ths_prepare_hszero -
 				   ths_prepare_ns, tlpx_ns);
@@ -1902,19 +1885,13 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 			       CLK_ZERO_OVERRIDE |
 			       CLK_ZERO(clk_zero_cnt) |
 			       CLK_PRE_OVERRIDE |
-			       CLK_PRE(tclk_pre_cnt) |
-			       CLK_POST_OVERRIDE |
-			       CLK_POST(tclk_post_cnt) |
-			       CLK_TRAIL_OVERRIDE |
-			       CLK_TRAIL(trail_cnt));
+			       CLK_PRE(tclk_pre_cnt));
 
 	/* data lanes dphy timings */
 	intel_dsi->dphy_data_lane_reg = (HS_PREPARE_OVERRIDE |
 					 HS_PREPARE(prepare_cnt) |
 					 HS_ZERO_OVERRIDE |
 					 HS_ZERO(hs_zero_cnt) |
-					 HS_TRAIL_OVERRIDE |
-					 HS_TRAIL(trail_cnt) |
 					 HS_EXIT_OVERRIDE |
 					 HS_EXIT(exit_zero_cnt));
 
-- 
2.34.1

