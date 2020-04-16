Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 378641AC067
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 13:56:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A74106EB48;
	Thu, 16 Apr 2020 11:56:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F276EB48
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 11:56:19 +0000 (UTC)
IronPort-SDR: JdJNHxvAC6s1h/nIhT/3BRIvyb/JvAbpdgqlDRTw7JT2uq39Dg2+T/OKTB2QMJePSbzo5rPB5F
 3mcdsN6zIKWg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 04:56:19 -0700
IronPort-SDR: MckjcOZUUjTcP/QHGKCJz2/GepWFnL9H++Se41jrVz1jzwBAB0TKBm08icoILg1eB17GMz0yc6
 PcM5oMJLVWpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,390,1580803200"; d="scan'208";a="332815059"
Received: from pberdnik-mobl2.ccr.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.43.234])
 by orsmga001.jf.intel.com with ESMTP; 16 Apr 2020 04:56:16 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Apr 2020 14:56:11 +0300
Message-Id: <20200416115611.211011-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/perf: Enable application triggered
 OA reports
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gen12 brought an important redesign of the OA unit, splitting it in 2
with a per context part (OAR) and a global part (OAG).

OAR deals with per context counters and implements the
MI_REPORT_PERF_COUNT command.

OAG deals with global counters and the OA buffer.

Unfortunately some of the counters available in OAG are not available
in OAR, for instance counters that would report global caches
utilization.

Since applications making use of this want to access those additional
OAG counters we can enable them to generate a report from their
command buffer into the OA buffer. This is somewhat equivalent to
having them doing their own MI_REPORT_PERF_COUNT. The application then
parse the OA buffer as they were doing previously, only looking for a
begin/end OA report with the appropriate reason field in the OA buffer
instead of using MI_REPORT_PERF_COUNT generated reports for begin/end.

v2: Add OA trigger registers to the pardon list for isolated whitelist (Chris)

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> (v1)
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c    | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/gt/selftest_workarounds.c |  9 +++++++++
 drivers/gpu/drm/i915/i915_perf.c               | 10 +++++++---
 drivers/gpu/drm/i915/i915_reg.h                |  2 ++
 4 files changed, 36 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 5b1a03d2fd25..c3a3e7b9d522 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1127,6 +1127,10 @@ static void gen9_whitelist_build(struct i915_wa_list *w)
 
 	/* WaSendPushConstantsFromMMIO:skl,bxt */
 	whitelist_reg(w, COMMON_SLICE_CHICKEN2);
+
+	/* Allow userspace trigger OA report generation in OA buffer. */
+	whitelist_reg(w, OAREPORTTRIG2);
+	whitelist_reg(w, OAREPORTTRIG6);
 }
 
 static void skl_whitelist_build(struct intel_engine_cs *engine)
@@ -1208,6 +1212,10 @@ static void cnl_whitelist_build(struct intel_engine_cs *engine)
 
 	/* WaEnablePreemptionGranularityControlByUMD:cnl */
 	whitelist_reg(w, GEN8_CS_CHICKEN1);
+
+	/* Allow userspace trigger OA report generation in OA buffer. */
+	whitelist_reg(w, OAREPORTTRIG2);
+	whitelist_reg(w, OAREPORTTRIG6);
 }
 
 static void icl_whitelist_build(struct intel_engine_cs *engine)
@@ -1237,6 +1245,12 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
 		whitelist_reg_ext(w, PS_INVOCATION_COUNT,
 				  RING_FORCE_TO_NONPRIV_ACCESS_RD |
 				  RING_FORCE_TO_NONPRIV_RANGE_4);
+
+		/*
+		 * Allow userspace trigger OA report generation in OA buffer.
+		 */
+		whitelist_reg(w, OAREPORTTRIG2);
+		whitelist_reg(w, OAREPORTTRIG6);
 		break;
 
 	case VIDEO_DECODE_CLASS:
