Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F380D35F2C5
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:50:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83EE76E926;
	Wed, 14 Apr 2021 11:50:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAAE16E91D
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:51 +0000 (UTC)
IronPort-SDR: qsDcIp+JHH0pkjnYoxy/W0Ssj5JXHeT31DLxRGV9WfIXoAHD7EJzfj85pjZte+0jm7GPeC8yHy
 /0pXXzGw2OAA==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732274"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732274"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:51 -0700
IronPort-SDR: KJtQJSPuzekApN+dz8zzEAULj/hLnRhxnH9eu/xAmDfKyXpLa0aufoxZuPGWlwmjO5jzmij8dt
 TNdMmaPpXZ5Q==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965183"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:50 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:10 +0100
Message-Id: <20210414115028.168504-11-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 10/28] drm/i915: Make Gen7/7.5 platform support
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
 drivers/gpu/drm/i915/Kconfig.platforms | 26 ++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h        | 15 +++++++++------
 drivers/gpu/drm/i915/i915_pci.c        | 14 ++++++++++++++
 3 files changed, 49 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.platforms b/drivers/gpu/drm/i915/Kconfig.platforms
index 1302eb3989be..1fe95996879a 100644
--- a/drivers/gpu/drm/i915/Kconfig.platforms
+++ b/drivers/gpu/drm/i915/Kconfig.platforms
@@ -141,3 +141,29 @@ config DRM_I915_PLATFORM_INTEL_SANDYBRIDGE
 	help
 	  Include support for Intel Sandybridge platforms.
 
+config DRM_I915_GEN7
+	bool
+
+config DRM_I915_PLATFORM_INTEL_IVYBRIDGE
+	bool "Intel Ivybridge platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN7
+	help
+	  Include support for Intel Ivybridge platforms.
+
+config DRM_I915_PLATFORM_INTEL_VALLEYVIEW
+	bool "Intel Valleyview platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN7
+	help
+	  Include support for Intel Valleyview platforms.
+
+config DRM_I915_PLATFORM_INTEL_HASWELL
+	bool "Intel Haswell platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN7
+	help
+	  Include support for Intel Haswell platforms.
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2bb6e88f4f63..1b82dadc7b0b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2599,12 +2599,12 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_G33(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_G33)
 #define IS_IRONLAKE_M(dev_priv)	(IS_OPT_PLATFORM(dev_priv, INTEL_IRONLAKE) && \
 				 (INTEL_DEVID(dev_priv) == 0x0046))
-#define IS_IVYBRIDGE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_IVYBRIDGE)
+#define IS_IVYBRIDGE(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_IVYBRIDGE)
 #define IS_IVB_GT1(dev_priv)	(IS_IVYBRIDGE(dev_priv) && \
 				 (dev_priv)->info.gt == 1)
-#define IS_VALLEYVIEW(dev_priv)	IS_PLATFORM(dev_priv, INTEL_VALLEYVIEW)
+#define IS_VALLEYVIEW(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_VALLEYVIEW)
 #define IS_CHERRYVIEW(dev_priv)	IS_PLATFORM(dev_priv, INTEL_CHERRYVIEW)
-#define IS_HASWELL(dev_priv)	IS_PLATFORM(dev_priv, INTEL_HASWELL)
+#define IS_HASWELL(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_HASWELL)
 #define IS_BROADWELL(dev_priv)	IS_PLATFORM(dev_priv, INTEL_BROADWELL)
 #define IS_SKYLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_SKYLAKE)
 #define IS_BROXTON(dev_priv)	IS_PLATFORM(dev_priv, INTEL_BROXTON)
@@ -2630,8 +2630,9 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_HSW_GT3(dev_priv)	(IS_HASWELL(dev_priv) && \
 				 (dev_priv)->info.gt == 3)
 /* ULX machines are also considered ULT. */
-#define IS_HSW_ULX(dev_priv)	(INTEL_DEVID(dev_priv) == 0x0A0E || \
-				 INTEL_DEVID(dev_priv) == 0x0A1E)
+#define IS_HSW_ULX(dev_priv)	(IS_HASWELL(dev_priv) && \
+				 (INTEL_DEVID(dev_priv) == 0x0A0E || \
+				  INTEL_DEVID(dev_priv) == 0x0A1E))
 #define IS_SKL_ULT(dev_priv)	(INTEL_DEVID(dev_priv) == 0x1906 || \
 				 INTEL_DEVID(dev_priv) == 0x1913 || \
 				 INTEL_DEVID(dev_priv) == 0x1916 || \
