Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B77D439E5C2
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 19:46:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39DAF6E98A;
	Mon,  7 Jun 2021 17:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E25D26E987;
 Mon,  7 Jun 2021 17:46:06 +0000 (UTC)
IronPort-SDR: +iJrzYrgdllTuB/CmggI7/sW3ql2hY5s7ItoDF8KCZ4QfOgg0cOkS1TbiLnNnmDw9M4FzYoaDf
 v0zJ3ajdOTZQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="265824463"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="265824463"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 10:46:05 -0700
IronPort-SDR: tZ86k7y3ms/8c41SJNRyJzxjLk2cBedIZ6idncYZzcrpSZcxkgIavvuUG2ZmSjGqrNfqOAPGuq
 pDS8t0EaSMCg==
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="551970182"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 10:46:05 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Mon,  7 Jun 2021 11:03:52 -0700
Message-Id: <20210607180356.165785-11-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210607180356.165785-1-matthew.brost@intel.com>
References: <20210607180356.165785-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/13] drm/i915/guc: Kill guc_clients.ct_pool
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

From: Michal Wajdeczko <michal.wajdeczko@intel.com>

CTB pool is now maintained internally by the GuC as part of its
"private data". No need to allocate separate buffer and pass it
to GuC as yet another ADS.

Signed-off-by: Matthew Brost <matthew.brost@intel.com> #v4
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c  | 12 ------------
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 12 +-----------
 2 files changed, 1 insertion(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 4fcbe4b921f9..6e26fe04ce92 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -26,8 +26,6 @@
  *      +---------------------------------------+
  *      | guc_clients_info                      |
  *      +---------------------------------------+
- *      | guc_ct_pool_entry[size]               |
- *      +---------------------------------------+
  *      | padding                               |
  *      +---------------------------------------+ <== 4K aligned
  *      | private data                          |
@@ -40,7 +38,6 @@ struct __guc_ads_blob {
 	struct guc_policies policies;
 	struct guc_gt_system_info system_info;
 	struct guc_clients_info clients_info;
-	struct guc_ct_pool_entry ct_pool[GUC_CT_POOL_SIZE];
 } __packed;
 
 static u32 guc_ads_private_data_size(struct intel_guc *guc)
@@ -68,11 +65,6 @@ static void guc_policies_init(struct guc_policies *policies)
 	policies->is_valid = 1;
 }
 
-static void guc_ct_pool_entries_init(struct guc_ct_pool_entry *pool, u32 num)
-{
-	memset(pool, 0, num * sizeof(*pool));
-}
-
 static void guc_mapping_table_init(struct intel_gt *gt,
 				   struct guc_gt_system_info *system_info)
 {
@@ -161,11 +153,7 @@ static void __guc_ads_init(struct intel_guc *guc)
 	base = intel_guc_ggtt_offset(guc, guc->ads_vma);
 
 	/* Clients info  */
-	guc_ct_pool_entries_init(blob->ct_pool, ARRAY_SIZE(blob->ct_pool));
-
 	blob->clients_info.clients_num = 1;
-	blob->clients_info.ct_pool_addr = base + ptr_offset(blob, ct_pool);
-	blob->clients_info.ct_pool_count = ARRAY_SIZE(blob->ct_pool);
 
 	/* ADS */
 	blob->ads.scheduler_policies = base + ptr_offset(blob, policies);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 251c3836bd2c..2266444d074f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -295,19 +295,9 @@ struct guc_gt_system_info {
 } __packed;
 
 /* Clients info */
-struct guc_ct_pool_entry {
-	struct guc_ct_buffer_desc desc;
-	u32 reserved[7];
-} __packed;
-
-#define GUC_CT_POOL_SIZE	2
-
 struct guc_clients_info {
 	u32 clients_num;
-	u32 reserved0[13];
-	u32 ct_pool_addr;
-	u32 ct_pool_count;
-	u32 reserved[4];
+	u32 reserved[19];
 } __packed;
 
 /* GuC Additional Data Struct */
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
