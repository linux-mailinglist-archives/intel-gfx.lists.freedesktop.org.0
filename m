Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E05F4B55240
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CD3710EC89;
	Fri, 12 Sep 2025 14:49:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FGjHHjNt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EACE10EC89;
 Fri, 12 Sep 2025 14:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757688597; x=1789224597;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cvpku1nGjIIZVBjHtgMCCwVxMHUhcXgO30Kui3PsAo4=;
 b=FGjHHjNtiJryyJY+69cXdmFbjzDNZcgaxb6kMosQmtn7VCVlp3xIDdBT
 NnFLlgdv88tjlCyzKZRJyIBy5ng4LYLkqXt7BrVazciaip9Z2stqeL8uJ
 4P52B12D2QNfJVzl9DA8lZzy8Fzp+gN6b2Dp9D2OrhGSMkWxNUm4xiw4y
 in8t+qkALltcRpsWMo8ULAs8mhwewoHzehcvzyYwR5mUA4/eqQCUwYXMd
 g6AK97QmjGVMBE4WwOehM1V5ZfEqRczqyN8Y5H6IjGAEqPJOFkoPdEZoJ
 QtDI2Dl5AggAnc8mbDJkH4QtWtCfY+dpImUcF5uBqmVNdkmDpLomYnegM w==;
X-CSE-ConnectionGUID: NjsBx/SXRayH4N4WX511sQ==
X-CSE-MsgGUID: zsZnDcCzTni+JtuUtoYy3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="63858247"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="63858247"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:57 -0700
X-CSE-ConnectionGUID: 07gbxg4HTMSgiZ4PEMx/yg==
X-CSE-MsgGUID: ajvFTVYBQM6EFpufUUR/eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="174424157"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.212])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 michal.grzelak@intel.com
Subject: [PATCH v2 10/15] drm/i915: cache the results in
 vlv_clock_get_hpll_vco() and use it more
Date: Fri, 12 Sep 2025 17:48:49 +0300
Message-ID: <14695618682d8d8fad1adc485de7a122c8e1494a.1757688216.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1757688216.git.jani.nikula@intel.com>
References: <cover.1757688216.git.jani.nikula@intel.com>
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

Use vlv_clock_get_hpll_vco() helper more to avoid looking at
i915->hpll_freq directly. Cache and return the cached results to avoid
repeated lookups.

v2: Rebase

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 10 +++-----
 drivers/gpu/drm/i915/display/intel_display.c | 27 ++++++++------------
 2 files changed, 14 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index ea1e6d964764..e77efa0f33ed 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -563,8 +563,7 @@ static void hsw_get_cdclk(struct intel_display *display,
 
 static int vlv_calc_cdclk(struct intel_display *display, int min_cdclk)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	int freq_320 = (dev_priv->hpll_freq <<  1) % 320000 != 0 ?
+	int freq_320 = (vlv_clock_get_hpll_vco(display->drm) <<  1) % 320000 != 0 ?
 		333333 : 320000;
 
 	/*
@@ -584,8 +583,6 @@ static int vlv_calc_cdclk(struct intel_display *display, int min_cdclk)
 
 static u8 vlv_calc_voltage_level(struct intel_display *display, int cdclk)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	if (display->platform.valleyview) {
 		if (cdclk >= 320000) /* jump to highest voltage for 400MHz too */
 			return 2;
@@ -599,7 +596,7 @@ static u8 vlv_calc_voltage_level(struct intel_display *display, int cdclk)
 		 * hardware has shown that we just need to write the desired
 		 * CCK divider into the Punit register.
 		 */
-		return DIV_ROUND_CLOSEST(dev_priv->hpll_freq << 1, cdclk) - 1;
+		return DIV_ROUND_CLOSEST(vlv_clock_get_hpll_vco(display->drm) << 1, cdclk) - 1;
 	}
 }
 
@@ -664,7 +661,6 @@ static void vlv_set_cdclk(struct intel_display *display,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int cdclk = cdclk_config->cdclk;
 	u32 val, cmd = cdclk_config->voltage_level;
 	intel_wakeref_t wakeref;
@@ -709,7 +705,7 @@ static void vlv_set_cdclk(struct intel_display *display,
 	if (cdclk == 400000) {
 		u32 divider;
 
-		divider = DIV_ROUND_CLOSEST(dev_priv->hpll_freq << 1,
+		divider = DIV_ROUND_CLOSEST(vlv_clock_get_hpll_vco(display->drm) << 1,
 					    cdclk) - 1;
 
 		/* adjust cdclk divider */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 022f32ffd697..7b5379262a37 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -144,17 +144,20 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 /* returns HPLL frequency in kHz */
 int vlv_clock_get_hpll_vco(struct drm_device *drm)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
 	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
 
-	vlv_cck_get(drm);
-
-	/* Obtain SKU information */
-	hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
-		CCK_FUSE_HPLL_FREQ_MASK;
+	if (!i915->hpll_freq) {
+		vlv_cck_get(drm);
+		/* Obtain SKU information */
+		hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
+			CCK_FUSE_HPLL_FREQ_MASK;
+		vlv_cck_put(drm);
 
-	vlv_cck_put(drm);
+		i915->hpll_freq = vco_freq[hpll_freq] * 1000;
+	}
 
-	return vco_freq[hpll_freq] * 1000;
+	return i915->hpll_freq;
 }
 
 static int vlv_get_cck_clock(struct drm_device *drm,
@@ -179,15 +182,7 @@ static int vlv_get_cck_clock(struct drm_device *drm,
 static int vlv_get_cck_clock_hpll(struct drm_device *drm,
 				  const char *name, u32 reg)
 {
-	struct drm_i915_private *dev_priv = to_i915(drm);
-	int hpll;
-
-	if (dev_priv->hpll_freq == 0)
-		dev_priv->hpll_freq = vlv_clock_get_hpll_vco(drm);
-
-	hpll = vlv_get_cck_clock(drm, name, reg, dev_priv->hpll_freq);
-
-	return hpll;
+	return vlv_get_cck_clock(drm, name, reg, vlv_clock_get_hpll_vco(drm));
 }
 
 int vlv_clock_get_hrawclk(struct drm_device *drm)
-- 
2.47.3