@@ -2732,7 +2733,9 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_GEN6(dev_priv) \
 	(IS_ENABLED(CONFIG_DRM_I915_GEN6) && \
 	 ((dev_priv)->info.gen_mask & BIT(5)))
-#define IS_GEN7(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(6)))
+#define IS_GEN7(dev_priv) \
+	(IS_ENABLED(CONFIG_DRM_I915_GEN7) && \
+	 ((dev_priv)->info.gen_mask & BIT(6)))
 #define IS_GEN8(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(7)))
 #define IS_GEN9(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(8)))
 #define IS_GEN10(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(9)))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 8a7399787f4b..205a8fc5e8be 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -322,6 +322,7 @@ static const struct intel_device_info intel_sandybridge_m_gt2_info = {
 	.platform = INTEL_IVYBRIDGE, \
 	.has_l3_dpf = 1
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_IVYBRIDGE
 static const struct intel_device_info intel_ivybridge_d_gt1_info = {
 	IVB_D_PLATFORM,
 	.gt = 1,
@@ -331,6 +332,7 @@ static const struct intel_device_info intel_ivybridge_d_gt2_info = {
 	IVB_D_PLATFORM,
 	.gt = 2,
 };
+#endif
 
 #define IVB_M_PLATFORM \
 	GEN7_FEATURES, \
@@ -338,6 +340,7 @@ static const struct intel_device_info intel_ivybridge_d_gt2_info = {
 	.is_mobile = 1, \
 	.has_l3_dpf = 1
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_IVYBRIDGE
 static const struct intel_device_info intel_ivybridge_m_gt1_info = {
 	IVB_M_PLATFORM,
 	.gt = 1,
@@ -355,7 +358,9 @@ static const struct intel_device_info intel_ivybridge_q_info = {
 	.num_pipes = 0, /* legal, last one wins */
 	.has_l3_dpf = 1,
 };
+#endif
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_VALLEYVIEW
 static const struct intel_device_info intel_valleyview_info = {
 	.platform = INTEL_VALLEYVIEW,
 	.gen = 7,
@@ -375,6 +380,7 @@ static const struct intel_device_info intel_valleyview_info = {
 	GEN_DEFAULT_PIPEOFFSETS,
 	CURSOR_OFFSETS
 };
+#endif
 
 #define G75_FEATURES  \
 	GEN7_FEATURES, \
@@ -392,6 +398,7 @@ static const struct intel_device_info intel_valleyview_info = {
 	.platform = INTEL_HASWELL, \
 	.has_l3_dpf = 1
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_HASWELL
 static const struct intel_device_info intel_haswell_gt1_info = {
 	HSW_PLATFORM,
 	.gt = 1,
@@ -406,6 +413,7 @@ static const struct intel_device_info intel_haswell_gt3_info = {
 	HSW_PLATFORM,
 	.gt = 3,
 };
+#endif
 
 #define GEN8_FEATURES \
 	G75_FEATURES, \
@@ -685,15 +693,21 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_SNB_M_GT1_IDS(&intel_sandybridge_m_gt1_info),
 	INTEL_SNB_M_GT2_IDS(&intel_sandybridge_m_gt2_info),
 #endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_IVYBRIDGE
 	INTEL_IVB_Q_IDS(&intel_ivybridge_q_info), /* must be first IVB */
 	INTEL_IVB_M_GT1_IDS(&intel_ivybridge_m_gt1_info),
 	INTEL_IVB_M_GT2_IDS(&intel_ivybridge_m_gt2_info),
 	INTEL_IVB_D_GT1_IDS(&intel_ivybridge_d_gt1_info),
 	INTEL_IVB_D_GT2_IDS(&intel_ivybridge_d_gt2_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_HASWELL
 	INTEL_HSW_GT1_IDS(&intel_haswell_gt1_info),
 	INTEL_HSW_GT2_IDS(&intel_haswell_gt2_info),
 	INTEL_HSW_GT3_IDS(&intel_haswell_gt3_info),
+#endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_VALLEYVIEW
 	INTEL_VLV_IDS(&intel_valleyview_info),
+#endif
 	INTEL_BDW_GT1_IDS(&intel_broadwell_gt1_info),
 	INTEL_BDW_GT2_IDS(&intel_broadwell_gt2_info),
 	INTEL_BDW_GT3_IDS(&intel_broadwell_gt3_info),
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
