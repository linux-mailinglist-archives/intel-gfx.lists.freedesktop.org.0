Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9097AE82F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 10:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD15210E379;
	Tue, 26 Sep 2023 08:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9314610E379
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 08:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695717477; x=1727253477;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MK4BS8S/BrOBmWGSZoRBsJ+O3d6qewanwVY4nVmeSgg=;
 b=SXYh2sogC8VyTqiCYKqAKsaOrNKXgZHUawkxAJnanDOldpt9eph8Z1Hv
 mzuLC7whOwQc+HWgl7zAcqk4z3THzw5BQNh/9X8acT7ekWfS4vnJX49KW
 SvcfhROFoNzJYCvcQbGSFezQaiolth4Q9ediUHQn6AyBrThBJdKq7F1fb
 weO+JKokHyv8y8+QeYjZF5vNq/wes3AhsmKiFHsXQGmePZxw/oKvd/Vcn
 Mf+68J/Roj/WSK+DEKrlZMcMafoQ9XUYaBkpcf9XNRmdb/eUII+/OuErn
 9ScQvc6VTDuj0TrYwV+JY+thq9iMOlOJws6YPfCTnA5XW/QZ32/G2TBWs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="381419217"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="381419217"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:37:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="1079623507"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="1079623507"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:37:55 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Sep 2023 10:37:37 +0200
Message-ID: <20230926083742.14740-3-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230926083742.14740-1-nirmoy.das@intel.com>
References: <20230926083742.14740-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/7] drm/i915: Create a kernel context for
 GGTT updates
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

v2: fix context leak on err(Oak)
v3: improve err handling and improve function names(Andi)
    add docs for few functions.

Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Oak Zeng <oak.zeng@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine.h       |  2 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 40 ++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 ++
 drivers/gpu/drm/i915/gt/intel_gt.c           | 49 ++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.h           |  3 ++
 5 files changed, 94 insertions(+), 3 deletions(-)

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
index 84a75c95f3f7..64f51defc2cb 100644
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
+	 * MI_UPDATE_GTT can insert up to 511 PTE entries and there could be multiple
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
@@ -1457,17 +1471,33 @@ static int engine_init_common(struct intel_engine_cs *engine)
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
+			ret = PTR_ERR(bce);
+			goto err_ce_context;
+		}
+	}
 
 	ret = measure_breadcrumb_dw(ce);
 	if (ret < 0)
-		goto err_context;
+		goto err_bce_context;
 
 	engine->emit_fini_breadcrumb_dw = ret;
 	engine->kernel_context = ce;
+	engine->bind_context = bce;
 
 	return 0;
 
-err_context:
+err_bce_context:
+	intel_engine_destroy_pinned_context(bce);
+err_ce_context:
 	intel_engine_destroy_pinned_context(ce);
 	return ret;
 }
@@ -1537,6 +1567,10 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 	if (engine->kernel_context)
 		intel_engine_destroy_pinned_context(engine->kernel_context);
 
+	if (engine->bind_context)
+		intel_engine_destroy_pinned_context(engine->bind_context);
+
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
index 93062c35e072..b1b00355a959 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -1024,3 +1024,52 @@ bool intel_gt_needs_wa_22016122933(struct intel_gt *gt)
 {
 	return MEDIA_VER_FULL(gt->i915) == IP_VER(13, 0) && gt->type == GT_MEDIA;
 }
+
+static void __intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready)
+{
+	struct intel_engine_cs *engine = gt->engine[BCS0];
+
+	if (engine && engine->bind_context)
+		engine->bind_context_ready = ready;
+}
+
+/**
+ * intel_gt_bind_context_set_ready - Set the context binding as ready
+ *
+ * @gt: GT structure
+ *
+ * This function marks the binder context as ready.
+ */
+void intel_gt_bind_context_set_ready(struct intel_gt *gt)
+{
+	__intel_gt_bind_context_set_ready(gt, true);
+}
+
+/**
+ * intel_gt_bind_context_set_unready - Set the context binding as ready
+ * @gt: GT structure
+ *
+ * This function marks the binder context as not ready.
+ */
+
+void intel_gt_bind_context_set_unready(struct intel_gt *gt)
+{
+	__intel_gt_bind_context_set_ready(gt, false);
+}
+
+/**
+ * intel_gt_is_bind_context_ready - Check if context binding is ready
+ *
+ * @gt: GT structure
+ *
+ * This function returns binder context's ready status.
+ */
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
index 2cac499d5aa3..970bedf6b78a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -176,4 +176,7 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
 					      struct drm_i915_gem_object *obj,
 					      bool always_coherent);
 
+void intel_gt_bind_context_set_ready(struct intel_gt *gt);
+void intel_gt_bind_context_set_unready(struct intel_gt *gt);
+bool intel_gt_is_bind_context_ready(struct intel_gt *gt);
 #endif /* __INTEL_GT_H__ */
-- 
2.41.0

