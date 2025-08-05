Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D61B1B0DC
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 11:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B28B10E643;
	Tue,  5 Aug 2025 09:19:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dFKnmfU/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8557E10E621;
 Tue,  5 Aug 2025 09:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754385546; x=1785921546;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ajUGzTnAcxdLHFSI1zthyt2iDIeesmU8yWACsbfgdIQ=;
 b=dFKnmfU/tmmQ5e8ah9cLQiBctTl7hzNKeltQLTeE/VwnUCtHpYNLQsoa
 BguvJSWXhqmd2J0GnXr5YfmfKYQ0Ya1eNZGRNcGJ0+8uu2l/rrcq0JGQF
 rlXxYhvgEX8uZ7iWt7CaFYzGWZwltElfDv+Se4WK95cNSen946u6ZjbY9
 z59Y+3NuxXn7aEYzA5G+M/ECj9HfGaj15uDpLT3+MYr50Qt6vVG7li59y
 RnK1RT4fYB1rTWjnqTbXNfVDQKiIj3CN1XFKt8//hbMF/GW5uQ1c7tFBZ
 YEEj4cfaMA7iABwURHHdjxAcHnHLnGQVshfM22TNZrMCSIHJ/G3ryx1ya Q==;
X-CSE-ConnectionGUID: FiAqeH4QTlK6osPgnpxwew==
X-CSE-MsgGUID: hYEmW/I+QJWTjxPeMCAHVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56566642"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="56566642"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:19:05 -0700
X-CSE-ConnectionGUID: pvBM4bqzS4KLnoV4gopJcw==
X-CSE-MsgGUID: aoUl/W3URImHR080Xj1l6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164738368"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:19:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/12] drm/i915: rename vlv_get_hpll_vco() to
 vlv_clock_get_hpll_vco()
Date: Tue,  5 Aug 2025 12:18:20 +0300
Message-Id: <28c7ab334c6ac8e7866935462321d8fac99a7ed0.1754385408.git.jani.nikula@intel.com>
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

Follow the new vlv_clock_*() naming pattern for all the related VLV
clock functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 94c6bea10b10..e8c9ad7d8e82 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -609,7 +609,7 @@ static void vlv_get_cdclk(struct intel_display *display,
 
 	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_CCK) | BIT(VLV_IOSF_SB_PUNIT));
 
-	cdclk_config->vco = vlv_get_hpll_vco(display->drm);
+	cdclk_config->vco = vlv_clock_get_hpll_vco(display->drm);
 	cdclk_config->cdclk = vlv_clock_get_cdclk(display->drm);
 
 	val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4e368d409f01..6fb7d14dba9e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -141,7 +141,7 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 			      const struct intel_crtc_state *crtc_state);
 
 /* returns HPLL frequency in kHz */
-int vlv_get_hpll_vco(struct drm_device *drm)
+int vlv_clock_get_hpll_vco(struct drm_device *drm)
 {
 	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
 
@@ -177,7 +177,7 @@ static int vlv_get_cck_clock_hpll(struct drm_device *drm,
 	vlv_cck_get(drm);
 
 	if (dev_priv->hpll_freq == 0)
-		dev_priv->hpll_freq = vlv_get_hpll_vco(drm);
+		dev_priv->hpll_freq = vlv_clock_get_hpll_vco(drm);
 
 	hpll = vlv_get_cck_clock(drm, name, reg, dev_priv->hpll_freq);
 
@@ -206,7 +206,7 @@ int vlv_clock_get_czclk(struct drm_device *drm)
 int vlv_clock_get_cdclk(struct drm_device *drm)
 {
 	return vlv_get_cck_clock(drm, "cdclk", CCK_DISPLAY_CLOCK_CONTROL,
-				 vlv_get_hpll_vco(drm));
+				 vlv_clock_get_hpll_vco(drm));
 }
 
 int vlv_clock_get_gpll(struct drm_device *drm)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 57b06cad314b..5c406b276a76 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -435,7 +435,7 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
 void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state);
 void i830_enable_pipe(struct intel_display *display, enum pipe pipe);
 void i830_disable_pipe(struct intel_display *display, enum pipe pipe);
-int vlv_get_hpll_vco(struct drm_device *drm);
+int vlv_clock_get_hpll_vco(struct drm_device *drm);
 int vlv_clock_get_hrawclk(struct drm_device *drm);
 int vlv_clock_get_czclk(struct drm_device *drm);
 int vlv_clock_get_cdclk(struct drm_device *drm);
-- 
2.39.5

