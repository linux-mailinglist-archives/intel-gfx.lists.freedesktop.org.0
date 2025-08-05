Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F34CEB1B0E0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 11:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18A9710E634;
	Tue,  5 Aug 2025 09:19:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FUG9TbBc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24B4C10E633;
 Tue,  5 Aug 2025 09:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754385564; x=1785921564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9g4ZtuH1DOcoLtLmLvU92zCBUTu47tO/nppqAJ6h3Eo=;
 b=FUG9TbBc5v1811L9+rMmtP1zGR4Rg6fJw/Y87B2d/2g+CaSCNrmgACzj
 qsasLKKzP+W9bN3tUfdo8/BpmnFqB+POZRv9Hua2aoDYq4NTR9rjNj/mg
 u0xmMfXR7Tr04K/jL52bfKdWicLnmUGjGSmtnJM2Jqe1MDZKBVEnnc4x4
 RxiRWAHhGdR+OAJT37NkFZkTKDyg+z62AXBqNtdHexGW3KroX0DOW6NLQ
 Crez5Tb3kyeBjrrogUZmx7tkY9QYwfiJ8zghVqbCLNVOE6ZwELUyWnhfL
 UATZ/l8FaQ8NjKBvouMasG1vebfltbVeLeBMKkoCShSc3SUDsrd2T04oD Q==;
X-CSE-ConnectionGUID: vxXsVP48RIym9VaPXn7A2g==
X-CSE-MsgGUID: QvOSYWUNSLK1dm6Chhq+Ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56566657"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="56566657"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:19:24 -0700
X-CSE-ConnectionGUID: +HWAWTE5QJys3IRsoROAAQ==
X-CSE-MsgGUID: nmmecpt4StKvKih4l3rXvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164738404"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:19:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/12] drm/i915: move hpll and czclk caching under display
Date: Tue,  5 Aug 2025 12:18:24 +0300
Message-Id: <9ad683fa2c89dff4e2361474d450482873d205b8.1754385408.git.jani.nikula@intel.com>
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

Perhaps not the ideal place, but better than having to have the fields
in both struct drm_i915_private and struct xe_device.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 22 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h |  5 +++++
 drivers/gpu/drm/i915/i915_drv.h               |  3 ---
 drivers/gpu/drm/xe/xe_device_types.h          |  2 --
 4 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ab35ecccba63..6109f3d505c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -143,20 +143,20 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 /* returns HPLL frequency in kHz */
 int vlv_clock_get_hpll_vco(struct drm_device *drm)
 {
-	struct drm_i915_private *i915 = to_i915(drm);
+	struct intel_display *display = to_intel_display(drm);
 	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
 
-	if (!i915->hpll_freq) {
+	if (!display->vlv_clock.hpll_freq) {
 		/* Obtain SKU information */
 		hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
 			CCK_FUSE_HPLL_FREQ_MASK;
 
-		i915->hpll_freq = vco_freq[hpll_freq] * 1000;
+		display->vlv_clock.hpll_freq = vco_freq[hpll_freq] * 1000;
 
-		drm_dbg_kms(drm, "HPLL frequency: %d kHz\n", i915->hpll_freq);
+		drm_dbg_kms(drm, "HPLL frequency: %d kHz\n", display->vlv_clock.hpll_freq);
 	}
 
-	return i915->hpll_freq;
+	return display->vlv_clock.hpll_freq;
 }
 
 static int vlv_get_cck_clock(struct drm_device *drm,
@@ -197,15 +197,15 @@ int vlv_clock_get_hrawclk(struct drm_device *drm)
 
 int vlv_clock_get_czclk(struct drm_device *drm)
 {
-	struct drm_i915_private *i915 = to_i915(drm);
+	struct intel_display *display = to_intel_display(drm);
 
-	if (!i915->czclk_freq) {
-		i915->czclk_freq = vlv_get_cck_clock_hpll(drm, "czclk",
-							  CCK_CZ_CLOCK_CONTROL);
-		drm_dbg_kms(drm, "CZ clock rate: %d kHz\n", i915->czclk_freq);
+	if (!display->vlv_clock.czclk_freq) {
+		display->vlv_clock.czclk_freq = vlv_get_cck_clock_hpll(drm, "czclk",
+								       CCK_CZ_CLOCK_CONTROL);
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
index 4e4e89746aa6..3a1c968e375a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -239,9 +239,6 @@ struct drm_i915_private {
 
 	unsigned int fsb_freq, mem_freq, is_ddr3;
 
-	unsigned int hpll_freq;
-	unsigned int czclk_freq;
-
 	/**
 	 * wq - Driver workqueue for GEM.
 	 *
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 01e8fa0d2f9f..3474205a2339 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -607,8 +607,6 @@ struct xe_device {
 
 	/* only to allow build, not used functionally */
 	struct {
-		unsigned int hpll_freq;
-		unsigned int czclk_freq;
 		unsigned int fsb_freq, mem_freq, is_ddr3;
 	};
 #endif
-- 
2.39.5

