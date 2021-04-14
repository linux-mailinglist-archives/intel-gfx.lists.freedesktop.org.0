Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 527DA35F2C6
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:50:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B996E924;
	Wed, 14 Apr 2021 11:50:56 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E296E91D
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:54 +0000 (UTC)
IronPort-SDR: W0H+JhcXyvpneLXkb2j+GYinNUSjIuSIONbUaj6KbILOmmC3vAeriFz0SHCuDfzNV6ZlBcwJh/
 tsFHukCV5juw==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732289"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732289"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:53 -0700
IronPort-SDR: kyoGkGND/ufoah0wc3J+gnylmeTEQZ7R535zkCSpeYCr1W0SvKQGHzLqJbOUkozBT6J84tCZij
 aWfPpTr0WoUQ==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965203"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:52 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:12 +0100
Message-Id: <20210414115028.168504-13-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 12/28] drm/i915: Make Gen9 platform support
 optional
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.platforms | 44 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h        | 53 +++++++++++++++-----------
 drivers/gpu/drm/i915/i915_pci.c        | 22 +++++++++++
 3 files changed, 96 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.platforms b/drivers/gpu/drm/i915/Kconfig.platforms
index 346d440d049c..5a7aeebee482 100644
--- a/drivers/gpu/drm/i915/Kconfig.platforms
+++ b/drivers/gpu/drm/i915/Kconfig.platforms
@@ -186,3 +186,47 @@ config DRM_I915_PLATFORM_INTEL_CHERRYVIEW
 	select DRM_I915_GEN8
 	help
 	  Include support for Intel Cherryview platforms.
+
+config DRM_I915_GEN9
+	bool
+
+config DRM_I915_PLATFORM_INTEL_SKYLAKE
+	bool "Intel Skylake platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN9
+	help
+	  Include support for Intel Skylake platforms.
+
+config DRM_I915_PLATFORM_INTEL_BROXTON
+	bool "Intel Broxton platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN9
+	help
+	  Include support for Intel Broxton platforms.
+
+ config DRM_I915_PLATFORM_INTEL_GEMINILAKE
+	bool "Intel Geminilake platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN9
+	help
+	  Include support for Intel Geminilake platforms.
+
+ config DRM_I915_PLATFORM_INTEL_KABYLAKE
+	bool "Intel Kabylake platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN9
+	help
+	  Include support for Intel Kabylake platforms.
+
+ config DRM_I915_PLATFORM_INTEL_COFFEELAKE
+	bool "Intel Coffeelake platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN9
+	help
+	  Include support for Intel Coffeelake platforms.
+
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6658015c4a9f..32b22b379a0c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2606,11 +2606,11 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_CHERRYVIEW(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_CHERRYVIEW)
 #define IS_HASWELL(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_HASWELL)
 #define IS_BROADWELL(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_BROADWELL)
-#define IS_SKYLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_SKYLAKE)
-#define IS_BROXTON(dev_priv)	IS_PLATFORM(dev_priv, INTEL_BROXTON)
-#define IS_KABYLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_KABYLAKE)
-#define IS_GEMINILAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_GEMINILAKE)
-#define IS_COFFEELAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_COFFEELAKE)
+#define IS_SKYLAKE(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_SKYLAKE)
+#define IS_BROXTON(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_BROXTON)
+#define IS_KABYLAKE(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_KABYLAKE)
+#define IS_GEMINILAKE(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_GEMINILAKE)
+#define IS_COFFEELAKE(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_COFFEELAKE)
 #define IS_CANNONLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_CANNONLAKE)
 #define IS_ICELAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ICELAKE)
 #define IS_MOBILE(dev_priv)	((dev_priv)->info.is_mobile)
@@ -2633,22 +2633,26 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_HSW_ULX(dev_priv)	(IS_HASWELL(dev_priv) && \
 				 (INTEL_DEVID(dev_priv) == 0x0A0E || \
 				  INTEL_DEVID(dev_priv) == 0x0A1E))
