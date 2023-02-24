Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC24F6A19DC
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 11:19:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E7FE10E880;
	Fri, 24 Feb 2023 10:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1A6410E878
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 10:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677233965; x=1708769965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pfx4c4opZrJ4bfYcfnBPCM+NJHmmYj87tQq+N/+v6RE=;
 b=ZdJaZTmkjxIQz9xM3q4Z2ePGiYn+xtOqf8YaQGxTxTJ+CrzMiKMC8Va+
 yrjwWupPKadIpiSV0s2DgtSZm2qAWeXT3VHnYO5caVvA83cCKz+zaKpsc
 evGc5Zep+Wh86GLjpJ5HMDvRwH3VxkLLkcmPVZi36RMMUlW6muraiyLLd
 fY9Q52RWLAXvW9mTxIALHui8o9UwrA+VycLSaJuS/uYRnV12HjZavgvpA
 +IX3zsQndL6NQp20Gr59lYiTI3sV4OZB/Pv8FJfiXNmRYs+9Pqm2LwMrD
 wTey1mmiAOjczH7TkKkTrerFnyzooVVB+lhfY2v4kpJLtSBzNISnJS6AX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="332129874"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="332129874"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 02:19:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="672846584"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="672846584"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2023 02:19:23 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:13:44 +0200
Message-Id: <20230224101356.2390838-11-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230224101356.2390838-1-mika.kahola@intel.com>
References: <20230224101356.2390838-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 10/22] drm/i915/mtl: Dump C20 pll hw state
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
index bfb264ea154a..bc6913a7444a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1874,6 +1874,26 @@ void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
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
index cf603080ce3d..0b46b2ad48a9 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -37,6 +37,8 @@ void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
                                    struct intel_c20pll_state *pll_state);
 void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
 				  const struct intel_c10mpllb_state *hw_state);
+void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
+				const struct intel_c20pll_state *hw_state);
 int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
 				   const struct intel_c10mpllb_state *pll_state);
 void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 8e653061adb9..4e8f3632b3bc 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3522,6 +3522,7 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
 		intel_c10mpllb_dump_hw_state(i915, &crtc_state->cx0pll_state.c10mpllb_state);
 	} else {
 		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20pll_state);
+		intel_c20pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c20pll_state);
 	}
 
 	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
-- 
2.34.1

