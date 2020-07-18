Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CABF822474D
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jul 2020 02:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 438226E2E4;
	Sat, 18 Jul 2020 00:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A163C6E2DC
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jul 2020 00:04:42 +0000 (UTC)
IronPort-SDR: OQVFGcdHpg7jTLfkOoFirJzKu1m2MMZvHRiX+5hTqeBSxUUdm5O6QsZr1VDtfFrFVMyX/3GaFD
 9NCiRXXnhEXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="129778159"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="129778159"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 17:04:38 -0700
IronPort-SDR: dzCPBD1e9SwEAqwa+3D3VRpPm54wtnIablFM32TpMn8bm76+KAA+hP0HO1UWqlfKCDUjFLQ0Dn
 2nJ5z0uv4rVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="270941289"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga008.fm.intel.com with ESMTP; 17 Jul 2020 17:04:38 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jul 2020 17:04:36 -0700
Message-Id: <20200718000437.69033-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200718000437.69033-1-umesh.nerlige.ramappa@intel.com>
References: <20200718000437.69033-1-umesh.nerlige.ramappa@intel.com>
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

Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c   | 34 +++++++++++++++++++
 .../gpu/drm/i915/gt/selftest_workarounds.c    | 15 +++++++-
 drivers/gpu/drm/i915/i915_perf.c              |  5 ++-
 drivers/gpu/drm/i915/i915_reg.h               | 10 ++++++
 4 files changed, 62 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 582a2c8cd219..5dfa3177d216 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1370,6 +1370,23 @@ static void gen9_whitelist_build_performance_counters(struct i915_wa_list *w)
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
@@ -1377,6 +1394,23 @@ static void gen12_whitelist_build_performance_counters(struct i915_wa_list *w)
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
index febc9e6692ba..5e0e839928f9 100644
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
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 1a72565d1928..15f31c250ca9 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4445,8 +4445,11 @@ int i915_perf_ioctl_version(void)
 	 *
 	 * 6: Whitelist OATRIGGER registers to allow user to trigger reports
 	 *    into the OA buffer.
+	 *
+	 * 7: Whitelist OA buffer head/tail registers for user to identify the
+	 *    location of triggered reports into the OA buffer.
 	 */
-	return 6;
+	return 7;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 1638f1282541..eeb41de84a0f 100644
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
