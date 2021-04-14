Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD6235F2C2
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41EFC6E492;
	Wed, 14 Apr 2021 11:50:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C7536E492
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:49 +0000 (UTC)
IronPort-SDR: zsbjE85QiMAul5FMSna2nMxfM7135gxQjUQqvQiqvxW5wDDU2NdOPvUofgnw/nn0pc+hcRSBXV
 /Z7IW0v3XsDg==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732259"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732259"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:49 -0700
IronPort-SDR: Fp02eC/1tGJQvEtgxhoMOKnKb9/0m+uTYGut0r5OuG10bVhVWn0uiMRv6vWU6bc28N+D3IyvTj
 JJQvN9jBCJQA==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965170"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:48 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:08 +0100
Message-Id: <20210414115028.168504-9-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 08/28] drm/i915: Make Ironlake/Gen5 platforms
 support optional
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
 drivers/gpu/drm/i915/Kconfig.platforms | 11 +++++++++++
 drivers/gpu/drm/i915/i915_drv.h        |  7 +++++--
 drivers/gpu/drm/i915/i915_pci.c        |  4 ++++
 3 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.platforms b/drivers/gpu/drm/i915/Kconfig.platforms
index 559d563e8f2e..ade0520a1559 100644
--- a/drivers/gpu/drm/i915/Kconfig.platforms
+++ b/drivers/gpu/drm/i915/Kconfig.platforms
@@ -118,3 +118,14 @@ config DRM_I915_PLATFORM_INTEL_GM45
 	select DRM_I915_GEN4
 	help
 	  Include support for Intel GM45 platform.
+
+config DRM_I915_GEN5
+	bool
+
+config DRM_I915_PLATFORM_INTEL_IRONLAKE
+	bool "Intel Ironlake platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN5
+	help
+	  Include support for Intel Ironlake platforms.
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0d0c6ac043d1..741c1fff3616 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2597,7 +2597,8 @@ intel_info(const struct drm_i915_private *dev_priv)
 				(INTEL_DEVID(dev_priv) == 0xa011))
 #define IS_PINEVIEW(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_PINEVIEW)
 #define IS_G33(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_G33)
-#define IS_IRONLAKE_M(dev_priv)	(INTEL_DEVID(dev_priv) == 0x0046)
+#define IS_IRONLAKE_M(dev_priv)	(IS_OPT_PLATFORM(dev_priv, INTEL_IRONLAKE) && \
+				 (INTEL_DEVID(dev_priv) == 0x0046))
 #define IS_IVYBRIDGE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_IVYBRIDGE)
 #define IS_IVB_GT1(dev_priv)	(IS_IVYBRIDGE(dev_priv) && \
 				 (dev_priv)->info.gt == 1)
@@ -2725,7 +2726,9 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_GEN4(dev_priv) \
 	(IS_ENABLED(CONFIG_DRM_I915_GEN4) && \
 	 ((dev_priv)->info.gen_mask & BIT(3)))
-#define IS_GEN5(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(4)))
+#define IS_GEN5(dev_priv) \
+	(IS_ENABLED(CONFIG_DRM_I915_GEN5) && \
+	 ((dev_priv)->info.gen_mask & BIT(4)))
 #define IS_GEN6(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(5)))
 #define IS_GEN7(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(6)))
 #define IS_GEN8(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(7)))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 20043a75b40f..dbc580f05678 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -243,6 +243,7 @@ static const struct intel_device_info intel_gm45_info = {
 	GEN_DEFAULT_PAGE_SIZES, \
 	CURSOR_OFFSETS
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_IRONLAKE
 static const struct intel_device_info intel_ironlake_d_info = {
 	GEN5_FEATURES,
 	.platform = INTEL_IRONLAKE,
@@ -253,6 +254,7 @@ static const struct intel_device_info intel_ironlake_m_info = {
 	.platform = INTEL_IRONLAKE,
 	.is_mobile = 1, .has_fbc = 1,
 };
+#endif
 
 #define GEN6_FEATURES \
 	.gen = 6, .num_pipes = 2, \
@@ -669,8 +671,10 @@ static const struct pci_device_id pciidlist[] = {
 #ifdef CONFIG_DRM_I915_PLATFORM_INTEL_G45
 	INTEL_G45_IDS(&intel_g45_info),
 #endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_IRONLAKE
 	INTEL_IRONLAKE_D_IDS(&intel_ironlake_d_info),
 	INTEL_IRONLAKE_M_IDS(&intel_ironlake_m_info),
+#endif
 	INTEL_SNB_D_GT1_IDS(&intel_sandybridge_d_gt1_info),
 	INTEL_SNB_D_GT2_IDS(&intel_sandybridge_d_gt2_info),
 	INTEL_SNB_M_GT1_IDS(&intel_sandybridge_m_gt1_info),
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
