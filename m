Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC3F35F2BD
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:50:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CD336E86B;
	Wed, 14 Apr 2021 11:50:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71FF76E42C
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:42 +0000 (UTC)
IronPort-SDR: WEK5y8Z+HwLH48o+m2sDzQXxpL58xUEbVJ9NbWWaLg0dI3PYdfiqFiq+Zc34+j6ZXD/W5VBeOV
 O3SphA5qucSA==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732243"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732243"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:41 -0700
IronPort-SDR: qRvCyWOUCMFmsGFOsuMQM90xLI6rXhSl2oK3x9qenyu6vD0UbxCF2It0MWigrp7OdKSFstse3V
 M2TVfYW+eWuA==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965095"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:40 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:01 +0100
Message-Id: <20210414115028.168504-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 01/28] drm/i915: Make I830 platform support
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
 drivers/gpu/drm/i915/Kconfig           | 5 +++++
 drivers/gpu/drm/i915/Kconfig.platforms | 6 ++++++
 drivers/gpu/drm/i915/i915_drv.h        | 5 ++++-
 drivers/gpu/drm/i915/i915_pci.c        | 4 ++++
 4 files changed, 19 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/Kconfig.platforms

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index dfd95889f4b7..1363d05e6ec5 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -131,3 +131,8 @@ depends on DRM_I915
 depends on EXPERT
 source drivers/gpu/drm/i915/Kconfig.debug
 endmenu
+
+menu "Platform support"
+depends on DRM_I915
+source drivers/gpu/drm/i915/Kconfig.platforms
+endmenu
diff --git a/drivers/gpu/drm/i915/Kconfig.platforms b/drivers/gpu/drm/i915/Kconfig.platforms
new file mode 100644
index 000000000000..f3949fff21e9
--- /dev/null
+++ b/drivers/gpu/drm/i915/Kconfig.platforms
@@ -0,0 +1,6 @@
+config DRM_I915_PLATFORM_INTEL_I830
+	bool "Intel i830 platform support"
+	default y
+	depends on DRM_I915
+	help
+	  Include support for Intel i830 platform.
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7db3557b945c..6ea33c92ccef 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2575,7 +2575,10 @@ intel_info(const struct drm_i915_private *dev_priv)
 
 #define IS_PLATFORM(dev_priv, p) ((dev_priv)->info.platform_mask & BIT(p))
 
-#define IS_I830(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I830)
+#define IS_OPT_PLATFORM(dev_priv, p) \
+	(IS_ENABLED(CONFIG_DRM_I915_PLATFORM_##p) && IS_PLATFORM(dev_priv, p))
+
+#define IS_I830(dev_priv)	IS_OPT_PLATFORM(dev_priv, INTEL_I830)
 #define IS_I845G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I845G)
 #define IS_I85X(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I85X)
 #define IS_I865G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I865G)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 4e7a10c89782..81573073dceb 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -74,12 +74,14 @@
 	GEN_DEFAULT_PAGE_SIZES, \
 	CURSOR_OFFSETS
 
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I830
 static const struct intel_device_info intel_i830_info = {
 	GEN2_FEATURES,
 	.platform = INTEL_I830,
 	.is_mobile = 1, .cursor_needs_physical = 1,
 	.num_pipes = 2, /* legal, last one wins */
 };
+#endif
 
 static const struct intel_device_info intel_i845g_info = {
 	GEN2_FEATURES,
@@ -599,7 +601,9 @@ static const struct intel_device_info intel_icelake_11_info = {
  * PCI ID matches, otherwise we'll use the wrong info struct above.
  */
 static const struct pci_device_id pciidlist[] = {
+#ifdef CONFIG_DRM_I915_PLATFORM_INTEL_I830
 	INTEL_I830_IDS(&intel_i830_info),
+#endif
 	INTEL_I845G_IDS(&intel_i845g_info),
 	INTEL_I85X_IDS(&intel_i85x_info),
 	INTEL_I865G_IDS(&intel_i865g_info),
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
