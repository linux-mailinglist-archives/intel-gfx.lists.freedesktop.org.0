Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B4D21E9F3
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 09:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C8DD6E929;
	Tue, 14 Jul 2020 07:22:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFF286E92F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 07:22:41 +0000 (UTC)
IronPort-SDR: eSq+OS+Y3oO3NvWO+16o1iCXyt6GUYKJgbLc0JR6s716b8xiwGMcsQ9xun2B5M5FZhyZWsWbkK
 FbcPYWPOi/Ww==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="150263353"
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="150263353"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2020 00:22:40 -0700
IronPort-SDR: dFhj/SQEaAQFDS44qg7WLc1dSpxJ98tEgb+t4/74KaNpbmiimVPtwUqoqOpAtO0mOJUAkuD1YE
 nUhXJjdw0eiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,350,1589266800"; d="scan'208";a="360301308"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga001.jf.intel.com with ESMTP; 14 Jul 2020 00:22:39 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 00:22:39 -0700
Message-Id: <20200714072239.70198-2-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200714072239.70198-1-umesh.nerlige.ramappa@intel.com>
References: <20200714072239.70198-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/perf: Map OA buffer to user space
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

i915 used to support time based sampling mode which is good for overall
system monitoring, but is not enough for query mode used to measure a
single draw call or dispatch. Gen9-Gen11 are using current i915 perf
implementation for query, but Gen12+ requires a new approach based on
triggered reports within oa buffer. In order to enable above feature
two changes are required:

1. Whitelist update:
- enable triggered reports within oa buffer
- reading oa buffer head/tail/status information
- reading gpu ticks counter.

2. Map oa buffer at umd driver level to solve below constraints related
   to time based sampling interface:
- longer time to access reports collected by oa buffer
- slow oa reports browsing since oa buffer size is large
- missing oa report index, so query cannot browse report directly
- with direct access to oa buffer, query can extract other useful
  reports like context switch information needed to calculate correct
  performance counters values.

Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c |  54 ++++++++
 drivers/gpu/drm/i915/i915_perf.c            | 130 +++++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h      |  13 ++
 drivers/gpu/drm/i915/i915_reg.h             |  14 +++
 include/uapi/drm/i915_drm.h                 |  19 +++
 5 files changed, 227 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 5726cd0a37e0..cf89928fc3a5 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1365,6 +1365,48 @@ whitelist_reg(struct i915_wa_list *wal, i915_reg_t reg)
 	whitelist_reg_ext(wal, reg, RING_FORCE_TO_NONPRIV_ACCESS_RW);
 }
 
+static void gen9_whitelist_build_performance_counters(struct i915_wa_list *w)
+{
+	/* OA buffer trigger report 2/6 used by performance query */
+	whitelist_reg(w, OAREPORTTRIG2);
+	whitelist_reg(w, OAREPORTTRIG6);
+
+	/* Performance counters A18-20 used by tbs marker query */
+	whitelist_reg_ext(w, OA_PERF_COUNTER_A18,
+			  RING_FORCE_TO_NONPRIV_ACCESS_RW |
+			  RING_FORCE_TO_NONPRIV_RANGE_16);
+
+	/* Read access to gpu ticks */
+	whitelist_reg_ext(w, GEN8_GPU_TICKS,
+			  RING_FORCE_TO_NONPRIV_ACCESS_RD);
+
+	/* Read access to: oa status, head, tail, buffer settings */
+	whitelist_reg_ext(w, GEN8_OASTATUS,
+			  RING_FORCE_TO_NONPRIV_ACCESS_RD |
+			  RING_FORCE_TO_NONPRIV_RANGE_4);
+}
+
+static void gen12_whitelist_build_performance_counters(struct i915_wa_list *w)
+{
+	/* OA buffer trigger report 2/6 used by performance query */
+	whitelist_reg(w, GEN12_OAG_OAREPORTTRIG2);
+	whitelist_reg(w, GEN12_OAG_OAREPORTTRIG6);
+
+	/* Performance counters A18-20 used by tbs marker query */
+	whitelist_reg_ext(w, GEN12_OAG_PERF_COUNTER_A18,
+			  RING_FORCE_TO_NONPRIV_ACCESS_RW |
+			  RING_FORCE_TO_NONPRIV_RANGE_16);
+
+	/* Read access to gpu ticks */
+	whitelist_reg_ext(w, GEN12_OAG_GPU_TICKS,
+			  RING_FORCE_TO_NONPRIV_ACCESS_RD);
+
+	/* Read access to: oa status, head, tail, buffer settings */
+	whitelist_reg_ext(w, GEN12_OAG_OASTATUS,
+			  RING_FORCE_TO_NONPRIV_ACCESS_RD |
+			  RING_FORCE_TO_NONPRIV_RANGE_4);
+}
+
 static void gen9_whitelist_build(struct i915_wa_list *w)
 {
 	/* WaVFEStateAfterPipeControlwithMediaStateClear:skl,bxt,glk,cfl */
@@ -1378,6 +1420,9 @@ static void gen9_whitelist_build(struct i915_wa_list *w)
 
 	/* WaSendPushConstantsFromMMIO:skl,bxt */
 	whitelist_reg(w, COMMON_SLICE_CHICKEN2);
+
+	/* Performance counters support */
+	gen9_whitelist_build_performance_counters(w);
 }
 
 static void skl_whitelist_build(struct intel_engine_cs *engine)
