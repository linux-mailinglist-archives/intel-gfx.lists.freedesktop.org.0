Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8F16FCC7A
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 19:14:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B24F910E3B3;
	Tue,  9 May 2023 17:14:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB0A10E3B3
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 17:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683652454; x=1715188454;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YRufjQiX2/ybQJHhF2v4pwb2WvRaO06kuMtgwLMK5ko=;
 b=SEUz3FAw6q3/34AkONfNOSb8roeyg8GCTxMFP+WUbU/NkliZtJ0CPp8H
 cPwl+uFPQ3zZvlCZtDfwUr8htXuNe4ibmCSQY6m6hh/eYEOyStGAURZ+f
 FcYY4SQVCAogrozK2YWYZYeXmbEy88FjzdZnJxjpDSJnSi+98ScH2Ppmb
 F8M9NGYRymYrV8JjwCriayTUFs43i3ilj47Lvzyk9x1VNLtVCrqIlyqgt
 ySD6FEpCljpdObvNs/FNTsPBCmPPrHH/856caPL4u+VM7CCr9u/7rHkzp
 EAo/h8XavZGXlc7RrxyFuzq8BPXIGVtTcx2xKEcJDyJeMyk4v80GxjIhk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="339227996"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="339227996"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 10:14:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="729601351"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="729601351"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 09 May 2023 10:14:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 May 2023 20:14:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  9 May 2023 20:14:11 +0300
Message-Id: <20230509171411.7184-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Use REG_BIT() & co. for AUX CH
 registers
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Modernize the DP AUX CH register definitions with REG_BIT() & co.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c   | 35 +++++------
 .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 62 ++++++++++---------
 drivers/gpu/drm/i915/gvt/edid.c               | 10 +--
 3 files changed, 52 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index abf77ba76972..25e36bdc4adb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -161,14 +161,14 @@ static u32 g4x_get_aux_send_ctl(struct intel_dp *intel_dp,
 		timeout = DP_AUX_CH_CTL_TIME_OUT_400us;
 
 	return DP_AUX_CH_CTL_SEND_BUSY |
-	       DP_AUX_CH_CTL_DONE |
-	       DP_AUX_CH_CTL_INTERRUPT |
-	       DP_AUX_CH_CTL_TIME_OUT_ERROR |
-	       timeout |
-	       DP_AUX_CH_CTL_RECEIVE_ERROR |
-	       (send_bytes << DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT) |
-	       (g4x_dp_aux_precharge_len() << DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT) |
-	       (aux_clock_divider << DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT);
+		DP_AUX_CH_CTL_DONE |
+		DP_AUX_CH_CTL_INTERRUPT |
+		DP_AUX_CH_CTL_TIME_OUT_ERROR |
+		timeout |
+		DP_AUX_CH_CTL_RECEIVE_ERROR |
+		DP_AUX_CH_CTL_MESSAGE_SIZE(send_bytes) |
+		DP_AUX_CH_CTL_PRECHARGE_2US(g4x_dp_aux_precharge_len()) |
+		DP_AUX_CH_CTL_BIT_CLOCK_2X(aux_clock_divider);
 }
 
 static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
@@ -185,14 +185,14 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
 	 * ICL+: 4ms
 	 */
 	ret = DP_AUX_CH_CTL_SEND_BUSY |
-	      DP_AUX_CH_CTL_DONE |
-	      DP_AUX_CH_CTL_INTERRUPT |
-	      DP_AUX_CH_CTL_TIME_OUT_ERROR |
-	      DP_AUX_CH_CTL_TIME_OUT_MAX |
-	      DP_AUX_CH_CTL_RECEIVE_ERROR |
-	      (send_bytes << DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT) |
-	      DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(intel_dp_aux_fw_sync_len()) |
-	      DP_AUX_CH_CTL_SYNC_PULSE_SKL(intel_dp_aux_sync_len());
+		DP_AUX_CH_CTL_DONE |
+		DP_AUX_CH_CTL_INTERRUPT |
+		DP_AUX_CH_CTL_TIME_OUT_ERROR |
+		DP_AUX_CH_CTL_TIME_OUT_MAX |
+		DP_AUX_CH_CTL_RECEIVE_ERROR |
+		DP_AUX_CH_CTL_MESSAGE_SIZE(send_bytes) |
+		DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(intel_dp_aux_fw_sync_len()) |
+		DP_AUX_CH_CTL_SYNC_PULSE_SKL(intel_dp_aux_sync_len());
 
 	if (intel_tc_port_in_tbt_alt_mode(dig_port))
 		ret |= DP_AUX_CH_CTL_TBT_IO;