-#define IS_SKL_ULT(dev_priv)	(INTEL_DEVID(dev_priv) == 0x1906 || \
-				 INTEL_DEVID(dev_priv) == 0x1913 || \
-				 INTEL_DEVID(dev_priv) == 0x1916 || \
-				 INTEL_DEVID(dev_priv) == 0x1921 || \
-				 INTEL_DEVID(dev_priv) == 0x1926)
-#define IS_SKL_ULX(dev_priv)	(INTEL_DEVID(dev_priv) == 0x190E || \
-				 INTEL_DEVID(dev_priv) == 0x1915 || \
-				 INTEL_DEVID(dev_priv) == 0x191E)
-#define IS_KBL_ULT(dev_priv)	(INTEL_DEVID(dev_priv) == 0x5906 || \
-				 INTEL_DEVID(dev_priv) == 0x5913 || \
-				 INTEL_DEVID(dev_priv) == 0x5916 || \
-				 INTEL_DEVID(dev_priv) == 0x5921 || \
-				 INTEL_DEVID(dev_priv) == 0x5926)
-#define IS_KBL_ULX(dev_priv)	(INTEL_DEVID(dev_priv) == 0x590E || \
-				 INTEL_DEVID(dev_priv) == 0x5915 || \
-				 INTEL_DEVID(dev_priv) == 0x591E)
+#define IS_SKL_ULT(dev_priv)	(IS_SKYLAKE(dev_priv) && \
+				 (INTEL_DEVID(dev_priv) == 0x1906 || \
+				  INTEL_DEVID(dev_priv) == 0x1913 || \
+				  INTEL_DEVID(dev_priv) == 0x1916 || \
+				  INTEL_DEVID(dev_priv) == 0x1921 || \
+				  INTEL_DEVID(dev_priv) == 0x1926))
+#define IS_SKL_ULX(dev_priv)	(IS_SKYLAKE(dev_priv) && \
+				 (INTEL_DEVID(dev_priv) == 0x190E || \
+				  INTEL_DEVID(dev_priv) == 0x1915 || \
+				  INTEL_DEVID(dev_priv) == 0x191E))
+#define IS_KBL_ULT(dev_priv)	(IS_KABYLAKE(dev_priv) && \
+				 (INTEL_DEVID(dev_priv) == 0x5906 || \
+				  INTEL_DEVID(dev_priv) == 0x5913 || \
+				  INTEL_DEVID(dev_priv) == 0x5916 || \
+				  INTEL_DEVID(dev_priv) == 0x5921 || \
+				  INTEL_DEVID(dev_priv) == 0x5926))
+#define IS_KBL_ULX(dev_priv)	(IS_KABYLAKE(dev_priv) && \
+				 (INTEL_DEVID(dev_priv) == 0x590E || \
+				  INTEL_DEVID(dev_priv) == 0x5915 || \
+				  INTEL_DEVID(dev_priv) == 0x591E))
 #define IS_SKL_GT2(dev_priv)	(IS_SKYLAKE(dev_priv) && \
 				 (dev_priv)->info.gt == 2)
 #define IS_SKL_GT3(dev_priv)	(IS_SKYLAKE(dev_priv) && \
@@ -2679,7 +2683,8 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define SKL_REVID_G0		0x6
 #define SKL_REVID_H0		0x7
 
-#define IS_SKL_REVID(p, since, until) (IS_SKYLAKE(p) && IS_REVID(p, since, until))
+#define IS_SKL_REVID(p, since, until) \
+	(IS_SKYLAKE(p) && IS_REVID(p, since, until))
 
 #define BXT_REVID_A0		0x0
 #define BXT_REVID_A1		0x1
@@ -2739,7 +2744,9 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_GEN8(dev_priv) \
 	(IS_ENABLED(CONFIG_DRM_I915_GEN8) && \
 	 ((dev_priv)->info.gen_mask & BIT(7)))
