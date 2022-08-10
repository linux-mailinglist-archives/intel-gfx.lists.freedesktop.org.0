Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE4858ECEF
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 15:19:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E54F4B0D1E;
	Wed, 10 Aug 2022 13:18:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA3238B3A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 13:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660137512; x=1691673512;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qfpKIzINRNkxLvUlWedQyg116+asIbiHHaVtUZ9t1Mk=;
 b=cdvecFFDCxj8HilNtTCkTmxmHN4ve8tgY8jnCj3F7ViEOorVyFboZSqM
 IxlpNtK/sBncxBvBQm9gdU8CkhY38bEs9luIa2te9ph7RqgBJscPmILbI
 c3/RTKu5d1vJ/jEAKzewSwTL2fL33xHigJrWRyUy4G/TQgaXLAFVZcpSL
 md9j/aXYYUvPpMdIpEl2xP7BnWtpjDwZOiLJy7FyNGLp0IZpJwlbZOoJy
 wMeNYawMF/KpIQbcnlpV+lYukeqB8BF854Zo6umT4nAXEJ2vzrCq0FkQu
 fPz/x8SUX8bUYfFbH40YkTonw5A46NzdSygG7Wnsyrb0w7BxLIIOWcHci g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="270853671"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="270853671"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:18:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="664892782"
Received: from iefimov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.49.172])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:18:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Aug 2022 16:18:06 +0300
Message-Id: <4bc73853f111d7dc0914c2d6596e3cb1a4a7fcff.1660137416.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660137416.git.jani.nikula@intel.com>
References: <cover.1660137416.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/15] drm/i915: add initial runtime info
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

