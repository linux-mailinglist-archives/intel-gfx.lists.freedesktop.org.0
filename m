Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C372D583666
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43B2C10EB8A;
	Thu, 28 Jul 2022 01:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14BFD10E983
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972081; x=1690508081;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TXQ2nb4l8k2vyqTh4o9bS4QW83siFx1a/HS0Fvwi9D4=;
 b=MOJLgHbBwU8KXb3iq2qJbmy7HuQ/eBUjsyGQr5fxTxdaUxsQvLYNBLKI
 oB6cuE/aLVw07GUj49CT6+cd5JDbg9a69VpjncmTDlbhAfz2ckdjp96wG
 NSNLrV58cZSOeqIGFOPz8z0fsIoC8KwNwWXmn5uHwiCySplvAjYLGCa0H
 ij57W2StU3Nu4AcKRaUXWil5fhinAWUxRL6gyF7EB9zGToDXY4zbsNZ+M
 v3fqtwapEE/2nZOHvBmvYgT9kFE4Fbbf5UZz+J53swiJj9K1wKAzBjJv0
 AgAzB0jiJSTOGWIldx1qxHk7HHt0Zwelfxg+60H4M0jyu6DDROyPbWbma Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="374693661"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="374693661"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659457011"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:40 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:10 -0700
Message-Id: <20220728013420.3750388-14-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/23] drm/i915/mtl: memory latency data from
 LATENCY_LPX_LPY for WM
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

Since Xe LPD+, Memory latency data are in LATENCY_LPX_LPY registers
instead of GT driver mailbox.

Bspec: 64608

Cc: Matt Roper <matthew.d.roper@intel.com>
Original Author: Caz Yokoyama
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h |   7 +++
 drivers/gpu/drm/i915/intel_pm.c | 105 +++++++++++++++++++-------------
 2 files changed, 71 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6087d40eed70..23b50d671550 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8754,4 +8754,11 @@ enum skl_power_gate {
 #define GEN12_STATE_ACK_DEBUG		_MMIO(0x20BC)
 
 #define MTL_MEDIA_GSI_BASE		0x380000
+
+#define MTL_LATENCY_LP0_LP1		_MMIO(0x45780)
+#define MTL_LATENCY_LP2_LP3		_MMIO(0x45784)
+#define MTL_LATENCY_LP4_LP5		_MMIO(0x45788)
+#define  MTL_LATENCY_LEVEL0_2_4_MASK	REG_GENMASK(12, 0)
+#define  MTL_LATENCY_LEVEL1_3_5_MASK	REG_GENMASK(28, 16)
+
 #endif /* _I915_REG_H_ */
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index ef7553b494ea..fac565d23d57 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2861,16 +2861,75 @@ static void ilk_compute_wm_level(const struct drm_i915_private *dev_priv,
 	result->enable = true;
 }
 
+static void
+adjust_wm_latency(u16 wm[], int max_level, int read_latency,
+		  bool wm_lv_0_adjust_needed)
+{
+	int i, level;
+
+	/*
+	 * If a level n (n > 1) has a 0us latency, all levels m (m >= n)
+	 * need to be disabled. We make sure to sanitize the values out
+	 * of the punit to satisfy this requirement.
+	 */
+	for (level = 1; level <= max_level; level++) {
+		if (wm[level] == 0) {
+			for (i = level + 1; i <= max_level; i++)
+				wm[i] = 0;
+
+			max_level = level - 1;
+			break;
+		}
+	}
+
+	/*
+	 * WaWmMemoryReadLatency
+	 *
+	 * punit doesn't take into account the read latency so we need
+	 * to add proper adjustement to each valid level we retrieve
+	 * from the punit when level 0 response data is 0us.
+	 */
+	if (wm[0] == 0) {
+		for (level = 0; level <= max_level; level++)
+			wm[level] += read_latency;
+	}
+
+	/*
+	 * WA Level-0 adjustment for 16GB DIMMs: SKL+
+	 * If we could not get dimm info enable this WA to prevent from
+	 * any underrun. If not able to get Dimm info assume 16GB dimm
+	 * to avoid any underrun.
+	 */
+	if (wm_lv_0_adjust_needed)
+		wm[0] += 1;
+}
+
 static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
 				  u16 wm[])
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
+	int max_level = ilk_wm_max_level(dev_priv);
 
