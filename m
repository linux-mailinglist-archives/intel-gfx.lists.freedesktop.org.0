Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CA74B947E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 00:28:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F162810E651;
	Wed, 16 Feb 2022 23:28:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6873210E64D
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645054096; x=1676590096;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F249CJNT8T/PayZMICF+NWzItXmv23IqcFhyvV18S/0=;
 b=NfS6wuIi4Us+Vb5E2kWe6jwyGL3o8jzJFAMiIXEQ+CAlReuSJpM+WFHz
 5C1SGUo3q+RztF8t1jgTaIJkhGR7DZCI7rXQz3ndHc/LRKR1E0W8zD+fc
 62EJzWdKpE+Q6zR7q+xgX+PcqQhzaXl+m1dIbGPrxWJchzGQItIeEA6Mt
 B1vuLBmPNrZjWsIpHK+FVlFBQ2XH4I7wCa7SSvUnytutj8d45NOYWMKYG
 53W6vP94kAEWqBndjyf8lZgPVgHhUWnn1iO6siMTQUuooe57QohINfd8L
 bTd8+6Mx6l3NhRl+pPMi3XvZrolVQ0Zvd66HmZSau7zI6rDYy9t9zrDSi A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="250481826"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="250481826"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 15:28:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="625664894"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 16 Feb 2022 15:28:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Feb 2022 01:28:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Feb 2022 01:28:05 +0200
Message-Id: <20220216232806.6194-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220216232806.6194-1-ville.syrjala@linux.intel.com>
References: <20220216232806.6194-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915: Clean up SSKPD/MLTR defines
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Give names to the SSKPD/MLTR fields, and use the
REG_GENMASK* and REG_FIELD_GET*.

Also drop the bogus non-mirrored SSKP register define.

v2: Rebase due to intel_mchbar_regs.h
    Leave gen6_check_mch_setup() in place for the moment

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h          |  8 --------
 drivers/gpu/drm/i915/intel_mchbar_regs.h | 17 +++++++++++-----
 drivers/gpu/drm/i915/intel_pm.c          | 26 ++++++++++++------------
 3 files changed, 25 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2243d9d1d941..27e3f3441a8b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4210,14 +4210,6 @@
 	(WM3_LP_EN | ((lat) << WM1_LP_LATENCY_SHIFT) | \
 	 ((fbc) << WM1_LP_FBC_SHIFT) | ((pri) << WM1_LP_SR_SHIFT) | (cur))
 
-/* the address where we get all kinds of latency value */
-#define SSKPD			_MMIO(0x5d10)
-#define SSKPD_WM_MASK		0x3f
-#define SSKPD_WM0_SHIFT		0
-#define SSKPD_WM1_SHIFT		8
-#define SSKPD_WM2_SHIFT		16
-#define SSKPD_WM3_SHIFT		24
-
 /*
  * The two pipe frame counter registers are not synchronized, so
  * reading a stable value is somewhat tricky. The following code
diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
index f4aef00b30f7..2aad2f0cc8db 100644
--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
@@ -78,10 +78,9 @@
 
 /* Memory latency timer register */
 #define MLTR_ILK				_MMIO(MCHBAR_MIRROR_BASE + 0x1222)
-#define   MLTR_WM1_SHIFT			0
-#define   MLTR_WM2_SHIFT			8
 /* the unit of memory self-refresh latency time is 0.5us */
-#define   ILK_SRLT_MASK				0x3f
+#define   MLTR_WM2_MASK				REG_GENMASK(13, 8)
+#define   MLTR_WM1_MASK				REG_GENMASK(5, 0)
 
 #define CSIPLL0					_MMIO(MCHBAR_MIRROR_BASE + 0x2c10)
 #define DDRMPLL1				_MMIO(MCHBAR_MIRROR_BASE + 0x2c20)
@@ -199,8 +198,16 @@
 
 /* snb MCH registers for priority tuning */
 #define MCH_SSKPD				_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5d10)
