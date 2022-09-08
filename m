Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEDF5B269D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 21:17:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E49A10E1B9;
	Thu,  8 Sep 2022 19:17:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E8D910E1B3
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662664613; x=1694200613;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+cxlCNKLf0dEZIV0PGSyCKXh4Rmrs1EB+mBFp0Y28GU=;
 b=gPGxvUwsr1o9syG8PJrd2LkN/hSogxw5dtvONKZfN1pDjchWN09dBjEs
 xCwjRjPwJw02QPP+yJeKYVIUdrGY0sXEWYXVbR+u77Y7L+wzUu5atlOth
 kyeYBSCg8HSAg5ppq6uyY+fPM11omcSW3awN3n0XBHelWfQX33epA/YXi
 uAvNrA6jR34NVHIo62swHefzDyHD3l+oA/tgyWmEwsjf5GiogK622hQPs
 qIHQfvua947NWfEOyncIV3Z/1nE6yQIY2YPy6JIIWZOIbBch3Oe4YgrW+
 ysoD/uPQXVJ3kUlShSMZZ1xR9mAxKWXluZI9MaaeiW0zt6JGfcvQYXYsj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="359030876"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="359030876"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 12:16:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="617587664"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 08 Sep 2022 12:16:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Sep 2022 22:16:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Sep 2022 22:16:44 +0300
Message-Id: <20220908191646.20239-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220908191646.20239-1-ville.syrjala@linux.intel.com>
References: <20220908191646.20239-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Split intel_read_wm_latency()
 into per-platform versions
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

No reaon to have this humongous if ladder in intel_read_wm_latency().
Just split it into nicer per-platforms functions.

Also do the s/dev_priv/i915/ while touching all of this code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 201 +++++++++++++++++---------------
 1 file changed, 110 insertions(+), 91 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 210c1f78cc90..096c311ed29f 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2905,97 +2905,107 @@ adjust_wm_latency(struct drm_i915_private *i915,
 		wm[0] += 1;
 }
 
