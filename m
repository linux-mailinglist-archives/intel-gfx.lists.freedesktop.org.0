Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E532E69A334
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 01:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A08D10E138;
	Fri, 17 Feb 2023 00:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB7A610E3BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 00:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676595535; x=1708131535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o7xDM+0KTKEd+/iu6BeTA7upkPCQNI36mBA+Y8W1PU4=;
 b=Sj7fJ4pltI2Isi55tSJsQubSf0A9f7UcI5yJ4m3ewIANalUpVRgyB6zg
 J/a2Cm1ZiLcH6V+iWOgIceo6TVdhnhruIjPGUAqB2X/3Q4AQJusmQexUm
 3BBs+69x/vxhqig7Y2cA6Zw4wGO/aZezWm3MQZyj9zlC6Wsv5IF4LALhG
 0/vprKJ3CT4SDv9wDIk2PActw4CHhdEKWKYG4YfmIh0UKJwmcG1qvg/k9
 FvhWJtq1xb1saNIY+3FGFKF6+Rx6RahCzJxAF248onMzCC8m2LS+dZ4aD
 xuZLgPE9bc7q1BMjLc6ZtDzsvXxQsgQMWIhtR+tI2q8AJG1HNKFQiSYgW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="311512380"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="311512380"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:58:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="844390210"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="844390210"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:58:54 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Feb 2023 16:58:45 -0800
Message-Id: <20230217005850.2511422-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915/perf: Group engines into
 respective OA groups
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

Now that we may have multiple OA units in a single GT as well as on
separate GTs, create an engine group that maps to a single OA unit.

v2: (Jani)
- Drop warning on ENOMEM
- Reorder patch in the series

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h |   4 +
 drivers/gpu/drm/i915/gt/intel_sseu.c         |   3 +-
 drivers/gpu/drm/i915/i915_perf.c             | 124 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_perf_types.h       |  51 +++++++-
 4 files changed, 169 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 4fd54fb8810f..8a8b0dce241b 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -53,6 +53,8 @@ struct intel_gt;
 struct intel_ring;
 struct intel_uncore;
 struct intel_breadcrumbs;
+struct intel_engine_cs;
+struct i915_perf_group;
 
 typedef u32 intel_engine_mask_t;
 #define ALL_ENGINES ((intel_engine_mask_t)~0ul)
@@ -603,6 +605,8 @@ struct intel_engine_cs {
 	} props, defaults;
 
 	I915_SELFTEST_DECLARE(struct fault_attr reset_timeout);
+
+	struct i915_perf_group *oa_group;
 };
 
 static inline bool
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 6c6198a257ac..1141f875f5bd 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -6,6 +6,7 @@
 #include <linux/string_helpers.h>
 
 #include "i915_drv.h"
+#include "i915_perf_types.h"
 #include "intel_engine_regs.h"
 #include "intel_gt_regs.h"
 #include "intel_sseu.h"
