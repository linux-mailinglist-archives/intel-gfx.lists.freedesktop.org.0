Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B29232922
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jul 2020 02:48:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE826E826;
	Thu, 30 Jul 2020 00:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F04916E822
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jul 2020 00:48:28 +0000 (UTC)
IronPort-SDR: AzJy2HZBaCryg2AtYwC2v4/krmZ4SR/cQ3928yiHF4jeLat2B85Q8e6amsQ20wDSDTRVWJyJdh
 A+l5LOG1/CHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9697"; a="152751070"
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="152751070"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2020 17:48:28 -0700
IronPort-SDR: FM3+xBv5BOCrRYjew9ijY/w0RNh7NKX0QD5cxAmwyqIyJesOx0Hqb00neP8BdlNflMpkYCydzy
 0zXhnjY4Z1uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,412,1589266800"; d="scan'208";a="274032929"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga008.fm.intel.com with ESMTP; 29 Jul 2020 17:48:27 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jul 2020 17:48:24 -0700
Message-Id: <20200730004826.8415-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200730004826.8415-1-umesh.nerlige.ramappa@intel.com>
References: <20200730004826.8415-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/perf: Whitelist OA report trigger
 registers
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Piotr Maciejewski <piotr.maciejewski@intel.com>

OA reports can be triggered into the OA buffer by writing into the
OAREPORTTRIG registers. Whitelist the registers to allow non-privileged
user to trigger reports.

Whitelist registers only if perf_stream_paranoid is set to 0. In
i915_perf_open_ioctl, this setting is checked and the whitelist is
enabled accordingly. On closing the perf fd, the whitelist is removed.

This ensures that the access to the whitelist is gated by
perf_stream_paranoid.

v2:
- Move related change to this patch (Lionel)
- Bump up perf revision (Lionel)

v3: Pardon whitelisted registers for selftest (Umesh)
v4: Document supported gens for the feature (Lionel)
v5: Whitelist registers only if perf_stream_paranoid is set to 0 (Jon)

Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 67 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.h |  3 +
 drivers/gpu/drm/i915/i915_perf.c            | 33 +++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h      |  5 ++
 4 files changed, 105 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 98927f5d63ab..e096282ad547 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1671,6 +1671,73 @@ void intel_engine_apply_whitelist(struct intel_engine_cs *engine)
 				   i915_mmio_reg_offset(RING_NOPID(base)));
 }
 
