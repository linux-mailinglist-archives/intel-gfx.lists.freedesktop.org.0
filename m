Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F85A5BD34
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 11:06:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34C7C10E550;
	Tue, 11 Mar 2025 10:06:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WZD4Ka60";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA25110E550;
 Tue, 11 Mar 2025 10:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741687595; x=1773223595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x4P5clWDSrKXeTwRV+IOjWF1tIMsKdo8DiZyn/zELWg=;
 b=WZD4Ka60A1VauznYNoXN1eyQIQbRtMRAI0cqviyOC//1AVEMKWWbQ/cj
 1aEdMhbEmC4vL2GQdIaBK1IA6c/N9C/9QvKnNKEpl6YM3hsearcZDHkbh
 tcPDyCC87PdHi7YWG+oPu4YmC+qRsaoldPg8mukeSUyYmwLku1dqcZYME
 eTynx2kjsSUi+Krpna5naNhePXPhwNYyNCGj8fygx9lGSzuZfE5vmM+SZ
 OPHc8Sn4OSfjPFi9lzQB5qziFUeTNcIyrsyoNUnhltCaftEnN6sc8xhwJ
 InBh15vK3rTwYDej8ZcRrOAnq6SziDVjPaJADRmD9NaHDAA+ildd33Q+N g==;
X-CSE-ConnectionGUID: ultAQopsSgCMiiTJqHr3/w==
X-CSE-MsgGUID: xNHTPDZwT02YSlxHdCzE5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42595176"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="42595176"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 03:06:34 -0700
X-CSE-ConnectionGUID: wXuWG8pgQTuRsPNlt6HBFg==
X-CSE-MsgGUID: m/AP4MVjTOSu3tGmj8BmIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="125173393"
Received: from tsengwil-desk2.itwn.intel.com (HELO gar) ([10.225.64.225])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 03:06:32 -0700
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: William Tseng <william.tseng@intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>,
 Lee Shawn C <shawn.c.lee@intel.com>, Cooper Chiou <cooper.chiou@intel.com>
Subject: [PATCH v4] drm/i915/dsi: let HW maintain the HS-TRAIL timing
Date: Tue, 11 Mar 2025 18:06:26 +0800
Message-Id: <20250311100626.533888-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211217100903.32599-1-william.tseng@intel.com>
References: <20211217100903.32599-1-william.tseng@intel.com>
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

v1: initial version.
v2: change clock lane dphy timings.
v3: remove calculation of trail cnt.
v4: rebase.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13891
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
Acked-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 19 +++----------------
 1 file changed, 3 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 82bf6c654de2..6cf9c9275031 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1846,14 +1846,13 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	struct intel_connector *connector = intel_dsi->attached_connector;
 	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 	u32 tlpx_ns;
-	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt, trail_cnt;
-	u32 ths_prepare_ns, tclk_trail_ns;
+	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt;
+	u32 ths_prepare_ns;
 	u32 hs_zero_cnt;
 	u32 tclk_pre_cnt;
 
 	tlpx_ns = intel_dsi_tlpx_ns(intel_dsi);
 
-	tclk_trail_ns = max(mipi_config->tclk_trail, mipi_config->ths_trail);
 	ths_prepare_ns = max(mipi_config->ths_prepare,
 			     mipi_config->tclk_prepare);
 
@@ -1880,14 +1879,6 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 		clk_zero_cnt = ICL_CLK_ZERO_CNT_MAX;
 	}
 
-	/* trail cnt in escape clocks*/
-	trail_cnt = DIV_ROUND_UP(tclk_trail_ns, tlpx_ns);
-	if (trail_cnt > ICL_TRAIL_CNT_MAX) {
-		drm_dbg_kms(display->drm, "trail_cnt out of range (%d)\n",
-			    trail_cnt);
-		trail_cnt = ICL_TRAIL_CNT_MAX;
-	}
-
 	/* tclk pre count in escape clocks */
 	tclk_pre_cnt = DIV_ROUND_UP(mipi_config->tclk_pre, tlpx_ns);
 	if (tclk_pre_cnt > ICL_TCLK_PRE_CNT_MAX) {
@@ -1920,17 +1911,13 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 			       CLK_ZERO_OVERRIDE |
 			       CLK_ZERO(clk_zero_cnt) |
 			       CLK_PRE_OVERRIDE |
-			       CLK_PRE(tclk_pre_cnt) |
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

