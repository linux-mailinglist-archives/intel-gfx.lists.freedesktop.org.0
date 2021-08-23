Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B24B3F446A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 06:38:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9D3289E50;
	Mon, 23 Aug 2021 04:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BDB389E50
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 04:38:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="217059536"
X-IronPort-AV: E=Sophos;i="5.84,343,1620716400"; d="scan'208";a="217059536"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2021 21:38:22 -0700
X-IronPort-AV: E=Sophos;i="5.84,343,1620716400"; d="scan'208";a="525793428"
Received: from unknown (HELO vandita-Z390-AORUS-ULTRA.iind.intel.com)
 ([10.190.238.8])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2021 21:38:21 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Vandita Kulkarni <vandita.kulkarni@intel.com>
Date: Mon, 23 Aug 2021 10:08:37 +0530
Message-Id: <20210823043837.24517-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210823032136.2564-2-vandita.kulkarni@intel.com>
References: <20210823032136.2564-2-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [v2] drm/i915/dsi/xelpd: Add WA to program LP to HS
 wakeup guardband
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

Wa_16012360555 SW will have to program the "LP to HS Wakeup Guardband"
field to account for the repeaters on the HS Request/Ready PPI signaling
between the Display engine and the DPHY.

v2: Fix build issue.

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 25 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h        |  8 ++++++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 43ec7fcd3f5d..b075defb88bb 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1270,6 +1270,28 @@ static void icl_apply_kvmr_pipe_a_wa(struct intel_encoder *encoder,
 			     IGNORE_KVMR_PIPE_A,
 			     enable ? IGNORE_KVMR_PIPE_A : 0);
 }
+
+/*
+ * Wa_16012360555:ADLP
+ * SW will have to program the "LP to HS Wakeup Guardband"
+ * field (bits 15:12) of register offset 0x6B0C0 (DSI0)
+ * and 0x6B8C0 (DSI1) to a value of 4 to account for the repeaters
+ * on the HS Request/Ready PPI signaling between
+ * the Display engine and the DPHY.
+ */
+static void adlp_set_lp_hs_wakeup_gb(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
+	enum port port;
+
+	if (DISPLAY_VER(dev_priv) == 13) {
+		for_each_dsi_port(port, intel_dsi->ports)
+			intel_de_rmw(dev_priv, TGL_DSI_CHKN_REG(port),
+				     TGL_DSI_CHKN_LSHS_GB, 0x4);
+	}
+}
+
 static void gen11_dsi_enable(struct intel_atomic_state *state,
 			     struct intel_encoder *encoder,
 			     const struct intel_crtc_state *crtc_state,
@@ -1283,6 +1305,9 @@ static void gen11_dsi_enable(struct intel_atomic_state *state,
 	/* Wa_1409054076:icl,jsl,ehl */
 	icl_apply_kvmr_pipe_a_wa(encoder, crtc->pipe, true);
 
+	/* Wa_16012360555: adlp */
+	adlp_set_lp_hs_wakeup_gb(encoder);
+
 	/* step6d: enable dsi transcoder */
 	gen11_dsi_enable_transcoder(encoder);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 72dd3a6d205d..4c90d45343d6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -11614,6 +11614,14 @@ enum skl_power_gate {
 						    _ICL_DSI_IO_MODECTL_1)
 #define  COMBO_PHY_MODE_DSI				(1 << 0)
 
+/* TGL DSI Chicken register */
+#define _TGL_DSI_CHKN_REG_0			0x6B0C0
+#define _TGL_DSI_CHKN_REG_1			0x6B8C0
+#define TGL_DSI_CHKN_REG(port)		_MMIO_PORT(port,	\
+						    _TGL_DSI_CHKN_REG_0, \
+						    _TGL_DSI_CHKN_REG_1)
+#define TGL_DSI_CHKN_LSHS_GB			(0xF << 12)
+
 /* Display Stream Splitter Control */
 #define DSS_CTL1				_MMIO(0x67400)
 #define  SPLITTER_ENABLE			(1 << 31)
-- 
2.32.0

