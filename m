Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1076E94E8
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 14:46:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71F3310E2DA;
	Thu, 20 Apr 2023 12:46:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAE3210E2B8
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 12:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681994758; x=1713530758;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IqA++K49hsWkY/wllSVrR9vB3Spc630gW6J3RuHy+oI=;
 b=kO/pxTqrNkuD6P8/Kf1z1yv2ZsdqcPeksFsxPQt+oV0K9mUCz/bA2l8h
 kQXwYMO6VdKc6eSeKKuMPCnfgB9Rp2q0EYVtF/Rl9KlkEwadnJLz++BZc
 on2Unf+jBWH+b4WtupfvLA/8Fef35hs5MrZB4KSZlsjYBJWIwxX9Z4sx/
 8uz4s30Hg1f0NHvtCI6O2nWOr6O+0FrdsoMoA8gidsLHB2pDOEjkImv0v
 NLbd2nFodrW1p01erC6VbefQrJXkkk93AcAojrYoxka1bfUrNZE/7TuAx
 p3SxG0PUGeCTT7xJcQuoU9i6F4H3BSpM4Gffiy5Gu1mP1u6ZeEd8nKawo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="326051889"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="326051889"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 05:45:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="761146006"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="761146006"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 20 Apr 2023 05:45:57 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Apr 2023 15:40:40 +0300
Message-Id: <20230420124050.3617608-4-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230420124050.3617608-1-mika.kahola@intel.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/13] drm/i915/mtl: Dump C20 pll hw state
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

As we already do with C10 chip, let's dump the pll
hw state for C20 as well.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c     |  1 +
 3 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 61428c5145e5..144474540ef4 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2035,6 +2035,26 @@ void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 	}
 }
 
+void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
+				const struct intel_c20pll_state *hw_state)
+{
+	int i;
+
+	drm_dbg_kms(&i915->drm, "c20pll_hw_state:\n");
+	drm_dbg_kms(&i915->drm, "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
+		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
+	drm_dbg_kms(&i915->drm, "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
+		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
+
+	if (intel_c20_use_mplla(hw_state->clock)) {
+		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
+			drm_dbg_kms(&i915->drm, "mplla[%d] = 0x%.4x\n", i, hw_state->mplla[i]);
+	} else {
+		for (i = 0; i < ARRAY_SIZE(hw_state->mpllb); i++)
+			drm_dbg_kms(&i915->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
+	}
+}
+
 static u8 intel_c20_get_dp_rate(u32 clock)
 {
 	switch (clock) {
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 9760c6292c81..c643aae27bac 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -32,6 +32,8 @@ void intel_c10pll_state_verify(struct intel_atomic_state *state,
 			       struct intel_crtc_state *new_crtc_state);
 void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 				   struct intel_c20pll_state *pll_state);
+void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
+				const struct intel_c20pll_state *hw_state);
 void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 				     const struct intel_crtc_state *crtc_state);
 int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 44f07011245b..d414dd8c26bf 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3858,6 +3858,7 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 		intel_c10pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c10);
 	} else {
 		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20);
+		intel_c20pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c20);
 	}
 
 	crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
-- 
2.34.1

