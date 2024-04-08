Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 805ED89CB7C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 20:09:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A7B31127F2;
	Mon,  8 Apr 2024 18:09:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b0w3jmCI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CC2611256C;
 Mon,  8 Apr 2024 18:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712599758; x=1744135758;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KEA9uqiToitVRSv996cq6D7shQMXlywPHqyASt2ySQw=;
 b=b0w3jmCIjVnLSIJJi51klah9sECllyjABgcMV9b6sGhuvRqIUFq/mKic
 6YVeRiaShjEG31K5lQoCW4NuSvHv1/JRtJfiKlQ2gO/XoK00Qx8HLFFVa
 KtXzxKzRm4FOsdTEZf+bEUUTylWpqSknhmW388fFI0318ixelO/NSBw6M
 UIaqLeNT/wP3iATJ9T1bPDQmwow+ll6C+lXrSXQSmMKbcrwG3PAoWZnkm
 O+8FhgZsZY9t55dKMkP6Mn/r22e0O6j1muzvzm7V4PQzzzb53RNQI+9IG
 yne9TP6HgvQ9Ykr7LQxz7yzuhK3JX+qgUQHV98LbPXXKSy+INgEa2arfD w==;
X-CSE-ConnectionGUID: 0JLV4LitR7iWF1ppf3nYDg==
X-CSE-MsgGUID: GDM0yLdYQCOIo5uTz54IeQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="19038680"
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="19038680"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:09:18 -0700
X-CSE-ConnectionGUID: L99tCtN4T8+p3b/Tkpalhg==
X-CSE-MsgGUID: OJmRLjMhSESbV5CiK0W7FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,187,1708416000"; d="scan'208";a="43145283"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.71])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 11:08:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 2/8] drm/i915: move skl_preferred_vco_freq to display substruct
Date: Mon,  8 Apr 2024 21:08:37 +0300
Message-Id: <4e9877d1641bce905cc9dd5eabe40df51ddbe9b5.1712599670.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1712599670.git.jani.nikula@intel.com>
References: <cover.1712599670.git.jani.nikula@intel.com>
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

The info is related to display, and should be placed under
i915->display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c      | 17 ++++++++---------
 .../gpu/drm/i915/display/intel_display_core.h   |  1 +
 drivers/gpu/drm/i915/i915_drv.h                 |  1 -
 drivers/gpu/drm/xe/xe_device_types.h            |  2 +-
 4 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index d61aa5b7cbdb..950942dc3d60 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1021,15 +1021,14 @@ static int skl_cdclk_decimal(int cdclk)
 	return DIV_ROUND_CLOSEST(cdclk - 1000, 500);
 }
 
-static void skl_set_preferred_cdclk_vco(struct drm_i915_private *dev_priv,
-					int vco)
+static void skl_set_preferred_cdclk_vco(struct drm_i915_private *i915, int vco)
 {
-	bool changed = dev_priv->skl_preferred_vco_freq != vco;
+	bool changed = i915->display.cdclk.skl_preferred_vco_freq != vco;
 
-	dev_priv->skl_preferred_vco_freq = vco;
+	i915->display.cdclk.skl_preferred_vco_freq = vco;
 
 	if (changed)
-		intel_update_max_cdclk(dev_priv);
+		intel_update_max_cdclk(i915);
 }
 
 static u32 skl_dpll0_link_rate(struct drm_i915_private *dev_priv, int vco)
@@ -1233,7 +1232,7 @@ static void skl_cdclk_init_hw(struct drm_i915_private *dev_priv)
 		 * Use the current vco as our initial
 		 * guess as to what the preferred vco is.
 		 */
-		if (dev_priv->skl_preferred_vco_freq == 0)
+		if (dev_priv->display.cdclk.skl_preferred_vco_freq == 0)
 			skl_set_preferred_cdclk_vco(dev_priv,
 						    dev_priv->display.cdclk.hw.vco);
 		return;
@@ -1241,7 +1240,7 @@ static void skl_cdclk_init_hw(struct drm_i915_private *dev_priv)
 
 	cdclk_config = dev_priv->display.cdclk.hw;
 
-	cdclk_config.vco = dev_priv->skl_preferred_vco_freq;
+	cdclk_config.vco = dev_priv->display.cdclk.skl_preferred_vco_freq;
 	if (cdclk_config.vco == 0)
 		cdclk_config.vco = 8100000;
 	cdclk_config.cdclk = skl_calc_cdclk(0, cdclk_config.vco);
@@ -3011,7 +3010,7 @@ static int skl_dpll0_vco(struct intel_cdclk_state *cdclk_state)
 
 	vco = cdclk_state->logical.vco;
 	if (!vco)
-		vco = dev_priv->skl_preferred_vco_freq;
+		vco = dev_priv->display.cdclk.skl_preferred_vco_freq;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		if (!crtc_state->hw.enable)
@@ -3397,7 +3396,7 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 		u32 limit = intel_de_read(dev_priv, SKL_DFSM) & SKL_DFSM_CDCLK_LIMIT_MASK;
 		int max_cdclk, vco;
 
-		vco = dev_priv->skl_preferred_vco_freq;
+		vco = dev_priv->display.cdclk.skl_preferred_vco_freq;
 		drm_WARN_ON(&dev_priv->drm, vco != 8100000 && vco != 8640000);
 
 		/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 2167dbee5eea..b577429ee6e9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -345,6 +345,7 @@ struct intel_display {
 		struct intel_global_obj obj;
 
 		unsigned int max_cdclk_freq;
+		unsigned int skl_preferred_vco_freq;
 	} cdclk;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index cf52d4adaa20..ba3c27c969f2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -251,7 +251,6 @@ struct drm_i915_private {
 	bool preserve_bios_swizzle;
 
 	unsigned int fsb_freq, mem_freq, is_ddr3;
-	unsigned int skl_preferred_vco_freq;
 
 	unsigned int max_dotclk_freq;
 	unsigned int hpll_freq;
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index c710cec835a7..6f46234d1241 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -501,7 +501,7 @@ struct xe_device {
 	struct mutex sb_lock;
 
 	/* Should be in struct intel_display */
-	u32 skl_preferred_vco_freq, max_dotclk_freq;
+	u32 max_dotclk_freq;
 
 	union {
 		/* only to allow build, not used functionally */
-- 
2.39.2

