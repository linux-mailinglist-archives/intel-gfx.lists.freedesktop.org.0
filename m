Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CE9B2C441
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 14:54:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79B4810E5EA;
	Tue, 19 Aug 2025 12:54:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fIwkoScm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B62C210E5EB;
 Tue, 19 Aug 2025 12:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755608068; x=1787144068;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=G5fAYbv7ZpTEc8F6qN2FPtiLuLhXQbhsaqpHMUa3wYY=;
 b=fIwkoScm0+8bIbJTrfilNOiwVPMI8d6jd25w+889cpanJ2hfaX0z8zdz
 a5GIV9Ekq77vvdxgebbMXa56wcjGL1MPss9VM6++xNqmEzvpL1a2pJsj/
 55F7u7/bKhrCw2Fngp3AJZaav4rTi1VW3fzvlEb52qpX7clnR5XmZdxAY
 fxotqg1QtNeA2EGa8T6AS90770FdLMdMLUAcvlcHS08nSa2jyM28Cargh
 rW6aphBmyNjqEeDX6kFNSPV7rcL2qn4aRYibpt9lQIv9VM5Y4VDk0Y8g6
 MSQUncOpeFmCWKng9EJD3CCMEeg3D9mzDGWgXs+QkY4lrnsC7/rds+ed8 w==;
X-CSE-ConnectionGUID: Msv2+wIHSjeXKfy/m0WwlQ==
X-CSE-MsgGUID: wbiAHaMpQMmpqNcppy/5Ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="69222174"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="69222174"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:28 -0700
X-CSE-ConnectionGUID: ID8dPTX8RIi9384damsDvQ==
X-CSE-MsgGUID: Tl3xNDZYT/WX/kNtTQPVRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168089272"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 08/12] drm/i915: cache the results in
 vlv_clock_get_hpll_vco() and use it more
Date: Tue, 19 Aug 2025 15:53:38 +0300
Message-ID: <fcf1795b80124ffca9c520b5209e76f81b5d8584.1755607980.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1755607980.git.jani.nikula@intel.com>
References: <cover.1755607980.git.jani.nikula@intel.com>
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
index 2b3f8b95caca..bdcf7adfca12 100644
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
index ba1c13d2011d..4f1d60b42063 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -144,13 +144,18 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
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
@@ -172,15 +177,11 @@ static int vlv_get_cck_clock(struct drm_device *drm,
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
2.47.2

