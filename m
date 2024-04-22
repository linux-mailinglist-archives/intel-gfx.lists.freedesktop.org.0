Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C18C58AC728
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EFD11128B9;
	Mon, 22 Apr 2024 08:35:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h2eS4T5+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 636131128D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774927; x=1745310927;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ctA4/4zBrmrNVYnz4s7GGfnh9UkrsSxWMLvtPaukwSA=;
 b=h2eS4T5+HQSoUb1KCL3NI3I2MxRd+SrfJh/3h0p5cMAyxhOwM2/xuUQC
 E9Y0rMmP2qKMyB+C0bZ77XNR11nbhhk+V8BK0ujH6ZH/BgV0ZY06AgpJi
 hlbMg73B+t3dtP9Qck7f+lgu59B2MKw/6ssuEyo8qJlQTb/rS61NLcvZW
 6rLpeqN6ufRGN8G5XAhQ6oMo9Rv0LdttHHy+hGN23agbbgFDrasuDl+Wc
 VQDlV0kPfLi8Ah9lQ0AIlCf1iGVckImsAdy1C3Glo3kVUmezbxoAKwilK
 Pxw4aUrHEmCCqQzYlKhVoTyP6UWYuayNaSblU8UM1T798xy345+FQotO4 w==;
X-CSE-ConnectionGUID: vQmlPgb3TmCnWd4bvYO61A==
X-CSE-MsgGUID: fJcnfsE/SMOC9WKEpQrAew==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453485"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453485"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:27 -0700
X-CSE-ConnectionGUID: qLoo5FSMTW+VN1sD0TTvnQ==
X-CSE-MsgGUID: +0/ltbSVTFaMHTuSp2ZxtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021826"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:35:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:35:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/14] drm/i915/dpio: Give VLV DPIO group register a clearer
 name
Date: Mon, 22 Apr 2024 11:34:53 +0300
Message-ID: <20240422083457.23815-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Include _GRP in VLV DPOP PHY group access register define
names. Makes it more obvious where the accesses will land.
Also matches the naming used by BXT already.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 34 +++----
 drivers/gpu/drm/i915/i915_reg.h               | 90 +++++++++----------
 2 files changed, 62 insertions(+), 62 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 4fafac534967..791902ba729c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -1071,18 +1071,18 @@ void vlv_set_phy_signal_level(struct intel_encoder *encoder,
 
 	vlv_dpio_get(dev_priv);
 
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5(ch), 0x00000000);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW4(ch), demph_reg_value);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW2(ch),
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5_GRP(ch), 0x00000000);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW4_GRP(ch), demph_reg_value);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW2_GRP(ch),
 			 uniqtranscale_reg_value);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW3(ch), 0x0C782040);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW3_GRP(ch), 0x0C782040);
 
 	if (tx3_demph)
 		vlv_dpio_write(dev_priv, phy, VLV_TX3_DW4(ch), tx3_demph);
 
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW11(ch), 0x00030000);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW9(ch), preemph_reg_value);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5(ch), DPIO_TX_OCALINIT_EN);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW11_GRP(ch), 0x00030000);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW9_GRP(ch), preemph_reg_value);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW5_GRP(ch), DPIO_TX_OCALINIT_EN);
 
 	vlv_dpio_put(dev_priv);
 }
@@ -1098,19 +1098,19 @@ void vlv_phy_pre_pll_enable(struct intel_encoder *encoder,
 	/* Program Tx lane resets to default */
 	vlv_dpio_get(dev_priv);
 
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(ch),
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0_GRP(ch),
 			 DPIO_PCS_TX_LANE2_RESET |
 			 DPIO_PCS_TX_LANE1_RESET);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(ch),
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1_GRP(ch),
 			 DPIO_PCS_CLK_CRI_RXEB_EIOS_EN |
 			 DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN |
 			 (1<<DPIO_PCS_CLK_DATAWIDTH_SHIFT) |
 				 DPIO_PCS_CLK_SOFT_RESET);
 
 	/* Fix up inter-pair skew failure */
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW12(ch), 0x00750f00);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW11(ch), 0x00001500);
-	vlv_dpio_write(dev_priv, phy, VLV_TX_DW14(ch), 0x40400000);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW12_GRP(ch), 0x00750f00);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW11_GRP(ch), 0x00001500);
+	vlv_dpio_write(dev_priv, phy, VLV_TX_DW14_GRP(ch), 0x40400000);
 
 	vlv_dpio_put(dev_priv);
 }