-#define IS_GEN9(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(8)))
+#define IS_GEN9(dev_priv) \
+	(IS_ENABLED(CONFIG_DRM_I915_GEN9) && \
+	 ((dev_priv)->info.gen_mask & BIT(8)))
 #define IS_GEN10(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(9)))
 #define IS_GEN11(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(10)))
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 4645f3e2eea4..49b0cbfcd76c 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -501,6 +501,7 @@ static const struct intel_device_info intel_cherryview_info = {
 	.gen = 9, \
 	.platform = INTEL_SKYLAKE
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_SKYLAKE
 static const struct intel_device_info intel_skylake_gt1_info = {
 	SKL_PLATFORM,
 	.gt = 1,
@@ -510,12 +511,14 @@ static const struct intel_device_info intel_skylake_gt2_info = {
 	SKL_PLATFORM,
 	.gt = 2,
 };
+#endif
 
 #define SKL_GT3_PLUS_PLATFORM \
 	SKL_PLATFORM, \
 	.ring_mask = RENDER_RING | BSD_RING | BLT_RING | VEBOX_RING | BSD2_RING
 
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_SKYLAKE
 static const struct intel_device_info intel_skylake_gt3_info = {
 	SKL_GT3_PLUS_PLATFORM,
 	.gt = 3,
@@ -525,6 +528,7 @@ static const struct intel_device_info intel_skylake_gt4_info = {
 	SKL_GT3_PLUS_PLATFORM,
 	.gt = 4,
 };
+#endif
 
 #define GEN9_LP_FEATURES \
 	.gen = 9, \
@@ -557,24 +561,29 @@ static const struct intel_device_info intel_skylake_gt4_info = {
 	IVB_CURSOR_OFFSETS, \
 	BDW_COLORS
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_BROXTON
 static const struct intel_device_info intel_broxton_info = {
 	GEN9_LP_FEATURES,
 	.platform = INTEL_BROXTON,
 	.ddb_size = 512,
 };
+#endif
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_GEMINILAKE
 static const struct intel_device_info intel_geminilake_info = {
 	GEN9_LP_FEATURES,
 	.platform = INTEL_GEMINILAKE,
 	.ddb_size = 1024,
 	GLK_COLORS,
 };
+#endif
 
 #define KBL_PLATFORM \
 	GEN9_FEATURES, \
 	.gen = 9, \
 	.platform = INTEL_KABYLAKE
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_KABYLAKE
 static const struct intel_device_info intel_kabylake_gt1_info = {
 	KBL_PLATFORM,
 	.gt = 1,
@@ -590,12 +599,14 @@ static const struct intel_device_info intel_kabylake_gt3_info = {
 	.gt = 3,
 	.ring_mask = RENDER_RING | BSD_RING | BLT_RING | VEBOX_RING | BSD2_RING,
 };
+#endif
 
 #define CFL_PLATFORM \
 	GEN9_FEATURES, \
 	.gen = 9, \
 	.platform = INTEL_COFFEELAKE
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_COFFEELAKE
 static const struct intel_device_info intel_coffeelake_gt1_info = {
 	CFL_PLATFORM,
 	.gt = 1,
@@ -611,6 +622,7 @@ static const struct intel_device_info intel_coffeelake_gt3_info = {
 	.gt = 3,
 	.ring_mask = RENDER_RING | BSD_RING | BLT_RING | VEBOX_RING | BSD2_RING,
 };
+#endif
 
 #define GEN10_FEATURES \
 	GEN9_FEATURES, \
@@ -721,22 +733,32 @@ static const struct pci_device_id pciidlist[] = {
 #ifdef CONFIG_DRM_I915_PLATFORM_INTEL_CHERRYVIEW
 	INTEL_CHV_IDS(&intel_cherryview_info),
 #endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_SKYLAKE
 	INTEL_SKL_GT1_IDS(&intel_skylake_gt1_info),
 	INTEL_SKL_GT2_IDS(&intel_skylake_gt2_info),
 	INTEL_SKL_GT3_IDS(&intel_skylake_gt3_info),
 	INTEL_SKL_GT4_IDS(&intel_skylake_gt4_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_BROXTON
 	INTEL_BXT_IDS(&intel_broxton_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_GEMINILAKE
 	INTEL_GLK_IDS(&intel_geminilake_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_KABYLAKE
 	INTEL_KBL_GT1_IDS(&intel_kabylake_gt1_info),
 	INTEL_KBL_GT2_IDS(&intel_kabylake_gt2_info),
 	INTEL_KBL_GT3_IDS(&intel_kabylake_gt3_info),
 	INTEL_KBL_GT4_IDS(&intel_kabylake_gt3_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_COFFEELAKE
 	INTEL_CFL_S_GT1_IDS(&intel_coffeelake_gt1_info),
 	INTEL_CFL_S_GT2_IDS(&intel_coffeelake_gt2_info),
 	INTEL_CFL_H_GT2_IDS(&intel_coffeelake_gt2_info),
 	INTEL_CFL_U_GT1_IDS(&intel_coffeelake_gt1_info),
 	INTEL_CFL_U_GT2_IDS(&intel_coffeelake_gt2_info),
 	INTEL_CFL_U_GT3_IDS(&intel_coffeelake_gt3_info),
+#endif
 	INTEL_CNL_IDS(&intel_cannonlake_info),
 	{0, 0, 0}
 };
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
