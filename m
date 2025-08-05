Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE4AB1B0D7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 11:18:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9570410E61F;
	Tue,  5 Aug 2025 09:18:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JZv8Ev7K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA1410E621;
 Tue,  5 Aug 2025 09:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754385521; x=1785921521;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MeMOhOQXuqu8PUfKaAdqrsOmOdOTaJxhIj+NUWIabbM=;
 b=JZv8Ev7KK5fWIFmPcm1bqHz16RNHxQx0/VkVMaJBDzJ8erBcqUgrPEOw
 yfavn7SptiKR3f3RkJ3BcPvwLsoFhRfDMKA7Zp2UNsCB6HB/XgGsTaMhA
 OTPxE6BptvThXcrUAUeo950Aa1uLeW3zHCW1KVqTTZT50TvzZHNc3AFBq
 U4l3ZJyAilwTIPrfnkoC1BkcTtgDCG8DCNl48fByzqkcOMXjSUbzJ6FKs
 GZEUSPYgfDUaO4tGkmaO+eyWmOkzIdQEDSyjWoKt7tQ0l8Knrf2aXZVrx
 WMJUId6siMhQpOYztxTTrIGlr4dXqUAcMgxj8AQVPEEEIGsWA1n2J1hTx A==;
X-CSE-ConnectionGUID: zeEYC+mbQnm8uZNsIrkGyQ==
X-CSE-MsgGUID: fuFPLZu9Q96DpzRZmITh5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60504309"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60504309"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:18:41 -0700
X-CSE-ConnectionGUID: jReYU4MxQHuXFg4NiN1zZg==
X-CSE-MsgGUID: Z0VjY92iTO+Me61DQRk4RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="195398047"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:18:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/12] drm/i915: add vlv_clock_get_czclk()
Date: Tue,  5 Aug 2025 12:18:15 +0300
Message-Id: <54fec0caf4f657893418e38d778fe60a155902b7.1754385408.git.jani.nikula@intel.com>
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

Add vlv_clock_get_czclk() helper to avoid looking at i915->czclk_freq
directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   |  3 +--
 drivers/gpu/drm/i915/display/intel_display.c | 20 ++++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/i915/gt/intel_rc6.c          |  3 ++-
 drivers/gpu/drm/i915/gt/intel_rps.c          |  3 ++-
 5 files changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 59997dc95984..8f6b31bfe7c0 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -629,7 +629,6 @@ static void vlv_get_cdclk(struct intel_display *display,
 
 static void vlv_program_pfi_credits(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	unsigned int credits, default_credits;
 
 	if (display->platform.cherryview)
@@ -637,7 +636,7 @@ static void vlv_program_pfi_credits(struct intel_display *display)
 	else
 		default_credits = PFI_CREDIT(8);
 
-	if (display->cdclk.hw.cdclk >= dev_priv->czclk_freq) {
+	if (display->cdclk.hw.cdclk >= vlv_clock_get_czclk(display->drm)) {
 		/* CHV suggested value is 31 or 63 */
 		if (display->platform.cherryview)
 			credits = PFI_CREDIT_63;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fdd29d9256ed..117b6c423a4c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -186,25 +186,33 @@ int vlv_get_cck_clock_hpll(struct drm_device *drm,
 	return hpll;
 }
 
-int vlv_clock_get_gpll(struct drm_device *drm)
+int vlv_clock_get_czclk(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
+	if (!i915->czclk_freq)
+		i915->czclk_freq = vlv_get_cck_clock_hpll(drm, "czclk",
+							  CCK_CZ_CLOCK_CONTROL);
+
+	return i915->czclk_freq;
+}
+
+int vlv_clock_get_gpll(struct drm_device *drm)
+{
 	return vlv_get_cck_clock(drm, "GPLL ref", CCK_GPLL_CLOCK_CONTROL,
-				 i915->czclk_freq);
+				 vlv_clock_get_czclk(drm));
 }
 
 void intel_update_czclk(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	int czclk_freq;
 
 	if (!display->platform.valleyview && !display->platform.cherryview)
 		return;
 
-	dev_priv->czclk_freq = vlv_get_cck_clock_hpll(display->drm, "czclk",
-						      CCK_CZ_CLOCK_CONTROL);
+	czclk_freq = vlv_clock_get_czclk(display->drm);
 
-	drm_dbg_kms(display->drm, "CZ clock rate: %d kHz\n", dev_priv->czclk_freq);
+	drm_dbg_kms(display->drm, "CZ clock rate: %d kHz\n", czclk_freq);
 }
 
 static bool is_hdr_mode(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 7ae899b8787a..811066a9e69d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -440,6 +440,7 @@ int vlv_get_cck_clock(struct drm_device *drm,
 		      const char *name, u32 reg, int ref_freq);
 int vlv_get_cck_clock_hpll(struct drm_device *drm,
 			   const char *name, u32 reg);
+int vlv_clock_get_czclk(struct drm_device *drm);
 int vlv_clock_get_gpll(struct drm_device *drm);
 bool intel_has_pending_fb_unpin(struct intel_display *display);
 void intel_encoder_destroy(struct drm_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 9ca42589da4d..0fd23b04d3f9 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -6,6 +6,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/string_helpers.h>
 
+#include "display/intel_display.h"
 #include "gem/i915_gem_region.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -802,7 +803,7 @@ u64 intel_rc6_residency_ns(struct intel_rc6 *rc6, enum intel_rc6_res_type id)
 	/* On VLV and CHV, residency time is in CZ units rather than 1.28us */
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
 		mul = 1000000;
-		div = i915->czclk_freq;
+		div = vlv_clock_get_czclk(&i915->drm);
 		overflow_hw = BIT_ULL(40);
 		time_hw = vlv_residency_raw(uncore, reg);
 	} else {
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index e2b5cdf6b7cb..664ffe02dc28 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1770,6 +1770,7 @@ static void vlv_c0_read(struct intel_uncore *uncore, struct intel_rps_ei *ei)
 
 static u32 vlv_wa_c0_ei(struct intel_rps *rps, u32 pm_iir)
 {
+	struct drm_i915_private *i915 = rps_to_i915(rps);
 	struct intel_uncore *uncore = rps_to_uncore(rps);
 	const struct intel_rps_ei *prev = &rps->ei;
 	struct intel_rps_ei now;
@@ -1786,7 +1787,7 @@ static u32 vlv_wa_c0_ei(struct intel_rps *rps, u32 pm_iir)
 
 		time = ktime_us_delta(now.ktime, prev->ktime);
 
-		time *= rps_to_i915(rps)->czclk_freq;
+		time *= vlv_clock_get_czclk(&i915->drm);
 
 		/* Workload can be split between render + media,
 		 * e.g. SwapBuffers being blitted in X after being rendered in
-- 
2.39.5

