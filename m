Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C3E8AC72B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5F71128C3;
	Mon, 22 Apr 2024 08:35:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="apkbwDkC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D78F1128C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774930; x=1745310930;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lql/36tZm/i/EnFD/xpKahM8UwsLU7+vBrH1nFBSs3Q=;
 b=apkbwDkCIiJ4aE8cCGMUPnPPaEnttllf/hz/U0+pK6Um4S03HP6ou9M4
 THZnOq6m2Vr5w2UPkeRPF2bSfuuV0eACQC0XekFvCHC47llvmhJ56nk9v
 xRLdJq2lVaccIAcWvySS+TFTkWcYfc5DsyqoBjD/d7KalvdqCpUN+ToIk
 T8HdkHabSIL6jMKTNIzV2MJ4blBiFPPdB6hkqXHVFeO5kt78muw0FAa62
 t+5HTMTa8qZ6U/RRSnoAdzfewGC+Z9pp3e93P6cyVHKvN36cSOXPCqUok
 24fEYMYWPdSL13VBDivl/eXmERCC9LUQYcVknQwyFC2m2S9oun7X4f2du w==;
X-CSE-ConnectionGUID: uAQNdCLZRxKQwHa6Z+/lDA==
X-CSE-MsgGUID: +dJPbIXhSKux3UeN4LY51w==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453489"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453489"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:30 -0700
X-CSE-ConnectionGUID: y6oC6Sk2T7Ghnv5DoCnyEA==
X-CSE-MsgGUID: sQ0RpPh4QweCNH7pc05drw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021829"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:35:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:35:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/14] drm/i915/dpio: Rename a few CHV DPIO PHY registers
Date: Mon, 22 Apr 2024 11:34:54 +0300
Message-ID: <20240422083457.23815-12-ville.syrjala@linux.intel.com>
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

Drop the leading underscore from the CHV PHY common lane
register definitons. We use these directly from actual
code so the underscore here is misleading as usually it indicates
an intermediate define that shouldn't be used directly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../i915/display/intel_display_power_well.c   |  8 +++----
 drivers/gpu/drm/i915/display/intel_dpio_phy.c | 16 ++++++-------
 drivers/gpu/drm/i915/i915_reg.h               | 23 +++++++++----------
 3 files changed, 23 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index e8a6e53fd551..49114afc9a61 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1442,9 +1442,9 @@ static void chv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
 	vlv_dpio_write(dev_priv, phy, CHV_CMN_DW28, tmp);
 
 	if (id == VLV_DISP_PW_DPIO_CMN_BC) {
-		tmp = vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW6_CH1);
+		tmp = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW6_CH1);
 		tmp |= DPIO_DYNPWRDOWNEN_CH1;
-		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW6_CH1, tmp);
+		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW6_CH1, tmp);
 	} else {
 		/*
 		 * Force the non-existing CL2 off. BXT does this
@@ -1520,9 +1520,9 @@ static void assert_chv_phy_powergate(struct drm_i915_private *dev_priv, enum dpi
 		return;
 
 	if (ch == DPIO_CH0)
-		reg = _CHV_CMN_DW0_CH0;
+		reg = CHV_CMN_DW0_CH0;
 	else
-		reg = _CHV_CMN_DW6_CH1;
+		reg = CHV_CMN_DW6_CH1;
 
 	vlv_dpio_get(dev_priv);
 	val = vlv_dpio_read(dev_priv, phy, reg);
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 791902ba729c..89a51b420075 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -883,21 +883,21 @@ void chv_phy_pre_pll_enable(struct intel_encoder *encoder,
 
 	/* program left/right clock distribution */
 	if (pipe != PIPE_B) {
-		val = vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW5_CH0);
+		val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW5_CH0);
 		val &= ~(CHV_BUFLEFTENA1_MASK | CHV_BUFRIGHTENA1_MASK);
 		if (ch == DPIO_CH0)
 			val |= CHV_BUFLEFTENA1_FORCE;
 		if (ch == DPIO_CH1)
 			val |= CHV_BUFRIGHTENA1_FORCE;
-		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW5_CH0, val);
+		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW5_CH0, val);
 	} else {
-		val = vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW1_CH1);
+		val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW1_CH1);
 		val &= ~(CHV_BUFLEFTENA2_MASK | CHV_BUFRIGHTENA2_MASK);
 		if (ch == DPIO_CH0)
 			val |= CHV_BUFLEFTENA2_FORCE;
 		if (ch == DPIO_CH1)
 			val |= CHV_BUFRIGHTENA2_FORCE;
-		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW1_CH1, val);
+		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW1_CH1, val);
 	}
 
 	/* program clock channel usage */
@@ -1036,13 +1036,13 @@ void chv_phy_post_pll_disable(struct intel_encoder *encoder,
 
 	/* disable left/right clock distribution */
 	if (pipe != PIPE_B) {
-		val = vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW5_CH0);
+		val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW5_CH0);
 		val &= ~(CHV_BUFLEFTENA1_MASK | CHV_BUFRIGHTENA1_MASK);
