Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B275512F5
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:38:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 108F010E2B3;
	Mon, 20 Jun 2022 08:38:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDAE710E2B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714311; x=1687250311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rQhDhRF96geiCBVV6jcHrvLCUEvD5gEAiTdueTrHDDo=;
 b=a60/oHOLNO6RBsUIAH131Tey17hc4f8DJG8WT5LLGmPXmF2vh181G1uY
 uu8ld/gDtlLQxIfRDugBsWsxindN7xpT4prONrvq+H6J+7RKurdkNY/+U
 gqDwT0QjrxKgBED4BEdruJmSZGj9UhKcqojohyUwNfUTkuHNrr3jX2dsy
 Ig6ryydCkPrmVFOStg8ViX+pW3XLUzDasRJJoqU3BCXiKiQzuTieLYYSD
 Ei4AVx10+MFjXQsLTpbkJN+S7pl+hviz9BZn47trLNATV7rHnpufKCeZJ
 PqcPF9B/SzndDyvr8bm11DPei7mRQvk9CRNg18cBWTxeT7VBcD/M6h+Ib A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="305275654"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="305275654"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:31 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="913558854"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:38:02 +0300
Message-Id: <1037cd2faeb2ad28be07dcb07afd4ec80a80e7a4.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/16] drm/i915: add initial runtime info into
 device info
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
index 0b00a05f1a74..5969cc7805d3 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -796,6 +796,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
 	const struct intel_device_info *match_info =
 		(struct intel_device_info *)ent->driver_data;
 	struct intel_device_info *device_info;
+	struct intel_runtime_info *runtime;
 	struct drm_i915_private *i915;
 
 	i915 = devm_drm_dev_alloc(&pdev->dev, &i915_drm_driver,
@@ -811,7 +812,11 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
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
index b86f68866e35..85385c98b9f4 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -197,6 +197,27 @@ struct ip_version {
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
@@ -252,27 +273,11 @@ struct intel_device_info {
 		u32 degamma_lut_tests;
 		u32 gamma_lut_tests;
 	} color;
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
2.30.2