@@ -1471,6 +1516,9 @@ static void cnl_whitelist_build(struct intel_engine_cs *engine)
 
 	/* WaEnablePreemptionGranularityControlByUMD:cnl */
 	whitelist_reg(w, GEN8_CS_CHICKEN1);
+
+	/* Performance counters support */
+	gen9_whitelist_build_performance_counters(w);
 }
 
 static void icl_whitelist_build(struct intel_engine_cs *engine)
@@ -1500,6 +1548,9 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
 		whitelist_reg_ext(w, PS_INVOCATION_COUNT,
 				  RING_FORCE_TO_NONPRIV_ACCESS_RD |
 				  RING_FORCE_TO_NONPRIV_RANGE_4);
+
+		/* Performance counters support */
+		gen9_whitelist_build_performance_counters(w);
 		break;
 
 	case VIDEO_DECODE_CLASS:
@@ -1550,6 +1601,9 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
 
 		/* Wa_1806527549:tgl */
 		whitelist_reg(w, HIZ_CHICKEN);
+
+		/* Performance counters support */
+		gen12_whitelist_build_performance_counters(w);
 		break;
 	default:
 		whitelist_reg_ext(w,
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index c6f6370283cf..06a3fff52dfa 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -192,6 +192,7 @@
  */
 
 #include <linux/anon_inodes.h>
+#include <linux/mman.h>
 #include <linux/sizes.h>
 #include <linux/uuid.h>
 
@@ -434,6 +435,30 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
 	return oastatus1 & GEN7_OASTATUS1_TAIL_MASK;
 }
 
+static u32 gen12_oa_hw_head_read(struct i915_perf_stream *stream)
+{
+	struct intel_uncore *uncore = stream->uncore;
+
+	return intel_uncore_read(uncore, GEN12_OAG_OAHEADPTR) &
+	       GEN12_OAG_OAHEADPTR_MASK;
+}
+
+static u32 gen8_oa_hw_head_read(struct i915_perf_stream *stream)
+{
+	struct intel_uncore *uncore = stream->uncore;
+
+	return intel_uncore_read(uncore, GEN8_OAHEADPTR) &
+	       GEN8_OAHEADPTR_MASK;
+}
+
+static u32 gen7_oa_hw_head_read(struct i915_perf_stream *stream)
+{
+	struct intel_uncore *uncore = stream->uncore;
+	u32 oastatus2 = intel_uncore_read(uncore, GEN7_OASTATUS2);
+
+	return oastatus2 & GEN7_OASTATUS2_HEAD_MASK;
+}
+
 /**
  * oa_buffer_check_unlocked - check for data and update tail ptr state
  * @stream: i915 stream instance
@@ -1328,6 +1353,7 @@ free_oa_buffer(struct i915_perf_stream *stream)
 	i915_vma_unpin_and_release(&stream->oa_buffer.vma,
 				   I915_VMA_RELEASE_MAP);
 
+	stream->oa_buffer.cpu_address = 0;
 	stream->oa_buffer.vaddr = NULL;
 }
 
@@ -1448,7 +1474,8 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
 	 *  bit."
 	 */
 	intel_uncore_write(uncore, GEN8_OABUFFER, gtt_offset |
-		   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
+			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
+			   GEN7_OABUFFER_EDGE_TRIGGER);
 	intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);
 
 	/* Mark that we need updated tail pointers to read from... */
