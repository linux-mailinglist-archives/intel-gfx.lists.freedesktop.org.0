Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 063904310E1
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 08:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AD9B6E96B;
	Mon, 18 Oct 2021 06:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 859FF6E96B
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 06:51:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="208286132"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="208286132"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2021 23:51:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="482603726"
Received: from unknown (HELO vandita-Z390-AORUS-ULTRA.iind.intel.com)
 ([10.190.238.8])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2021 23:51:44 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, matthew.d.roper@intel.com,
 Vandita Kulkarni <vandita.kulkarni@intel.com>
Date: Mon, 18 Oct 2021 12:22:07 +0530
Message-Id: <20211018065207.30587-5-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211018065207.30587-1-vandita.kulkarni@intel.com>
References: <20211018065207.30587-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/dsi: Ungate clock before enabling
 the phy
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

For the PHY enable/disable signalling to propagate
between Dispaly and PHY, DDI clocks need to be running when
enabling the PHY.

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 8c166f92f8bd..77cd01ecfa80 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1135,8 +1135,6 @@ static void
 gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-
 	/* step 4a: power up all lanes of the DDI used by DSI */
 	gen11_dsi_power_up_lanes(encoder);
 
@@ -1146,6 +1144,8 @@ gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
 	/* step 4c: configure voltage swing and skew */
 	gen11_dsi_voltage_swing_program_seq(encoder);
 
+	gen11_dsi_ungate_clocks(encoder);
+
 	/* enable DDI buffer */
 	gen11_dsi_enable_ddi_buffer(encoder);
 
@@ -1161,9 +1161,7 @@ gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
 	/* Step (4h, 4i, 4j, 4k): Configure transcoder */
 	gen11_dsi_configure_transcoder(encoder, crtc_state);
 
-	/* Step 4l: Gate DDI clocks */
-	if (DISPLAY_VER(dev_priv) == 11)
-		gen11_dsi_gate_clocks(encoder);
+	gen11_dsi_gate_clocks(encoder);
 }
 
 static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)
-- 
2.32.0