+struct i915_oa_wl {
+	i915_reg_t reg;
+	u32 flags;
+} gen9_oa_regs[] = {
+	{ OAREPORTTRIG2, RING_FORCE_TO_NONPRIV_ACCESS_RW },
+	{ OAREPORTTRIG6, RING_FORCE_TO_NONPRIV_ACCESS_RW },
+}, gen12_oa_regs[] = {
+	{ GEN12_OAG_OAREPORTTRIG2, RING_FORCE_TO_NONPRIV_ACCESS_RW },
+	{ GEN12_OAG_OAREPORTTRIG6, RING_FORCE_TO_NONPRIV_ACCESS_RW },
+};
+
+static void whitelist_delete_perf_counters(struct i915_wa_list *wal,
+					   struct i915_oa_wl *regs,
+					   int count)
+{
+	while (count--) {
+		_wa_remove(wal, regs->reg);
+		regs++;
+	}
+
+	wa_init_finish(wal);
+}
+
+static void whitelist_build_perf_counters(struct i915_wa_list *wal,
+					  struct i915_oa_wl *regs,
+					  int count)
+{
+	while (count--) {
+		whitelist_reg_ext(wal, regs->reg, regs->flags);
+		regs++;
+	}
+}
+
+void intel_engine_apply_oa_whitelist(struct intel_engine_cs *engine)
+{
+	struct i915_wa_list *w = &engine->whitelist;
+	struct drm_i915_private *i915 = engine->i915;
+
+	if (IS_GEN(i915, 12))
+		whitelist_build_perf_counters(w, gen12_oa_regs,
+					      ARRAY_SIZE(gen12_oa_regs));
+	else if (INTEL_GEN(i915) > 8)
+		whitelist_build_perf_counters(w, gen9_oa_regs,
+					      ARRAY_SIZE(gen9_oa_regs));
+	else
+		return;
+
+	intel_engine_apply_whitelist(engine);
+}
+
+void intel_engine_remove_oa_whitelist(struct intel_engine_cs *engine)
+{
+	struct i915_wa_list *w = &engine->whitelist;
+	struct drm_i915_private *i915 = engine->i915;
+
+	if (IS_GEN(i915, 12))
+		whitelist_delete_perf_counters(w, gen12_oa_regs,
+					       ARRAY_SIZE(gen12_oa_regs));
+	else if (INTEL_GEN(i915) > 8)
+		whitelist_delete_perf_counters(w, gen9_oa_regs,
+					       ARRAY_SIZE(gen9_oa_regs));
+	else
+		return;
+
+	intel_engine_apply_whitelist(engine);
+}
+
 static void
 rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 {
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.h b/drivers/gpu/drm/i915/gt/intel_workarounds.h
index 8c9c769c2204..5ad3f44f615d 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.h
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.h
@@ -32,6 +32,9 @@ bool intel_gt_verify_workarounds(struct intel_gt *gt, const char *from);
 void intel_engine_init_whitelist(struct intel_engine_cs *engine);
 void intel_engine_apply_whitelist(struct intel_engine_cs *engine);
 
+void intel_engine_apply_oa_whitelist(struct intel_engine_cs *engine);
+void intel_engine_remove_oa_whitelist(struct intel_engine_cs *engine);
+
 void intel_engine_init_workarounds(struct intel_engine_cs *engine);
 void intel_engine_apply_workarounds(struct intel_engine_cs *engine);
 int intel_engine_verify_workarounds(struct intel_engine_cs *engine,
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index fe408c327d3c..0e2313d50c91 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -201,6 +201,7 @@
 #include "gt/intel_gt.h"
 #include "gt/intel_lrc_reg.h"
 #include "gt/intel_ring.h"
+#include "gt/intel_workarounds.h"
 
 #include "i915_drv.h"
 #include "i915_perf.h"
@@ -1353,6 +1354,9 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 
 	BUG_ON(stream != perf->exclusive_stream);
 
+	if (stream->oa_whitelisted)
+		intel_engine_remove_oa_whitelist(stream->engine);
+
 	/*
 	 * Unset exclusive_stream first, it will be checked while disabling
 	 * the metric set on gen8+.
@@ -1448,7 +1452,8 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 	 *  bit."
 	 */
 	intel_uncore_write(uncore, GEN8_OABUFFER, gtt_offset |
-		   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
+			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
+			   GEN7_OABUFFER_EDGE_TRIGGER);
 	intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);
 
 	/* Mark that we need updated tail pointers to read from... */
@@ -1501,7 +1506,8 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 	 *  bit."
 	 */
 	intel_uncore_write(uncore, GEN12_OAG_OABUFFER, gtt_offset |
-			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
+			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
+			   GEN7_OABUFFER_EDGE_TRIGGER);
 	intel_uncore_write(uncore, GEN12_OAG_OATAILPTR,
 			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
 
@@ -3474,6 +3480,22 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 	if (!(param->flags & I915_PERF_FLAG_DISABLED))
 		i915_perf_enable_locked(stream);
 
+	/* 
+	 * OA whitelist allows non-privileged access to some OA counters for
+	 * triggering reports into the OA buffer. This is only allowed if
+	 * perf_stream_paranoid is set to 0 by the sysadmin.
+	 *
+	 * We want to make sure this is almost the last thing we do before
+	 * returning the stream fd. If we do end up checking for errors in code
+	 * that follows this, we MUST call intel_engine_remove_oa_whitelist in
+	 * the error handling path to remove the whitelisted registers.
+	 */
+	if (!i915_perf_stream_paranoid && 
+	    props->sample_flags & SAMPLE_OA_REPORT) {
+		intel_engine_apply_oa_whitelist(stream->engine);
+		stream->oa_whitelisted = true;
+	}
+
 	/* Take a reference on the driver that will be kept with stream_fd
 	 * until its release.
 	 */
@@ -4445,8 +4467,13 @@ int i915_perf_ioctl_version(void)
 	 *
 	 * 5: Add DRM_I915_PERF_PROP_POLL_OA_PERIOD parameter that controls the
 	 *    interval for the hrtimer used to check for OA data.
+	 *
+	 * 6: Whitelist OATRIGGER registers to allow user to trigger reports
+	 *    into the OA buffer. This applies only to gen8+. The feature can
+	 *    only be accessed if perf_stream_paranoid is set to 0 by privileged
+	 *    user.
 	 */
-	return 5;
+	return 6;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index a36a455ae336..35f8240fd6ce 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -311,6 +311,11 @@ struct i915_perf_stream {
 	 * buffer should be checked for available data.
 	 */
 	u64 poll_oa_period;
+
+	/**
+	 * @oa_whitelisted: Indicates that the oa registers are whitelisted.
+	 */
+	bool oa_whitelisted;
 };
 
 /**
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
