Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CAD22751C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 04:00:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBF806E0F3;
	Tue, 21 Jul 2020 02:00:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C957889FEA
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 02:00:14 +0000 (UTC)
IronPort-SDR: iozQdXpgEopVPAz/S24EyUdBvHs4FjI4plSfrQqn6tPSVnO9i91vSda14vC/V4IYY2Pqj2ODlo
 CqWSqn47X11A==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="138142344"
X-IronPort-AV: E=Sophos;i="5.75,377,1589266800"; d="scan'208";a="138142344"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 19:00:13 -0700
IronPort-SDR: eHIMVYPBYPSzYNrRuDmlX5/xWP3jDiXbKYHLqm4xg+CKAh3DodxYWCTWqti/SVUPcIxStEktum
 T+U0CJ0kMbtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,377,1589266800"; d="scan'208";a="431817882"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga004.jf.intel.com with ESMTP; 20 Jul 2020 19:00:13 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jul 2020 19:00:10 -0700
Message-Id: <20200721020012.46506-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200721020012.46506-1-umesh.nerlige.ramappa@intel.com>
References: <20200721020012.46506-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/perf: Whitelist OA report trigger
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
OAREPORTTRIG registers. Whitelist the registers to allow user to trigger
reports.

v2:
- Move related change to this patch (Lionel)
- Bump up perf revision (Lionel)

v3: Pardon whitelisted registers for selftest (Umesh)
v4: Document supported gens for the feature (Lionel)

Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 26 +++++++++++++++++++
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  4 +++
 drivers/gpu/drm/i915/i915_perf.c              | 11 +++++---
 3 files changed, 38 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 5726cd0a37e0..582a2c8cd219 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1365,6 +1365,20 @@ whitelist_reg(struct i915_wa_list *wal, i915_reg_t reg)
 	whitelist_reg_ext(wal, reg, RING_FORCE_TO_NONPRIV_ACCESS_RW);
 }
 
+static void gen9_whitelist_build_performance_counters(struct i915_wa_list *w)
+{
+	/* OA buffer trigger report 2/6 used by performance query */
+	whitelist_reg(w, OAREPORTTRIG2);
+	whitelist_reg(w, OAREPORTTRIG6);
+}
+
+static void gen12_whitelist_build_performance_counters(struct i915_wa_list *w)
+{
+	/* OA buffer trigger report 2/6 used by performance query */
+	whitelist_reg(w, GEN12_OAG_OAREPORTTRIG2);
+	whitelist_reg(w, GEN12_OAG_OAREPORTTRIG6);
+}
+
 static void gen9_whitelist_build(struct i915_wa_list *w)
 {
 	/* WaVFEStateAfterPipeControlwithMediaStateClear:skl,bxt,glk,cfl */
@@ -1378,6 +1392,9 @@ static void gen9_whitelist_build(struct i915_wa_list *w)
 
 	/* WaSendPushConstantsFromMMIO:skl,bxt */
 	whitelist_reg(w, COMMON_SLICE_CHICKEN2);
+
+	/* Performance counters support */
+	gen9_whitelist_build_performance_counters(w);
 }
 
 static void skl_whitelist_build(struct intel_engine_cs *engine)
@@ -1471,6 +1488,9 @@ static void cnl_whitelist_build(struct intel_engine_cs *engine)
 
 	/* WaEnablePreemptionGranularityControlByUMD:cnl */
 	whitelist_reg(w, GEN8_CS_CHICKEN1);
+
+	/* Performance counters support */
+	gen9_whitelist_build_performance_counters(w);
 }
 
 static void icl_whitelist_build(struct intel_engine_cs *engine)
@@ -1500,6 +1520,9 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
 		whitelist_reg_ext(w, PS_INVOCATION_COUNT,
 				  RING_FORCE_TO_NONPRIV_ACCESS_RD |
 				  RING_FORCE_TO_NONPRIV_RANGE_4);
+
+		/* Performance counters support */
+		gen9_whitelist_build_performance_counters(w);
 		break;
 
 	case VIDEO_DECODE_CLASS:
@@ -1550,6 +1573,9 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
 
 		/* Wa_1806527549:tgl */
 		whitelist_reg(w, HIZ_CHICKEN);
+
+		/* Performance counters support */
+		gen12_whitelist_build_performance_counters(w);
 		break;
 	default:
 		whitelist_reg_ext(w,
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index febc9e6692ba..c7d8af9ee34a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -934,6 +934,10 @@ static bool pardon_reg(struct drm_i915_private *i915, i915_reg_t reg)
 	static const struct regmask pardon[] = {
 		{ GEN9_CTX_PREEMPT_REG, INTEL_GEN_MASK(9, 9) },
 		{ GEN8_L3SQCREG4, INTEL_GEN_MASK(9, 9) },
+		{ OAREPORTTRIG2, INTEL_GEN_MASK(8, 11) },
+		{ OAREPORTTRIG6, INTEL_GEN_MASK(8, 11) },
+		{ GEN12_OAG_OAREPORTTRIG2, INTEL_GEN_MASK(12, 12) },
+		{ GEN12_OAG_OAREPORTTRIG6, INTEL_GEN_MASK(12, 12) },
 	};
 
 	return find_reg(i915, reg, pardon, ARRAY_SIZE(pardon));
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index fe408c327d3c..30f6aeb819aa 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1448,7 +1448,8 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 	 *  bit."
 	 */
 	intel_uncore_write(uncore, GEN8_OABUFFER, gtt_offset |
-		   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
+			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
+			   GEN7_OABUFFER_EDGE_TRIGGER);
 	intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);
 
 	/* Mark that we need updated tail pointers to read from... */
@@ -1501,7 +1502,8 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 	 *  bit."
 	 */
 	intel_uncore_write(uncore, GEN12_OAG_OABUFFER, gtt_offset |
-			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
+			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
+			   GEN7_OABUFFER_EDGE_TRIGGER);
 	intel_uncore_write(uncore, GEN12_OAG_OATAILPTR,
 			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
 
@@ -4445,8 +4447,11 @@ int i915_perf_ioctl_version(void)
 	 *
 	 * 5: Add DRM_I915_PERF_PROP_POLL_OA_PERIOD parameter that controls the
 	 *    interval for the hrtimer used to check for OA data.
+	 *
+	 * 6: Whitelist OATRIGGER registers to allow user to trigger reports
+	 *    into the OA buffer. This applies only to gen8+.
 	 */
-	return 5;
+	return 6;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
