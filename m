Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 470284BAD84
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 00:52:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFD8110E931;
	Thu, 17 Feb 2022 23:52:21 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C292710E17D;
 Thu, 17 Feb 2022 23:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645141929; x=1676677929;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4As7nHeCLM45xywulZQp0NdNJta8IyIGKotK7IkfoqQ=;
 b=RuCEKl/mKZB6LPphRvZJXAwM2vwWxZ4puEyDvuq7Cqi0IKoLmaRmie6b
 14JU3f5GvHJptiVVuNKqjAAtQJhulVzVgBJ1fz5KIjKYBkrRo3kSm2bsw
 b66ZbfVG+3gV5o34DcEhIBHOXLX+pGI+0dKMJ8BA6spaGpT4X4fjHZ493
 n1tPJ/zNrOmuuNCjrws4dyEYJzYg6ayql+L5qGgZB/ZTg3ZoBgxye7Rmv
 v2cW44y9QbqhyYmxHZXvGrLOARTKuJBqMEQa1MTv7Xg+IVvNo72+5prxe
 J4tZm3nGObxwaPVYEtuv7euJWtFRDizqYpx+1kw5CHCf6+sVesFzJIpQ4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="311748994"
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="311748994"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 15:52:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,377,1635231600"; d="scan'208";a="545964433"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 17 Feb 2022 15:52:07 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Thu, 17 Feb 2022 15:52:02 -0800
Message-Id: <20220217235207.930153-4-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220217235207.930153-1-John.C.Harrison@Intel.com>
References: <20220217235207.930153-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/8] drm/i915/guc: Better name for context id
 limit
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The LRC descriptor pool is going away. So, stop using it as the limit
for how many context ids are available.

While at it, also update a kzalloc(sizeof()*count) to be a
kcalloc(count,size).

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/intel_context.c          |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h      |  4 ++--
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c    | 16 ++++++++--------
 drivers/gpu/drm/i915/gt/uc/selftest_guc.c        |  2 +-
 4 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 5d0ec7c49b6a..d87145b8fca0 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -400,7 +400,7 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 	INIT_LIST_HEAD(&ce->guc_state.fences);
 	INIT_LIST_HEAD(&ce->guc_state.requests);
 
-	ce->guc_id.id = GUC_INVALID_LRC_ID;
+	ce->guc_id.id = GUC_INVALID_CONTEXT_ID;
 	INIT_LIST_HEAD(&ce->guc_id.link);
 
 	INIT_LIST_HEAD(&ce->destroyed_link);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index 6a4612a852e2..11099f0320ce 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -32,8 +32,8 @@
 #define GUC_CLIENT_PRIORITY_NORMAL	3
 #define GUC_CLIENT_PRIORITY_NUM		4
 
-#define GUC_MAX_LRC_DESCRIPTORS		65535
-#define	GUC_INVALID_LRC_ID		GUC_MAX_LRC_DESCRIPTORS
+#define GUC_MAX_CONTEXT_ID		65535
+#define	GUC_INVALID_CONTEXT_ID		GUC_MAX_CONTEXT_ID
 
 #define GUC_RENDER_ENGINE		0
 #define GUC_VIDEO_ENGINE		1
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 11bf56b5a266..ad784e8068c7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -354,12 +354,12 @@ request_to_scheduling_context(struct i915_request *rq)
 
 static inline bool context_guc_id_invalid(struct intel_context *ce)
 {
-	return ce->guc_id.id == GUC_INVALID_LRC_ID;
+	return ce->guc_id.id == GUC_INVALID_CONTEXT_ID;
 }
 
 static inline void set_context_guc_id_invalid(struct intel_context *ce)
 {
-	ce->guc_id.id = GUC_INVALID_LRC_ID;
+	ce->guc_id.id = GUC_INVALID_CONTEXT_ID;
 }
 
 static inline struct intel_guc *ce_to_guc(struct intel_context *ce)
@@ -474,7 +474,7 @@ static struct guc_lrc_desc *__get_lrc_desc(struct intel_guc *guc, u32 index)
 {
 	struct guc_lrc_desc *base = guc->lrc_desc_pool_vaddr;
 
-	GEM_BUG_ON(index >= GUC_MAX_LRC_DESCRIPTORS);
+	GEM_BUG_ON(index >= GUC_MAX_CONTEXT_ID);
 
 	return &base[index];
 }
@@ -483,7 +483,7 @@ static inline struct intel_context *__get_context(struct intel_guc *guc, u32 id)
 {
 	struct intel_context *ce = xa_load(&guc->context_lookup, id);
 
-	GEM_BUG_ON(id >= GUC_MAX_LRC_DESCRIPTORS);
+	GEM_BUG_ON(id >= GUC_MAX_CONTEXT_ID);
 
 	return ce;
 }
@@ -494,7 +494,7 @@ static int guc_lrc_desc_pool_create(struct intel_guc *guc)
 	int ret;
 
 	size = PAGE_ALIGN(sizeof(struct guc_lrc_desc) *
-			  GUC_MAX_LRC_DESCRIPTORS);
+			  GUC_MAX_CONTEXT_ID);
 	ret = intel_guc_allocate_and_map_vma(guc, size, &guc->lrc_desc_pool,
 					     (void **)&guc->lrc_desc_pool_vaddr);
 	if (ret)
@@ -2441,7 +2441,7 @@ static void __guc_context_sched_disable(struct intel_guc *guc,
 		GUC_CONTEXT_DISABLE
 	};
 
-	GEM_BUG_ON(guc_id == GUC_INVALID_LRC_ID);
+	GEM_BUG_ON(guc_id == GUC_INVALID_CONTEXT_ID);
 
 	GEM_BUG_ON(intel_context_is_child(ce));
 	trace_intel_context_sched_disable(ce);
@@ -3840,7 +3840,7 @@ static bool __guc_submission_selected(struct intel_guc *guc)
 
 void intel_guc_submission_init_early(struct intel_guc *guc)
 {
-	guc->submission_state.num_guc_ids = GUC_MAX_LRC_DESCRIPTORS;
+	guc->submission_state.num_guc_ids = GUC_MAX_CONTEXT_ID;
 	guc->submission_supported = __guc_submission_supported(guc);
 	guc->submission_selected = __guc_submission_selected(guc);
 }
@@ -3850,7 +3850,7 @@ g2h_context_lookup(struct intel_guc *guc, u32 desc_idx)
 {
 	struct intel_context *ce;
 
-	if (unlikely(desc_idx >= GUC_MAX_LRC_DESCRIPTORS)) {
+	if (unlikely(desc_idx >= GUC_MAX_CONTEXT_ID)) {
 		drm_err(&guc_to_gt(guc)->i915->drm,
 			"Invalid desc_idx %u", desc_idx);
 		return NULL;
diff --git a/drivers/gpu/drm/i915/gt/uc/selftest_guc.c b/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
index a115894d5896..1df71d0796ae 100644
--- a/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
@@ -148,7 +148,7 @@ static int intel_guc_steal_guc_ids(void *arg)
 	struct i915_request *spin_rq = NULL, *rq, *last = NULL;
 	int number_guc_id_stolen = guc->number_guc_id_stolen;
 
-	ce = kzalloc(sizeof(*ce) * GUC_MAX_LRC_DESCRIPTORS, GFP_KERNEL);
+	ce = kcalloc(GUC_MAX_CONTEXT_ID, sizeof(*ce), GFP_KERNEL);
 	if (!ce) {
 		pr_err("Context array allocation failed\n");
 		return -ENOMEM;
-- 
2.25.1

