Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FAA551331
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:49:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDEEF10E645;
	Mon, 20 Jun 2022 08:49:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5059410E5C8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714949; x=1687250949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nQ4i9Y/8xeUzxg+2/yK0m7oulvB24U/PBNc84o/S7rM=;
 b=G4Lxg1vfdEZMmr4imTQgIp+LkScwG7UukunkfH2pRpPMFfopojC68S70
 VY3bJElGBofxGjpu4sbchHrV7aOZQ/4JOQ8gWj9eI+NlORCt2ItPyAbne
 Tn6bZyEfEXFPPDiXiq/x1RsMLpiHymKWf9eKirIimiN0eRrCG3QYr1RnG
 10f3/yHWnmxxRDKyB4BojH/XbtBeluxDaS07EAVXS2lU2O9O1g3xzSVMQ
 kpAgmBtuFgoizBFgj20dFboz3QkNm2YTJz5avklprPG7ebtFzoRV8lfRN
 9gHNyoDOkyJfeuGCxuUKO3rByXLRYBFlnUH5uoq73xzgORjFBEZEHFD9y w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259663688"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="259663688"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:08 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="643016269"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:49:03 +0300
Message-Id: <a148fa73aeaf5658393d1cf54f9fc323da1a8ad9.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/16] drm/i915: move has_pooled_eu to runtime
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

If it's modified runtime, it's runtime info.

Curiously, the flag was never initialized statically.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
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
index 282a8103ed33..6ba1d528863c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1308,7 +1308,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_GT_UC(dev_priv)	(INTEL_INFO(dev_priv)->has_gt_uc)
 
-#define HAS_POOLED_EU(dev_priv)	(INTEL_INFO(dev_priv)->has_pooled_eu)
+#define HAS_POOLED_EU(dev_priv)	(RUNTIME_INFO(dev_priv)->has_pooled_eu)
 
 #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index d1f5af57736c..0ebb359a7791 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -119,6 +119,8 @@ void intel_device_info_print(const struct intel_device_info *info,
 	DEV_INFO_FOR_EACH_FLAG(PRINT_FLAG);
 #undef PRINT_FLAG
 
+	drm_printf(p, "has_pooled_eu: %s\n", str_yes_no(runtime->has_pooled_eu));
+
 #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->display.name))
 	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
 #undef PRINT_FLAG
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 019f30c9e633..2025afa9ec71 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -159,7 +159,6 @@ enum intel_ppgtt_type {
 	func(has_media_ratio_mode); \
 	func(has_mslice_steering); \
 	func(has_one_eu_per_fuse_bit); \
-	func(has_pooled_eu); \
 	func(has_pxp); \
 	func(has_rc6); \
 	func(has_rc6p); \
@@ -219,6 +218,8 @@ struct intel_runtime_info {
 	enum intel_ppgtt_type ppgtt_type;
 	unsigned int ppgtt_size; /* log2, e.g. 31/32/48 bits */
 
+	bool has_pooled_eu;
+
 	/* display */
 	struct {
 		u8 num_sprites[I915_MAX_PIPES];
-- 
2.30.2

