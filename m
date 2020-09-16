Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF3426C5B1
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 19:17:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 806A66EA90;
	Wed, 16 Sep 2020 17:17:03 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3229B6EA83
 for <Intel-GFX@lists.freedesktop.org>; Wed, 16 Sep 2020 17:16:55 +0000 (UTC)
IronPort-SDR: DLY89Rh4aLZmLoNzcPRu6gHi3l03oIriXzaMTatM22NpsvrQn10PF3lG90PXJJUA2xB9DBCsDi
 SRTKa4HMbV4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139534269"
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="139534269"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 10:16:54 -0700
IronPort-SDR: +wp5fPb5WpPvm4FSqxQYyfWAmgU6Nr/3bFr1Je/0yuGAdVMBcz7N+H3b1JEWN/WDu/0t1hmDw1
 9c4US3LUBx4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="287259444"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga007.fm.intel.com with ESMTP; 16 Sep 2020 10:16:54 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 16 Sep 2020 10:16:45 -0700
Message-Id: <20200916171653.2021483-5-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 04/12] drm/i915/guc: Remove GUC_CTL_CTXINFO init
 param
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matthew Brost <matthew.brost@intel.com>

The new GuC interface has removed GUC_CTL_CTXINFO from initialization
params.

Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 18 ------------------
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 15 +++++----------
 2 files changed, 5 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 942c7c187adb..6909da1e1a73 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -213,23 +213,6 @@ static u32 guc_ctl_feature_flags(struct intel_guc *guc)
 	return flags;
 }
 
-static u32 guc_ctl_ctxinfo_flags(struct intel_guc *guc)
-{
-	u32 flags = 0;
-
-	if (intel_guc_submission_is_used(guc)) {
-		u32 ctxnum, base;
-
-		base = intel_guc_ggtt_offset(guc, guc->stage_desc_pool);
-		ctxnum = GUC_MAX_STAGE_DESCRIPTORS / 16;
-
-		base >>= PAGE_SHIFT;
-		flags |= (base << GUC_CTL_BASE_ADDR_SHIFT) |
-			(ctxnum << GUC_CTL_CTXNUM_IN16_SHIFT);
-	}
-	return flags;
-}
-
 static u32 guc_ctl_log_params_flags(struct intel_guc *guc)
 {
 	u32 offset = intel_guc_ggtt_offset(guc, guc->log.vma) >> PAGE_SHIFT;
@@ -291,7 +274,6 @@ static void guc_init_params(struct intel_guc *guc)
 
 	BUILD_BUG_ON(sizeof(guc->params) != GUC_CTL_MAX_DWORDS * sizeof(u32));
 
-	params[GUC_CTL_CTXINFO] = guc_ctl_ctxinfo_flags(guc);
 	params[GUC_CTL_LOG_PARAMS] = guc_ctl_log_params_flags(guc);
 	params[GUC_CTL_FEATURE] = guc_ctl_feature_flags(guc);
 	params[GUC_CTL_DEBUG] = guc_ctl_debug_flags(guc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index fa19c9d248f2..d4e2c32f44cf 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -62,12 +62,7 @@
 #define GUC_STAGE_DESC_ATTR_PCH		BIT(6)
 #define GUC_STAGE_DESC_ATTR_TERMINATED	BIT(7)
 
-/* New GuC control data */
-#define GUC_CTL_CTXINFO			0
-#define   GUC_CTL_CTXNUM_IN16_SHIFT	0
-#define   GUC_CTL_BASE_ADDR_SHIFT	12
-
-#define GUC_CTL_LOG_PARAMS		1
+#define GUC_CTL_LOG_PARAMS		0
 #define   GUC_LOG_VALID			(1 << 0)
 #define   GUC_LOG_NOTIFY_ON_HALF_FULL	(1 << 1)
 #define   GUC_LOG_ALLOC_IN_MEGABYTE	(1 << 3)
@@ -79,11 +74,11 @@
 #define   GUC_LOG_ISR_MASK	        (0x7 << GUC_LOG_ISR_SHIFT)
 #define   GUC_LOG_BUF_ADDR_SHIFT	12
 
-#define GUC_CTL_WA			2
-#define GUC_CTL_FEATURE			3
+#define GUC_CTL_WA			1
+#define GUC_CTL_FEATURE			2
 #define   GUC_CTL_DISABLE_SCHEDULER	(1 << 14)
 
-#define GUC_CTL_DEBUG			4
+#define GUC_CTL_DEBUG			3
 #define   GUC_LOG_VERBOSITY_SHIFT	0
 #define   GUC_LOG_VERBOSITY_LOW		(0 << GUC_LOG_VERBOSITY_SHIFT)
 #define   GUC_LOG_VERBOSITY_MED		(1 << GUC_LOG_VERBOSITY_SHIFT)
@@ -97,7 +92,7 @@
 #define   GUC_LOG_DISABLED		(1 << 6)
 #define   GUC_PROFILE_ENABLED		(1 << 7)
 
-#define GUC_CTL_ADS			5
+#define GUC_CTL_ADS			4
 #define   GUC_ADS_ADDR_SHIFT		1
 #define   GUC_ADS_ADDR_MASK		(0xFFFFF << GUC_ADS_ADDR_SHIFT)
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