@@ -1136,11 +1136,11 @@ void vlv_phy_pre_encoder_enable(struct intel_encoder *encoder,
 	else
 		val &= ~(1<<21);
 	val |= 0x001000c4;
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW8(ch), val);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW8_GRP(ch), val);
 
 	/* Program lane clock */
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW14(ch), 0x00760018);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW23(ch), 0x00400888);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW14_GRP(ch), 0x00760018);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW23_GRP(ch), 0x00400888);
 
 	vlv_dpio_put(dev_priv);
 }
@@ -1154,7 +1154,7 @@ void vlv_phy_reset_lanes(struct intel_encoder *encoder,
 	enum dpio_phy phy = vlv_dig_port_to_phy(dig_port);
 
 	vlv_dpio_get(dev_priv);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0(ch), 0x00000000);
-	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1(ch), 0x00e00060);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW0_GRP(ch), 0x00000000);
+	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW1_GRP(ch), 0x00e00060);
 	vlv_dpio_put(dev_priv);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 747221f8ac72..3804ef4697d5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -254,13 +254,13 @@
  * Per DDI channel DPIO regs
  */
 
-#define _VLV_PCS_DW0_CH0		0x8200
-#define _VLV_PCS_DW0_CH1		0x8400
+#define _VLV_PCS_DW0_CH0_GRP		0x8200
+#define _VLV_PCS_DW0_CH1_GRP		0x8400
 #define   DPIO_PCS_TX_LANE2_RESET	(1 << 16)
 #define   DPIO_PCS_TX_LANE1_RESET	(1 << 7)
 #define   DPIO_LEFT_TXFIFO_RST_MASTER2	(1 << 4)
 #define   DPIO_RIGHT_TXFIFO_RST_MASTER2	(1 << 3)
-#define VLV_PCS_DW0(ch) _PORT(ch, _VLV_PCS_DW0_CH0, _VLV_PCS_DW0_CH1)
+#define VLV_PCS_DW0_GRP(ch) _PORT(ch, _VLV_PCS_DW0_CH0_GRP, _VLV_PCS_DW0_CH1_GRP)
 
 #define _VLV_PCS01_DW0_CH0		0x200
 #define _VLV_PCS23_DW0_CH0		0x400
@@ -269,14 +269,14 @@
 #define VLV_PCS01_DW0(ch) _PORT(ch, _VLV_PCS01_DW0_CH0, _VLV_PCS01_DW0_CH1)
 #define VLV_PCS23_DW0(ch) _PORT(ch, _VLV_PCS23_DW0_CH0, _VLV_PCS23_DW0_CH1)
 
-#define _VLV_PCS_DW1_CH0		0x8204
-#define _VLV_PCS_DW1_CH1		0x8404
+#define _VLV_PCS_DW1_CH0_GRP		0x8204
+#define _VLV_PCS_DW1_CH1_GRP		0x8404
 #define   CHV_PCS_REQ_SOFTRESET_EN	(1 << 23)
 #define   DPIO_PCS_CLK_CRI_RXEB_EIOS_EN	(1 << 22)
 #define   DPIO_PCS_CLK_CRI_RXDIGFILTSG_EN (1 << 21)
 #define   DPIO_PCS_CLK_DATAWIDTH_SHIFT	(6)
 #define   DPIO_PCS_CLK_SOFT_RESET	(1 << 5)
-#define VLV_PCS_DW1(ch) _PORT(ch, _VLV_PCS_DW1_CH0, _VLV_PCS_DW1_CH1)
+#define VLV_PCS_DW1_GRP(ch) _PORT(ch, _VLV_PCS_DW1_CH0_GRP, _VLV_PCS_DW1_CH1_GRP)
 
 #define _VLV_PCS01_DW1_CH0		0x204
 #define _VLV_PCS23_DW1_CH0		0x404
@@ -285,11 +285,11 @@
 #define VLV_PCS01_DW1(ch) _PORT(ch, _VLV_PCS01_DW1_CH0, _VLV_PCS01_DW1_CH1)
 #define VLV_PCS23_DW1(ch) _PORT(ch, _VLV_PCS23_DW1_CH0, _VLV_PCS23_DW1_CH1)
 