@@ -1501,7 +1528,8 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 	 *  bit."
 	 */
 	intel_uncore_write(uncore, GEN12_OAG_OABUFFER, gtt_offset |
-			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
+			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
+			   GEN7_OABUFFER_EDGE_TRIGGER);
 	intel_uncore_write(uncore, GEN12_OAG_OATAILPTR,
 			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
 
@@ -1562,6 +1590,7 @@ static int alloc_oa_buffer(struct i915_perf_stream *stream)
 		goto err_unref;
 	}
 	stream->oa_buffer.vma = vma;
+	stream->oa_buffer.cpu_address = 0;
 
 	stream->oa_buffer.vaddr =
 		i915_gem_object_pin_map(bo, I915_MAP_WB);
@@ -1584,6 +1613,52 @@ static int alloc_oa_buffer(struct i915_perf_stream *stream)
 	return ret;
 }
 
+static int map_oa_buffer(struct i915_perf_stream *stream)
+{
+	unsigned long address = 0;
+	const u64 size = OA_BUFFER_SIZE;
+	struct i915_vma *oabuffer_vma = stream->oa_buffer.vma;
+	struct drm_i915_gem_object *oabuffer_obj = oabuffer_vma->obj;
+	struct mm_struct *mm = current->mm;
+	struct vm_area_struct *vma = NULL;
+
+	if(stream->oa_buffer.cpu_address != 0)
+		return 0;
+
+	if (!boot_cpu_has(X86_FEATURE_PAT))
+		return -ENODEV;
+
+	if (!oabuffer_obj || !oabuffer_vma)
+		return -ENOENT;
+
+	if (!oabuffer_obj->base.filp)
+		return -ENXIO;
+
+	if (range_overflows_t(u64, 0, size, oabuffer_obj->base.size))
+		return -EINVAL;
+
+	address = vm_mmap(oabuffer_obj->base.filp, 0, size,
+			  PROT_READ, MAP_SHARED, 0);
+
+	if (IS_ERR_VALUE(address))
+		return address;
+
+	if (mmap_write_lock_killable(mm))
+		return -EINTR;
+
+	vma = find_vma(mm, address);
+	if (vma) {
+		vma->vm_page_prot =
+			pgprot_writecombine(vm_get_page_prot(vma->vm_flags));
+
+		stream->oa_buffer.cpu_address = address;
+	}
+
+	mmap_write_unlock(mm);
+
+	return vma ? 0 : -ENOMEM;
+}
+
 static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
 				  bool save, i915_reg_t reg, u32 offset,
 				  u32 dword_count)
@@ -2493,6 +2568,13 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 			    (period_exponent << GEN12_OAG_OAGLBCTXCTRL_TIMER_PERIOD_SHIFT))
 			    : 0);
 
