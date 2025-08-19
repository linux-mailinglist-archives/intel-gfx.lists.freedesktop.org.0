Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03184B2C436
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 14:54:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 916BE10E5EC;
	Tue, 19 Aug 2025 12:53:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iIz+sYrB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91DFB10E5E3;
 Tue, 19 Aug 2025 12:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755608039; x=1787144039;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VFhs4u5NL8cZTNiYE/zBvf8eJq+d9qOW2wszX5el+bs=;
 b=iIz+sYrB4YAqVVEoysD4aAE/ceUvLyqHyUH0lLie86//rj/EbU9Id5mQ
 K5+ZGFKJVmdeOV8TUlZZLhYdLxztL+wn7FT3RL73Lu1XtGHniZLU+84d/
 wXPjL4Bg8lEtH6IJVx0htyNbmq8YlrdG8bT8fxtbP5dX15bV6bY4kLakL
 VZlHpXEyrEY5IonVIEOYmRD7G2+s7pe86Ssr9zfDC4/3rWix29ayKrP+N
 h9FDf9+00QabxEMqo+NuvnPDJGCvg5Bmq7agZyJepNfwUws4SerFl/EqN
 8vr3SGokHLulVSKBVzXljA0hIe4vtuXLnXMwRfdvD7kNlt6Pf391UnoGg A==;
X-CSE-ConnectionGUID: r/42JlbdRcGbAak61KR5Aw==
X-CSE-MsgGUID: wd1G0OW6Q4iB73gULBMiRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="75300779"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="75300779"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:53:59 -0700
X-CSE-ConnectionGUID: uZQxmPltTt6I0/QTYaC94g==
X-CSE-MsgGUID: 4NLHf1ENR0yHnRoCkvcx4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168246490"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:53:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [RESEND 02/12] drm/i915: add vlv_clock_get_czclk()
Date: Tue, 19 Aug 2025 15:53:32 +0300
Message-ID: <2540054611b1c9daa94cab7b8e8fd08bc57ef564.1755607980.git.jani.nikula@intel.com>
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

Add vlv_clock_get_czclk() helper to avoid looking at i915->czclk_freq
directly.

Reviewed-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   |  3 +--
 drivers/gpu/drm/i915/display/intel_display.c | 20 ++++++++++++++------
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 drivers/gpu/drm/i915/gt/intel_rc6.c          |  3 ++-
 drivers/gpu/drm/i915/gt/intel_rps.c          |  3 ++-
 5 files changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index d7ba3970e1e9..a920964ff98c 100644
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
index 8c67d357dd2d..2bc7e5f61bcc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -187,25 +187,33 @@ int vlv_get_cck_clock_hpll(struct drm_device *drm,
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
index 019cec057c52..978402cceaa9 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1775,6 +1775,7 @@ static void vlv_c0_read(struct intel_uncore *uncore, struct intel_rps_ei *ei)
 
 static u32 vlv_wa_c0_ei(struct intel_rps *rps, u32 pm_iir)
 {
+	struct drm_i915_private *i915 = rps_to_i915(rps);
 	struct intel_uncore *uncore = rps_to_uncore(rps);
 	const struct intel_rps_ei *prev = &rps->ei;
 	struct intel_rps_ei now;
@@ -1791,7 +1792,7 @@ static u32 vlv_wa_c0_ei(struct intel_rps *rps, u32 pm_iir)
 
 		time = ktime_us_delta(now.ktime, prev->ktime);
 
-		time *= rps_to_i915(rps)->czclk_freq;
+		time *= vlv_clock_get_czclk(&i915->drm);
 
 		/* Workload can be split between render + media,
 		 * e.g. SwapBuffers being blitted in X after being rendered in
-- 
2.47.2

