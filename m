Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF01A58ECF8
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 15:20:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F05D12BFF1;
	Wed, 10 Aug 2022 13:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43AF7B1C9C
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 13:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660137537; x=1691673537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pHI1WcKQYyXyh4FwjO8fz10BKjJjXlOVjMSqUat0vZ0=;
 b=UEQ+f0jDTD7ewP9Rjhdbs77cyxkKG1+xvlR6WZDXx0EeXon961uq5eDD
 zws4g8Uk38KMp+DLyE4yPNzCu97bczJy+Pf3uBh6ovv6pKgKQDshdh81B
 uNXst+u/dtFygb6QSzEewRjyhVTwBWSh5Ly1YCWcmOWEIxQe80MZZWZHi
 tAZ/zEIwAdW+Q8IJ3swNebyp1PONzYvmeqiork+McrWClW1U07FU618Hd
 GPqax8rIRvKoR55cZCCXyF5sv8kVErfTMilkLef4gwAbRuwHAPd+GGkvH
 f5dn9WdeJOdTw+HaYChN1Sw86cidkQcxhbp5qU1MCtYJ8BfA493CaNOhc g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="355079192"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="355079192"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:18:55 -0700
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="747425797"
Received: from iefimov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.49.172])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:18:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Aug 2022 16:18:12 +0300
Message-Id: <b6e088f7568e538490970423346639c4e46fc0d5.1660137416.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660137416.git.jani.nikula@intel.com>
References: <cover.1660137416.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/15] drm/i915: move memory_regions to
 runtime info
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

If it's	modified runtime, it's runtime info.

mock_gem_device() is the only one that modifies it. If that could be
fixed, we wouldn't have to do this.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h                  | 2 +-
 drivers/gpu/drm/i915/i915_pci.c                  | 6 +++---
 drivers/gpu/drm/i915/intel_device_info.c         | 2 +-
 drivers/gpu/drm/i915/intel_device_info.h         | 4 ++--
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 +-
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 56d35aa5d023..16728234462f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1302,7 +1302,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
 
-#define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
+#define HAS_REGION(i915, i) (RUNTIME_INFO(i915)->memory_regions & (i))
 #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
 
 /*
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 33e6ef6f802f..80799229f725 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -163,7 +163,7 @@
 	.__runtime.page_sizes = I915_GTT_PAGE_SIZE_4K
 
 #define GEN_DEFAULT_REGIONS \
-	.memory_regions = REGION_SMEM | REGION_STOLEN_SMEM
+	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_SMEM
 
 #define I830_FEATURES \
 	GEN(2), \
@@ -909,7 +909,7 @@ static const struct intel_device_info rkl_info = {
 };
 
 #define DGFX_FEATURES \
-	.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
+	.__runtime.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
 	.has_llc = 0, \
 	.has_pxp = 0, \
 	.has_snoop = 1, \
@@ -1128,7 +1128,7 @@ static const struct intel_device_info mtl_info = {
 	.display.has_modular_fia = 1,
 	.has_flat_ccs = 0,
 	.has_snoop = 1,
-	.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
+	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
 	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
 	.require_force_probe = 1,
 };
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 21a6ccd7c407..bb16b0ec4ed2 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -109,7 +109,7 @@ void intel_device_info_print(const struct intel_device_info *info,
 		drm_printf(p, "display version: %u\n", info->display.ver);
 
 	drm_printf(p, "gt: %d\n", info->gt);
-	drm_printf(p, "memory-regions: %x\n", info->memory_regions);
+	drm_printf(p, "memory-regions: %x\n", runtime->memory_regions);
 	drm_printf(p, "page-sizes: %x\n", runtime->page_sizes);
 	drm_printf(p, "platform: %s\n", intel_platform_name(info->platform));
 	drm_printf(p, "ppgtt-size: %d\n", runtime->ppgtt_size);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index fc1bee6bb185..1fd6e6e72680 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -225,6 +225,8 @@ struct intel_runtime_info {
 	enum intel_ppgtt_type ppgtt_type;
 	unsigned int ppgtt_size; /* log2, e.g. 31/32/48 bits */
 
+	u32 memory_regions; /* regions supported by the HW */
+
 	bool has_pooled_eu;
 
 	/* display */
@@ -245,8 +247,6 @@ struct intel_device_info {
 
 	unsigned int dma_mask_size; /* available DMA address bits */
 
-	u32 memory_regions; /* regions supported by the HW */
-
 	u8 gt; /* GT number, 0 if undefined */
 
 #define DEFINE_FLAG(name) u8 name:1
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index b23f11d24b97..2fc3472c414b 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -179,7 +179,7 @@ struct drm_i915_private *mock_gem_device(void)
 		I915_GTT_PAGE_SIZE_64K |
 		I915_GTT_PAGE_SIZE_2M;
 
-	mkwrite_device_info(i915)->memory_regions = REGION_SMEM;
+	RUNTIME_INFO(i915)->memory_regions = REGION_SMEM;
 	intel_memory_regions_hw_probe(i915);
 
 	spin_lock_init(&i915->gpu_error.lock);
-- 
2.34.1

