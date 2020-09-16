Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5777B26C5B0
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 19:17:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBAF66EA84;
	Wed, 16 Sep 2020 17:17:02 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE65F6EA83
 for <Intel-GFX@lists.freedesktop.org>; Wed, 16 Sep 2020 17:16:54 +0000 (UTC)
IronPort-SDR: 2u0nmhTNbI1Cs3AdCLcdakv6aJvhKhLg+CrI+NOKij4pYXToUsjg+cOaWOHZkWxtYThxtsjZ0+
 98Am+oE7xmVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139534262"
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="139534262"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 10:16:54 -0700
IronPort-SDR: XGoS+g0U2Yg15kqrT2KFrdNTeNjPLSogqClg4RJdXZeY3DBlobuOjQmHP5JYalZBhQdNNVCWGI
 JKUgCDGBpQ3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="287259436"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga007.fm.intel.com with ESMTP; 16 Sep 2020 10:16:54 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 16 Sep 2020 10:16:43 -0700
Message-Id: <20200916171653.2021483-3-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH 02/12] drm/i915/guc: Support logical engine
 mapping table in ADS
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

The new GuC FW introduces a physical to logical engine mapping table in
the GuC additional data structures which needs to be configured in order
for the firmware to load. This patch initializes the table with a 1 to 1
mapping.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
CC: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c  | 23 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h |  4 +++-
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index d44061033f23..57954c6360e0 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -48,6 +48,27 @@ static void guc_ct_pool_entries_init(struct guc_ct_pool_entry *pool, u32 num)
 	memset(pool, 0, num * sizeof(*pool));
 }
 
+static void guc_mapping_table_init(struct intel_gt *gt,
+				   struct guc_gt_system_info *system_info)
+{
+	unsigned int i, j;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
+
+	/* Table must be set to invalid values for entries not used */
+	for (i = 0; i < GUC_MAX_ENGINE_CLASSES; ++i)
+		for (j = 0; j < GUC_MAX_INSTANCES_PER_CLASS; ++j)
+			system_info->mapping_table[i][j] =
+				GUC_MAX_INSTANCES_PER_CLASS;
+
+	for_each_engine(engine, gt, id) {
+		u8 guc_class = engine->class;
+
+		system_info->mapping_table[guc_class][engine->instance] =
+			engine->instance;
+	}
+}
+
 /*
  * The first 80 dwords of the register state context, containing the
  * execlists and ppgtt registers.
@@ -107,6 +128,8 @@ static void __guc_ads_init(struct intel_guc *guc)
 	blob->system_info.vebox_enable_mask = VEBOX_MASK(gt);
 	blob->system_info.vdbox_sfc_support_mask = gt->info.vdbox_sfc_access;
 
+	guc_mapping_table_init(guc_to_gt(guc), &blob->system_info);
+
 	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
 
 	/* Clients info  */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 8b3684c6a9a1..e283156624b5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -388,7 +388,9 @@ struct guc_gt_system_info {
 	u32 vdbox_enable_mask;
 	u32 vdbox_sfc_support_mask;
 	u32 vebox_enable_mask;
-	u32 reserved[9];
+	u32 reserved1;
+	u8 mapping_table[GUC_MAX_ENGINE_CLASSES][GUC_MAX_INSTANCES_PER_CLASS];
+	u32 reserved2[8];
 } __packed;
 
 /* Clients info */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