@@ -378,8 +378,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	}
 
 	/* Unload any bytes sent back from the other side */
-	recv_bytes = ((status & DP_AUX_CH_CTL_MESSAGE_SIZE_MASK) >>
-		      DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT);
+	recv_bytes = REG_FIELD_GET(DP_AUX_CH_CTL_MESSAGE_SIZE_MASK, status);
 
 	/*
 	 * By BSpec: "Message sizes of 0 or >20 are not allowed."
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
index 5702f318d537..5185345277c7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
@@ -50,35 +50,37 @@
 						       _XELPDP_USBC3_AUX_CH_DATA1, \
 						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
 
-#define   DP_AUX_CH_CTL_SEND_BUSY	    (1 << 31)
-#define   DP_AUX_CH_CTL_DONE		    (1 << 30)
-#define   DP_AUX_CH_CTL_INTERRUPT	    (1 << 29)
-#define   DP_AUX_CH_CTL_TIME_OUT_ERROR	    (1 << 28)
-#define   DP_AUX_CH_CTL_TIME_OUT_400us	    (0 << 26)
-#define   DP_AUX_CH_CTL_TIME_OUT_600us	    (1 << 26)
-#define   DP_AUX_CH_CTL_TIME_OUT_800us	    (2 << 26)
-#define   DP_AUX_CH_CTL_TIME_OUT_MAX	    (3 << 26) /* Varies per platform */
-#define   DP_AUX_CH_CTL_TIME_OUT_MASK	    (3 << 26)
-#define   DP_AUX_CH_CTL_RECEIVE_ERROR	    (1 << 25)
-#define   DP_AUX_CH_CTL_MESSAGE_SIZE_MASK    (0x1f << 20)
-#define   DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT   20
-#define   XELPDP_DP_AUX_CH_CTL_POWER_REQUEST REG_BIT(19)
-#define   XELPDP_DP_AUX_CH_CTL_POWER_STATUS  REG_BIT(18)
-#define   DP_AUX_CH_CTL_PRECHARGE_2US_MASK   (0xf << 16)
-#define   DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT  16
-#define   DP_AUX_CH_CTL_AUX_AKSV_SELECT	    (1 << 15)
-#define   DP_AUX_CH_CTL_MANCHESTER_TEST	    (1 << 14)
-#define   DP_AUX_CH_CTL_SYNC_TEST	    (1 << 13)
-#define   DP_AUX_CH_CTL_DEGLITCH_TEST	    (1 << 12)
-#define   DP_AUX_CH_CTL_PRECHARGE_TEST	    (1 << 11)
-#define   DP_AUX_CH_CTL_BIT_CLOCK_2X_MASK    (0x7ff)
-#define   DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT   0
-#define   DP_AUX_CH_CTL_PSR_DATA_AUX_REG_SKL	(1 << 14)
-#define   DP_AUX_CH_CTL_FS_DATA_AUX_REG_SKL	(1 << 13)
-#define   DP_AUX_CH_CTL_GTC_DATA_AUX_REG_SKL	(1 << 12)
-#define   DP_AUX_CH_CTL_TBT_IO			(1 << 11)
-#define   DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL_MASK (0x1f << 5)
-#define   DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(c) (((c) - 1) << 5)
-#define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)   ((c) - 1)
+#define   DP_AUX_CH_CTL_SEND_BUSY		REG_BIT(31)
+#define   DP_AUX_CH_CTL_DONE			REG_BIT(30)
+#define   DP_AUX_CH_CTL_INTERRUPT		REG_BIT(29)
+#define   DP_AUX_CH_CTL_TIME_OUT_ERROR		REG_BIT(28)
+
+#define   DP_AUX_CH_CTL_TIME_OUT_MASK		REG_GENMASK(27, 26)
+#define   DP_AUX_CH_CTL_TIME_OUT_400us		REG_FIELD_PREP(DP_AUX_CH_CTL_TIME_OUT_MASK, 0)
+#define   DP_AUX_CH_CTL_TIME_OUT_600us		REG_FIELD_PREP(DP_AUX_CH_CTL_TIME_OUT_MASK, 1)
+#define   DP_AUX_CH_CTL_TIME_OUT_800us		REG_FIELD_PREP(DP_AUX_CH_CTL_TIME_OUT_MASK, 2)
+#define   DP_AUX_CH_CTL_TIME_OUT_MAX		REG_FIELD_PREP(DP_AUX_CH_CTL_TIME_OUT_MASK, 3) /* Varies per platform */
+#define   DP_AUX_CH_CTL_RECEIVE_ERROR		REG_BIT(25)
+#define   DP_AUX_CH_CTL_MESSAGE_SIZE_MASK	REG_GENMASK(24, 20)
+#define   DP_AUX_CH_CTL_MESSAGE_SIZE(x)		REG_FIELD_PREP(DP_AUX_CH_CTL_MESSAGE_SIZE_MASK, (x))
+#define   DP_AUX_CH_CTL_PRECHARGE_2US_MASK	REG_GENMASK(19, 16) /* pre-skl */
+#define   DP_AUX_CH_CTL_PRECHARGE_2US(x)	REG_FIELD_PREP(DP_AUX_CH_CTL_PRECHARGE_2US_MASK, (x))
+#define   XELPDP_DP_AUX_CH_CTL_POWER_REQUEST	REG_BIT(19) /* mtl+ */
+#define   XELPDP_DP_AUX_CH_CTL_POWER_STATUS	REG_BIT(18) /* mtl+ */
+#define   DP_AUX_CH_CTL_AUX_AKSV_SELECT		REG_BIT(15)
+#define   DP_AUX_CH_CTL_MANCHESTER_TEST		REG_BIT(14) /* pre-hsw */
+#define   DP_AUX_CH_CTL_PSR_DATA_AUX_REG_SKL	REG_BIT(14) /* skl+ */
+#define   DP_AUX_CH_CTL_SYNC_TEST		REG_BIT(13) /* pre-hsw */
+#define   DP_AUX_CH_CTL_FS_DATA_AUX_REG_SKL	REG_BIT(13) /* skl+ */
+#define   DP_AUX_CH_CTL_DEGLITCH_TEST		REG_BIT(12) /* pre-hsw */
+#define   DP_AUX_CH_CTL_GTC_DATA_AUX_REG_SKL	REG_BIT(12) /* skl+ */
+#define   DP_AUX_CH_CTL_PRECHARGE_TEST		REG_BIT(11) /* pre-hsw */
+#define   DP_AUX_CH_CTL_TBT_IO			REG_BIT(11) /* icl+ */
+#define   DP_AUX_CH_CTL_BIT_CLOCK_2X_MASK	REG_GENMASK(10, 0) /* pre-skl */
+#define   DP_AUX_CH_CTL_BIT_CLOCK_2X(x)		REG_FIELD_PREP(DP_AUX_CH_CTL_BIT_CLOCK_2X_MASK, (x))
+#define   DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL_MASK	REG_GENMASK(9, 5) /* skl+ */
+#define   DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(c)	REG_FIELD_PREP(DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL_MASK, (c) - 1)
+#define   DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK	REG_GENMASK(4, 0) /* skl+ */
+#define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)	REG_FIELD_PREP(DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK, (c) - 1)
 
 #endif /* __INTEL_DP_AUX_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/gvt/edid.c b/drivers/gpu/drm/i915/gvt/edid.c