-		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW5_CH0, val);
+		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW5_CH0, val);
 	} else {
-		val = vlv_dpio_read(dev_priv, phy, _CHV_CMN_DW1_CH1);
+		val = vlv_dpio_read(dev_priv, phy, CHV_CMN_DW1_CH1);
 		val &= ~(CHV_BUFLEFTENA2_MASK | CHV_BUFRIGHTENA2_MASK);
-		vlv_dpio_write(dev_priv, phy, _CHV_CMN_DW1_CH1, val);
+		vlv_dpio_write(dev_priv, phy, CHV_CMN_DW1_CH1, val);
 	}
 
 	vlv_dpio_put(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3804ef4697d5..b24ce3cff1a0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -459,13 +459,13 @@
 #define  DPIO_CHV_INT_LOCK_THRESHOLD_SEL_COARSE	1 /* 1: coarse & 0 : fine  */
 #define CHV_PLL_DW9(ch) _PIPE(ch, _CHV_PLL_DW9_CH0, _CHV_PLL_DW9_CH1)
 
-#define _CHV_CMN_DW0_CH0               0x8100
+#define CHV_CMN_DW0_CH0			0x8100
 #define   DPIO_ALLDL_POWERDOWN_SHIFT_CH0	19
 #define   DPIO_ANYDL_POWERDOWN_SHIFT_CH0	18
 #define   DPIO_ALLDL_POWERDOWN			(1 << 1)
 #define   DPIO_ANYDL_POWERDOWN			(1 << 0)
 
-#define _CHV_CMN_DW5_CH0               0x8114
+#define CHV_CMN_DW5_CH0			0x8114
 #define   CHV_BUFRIGHTENA1_DISABLE	(0 << 20)
 #define   CHV_BUFRIGHTENA1_NORMAL	(1 << 20)
 #define   CHV_BUFRIGHTENA1_FORCE	(3 << 20)
@@ -475,18 +475,18 @@
 #define   CHV_BUFLEFTENA1_FORCE		(3 << 22)
 #define   CHV_BUFLEFTENA1_MASK		(3 << 22)
 
-#define _CHV_CMN_DW13_CH0		0x8134
-#define _CHV_CMN_DW0_CH1		0x8080
+#define CHV_CMN_DW13_CH0		0x8134
+#define CHV_CMN_DW0_CH1			0x8080
 #define   DPIO_CHV_S1_DIV_SHIFT		21
 #define   DPIO_CHV_P1_DIV_SHIFT		13 /* 3 bits */
 #define   DPIO_CHV_P2_DIV_SHIFT		8  /* 5 bits */
 #define   DPIO_CHV_K_DIV_SHIFT		4
 #define   DPIO_PLL_FREQLOCK		(1 << 1)
 #define   DPIO_PLL_LOCK			(1 << 0)
-#define CHV_CMN_DW13(ch) _PIPE(ch, _CHV_CMN_DW13_CH0, _CHV_CMN_DW0_CH1)
+#define CHV_CMN_DW13(ch) _PIPE(ch, CHV_CMN_DW13_CH0, CHV_CMN_DW0_CH1)
 
-#define _CHV_CMN_DW14_CH0		0x8138
-#define _CHV_CMN_DW1_CH1		0x8084
+#define CHV_CMN_DW14_CH0		0x8138
+#define CHV_CMN_DW1_CH1			0x8084
 #define   DPIO_AFC_RECAL		(1 << 14)
 #define   DPIO_DCLKP_EN			(1 << 13)
 #define   CHV_BUFLEFTENA2_DISABLE	(0 << 17) /* CL2 DW1 only */
@@ -497,16 +497,15 @@
 #define   CHV_BUFRIGHTENA2_NORMAL	(1 << 19) /* CL2 DW1 only */
 #define   CHV_BUFRIGHTENA2_FORCE	(3 << 19) /* CL2 DW1 only */
 #define   CHV_BUFRIGHTENA2_MASK		(3 << 19) /* CL2 DW1 only */
-#define CHV_CMN_DW14(ch) _PIPE(ch, _CHV_CMN_DW14_CH0, _CHV_CMN_DW1_CH1)
+#define CHV_CMN_DW14(ch) _PIPE(ch, CHV_CMN_DW14_CH0, CHV_CMN_DW1_CH1)
 
-#define _CHV_CMN_DW19_CH0		0x814c
-#define _CHV_CMN_DW6_CH1		0x8098
+#define CHV_CMN_DW19_CH0		0x814c
+#define CHV_CMN_DW6_CH1		0x8098
 #define   DPIO_ALLDL_POWERDOWN_SHIFT_CH1	30 /* CL2 DW6 only */
 #define   DPIO_ANYDL_POWERDOWN_SHIFT_CH1	29 /* CL2 DW6 only */
 #define   DPIO_DYNPWRDOWNEN_CH1		(1 << 28) /* CL2 DW6 only */
 #define   CHV_CMN_USEDCLKCHANNEL	(1 << 13)
-
-#define CHV_CMN_DW19(ch) _PIPE(ch, _CHV_CMN_DW19_CH0, _CHV_CMN_DW6_CH1)
+#define CHV_CMN_DW19(ch) _PIPE(ch, CHV_CMN_DW19_CH0, CHV_CMN_DW6_CH1)
 
 #define CHV_CMN_DW28			0x8170
 #define   DPIO_CL1POWERDOWNEN		(1 << 23)
-- 
2.43.2

