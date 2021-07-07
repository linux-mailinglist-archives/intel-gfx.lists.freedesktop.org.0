Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A824A3BF294
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 01:42:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47B0C6E08A;
	Wed,  7 Jul 2021 23:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D89466E08A
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 23:42:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="209229684"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="209229684"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 16:42:07 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="428124311"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 16:42:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jul 2021 16:42:06 -0700
Message-Id: <20210707234206.2002849-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Handle cdclk crawling flag in
 standard manner
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The 'has_cdclk_crawl' field in our device info structure is a boolean
flag and doesn't need a whole u8.  Add it as another 1-bit feature flag
and move it to the display section.  While we're at it, replace the
has_cdclk_crawl() function with a macro for consistency with our
handling of other feature flags.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 9 ++-------
 drivers/gpu/drm/i915/i915_drv.h            | 1 +
 drivers/gpu/drm/i915/i915_pci.c            | 2 +-
 drivers/gpu/drm/i915/intel_device_info.h   | 3 +--
 4 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 613ffcc68eba..df2d8ce4a12f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1548,11 +1548,6 @@ static void cnl_cdclk_pll_enable(struct drm_i915_private *dev_priv, int vco)
 	dev_priv->cdclk.hw.vco = vco;
 }
 
-static bool has_cdclk_crawl(struct drm_i915_private *i915)
-{
-	return INTEL_INFO(i915)->has_cdclk_crawl;
-}
-
 static void adlp_cdclk_pll_crawl(struct drm_i915_private *dev_priv, int vco)
 {
 	int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->cdclk.hw.ref);
@@ -1649,7 +1644,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (has_cdclk_crawl(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0) {
+	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->cdclk.hw.vco > 0 && vco > 0) {
 		if (dev_priv->cdclk.hw.vco != vco)
 			adlp_cdclk_pll_crawl(dev_priv, vco);
 	} else if (DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) {
@@ -1857,7 +1852,7 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 {
 	int a_div, b_div;
 
-	if (!has_cdclk_crawl(dev_priv))
+	if (!HAS_CDCLK_CRAWL(dev_priv))
 		return false;
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6dff4ca01241..30129ca4049a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1647,6 +1647,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
 
+#define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
 #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
 #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
 #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index a7bfdd827bc8..b2deb039f954 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -984,8 +984,8 @@ static const struct intel_device_info adl_p_info = {
 	GEN12_FEATURES,
 	XE_LPD_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_P),
-	.has_cdclk_crawl = 1,
 	.require_force_probe = 1,
+	.display.has_cdclk_crawl = 1,
 	.display.has_modular_fia = 1,
 	.display.has_psr_hw_tracking = 0,
 	.platform_engine_mask =
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index b326aff65cd6..3582253ee05b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -141,6 +141,7 @@ enum intel_ppgtt_type {
 #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
 	/* Keep in alphabetical order */ \
 	func(cursor_needs_physical); \
+	func(has_cdclk_crawl); \
 	func(has_dmc); \
 	func(has_ddi); \
 	func(has_dp_mst); \
@@ -185,8 +186,6 @@ struct intel_device_info {
 
 	u8 abox_mask;
 
-	u8 has_cdclk_crawl;  /* does support CDCLK crawling */
-
 #define DEFINE_FLAG(name) u8 name:1
 	DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
 #undef DEFINE_FLAG
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
