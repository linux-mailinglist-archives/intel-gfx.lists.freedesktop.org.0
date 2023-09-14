Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0617A00DA
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 11:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C461710E51E;
	Thu, 14 Sep 2023 09:52:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7915E10E51E
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 09:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694685120; x=1726221120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ru9llaREwpx92mNFx7loNZfmTKBlcPFu3gEZDS1kVfM=;
 b=aAb6KWLnYJn+Mw2o19/vM52FvDG6X432QbTB1qTEgo0X0+MY75cqr966
 aiRH9di+R6gLFb3Go9NiItIpY4TjgdCcvSNivjWdB38smQtxA2xnNbQHZ
 6zRyPnHtmj+8H6QDMgvHGOt9ahQ/vjvr9qE0quECgJDGFm0sjX5Sfynrl
 tHcvvuPaDwtMAkM5vBGQxsdGMU3z0CVxFK/Dkjs4oM68643g7zvd1YLZi
 2QGgjYZwKKc3k9tepWOEac271wLQqw2gL+hRRZpbXxxFUydusqFnB0u4b
 8Ev4QZsfDbxerIq8tVmDATpC+3ULgxIamsHXvNPlc/TbvP+u5XOGNRA2U w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="376241374"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="376241374"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 02:51:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="918194547"
X-IronPort-AV: E=Sophos;i="6.02,145,1688454000"; d="scan'208";a="918194547"
Received: from tsengwil-desk2.itwn.intel.com (HELO gar) ([10.5.253.118])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 02:51:57 -0700
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 17:51:37 +0800
Message-Id: <20230914095137.4132029-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230901095100.3771188-1-william.tseng@intel.com>
References: <20230901095100.3771188-1-william.tseng@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dsi: let HW maintain CLK_POST
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

This change is to adjust TCLK-POST timing so DSI signaling can
meet CTS specification.

For clock lane, the TCLK-POST timing may be changed from
133.44 ns to 178.72 ns, which is greater than (60 ns+52*UI)
and is conformed to the CTS standard.

The computed UI is around 1.47 ns.

v2: remove the change of HS-TRAIL.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ad6488e9c2b2..c4585e445198 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1822,7 +1822,7 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 	u32 prepare_cnt, exit_zero_cnt, clk_zero_cnt, trail_cnt;
 	u32 ths_prepare_ns, tclk_trail_ns;
 	u32 hs_zero_cnt;
-	u32 tclk_pre_cnt, tclk_post_cnt;
+	u32 tclk_pre_cnt;
 
 	tlpx_ns = intel_dsi_tlpx_ns(intel_dsi);
 
@@ -1869,15 +1869,6 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
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
@@ -1903,8 +1894,6 @@ static void icl_dphy_param_init(struct intel_dsi *intel_dsi)
 			       CLK_ZERO(clk_zero_cnt) |
 			       CLK_PRE_OVERRIDE |
 			       CLK_PRE(tclk_pre_cnt) |
-			       CLK_POST_OVERRIDE |
-			       CLK_POST(tclk_post_cnt) |
 			       CLK_TRAIL_OVERRIDE |
 			       CLK_TRAIL(trail_cnt));
 
-- 
2.34.1

