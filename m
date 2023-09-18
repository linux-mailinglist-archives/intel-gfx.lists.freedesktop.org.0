Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAAB7A5058
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Sep 2023 19:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50C7510E2CA;
	Mon, 18 Sep 2023 17:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF2F910E291
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Sep 2023 17:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695056629; x=1726592629;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e2m2tHDQkclm5R9Zd9xJxcvD8PAuCgd1SWDs5HtDaRg=;
 b=cmItE3UWW+3dm/HQhONfLVnILuAA4oDjqZWWXDYJBvESu9p/v9eT7Te6
 osb8V+3VYODjFXgA2tox6mTV7UyDKQJ9P53wlHdm7vpsQ52CICBn3qso4
 +UNpwU/aa9Dk+u4DAPHuosnh4hdvkMHo32otpHKF+oJZEGYTwdTzg9UT/
 qGaIr4aDAT5jPE3OrdTSUIShqrw+LJNo6tYRIb5HXAR6PHMbFgCqag1+b
 t6G+4j5dLHFPxHtX6/+WCO616tbmWbR5isLtCHTBI1hfLsfPhRTwW9VRS
 SGcW9vbZQdEZZZL1T0wTiXauQQ8JBMhUYkWFpD/emIaNCQMP66MJGnpR5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="378626059"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="378626059"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 10:03:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="816109791"
X-IronPort-AV: E=Sophos;i="6.02,157,1688454000"; d="scan'208";a="816109791"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 10:03:08 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Sep 2023 19:02:52 +0200
Message-ID: <20230918170257.8586-3-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230918170257.8586-1-nirmoy.das@intel.com>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: Create a kernel context for GGTT
 updates
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 matthew.d.roper@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Create a separate kernel context if a platform requires
GGTT updates using MI_UPDATE_GTT blitter command.

Subsequent patch will introduce methods to update
GGTT using this bind context and MI_UPDATE_GTT blitter
command.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Oak Zeng <oak.zeng@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h       |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 35 +++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 ++
 drivers/gpu/drm/i915/gt/intel_gt.c           | 18 ++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.h           |  2 ++
 5 files changed, 59 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index b58c30ac8ef0..40269e4c1e31 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -170,6 +170,8 @@ intel_write_status_page(struct intel_engine_cs *engine, int reg, u32 value)
 #define I915_GEM_HWS_SEQNO		0x40
 #define I915_GEM_HWS_SEQNO_ADDR		(I915_GEM_HWS_SEQNO * sizeof(u32))
 #define I915_GEM_HWS_MIGRATE		(0x42 * sizeof(u32))
+#define I915_GEM_HWS_GGTT_BIND		0x46
+#define I915_GEM_HWS_GGTT_BIND_ADDR	(I915_GEM_HWS_GGTT_BIND * sizeof(u32))
 #define I915_GEM_HWS_PXP		0x60
 #define I915_GEM_HWS_PXP_ADDR		(I915_GEM_HWS_PXP * sizeof(u32))
 #define I915_GEM_HWS_GSC		0x62
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 84a75c95f3f7..0a58fe812ec5 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1418,6 +1418,20 @@ void intel_engine_destroy_pinned_context(struct intel_context *ce)
 	intel_context_put(ce);
 }
 
+static struct intel_context *
+create_ggtt_bind_context(struct intel_engine_cs *engine)
+{
+	static struct lock_class_key kernel;
+
+	/*
+	 * MI_UPDATE_GTT can insert up to 512 PTE entries and there could be multiple
+	 * bind requets at a time so get a bigger ring.
+	 */
+	return intel_engine_create_pinned_context(engine, engine->gt->vm, SZ_512K,
+						  I915_GEM_HWS_GGTT_BIND_ADDR,
+						  &kernel, "ggtt_bind_context");
+}
+
 static struct intel_context *
 create_kernel_context(struct intel_engine_cs *engine)
 {
@@ -1441,7 +1455,7 @@ create_kernel_context(struct intel_engine_cs *engine)
  */
 static int engine_init_common(struct intel_engine_cs *engine)
 {
-	struct intel_context *ce;
+	struct intel_context *ce, *bce = NULL;
 	int ret;
 
 	engine->set_default_submission(engine);
@@ -1457,6 +1471,19 @@ static int engine_init_common(struct intel_engine_cs *engine)
 	ce = create_kernel_context(engine);
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
+	/*
+	 * Create a separate pinned context for GGTT update with blitter engine
+	 * if a platform require such service. MI_UPDATE_GTT works on other
+	 * engines as well but BCS should be less busy engine so pick that for
+	 * GGTT updates.
+	 */
+	if (engine->id == BCS0) {
+		bce = create_ggtt_bind_context(engine);
+		if (IS_ERR(bce)) {
+			intel_engine_destroy_pinned_context(ce);
+			return PTR_ERR(bce);
+		}
+	}
 
 	ret = measure_breadcrumb_dw(ce);
 	if (ret < 0)
@@ -1464,11 +1491,14 @@ static int engine_init_common(struct intel_engine_cs *engine)
 
 	engine->emit_fini_breadcrumb_dw = ret;
 	engine->kernel_context = ce;
+	engine->bind_context = bce;
 
 	return 0;
 
 err_context:
 	intel_engine_destroy_pinned_context(ce);
+	if (bce)
+		intel_engine_destroy_pinned_context(ce);
 	return ret;
 }
 
@@ -1536,6 +1566,9 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 
 	if (engine->kernel_context)
 		intel_engine_destroy_pinned_context(engine->kernel_context);
+	if (engine->bind_context)
+		intel_engine_destroy_pinned_context(engine->bind_context);
+
 
 	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
 	cleanup_status_page(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index a7e677598004..a8f527fab0f0 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -416,6 +416,9 @@ struct intel_engine_cs {
 	struct llist_head barrier_tasks;
 
 	struct intel_context *kernel_context; /* pinned */
+	struct intel_context *bind_context; /* pinned, only for BCS0 */
+	/* mark the bind context's availability status */
+	bool bind_context_ready;
 
 	/**
 	 * pinned_contexts_list: List of pinned contexts. This list is only
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 449f0b7fc843..cd0ff1597db9 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -1019,3 +1019,21 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
 	else
 		return I915_MAP_WC;
 }
+
+void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready)
+{
+	struct intel_engine_cs *engine = gt->engine[BCS0];
+
+	if (engine && engine->bind_context)
+		engine->bind_context_ready = ready;
+}
+
+bool intel_gt_is_bind_context_ready(struct intel_gt *gt)
+{
+	struct intel_engine_cs *engine = gt->engine[BCS0];
+
+	if (engine)
+		return engine->bind_context_ready;
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index 239848bcb2a4..9e70e625cebc 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -180,4 +180,6 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
 					      struct drm_i915_gem_object *obj,
 					      bool always_coherent);
 
+void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready);
+bool intel_gt_is_bind_context_ready(struct intel_gt *gt);
 #endif /* __INTEL_GT_H__ */
-- 
2.41.0

