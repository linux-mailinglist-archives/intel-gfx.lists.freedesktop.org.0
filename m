Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDFD1F7540
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 10:25:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EEF86E356;
	Fri, 12 Jun 2020 08:25:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D596C6E356
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 08:25:47 +0000 (UTC)
IronPort-SDR: v120rTLn9yhbAF1cqpkGs4GoimD2/dW0SXeBKEFq3Czua+hHTGS8GXYJ7089pd3sJX7v2Yar0L
 UFMyWp8eYlYQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 01:25:46 -0700
IronPort-SDR: KiWR0Ra2Vz0DA64tmAxuDAbngM1dOyBFXcdrUltuYK++LY1VIyxBDQS9dIYTRBDxxqpHuQmVvU
 nv34l4yWI5Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,502,1583222400"; d="scan'208";a="315077140"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Jun 2020 01:25:45 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jun 2020 13:52:37 +0530
Message-Id: <20200612082237.11886-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix the encoder type check
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For all ddi, encoder->type holds output type as ddi,
assigning it to individual o/p types is no more valid.

Fixes: 362bfb995b78 ("drm/i915/tgl: Add DKL PHY vswing table for HDMI")

v2: Rebase, no functional change.

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d1acc39cdc11..ca7bb2294d2b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2615,7 +2615,7 @@ static void icl_ddi_vswing_sequence(struct intel_encoder *encoder,
 
 static void
 tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder, int link_clock,
-				u32 level)
+				u32 level, enum intel_output_type type)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
@@ -2623,7 +2623,7 @@ tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder, int link_clock,
 	u32 n_entries, val, ln, dpcnt_mask, dpcnt_val;
 	int rate = 0;
 
-	if (encoder->type != INTEL_OUTPUT_HDMI) {
+	if (type == INTEL_OUTPUT_HDMI) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		rate = intel_dp->link_rate;
@@ -2676,7 +2676,7 @@ static void tgl_ddi_vswing_sequence(struct intel_encoder *encoder,
 	if (intel_phy_is_combo(dev_priv, phy))
 		icl_combo_phy_ddi_vswing_sequence(encoder, level, type);
 	else
-		tgl_dkl_phy_ddi_vswing_sequence(encoder, link_clock, level);
+		tgl_dkl_phy_ddi_vswing_sequence(encoder, link_clock, level, type);
 }
 
 static u32 translate_signal_level(struct intel_dp *intel_dp, int signal_levels)
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