@@ -677,7 +678,7 @@ u32 intel_sseu_make_rpcs(struct intel_gt *gt,
 	 * If i915/perf is active, we want a stable powergating configuration
 	 * on the system. Use the configuration pinned by i915/perf.
 	 */
-	if (gt->perf.exclusive_stream)
+	if (gt->perf.group && gt->perf.group[PERF_GROUP_OAG].exclusive_stream)
 		req_sseu = &gt->perf.sseu;
 
 	slices = hweight8(req_sseu->slice_mask);
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 1229f65534e2..37c4cc44d68c 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1584,8 +1584,9 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 {
 	struct i915_perf *perf = stream->perf;
 	struct intel_gt *gt = stream->engine->gt;
+	struct i915_perf_group *g = stream->engine->oa_group;
 
-	if (WARN_ON(stream != gt->perf.exclusive_stream))
+	if (WARN_ON(stream != g->exclusive_stream))
 		return;
 
 	/*
@@ -1594,7 +1595,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 	 *
 	 * See i915_oa_init_reg_state() and lrc_configure_all_contexts()
 	 */
-	WRITE_ONCE(gt->perf.exclusive_stream, NULL);
+	WRITE_ONCE(g->exclusive_stream, NULL);
 	perf->ops.disable_metric_set(stream);
 
 	free_oa_buffer(stream);
@@ -3192,6 +3193,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 {
 	struct drm_i915_private *i915 = stream->perf->i915;
 	struct i915_perf *perf = stream->perf;
+	struct i915_perf_group *g;
 	struct intel_gt *gt;
 	int ret;
 
@@ -3202,6 +3204,12 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	}
 	gt = props->engine->gt;
 
+	g = props->engine->oa_group;
+	if (!g) {
+		DRM_DEBUG("Perf group invalid\n");
+		return -EINVAL;
+	}
+
 	/*
 	 * If the sysfs metrics/ directory wasn't registered for some
 	 * reason then don't let userspace try their luck with config
@@ -3231,7 +3239,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	 * counter reports and marshal to the appropriate client
 	 * we currently only allow exclusive access
 	 */
-	if (gt->perf.exclusive_stream) {
+	if (g->exclusive_stream) {
 		drm_dbg(&stream->perf->i915->drm,
 			"OA unit already in use\n");
 		return -EBUSY;
@@ -3326,7 +3334,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	stream->ops = &i915_oa_stream_ops;
 
 	stream->engine->gt->perf.sseu = props->sseu;
-	WRITE_ONCE(gt->perf.exclusive_stream, stream);
+	WRITE_ONCE(g->exclusive_stream, stream);
 
 	ret = i915_perf_stream_enable_sync(stream);
 	if (ret) {
@@ -3349,7 +3357,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	return 0;
 
 err_enable:
-	WRITE_ONCE(gt->perf.exclusive_stream, NULL);
+	WRITE_ONCE(g->exclusive_stream, NULL);
 	perf->ops.disable_metric_set(stream);
 
 	free_oa_buffer(stream);
@@ -3378,12 +3386,13 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
 			    const struct intel_engine_cs *engine)
 {
 	struct i915_perf_stream *stream;
+	struct i915_perf_group *g = engine->oa_group;
 
-	if (!engine_supports_oa(engine))
+	if (!g)
 		return;
 
 	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
-	stream = READ_ONCE(engine->gt->perf.exclusive_stream);
+	stream = READ_ONCE(g->exclusive_stream);
 	if (stream && GRAPHICS_VER(stream->perf->i915) < 12)
 		gen8_update_reg_state_unlocked(ce, stream);
 }
@@ -4753,6 +4762,95 @@ static struct ctl_table oa_table[] = {
 	{}
 };
 
+static u32 __num_perf_groups_per_gt(struct intel_gt *gt)
+{
+	enum intel_platform platform = INTEL_INFO(gt->i915)->platform;
+
+	switch (platform) {
+	default:
+		return 1;
+	}
+}
+
+static u32 __oa_engine_group(struct intel_engine_cs *engine)
+{
+	if (!engine_supports_oa(engine))
+		return PERF_GROUP_INVALID;
+
+	switch (engine->class) {
+	case RENDER_CLASS:
+		return PERF_GROUP_OAG;
+
+	default:
+		return PERF_GROUP_INVALID;
+	}
+}
+
+static void oa_init_groups(struct intel_gt *gt)
+{
+	int i, num_groups = gt->perf.num_perf_groups;
+	struct i915_perf *perf = &gt->i915->perf;
+
+	for (i = 0; i < num_groups; i++) {
+		struct i915_perf_group *g = &gt->perf.group[i];
+
+		/* Fused off engines can result in a group with num_engines == 0 */
+		if (g->num_engines == 0)
+			continue;
+
+		/* Set oa_unit_ids now to ensure ids remain contiguous. */
+		g->oa_unit_id = perf->oa_unit_ids++;
+
+		g->gt = gt;
+	}
+}
+
+static int oa_init_gt(struct intel_gt *gt)
+{
+	u32 num_groups = __num_perf_groups_per_gt(gt);
+	struct intel_engine_cs *engine;
+	struct i915_perf_group *g;
+	intel_engine_mask_t tmp;
+
+	g = kcalloc(num_groups, sizeof(*g), GFP_KERNEL);
+	if (!g)
+		return -ENOMEM;
+
+	for_each_engine_masked(engine, gt, ALL_ENGINES, tmp) {
+		u32 index;
+
+		index = __oa_engine_group(engine);
+		if (index < num_groups) {
+			g[index].engine_mask |= BIT(engine->id);
+			g[index].num_engines++;
+			engine->oa_group = &g[index];
+		} else {
+			engine->oa_group = NULL;
+		}
+	}
+
+	gt->perf.num_perf_groups = num_groups;
+	gt->perf.group = g;
+
+	oa_init_groups(gt);
+
+	return 0;
+}
+
+static int oa_init_engine_groups(struct i915_perf *perf)
+{
+	struct intel_gt *gt;
+	int i, ret;
+
+	for_each_gt(gt, perf->i915, i) {
+		ret = oa_init_gt(gt);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static void oa_init_supported_formats(struct i915_perf *perf)
 {
 	struct drm_i915_private *i915 = perf->i915;
@@ -4919,7 +5017,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 
 	if (perf->ops.enable_metric_set) {
 		struct intel_gt *gt;
-		int i;
+		int i, ret;
 
 		for_each_gt(gt, i915, i)
 			mutex_init(&gt->perf.lock);
@@ -4958,6 +5056,11 @@ void i915_perf_init(struct drm_i915_private *i915)
 
 		perf->i915 = i915;
 
+		ret = oa_init_engine_groups(perf);
+		if (ret)
+			drm_err(&i915->drm,
+				"OA initialization failed %d\n", ret);
+
 		oa_init_supported_formats(perf);
 	}
 }
@@ -4986,10 +5089,15 @@ void i915_perf_sysctl_unregister(void)
 void i915_perf_fini(struct drm_i915_private *i915)
 {
 	struct i915_perf *perf = &i915->perf;
+	struct intel_gt *gt;
+	int i;
 
 	if (!perf->i915)
 		return;
 
+	for_each_gt(gt, perf->i915, i)
+		kfree(gt->perf.group);
+
 	idr_for_each(&perf->metrics_idr, destroy_config, perf);
 	idr_destroy(&perf->metrics_idr);
 
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index e36f046fe2b6..ce99551ad0fd 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -17,6 +17,7 @@
 #include <linux/wait.h>
 #include <uapi/drm/i915_drm.h>
 
+#include "gt/intel_engine_types.h"
 #include "gt/intel_sseu.h"
 #include "i915_reg_defs.h"
 #include "intel_wakeref.h"
@@ -30,6 +31,13 @@ struct i915_vma;
 struct intel_context;
 struct intel_engine_cs;
 
+enum {
+	PERF_GROUP_OAG = 0,
+
+	PERF_GROUP_MAX,
+	PERF_GROUP_INVALID = U32_MAX,
+};
+
 struct i915_oa_format {
 	u32 format;
 	int size;
@@ -390,6 +398,35 @@ struct i915_oa_ops {
 	u32 (*oa_hw_tail_read)(struct i915_perf_stream *stream);
 };
 
+struct i915_perf_group {
+	/*
+	 * @type: Identifier for the OA unit.
+	 */
+	u32 oa_unit_id;
+
+	/*
+	 * @gt: gt that this group belongs to
+	 */
+	struct intel_gt *gt;
+
+	/*
+	 * @exclusive_stream: The stream currently using the OA unit. This is
+	 * sometimes accessed outside a syscall associated to its file
+	 * descriptor.
+	 */
+	struct i915_perf_stream *exclusive_stream;
+
+	/*
+	 * @num_engines: The number of engines using this OA buffer.
+	 */
+	u32 num_engines;
+
+	/*
+	 * @engine_mask: A mask of engines using a single OA buffer.
+	 */
+	intel_engine_mask_t engine_mask;
+};
+
 struct i915_perf_gt {
 	/*
 	 * Lock associated with anything below within this structure.
@@ -402,12 +439,15 @@ struct i915_perf_gt {
 	 */
 	struct intel_sseu sseu;
 
+	/**
+	 * @num_perf_groups: number of perf groups per gt.
+	 */
+	u32 num_perf_groups;
+
 	/*
-	 * @exclusive_stream: The stream currently using the OA unit. This is
-	 * sometimes accessed outside a syscall associated to its file
-	 * descriptor.
+	 * @group: list of OA groups - one for each OA buffer.
 	 */
-	struct i915_perf_stream *exclusive_stream;
+	struct i915_perf_group *group;
 };
 
 struct i915_perf {
@@ -461,6 +501,9 @@ struct i915_perf {
 	unsigned long format_mask[FORMAT_MASK_SIZE];
 
 	atomic64_t noa_programming_delay;
+
+	/* oa unit ids */
+	u32 oa_unit_ids;
 };
 
 #endif /* _I915_PERF_TYPES_H_ */
-- 
2.36.1

