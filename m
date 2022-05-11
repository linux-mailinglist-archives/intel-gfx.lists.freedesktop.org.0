Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1666523D4A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 21:19:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11CB110E433;
	Wed, 11 May 2022 19:19:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD0B710E433
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 19:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652296754; x=1683832754;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3QZvcwGPb6eZKSO1suytwqgnHiPuMyKZSvppHGzpTqo=;
 b=cs/t72RpQP6huhi5BELq14vgWFMJqH5CbWkxIMojw5HYoJXUx4GuE6rB
 v2cceIzil8ej7U2IA4TLctexorqWQvoTPuHnodZNtXqOMlBv35aPEogsk
 TXop484qp9Ohb2ktUi5GXoCKtLYs+ogznBhw8UEihLxY/UV1YTf3JlCAz
 3bBrmv4t168qwEa2JT+PttjenP9xOh2IU79y1+B0LqQxDNr3cyzvUzLir
 w2gzgJNbRdpmSg3XjNswkPOqRaM1Gsrw1YGtqZbgL/dpaRHJvdAlgrs3P
 v8sZx+XOv9goqlq3nwWa1RiLNE2fWAbN+3vbgYDpoPyHbQiHABmCaDMFF w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="267379794"
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="267379794"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 12:19:14 -0700
X-IronPort-AV: E=Sophos;i="5.91,218,1647327600"; d="scan'208";a="636538722"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2022 12:19:13 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 May 2022 22:19:11 +0300
Message-Id: <20220511191911.2133928-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/d12+: Disable DMC firmware flip queue
 handlers
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

Based on a bspec update the DMC firmware's flip queue handling events
need to be disabled before enabling DC5/6. i915 doesn't use the flip
queue feature atm, so disable it already after loading the firmware.
This removes some overhead of the event handler which runs at a 1 kHz
frequency.

Bspec: 49193, 72486, 72487

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c      | 89 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 74 +++++++++++++++
 2 files changed, 162 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 257cf662f9f4b..37e58b056cfb7 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -244,9 +244,14 @@ struct stepping_info {
 	char substepping;
 };
 
+static bool intel_dmc_has_fw_payload(struct drm_i915_private *i915, int dmc_id)
+{
+	return i915->dmc.dmc_info[dmc_id].payload;
+}
+
 bool intel_dmc_has_payload(struct drm_i915_private *i915)
 {
-	return i915->dmc.dmc_info[DMC_FW_MAIN].payload;
+	return intel_dmc_has_fw_payload(i915, DMC_FW_MAIN);
 }
 
 static const struct stepping_info *
@@ -268,6 +273,81 @@ static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
 	intel_de_posting_read(dev_priv, DC_STATE_DEBUG);
 }
 
