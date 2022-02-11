Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCCD4B20FE
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 10:06:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 968B110EA2C;
	Fri, 11 Feb 2022 09:06:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0BDE10EA30
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644570413; x=1676106413;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=AoNeWFTbckVFeS8Gpae8K1Ok56Zsr0qPg9x/G91JUbE=;
 b=OGsYi037Man8VvltXm10KlsW3xbJhhs/dBUsocPG+9yoXNkygeh9UBJ3
 Hlw9APih0eV5FuCnSTmxcPFOrx/lWHI5G5Ggwvrcnr/4ASPyTDxrbU97G
 FhHvDxpsshWL/tQ1SdZ1LpGRpfFIfTYxscw2aXGSmT8P6BYb65CwYygIX
 m8pEOXOBtiK6IcED0xYPbjsSqbTrC7Sq8pvbQneraR6zBtjGkQJJx8hHi
 bewT+dF37Ft/yj1bpLza4C6LlWQuo0yT4GHGG4HcexG6iYwho8FPRBVwY
 7BCqTUySgT/SpHJqUT6jR9/bjRZN9WLhWQPd6P6L2crNcSaRbHlah33HP w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="233250718"
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="233250718"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 01:06:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,360,1635231600"; d="scan'208";a="623162498"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 11 Feb 2022 01:06:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Feb 2022 11:06:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Feb 2022 11:06:28 +0200
Message-Id: <20220211090629.15555-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] drm/i915: Clean up SSKPD/MLTR defines
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

Give names to the SSKPD/MLTR fields, and use the
REG_GENMASK* and REG_FIELD_GET*.

Also drop the bogus non-mirrored SSKP register define.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 27 ++++++++++++---------------
 drivers/gpu/drm/i915/intel_pm.c | 24 ++++++++++++------------
 2 files changed, 24 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 87c92314ee26..278c9cbc6f3c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1896,10 +1896,17 @@
 #define   MAD_DIMM_A_SIZE_SHIFT		0
 #define   MAD_DIMM_A_SIZE_MASK		(0xff << MAD_DIMM_A_SIZE_SHIFT)
 
-/* snb MCH registers for priority tuning */
 #define MCH_SSKPD			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5d10)
-#define   MCH_SSKPD_WM0_MASK		0x3f
-#define   MCH_SSKPD_WM0_VAL		0xc
+#define   SSKPD_NEW_WM0_MASK_HSW	REG_GENMASK64(63, 56)
+#define   SSKPD_WM4_MASK_HSW		REG_GENMASK64(40, 32)
+#define   SSKPD_WM3_MASK_HSW		REG_GENMASK64(28, 20)
+#define   SSKPD_WM2_MASK_HSW		REG_GENMASK64(19, 12)
+#define   SSKPD_WM1_MASK_HSW		REG_GENMASK64(11, 4)
+#define   SSKPD_OLD_WM0_MASK_HSW	REG_GENMASK64(3, 0)
+#define   SSKPD_WM3_MASK_SNB		REG_GENMASK(29, 24)
+#define   SSKPD_WM2_MASK_SNB		REG_GENMASK(21, 16)
+#define   SSKPD_WM1_MASK_SNB		REG_GENMASK(13, 8)
+#define   SSKPD_WM0_MASK_SNB		REG_GENMASK(5, 0)
 
 /* Clocking configuration register */
 #define CLKCFG			_MMIO(MCHBAR_MIRROR_BASE + 0xc00)
@@ -4321,19 +4328,9 @@
 
 /* Memory latency timer register */
 #define MLTR_ILK		_MMIO(0x11222)
-#define  MLTR_WM1_SHIFT		0
-#define  MLTR_WM2_SHIFT		8
 /* the unit of memory self-refresh latency time is 0.5us */
-#define  ILK_SRLT_MASK		0x3f
-
-
-/* the address where we get all kinds of latency value */
-#define SSKPD			_MMIO(0x5d10)
-#define SSKPD_WM_MASK		0x3f
-#define SSKPD_WM0_SHIFT		0
-#define SSKPD_WM1_SHIFT		8
-#define SSKPD_WM2_SHIFT		16
-#define SSKPD_WM3_SHIFT		24
+#define  MLTR_WM2_MASK		REG_GENMASK(13, 8)
+#define  MLTR_WM1_MASK		REG_GENMASK(5, 0)
 
 /*
  * The two pipe frame counter registers are not synchronized, so
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 34e46a9b8300..605944551e1b 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2946,27 +2946,27 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
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
-- 
2.34.1

