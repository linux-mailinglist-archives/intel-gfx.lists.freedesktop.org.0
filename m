Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D57908746
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 11:23:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B4E310ECA2;
	Fri, 14 Jun 2024 09:23:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uw/VdX7C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B80A010ECA2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 09:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718357006; x=1749893006;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QwKNhBBo7Z2XxebW7/OhU3jDtSmhxl84J4VcRIxEdJ4=;
 b=Uw/VdX7C3BFUq+3MdW1zBB+qh0f6bFEDDPekSGcTssRwdIFHUBgVx69g
 AiA5SdhXYAOyWJsJiYV7cZ84wVVn4ZTvJIywLTZi0rbaE7TqhsjOPQDDW
 zKX90jAlq2vLTFAgKwSkIfUm+41eHHJm7CGLsjb+cQx/UMZsyZKjUmdLT
 sNPAhFM8Opd54squwziUXpQwWm2vn773F08BzWQgHoskRuoEsZOKS8Ieb
 rOiO3sN+5GfkR1pzQg9btjKB5lnhd3t4JX1C8xPV3smFweTp8ZB1Xdj1w
 cr9rbTdgJ19xcq123ccwtiB65pkjS5ESj9+hVOLkmvqL2h07R233TYt/C g==;
X-CSE-ConnectionGUID: SE3kyjioTFOCKRwA6VITYg==
X-CSE-MsgGUID: hUTTGVuTSvmBGL98i56npQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="25908829"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="25908829"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:23:21 -0700
X-CSE-ConnectionGUID: /4Y7qvaKRw2Y8YhwF3HTWA==
X-CSE-MsgGUID: O6/WZaqgSJe6AfW6zTeZdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40545709"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:23:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [CI 07/11] drm/i915: convert fsb_freq and mem_freq to kHz
Date: Fri, 14 Jun 2024 12:22:35 +0300
Message-Id: <17fe2544b876549f63fac0f956273f5f282081b3.1718356614.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718356614.git.jani.nikula@intel.com>
References: <cover.1718356614.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c |  6 ++--
 drivers/gpu/drm/i915/gt/intel_rps.c    | 11 +++---
 drivers/gpu/drm/i915/soc/intel_dram.c  | 50 +++++++++++++-------------
 3 files changed, 34 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index f70ac2f06968..2b7c3d270b17 100644
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

