Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EED235F2BF
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:50:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E396E877;
	Wed, 14 Apr 2021 11:50:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 552846E42C
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:45 +0000 (UTC)
IronPort-SDR: wwJPuLvHWWHP+L9f7zE/afaB/5VxeKYDl5tsEjWSebgEF0MHeRSiRaOH1Iu+e2qHfu7PL4XgTH
 drlboo0XfjIQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732247"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732247"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:45 -0700
IronPort-SDR: SK2T21mrhmkkmhKzCYCA4FmM5NznlKO+br8PgpdtkqXYrSFoAnxMo2/yeYYMETh7IrR6EfgV6s
 EM3pqryo5t7g==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965137"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:44 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:04 +0100
Message-Id: <20210414115028.168504-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 04/28] drm/i915: Make I865G platform support
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
 drivers/gpu/drm/i915/Kconfig.platforms | 7 +++++++
 drivers/gpu/drm/i915/i915_drv.h        | 2 +-
 drivers/gpu/drm/i915/i915_pci.c        | 4 ++++
 3 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.platforms b/drivers/gpu/drm/i915/Kconfig.platforms
index ab5ad0eaf4e7..46b78425e6da 100644
--- a/drivers/gpu/drm/i915/Kconfig.platforms
+++ b/drivers/gpu/drm/i915/Kconfig.platforms
@@ -18,3 +18,10 @@ config DRM_I915_PLATFORM_INTEL_I85X
 	depends on DRM_I915
 	help
 	  Include support for Intel i85X platforms.
+
+config DRM_I915_PLATFORM_INTEL_I865G
+	bool "Intel i865G platform support"
+	default y
+	depends on DRM_I915
+	help
+	  Include support for Intel i865G platform.
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 585e6d61a2bd..4a350a6b1800 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2581,7 +2581,7 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_I830(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I830)
 #define IS_I845G(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I845G)
 #define IS_I85X(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I85X)
-#define IS_I865G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I865G)
+#define IS_I865G(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I865G)
 #define IS_I915G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I915G)
 #define IS_I915GM(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I915GM)
 #define IS_I945G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I945G)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 47aeaf817b8c..9f5054c009b6 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -100,10 +100,12 @@ static const struct intel_device_info intel_i85x_info = {
 };
 #endif
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I865G
 static const struct intel_device_info intel_i865g_info = {
 	GEN2_FEATURES,
 	.platform = INTEL_I865G,
 };
+#endif
 
 #define GEN3_FEATURES \
 	.gen = 3, .num_pipes = 2, \
@@ -614,7 +616,9 @@ static const struct pci_device_id pciidlist[] = {
 #ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I85X
 	INTEL_I85X_IDS(&intel_i85x_info),
 #endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I865G
 	INTEL_I865G_IDS(&intel_i865g_info),
+#endif
 	INTEL_I915G_IDS(&intel_i915g_info),
 	INTEL_I915GM_IDS(&intel_i915gm_info),
 	INTEL_I945G_IDS(&intel_i945g_info),
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
