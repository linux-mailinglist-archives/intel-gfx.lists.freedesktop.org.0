Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A4035F2DA
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:51:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2553C6E937;
	Wed, 14 Apr 2021 11:51:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A99F26E91D
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:51:10 +0000 (UTC)
IronPort-SDR: H8Gck7wP3/zjnqk0KzCZxi+e1kcsIqva9+uQxXu0E4avByTXlfGsuuyiSBNJ70ar3cvhJMtoOe
 QJn0q6eVT2uQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="174119594"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="174119594"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:10 -0700
IronPort-SDR: M9hLSrAVfElN/ozXK2qSgb8jCnsURIPsw1fdE8e62KigD+LuxrcnihbHkxRf4A0dvlBACqy74b
 XrYb/+TJu/VA==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965296"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:51:09 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:28 +0100
Message-Id: <20210414115028.168504-29-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 28/28] drm/i915: Enable dropping small cores when
 not enabled
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
 drivers/gpu/drm/i915/i915_drv.h        | 8 ++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig.platforms b/drivers/gpu/drm/i915/Kconfig.platforms
index 4208222b2aaf..9884ccb7af26 100644
--- a/drivers/gpu/drm/i915/Kconfig.platforms
+++ b/drivers/gpu/drm/i915/Kconfig.platforms
@@ -152,11 +152,15 @@ config DRM_I915_PLATFORM_INTEL_IVYBRIDGE
 	help
 	  Include support for Intel Ivybridge platforms.
 
+config DRM_I915_LP
+	bool
+
 config DRM_I915_PLATFORM_INTEL_VALLEYVIEW
 	bool "Intel Valleyview platform support"
 	default y
 	depends on DRM_I915
 	select DRM_I915_GEN7
+	select DRM_I915_LP
 	help
 	  Include support for Intel Valleyview platforms.
 
@@ -184,6 +188,7 @@ config DRM_I915_PLATFORM_INTEL_CHERRYVIEW
 	default y
 	depends on DRM_I915
 	select DRM_I915_GEN8
+	select DRM_I915_LP
 	help
 	  Include support for Intel Cherryview platforms.
 
@@ -203,6 +208,7 @@ config DRM_I915_PLATFORM_INTEL_BROXTON
 	default y
 	depends on DRM_I915
 	select DRM_I915_GEN9
+	select DRM_I915_LP
 	help
 	  Include support for Intel Broxton platforms.
 
@@ -211,6 +217,7 @@ config DRM_I915_PLATFORM_INTEL_BROXTON
 	default y
 	depends on DRM_I915
 	select DRM_I915_GEN9
+	select DRM_I915_LP
 	help
 	  Include support for Intel Geminilake platforms.
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6f56f3a42cd1..b6b98de675b3 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2767,9 +2767,13 @@ intel_info(const struct drm_i915_private *dev_priv)
 #define IS_GEN10(p) IS_GENx(p, 10)
 #define IS_GEN11(p) IS_GENx(p, 11)
 
-#define IS_LP(dev_priv)	(INTEL_INFO(dev_priv)->is_lp)
+#define IS_LP(dev_priv)	(IS_ENABLED(CONFIG_DRM_I915_LP) && \
+			 (dev_priv)->info.is_lp)
+#define IS_BC(dev_priv)	(!IS_ENABLED(CONFIG_DRM_I915_LP) || \
+			 !(dev_priv)->info.is_lp)
+
 #define IS_GEN9_LP(dev_priv)	(IS_GEN9(dev_priv) && IS_LP(dev_priv))
-#define IS_GEN9_BC(dev_priv)	(IS_GEN9(dev_priv) && !IS_LP(dev_priv))
+#define IS_GEN9_BC(dev_priv)	(IS_GEN9(dev_priv) && IS_BC(dev_priv))
 
 #define ENGINE_MASK(id)	BIT(id)
 #define RENDER_RING	ENGINE_MASK(RCS)
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
