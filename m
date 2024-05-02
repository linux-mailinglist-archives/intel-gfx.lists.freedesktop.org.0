Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F48E8B9A8F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 14:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D78F510E636;
	Thu,  2 May 2024 12:14:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PW80Y3WW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 173BD10E636
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 12:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714652073; x=1746188073;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gKScEVdFu709KF3D8JKcE+zH8/oR2pyClB6tM1+pwPk=;
 b=PW80Y3WWhjbDSHCMYkyHkSFWCFEMLts9Tq0CIv2wY5y+45z+bdm8Tqva
 O55eH4TTtHSREF+rAsxBIj04e1pMuBco0EVxmAZQCInxCz4DfYjx6+yJS
 9SdJNobjAHmvKWW7e7MO9HHpR0oSw4EBgkPwil5/Aqam5Pv/y5eWuCCFZ
 KhE3Tsw2+xZFE8EYBSwtTt7ax21CAE0yemh9QjMv9GfZjSAmV37i+m3Js
 JcT8UYuG1cz25lbP8OtpX74OBdPA+AQzwSp1DPW3th3dmXucjjL6i2dr3
 Q5XMWKA7fCJ6bkvqr2+ZPePJHLe5CnGWxL61jZNkO23+sn1lqSdglY3Hc w==;
X-CSE-ConnectionGUID: /+h+i/2RRSmGm56DjAYUjg==
X-CSE-MsgGUID: Mw8kg5rESgCBFmTTj1hOcw==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="10344454"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="10344454"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 05:14:32 -0700
X-CSE-ConnectionGUID: R9XGtrdPT2WATei9jbrZ1w==
X-CSE-MsgGUID: JBYVTWBYTEirChORv6sCtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27108196"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 May 2024 05:14:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 May 2024 15:14:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915: Remove counter productive REGION_* wrappers
Date: Thu,  2 May 2024 15:14:23 +0300
Message-ID: <20240502121423.1002-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240502121423.1002-1-ville.syrjala@linux.intel.com>
References: <20240502121423.1002-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

This extra macro level between the region IDs and their bitmasks
just makes it harder to see what is used where. Get rid of the
wrappers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c                  | 6 +++---
 drivers/gpu/drm/i915/intel_memory_region.h       | 5 -----
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 +-
 3 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 405ca17a990b..b5a056c9cb79 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -76,7 +76,7 @@ __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for d
 	.__runtime.page_sizes = I915_GTT_PAGE_SIZE_4K
 
 #define GEN_DEFAULT_REGIONS \
-	.memory_regions = REGION_SMEM | REGION_STOLEN_SMEM
+	.memory_regions = BIT(INTEL_REGION_SMEM) | BIT(INTEL_REGION_STOLEN_SMEM)
 
 #define I830_FEATURES \
 	GEN(2), \
@@ -655,7 +655,7 @@ static const struct intel_device_info rkl_info = {
 };
 
 #define DGFX_FEATURES \
-	.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
+	.memory_regions = BIT(INTEL_REGION_SMEM) | BIT(INTEL_REGION_LMEM_0) | BIT(INTEL_REGION_STOLEN_LMEM), \
 	.has_llc = 0, \
 	.has_pxp = 0, \
 	.has_snoop = 1, \
@@ -781,7 +781,7 @@ static const struct intel_device_info mtl_info = {
 	.has_snoop = 1,
 	.max_pat_index = 4,
 	.has_pxp = 1,
-	.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
+	.memory_regions = BIT(INTEL_REGION_SMEM) | BIT(INTEL_REGION_STOLEN_LMEM),
 	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
 	MTL_CACHELEVEL,
 };
diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
index 8c927e303c4a..5973b6fe13cf 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.h
+++ b/drivers/gpu/drm/i915/intel_memory_region.h
@@ -38,11 +38,6 @@ enum intel_region_id {
 	INTEL_REGION_UNKNOWN, /* Should be last */
 };
 
-#define REGION_SMEM     BIT(INTEL_REGION_SMEM)
-#define REGION_LMEM     BIT(INTEL_REGION_LMEM_0)
-#define REGION_STOLEN_SMEM   BIT(INTEL_REGION_STOLEN_SMEM)
-#define REGION_STOLEN_LMEM   BIT(INTEL_REGION_STOLEN_LMEM)
-
 #define I915_ALLOC_CONTIGUOUS     BIT(0)
 
 #define for_each_memory_region(mr, i915, id) \
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index af349fd9abc2..0bd29846873b 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -122,7 +122,7 @@ static const struct intel_device_info mock_info = {
 	.__runtime.page_sizes = (I915_GTT_PAGE_SIZE_4K |
 				 I915_GTT_PAGE_SIZE_64K |
 				 I915_GTT_PAGE_SIZE_2M),
-	.memory_regions = REGION_SMEM,
+	.memory_regions = BIT(INTEL_REGION_SMEM),
 	.platform_engine_mask = BIT(0),
 
 	/* simply use legacy cache level for mock device */
-- 
2.43.2

