Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0283D22902E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 07:55:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB186E32B;
	Wed, 22 Jul 2020 05:55:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC78A6E329
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 05:55:19 +0000 (UTC)
IronPort-SDR: cQarCiUBCNR1kdINw+UG4OU0YC1iciUv0gzKBTnZv4SBMnJz+GeGaLWoI9GiZFZVSDpnC9wVu+
 XdB66gIJExwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9689"; a="211818697"
X-IronPort-AV: E=Sophos;i="5.75,381,1589266800"; d="scan'208";a="211818697"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2020 22:55:18 -0700
IronPort-SDR: wjYQEy2iKwHVgfJqT7aa2J6aLJ5Pj46wtO+UACROfQtxqB1grT+GuT1PjNmjFY1+s4GJpeh/0u
 lBqzUlkcXeVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,381,1589266800"; d="scan'208";a="284112231"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga003.jf.intel.com with ESMTP; 21 Jul 2020 22:55:18 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jul 2020 22:55:17 -0700
Message-Id: <20200722055518.44028-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200722055518.44028-1-umesh.nerlige.ramappa@intel.com>
References: <20200722055518.44028-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/perf: Whitelist OA counter and
 buffer registers
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

It is useful to have markers in the OA reports to identify triggered
reports. Whitelist some OA counters that can be used as markers.

A triggered report can be found faster if we can sample the HW tail and
head registers when the report was triggered. Whitelist OA buffer
specific registers.

v2:
- Bump up the perf revision (Lionel)
- Use indexing for counters (Lionel)
- Fix selftest for oa ticking register (Umesh)

v3: Pardon whitelisted registers for selftest (Umesh)
v4:
- Document whitelisted registers (Lionel)
- Fix live isolated whitelist for OA regs (Umesh)

Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 34 +++++++++++++++++++
 .../gpu/drm/i915/gt/selftest_workarounds.c    | 30 +++++++++++++++-
 drivers/gpu/drm/i915/i915_perf.c              |  8 ++++-
 drivers/gpu/drm/i915/i915_reg.h               | 10 ++++++
 4 files changed, 80 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index a72ebfd115e5..c950d07beec3 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1392,6 +1392,23 @@ static void gen9_whitelist_build_performance_counters(struct i915_wa_list *w)
 	/* OA buffer trigger report 2/6 used by performance query */
 	whitelist_reg(w, OAREPORTTRIG2);
 	whitelist_reg(w, OAREPORTTRIG6);
+
+	/* Performance counters A18-20 used by tbs marker query */
+	whitelist_reg_ext(w, OA_PERF_COUNTER_A(18),
+			  RING_FORCE_TO_NONPRIV_ACCESS_RW |
+			  RING_FORCE_TO_NONPRIV_RANGE_4);
+
+	whitelist_reg(w, OA_PERF_COUNTER_A(20));
+	whitelist_reg(w, OA_PERF_COUNTER_A_UPPER(20));
+
+	/* Read access to gpu ticks */
+	whitelist_reg_ext(w, GEN8_GPU_TICKS,
+			  RING_FORCE_TO_NONPRIV_ACCESS_RD);
+
+	/* Read access to: oa status, head, tail, buffer settings */
+	whitelist_reg_ext(w, GEN8_OASTATUS,
+			  RING_FORCE_TO_NONPRIV_ACCESS_RD |
+			  RING_FORCE_TO_NONPRIV_RANGE_4);
 }
 
 static void gen12_whitelist_build_performance_counters(struct i915_wa_list *w)
@@ -1399,6 +1416,23 @@ static void gen12_whitelist_build_performance_counters(struct i915_wa_list *w)
 	/* OA buffer trigger report 2/6 used by performance query */
 	whitelist_reg(w, GEN12_OAG_OAREPORTTRIG2);
 	whitelist_reg(w, GEN12_OAG_OAREPORTTRIG6);
