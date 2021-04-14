Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3178735F2C4
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7F5C6E8BC;
	Wed, 14 Apr 2021 11:50:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AAAC6E8BC
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:47 +0000 (UTC)
IronPort-SDR: pFiZ0dMWsPDOIJ73fqVvENZpazkn3dglwcIvxGpc2JKhVbek71dRXBKmw6Eeb+GmjG2CJDU33p
 ize+ub1nIP6A==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732252"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732252"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:47 -0700
IronPort-SDR: Dn3UqDSaSC6Rhkxs1FJu9bPXASy5+odDRNFnBtMt2QqxSImAO0c+14qq6UmHpxhFGzvSqBiJOj
 vnxkSzKjJ8HA==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965158"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:46 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:06 +0100
Message-Id: <20210414115028.168504-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 06/28] drm/i915: Make Gen3 platforms support
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
 drivers/gpu/drm/i915/Kconfig.platforms | 51 ++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h        | 22 ++++++-----
 drivers/gpu/drm/i915/i915_pci.c        | 28 +++++++++++++-
 3 files changed, 90 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.platforms b/drivers/gpu/drm/i915/Kconfig.platforms
index 23a44c8eb07b..1fa09884a290 100644
--- a/drivers/gpu/drm/i915/Kconfig.platforms
+++ b/drivers/gpu/drm/i915/Kconfig.platforms
@@ -32,3 +32,54 @@ config DRM_I915_PLATFORM_INTEL_I865G
 	select DRM_I915_GEN2
 	help
 	  Include support for Intel i865G platform.
+
+config DRM_I915_GEN3
+	bool
+
+config DRM_I915_PLATFORM_INTEL_I915G
+	bool "Intel i915G platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN3
+	help
+	  Include support for Intel i915G platform.
+
+config DRM_I915_PLATFORM_INTEL_I915GM
+	bool "Intel i915GM platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN3
+	help
+	  Include support for Intel i915GM platform.
+
+config DRM_I915_PLATFORM_INTEL_I945G
+	bool "Intel i945G platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN3
+	help
+	  Include support for Intel i945G platform.
+
+config DRM_I915_PLATFORM_INTEL_I945GM
+	bool "Intel i945GM platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN3
+	help
+	  Include support for Intel i945GM platform.
+
+config DRM_I915_PLATFORM_INTEL_G33
+	bool "Intel G33 platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN3
+	help
+	  Include support for Intel G33 platform.
+
+config DRM_I915_PLATFORM_INTEL_PINEVIEW
+	bool "Intel Pineview platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN3
+	help
+	  Include support for Intel Pineview platform.
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f718655294ea..949a8bf54d55 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2582,19 +2582,21 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_I845G(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I845G)
 #define IS_I85X(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I85X)
 #define IS_I865G(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I865G)
-#define IS_I915G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I915G)
-#define IS_I915GM(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I915GM)
-#define IS_I945G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I945G)
-#define IS_I945GM(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I945GM)
+#define IS_I915G(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I915G)
+#define IS_I915GM(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I915GM)
+#define IS_I945G(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I945G)
+#define IS_I945GM(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I945GM)
 #define IS_I965G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I965G)
 #define IS_I965GM(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I965GM)
 #define IS_G45(dev_priv)	IS_PLATFORM(dev_priv, INTEL_G45)
 #define IS_GM45(dev_priv)	IS_PLATFORM(dev_priv, INTEL_GM45)
 #define IS_G4X(dev_priv)	(IS_G45(dev_priv) || IS_GM45(dev_priv))
-#define IS_PINEVIEW_G(dev_priv)	(INTEL_DEVID(dev_priv) == 0xa001)
-#define IS_PINEVIEW_M(dev_priv)	(INTEL_DEVID(dev_priv) == 0xa011)
-#define IS_PINEVIEW(dev_priv)	IS_PLATFORM(dev_priv, INTEL_PINEVIEW)
-#define IS_G33(dev_priv)	IS_PLATFORM(dev_priv, INTEL_G33)
+#define IS_PINEVIEW_G(dev_priv)	(IS_OPT_PLATFORM(dev_priv, INTEL_PINEVIEW) && \
+				(INTEL_DEVID(dev_priv) == 0xa001))
+#define IS_PINEVIEW_M(dev_priv)	(IS_OPT_PLATFORM(dev_priv, INTEL_PINEVIEW) && \
+				(INTEL_DEVID(dev_priv) == 0xa011))
+#define IS_PINEVIEW(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_PINEVIEW)
+#define IS_G33(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_G33)
 #define IS_IRONLAKE_M(dev_priv)	(INTEL_DEVID(dev_priv) == 0x0046)
 #define IS_IVYBRIDGE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_IVYBRIDGE)
 #define IS_IVB_GT1(dev_priv)	(IS_IVYBRIDGE(dev_priv) && \
