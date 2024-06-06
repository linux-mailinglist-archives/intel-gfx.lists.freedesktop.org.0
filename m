Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B478FE503
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:16:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DF3B10E8F4;
	Thu,  6 Jun 2024 11:16:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nv9GoHJr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6943310E8F4
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672580; x=1749208580;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w+kl0piwzeO91MGT5ylCfSw/zbFxBOl1C7oOvL2BR/s=;
 b=Nv9GoHJrqOpwFHY0soh49CG7p8rInIDFyaFN5NAHoHrTznJZcKPdLirx
 oSdMM/XwAcaQDhhzZgmojjfihIch1kBE2c5mbd4XS7tl77hEyqJ+sv0TC
 1xVp+FRSLTviiKSpQNLz/pZpgrwFUe/dORUh1hrfx7ndSHKnNvWs7urUt
 qq5RLn33ROHefOLLRtHU51OCWrBG1Ke8NrOLhuicMQNDpIyCqzfsX/A+Y
 iMjkLWImB46SvzqVoWxZiW9BkY3OaHllIMOB4fgilBILFE637/SwsjU/O
 TzQvNyewBTMM+FI9zv2vVUnp2n8J32FfBIEVC/kTjPmwOc6oFi856opXL w==;
X-CSE-ConnectionGUID: 7MI5FkJBRr2oaFwCFqqamA==
X-CSE-MsgGUID: 2WlwieUERB2bSCC/gYlf/A==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14468043"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14468043"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:20 -0700
X-CSE-ConnectionGUID: HMI5XRviRO+smZnfBGL2Kw==
X-CSE-MsgGUID: ioSMFkjkQS654Mc/CiE7fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38003782"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 03/14] drm/i915/dram: separate fsb freq detection from mem
 freq
Date: Thu,  6 Jun 2024 14:15:55 +0300
Message-Id: <751af8b3cf9a571da16ae6727053974fe4544ddb.1717672515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717672515.git.jani.nikula@intel.com>
References: <cover.1717672515.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

To simplify further changes, add separate functions for reading the fsb
frequency.

This ends up reading CLKCFG register twice, but it's not a big deal.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 106 +++++++++++++++-----------
 1 file changed, 60 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 18a879e98f03..3dce9b9a2c5e 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -49,21 +49,6 @@ static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
 
 	tmp = intel_uncore_read(&dev_priv->uncore, CLKCFG);
 
-	switch (tmp & CLKCFG_FSB_MASK) {
-	case CLKCFG_FSB_533:
-		dev_priv->fsb_freq = 533; /* 133*4 */
-		break;
-	case CLKCFG_FSB_800:
-		dev_priv->fsb_freq = 800; /* 200*4 */
-		break;
-	case CLKCFG_FSB_667:
-		dev_priv->fsb_freq =  667; /* 167*4 */
-		break;
-	case CLKCFG_FSB_400:
-		dev_priv->fsb_freq = 400; /* 100*4 */
-		break;
-	}
-
 	switch (tmp & CLKCFG_MEM_MASK) {
 	case CLKCFG_MEM_533:
 		dev_priv->mem_freq = 533;
@@ -83,7 +68,7 @@ static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
 
 static void ilk_detect_mem_freq(struct drm_i915_private *dev_priv)
 {
-	u16 ddrpll, csipll;
+	u16 ddrpll;
 
 	ddrpll = intel_uncore_read16(&dev_priv->uncore, DDRMPLL1);
 	switch (ddrpll & 0xff) {
@@ -105,36 +90,6 @@ static void ilk_detect_mem_freq(struct drm_i915_private *dev_priv)
 		dev_priv->mem_freq = 0;
 		break;
 	}
-
-	csipll = intel_uncore_read16(&dev_priv->uncore, CSIPLL0);
-	switch (csipll & 0x3ff) {
-	case 0x00c:
-		dev_priv->fsb_freq = 3200;
-		break;
-	case 0x00e:
-		dev_priv->fsb_freq = 3733;
-		break;
-	case 0x010:
-		dev_priv->fsb_freq = 4266;
-		break;
-	case 0x012:
-		dev_priv->fsb_freq = 4800;
-		break;
-	case 0x014:
-		dev_priv->fsb_freq = 5333;
-		break;
-	case 0x016:
-		dev_priv->fsb_freq = 5866;
-		break;
-	case 0x018:
-		dev_priv->fsb_freq = 6400;
-		break;
-	default:
-		drm_dbg(&dev_priv->drm, "unknown fsb frequency 0x%04x\n",
-			csipll & 0x3ff);
-		dev_priv->fsb_freq = 0;
-		break;
-	}
 }
 
 static void chv_detect_mem_freq(struct drm_i915_private *i915)
@@ -192,6 +147,64 @@ static void detect_mem_freq(struct drm_i915_private *i915)
 		drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
 }
 
+static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
+{
+	u32 fsb;
+
+	fsb = intel_uncore_read(&i915->uncore, CLKCFG) & CLKCFG_FSB_MASK;
+
+	switch (fsb) {
+	case CLKCFG_FSB_400:
+		return 400;
+	case CLKCFG_FSB_533:
+		return 533;
+	case CLKCFG_FSB_667:
+		return 667;
+	case CLKCFG_FSB_800:
+		return 800;
+	}
+
+	return 0;
+}
+
+static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
+{
+	u16 fsb;
+
+	fsb = intel_uncore_read16(&dev_priv->uncore, CSIPLL0) & 0x3ff;
+
+	switch (fsb) {
+	case 0x00c:
+		return 3200;
+	case 0x00e:
+		return 3733;
+	case 0x010:
+		return 4266;
+	case 0x012:
+		return 4800;
+	case 0x014:
+		return 5333;
+	case 0x016:
+		return 5866;
+	case 0x018:
+		return 6400;
+	default:
+		drm_dbg(&dev_priv->drm, "unknown fsb frequency 0x%04x\n", fsb);
+		return 0;
+	}
+}
+
+static void detect_fsb_freq(struct drm_i915_private *i915)
+{
+	if (GRAPHICS_VER(i915) == 5)
+		i915->fsb_freq = ilk_fsb_freq(i915);
+	else if (IS_PINEVIEW(i915))
+		i915->fsb_freq = pnv_fsb_freq(i915);
+
+	if (i915->fsb_freq)
+		drm_dbg(&i915->drm, "FSB frequency: %d MHz\n", i915->fsb_freq);
+}
+
 static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
 {
 	return dimm->ranks * 64 / (dimm->width ?: 1);
@@ -661,6 +674,7 @@ void intel_dram_detect(struct drm_i915_private *i915)
 	struct dram_info *dram_info = &i915->dram_info;
 	int ret;
 
+	detect_fsb_freq(i915);
 	detect_mem_freq(i915);
 
 	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
-- 
2.39.2