-static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
-				  u16 wm[])
+static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	int max_level = ilk_wm_max_level(dev_priv);
-
-	if (DISPLAY_VER(dev_priv) >= 14) {
-		u32 val;
-
-		val = intel_uncore_read(uncore, MTL_LATENCY_LP0_LP1);
-		wm[0] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
-		wm[1] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
-		val = intel_uncore_read(uncore, MTL_LATENCY_LP2_LP3);
-		wm[2] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
-		wm[3] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
-		val = intel_uncore_read(uncore, MTL_LATENCY_LP4_LP5);
-		wm[4] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
-		wm[5] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
-
-		adjust_wm_latency(dev_priv, wm, max_level, 6);
-	} else if (DISPLAY_VER(dev_priv) >= 9) {
-		int read_latency = DISPLAY_VER(dev_priv) >= 12 ? 3 : 2;
-		int mult = IS_DG2(dev_priv) ? 2 : 1;
-		u32 val;
-		int ret;
-
-		/* read the first set of memory latencies[0:3] */
-		val = 0; /* data0 to be programmed to 0 for first set */
-		ret = snb_pcode_read(&dev_priv->uncore, GEN9_PCODE_READ_MEM_LATENCY,
-				     &val, NULL);
-
-		if (ret) {
-			drm_err(&dev_priv->drm,
-				"SKL Mailbox read error = %d\n", ret);
-			return;
-		}
-
-		wm[0] = (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
-		wm[1] = ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
-				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
-		wm[2] = ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
-				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
-		wm[3] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
-				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
-
-		/* read the second set of memory latencies[4:7] */
-		val = 1; /* data0 to be programmed to 1 for second set */
-		ret = snb_pcode_read(&dev_priv->uncore, GEN9_PCODE_READ_MEM_LATENCY,
-				     &val, NULL);
-		if (ret) {
-			drm_err(&dev_priv->drm,
-				"SKL Mailbox read error = %d\n", ret);
-			return;
-		}
-
-		wm[4] = (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
-		wm[5] = ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
-				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
-		wm[6] = ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
-				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
-		wm[7] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
-				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
-
-		adjust_wm_latency(dev_priv, wm, max_level, read_latency);
-	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
-		u64 sskpd = intel_uncore_read64(uncore, MCH_SSKPD);
-
-		wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
-		if (wm[0] == 0)
-			wm[0] = REG_FIELD_GET64(SSKPD_OLD_WM0_MASK_HSW, sskpd);
-		wm[1] = REG_FIELD_GET64(SSKPD_WM1_MASK_HSW, sskpd);
-		wm[2] = REG_FIELD_GET64(SSKPD_WM2_MASK_HSW, sskpd);
-		wm[3] = REG_FIELD_GET64(SSKPD_WM3_MASK_HSW, sskpd);
-		wm[4] = REG_FIELD_GET64(SSKPD_WM4_MASK_HSW, sskpd);
-	} else if (DISPLAY_VER(dev_priv) >= 6) {
-		u32 sskpd = intel_uncore_read(uncore, MCH_SSKPD);
-
-		wm[0] = REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
-		wm[1] = REG_FIELD_GET(SSKPD_WM1_MASK_SNB, sskpd);
-		wm[2] = REG_FIELD_GET(SSKPD_WM2_MASK_SNB, sskpd);
-		wm[3] = REG_FIELD_GET(SSKPD_WM3_MASK_SNB, sskpd);
-	} else if (DISPLAY_VER(dev_priv) >= 5) {
-		u32 mltr = intel_uncore_read(uncore, MLTR_ILK);
-
-		/* ILK primary LP0 latency is 700 ns */
-		wm[0] = 7;
-		wm[1] = REG_FIELD_GET(MLTR_WM1_MASK, mltr);
-		wm[2] = REG_FIELD_GET(MLTR_WM2_MASK, mltr);
-	} else {
-		MISSING_CASE(INTEL_DEVID(dev_priv));
+	struct intel_uncore *uncore = &i915->uncore;
+	int max_level = ilk_wm_max_level(i915);
+	u32 val;
+
+	val = intel_uncore_read(uncore, MTL_LATENCY_LP0_LP1);
+	wm[0] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
+	wm[1] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
+
+	val = intel_uncore_read(uncore, MTL_LATENCY_LP2_LP3);
+	wm[2] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
+	wm[3] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
+
+	val = intel_uncore_read(uncore, MTL_LATENCY_LP4_LP5);
+	wm[4] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
+	wm[5] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
+
+	adjust_wm_latency(i915, wm, max_level, 6);
+}
+
+static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
+{
+	int max_level = ilk_wm_max_level(i915);
+	int read_latency = DISPLAY_VER(i915) >= 12 ? 3 : 2;
+	int mult = IS_DG2(i915) ? 2 : 1;
+	u32 val;
+	int ret;
+
+	/* read the first set of memory latencies[0:3] */
+	val = 0; /* data0 to be programmed to 0 for first set */
+	ret = snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
+	if (ret) {
+		drm_err(&i915->drm, "SKL Mailbox read error = %d\n", ret);
+		return;
+	}
+
+	wm[0] = (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+	wm[1] = ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
+		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+	wm[2] = ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
+		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+	wm[3] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
+		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+
+	/* read the second set of memory latencies[4:7] */
+	val = 1; /* data0 to be programmed to 1 for second set */
+	ret = snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val, NULL);
+	if (ret) {
+		drm_err(&i915->drm, "SKL Mailbox read error = %d\n", ret);
+		return;
 	}
+
+	wm[4] = (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+	wm[5] = ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
+		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+	wm[6] = ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
+		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+	wm[7] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
+		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
+
+	adjust_wm_latency(i915, wm, max_level, read_latency);
+}
+
+static void hsw_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
+{
+	u64 sskpd;
+
+	sskpd = intel_uncore_read64(&i915->uncore, MCH_SSKPD);
+
+	wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
+	if (wm[0] == 0)
+		wm[0] = REG_FIELD_GET64(SSKPD_OLD_WM0_MASK_HSW, sskpd);
+	wm[1] = REG_FIELD_GET64(SSKPD_WM1_MASK_HSW, sskpd);
+	wm[2] = REG_FIELD_GET64(SSKPD_WM2_MASK_HSW, sskpd);
+	wm[3] = REG_FIELD_GET64(SSKPD_WM3_MASK_HSW, sskpd);
+	wm[4] = REG_FIELD_GET64(SSKPD_WM4_MASK_HSW, sskpd);
+}
+
+static void snb_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
+{
+	u32 sskpd;
+
+	sskpd = intel_uncore_read(&i915->uncore, MCH_SSKPD);
+
+	wm[0] = REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
+	wm[1] = REG_FIELD_GET(SSKPD_WM1_MASK_SNB, sskpd);
+	wm[2] = REG_FIELD_GET(SSKPD_WM2_MASK_SNB, sskpd);
+	wm[3] = REG_FIELD_GET(SSKPD_WM3_MASK_SNB, sskpd);
+}
+
+static void ilk_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
+{
+	u32 mltr;
+
+	mltr = intel_uncore_read(&i915->uncore, MLTR_ILK);
+
+	/* ILK primary LP0 latency is 700 ns */
+	wm[0] = 7;
+	wm[1] = REG_FIELD_GET(MLTR_WM1_MASK, mltr);
+	wm[2] = REG_FIELD_GET(MLTR_WM2_MASK, mltr);
 }
 
 static void intel_fixup_spr_wm_latency(struct drm_i915_private *dev_priv,
@@ -3128,7 +3138,12 @@ static void snb_wm_lp3_irq_quirk(struct drm_i915_private *dev_priv)
 
 static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)
 {
-	intel_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
+	if (IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
+		hsw_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
+	else if (DISPLAY_VER(dev_priv) >= 6)
+		snb_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
+	else
+		ilk_read_wm_latency(dev_priv, dev_priv->display.wm.pri_latency);
 
 	memcpy(dev_priv->display.wm.spr_latency, dev_priv->display.wm.pri_latency,
 	       sizeof(dev_priv->display.wm.pri_latency));
@@ -3150,7 +3165,11 @@ static void ilk_setup_wm_latency(struct drm_i915_private *dev_priv)
 
 static void skl_setup_wm_latency(struct drm_i915_private *dev_priv)
 {
-	intel_read_wm_latency(dev_priv, dev_priv->display.wm.skl_latency);
+	if (DISPLAY_VER(dev_priv) >= 14)
+		mtl_read_wm_latency(dev_priv, dev_priv->display.wm.skl_latency);
+	else
+		skl_read_wm_latency(dev_priv, dev_priv->display.wm.skl_latency);
+
 	intel_print_wm_latency(dev_priv, "Gen9 Plane", dev_priv->display.wm.skl_latency);
 }
 
-- 
2.35.1

