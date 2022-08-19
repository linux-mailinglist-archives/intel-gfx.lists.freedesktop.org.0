Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CFF599B58
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 14:03:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E86AD10EAB9;
	Fri, 19 Aug 2022 12:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A672110E964
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 12:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660910587; x=1692446587;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KUduaeSTnqV9OlAoUgCZlDkzk6s2ZFk8w0W3EifSyLI=;
 b=RAWmfdrvXq+CkHoHcVOT2RVlYt0lUx0BX41If4aISUJNpB08ITu0vYsf
 g39mTZc7Bdti0zK8zuNLFrjVk+PQx0Dl98m+DO8lASUN29g5XypNPJeyZ
 SuInJ2UVAr6l/3ABFQJaMfrR9ipEZhwIXMuPOPf4U0IXu8+EsT96keZt0
 Wh/hoxZT94fEGhsalEUpnbwcEbT+gOIuGeKkYbBqKZarmLCqKX9h2oGw1
 r7zuycsvNTN2F4MSvTlny4RIi+v4NVWATTNfSyHxfyjH9lxPVGLM8z52s
 obNG0+xuixW06S+6IrJJQ2NdB+bPFs+ck1LsFIM5pt4DXb7xJE6R/aXft g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="291754745"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="291754745"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:06 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="637256599"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 15:02:36 +0300
Message-Id: <a77c6db2da20d401f47a0a5e87356b9b3f6292df.1660910433.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660910433.git.jani.nikula@intel.com>
References: <cover.1660910433.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 03/14] drm/i915: add initial runtime info
 into device info
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

Add initial runtime info that we can copy to runtime info at i915
creation time. This lets us define the initial values for runtime info
statically while making it possible to change them runtime. This will be
the new home for the current "const" device info members that are
modified runtime anyway.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c       |  7 +++-
 drivers/gpu/drm/i915/intel_device_info.h | 41 +++++++++++++-----------
 2 files changed, 29 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 563797d5e6e1..1332c70370a6 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -814,6 +814,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	const struct intel_device_info *match_info =
 		(struct intel_device_info *)ent->driver_data;
 	struct intel_device_info *device_info;
+	struct intel_runtime_info *runtime;
 	struct drm_i915_private *i915;
 
 	i915 = devm_drm_dev_alloc(&pdev->dev, &i915_drm_driver,
@@ -829,7 +830,11 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* Setup the write-once "constant" device info */
 	device_info = mkwrite_device_info(i915);
 	memcpy(device_info, match_info, sizeof(*device_info));
-	RUNTIME_INFO(i915)->device_id = pdev->device;
+
+	/* Initialize initial runtime info from static const data and pdev. */
+	runtime = RUNTIME_INFO(i915);
+	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
+	runtime->device_id = pdev->device;
 
 	return i915;
 }
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index b2fb9440e952..4f4d1d77925a 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -202,6 +202,27 @@ struct ip_version {
 	u8 rel;
 };
 
+struct intel_runtime_info {
+	/*
+	 * Platform mask is used for optimizing or-ed IS_PLATFORM calls into
+	 * into single runtime conditionals, and also to provide groundwork
+	 * for future per platform, or per SKU build optimizations.
+	 *
+	 * Array can be extended when necessary if the corresponding
+	 * BUILD_BUG_ON is hit.
+	 */
+	u32 platform_mask[2];
+
+	u16 device_id;
+
+	u8 num_sprites[I915_MAX_PIPES];
+	u8 num_scalers[I915_MAX_PIPES];
+
+	u32 rawclk_freq;
+
+	struct intel_step_info step;
+};
+
 struct intel_device_info {
 	struct ip_version graphics;
 	struct ip_version media;
@@ -258,27 +279,11 @@ struct intel_device_info {
 			u32 gamma_lut_tests;
 		} color;
 	} display;
-};
 
-struct intel_runtime_info {
 	/*
-	 * Platform mask is used for optimizing or-ed IS_PLATFORM calls into
-	 * into single runtime conditionals, and also to provide groundwork
-	 * for future per platform, or per SKU build optimizations.
-	 *
-	 * Array can be extended when necessary if the corresponding
-	 * BUILD_BUG_ON is hit.
+	 * Initial runtime info. Do not access outside of i915_driver_create().
 	 */
-	u32 platform_mask[2];
-
-	u16 device_id;
-
-	u8 num_sprites[I915_MAX_PIPES];
-	u8 num_scalers[I915_MAX_PIPES];
-
-	u32 rawclk_freq;
-
-	struct intel_step_info step;
+	const struct intel_runtime_info __runtime;
 };
 
 struct intel_driver_caps {
-- 
2.34.1