-#define _VLV_PCS_DW8_CH0		0x8220
-#define _VLV_PCS_DW8_CH1		0x8420
+#define _VLV_PCS_DW8_CH0_GRP		0x8220
+#define _VLV_PCS_DW8_CH1_GRP		0x8420
 #define   CHV_PCS_USEDCLKCHANNEL_OVRRIDE	(1 << 20)
 #define   CHV_PCS_USEDCLKCHANNEL		(1 << 21)
-#define VLV_PCS_DW8(ch) _PORT(ch, _VLV_PCS_DW8_CH0, _VLV_PCS_DW8_CH1)
+#define VLV_PCS_DW8_GRP(ch) _PORT(ch, _VLV_PCS_DW8_CH0_GRP, _VLV_PCS_DW8_CH1_GRP)
 
 #define _VLV_PCS01_DW8_CH0		0x0220
 #define _VLV_PCS23_DW8_CH0		0x0420
@@ -298,15 +298,15 @@
 #define VLV_PCS01_DW8(port) _PORT(port, _VLV_PCS01_DW8_CH0, _VLV_PCS01_DW8_CH1)
 #define VLV_PCS23_DW8(port) _PORT(port, _VLV_PCS23_DW8_CH0, _VLV_PCS23_DW8_CH1)
 
-#define _VLV_PCS_DW9_CH0		0x8224
-#define _VLV_PCS_DW9_CH1		0x8424
+#define _VLV_PCS_DW9_CH0_GRP		0x8224
+#define _VLV_PCS_DW9_CH1_GRP		0x8424
 #define   DPIO_PCS_TX2MARGIN_MASK	(0x7 << 13)
 #define   DPIO_PCS_TX2MARGIN_000	(0 << 13)
 #define   DPIO_PCS_TX2MARGIN_101	(1 << 13)
 #define   DPIO_PCS_TX1MARGIN_MASK	(0x7 << 10)
 #define   DPIO_PCS_TX1MARGIN_000	(0 << 10)
 #define   DPIO_PCS_TX1MARGIN_101	(1 << 10)
-#define	VLV_PCS_DW9(ch) _PORT(ch, _VLV_PCS_DW9_CH0, _VLV_PCS_DW9_CH1)
+#define VLV_PCS_DW9_GRP(ch) _PORT(ch, _VLV_PCS_DW9_CH0_GRP, _VLV_PCS_DW9_CH1_GRP)
 
 #define _VLV_PCS01_DW9_CH0		0x224
 #define _VLV_PCS23_DW9_CH0		0x424
@@ -315,8 +315,8 @@
 #define VLV_PCS01_DW9(ch) _PORT(ch, _VLV_PCS01_DW9_CH0, _VLV_PCS01_DW9_CH1)
 #define VLV_PCS23_DW9(ch) _PORT(ch, _VLV_PCS23_DW9_CH0, _VLV_PCS23_DW9_CH1)
 
-#define _CHV_PCS_DW10_CH0		0x8228
-#define _CHV_PCS_DW10_CH1		0x8428
+#define _CHV_PCS_DW10_CH0_GRP		0x8228
+#define _CHV_PCS_DW10_CH1_GRP		0x8428
 #define   DPIO_PCS_SWING_CALC_TX0_TX2	(1 << 30)
 #define   DPIO_PCS_SWING_CALC_TX1_TX3	(1 << 31)
 #define   DPIO_PCS_TX2DEEMP_MASK	(0xf << 24)
@@ -325,7 +325,7 @@
 #define   DPIO_PCS_TX1DEEMP_MASK	(0xf << 16)
 #define   DPIO_PCS_TX1DEEMP_9P5		(0 << 16)
 #define   DPIO_PCS_TX1DEEMP_6P0		(2 << 16)
-#define CHV_PCS_DW10(ch) _PORT(ch, _CHV_PCS_DW10_CH0, _CHV_PCS_DW10_CH1)
+#define CHV_PCS_DW10_GRP(ch) _PORT(ch, _CHV_PCS_DW10_CH0_GRP, _CHV_PCS_DW10_CH1_GRP)
 
 #define _VLV_PCS01_DW10_CH0		0x0228
 #define _VLV_PCS23_DW10_CH0		0x0428
@@ -334,13 +334,13 @@
 #define VLV_PCS01_DW10(port) _PORT(port, _VLV_PCS01_DW10_CH0, _VLV_PCS01_DW10_CH1)
 #define VLV_PCS23_DW10(port) _PORT(port, _VLV_PCS23_DW10_CH0, _VLV_PCS23_DW10_CH1)
 
