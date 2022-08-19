Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB5F599B8D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 14:04:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F94910EB0B;
	Fri, 19 Aug 2022 12:04:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE0F110EAD4
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 12:03:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660910607; x=1692446607;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xrV0R+hALRMRR2ryg1INDf30PGIvFtbM0EFtOBtx6pE=;
 b=KwHnJVsDSGc1faf73u2KFRWRI8FQbScRYMNhoyNadyLA1AfnRw99Ctgb
 MQ3UfCUzbmi0M1Wmnjw5yYRKFKuxC2qoTHTaqL5RTx96IqzNNyA0nyOWm
 YJClEtLFMRvfGmQFmWs6dMy5vjdlqYB5+zAU7Z7ildr3QrCun7C6QGMc8
 ATH9df/U4CejEXrXY9dTgLH8OMTW+mvasXqNKIVVj2sOxXi4rgXdIO0tS
 vMrsy6rj95gQFNEFvu2UzYVzcaakOZdiCw21vzxhjKgSCT0RwQTtBUEkA
 fn6q7WD4JwbFmOW7C5JTt5MVredHnayUcMrryGv6CNYWWEIwW2ST4ZS8T g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="294273916"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="294273916"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="936197821"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Aug 2022 15:02:41 +0300
Message-Id: <db6d47abd87c74ae5f5be1cda62af13518c896fb.1660910433.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660910433.git.jani.nikula@intel.com>
References: <cover.1660910433.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/14] drm/i915: move has_pooled_eu to
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

If it's modified runtime, it's runtime info.

Curiously, the flag was never initialized statically.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_sseu.c     | 5 ++---
 drivers/gpu/drm/i915/i915_drv.h          | 2 +-
 drivers/gpu/drm/i915/intel_device_info.c | 2 ++
 drivers/gpu/drm/i915/intel_device_info.h | 3 ++-
 4 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index c6d3050604c8..66f21c735d54 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -382,7 +382,6 @@ static void cherryview_sseu_info_init(struct intel_gt *gt)
 static void gen9_sseu_info_init(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
-	struct intel_device_info *info = mkwrite_device_info(i915);
 	struct sseu_dev_info *sseu = &gt->info.sseu;
 	struct intel_uncore *uncore = gt->uncore;
 	u32 fuse2, eu_disable, subslice_mask;
@@ -471,10 +470,10 @@ static void gen9_sseu_info_init(struct intel_gt *gt)
 
 	if (IS_GEN9_LP(i915)) {
 #define IS_SS_DISABLED(ss)	(!(sseu->subslice_mask.hsw[0] & BIT(ss)))
-		info->has_pooled_eu = hweight8(sseu->subslice_mask.hsw[0]) == 3;
+		RUNTIME_INFO(i915)->has_pooled_eu = hweight8(sseu->subslice_mask.hsw[0]) == 3;
 
 		sseu->min_eu_in_pool = 0;
-		if (info->has_pooled_eu) {
+		if (HAS_POOLED_EU(i915)) {
 			if (IS_SS_DISABLED(2) || IS_SS_DISABLED(0))
 				sseu->min_eu_in_pool = 3;
 			else if (IS_SS_DISABLED(1))
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 625954276a70..8e63dbabb6a9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1313,7 +1313,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_GT_UC(dev_priv)	(INTEL_INFO(dev_priv)->has_gt_uc)
 
-#define HAS_POOLED_EU(dev_priv)	(INTEL_INFO(dev_priv)->has_pooled_eu)
+#define HAS_POOLED_EU(dev_priv)	(RUNTIME_INFO(dev_priv)->has_pooled_eu)
 
 #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 0efbd8f5fe0e..21a6ccd7c407 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -120,6 +120,8 @@ void intel_device_info_print(const struct intel_device_info *info,
 	DEV_INFO_FOR_EACH_FLAG(PRINT_FLAG);
 #undef PRINT_FLAG
 
+	drm_printf(p, "has_pooled_eu: %s\n", str_yes_no(runtime->has_pooled_eu));
+
 #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->display.name))
 	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
 #undef PRINT_FLAG
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d18887890e4c..fc1bee6bb185 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -164,7 +164,6 @@ enum intel_ppgtt_type {
 	func(has_media_ratio_mode); \
 	func(has_mslice_steering); \
 	func(has_one_eu_per_fuse_bit); \
-	func(has_pooled_eu); \
 	func(has_pxp); \
 	func(has_rc6); \
 	func(has_rc6p); \
@@ -226,6 +225,8 @@ struct intel_runtime_info {
 	enum intel_ppgtt_type ppgtt_type;
 	unsigned int ppgtt_size; /* log2, e.g. 31/32/48 bits */
 
+	bool has_pooled_eu;
+
 	/* display */
 	struct {
 		u8 num_sprites[I915_MAX_PIPES];
-- 
2.34.1