+	/*
+	 * Initialize Super Queue Internal Cnt Register
+	 * BIT(30) - PMON Enable - set in order to collect valid metrics.
+	 */
+	intel_uncore_write(uncore, GEN12_SQCNT1,
+			   intel_uncore_read(uncore, GEN12_SQCNT1) | BIT(30));
+
 	/*
 	 * Update all contexts prior writing the mux configurations as we need
 	 * to make sure all slices/subslices are ON before writing to NOA
@@ -3199,6 +3281,39 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 	return ret;
 }
 
+/**
+ * i915_perf_get_oa_buffer_info_locked - Properties of the i915-perf OA buffer
+ * @arg: pointer to oa buffer info populated by this function.
+ */
+static int i915_perf_get_oa_buffer_info_locked(struct i915_perf_stream *stream,
+					       unsigned long arg)
+{
+	struct drm_i915_perf_oa_buffer_info info;
+	void __user *output = (void __user *) arg;
+	int ret;
+
+	if (!output)
+		return -EINVAL;
+
+	memset(&info, 0, sizeof(info));
+
+	info.size = stream->oa_buffer.vma->size;
+	info.head = stream->perf->ops.oa_hw_head_read(stream);
+	info.tail = stream->perf->ops.oa_hw_tail_read(stream);
+	info.gpu_address = i915_ggtt_offset(stream->oa_buffer.vma);
+
+	ret = map_oa_buffer(stream);
+	if (ret)
+		return ret;
+
+	info.cpu_address = stream->oa_buffer.cpu_address;
+
+	if (copy_to_user(output, &info, sizeof(info)))
+		return -EFAULT;
+
+	return 0;
+}
+
 /**
  * i915_perf_ioctl - support ioctl() usage with i915 perf stream FDs
  * @stream: An i915 perf stream
@@ -3224,6 +3339,8 @@ static long i915_perf_ioctl_locked(struct i915_perf_stream *stream,
 		return 0;
 	case I915_PERF_IOCTL_CONFIG:
 		return i915_perf_config_locked(stream, arg);
+	case I915_PERF_IOCTL_GET_OA_BUFFER_INFO:
+		return i915_perf_get_oa_buffer_info_locked(stream, arg);
 	}
 
 	return -EINVAL;
@@ -4245,6 +4362,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 		perf->ops.oa_disable = gen7_oa_disable;
 		perf->ops.read = gen7_oa_read;
 		perf->ops.oa_hw_tail_read = gen7_oa_hw_tail_read;
+		perf->ops.oa_hw_head_read = gen7_oa_hw_head_read;
 
 		perf->oa_formats = hsw_oa_formats;
 	} else if (HAS_LOGICAL_RING_CONTEXTS(i915)) {
@@ -4276,6 +4394,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 			perf->ops.enable_metric_set = gen8_enable_metric_set;
 			perf->ops.disable_metric_set = gen8_disable_metric_set;
 			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
+			perf->ops.oa_hw_head_read = gen8_oa_hw_head_read;
 
 			if (IS_GEN(i915, 8)) {
 				perf->ctx_oactxctrl_offset = 0x120;
@@ -4303,6 +4422,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 			perf->ops.enable_metric_set = gen8_enable_metric_set;
 			perf->ops.disable_metric_set = gen10_disable_metric_set;
 			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
+			perf->ops.oa_hw_head_read = gen8_oa_hw_head_read;
 
 			if (IS_GEN(i915, 10)) {
 				perf->ctx_oactxctrl_offset = 0x128;
@@ -4327,6 +4447,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 			perf->ops.enable_metric_set = gen12_enable_metric_set;
 			perf->ops.disable_metric_set = gen12_disable_metric_set;
 			perf->ops.oa_hw_tail_read = gen12_oa_hw_tail_read;
+			perf->ops.oa_hw_head_read = gen12_oa_hw_head_read;
 
 			perf->ctx_flexeu0_offset = 0;
 			perf->ctx_oactxctrl_offset = 0x144;
@@ -4432,8 +4553,11 @@ int i915_perf_ioctl_version(void)
 	 *
 	 * 5: Add DRM_I915_PERF_PROP_POLL_OA_PERIOD parameter that controls the
 	 *    interval for the hrtimer used to check for OA data.
+	 *
+	 * 6: Added an option to map oa buffer at umd driver level and trigger
+	 *    oa reports within oa buffer from command buffer.
 	 */