-#define _VLV_PCS_DW11_CH0		0x822c
-#define _VLV_PCS_DW11_CH1		0x842c
+#define _VLV_PCS_DW11_CH0_GRP		0x822c
+#define _VLV_PCS_DW11_CH1_GRP		0x842c
 #define   DPIO_TX2_STAGGER_MASK(x)	((x) << 24)
 #define   DPIO_LANEDESKEW_STRAP_OVRD	(1 << 3)
 #define   DPIO_LEFT_TXFIFO_RST_MASTER	(1 << 1)
 #define   DPIO_RIGHT_TXFIFO_RST_MASTER	(1 << 0)
-#define VLV_PCS_DW11(ch) _PORT(ch, _VLV_PCS_DW11_CH0, _VLV_PCS_DW11_CH1)
+#define VLV_PCS_DW11_GRP(ch) _PORT(ch, _VLV_PCS_DW11_CH0_GRP, _VLV_PCS_DW11_CH1_GRP)
 
 #define _VLV_PCS01_DW11_CH0		0x022c
 #define _VLV_PCS23_DW11_CH0		0x042c
@@ -356,64 +356,64 @@
 #define VLV_PCS01_DW12(ch) _PORT(ch, _VLV_PCS01_DW12_CH0, _VLV_PCS01_DW12_CH1)
 #define VLV_PCS23_DW12(ch) _PORT(ch, _VLV_PCS23_DW12_CH0, _VLV_PCS23_DW12_CH1)
 
-#define _VLV_PCS_DW12_CH0		0x8230
-#define _VLV_PCS_DW12_CH1		0x8430
+#define _VLV_PCS_DW12_CH0_GRP		0x8230
+#define _VLV_PCS_DW12_CH1_GRP		0x8430
 #define   DPIO_TX2_STAGGER_MULT(x)	((x) << 20)
 #define   DPIO_TX1_STAGGER_MULT(x)	((x) << 16)
 #define   DPIO_TX1_STAGGER_MASK(x)	((x) << 8)
 #define   DPIO_LANESTAGGER_STRAP_OVRD	(1 << 6)
 #define   DPIO_LANESTAGGER_STRAP(x)	((x) << 0)
-#define VLV_PCS_DW12(ch) _PORT(ch, _VLV_PCS_DW12_CH0, _VLV_PCS_DW12_CH1)
+#define VLV_PCS_DW12_GRP(ch) _PORT(ch, _VLV_PCS_DW12_CH0_GRP, _VLV_PCS_DW12_CH1_GRP)
 
-#define _VLV_PCS_DW14_CH0		0x8238
-#define _VLV_PCS_DW14_CH1		0x8438
-#define	VLV_PCS_DW14(ch) _PORT(ch, _VLV_PCS_DW14_CH0, _VLV_PCS_DW14_CH1)
+#define _VLV_PCS_DW14_CH0_GRP		0x8238
+#define _VLV_PCS_DW14_CH1_GRP		0x8438
+#define VLV_PCS_DW14_GRP(ch) _PORT(ch, _VLV_PCS_DW14_CH0_GRP, _VLV_PCS_DW14_CH1_GRP)
 
 #define VLV_PCS_DW17_BCAST		0xc044
 
-#define _VLV_PCS_DW23_CH0		0x825c
-#define _VLV_PCS_DW23_CH1		0x845c
-#define VLV_PCS_DW23(ch) _PORT(ch, _VLV_PCS_DW23_CH0, _VLV_PCS_DW23_CH1)
+#define _VLV_PCS_DW23_CH0_GRP		0x825c
+#define _VLV_PCS_DW23_CH1_GRP		0x845c
+#define VLV_PCS_DW23_GRP(ch) _PORT(ch, _VLV_PCS_DW23_CH0_GRP, _VLV_PCS_DW23_CH1_GRP)
 
-#define _VLV_TX_DW2_CH0			0x8288
-#define _VLV_TX_DW2_CH1			0x8488
+#define _VLV_TX_DW2_CH0_GRP		0x8288
+#define _VLV_TX_DW2_CH1_GRP		0x8488
 #define   DPIO_SWING_MARGIN000_SHIFT	16
 #define   DPIO_SWING_MARGIN000_MASK	(0xff << DPIO_SWING_MARGIN000_SHIFT)
 #define   DPIO_UNIQ_TRANS_SCALE_SHIFT	8
