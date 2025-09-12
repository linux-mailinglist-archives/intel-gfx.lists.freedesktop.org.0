Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E944B55245
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:50:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E713E10EC90;
	Fri, 12 Sep 2025 14:50:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bubJq+1e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA27110EC92;
 Fri, 12 Sep 2025 14:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757688620; x=1789224620;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BFInh+LXb2P4q9ZvRgixQgia/YHkrehHCD6KMTCjUzs=;
 b=bubJq+1eU0tEyoh7a3+YIBp8KjYA+GY1Cn16UbWTsme8fE4bNVycBgFv
 rJRD0SWiQr3KN1jyC41Q809BBH8xoOQeJWRWxVTtO6HzZS/EQmyHbgiHY
 GifqRYvnZ8TUnWuBlgVejC/M12CDAvDbLG3rYuCOxiuyPYioCFggyWfSG
 CLdTj2227UPc0s55G14HrSwXpvUzTL3VBAQprDKwjEmGLSCR5MjXuAe9O
 TWLWqJ/7NdH+v6sb7fy7nROn5VaE51jD9Rpv2fdBioCtdq+t6zjAUKtW3
 tKbQIrYK/qq1vynXAiB7b23JjGDDPXEQ+f9nEuUktXonOLbnfxGVExTni g==;
X-CSE-ConnectionGUID: JI7xOHz6TMC+goujlP9FCw==
X-CSE-MsgGUID: IklsHq0bTZmnuHRzVSoymA==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="63666376"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="63666376"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:50:19 -0700
X-CSE-ConnectionGUID: piy7sAr2S9u6MO+4U55F0A==
X-CSE-MsgGUID: hdN46LJvTXSt4pPQd554oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173810333"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.212])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:50:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 michal.grzelak@intel.com
Subject: [PATCH v2 14/15] drm/i915: move hpll and czclk caching under display
Date: Fri, 12 Sep 2025 17:48:53 +0300
Message-ID: <cbca9b13f2235a624a21bf7617ffe763e25c848c.1757688216.git.jani.nikula@intel.com>
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

Perhaps not the ideal place, but better than having to have the fields
in both struct drm_i915_private and struct xe_device.

v2: Rebase

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 22 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h |  5 +++++
 drivers/gpu/drm/i915/i915_drv.h               |  3 ---
 drivers/gpu/drm/xe/xe_device_types.h          |  6 -----
 4 files changed, 16 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b49661b4e959..02f50d0f370a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -144,22 +144,22 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 /* returns HPLL frequency in kHz */
 int vlv_clock_get_hpll_vco(struct drm_device *drm)
 {
-	struct drm_i915_private *i915 = to_i915(drm);
+	struct intel_display *display = to_intel_display(drm);
 	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
 
-	if (!i915->hpll_freq) {
+	if (!display->vlv_clock.hpll_freq) {
 		vlv_cck_get(drm);
 		/* Obtain SKU information */
 		hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
 			CCK_FUSE_HPLL_FREQ_MASK;
 		vlv_cck_put(drm);
 
-		i915->hpll_freq = vco_freq[hpll_freq] * 1000;
+		display->vlv_clock.hpll_freq = vco_freq[hpll_freq] * 1000;
 
-		drm_dbg_kms(drm, "HPLL frequency: %d kHz\n", i915->hpll_freq);
+		drm_dbg_kms(drm, "HPLL frequency: %d kHz\n", display->vlv_clock.hpll_freq);
 	}
 
-	return i915->hpll_freq;
+	return display->vlv_clock.hpll_freq;
 }
 
 static int vlv_get_cck_clock(struct drm_device *drm,
@@ -190,15 +190,15 @@ int vlv_clock_get_hrawclk(struct drm_device *drm)
 
 int vlv_clock_get_czclk(struct drm_device *drm)
 {
-	struct drm_i915_private *i915 = to_i915(drm);
+	struct intel_display *display = to_intel_display(drm);
 
-	if (!i915->czclk_freq) {
-		i915->czclk_freq = vlv_get_cck_clock(drm, "czclk", CCK_CZ_CLOCK_CONTROL,
-						     vlv_clock_get_hpll_vco(drm));
-		drm_dbg_kms(drm, "CZ clock rate: %d kHz\n", i915->czclk_freq);
+	if (!display->vlv_clock.czclk_freq) {
+		display->vlv_clock.czclk_freq = vlv_get_cck_clock(drm, "czclk", CCK_CZ_CLOCK_CONTROL,
+								  vlv_clock_get_hpll_vco(drm));
+		drm_dbg_kms(drm, "CZ clock rate: %d kHz\n", display->vlv_clock.czclk_freq);
 	}
 
-	return i915->czclk_freq;
+	return display->vlv_clock.czclk_freq;
 }
 
 int vlv_clock_get_cdclk(struct drm_device *drm)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 8c226406c5cd..791021a4e3bb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -567,6 +567,11 @@ struct intel_display {
 		u32 bxt_phy_grc;
 	} state;
 
+	struct {
+		unsigned int hpll_freq;
+		unsigned int czclk_freq;
+	} vlv_clock;
+
 	struct {
 		/* ordered wq for modesets */
 		struct workqueue_struct *modeset;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6a768aad8edd..37970d8db255 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -239,9 +239,6 @@ struct drm_i915_private {
 
 	bool preserve_bios_swizzle;
 
-	unsigned int hpll_freq;
-	unsigned int czclk_freq;
-
 	/**
 	 * wq - Driver workqueue for GEM.
 	 *
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index bfc617d9553f..e5a92911d6da 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -623,12 +623,6 @@ struct xe_device {
 	struct intel_uncore {
 		spinlock_t lock;
 	} uncore;
-
-	/* only to allow build, not used functionally */
-	struct {
-		unsigned int hpll_freq;
-		unsigned int czclk_freq;
-	};
 #endif
 };
 
-- 
2.47.3

