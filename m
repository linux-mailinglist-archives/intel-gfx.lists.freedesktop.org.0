Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B316A5123
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 03:23:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B4A010E64B;
	Tue, 28 Feb 2023 02:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17A0310E471
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 02:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677551016; x=1709087016;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GM3QpJMr+sgiyEKVriEKh0kS9odV/MvrKzSlZXR9s7k=;
 b=lZ139X81t/olFIXLN5I51c4EJzJcs/hsWBA2UZOs+Rt67K7ZWV4FYGyy
 Kjba84l7SOiqzGG6PB4hsJn6BhOlXnipY7YlBk6qZ7swlbvzEp3Hm+XuL
 0I8kecBbfYJUg9tX07yxIBBFRCVgtA8so/nIpPNIJTuH1mi3KvzOjEyW7
 OYqzxI1mGBBO0JBdX0JlxduFwEjVWg2/O62hLpW9czrxTAPkFgk7Cm/sV
 EjQ+RrPgFyJAk/4Jkd+uxu4p3bYTIt6/8sU86g8gxnuzWLnorAB4WF3ja
 jQxOycP8hEqO3DSRIi6qJjSYIUMpNmE84bZyMIZMsYAb465/xHwJfDnJ2 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="331504074"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="331504074"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 18:23:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="676129225"
X-IronPort-AV: E=Sophos;i="5.98,220,1673942400"; d="scan'208";a="676129225"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 18:23:35 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Feb 2023 18:23:24 -0800
Message-Id: <20230228022329.3615793-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230228022329.3615793-1-umesh.nerlige.ramappa@intel.com>
References: <20230228022329.3615793-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/9] drm/i915/perf: Group engines into
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

v3: (Ashutosh)
- Remove unused members from perf structs
- Update comments
- Update engine_supports_oa check
- Just return 1 in num_perf_groups_per_gt for now
- Set engine->oa_group to NULL to begin with

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h | 10 ++
 drivers/gpu/drm/i915/gt/intel_sseu.c         |  3 +-
 drivers/gpu/drm/i915/i915_perf.c             | 98 +++++++++++++++++---
 drivers/gpu/drm/i915/i915_perf_types.h       | 33 ++++++-
 4 files changed, 125 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 4fd54fb8810f..1a5fb4131ec2 100644
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
@@ -603,6 +605,14 @@ struct intel_engine_cs {
 	} props, defaults;
 
 	I915_SELFTEST_DECLARE(struct fault_attr reset_timeout);