-	return 5;
+	return 6;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index a36a455ae336..5b40e20c2aa9 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -251,6 +251,14 @@ struct i915_perf_stream {
 		int format_size;
 		int size_exponent;
 
+		/**
+		 * @cpu_address: OA buffer cpu address.
+		 *
+		 * Needed to map OA buffer at umd driver level
+		 * to obtain cpu pointer and browse reports.
+		 */
+		u64 cpu_address;
+
 		/**
 		 * @ptr_lock: Locks reads and writes to all head/tail state
 		 *
@@ -377,6 +385,11 @@ struct i915_oa_ops {
 	 * generations.
 	 */
 	u32 (*oa_hw_tail_read)(struct i915_perf_stream *stream);
+
+	/**
+	 * @oa_hw_head_read: read the OA head pointer register
+	 */
+	u32 (*oa_hw_head_read)(struct i915_perf_stream *stream);
 };
 
 struct i915_perf {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 86a23ced051b..2e3d264339e0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -675,6 +675,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define  GEN7_OASTATUS2_HEAD_MASK           0xffffffc0
 #define  GEN7_OASTATUS2_MEM_SELECT_GGTT     (1 << 0) /* 0: PPGTT, 1: GGTT */
 
+#define GEN8_GPU_TICKS _MMIO(0x2910)
 #define GEN8_OASTATUS _MMIO(0x2b08)
 #define  GEN8_OASTATUS_OVERRUN_STATUS	    (1 << 3)
 #define  GEN8_OASTATUS_COUNTER_OVERFLOW     (1 << 2)
@@ -696,6 +697,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define OABUFFER_SIZE_16M   (7 << 3)
 
 #define GEN12_OA_TLB_INV_CR _MMIO(0xceec)
+#define GEN12_SQCNT1 _MMIO(0x8718)
 
 /* Gen12 OAR unit */
 #define GEN12_OAR_OACONTROL _MMIO(0x2960)
@@ -731,6 +733,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define  GEN12_OAG_OA_DEBUG_DISABLE_GO_1_0_REPORTS     (1 << 2)
 #define  GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS (1 << 1)
 
+#define GEN12_OAG_GPU_TICKS _MMIO(0xda90)
 #define GEN12_OAG_OASTATUS _MMIO(0xdafc)
 #define  GEN12_OAG_OASTATUS_COUNTER_OVERFLOW (1 << 2)
 #define  GEN12_OAG_OASTATUS_BUFFER_OVERFLOW  (1 << 1)
@@ -972,6 +975,17 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define OAREPORTTRIG8_NOA_SELECT_6_SHIFT    24
 #define OAREPORTTRIG8_NOA_SELECT_7_SHIFT    28
 
+/* Performance counters registers */
+#define OA_PERF_COUNTER_A18   _MMIO(0x2890)
+#define OA_PERF_COUNTER_A19   _MMIO(0x2898)
+#define OA_PERF_COUNTER_A20   _MMIO(0x28A0)
+
+/* Gen12 Performance counters registers */
+#define GEN12_OAG_PERF_COUNTER_A16   _MMIO(0xDA00)
+#define GEN12_OAG_PERF_COUNTER_A18   _MMIO(0xDA10)
+#define GEN12_OAG_PERF_COUNTER_A19   _MMIO(0xDA18)
+#define GEN12_OAG_PERF_COUNTER_A20   _MMIO(0xDA20)
+
 /* Same layout as OASTARTTRIGX */
 #define GEN12_OAG_OASTARTTRIG1 _MMIO(0xd900)
 #define GEN12_OAG_OASTARTTRIG2 _MMIO(0xd904)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 14b67cd6b54b..62b88c0123c8 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2048,6 +2048,25 @@ struct drm_i915_perf_open_param {
  */
 #define I915_PERF_IOCTL_CONFIG	_IO('i', 0x2)
 
+/**
+ * Returns OA buffer properties.
+ *
+ * This ioctl is available in perf revision 6.
+ */
+#define I915_PERF_IOCTL_GET_OA_BUFFER_INFO _IO('i', 0x3)
+
+/**
+ * OA buffer information structure.
+ */
+struct drm_i915_perf_oa_buffer_info {
+	__u32 size;
+	__u32 head;
+	__u32 tail;
+	__u32 gpu_address;
+	__u64 cpu_address;
+	__u64 reserved[4];
+};
+
 /**
  * Common to all i915 perf records
  */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
