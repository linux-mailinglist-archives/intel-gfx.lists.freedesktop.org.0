Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A8AB1B0DD
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 11:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F5810E256;
	Tue,  5 Aug 2025 09:19:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mKXRu7yX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F291C89DA9;
 Tue,  5 Aug 2025 09:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754385550; x=1785921550;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X8ggPfDdmgPuETD6Xr7pLJmJCwmjTokT9BsIxyqaEtY=;
 b=mKXRu7yXxTv/Xh7NlmL3liFY0Jhh3vcromFdx9AszgYIkHPI6muBCS2Z
 4jWqFmePCp7fNuWSRZfbfd9x761rG7/ACR47lvveOTKfdsvepUZ9LlM3O
 /4Y5Hex+P96sRqE+CpvamFvhpNt/oSqJPb9uyPZ/IOXXso5lNfewclCZs
 H7QiPQdo4GZ8Lml+0sNe4EQefk+qtdhWF61aN+ijKgyBhn5hEJfZ4JNV6
 rTRWx2c/EAvDxBLP1v8YH1gvnYYs4RrZZDIK10q6Tm/Yr9gX6zZAChyvH
 92EkEss1zQiGOLqch8SFBhUGt2E3xXNFJ06pJwfHnUgRtOwgM9FXbOJ6E A==;
X-CSE-ConnectionGUID: vZvNeo3oTqala15/jHOwNA==
X-CSE-MsgGUID: MiBjo9/ETyeKqTQA39pFyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56566649"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="56566649"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:19:10 -0700
X-CSE-ConnectionGUID: RFqFquFrQUemWYVCeupDOg==
X-CSE-MsgGUID: QmYp0wvYQlqtoGDVIyAgoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164738374"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:19:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/12] drm/i915: cache the results in vlv_clock_get_hpll_vco()
 and use it more
Date: Tue,  5 Aug 2025 12:18:21 +0300
Message-Id: <f94f8f6606964a50c31fd31a9ba5720df88d7424.1754385408.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754385408.git.jani.nikula@intel.com>
References: <cover.1754385408.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 10 +++-------
 drivers/gpu/drm/i915/display/intel_display.c | 19 ++++++++++---------
 2 files changed, 13 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index e8c9ad7d8e82..180d4d7dc1da 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -562,8 +562,7 @@ static void hsw_get_cdclk(struct intel_display *display,
 
 static int vlv_calc_cdclk(struct intel_display *display, int min_cdclk)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	int freq_320 = (dev_priv->hpll_freq <<  1) % 320000 != 0 ?
+	int freq_320 = (vlv_clock_get_hpll_vco(display->drm) <<  1) % 320000 != 0 ?
 		333333 : 320000;
 
 	/*
@@ -583,8 +582,6 @@ static int vlv_calc_cdclk(struct intel_display *display, int min_cdclk)
 
 static u8 vlv_calc_voltage_level(struct intel_display *display, int cdclk)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-
 	if (display->platform.valleyview) {
 		if (cdclk >= 320000) /* jump to highest voltage for 400MHz too */
 			return 2;
@@ -598,7 +595,7 @@ static u8 vlv_calc_voltage_level(struct intel_display *display, int cdclk)
 		 * hardware has shown that we just need to write the desired
 		 * CCK divider into the Punit register.
 		 */
-		return DIV_ROUND_CLOSEST(dev_priv->hpll_freq << 1, cdclk) - 1;
+		return DIV_ROUND_CLOSEST(vlv_clock_get_hpll_vco(display->drm) << 1, cdclk) - 1;
 	}
 }
 
@@ -666,7 +663,6 @@ static void vlv_set_cdclk(struct intel_display *display,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int cdclk = cdclk_config->cdclk;
 	u32 val, cmd = cdclk_config->voltage_level;
 	intel_wakeref_t wakeref;
@@ -710,7 +706,7 @@ static void vlv_set_cdclk(struct intel_display *display,
 	if (cdclk == 400000) {
 		u32 divider;
 
-		divider = DIV_ROUND_CLOSEST(dev_priv->hpll_freq << 1,
+		divider = DIV_ROUND_CLOSEST(vlv_clock_get_hpll_vco(display->drm) << 1,
 					    cdclk) - 1;
 
 		/* adjust cdclk divider */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6fb7d14dba9e..077d0340ac2d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -143,13 +143,18 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 /* returns HPLL frequency in kHz */
 int vlv_clock_get_hpll_vco(struct drm_device *drm)
 {
+	struct drm_i915_private *i915 = to_i915(drm);
 	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
 
-	/* Obtain SKU information */
-	hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
-		CCK_FUSE_HPLL_FREQ_MASK;
+	if (!i915->hpll_freq) {
+		/* Obtain SKU information */
+		hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
+			CCK_FUSE_HPLL_FREQ_MASK;
+
+		i915->hpll_freq = vco_freq[hpll_freq] * 1000;
+	}
 
-	return vco_freq[hpll_freq] * 1000;
+	return i915->hpll_freq;
 }
 
 static int vlv_get_cck_clock(struct drm_device *drm,
@@ -171,15 +176,11 @@ static int vlv_get_cck_clock(struct drm_device *drm,
 static int vlv_get_cck_clock_hpll(struct drm_device *drm,
 				  const char *name, u32 reg)
 {
-	struct drm_i915_private *dev_priv = to_i915(drm);
 	int hpll;
 
 	vlv_cck_get(drm);
 
-	if (dev_priv->hpll_freq == 0)
-		dev_priv->hpll_freq = vlv_clock_get_hpll_vco(drm);
-
-	hpll = vlv_get_cck_clock(drm, name, reg, dev_priv->hpll_freq);
+	hpll = vlv_get_cck_clock(drm, name, reg, vlv_clock_get_hpll_vco(drm));
 
 	vlv_cck_put(drm);
 
-- 
2.39.5