@@ -2717,7 +2719,9 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_GEN2(dev_priv) \
 	(IS_ENABLED(CONFIG_DRM_I915_GEN2) && \
 	 ((dev_priv)->info.gen_mask & BIT(1)))
-#define IS_GEN3(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(2)))
+#define IS_GEN3(dev_priv) \
+	(IS_ENABLED(CONFIG_DRM_I915_GEN3) && \
+	 ((dev_priv)->info.gen_mask & BIT(2)))
 #define IS_GEN4(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(3)))
 #define IS_GEN5(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(4)))
 #define IS_GEN6(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(5)))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 9f5054c009b6..9b47cba66d3d 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -116,6 +116,7 @@ static const struct intel_device_info intel_i865g_info = {
 	GEN_DEFAULT_PAGE_SIZES, \
 	CURSOR_OFFSETS
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I915G
 static const struct intel_device_info intel_i915g_info = {
 	GEN3_FEATURES,
 	.platform = INTEL_I915G, .cursor_needs_physical = 1,
@@ -123,7 +124,9 @@ static const struct intel_device_info intel_i915g_info = {
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
 };
+#endif
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I915GM
 static const struct intel_device_info intel_i915gm_info = {
 	GEN3_FEATURES,
 	.platform = INTEL_I915GM,
@@ -135,7 +138,9 @@ static const struct intel_device_info intel_i915gm_info = {
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
 };
+#endif
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I945G
 static const struct intel_device_info intel_i945g_info = {
 	GEN3_FEATURES,
 	.platform = INTEL_I945G,
@@ -144,7 +149,9 @@ static const struct intel_device_info intel_i945g_info = {
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
 };
+#endif
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I945GM
 static const struct intel_device_info intel_i945gm_info = {
 	GEN3_FEATURES,
 	.platform = INTEL_I945GM, .is_mobile = 1,
@@ -155,20 +162,25 @@ static const struct intel_device_info intel_i945gm_info = {
 	.hws_needs_physical = 1,
 	.unfenced_needs_alignment = 1,
 };
+#endif
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_G33
 static const struct intel_device_info intel_g33_info = {
 	GEN3_FEATURES,
 	.platform = INTEL_G33,
 	.has_hotplug = 1,
 	.has_overlay = 1,
 };
+#endif
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_PINEVIEW
 static const struct intel_device_info intel_pineview_info = {
 	GEN3_FEATURES,
 	.platform = INTEL_PINEVIEW, .is_mobile = 1,
 	.has_hotplug = 1,
 	.has_overlay = 1,
 };
+#endif
 
 #define GEN4_FEATURES \
 	.gen = 4, .num_pipes = 2, \
@@ -619,16 +631,28 @@ static const struct pci_device_id pciidlist[] = {
 #ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I865G
 	INTEL_I865G_IDS(&intel_i865g_info),
 #endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I915G
 	INTEL_I915G_IDS(&intel_i915g_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I915GM
 	INTEL_I915GM_IDS(&intel_i915gm_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I945G
 	INTEL_I945G_IDS(&intel_i945g_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I945GM
 	INTEL_I945GM_IDS(&intel_i945gm_info),
-	INTEL_I965G_IDS(&intel_i965g_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_G33
 	INTEL_G33_IDS(&intel_g33_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_PINEVIEW
+	INTEL_PINEVIEW_IDS(&intel_pineview_info),
+#endif
+	INTEL_I965G_IDS(&intel_i965g_info),
 	INTEL_I965GM_IDS(&intel_i965gm_info),
 	INTEL_GM45_IDS(&intel_gm45_info),
 	INTEL_G45_IDS(&intel_g45_info),
-	INTEL_PINEVIEW_IDS(&intel_pineview_info),
 	INTEL_IRONLAKE_D_IDS(&intel_ironlake_d_info),
 	INTEL_IRONLAKE_M_IDS(&intel_ironlake_m_info),
 	INTEL_SNB_D_GT1_IDS(&intel_sandybridge_d_gt1_info),
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
