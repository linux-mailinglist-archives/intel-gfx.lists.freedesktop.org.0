Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7515512F4
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A451010E274;
	Mon, 20 Jun 2022 08:38:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDA7710E274
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714309; x=1687250309;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bx0ZvrlAPZ13uSv7Gapo3tL92ty5vqWX3uLWnd6cllU=;
 b=mMmgvi+oMnwq2CsE5g1oENO2w0VZFK9ogM8cPbe23jAU10VkISHHUkZB
 kD9XPpkcxJeh+KPzR4PE18+WEGys8MZAjamX55b7nA7kFJDrT8QDyi9zN
 CsZbuORj+wPF1roihuX0MErX41Hwz/OPRLF+pLuSTYa6pBZJbsc7uUl1M
 z+jpvt/apQPNtH3wCK7E+GtUApMwsrxrpJAbbZ8aAIIXaAMtFMYkt6toa
 Dg77DJThj4bBr/nrk6CFJAjIICcwAWo2FNHvRaRwpAVhAHdwAmoGPinFv
 Vk0p8QiPd4KYMvd0NijZTFOOFLfz2Am7u1VPHo6W5O0m9oir1eIbP8hAo Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="305275628"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="305275628"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:28 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="833012693"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:38:01 +0300
Message-Id: <6b305ceebd1a0a36f3d08c1e21582b186debcb7a.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/16] drm/i915: combine device info printing
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
index aeec3dfe3ebf..0b00a05f1a74 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -775,8 +775,8 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
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
index bff8a111424a..98e77fb02423 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -658,8 +658,7 @@ static void err_print_capabilities(struct drm_i915_error_state_buf *m,
 {
 	struct drm_printer p = i915_error_printer(m);
 
-	intel_device_info_print_static(&error->device_info, &p);
-	intel_device_info_print_runtime(&error->runtime_info, &p);
+	intel_device_info_print(&error->device_info, &error->runtime_info, &p);
 	intel_driver_caps_print(&error->driver_caps, &p);
 }
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index f0bf23726ed8..77f435dd5626 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -87,8 +87,9 @@ const char *intel_platform_name(enum intel_platform platform)
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
@@ -121,12 +122,8 @@ void intel_device_info_print_static(const struct intel_device_info *info,
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
index 08341174ee0a..b86f68866e35 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -285,10 +285,9 @@ const char *intel_platform_name(enum intel_platform platform);
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
2.30.2