-	if (DISPLAY_VER(dev_priv) >= 9) {
+	if (DISPLAY_VER(dev_priv) >= 14) {
 		u32 val;
-		int ret, i;
-		int level, max_level = ilk_wm_max_level(dev_priv);
+
+		val = intel_uncore_read(uncore, MTL_LATENCY_LP0_LP1);
+		wm[0] = REG_FIELD_GET(MTL_LATENCY_LEVEL0_2_4_MASK, val);
+		wm[1] = REG_FIELD_GET(MTL_LATENCY_LEVEL1_3_5_MASK, val);
+		val = intel_uncore_read(uncore, MTL_LATENCY_LP2_LP3);
+		wm[2] = REG_FIELD_GET(MTL_LATENCY_LEVEL0_2_4_MASK, val);
+		wm[3] = REG_FIELD_GET(MTL_LATENCY_LEVEL1_3_5_MASK, val);
+		val = intel_uncore_read(uncore, MTL_LATENCY_LP4_LP5);
+		wm[4] = REG_FIELD_GET(MTL_LATENCY_LEVEL0_2_4_MASK, val);
+		wm[5] = REG_FIELD_GET(MTL_LATENCY_LEVEL1_3_5_MASK, val);
+
+		adjust_wm_latency(wm, max_level, 6,
+				  dev_priv->dram_info.wm_lv_0_adjust_needed);
+	} else if (DISPLAY_VER(dev_priv) >= 9) {
+		int read_latency = DISPLAY_VER(dev_priv) >= 12 ? 3 : 2;
 		int mult = IS_DG2(dev_priv) ? 2 : 1;
+		u32 val;
+		int ret;
 
 		/* read the first set of memory latencies[0:3] */
 		val = 0; /* data0 to be programmed to 0 for first set */
@@ -2909,44 +2968,8 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
 		wm[7] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
 				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
 
-		/*
-		 * If a level n (n > 1) has a 0us latency, all levels m (m >= n)
-		 * need to be disabled. We make sure to sanitize the values out
-		 * of the punit to satisfy this requirement.
-		 */
-		for (level = 1; level <= max_level; level++) {
-			if (wm[level] == 0) {
-				for (i = level + 1; i <= max_level; i++)
-					wm[i] = 0;
-
-				max_level = level - 1;
-
-				break;
-			}
-		}
-
-		/*
-		 * WaWmMemoryReadLatency
-		 *
-		 * punit doesn't take into account the read latency so we need
-		 * to add proper adjustement to each valid level we retrieve
-		 * from the punit when level 0 response data is 0us.
-		 */
-		if (wm[0] == 0) {
-			u8 adjust = DISPLAY_VER(dev_priv) >= 12 ? 3 : 2;
-
-			for (level = 0; level <= max_level; level++)
-				wm[level] += adjust;
-		}
-
-		/*
-		 * WA Level-0 adjustment for 16GB DIMMs: SKL+
-		 * If we could not get dimm info enable this WA to prevent from
-		 * any underrun. If not able to get Dimm info assume 16GB dimm
-		 * to avoid any underrun.
-		 */
-		if (dev_priv->dram_info.wm_lv_0_adjust_needed)
-			wm[0] += 1;
+		adjust_wm_latency(wm, max_level, read_latency,
+				  dev_priv->dram_info.wm_lv_0_adjust_needed);
 	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
 		u64 sskpd = intel_uncore_read64(uncore, MCH_SSKPD);
 
-- 
2.25.1