+
+	/* Performance counters A18-20 used by tbs marker query */
+	whitelist_reg_ext(w, GEN12_OAG_PERF_COUNTER_A(18),
+			  RING_FORCE_TO_NONPRIV_ACCESS_RW |
+			  RING_FORCE_TO_NONPRIV_RANGE_4);
+
+	whitelist_reg(w, GEN12_OAG_PERF_COUNTER_A(20));
+	whitelist_reg(w, GEN12_OAG_PERF_COUNTER_A_UPPER(20));
+
+	/* Read access to gpu ticks */
+	whitelist_reg_ext(w, GEN12_OAG_GPU_TICKS,
+			  RING_FORCE_TO_NONPRIV_ACCESS_RD);
+
+	/* Read access to: oa status, head, tail, buffer settings */
+	whitelist_reg_ext(w, GEN12_OAG_OASTATUS,
+			  RING_FORCE_TO_NONPRIV_ACCESS_RD |
+			  RING_FORCE_TO_NONPRIV_RANGE_4);
 }
 
 static void gen9_whitelist_build(struct i915_wa_list *w)
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 3b1d3dbcd477..7c2c2be8d212 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -431,6 +431,19 @@ static bool timestamp(const struct intel_engine_cs *engine, u32 reg)
 	}
 }
 
