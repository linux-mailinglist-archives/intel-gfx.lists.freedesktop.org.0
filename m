Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D32AA778445
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Aug 2023 01:46:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 132F410E571;
	Thu, 10 Aug 2023 23:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E6E10E063
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691711185; x=1723247185;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=axpKK2cj3lxYWoVoz0ZTRWsyPImV2cNY3cZD0bcu9YM=;
 b=RaX6ljWAkEnnQwCO4Rv9UAJ3+TQSOoZ3W/rNs3872cK5KixqQBDWYzC3
 lmwbHyPS5D9WNDWDpT6Nk2X97iHEqOsjnYATytFJ5UmyRUG4fDEYbtCfU
 Qmut0VLYqsjQUpMYiwLtK4Bdu5otgP33hSmshlW8LvWGNrUECKc0vIOOY
 8cCdE8ieDJaTkX0gp7uKr/IXuWEUY5eTG0jqIeBI2BfuUhBvAmrllLoY7
 GOLocvFVxGcYePqG3x92fCagLh0IRKkhf5SzCRYIFzu2eWMyptIQRH47Q
 1Ly0K+4VTyXXGm2ijuf5WFhCNcVkNYH8nl3oyvs6rCp4Gr3T4uFuJd8Sq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="369023478"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="369023478"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 16:46:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="682319964"
X-IronPort-AV: E=Sophos;i="6.01,163,1684825200"; d="scan'208";a="682319964"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 16:46:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Aug 2023 16:46:20 -0700
Message-ID: <20230810234618.3738870-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230810234618.3738870-3-matthew.d.roper@intel.com>
References: <20230810234618.3738870-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Eliminate has_4tile feature flag
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We don't really need a feature flag for has_4tile since there's a
well-defined cutover point (DG2) at which all new platforms started
using Tile4 as their Y-major tiling layout.  The GT side of the code
already handles Tile4 vs legacy TileY with checks on the IP version
rather than looking at the feature flag, and we can simplify the display
code similarly (which will also make it more self-contained for re-use
in the Xe driver).

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/i915_drv.h                     | 1 -
 drivers/gpu/drm/i915/i915_pci.c                     | 1 -
 drivers/gpu/drm/i915/intel_device_info.h            | 1 -
 4 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 215e682bd8b7..eb630a946343 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -32,6 +32,7 @@ struct drm_printer;
 	func(overlay_needs_physical); \
 	func(supports_tv);
 
+#define HAS_4TILE(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
 #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
 #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
 #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7a8ce7239bc9..4c6852f0a61c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -737,7 +737,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define CMDPARSER_USES_GGTT(i915) (GRAPHICS_VER(i915) == 7)
 
 #define HAS_LLC(i915)	(INTEL_INFO(i915)->has_llc)
-#define HAS_4TILE(i915)	(INTEL_INFO(i915)->has_4tile)
 #define HAS_SNOOP(i915)	(INTEL_INFO(i915)->has_snoop)
 #define HAS_EDRAM(i915)	((i915)->edram_size_mb)
 #define HAS_SECURE_BATCHES(i915) (GRAPHICS_VER(i915) < 6)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index fcacdc21643c..df7c261410f7 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -713,7 +713,6 @@ static const struct intel_device_info adl_p_info = {
 	.has_3d_pipeline = 1, \
 	.has_64bit_reloc = 1, \
 	.has_flat_ccs = 1, \
-	.has_4tile = 1, \
 	.has_global_mocs = 1, \
 	.has_gt_uc = 1, \
 	.has_llc = 1, \
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index dbfe6443457b..19d120728ff1 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -150,7 +150,6 @@ enum intel_ppgtt_type {
 	func(gpu_reset_clobbers_display); \
 	func(has_reset_engine); \
 	func(has_3d_pipeline); \
-	func(has_4tile); \
 	func(has_flat_ccs); \
 	func(has_global_mocs); \
 	func(has_gmd_id); \
-- 
2.41.0

