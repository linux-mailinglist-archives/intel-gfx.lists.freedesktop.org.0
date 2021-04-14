Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A69D35F2C8
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:51:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65BEA6E42C;
	Wed, 14 Apr 2021 11:50:58 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0768D6E91D
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:52 +0000 (UTC)
IronPort-SDR: NiIZOTkywbXnMz+U5/H/gXOKrmyUAXXeyKG2es5nnNsUN6ATCuEdH2eT3i7z2apJMad+8JXl6E
 dhtfTNQEswZQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732275"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732275"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:52 -0700
IronPort-SDR: bUVaDgf0WIj2Sh2nWO0hvI4Q4+tPCsH3kM66y5NL0cXGkXe9vr/XFnttbRRPpHdRlO0ABjQqRU
 tzE0cxZx6ZLw==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965197"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:51 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:11 +0100
Message-Id: <20210414115028.168504-12-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 11/28] drm/i915: Make Gen8 platform support
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
 drivers/gpu/drm/i915/Kconfig.platforms | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h        |  8 +++++---
 drivers/gpu/drm/i915/i915_pci.c        |  8 ++++++++
 3 files changed, 32 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.platforms b/drivers/gpu/drm/i915/Kconfig.platforms
index 1fe95996879a..346d440d049c 100644
--- a/drivers/gpu/drm/i915/Kconfig.platforms
+++ b/drivers/gpu/drm/i915/Kconfig.platforms
@@ -167,3 +167,22 @@ config DRM_I915_PLATFORM_INTEL_HASWELL
 	select DRM_I915_GEN7
 	help
 	  Include support for Intel Haswell platforms.
+
+config DRM_I915_GEN8
+	bool
+
+config DRM_I915_PLATFORM_INTEL_BROADWELL
+	bool "Intel Broadwell platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN8
+	help
+	  Include support for Intel Broadwell platforms.
+
+config DRM_I915_PLATFORM_INTEL_CHERRYVIEW
+	bool "Intel Cherryview platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN8
+	help
+	  Include support for Intel Cherryview platforms.
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1b82dadc7b0b..6658015c4a9f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2603,9 +2603,9 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_IVB_GT1(dev_priv)	(IS_IVYBRIDGE(dev_priv) && \
 				 (dev_priv)->info.gt == 1)
 #define IS_VALLEYVIEW(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_VALLEYVIEW)
-#define IS_CHERRYVIEW(dev_priv)	IS_PLATFORM(dev_priv, INTEL_CHERRYVIEW)
+#define IS_CHERRYVIEW(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_CHERRYVIEW)
 #define IS_HASWELL(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_HASWELL)
-#define IS_BROADWELL(dev_priv)	IS_PLATFORM(dev_priv, INTEL_BROADWELL)
+#define IS_BROADWELL(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_BROADWELL)
 #define IS_SKYLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_SKYLAKE)
 #define IS_BROXTON(dev_priv)	IS_PLATFORM(dev_priv, INTEL_BROXTON)
 #define IS_KABYLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_KABYLAKE)
@@ -2736,7 +2736,9 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_GEN7(dev_priv) \
 	(IS_ENABLED(CONFIG_DRM_I915_GEN7) && \
 	 ((dev_priv)->info.gen_mask & BIT(6)))
-#define IS_GEN8(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(7)))
+#define IS_GEN8(dev_priv) \
+	(IS_ENABLED(CONFIG_DRM_I915_GEN8) && \
+	 ((dev_priv)->info.gen_mask & BIT(7)))
 #define IS_GEN9(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(8)))
 #define IS_GEN10(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(9)))
 #define IS_GEN11(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(10)))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 205a8fc5e8be..4645f3e2eea4 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -430,6 +430,7 @@ static const struct intel_device_info intel_haswell_gt3_info = {
 	.gen = 8, \
 	.platform = INTEL_BROADWELL
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_BROADWELL
 static const struct intel_device_info intel_broadwell_gt1_info = {
 	BDW_PLATFORM,
 	.gt = 1,
@@ -453,7 +454,9 @@ static const struct intel_device_info intel_broadwell_gt3_info = {
 	.gt = 3,
 	.ring_mask = RENDER_RING | BSD_RING | BLT_RING | VEBOX_RING | BSD2_RING,
 };
+#endif
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_CHERRYVIEW
 static const struct intel_device_info intel_cherryview_info = {
 	.gen = 8, .num_pipes = 3,
 	.has_hotplug = 1,
@@ -477,6 +480,7 @@ static const struct intel_device_info intel_cherryview_info = {
 	CURSOR_OFFSETS,
 	CHV_COLORS,
 };
+#endif
 
 #define GEN9_DEFAULT_PAGE_SIZES \
 	.page_sizes = I915_GTT_PAGE_SIZE_4K | \
@@ -708,11 +712,15 @@ static const struct pci_device_id pciidlist[] = {
 #ifdef CONFIG_DRM_I915_PLATFORM_INTEL_VALLEYVIEW
 	INTEL_VLV_IDS(&intel_valleyview_info),
 #endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_BROADWELL
 	INTEL_BDW_GT1_IDS(&intel_broadwell_gt1_info),
 	INTEL_BDW_GT2_IDS(&intel_broadwell_gt2_info),
 	INTEL_BDW_GT3_IDS(&intel_broadwell_gt3_info),
 	INTEL_BDW_RSVD_IDS(&intel_broadwell_rsvd_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_CHERRYVIEW
 	INTEL_CHV_IDS(&intel_cherryview_info),
+#endif
 	INTEL_SKL_GT1_IDS(&intel_skylake_gt1_info),
 	INTEL_SKL_GT2_IDS(&intel_skylake_gt2_info),
 	INTEL_SKL_GT3_IDS(&intel_skylake_gt3_info),
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
