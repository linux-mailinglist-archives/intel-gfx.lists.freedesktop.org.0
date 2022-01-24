Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B3C498CB5
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 20:31:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A91A510E969;
	Mon, 24 Jan 2022 19:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F6BD10E969
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 19:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643052700; x=1674588700;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ng3jL5d1zF/z/DiGkunbOTpNWR14Yh61AJ3pePnjVY4=;
 b=RCrK/FEtHu2S78Lky/VDrHruSUnW/aGQouE7/9baIl2gT4l4ZnSVC9BV
 d2JRt8gbxJLKXBdnnX9dfGLTgF0moenuxqNwL0EAL2WZCqT0GTwUN/ahS
 P8B7iYQ3glQl7EHepnla4ZgZih+BbGn/gymQr/zKFQWxRqVhwIw6N8Tvx
 djSlIxQQILyn3HO5Ws74hB1pcyTYDT+tXqGwv9ZwA5LhMPiv3WzUhEQhx
 FzLJceXmJbYLFASxZaTrq3/pspbT0uyWLoNKR3x9+xqhCL8qzcibxcOe+
 vGzO7b53tFrhgA2yD53ZWEWTYTAs4VfaPLV8XCVr5ZUccJwSRDuJ7bDZS g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="245911561"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="245911561"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 11:31:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="562772808"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga001.jf.intel.com with SMTP; 24 Jan 2022 11:31:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jan 2022 21:31:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 21:31:35 +0200
Message-Id: <20220124193136.2397-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: s/GRAPHICS_VER/DISPLAY_VER/ where
 appropriate
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use DISPLAY_VER rather than GRAPHICS_VER to determine
availability of display hardware features.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 44c1f98144b4..e2b8409f9174 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1463,8 +1463,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define NEEDS_WaRsDisableCoarsePowerGating(dev_priv)			\
 	(IS_SKL_GT3(dev_priv) || IS_SKL_GT4(dev_priv))
 
-#define HAS_GMBUS_IRQ(dev_priv) (GRAPHICS_VER(dev_priv) >= 4)
-#define HAS_GMBUS_BURST_READ(dev_priv) (GRAPHICS_VER(dev_priv) >= 11 || \
+#define HAS_GMBUS_IRQ(dev_priv) (DISPLAY_VER(dev_priv) >= 4)
+#define HAS_GMBUS_BURST_READ(dev_priv) (DISPLAY_VER(dev_priv) >= 11 || \
 					IS_GEMINILAKE(dev_priv) || \
 					IS_KABYLAKE(dev_priv))
 
@@ -1476,9 +1476,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define SUPPORTS_TV(dev_priv)		(INTEL_INFO(dev_priv)->display.supports_tv)
 #define I915_HAS_HOTPLUG(dev_priv)	(INTEL_INFO(dev_priv)->display.has_hotplug)
 
-#define HAS_FW_BLC(dev_priv)	(GRAPHICS_VER(dev_priv) > 2)
+#define HAS_FW_BLC(dev_priv)	(DISPLAY_VER(dev_priv) > 2)
 #define HAS_FBC(dev_priv)	(INTEL_INFO(dev_priv)->display.fbc_mask != 0)
-#define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && GRAPHICS_VER(dev_priv) >= 7)
+#define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) >= 7)
 
 #define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))
 
@@ -1491,7 +1491,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
 #define HAS_PSR_HW_TRACKING(dev_priv) \
 	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
-#define HAS_PSR2_SEL_FETCH(dev_priv)	 (GRAPHICS_VER(dev_priv) >= 12)
+#define HAS_PSR2_SEL_FETCH(dev_priv)	 (DISPLAY_VER(dev_priv) >= 12)
 #define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display.cpu_transcoder_mask & BIT(trans)) != 0)
 
 #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
@@ -1502,7 +1502,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_DMC(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dmc)
 
-#define HAS_MSO(i915)		(GRAPHICS_VER(i915) >= 12)
+#define HAS_MSO(i915)		(DISPLAY_VER(i915) >= 12)
 
 #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
 #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
@@ -1535,7 +1535,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
 
-#define HAS_LSPCON(dev_priv) (IS_GRAPHICS_VER(dev_priv, 9, 10))
+#define HAS_LSPCON(dev_priv) (IS_DISPLAY_VER(dev_priv, 9, 10))
 
 /* DPF == dynamic parity feature */
 #define HAS_L3_DPF(dev_priv) (INTEL_INFO(dev_priv)->has_l3_dpf)
@@ -1549,7 +1549,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->display.pipe_mask != 0)
 
-#define HAS_VRR(i915)	(GRAPHICS_VER(i915) >= 11)
+#define HAS_VRR(i915)	(DISPLAY_VER(i915) >= 11)
 
 #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
 
@@ -1579,7 +1579,7 @@ i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p);
 
 static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *dev_priv)
 {
-	return GRAPHICS_VER(dev_priv) >= 6 && intel_vtd_active(dev_priv);
+	return DISPLAY_VER(dev_priv) >= 6 && intel_vtd_active(dev_priv);
 }
 
 static inline bool
-- 
2.34.1

