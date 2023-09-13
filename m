Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B08A979E8C9
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 15:11:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED16610E4BB;
	Wed, 13 Sep 2023 13:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DF1610E0A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 13:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694610676; x=1726146676;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pnw5MPupa5EVcykDd6k3JGoXKwkwmGmiPBZuZHWeibE=;
 b=AAw/LPhQjfBtKhsPeg1QmBYz/pHwb1cqxX3yB5nuHtwF3eweHM3O7ATa
 AryIdAS50vzBQxHE2QqNEgf2SvYCyeZsD3pH25i5APqenq6sfLJ1Zec0W
 DX9Ty2PwytXAjqpX2PJU+JJfXgkYuc2d0GOQWNlDGlQCVLK6zDe/GU9IV
 02c2UC9yPfk1EHSuQqX90IVCPZRmq8KdjJ2UmN+sSV3T8IQKaZENDDsTT
 hpzfnEy22etvdAiOuE8ACKfdEoXVM2eLB6hNv8lBbOOU5/SfI8yejNZq1
 7crG/fWWu3Nbty3HuXmlW+Qy8tIdtOEo3oo2HAB5tRq9Pz9Y3e8KWnxLu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="382461113"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="382461113"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 06:09:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="747303651"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; d="scan'208";a="747303651"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 06:09:47 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Sep 2023 15:09:30 +0200
Message-ID: <20230913130935.27707-4-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230913130935.27707-1-nirmoy.das@intel.com>
References: <20230913130935.27707-1-nirmoy.das@intel.com>
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
---
 drivers/gpu/drm/i915/gt/intel_engine.h       |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 33 +++++++++++++++++++-
 drivers/gpu/drm/i915/gt/intel_engine_types.h |  3 ++
 drivers/gpu/drm/i915/gt/intel_gt.c           | 18 +++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.h           |  2 ++
 5 files changed, 57 insertions(+), 1 deletion(-)

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
index dfb69fc977a0..52a24f55cb57 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1419,6 +1419,20 @@ void intel_engine_destroy_pinned_context(struct intel_context *ce)
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
@@ -1442,7 +1456,7 @@ create_kernel_context(struct intel_engine_cs *engine)
  */
 static int engine_init_common(struct intel_engine_cs *engine)
 {
-	struct intel_context *ce;
+	struct intel_context *ce, *bce = NULL;
 	int ret;
 
 	engine->set_default_submission(engine);
@@ -1458,6 +1472,17 @@ static int engine_init_common(struct intel_engine_cs *engine)
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
+		if (IS_ERR(bce))
+			return PTR_ERR(bce);
+	}
 
 	ret = measure_breadcrumb_dw(ce);
 	if (ret < 0)
@@ -1465,11 +1490,14 @@ static int engine_init_common(struct intel_engine_cs *engine)
 
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
 
@@ -1537,6 +1565,9 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
 
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