@@ -1281,6 +1295,10 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
 
 		/* Wa_1806527549:tgl */
 		whitelist_reg(w, HIZ_CHICKEN);
+
+		/* Allow userspace trigger OA report generation in OA buffer. */
+		whitelist_reg(w, GEN12_OAG_OAREPORTTRIG2);
+		whitelist_reg(w, GEN12_OAG_OAREPORTTRIG6);
 		break;
 	default:
 		break;
diff --git a/drivers/gpu/drm/i915/gt/selftest_workarounds.c b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
index 5ed323254ee1..0c05ebf5f55a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/selftest_workarounds.c
@@ -915,6 +915,15 @@ static bool pardon_reg(struct drm_i915_private *i915, i915_reg_t reg)
 	static const struct regmask pardon[] = {
 		{ GEN9_CTX_PREEMPT_REG, INTEL_GEN_MASK(9, 9) },
 		{ GEN8_L3SQCREG4, INTEL_GEN_MASK(9, 9) },
+
+		/*
+		 * These registers are global ones. They are used to trigger
+		 * OA reports into the global OA buffer.
+		 */
+		{ OAREPORTTRIG2, INTEL_GEN_MASK(7, 11) },
+		{ OAREPORTTRIG6, INTEL_GEN_MASK(7, 11) },
+		{ GEN12_OAG_OAREPORTTRIG2, INTEL_GEN_MASK(12, 12) },
+		{ GEN12_OAG_OAREPORTTRIG6, INTEL_GEN_MASK(12, 12) },
 	};
 
 	return find_reg(i915, reg, pardon, ARRAY_SIZE(pardon));
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 5cde3e4e7be6..19bdbda94cfd 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1450,7 +1450,8 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 	 *  bit."
 	 */
 	intel_uncore_write(uncore, GEN8_OABUFFER, gtt_offset |
-		   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
+		   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
+		   GEN8_OABUFFER_EDGE_TRIGGER);
 	intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);
 
 	/* Mark that we need updated tail pointers to read from... */
@@ -1503,7 +1504,8 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 	 *  bit."
 	 */
 	intel_uncore_write(uncore, GEN12_OAG_OABUFFER, gtt_offset |
-			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
+			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
+			   GEN12_OAG_OABUFFER_EDGE_TRIGGER);
 	intel_uncore_write(uncore, GEN12_OAG_OATAILPTR,
 			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
 
@@ -4442,8 +4444,10 @@ int i915_perf_ioctl_version(void)
 	 *
 	 * 5: Add DRM_I915_PERF_PROP_POLL_OA_PERIOD parameter that controls the
 	 *    interval for the hrtimer used to check for OA data.
+	 *
+	 * 6. Add edge trigger report generation support.
 	 */
-	return 5;
+	return 6;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0b39b9abf8a4..e2e65393dcab 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -661,6 +661,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 
 #define GEN8_OABUFFER_UDW _MMIO(0x23b4)
 #define GEN8_OABUFFER _MMIO(0x2b14)
+#define  GEN8_OABUFFER_EDGE_TRIGGER         (1 << 2)
 #define  GEN8_OABUFFER_MEM_SELECT_GGTT      (1 << 0)  /* 0: PPGTT, 1: GGTT */
 
 #define GEN7_OASTATUS1 _MMIO(0x2364)
@@ -712,6 +713,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN12_OAG_OABUFFER  _MMIO(0xdb08)
 #define  GEN12_OAG_OABUFFER_BUFFER_SIZE_MASK  (0x7)
 #define  GEN12_OAG_OABUFFER_BUFFER_SIZE_SHIFT (3)
+#define  GEN12_OAG_OABUFFER_EDGE_TRIGGER      (1 << 2)
 #define  GEN12_OAG_OABUFFER_MEMORY_SELECT     (1 << 0) /* 0: PPGTT, 1: GGTT */
 
 #define GEN12_OAG_OAGLBCTXCTRL _MMIO(0x2b28)
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
