Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFC64DC37F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 11:01:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 275D610E1B3;
	Thu, 17 Mar 2022 10:01:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 726AE10E1B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 10:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647511296; x=1679047296;
 h=from:to:cc:subject:date:message-id;
 bh=fHAx+8EkWbqHahm6KwekjnJa8o3AVgMyVmprB6b/fvI=;
 b=QXIpB4X1JLPS1zGuImt9V2hjAXjwQugb2PIEpKnuoXd7+7F+tcFPfk0T
 +Dz4JMLeDYPIFx4olt8/soExlxzk4WfKV5xyRS9m1vp5jAuWYMHLfmzgJ
 tLxqjnYy3pc2ZuhLG88+GSzbT5EXQLXYpn9Lj46sb+MXMwrUAtTqZommQ
 h8L3j/NavQSfjXfw/UY9jDDEgnYNwXg4FZb+Ic+lxK53zvr+62IGhhDwp
 LuGOOjigTCPaVIsyRe+hYsn67DYoVWoIxeHPRE7ZGWVIJ1qThk/JGW7He
 RDzPGmUj6chMQG95tkZ9bg2cLlT0XV/GxAbtTbu4fkSrgE4EFZr3ecmGp w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="343264160"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="343264160"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 03:01:17 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="581243687"
Received: from tsengwil-desk1.itwn.intel.com (HELO gar) ([10.5.231.22])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 03:01:13 -0700
From: William Tseng <william.tseng@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 18:00:55 +0800
Message-Id: <20220317100055.16570-1-william.tseng@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: power on panel before enabling
 DPHY
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

This change is to power on panel before DPHY enters the lane state
LP-11. Some panel needs this to meet its specifcation.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Lee Shawn C <shawn.c.lee@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Signed-off-by: William Tseng <william.tseng@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 5781e9fac8b4..b766057c95f5 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1194,8 +1194,6 @@ static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
 	}
 
 	/* panel power on related mipi dsi vbt sequences */
-	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
-	intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_INIT_OTP);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DISPLAY_ON);
@@ -1221,13 +1219,19 @@ static void gen11_dsi_pre_enable(struct intel_atomic_state *state,
 				 const struct intel_crtc_state *pipe_config,
 				 const struct drm_connector_state *conn_state)
 {
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
+
 	/* step3b */
 	gen11_dsi_map_pll(encoder, pipe_config);
 
+	/* for mipi dsi vbt sequence to powerup panel */
+	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
+	intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
+
 	/* step4: enable DSI port and DPHY */
 	gen11_dsi_enable_port_and_phy(encoder, pipe_config);
 
-	/* step5: program and powerup panel */
+	/* step5: program panel */
 	gen11_dsi_powerup_panel(encoder);
 
 	intel_dsc_dsi_pps_write(encoder, pipe_config);
-- 
2.17.1

