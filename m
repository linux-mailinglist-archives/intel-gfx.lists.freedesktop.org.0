Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC161C33DC
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 09:51:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6FAC6E33D;
	Mon,  4 May 2020 07:51:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C56D86E33D
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 07:51:09 +0000 (UTC)
IronPort-SDR: FeshcFX+m8xuQJ2qygllPeAboApICBsoZyvNtmvaEkuCA/ACOg6CRcg5s49lJor0VKrURsB8tX
 ZRUPiSH9Jt6w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 00:51:08 -0700
IronPort-SDR: Afc4jaybquUeVRIwoIk9SBfQ77SPAuZmuP8l8t7km1UUSj8j/ukFRuuLSyCOqUyADeKQUj+48O
 E/W6gyPBT8Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,351,1583222400"; d="scan'208";a="460581333"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by fmsmga005.fm.intel.com with ESMTP; 04 May 2020 00:51:07 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 13:18:51 +0530
Message-Id: <20200504074851.13139-1-vandita.kulkarni@intel.com>
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

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5601673c3f30..10d70daf714b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2579,14 +2579,14 @@ static void icl_ddi_vswing_sequence(struct intel_encoder *encoder,
 
 static void
 tgl_dkl_phy_ddi_vswing_sequence(struct intel_encoder *encoder, int link_clock,
-				u32 level)
+				u32 level, enum intel_output_type type)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
 	const struct tgl_dkl_phy_ddi_buf_trans *ddi_translations;
 	u32 n_entries, val, ln, dpcnt_mask, dpcnt_val;
 
-	if (encoder->type == INTEL_OUTPUT_HDMI) {
+	if (type == INTEL_OUTPUT_HDMI) {
 		n_entries = ARRAY_SIZE(tgl_dkl_phy_hdmi_ddi_trans);
 		ddi_translations = tgl_dkl_phy_hdmi_ddi_trans;
 	} else {
@@ -2638,7 +2638,7 @@ static void tgl_ddi_vswing_sequence(struct intel_encoder *encoder,
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
