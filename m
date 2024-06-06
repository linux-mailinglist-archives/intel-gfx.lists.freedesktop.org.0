Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3568FE509
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:16:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B88D510E8F6;
	Thu,  6 Jun 2024 11:16:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UYBPClKS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D315110E8FA
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672595; x=1749208595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZydT6WMssmier0flDB0A7VHD7hLRIGY0hqaa7imBYfc=;
 b=UYBPClKSeg0fr7RH+Y9zldhj3NiBaKVXpELJGuV2786K9Nh1+dMkYDs1
 d84yBaM2s+Rch2deZzhnTuIOtvH6UksEk8eETXwCiONguirLkcV8u8j8c
 Z8FCFPQEPb6qsFvkmyLRtmvJQaFL99ZQHV1RlGvUGsjkCmHob/Pto1Bcl
 54rAJbg8MBaaetPO7sYSohL3U1I1yCx0wnUpo4Z8JhwRSy49xuOIzCrR/
 0m8CEeZ4QkbcS+PJIAVLRgwhRyoyCwFfh2cAQMI3s4pUIWYLTOBhuyhMA
 2MniIbkRHiBYPe0RPOCnIWIiJU8OnQ1GBC1nUxwxgjkXYJ3MxrzTH9y4m g==;
X-CSE-ConnectionGUID: pcyu0LcDSlyRB6cmJulYgw==
X-CSE-MsgGUID: n7w8CBViTWOag/yRkzBvtg==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="18123389"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18123389"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:34 -0700
X-CSE-ConnectionGUID: 5uD3KXMgTc6PkwlAfSY6Fw==
X-CSE-MsgGUID: aXymmYZPSx+hDAsZyFeTlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42862928"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 07/14] drm/i915: convert fsb_freq and mem_freq to kHz
Date: Thu,  6 Jun 2024 14:15:59 +0300
Message-Id: <1e3df6485c36998340dfbbfa643550c04f1a92f5.1717672515.git.jani.nikula@intel.com>
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

We'll want to use fsb frequency for deriving GT clock and rawclk
frequencies in the future. Increase the accuracy by converting to
kHz. Do the same for mem freq to be aligned.

Round the frequencies ending in 666 to 667.

v2: Also handle mem_freq in gen5_rps_init() (Ville)

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c |  6 ++--
 drivers/gpu/drm/i915/gt/intel_rps.c    | 11 +++---
 drivers/gpu/drm/i915/soc/intel_dram.c  | 50 +++++++++++++-------------
 3 files changed, 34 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index a63ecd5cf3b5..9e39c1afda7b 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -80,13 +80,13 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *
 
 		if (is_desktop == latency->is_desktop &&
 		    i915->is_ddr3 == latency->is_ddr3 &&
-		    i915->fsb_freq == latency->fsb_freq &&
-		    i915->mem_freq == latency->mem_freq)
+		    DIV_ROUND_CLOSEST(i915->fsb_freq, 1000) == latency->fsb_freq &&
+		    DIV_ROUND_CLOSEST(i915->mem_freq, 1000) == latency->mem_freq)
 			return latency;
 	}
 
 	drm_dbg_kms(&i915->drm,
-		    "Could not find CxSR latency for DDR%s, FSB %u MHz, MEM %u MHz\n",
+		    "Could not find CxSR latency for DDR%s, FSB %u kHz, MEM %u kHz\n",
 		    i915->is_ddr3 ? "3" : "2", i915->fsb_freq, i915->mem_freq);
 
 	return NULL;
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 70176be269d3..fa304ea088e4 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -265,10 +265,10 @@ static const struct cparams {
 	u16 c;
 } cparams[] = {
 	{ 1, 1333, 301, 28664 },
-	{ 1, 1066, 294, 24460 },
+	{ 1, 1067, 294, 24460 },
 	{ 1, 800, 294, 25192 },
 	{ 0, 1333, 276, 27605 },
-	{ 0, 1066, 276, 27605 },
+	{ 0, 1067, 276, 27605 },
 	{ 0, 800, 231, 23784 },
 };
 
@@ -280,15 +280,16 @@ static void gen5_rps_init(struct intel_rps *rps)
 	u32 rgvmodectl;
 	int c_m, i;
 
-	if (i915->fsb_freq <= 3200)
+	if (i915->fsb_freq <= 3200000)
 		c_m = 0;
