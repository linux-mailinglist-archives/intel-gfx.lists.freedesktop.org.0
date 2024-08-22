Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E0D95B8B2
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 16:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5F8910EAF9;
	Thu, 22 Aug 2024 14:39:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YLccRLBU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0FE010EAFA
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2024 14:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724337595; x=1755873595;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LEn2cEH1ztmoYTxVwBdbEWvIr9MtoJ4easKGBEDFwrY=;
 b=YLccRLBUjyBjb3twJ4ZuWsldriK0zKSRwTJUboDYjYcuB6H2nF57O2fN
 V7GB+7iqtXCnFQ09akC+y9wS/8QQ/qB+/DdXPFjmbebWX67IYqUUoFx0i
 MEdgOi1wVuQeC2wVvlA7N42IIkSUdkRNlCxxol9VobOHQuNXKCTt1ic3f
 IZfXKj5HucUySTZbeqcrUq5EQPE0SvPQYrv20ncFi15+fH+vqJXSPTmUL
 NbCj10TqDBvNx2EwSegwG8ud+xtYuIGVwBFlJ3bNzAAYztbDMSZT/N98I
 /vKWqF+GA+51uvOvsZSMfxPkCd18fOcDRPtTKTFP6VvtbNd+q5YEuNsaU A==;
X-CSE-ConnectionGUID: W/cmATucRFCqYSM+FGLrXw==
X-CSE-MsgGUID: 1/e43wKmTnmDFl79rRhNIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22938811"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="22938811"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 07:39:55 -0700
X-CSE-ConnectionGUID: m3ap3g1LQgeCqqh9j1AtoQ==
X-CSE-MsgGUID: 0T1EP3mER5WnTtppAd4HwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="65806363"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.121])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 07:39:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH] drm/i915: remove unused leftover basedie step code
Date: Thu, 22 Aug 2024 17:39:46 +0300
Message-Id: <20240822143946.2526425-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The basedie step initialization as well as its last users were removed
in commit 326e30e4624c ("drm/i915: Drop dead code for pvc"). Follow
through with removing the unused macros and struct member and debug
logging.

Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 5 -----
 drivers/gpu/drm/i915/intel_device_info.c | 1 -
 drivers/gpu/drm/i915/intel_step.h        | 1 -
 3 files changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 3b1b16e71cf9..eb4c33e83c7c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -410,7 +410,6 @@ static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
 
 #define INTEL_GRAPHICS_STEP(__i915) (RUNTIME_INFO(__i915)->step.graphics_step)
 #define INTEL_MEDIA_STEP(__i915) (RUNTIME_INFO(__i915)->step.media_step)
-#define INTEL_BASEDIE_STEP(__i915) (RUNTIME_INFO(__i915)->step.basedie_step)
 
 #define IS_GRAPHICS_STEP(__i915, since, until) \
 	(drm_WARN_ON(&(__i915)->drm, INTEL_GRAPHICS_STEP(__i915) == STEP_NONE), \
@@ -420,10 +419,6 @@ static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
 	(drm_WARN_ON(&(__i915)->drm, INTEL_MEDIA_STEP(__i915) == STEP_NONE), \
 	 INTEL_MEDIA_STEP(__i915) >= (since) && INTEL_MEDIA_STEP(__i915) < (until))
 
-#define IS_BASEDIE_STEP(__i915, since, until) \
-	(drm_WARN_ON(&(__i915)->drm, INTEL_BASEDIE_STEP(__i915) == STEP_NONE), \
-	 INTEL_BASEDIE_STEP(__i915) >= (since) && INTEL_BASEDIE_STEP(__i915) < (until))
-
 static __always_inline unsigned int
 __platform_mask_index(const struct intel_runtime_info *info,
 		      enum intel_platform p)
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index d92b3050ac78..b485e959f064 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -108,7 +108,6 @@ void intel_device_info_print(const struct intel_device_info *info,
 
 	drm_printf(p, "graphics stepping: %s\n", intel_step_name(runtime->step.graphics_step));
 	drm_printf(p, "media stepping: %s\n", intel_step_name(runtime->step.media_step));
-	drm_printf(p, "base die stepping: %s\n", intel_step_name(runtime->step.basedie_step));
 
 	drm_printf(p, "gt: %d\n", info->gt);
 	drm_printf(p, "memory-regions: 0x%x\n", info->memory_regions);
diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
index 83bd1190edf5..22f1d6905160 100644
--- a/drivers/gpu/drm/i915/intel_step.h
+++ b/drivers/gpu/drm/i915/intel_step.h
@@ -17,7 +17,6 @@ struct intel_step_info {
 	 */
 	u8 graphics_step;	/* Represents the compute tile on Xe_HPC */
 	u8 media_step;
-	u8 basedie_step;
 };
 
 #define STEP_ENUM_VAL(name)  STEP_##name,
-- 
2.39.2