-#define   MCH_SSKPD_WM0_MASK			0x3f
-#define   MCH_SSKPD_WM0_VAL			0xc
+#define   SSKPD_NEW_WM0_MASK_HSW		REG_GENMASK64(63, 56)
+#define   SSKPD_WM4_MASK_HSW			REG_GENMASK64(40, 32)
+#define   SSKPD_WM3_MASK_HSW			REG_GENMASK64(28, 20)
+#define   SSKPD_WM2_MASK_HSW			REG_GENMASK64(19, 12)
+#define   SSKPD_WM1_MASK_HSW			REG_GENMASK64(11, 4)
+#define   SSKPD_OLD_WM0_MASK_HSW		REG_GENMASK64(3, 0)
+#define   SSKPD_WM3_MASK_SNB			REG_GENMASK(29, 24)
+#define   SSKPD_WM2_MASK_SNB			REG_GENMASK(21, 16)
+#define   SSKPD_WM1_MASK_SNB			REG_GENMASK(13, 8)
+#define   SSKPD_WM0_MASK_SNB			REG_GENMASK(5, 0)
 
 /* Memory controller frequency in MCHBAR for Haswell (possible SNB+) */
 #define DCLK					_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5e04)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index d4d487f040a1..a60818015ada 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2947,27 +2947,27 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
 	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
 		u64 sskpd = intel_uncore_read64(uncore, MCH_SSKPD);
 
-		wm[0] = (sskpd >> 56) & 0xFF;
+		wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
 		if (wm[0] == 0)
-			wm[0] = sskpd & 0xF;
-		wm[1] = (sskpd >> 4) & 0xFF;
-		wm[2] = (sskpd >> 12) & 0xFF;
-		wm[3] = (sskpd >> 20) & 0x1FF;
-		wm[4] = (sskpd >> 32) & 0x1FF;
+			wm[0] = REG_FIELD_GET64(SSKPD_OLD_WM0_MASK_HSW, sskpd);
+		wm[1] = REG_FIELD_GET64(SSKPD_WM1_MASK_HSW, sskpd);
+		wm[2] = REG_FIELD_GET64(SSKPD_WM2_MASK_HSW, sskpd);
+		wm[3] = REG_FIELD_GET64(SSKPD_WM3_MASK_HSW, sskpd);
+		wm[4] = REG_FIELD_GET64(SSKPD_WM4_MASK_HSW, sskpd);
 	} else if (DISPLAY_VER(dev_priv) >= 6) {
 		u32 sskpd = intel_uncore_read(uncore, MCH_SSKPD);
 
-		wm[0] = (sskpd >> SSKPD_WM0_SHIFT) & SSKPD_WM_MASK;
-		wm[1] = (sskpd >> SSKPD_WM1_SHIFT) & SSKPD_WM_MASK;
-		wm[2] = (sskpd >> SSKPD_WM2_SHIFT) & SSKPD_WM_MASK;
-		wm[3] = (sskpd >> SSKPD_WM3_SHIFT) & SSKPD_WM_MASK;
+		wm[0] = REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
+		wm[1] = REG_FIELD_GET(SSKPD_WM1_MASK_SNB, sskpd);
+		wm[2] = REG_FIELD_GET(SSKPD_WM2_MASK_SNB, sskpd);
+		wm[3] = REG_FIELD_GET(SSKPD_WM3_MASK_SNB, sskpd);
 	} else if (DISPLAY_VER(dev_priv) >= 5) {
 		u32 mltr = intel_uncore_read(uncore, MLTR_ILK);
 
 		/* ILK primary LP0 latency is 700 ns */
 		wm[0] = 7;
-		wm[1] = (mltr >> MLTR_WM1_SHIFT) & ILK_SRLT_MASK;
-		wm[2] = (mltr >> MLTR_WM2_SHIFT) & ILK_SRLT_MASK;
+		wm[1] = REG_FIELD_GET(MLTR_WM1_MASK, mltr);
+		wm[2] = REG_FIELD_GET(MLTR_WM2_MASK, mltr);
 	} else {
 		MISSING_CASE(INTEL_DEVID(dev_priv));
 	}
@@ -7394,7 +7394,7 @@ static void gen6_check_mch_setup(struct drm_i915_private *dev_priv)
 	u32 tmp;
 
 	tmp = intel_uncore_read(&dev_priv->uncore, MCH_SSKPD);
-	if ((tmp & MCH_SSKPD_WM0_MASK) != MCH_SSKPD_WM0_VAL)
+	if (REG_FIELD_GET(SSKPD_WM0_MASK_SNB, tmp) != 12)
 		drm_dbg_kms(&dev_priv->drm,
 			    "Wrong MCH_SSKPD value: 0x%08x This can cause underruns.\n",
 			    tmp);
-- 
2.34.1