-	else if (i915->fsb_freq <= 4800)
+	else if (i915->fsb_freq <= 4800000)
 		c_m = 1;
 	else
 		c_m = 2;
 
 	for (i = 0; i < ARRAY_SIZE(cparams); i++) {
-		if (cparams[i].i == c_m && cparams[i].t == i915->mem_freq) {
+		if (cparams[i].i == c_m &&
+		    cparams[i].t == DIV_ROUND_CLOSEST(i915->mem_freq, 1000)) {
 			rps->ips.m = cparams[i].m;
 			rps->ips.c = cparams[i].c;
 			break;
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 266ed6cfa485..ace9372244a4 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -56,11 +56,11 @@ static unsigned int pnv_mem_freq(struct drm_i915_private *dev_priv)
 
 	switch (tmp & CLKCFG_MEM_MASK) {
 	case CLKCFG_MEM_533:
-		return 533;
+		return 533333;
 	case CLKCFG_MEM_667:
-		return 667;
+		return 666667;
 	case CLKCFG_MEM_800:
-		return 800;
+		return 800000;
 	}
 
 	return 0;
@@ -73,13 +73,13 @@ static unsigned int ilk_mem_freq(struct drm_i915_private *dev_priv)
 	ddrpll = intel_uncore_read16(&dev_priv->uncore, DDRMPLL1);
 	switch (ddrpll & 0xff) {
 	case 0xc:
-		return 800;
+		return 800000;
 	case 0x10:
-		return 1066;
+		return 1066667;
 	case 0x14:
-		return 1333;
+		return 1333333;
 	case 0x18:
-		return 1600;
+		return 1600000;
 	default:
 		drm_dbg(&dev_priv->drm, "unknown memory frequency 0x%02x\n",
 			ddrpll & 0xff);
@@ -97,9 +97,9 @@ static unsigned int chv_mem_freq(struct drm_i915_private *i915)
 
 	switch ((val >> 2) & 0x7) {
 	case 3:
-		return 2000;
+		return 2000000;
 	default:
-		return 1600;
+		return 1600000;
 	}
 }
 
@@ -114,11 +114,11 @@ static unsigned int vlv_mem_freq(struct drm_i915_private *i915)
 	switch ((val >> 6) & 3) {
 	case 0:
 	case 1:
-		return 800;
+		return 800000;
 	case 2:
-		return 1066;
+		return 1066667;
 	case 3:
-		return 1333;
+		return 1333333;
 	}
 
 	return 0;
@@ -139,7 +139,7 @@ static void detect_mem_freq(struct drm_i915_private *i915)
 		i915->is_ddr3 = pnv_is_ddr3(i915);
 
 	if (i915->mem_freq)
-		drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
+		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
 }
 
 static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
@@ -150,13 +150,13 @@ static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
 
 	switch (fsb) {
 	case CLKCFG_FSB_400:
-		return 400;
+		return 400000;
 	case CLKCFG_FSB_533:
-		return 533;
+		return 533333;
 	case CLKCFG_FSB_667:
-		return 667;
+		return 666667;
 	case CLKCFG_FSB_800:
-		return 800;
+		return 800000;
 	}
 
 	return 0;
@@ -170,19 +170,19 @@ static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
 
 	switch (fsb) {
 	case 0x00c:
-		return 3200;
+		return 3200000;
 	case 0x00e:
-		return 3733;
+		return 3733333;
 	case 0x010:
-		return 4266;
+		return 4266667;
 	case 0x012:
-		return 4800;
+		return 4800000;
 	case 0x014:
-		return 5333;
+		return 5333333;
 	case 0x016:
-		return 5866;
+		return 5866667;
 	case 0x018:
-		return 6400;
+		return 6400000;
 	default:
 		drm_dbg(&dev_priv->drm, "unknown fsb frequency 0x%04x\n", fsb);
 		return 0;
@@ -197,7 +197,7 @@ static void detect_fsb_freq(struct drm_i915_private *i915)
 		i915->fsb_freq = pnv_fsb_freq(i915);
 
 	if (i915->fsb_freq)
-		drm_dbg(&i915->drm, "FSB frequency: %d MHz\n", i915->fsb_freq);
+		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
 }
 
 static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
-- 
2.39.2