+static void
+disable_simple_flip_queue_event(struct drm_i915_private *i915,
+				i915_reg_t ctl_reg, i915_reg_t htp_reg)
+{
+	u32 event_ctl;
+	u32 event_htp;
+
+	event_ctl = intel_de_read(i915, ctl_reg);
+	event_htp = intel_de_read(i915, htp_reg);
+	if (event_ctl != (DMC_EVT_CTL_ENABLE |
+			  DMC_EVT_CTL_RECURRING |
+			  REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+					 DMC_EVT_CTL_TYPE_EDGE_0_1) |
+			  REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+					 DMC_EVT_CTL_EVENT_ID_CLK_MSEC)) ||
+	    !event_htp) {
+		drm_dbg_kms(&i915->drm,
+			    "Unexpected DMC event configuration (control %08x htp %08x)\n",
+			    event_ctl, event_htp);
+		return;
+	}
+
+	intel_de_write(i915, ctl_reg,
+		       REG_FIELD_PREP(DMC_EVT_CTL_TYPE_MASK,
+				      DMC_EVT_CTL_TYPE_EDGE_0_1) |
+		       REG_FIELD_PREP(DMC_EVT_CTL_EVENT_ID_MASK,
+				      DMC_EVT_CTL_EVENT_ID_FALSE));
+	intel_de_write(i915, htp_reg, 0);
+}
+
+static bool
+get_simple_flip_queue_event_regs(struct drm_i915_private *i915, int dmc_id,
+				 i915_reg_t *ctl_reg, i915_reg_t *htp_reg)
+{
+	switch (dmc_id) {
+	case DMC_FW_MAIN:
+		if (DISPLAY_VER(i915) == 12) {
+			*ctl_reg = DMC_EVT_CTL(dmc_id, 3);
+			*htp_reg = DMC_EVT_HTP(dmc_id, 3);
+
+			return true;
+		}
+		break;
+	default:
+		if (IS_DG2(i915)) {
+			*ctl_reg = DMC_EVT_CTL(dmc_id, 2);
+			*htp_reg = DMC_EVT_HTP(dmc_id, 2);
+
+			return true;
+		}
+		break;
+	}
+
+	return false;
+}
+
+static void
+disable_all_simple_flip_queue_events(struct drm_i915_private *i915)
+{
+	int dmc_id;
+
+	for (dmc_id = 0; dmc_id < DMC_FW_MAX; dmc_id++) {
+		i915_reg_t ctl_reg;
+		i915_reg_t htp_reg;
+
+		if (!intel_dmc_has_fw_payload(i915, dmc_id))
+			continue;
+
+		if (!get_simple_flip_queue_event_regs(i915, dmc_id, &ctl_reg, &htp_reg))
+			continue;
+
+		disable_simple_flip_queue_event(i915, ctl_reg, htp_reg);
+	}
+}
+
 /**
  * intel_dmc_load_program() - write the firmware from memory to register.
  * @dev_priv: i915 drm device.
@@ -308,6 +388,13 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 	dev_priv->dmc.dc_state = 0;
 
 	gen9_set_dc_state_debugmask(dev_priv);
+
+	/*
+	 * Flip queue events need to be disabled before enabling DC5/6.
+	 * i915 doesn't use the flip queue feature, so disable it already
+	 * here.
+	 */
+	disable_all_simple_flip_queue_events(dev_priv);
 }
 
 void assert_dmc_loaded(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index d65e698832eb5..d01861b7db3c0 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -10,6 +10,80 @@
 
 #define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
 #define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
+
+#define _PIPEDMC_EVT_HTP_0_A		0x5f004
+#define _PIPEDMC_EVT_HTP_0_B		0x5f404
+#define _PIPEDMC_EVT_HTP_0_C		0x5f804
+#define _PIPEDMC_EVT_HTP_0_D		0x5fc04
+#define _MAINDMC_EVT_HTP_0		0x8f004
+
+#define _PIPEDMC_EVT_HTP_1_A		0x5f008
+#define _PIPEDMC_EVT_HTP_1_B		0x5f408
+#define _PIPEDMC_EVT_HTP_1_C		0x5f808
+#define _PIPEDMC_EVT_HTP_1_D		0x5fc08
+#define _MAINDMC_EVT_HTP_1		0x8f008
+
+#define _DMC_EVT_HTP_0(dmc_id)		_PICK(dmc_id, \
+					      _MAINDMC_EVT_HTP_0, \
+					      _PIPEDMC_EVT_HTP_0_A, \
+					      _PIPEDMC_EVT_HTP_0_B, \
+					      _PIPEDMC_EVT_HTP_0_C, \
+					      _PIPEDMC_EVT_HTP_0_D)
+
+#define _DMC_EVT_HTP_1(dmc_id)		_PICK(dmc_id, \
+					      _MAINDMC_EVT_HTP_1, \
+					      _PIPEDMC_EVT_HTP_1_A, \
+					      _PIPEDMC_EVT_HTP_1_B, \
+					      _PIPEDMC_EVT_HTP_1_C, \
+					      _PIPEDMC_EVT_HTP_1_D)
+
+#define DMC_EVT_HTP(dmc_id, handler)	_MMIO(_PICK_EVEN(handler, \
+							 _DMC_EVT_HTP_0(dmc_id), \
+							 _DMC_EVT_HTP_1(dmc_id)))
+
+#define _PIPEDMC_EVT_CTL_0_A		0x5f034
+#define _PIPEDMC_EVT_CTL_0_B		0x5f434
+#define _PIPEDMC_EVT_CTL_0_C		0x5f834
+#define _PIPEDMC_EVT_CTL_0_D		0x5fc34
+#define _MAINDMC_EVT_CTL_0		0x8f034
+
+#define _PIPEDMC_EVT_CTL_1_A		0x5f038
+#define _PIPEDMC_EVT_CTL_1_B		0x5f438
+#define _PIPEDMC_EVT_CTL_1_C		0x5f838
+#define _PIPEDMC_EVT_CTL_1_D		0x5fc38
+#define _MAINDMC_EVT_CTL_1		0x8f038
+
+#define _DMC_EVT_CTL_0(dmc_id)		_PICK(dmc_id, \
+					      _MAINDMC_EVT_CTL_0, \
+					      _PIPEDMC_EVT_CTL_0_A, \
+					      _PIPEDMC_EVT_CTL_0_B, \
+					      _PIPEDMC_EVT_CTL_0_C, \
+					      _PIPEDMC_EVT_CTL_0_D)
+
+#define _DMC_EVT_CTL_1(dmc_id)		_PICK(dmc_id, \
+					      _MAINDMC_EVT_CTL_1, \
+					      _PIPEDMC_EVT_CTL_1_A, \
+					      _PIPEDMC_EVT_CTL_1_B, \
+					      _PIPEDMC_EVT_CTL_1_C, \
+					      _PIPEDMC_EVT_CTL_1_D)
+
+#define DMC_EVT_CTL(dmc_id, handler)	_MMIO(_PICK_EVEN(handler, \
+							 _DMC_EVT_CTL_0(dmc_id), \
+							 _DMC_EVT_CTL_1(dmc_id)))
+
+#define DMC_EVT_CTL_ENABLE		REG_BIT(31)
+#define DMC_EVT_CTL_RECURRING		REG_BIT(30)
+#define DMC_EVT_CTL_TYPE_MASK		REG_GENMASK(17, 16)
+#define DMC_EVT_CTL_TYPE_LEVEL_0	0
+#define DMC_EVT_CTL_TYPE_LEVEL_1	1
+#define DMC_EVT_CTL_TYPE_EDGE_1_0	2
+#define DMC_EVT_CTL_TYPE_EDGE_0_1	3
+
+#define DMC_EVT_CTL_EVENT_ID_MASK	REG_GENMASK(15, 8)
+#define DMC_EVT_CTL_EVENT_ID_FALSE	0x01
+/* An event handler scheduled to run at a 1 kHz frequency. */
+#define DMC_EVT_CTL_EVENT_ID_CLK_MSEC	0xbf
+
 #define DMC_HTP_ADDR_SKL	0x00500034
 #define DMC_SSP_BASE		_MMIO(0x8F074)
 #define DMC_HTP_SKL		_MMIO(0x8F004)
-- 
2.30.2

