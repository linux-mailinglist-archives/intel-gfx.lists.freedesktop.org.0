Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FD812D51C
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 00:45:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0570E89C1F;
	Mon, 30 Dec 2019 23:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90FD989C1F
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 23:45:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 15:45:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,377,1571727600"; d="scan'208";a="224311410"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga001.fm.intel.com with ESMTP; 30 Dec 2019 15:45:51 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Dec 2019 15:45:41 -0800
Message-Id: <20191230234541.1416510-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Stop programming DDI_BUF_TRANS_SELECT
 on recent platforms
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The bits in DDI_BUF_CTL related to DP vswing emphasis were removed on
GLK since the relevant programming has moved to the PHY registers.  The
bits still exist on BXT, but have a programming note indicating that
they're ignored.  Let's stop programming them on gen9lp and and gen10+.

Bspec: 7534
Bspec: 49533
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3a538789c585..c63a1712515c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1148,6 +1148,8 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 	/* Start the training iterating through available voltages and emphasis,
 	 * testing each value twice. */
 	for (i = 0; i < ARRAY_SIZE(hsw_ddi_translations_fdi) * 2; i++) {
+		u32 tmp;
+
 		/* Configure DP_TP_CTL with auto-training */
 		I915_WRITE(DP_TP_CTL(PORT_E),
 					DP_TP_CTL_FDI_AUTOTRAIN |
@@ -1159,10 +1161,10 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 		 * DDI E does not support port reversal, the functionality is
 		 * achieved on the PCH side in FDI_RX_CTL, so no need to set the
 		 * port reversal bit */
-		I915_WRITE(DDI_BUF_CTL(PORT_E),
-			   DDI_BUF_CTL_ENABLE |
-			   ((crtc_state->fdi_lanes - 1) << 1) |
-			   DDI_BUF_TRANS_SELECT(i / 2));
+		tmp = DDI_BUF_CTL_ENABLE | ((crtc_state->fdi_lanes - 1) << 1);
+		if (INTEL_GEN(dev_priv) <= 9 && !IS_GEN9_LP(dev_priv))
+			tmp |= DDI_BUF_TRANS_SELECT(i / 2);
+		I915_WRITE(DDI_BUF_CTL(PORT_E), tmp);
 		POSTING_READ(DDI_BUF_CTL(PORT_E));
 
 		udelay(600);
@@ -1238,13 +1240,16 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
 
 static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder)
 {
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);
 	struct intel_digital_port *intel_dig_port =
 		enc_to_dig_port(&encoder->base);
 
-	intel_dp->DP = intel_dig_port->saved_port_bits |
-		DDI_BUF_CTL_ENABLE | DDI_BUF_TRANS_SELECT(0);
+	intel_dp->DP = intel_dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
 	intel_dp->DP |= DDI_PORT_WIDTH(intel_dp->lane_count);
+	if (INTEL_GEN(dev_priv) <= 9 && !IS_GEN9_LP(dev_priv))
+		intel_dp->DP |= DDI_BUF_TRANS_SELECT(0);
+
 }
 
 static struct intel_encoder *
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
