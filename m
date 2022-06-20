Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62809551335
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:49:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AED6F10E51E;
	Mon, 20 Jun 2022 08:49:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A87110E51E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714965; x=1687250965;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DgGK0Qy+OX17+dodOb8cOHcG8cdfk9keiv9hweZ96kU=;
 b=MEaBdj/69h7ccgdI6zMlivoiY8d9o0Kaxal5AHW1p0vh0GhCTB8REzII
 SpkYSS9bZMYPN7jbYV9tnI9u+G2N9Fw/HZPsvKFmtSbPNHBriAw3RLbJL
 Xdz1eZLlZpvLAUHA1FUBXisJXY4/OekupCVwyy82VPtDCWs4rF/mV9TKh
 PbkLCdABi/unheP6sLxJUJwq0VE7rcE/BID54kJNfOWrNxuydsvC+g8st
 637HhaaLwj6e+0JB8k8/FWpO+XD4TZym/8Jiw4D44oDw6APRYmTMS1zae
 GhkixQrI292wAf6GSOzn3iT9jf2Es1Jqwaerp/FQHvJRRED8/02MxqNgp Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="277389715"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="277389715"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:25 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="643016378"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:49:20 +0300
Message-Id: <c7e25d55d94c1d4d18b8b89c494240c6a4c28c43.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/16] drm/i915: move memory_regions to runtime
 info
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
 drivers/gpu/drm/i915/i915_pci.c                  | 4 ++--
 drivers/gpu/drm/i915/intel_device_info.c         | 2 +-
 drivers/gpu/drm/i915/intel_device_info.h         | 4 ++--
 drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 +-
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6ba1d528863c..6ad71a859cd5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1297,7 +1297,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_IPC(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ipc)
 
-#define HAS_REGION(i915, i) (INTEL_INFO(i915)->memory_regions & (i))
+#define HAS_REGION(i915, i) (RUNTIME_INFO(i915)->memory_regions & (i))
 #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
 
 /*
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 1e9a17062d64..345d39d54bc9 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -159,7 +159,7 @@
 	.__runtime.page_sizes = I915_GTT_PAGE_SIZE_4K
 
 #define GEN_DEFAULT_REGIONS \
-	.memory_regions = REGION_SMEM | REGION_STOLEN_SMEM
+	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_SMEM
 
 #define I830_FEATURES \
 	GEN(2), \
@@ -905,7 +905,7 @@ static const struct intel_device_info rkl_info = {
 };
 
 #define DGFX_FEATURES \
-	.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
+	.__runtime.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
 	.has_llc = 0, \
 	.has_pxp = 0, \
 	.has_snoop = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 0ebb359a7791..f9280f6f66d2 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -108,7 +108,7 @@ void intel_device_info_print(const struct intel_device_info *info,
 		drm_printf(p, "display version: %u\n", info->display.ver);
 
 	drm_printf(p, "gt: %d\n", info->gt);
-	drm_printf(p, "memory-regions: %x\n", info->memory_regions);
+	drm_printf(p, "memory-regions: %x\n", runtime->memory_regions);
 	drm_printf(p, "page-sizes: %x\n", runtime->page_sizes);
 	drm_printf(p, "platform: %s\n", intel_platform_name(info->platform));
 	drm_printf(p, "ppgtt-size: %d\n", runtime->ppgtt_size);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 2025afa9ec71..1a2d19156410 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -218,6 +218,8 @@ struct intel_runtime_info {
 	enum intel_ppgtt_type ppgtt_type;
 	unsigned int ppgtt_size; /* log2, e.g. 31/32/48 bits */
 
+	u32 memory_regions; /* regions supported by the HW */
+
 	bool has_pooled_eu;
 
 	/* display */
@@ -239,8 +241,6 @@ struct intel_device_info {
 
 	unsigned int dma_mask_size; /* available DMA address bits */
 
-	u32 memory_regions; /* regions supported by the HW */
-
 	u32 display_mmio_offset;
 
 	u8 gt; /* GT number, 0 if undefined */
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 4853b5804474..3f05e870dc68 100644
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
2.30.2

