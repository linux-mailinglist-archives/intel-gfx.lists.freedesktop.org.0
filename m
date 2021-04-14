Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B85CD35F2C7
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:50:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D40CE6E923;
	Wed, 14 Apr 2021 11:50:56 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12CDA6E923
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:56 +0000 (UTC)
IronPort-SDR: xQrEjx/aTdGuSONNAG3wTqlUdi+kK80DHThN5pCkSqm1/az8fRh9GU7KdbyNI6TatoSujngFrl
 ORhiTVHTDN0Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732300"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732300"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:55 -0700
IronPort-SDR: cNahLXrSzqgmIduP9GCdguAsidHP1BnDpC/Lv18aUkr4F6j27A2jcyhHIUGSfp2LSXXDSHas8X
 YQTzC1kH2dbg==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965213"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:54 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:14 +0100
Message-Id: <20210414115028.168504-15-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 14/28] drm/i915: Make Gen11 platform support
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
 drivers/gpu/drm/i915/i915_pci.c        |  2 ++
 3 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.platforms b/drivers/gpu/drm/i915/Kconfig.platforms
index 3d4d6deea0de..4208222b2aaf 100644
--- a/drivers/gpu/drm/i915/Kconfig.platforms
+++ b/drivers/gpu/drm/i915/Kconfig.platforms
@@ -241,3 +241,14 @@ config DRM_I915_PLATFORM_INTEL_CANNONLAKE
 	help
 	  Include support for Intel Cannonlake platforms.
 
+config DRM_I915_GEN11
+	bool
+
+config DRM_I915_PLATFORM_INTEL_ICELAKE
+	bool "Intel Icelake platform support"
+	default y
+	depends on DRM_I915
+	select DRM_I915_GEN11
+	help
+	  Include support for Intel Icelake platforms.
+
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 90a83876b72d..fa5aa0e3a776 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2612,7 +2612,7 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_GEMINILAKE(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_GEMINILAKE)
 #define IS_COFFEELAKE(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_COFFEELAKE)
 #define IS_CANNONLAKE(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_CANNONLAKE)
-#define IS_ICELAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ICELAKE)
+#define IS_ICELAKE(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_ICELAKE)
 #define IS_MOBILE(dev_priv)	((dev_priv)->info.is_mobile)
 #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
 				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
@@ -2750,7 +2750,9 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_GEN10(dev_priv) \
 	(IS_ENABLED(CONFIG_DRM_I915_GEN10) && \
 	 ((dev_priv)->info.gen_mask & BIT(9)))
-#define IS_GEN11(dev_priv)	(!!((dev_priv)->info.gen_mask & BIT(10)))
+#define IS_GEN11(dev_priv) \
+	(IS_ENABLED(CONFIG_DRM_I915_GEN11) && \
+	 ((dev_priv)->info.gen_mask & BIT(10)))
 
 #define IS_LP(dev_priv)	(INTEL_INFO(dev_priv)->is_lp)
 #define IS_GEN9_LP(dev_priv)	(IS_GEN9(dev_priv) && IS_LP(dev_priv))
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 4d0d84dec9df..44de0057f19c 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -645,12 +645,14 @@ static const struct intel_device_info intel_cannonlake_info = {
 	.ddb_size = 2048, \
 	.has_csr = 0
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_ICELAKE
 static const struct intel_device_info intel_icelake_11_info = {
 	GEN11_FEATURES,
 	.platform = INTEL_ICELAKE,
 	.is_alpha_support = 1,
 	.has_resource_streamer = 0,
 };
+#endif
 
 /*
  * Make sure any device matches here are from most specific to most
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
