Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E55EB599B57
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 14:03:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2053210E964;
	Fri, 19 Aug 2022 12:03:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C42710E964
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 12:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660910582; x=1692446582;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LeYGhghlt+2TT9W2qF6CsC32DuzrfHL5IgSht8yxXIE=;
 b=m06yrfzfdaW2urOkK5941HaPmQheiIEtM0nZuqz54FRRQgQLXQx8ZHMM
 mwlnqLFoJTYyKErZVEx+Zrr+nIePt71MATLx/3C3qhpIi1szhxpK/GtIW
 F6GQXftnjoCt9G3ydd9gDGQ7LN/ae9SjDko7xsQzAVK0e7N8C4uSlwXaC
 R+6WGvIylB0j+0/G7UAKuG+Enf2WCHu0Ij9igcB7853pnnmjAw8GkdKps
 FjHhKSRVilsCciy6NLZswvQAKkQPOM4NTRWPsCZdXrdjfPTtV33rWG1v3
 qgHwtwYjaMnRbAPABxwTtZ4VgL/5sY/qgpcNmnoC9DjhZJVhmhZD0AQ8i w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="294273853"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="294273853"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:01 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="668560600"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 15:02:35 +0300
Message-Id: <8579bfe0fcc5ee8390d4cded68a0167a618097f5.1660910433.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660910433.git.jani.nikula@intel.com>
References: <cover.1660910433.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/14] drm/i915: combine device info printing
 into one
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We'll be moving info between static and runtime info. Combine the
printing functions into one to keep the output sensible and (mostly)
unchanged in the process.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c      |  3 +--
 drivers/gpu/drm/i915/i915_driver.c       |  4 ++--
 drivers/gpu/drm/i915/i915_gpu_error.c    |  3 +--
 drivers/gpu/drm/i915/intel_device_info.c | 11 ++++-------
 drivers/gpu/drm/i915/intel_device_info.h |  7 +++----
 5 files changed, 11 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 94e5c29d2ee3..d131703de3d9 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -66,8 +66,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
 
 	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
 
-	intel_device_info_print_static(INTEL_INFO(i915), &p);
-	intel_device_info_print_runtime(RUNTIME_INFO(i915), &p);
+	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
 	i915_print_iommu_status(i915, &p);
 	intel_gt_info_print(&to_gt(i915)->info, &p);
 	intel_driver_caps_print(&i915->caps, &p);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index deb8a8b76965..563797d5e6e1 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -793,8 +793,8 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
 					     INTEL_INFO(dev_priv)->platform),
 			   GRAPHICS_VER(dev_priv));
 
-		intel_device_info_print_static(INTEL_INFO(dev_priv), &p);
-		intel_device_info_print_runtime(RUNTIME_INFO(dev_priv), &p);
+		intel_device_info_print(INTEL_INFO(dev_priv),
+					RUNTIME_INFO(dev_priv), &p);
 		i915_print_iommu_status(dev_priv, &p);
 		intel_gt_info_print(&to_gt(dev_priv)->info, &p);
 	}
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 543ba63f958e..b5fbc2252784 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -646,8 +646,7 @@ static void err_print_capabilities(struct drm_i915_error_state_buf *m,
 {
 	struct drm_printer p = i915_error_printer(m);
 
-	intel_device_info_print_static(&error->device_info, &p);
-	intel_device_info_print_runtime(&error->runtime_info, &p);
+	intel_device_info_print(&error->device_info, &error->runtime_info, &p);
 	intel_driver_caps_print(&error->driver_caps, &p);
 }
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index d98fbbd589aa..7793ce243981 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -88,8 +88,9 @@ const char *intel_platform_name(enum intel_platform platform)
 	return platform_names[platform];
 }
 
-void intel_device_info_print_static(const struct intel_device_info *info,
-				    struct drm_printer *p)
+void intel_device_info_print(const struct intel_device_info *info,
+			     const struct intel_runtime_info *runtime,
+			     struct drm_printer *p)
 {
 	if (info->graphics.rel)
 		drm_printf(p, "graphics version: %u.%02u\n", info->graphics.ver,
@@ -122,12 +123,8 @@ void intel_device_info_print_static(const struct intel_device_info *info,
 #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->display.name))
 	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
 #undef PRINT_FLAG
-}
 
-void intel_device_info_print_runtime(const struct intel_runtime_info *info,
-				     struct drm_printer *p)
-{
-	drm_printf(p, "rawclk rate: %u kHz\n", info->rawclk_freq);
+	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
 
 #undef INTEL_VGA_DEVICE
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 23bf230aa104..b2fb9440e952 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -291,10 +291,9 @@ const char *intel_platform_name(enum intel_platform platform);
 void intel_device_info_subplatform_init(struct drm_i915_private *dev_priv);
 void intel_device_info_runtime_init(struct drm_i915_private *dev_priv);
 
-void intel_device_info_print_static(const struct intel_device_info *info,
-				    struct drm_printer *p);
-void intel_device_info_print_runtime(const struct intel_runtime_info *info,
-				     struct drm_printer *p);
+void intel_device_info_print(const struct intel_device_info *info,
+			     const struct intel_runtime_info *runtime,
+			     struct drm_printer *p);
 
 void intel_driver_caps_print(const struct intel_driver_caps *caps,
 			     struct drm_printer *p);
-- 
2.34.1