-#define VLV_TX_DW2(ch) _PORT(ch, _VLV_TX_DW2_CH0, _VLV_TX_DW2_CH1)
+#define VLV_TX_DW2_GRP(ch) _PORT(ch, _VLV_TX_DW2_CH0_GRP, _VLV_TX_DW2_CH1_GRP)
 
-#define _VLV_TX_DW3_CH0			0x828c
-#define _VLV_TX_DW3_CH1			0x848c
+#define _VLV_TX_DW3_CH0_GRP		0x828c
+#define _VLV_TX_DW3_CH1_GRP		0x848c
 /* The following bit for CHV phy */
 #define   DPIO_TX_UNIQ_TRANS_SCALE_EN	(1 << 27)
 #define   DPIO_SWING_MARGIN101_SHIFT	16
 #define   DPIO_SWING_MARGIN101_MASK	(0xff << DPIO_SWING_MARGIN101_SHIFT)
-#define VLV_TX_DW3(ch) _PORT(ch, _VLV_TX_DW3_CH0, _VLV_TX_DW3_CH1)
+#define VLV_TX_DW3_GRP(ch) _PORT(ch, _VLV_TX_DW3_CH0_GRP, _VLV_TX_DW3_CH1_GRP)
 
-#define _VLV_TX_DW4_CH0			0x8290
-#define _VLV_TX_DW4_CH1			0x8490
+#define _VLV_TX_DW4_CH0_GRP		0x8290
+#define _VLV_TX_DW4_CH1_GRP		0x8490
 #define   DPIO_SWING_DEEMPH9P5_SHIFT	24
 #define   DPIO_SWING_DEEMPH9P5_MASK	(0xff << DPIO_SWING_DEEMPH9P5_SHIFT)
 #define   DPIO_SWING_DEEMPH6P0_SHIFT	16
 #define   DPIO_SWING_DEEMPH6P0_MASK	(0xff << DPIO_SWING_DEEMPH6P0_SHIFT)
-#define VLV_TX_DW4(ch) _PORT(ch, _VLV_TX_DW4_CH0, _VLV_TX_DW4_CH1)
+#define VLV_TX_DW4_GRP(ch) _PORT(ch, _VLV_TX_DW4_CH0_GRP, _VLV_TX_DW4_CH1_GRP)
 
 #define _VLV_TX3_DW4_CH0		0x690
 #define _VLV_TX3_DW4_CH1		0x2a90
 #define VLV_TX3_DW4(ch) _PORT(ch, _VLV_TX3_DW4_CH0, _VLV_TX3_DW4_CH1)
 
-#define _VLV_TX_DW5_CH0			0x8294
-#define _VLV_TX_DW5_CH1			0x8494
+#define _VLV_TX_DW5_CH0_GRP		0x8294
+#define _VLV_TX_DW5_CH1_GRP		0x8494
 #define   DPIO_TX_OCALINIT_EN		(1 << 31)
-#define VLV_TX_DW5(ch) _PORT(ch, _VLV_TX_DW5_CH0, _VLV_TX_DW5_CH1)
+#define VLV_TX_DW5_GRP(ch) _PORT(ch, _VLV_TX_DW5_CH0_GRP, _VLV_TX_DW5_CH1_GRP)
 
-#define _VLV_TX_DW11_CH0		0x82ac
-#define _VLV_TX_DW11_CH1		0x84ac
-#define VLV_TX_DW11(ch) _PORT(ch, _VLV_TX_DW11_CH0, _VLV_TX_DW11_CH1)
+#define _VLV_TX_DW11_CH0_GRP		0x82ac
+#define _VLV_TX_DW11_CH1_GRP		0x84ac
+#define VLV_TX_DW11_GRP(ch) _PORT(ch, _VLV_TX_DW11_CH0_GRP, _VLV_TX_DW11_CH1_GRP)
 
-#define _VLV_TX_DW14_CH0		0x82b8
-#define _VLV_TX_DW14_CH1		0x84b8
-#define VLV_TX_DW14(ch) _PORT(ch, _VLV_TX_DW14_CH0, _VLV_TX_DW14_CH1)
+#define _VLV_TX_DW14_CH0_GRP		0x82b8
+#define _VLV_TX_DW14_CH1_GRP		0x84b8
+#define VLV_TX_DW14_GRP(ch) _PORT(ch, _VLV_TX_DW14_CH0_GRP, _VLV_TX_DW14_CH1_GRP)
 
 /* CHV dpPhy registers */
 #define _CHV_PLL_DW0_CH0		0x8000
-- 
2.43.2