+static bool oa_gpu_ticks(u32 reg)
+{
+	reg = reg & ~RING_FORCE_TO_NONPRIV_ACCESS_MASK;
+	switch (reg) {
+	case 0x2910:
+	case 0xda90:
+		return true;
+
+	default:
+		return false;
+	}
+}
+
 static bool ro_register(u32 reg)
 {
 	if ((reg & RING_FORCE_TO_NONPRIV_ACCESS_MASK) ==
@@ -511,7 +524,7 @@ static int check_dirty_whitelist(struct intel_context *ce)
 		if (wo_register(engine, reg))
 			continue;
 
-		if (timestamp(engine, reg))
+		if (timestamp(engine, reg) || oa_gpu_ticks(reg))
 			continue; /* timestamps are expected to autoincrement */
 
 		ro_reg = ro_register(reg);
@@ -918,6 +931,9 @@ static bool find_reg(struct drm_i915_private *i915,
 {
 	u32 offset = i915_mmio_reg_offset(reg);
 
+	/* Clear non priv flags */
+	offset &= RING_FORCE_TO_NONPRIV_ADDRESS_MASK;
+
 	while (count--) {
 		if (INTEL_INFO(i915)->gen_mask & tbl->gen_mask &&
 		    i915_mmio_reg_offset(tbl->reg) == offset)
@@ -938,6 +954,12 @@ static bool pardon_reg(struct drm_i915_private *i915, i915_reg_t reg)
 		{ OAREPORTTRIG6, INTEL_GEN_MASK(8, 11) },
 		{ GEN12_OAG_OAREPORTTRIG2, INTEL_GEN_MASK(12, 12) },
 		{ GEN12_OAG_OAREPORTTRIG6, INTEL_GEN_MASK(12, 12) },
+		{ OA_PERF_COUNTER_A(18), INTEL_GEN_MASK(8, 11) },
+		{ OA_PERF_COUNTER_A(20), INTEL_GEN_MASK(8, 11) },
+		{ OA_PERF_COUNTER_A_UPPER(20), INTEL_GEN_MASK(8, 11) },
+		{ GEN12_OAG_PERF_COUNTER_A(18), INTEL_GEN_MASK(12, 12) },
+		{ GEN12_OAG_PERF_COUNTER_A(20), INTEL_GEN_MASK(12, 12) },
+		{ GEN12_OAG_PERF_COUNTER_A_UPPER(20), INTEL_GEN_MASK(12, 12) },
 	};
 
 	return find_reg(i915, reg, pardon, ARRAY_SIZE(pardon));
@@ -964,6 +986,12 @@ static bool writeonly_reg(struct drm_i915_private *i915, i915_reg_t reg)
 		{ OAREPORTTRIG6, INTEL_GEN_MASK(8, 11) },
 		{ GEN12_OAG_OAREPORTTRIG2, INTEL_GEN_MASK(12, 12) },
 		{ GEN12_OAG_OAREPORTTRIG6, INTEL_GEN_MASK(12, 12) },
+		{ OA_PERF_COUNTER_A(18), INTEL_GEN_MASK(8, 11) },
+		{ OA_PERF_COUNTER_A(20), INTEL_GEN_MASK(8, 11) },
+		{ OA_PERF_COUNTER_A_UPPER(20), INTEL_GEN_MASK(8, 11) },
+		{ GEN12_OAG_PERF_COUNTER_A(18), INTEL_GEN_MASK(12, 12) },
+		{ GEN12_OAG_PERF_COUNTER_A(20), INTEL_GEN_MASK(12, 12) },
+		{ GEN12_OAG_PERF_COUNTER_A_UPPER(20), INTEL_GEN_MASK(12, 12) },
 	};
 
 	return find_reg(i915, reg, wo, ARRAY_SIZE(wo));
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 30f6aeb819aa..2f23aad12c60 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4450,8 +4450,14 @@ int i915_perf_ioctl_version(void)
 	 *
 	 * 6: Whitelist OATRIGGER registers to allow user to trigger reports
 	 *    into the OA buffer. This applies only to gen8+.
+	 *
+	 * 7: Whitelist below OA registers for user to identify the location of
+	 *    triggered reports in the OA buffer. This applies only to gen8+.
+	 *
+	 *    - OA buffer head/tail/status/buffer registers for read only
+	 *    - OA counters A18, A19, A20 for read/write
 	 */
-	return 6;
+	return 7;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9cc3e312b6b7..c68dc3f39e62 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -675,6 +675,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define  GEN7_OASTATUS2_HEAD_MASK           0xffffffc0
 #define  GEN7_OASTATUS2_MEM_SELECT_GGTT     (1 << 0) /* 0: PPGTT, 1: GGTT */
 
+#define GEN8_GPU_TICKS _MMIO(0x2910)
 #define GEN8_OASTATUS _MMIO(0x2b08)
 #define  GEN8_OASTATUS_OVERRUN_STATUS	    (1 << 3)
 #define  GEN8_OASTATUS_COUNTER_OVERFLOW     (1 << 2)
@@ -733,6 +734,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define  GEN12_OAG_OA_DEBUG_DISABLE_GO_1_0_REPORTS     (1 << 2)
 #define  GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS (1 << 1)
 
+#define GEN12_OAG_GPU_TICKS _MMIO(0xda90)
 #define GEN12_OAG_OASTATUS _MMIO(0xdafc)
 #define  GEN12_OAG_OASTATUS_COUNTER_OVERFLOW (1 << 2)
 #define  GEN12_OAG_OASTATUS_BUFFER_OVERFLOW  (1 << 1)
@@ -974,6 +976,14 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define OAREPORTTRIG8_NOA_SELECT_6_SHIFT    24
 #define OAREPORTTRIG8_NOA_SELECT_7_SHIFT    28
 
+/* Performance counters registers */
+#define OA_PERF_COUNTER_A(idx)       _MMIO(0x2800 + 8 * (idx))
+#define OA_PERF_COUNTER_A_UPPER(idx) _MMIO(0x2800 + 8 * (idx) + 4)
+
+/* Gen12 Performance counters registers */
+#define GEN12_OAG_PERF_COUNTER_A(idx)       _MMIO(0xD980 + 8 * (idx))
+#define GEN12_OAG_PERF_COUNTER_A_UPPER(idx) _MMIO(0xD980 + 8 * (idx) + 4)
+
 /* Same layout as OASTARTTRIGX */
 #define GEN12_OAG_OASTARTTRIG1 _MMIO(0xd900)
 #define GEN12_OAG_OASTARTTRIG2 _MMIO(0xd904)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