+
+	/*
+	 * The perf group maps to one OA unit which controls one OA buffer. All
+	 * reports corresponding to this engine will be reported to this OA
+	 * buffer. An engine will map to a single OA unit, but a single OA unit
+	 * can generate reports for multiple engines.
+	 */
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
index 1229f65534e2..2554f7a470c9 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1572,20 +1572,16 @@ free_noa_wait(struct i915_perf_stream *stream)
 
 static bool engine_supports_oa(const struct intel_engine_cs *engine)
 {
-	enum intel_platform platform = INTEL_INFO(engine->i915)->platform;
-
-	switch (platform) {
-	default:
-		return engine->class == RENDER_CLASS;
-	}
+	return engine->oa_group;
 }
 
 static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 {
 	struct i915_perf *perf = stream->perf;
 	struct intel_gt *gt = stream->engine->gt;
+	struct i915_perf_group *g = stream->engine->oa_group;
 
-	if (WARN_ON(stream != gt->perf.exclusive_stream))
+	if (WARN_ON(stream != g->exclusive_stream))
 		return;
 
 	/*
@@ -1594,7 +1590,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 	 *
 	 * See i915_oa_init_reg_state() and lrc_configure_all_contexts()
 	 */
-	WRITE_ONCE(gt->perf.exclusive_stream, NULL);
+	WRITE_ONCE(g->exclusive_stream, NULL);
 	perf->ops.disable_metric_set(stream);
 
 	free_oa_buffer(stream);
@@ -3192,6 +3188,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 {
 	struct drm_i915_private *i915 = stream->perf->i915;
 	struct i915_perf *perf = stream->perf;
+	struct i915_perf_group *g;
 	struct intel_gt *gt;
 	int ret;
 
@@ -3201,6 +3198,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 		return -EINVAL;
 	}
 	gt = props->engine->gt;
+	g = props->engine->oa_group;
 
 	/*
 	 * If the sysfs metrics/ directory wasn't registered for some
@@ -3231,7 +3229,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	 * counter reports and marshal to the appropriate client
 	 * we currently only allow exclusive access
 	 */
-	if (gt->perf.exclusive_stream) {
+	if (g->exclusive_stream) {
 		drm_dbg(&stream->perf->i915->drm,
 			"OA unit already in use\n");
 		return -EBUSY;
@@ -3326,7 +3324,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	stream->ops = &i915_oa_stream_ops;
 
 	stream->engine->gt->perf.sseu = props->sseu;
-	WRITE_ONCE(gt->perf.exclusive_stream, stream);
+	WRITE_ONCE(g->exclusive_stream, stream);
 
 	ret = i915_perf_stream_enable_sync(stream);
 	if (ret) {
@@ -3349,7 +3347,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	return 0;
 
 err_enable:
-	WRITE_ONCE(gt->perf.exclusive_stream, NULL);
+	WRITE_ONCE(g->exclusive_stream, NULL);
 	perf->ops.disable_metric_set(stream);
 
 	free_oa_buffer(stream);
@@ -3378,12 +3376,13 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
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
@@ -3975,6 +3974,13 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		return -EINVAL;
 	}
 
+	if (!engine_supports_oa(props->engine)) {
+		drm_dbg(&perf->i915->drm,
+			"Engine not supported by OA %d:%d\n",
+			I915_ENGINE_CLASS_RENDER, 0);
+		return -EINVAL;
+	}
+
 	/* Considering that ID = 0 is reserved and assuming that we don't
 	 * (currently) expect any configurations to ever specify duplicate
 	 * values for a particular property ID then the last _PROP_MAX value is
@@ -4753,6 +4759,60 @@ static struct ctl_table oa_table[] = {
 	{}
 };
 
+static u32 num_perf_groups_per_gt(struct intel_gt *gt)
+{
+	return 1;
+}
+
+static u32 __oa_engine_group(struct intel_engine_cs *engine)
+{
+	if (engine->class == RENDER_CLASS)
+		return PERF_GROUP_OAG;
+	else
+		return PERF_GROUP_INVALID;
+}
+
+static int oa_init_gt(struct intel_gt *gt)
+{
+	u32 num_groups = num_perf_groups_per_gt(gt);
+	struct intel_engine_cs *engine;
+	struct i915_perf_group *g;
+	intel_engine_mask_t tmp;
+
+	g = kcalloc(num_groups, sizeof(*g), GFP_KERNEL);
+	if (!g)
+		return -ENOMEM;
+
+	for_each_engine_masked(engine, gt, ALL_ENGINES, tmp) {
+		u32 index = __oa_engine_group(engine);
+
+		engine->oa_group = NULL;
+		if (index < num_groups) {
+			g[index].num_engines++;
+			engine->oa_group = &g[index];
+		}
+	}
+
+	gt->perf.num_perf_groups = num_groups;
+	gt->perf.group = g;
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
@@ -4919,7 +4979,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 
 	if (perf->ops.enable_metric_set) {
 		struct intel_gt *gt;
-		int i;
+		int i, ret;
 
 		for_each_gt(gt, i915, i)
 			mutex_init(&gt->perf.lock);
@@ -4958,6 +5018,11 @@ void i915_perf_init(struct drm_i915_private *i915)
 
 		perf->i915 = i915;
 
+		ret = oa_init_engine_groups(perf);
+		if (ret)
+			drm_err(&i915->drm,
+				"OA initialization failed %d\n", ret);
+
 		oa_init_supported_formats(perf);
 	}
 }
@@ -4986,10 +5051,15 @@ void i915_perf_sysctl_unregister(void)
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
index e36f046fe2b6..9b4e9fb8e95b 100644
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
@@ -390,6 +398,20 @@ struct i915_oa_ops {
 	u32 (*oa_hw_tail_read)(struct i915_perf_stream *stream);
 };
 
+struct i915_perf_group {
+	/*
+	 * @exclusive_stream: The stream currently using the OA unit. This is
+	 * sometimes accessed outside a syscall associated to its file
+	 * descriptor.
+	 */
+	struct i915_perf_stream *exclusive_stream;
+
+	/*
+	 * @num_engines: The number of engines using this OA unit.
+	 */
+	u32 num_engines;
+};
+
 struct i915_perf_gt {
 	/*
 	 * Lock associated with anything below within this structure.
@@ -402,12 +424,15 @@ struct i915_perf_gt {
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
-- 
2.36.1

