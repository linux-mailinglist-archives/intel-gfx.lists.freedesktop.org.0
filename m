Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B6635F2CD
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:51:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C0B06E925;
	Wed, 14 Apr 2021 11:51:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1883C6E923
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:55 +0000 (UTC)
IronPort-SDR: bhZm6ztEKsGVmGAqV/Nn3HaHy+TvfoUFSO10L0+aIVV1VjpdG7fw8/WT/oq3vQ0adBLQTkfBVO
 x3ESf1rknE1g==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732298"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732298"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:54 -0700
IronPort-SDR: vIp6MVf4R+3Hl45epxCWKKD8XKqmBHuZAAdlDivYuB/8HDUNkHLLjqwUIFcbm4JEm/Q9WKZsDS
 0C003UqrH3wA==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965208"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:53 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:13 +0100
Message-Id: <20210414115028.168504-14-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 13/28] drm/i915: Make Gen10 platform support
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
 drivers/gpu/drm/i915/Kconfig.platforms | 11 +++++++++++
 drivers/gpu/drm/i915/i915_drv.h        |  6 ++++--
 drivers/gpu/drm/i915/i915_pci.c        |  4 ++++
 3 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.platforms b/drivers/gpu/drm/i915/Kconfig.platforms
index 5a7aeebee482..3d4d6deea0de 100644
--- a/drivers/gpu/drm/i915/Kconfig.platforms
+++ b/drivers/gpu/drm/i915/Kconfig.platforms
@@ -230,3 +230,14 @@ config DRM_I915_PLATFORM_INTEL_BROXTON
 	help
 	  Include support for Intel Coffeelake platforms.
 
+config DRM_I915_GEN10
+	bool
+
+config DRM_I915_PLATFORM_INTEL_CANNONLAKE
+	bool "Intel Cannonlake platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN10
+	help
+	  Include support for Intel Cannonlake platforms.
+
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 32b22b379a0c..90a83876b72d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2611,7 +2611,7 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_KABYLAKE(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_KABYLAKE)
 #define IS_GEMINILAKE(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_GEMINILAKE)
 #define IS_COFFEELAKE(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_COFFEELAKE)
-#define IS_CANNONLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_CANNONLAKE)
+#define IS_CANNONLAKE(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_CANNONLAKE)
 #define IS_ICELAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ICELAKE)
 #define IS_MOBILE(dev_priv)	((dev_priv)->info.is_mobile)
 #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
@@ -2747,7 +2747,9 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_GEN9(dev_priv) \
 	(IS_ENABLED(CONFIG_DRM_I915_GEN9) && \
 	 ((dev_priv)->info.gen_mask & BIT(8)))
-#define IS_GEN10(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(9)))
+#define IS_GEN10(dev_priv) \
+	(IS_ENABLED(CONFIG_DRM_I915_GEN10) && \
+	 ((dev_priv)->info.gen_mask & BIT(9)))
 #define IS_GEN11(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(10)))
 
 #define IS_LP(dev_priv)	(INTEL_INFO(dev_priv)->is_lp)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 49b0cbfcd76c..4d0d84dec9df 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -629,6 +629,7 @@ static const struct intel_device_info intel_coffeelake_gt3_info = {
 	.ddb_size = 1024, \
 	GLK_COLORS
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_CANNONLAKE
 static const struct intel_device_info intel_cannonlake_info = {
 	GEN10_FEATURES,
 	.is_alpha_support = 1,
@@ -636,6 +637,7 @@ static const struct intel_device_info intel_cannonlake_info = {
 	.gen = 10,
 	.gt = 2,
 };
+#endif
 
 #define GEN11_FEATURES \
 	GEN10_FEATURES, \
@@ -759,7 +761,9 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_CFL_U_GT2_IDS(&intel_coffeelake_gt2_info),
 	INTEL_CFL_U_GT3_IDS(&intel_coffeelake_gt3_info),
 #endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_CANNONLAKE
 	INTEL_CNL_IDS(&intel_cannonlake_info),
+#endif
 	{0, 0, 0}
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
