Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D2D35F2C1
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7B986E87B;
	Wed, 14 Apr 2021 11:50:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6CE36E87B
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:48 +0000 (UTC)
IronPort-SDR: P5S6jZTIJ9D4BYxwPl/K0LbppnxYbpyKr9a82gu96ZiFFshCTmK0SHzsyCXsaKhkzDkgq1JlSs
 2Y7d8RRt7zUg==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732254"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732254"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:48 -0700
IronPort-SDR: s6et98P+0ESRlGXlqBh48p2dpZR5FNvYTULkr74a1K0k+BUL9Vf3J/hSaOiU1PcXuRXqqnt5XI
 /D1nMrYpRLkw==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965166"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:47 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:07 +0100
Message-Id: <20210414115028.168504-8-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 07/28] drm/i915: Make Gen4 platforms support
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
 drivers/gpu/drm/i915/Kconfig.platforms | 35 ++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h        | 12 +++++----
 drivers/gpu/drm/i915/i915_pci.c        | 16 ++++++++++++
 3 files changed, 58 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.platforms b/drivers/gpu/drm/i915/Kconfig.platforms
index 1fa09884a290..559d563e8f2e 100644
--- a/drivers/gpu/drm/i915/Kconfig.platforms
+++ b/drivers/gpu/drm/i915/Kconfig.platforms
@@ -83,3 +83,38 @@ config DRM_I915_PLATFORM_INTEL_PINEVIEW
 	select DRM_I915_GEN3
 	help
 	  Include support for Intel Pineview platform.
+
+config DRM_I915_GEN4
+	bool
+
+config DRM_I915_PLATFORM_INTEL_I965G
+	bool "Intel i965G platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN4
+	help
+	  Include support for Intel i965G platform.
+
+config DRM_I915_PLATFORM_INTEL_I965GM
+	bool "Intel i965GM platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN4
+	help
+	  Include support for Intel i965GM platform.
+
+config DRM_I915_PLATFORM_INTEL_G45
+	bool "Intel G45 platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN4
+	help
+	  Include support for Intel G45 platform.
+
+config DRM_I915_PLATFORM_INTEL_GM45
+	bool "Intel GM45 platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN4
+	help
+	  Include support for Intel GM45 platform.
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 949a8bf54d55..0d0c6ac043d1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2586,10 +2586,10 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_I915GM(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I915GM)
 #define IS_I945G(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I945G)
 #define IS_I945GM(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I945GM)
-#define IS_I965G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I965G)
-#define IS_I965GM(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I965GM)
-#define IS_G45(dev_priv)	IS_PLATFORM(dev_priv, INTEL_G45)
-#define IS_GM45(dev_priv)	IS_PLATFORM(dev_priv, INTEL_GM45)
+#define IS_I965G(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I965G)
+#define IS_I965GM(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I965GM)
+#define IS_G45(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_G45)
+#define IS_GM45(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_GM45)
 #define IS_G4X(dev_priv)	(IS_G45(dev_priv) || IS_GM45(dev_priv))
 #define IS_PINEVIEW_G(dev_priv)	(IS_OPT_PLATFORM(dev_priv, INTEL_PINEVIEW) && \
 				(INTEL_DEVID(dev_priv) == 0xa001))
@@ -2722,7 +2722,9 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_GEN3(dev_priv) \
 	(IS_ENABLED(CONFIG_DRM_I915_GEN3) && \
 	 ((dev_priv)->info.gen_mask & BIT(2)))
-#define IS_GEN4(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(3)))
+#define IS_GEN4(dev_priv) \
+	(IS_ENABLED(CONFIG_DRM_I915_GEN4) && \
+	 ((dev_priv)->info.gen_mask & BIT(3)))
 #define IS_GEN5(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(4)))
 #define IS_GEN6(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(5)))
 #define IS_GEN7(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(6)))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 9b47cba66d3d..20043a75b40f 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -192,6 +192,7 @@ static const struct intel_device_info intel_pineview_info = {
 	GEN_DEFAULT_PAGE_SIZES, \
 	CURSOR_OFFSETS
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I965G
 static const struct intel_device_info intel_i965g_info = {
 	GEN4_FEATURES,
 	.platform = INTEL_I965G,
@@ -199,7 +200,9 @@ static const struct intel_device_info intel_i965g_info = {
 	.hws_needs_physical = 1,
 	.has_snoop = false,
 };
+#endif
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I965GM
 static const struct intel_device_info intel_i965gm_info = {
 	GEN4_FEATURES,
 	.platform = INTEL_I965GM,
@@ -209,13 +212,17 @@ static const struct intel_device_info intel_i965gm_info = {
 	.hws_needs_physical = 1,
 	.has_snoop = false,
 };
+#endif
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_G45
 static const struct intel_device_info intel_g45_info = {
 	GEN4_FEATURES,
 	.platform = INTEL_G45,
 	.ring_mask = RENDER_RING | BSD_RING,
 };
+#endif
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_GM45
 static const struct intel_device_info intel_gm45_info = {
 	GEN4_FEATURES,
 	.platform = INTEL_GM45,
@@ -223,6 +230,7 @@ static const struct intel_device_info intel_gm45_info = {
 	.supports_tv = 1,
 	.ring_mask = RENDER_RING | BSD_RING,
 };
+#endif
 
 #define GEN5_FEATURES \
 	.gen = 5, .num_pipes = 2, \
@@ -649,10 +657,18 @@ static const struct pci_device_id pciidlist[] = {
 #ifdef CONFIG_DRM_I915_PLATFORM_INTEL_PINEVIEW
 	INTEL_PINEVIEW_IDS(&intel_pineview_info),
 #endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I965G
 	INTEL_I965G_IDS(&intel_i965g_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I965GM
 	INTEL_I965GM_IDS(&intel_i965gm_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_GM45
 	INTEL_GM45_IDS(&intel_gm45_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_G45
 	INTEL_G45_IDS(&intel_g45_info),
+#endif
 	INTEL_IRONLAKE_D_IDS(&intel_ironlake_d_info),
 	INTEL_IRONLAKE_M_IDS(&intel_ironlake_m_info),
 	INTEL_SNB_D_GT1_IDS(&intel_sandybridge_d_gt1_info),
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
