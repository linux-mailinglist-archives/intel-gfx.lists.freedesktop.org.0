Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E2D35F2BE
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BDB26E86C;
	Wed, 14 Apr 2021 11:50:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FEDA6E42C
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:44 +0000 (UTC)
IronPort-SDR: 7QIfGGhzNfV0hKmnikl/Oz4vtaaJwcpPy1hhBanWLZ7Zn16UhzlhEKjN3QMjoJWebObqLExY6v
 YF4e1c9aecCQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732245"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732245"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:44 -0700
IronPort-SDR: 8VYLZnfteSRf1ORYmqEbD+8SSDBtN6gD3y031DjfJTXFbGLvFMJFgoJ7HNDqCB6NRXhMywVQWR
 Oj13J5ZSa0RA==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965122"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:43 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:03 +0100
Message-Id: <20210414115028.168504-4-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 03/28] drm/i915: Make I85X platform support
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
index cf06ed3b0727..ab5ad0eaf4e7 100644
--- a/drivers/gpu/drm/i915/Kconfig.platforms
+++ b/drivers/gpu/drm/i915/Kconfig.platforms
@@ -11,3 +11,10 @@ config DRM_I915_PLATFORM_INTEL_I845G
 	depends on DRM_I915
 	help
 	  Include support for Intel i845G platform.
+
+config DRM_I915_PLATFORM_INTEL_I85X
+	bool "Intel i85X platform support"
+	default y
+	depends on DRM_I915
+	help
+	  Include support for Intel i85X platforms.
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 59231e500f78..585e6d61a2bd 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2580,7 +2580,7 @@ intel_info(const struct drm_i915_private *dev_priv)
 
 #define IS_I830(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I830)
 #define IS_I845G(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I845G)
-#define IS_I85X(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I85X)
+#define IS_I85X(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I85X)
 #define IS_I865G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I865G)
 #define IS_I915G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I915G)
 #define IS_I915GM(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I915GM)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index d98c35d2ff9d..47aeaf817b8c 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -90,6 +90,7 @@ static const struct intel_device_info intel_i845g_info = {
 };
 #endif
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I85X
 static const struct intel_device_info intel_i85x_info = {
 	GEN2_FEATURES,
 	.platform = INTEL_I85X, .is_mobile = 1,
@@ -97,6 +98,7 @@ static const struct intel_device_info intel_i85x_info = {
 	.cursor_needs_physical = 1,
 	.has_fbc = 1,
 };
+#endif
 
 static const struct intel_device_info intel_i865g_info = {
 	GEN2_FEATURES,
@@ -609,7 +611,9 @@ static const struct pci_device_id pciidlist[] = {
 #ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I845G
 	INTEL_I845G_IDS(&intel_i845g_info),
 #endif
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I85X
 	INTEL_I85X_IDS(&intel_i85x_info),
+#endif
 	INTEL_I865G_IDS(&intel_i865g_info),
 	INTEL_I915G_IDS(&intel_i915g_info),
 	INTEL_I915GM_IDS(&intel_i915gm_info),
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
