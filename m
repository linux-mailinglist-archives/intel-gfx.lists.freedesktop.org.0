Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7648047886C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 11:10:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 796F410FE24;
	Fri, 17 Dec 2021 10:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53CA410FDB1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 10:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639735814; x=1671271814;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=4b4J0TrnxTj+dbR2aZEF8Xhtucuh0zRuaLk3Azmcf98=;
 b=fyd5yN/W7XBLHHkHdjsdIvn1YyAaNB2J2enqdRdh/NvsL0V39oaqgWiD
 T30T/C50N2gtk5fP3iWicissarqFDtoAxTFsCVKQxNw59TG/F6ej5dzyq
 N2YKOlCUI9U+lqt4G/KSO6GdZhLvdyRsgaJxB69yYcwHP1gbzUgZy0RRB
 mLJkTkyLKdtHISKaTd3ohQRZcydS8dYgL10Sw+J7BNzXzwzUiR7vktRJ7
 Ru6lzXdWpJeQiknuN06mJhy7N1X+bs0j1nauZQSB86NFxfuOBkQYpcPDZ
 b/hFoMldz5rAUeSExd6c+LDwZfte2h9wCMDJJDM+4iVJUV3sBh8APXYuB w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="239675702"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="239675702"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 02:10:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="519690109"
Received: from tsengwil-desk1.itwn.intel.com (HELO gar) ([10.5.231.22])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 02:10:12 -0800
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Dec 2021 18:09:03 +0800
Message-Id: <20211217100903.32599-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211115030320.26666-1-william.tseng@intel.com>
References: <20211115030320.26666-1-william.tseng@intel.com>
Subject: [Intel-gfx] [PATCH v3] drm/i915/dsi: let HW maintain the HS-TRAIL
 timing
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This change is to avoid over-specification of the TEOT timing
parameter, which is derived from software in current design.

Supposed that THS-TRAIL and THS-EXIT have the minimum values,
i.e., 60 and 100 in ns. If SW is overriding the HW default,
the TEOT value becomes 150 ns, approximately calculated by
the following formula.

  DIV_ROUND_UP(60/50)*50 + DIV_ROUND_UP(100/50))*50/2, where 50
  is LP Escape Clock time in ns.

The TEOT value 150 ns is larger than the maximum value,
around 136 ns if UI is 1.8ns, (105 ns + 12*UI, defined by MIPI
DPHY specification).

However, the TEOT value will meet the specification if THS-TRAIL
is set to the HW default, instead of software overriding.

The timing change is made for both data lane and clock lane.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 19 +++----------------
 1 file changed, 3 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 168c84a74d30..992e357e3f44 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1863,14 +1863,13 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct mipi_config *mipi_config = dev_priv->vbt.dsi.config;
 	u32 tlpx_ns;
-	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt, trail_cnt;
-	u32 ths_prepare_ns, tclk_trail_ns;
+	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt;
+	u32 ths_prepare_ns;
 	u32 hs_zero_cnt;
 	u32 tclk_pre_cnt, tclk_post_cnt;
 
 	tlpx_ns = intel_dsi_tlpx_ns(intel_dsi);
 
-	tclk_trail_ns = max(mipi_config->tclk_trail, mipi_config->ths_trail);
 	ths_prepare_ns = max(mipi_config->ths_prepare,
 			     mipi_config->tclk_prepare);
 
@@ -1897,14 +1896,6 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
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
@@ -1948,17 +1939,13 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 			       CLK_PRE_OVERRIDE |
 			       CLK_PRE(tclk_pre_cnt) |
 			       CLK_POST_OVERRIDE |
-			       CLK_POST(tclk_post_cnt) |
-			       CLK_TRAIL_OVERRIDE |
-			       CLK_TRAIL(trail_cnt));
+			       CLK_POST(tclk_post_cnt));
 
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
2.17.1

