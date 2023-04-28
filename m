Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C64E6F14D0
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 11:59:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E229010ECB5;
	Fri, 28 Apr 2023 09:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDBE310ECAE
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 09:59:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682675979; x=1714211979;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=egPTCSR5u0/sJHENnWmXso+UUckZgEHMux9+pv98wU8=;
 b=AEcZ7PH3lMLjw++R3rxUL/x2ZDAeFDpNpx5qHbim+VtBdygZfRgisykO
 xiVRsOixP7Yvm3npX8N7goTLypTjWPYc9Oao2VqRDAYrEA9XlS/Vy8Kuz
 RKcjUDfXPSImFKlA2TyTIbF7suWJfWjNxPV6xgb7UQ9f4UdqLgzM5lrv9
 93WV9uLxmsJX4ON845tKePfW4Z3gnDa1M1VUVwfGO7xuk9H+Cw0L7+uEB
 71JcnJThdxeFtyB4L0R3vlNQRIJyHTroM/WaSX4qzVoDibHdKPEj0F3/W
 LLnc4PgQCB/kdbijZQ7L9ZKlnB1lFuurw7Oebfy+OYF7YwKZVd0K0Cx83 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="375698122"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="375698122"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 02:59:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="725295734"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="725295734"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 28 Apr 2023 02:59:37 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Apr 2023 12:54:23 +0300
Message-Id: <20230428095433.4109054-4-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230428095433.4109054-1-mika.kahola@intel.com>
References: <20230428095433.4109054-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/13] drm/i915/mtl: Dump C20 pll hw state
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

Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c     |  1 +
 3 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f58b3112baea..8920263cacd7 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2036,6 +2036,26 @@ void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 	intel_cx0_phy_transaction_end(encoder, wakeref);
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