index 7c49a3d673a5..2a0438f12a14 100644
--- a/drivers/gpu/drm/i915/gvt/edid.c
+++ b/drivers/gpu/drm/i915/gvt/edid.c
@@ -463,10 +463,6 @@ static inline int get_aux_ch_reg(unsigned int offset)
 	return reg;
 }
 
-#define AUX_CTL_MSG_LENGTH(reg) \
-	((reg & DP_AUX_CH_CTL_MESSAGE_SIZE_MASK) >> \
-		DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT)
-
 /**
  * intel_gvt_i2c_handle_aux_ch_write - emulate AUX channel register write
  * @vgpu: a vGPU
@@ -495,7 +491,8 @@ void intel_gvt_i2c_handle_aux_ch_write(struct intel_vgpu *vgpu,
 		return;
 	}
 
-	msg_length = AUX_CTL_MSG_LENGTH(value);
+	msg_length = REG_FIELD_GET(DP_AUX_CH_CTL_MESSAGE_SIZE_MASK, reg);
+
 	// check the msg in DATA register.
 	msg = vgpu_vreg(vgpu, offset + 4);
 	addr = (msg >> 8) & 0xffff;
@@ -510,8 +507,7 @@ void intel_gvt_i2c_handle_aux_ch_write(struct intel_vgpu *vgpu,
 	ret_msg_size = (((op & 0x1) == GVT_AUX_I2C_READ) ? 2 : 1);
 	vgpu_vreg(vgpu, offset) =
 		DP_AUX_CH_CTL_DONE |
-		((ret_msg_size << DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT) &
-		DP_AUX_CH_CTL_MESSAGE_SIZE_MASK);
+		DP_AUX_CH_CTL_MESSAGE_SIZE(ret_msg_size);
 
 	if (msg_length == 3) {
 		if (!(op & GVT_AUX_I2C_MOT)) {
-- 
2.39.2

