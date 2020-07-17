Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C679E2230E8
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 03:57:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFFA76E31D;
	Fri, 17 Jul 2020 01:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42ED46E31C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 01:57:18 +0000 (UTC)
IronPort-SDR: Q3N+m39y2ydjcRnhHsSPwznpDWDOTvBqa5o85UJGCzvJbqqkRCjPwjvU3+zNx6iTa92JsosqUx
 L20LEIIvtdgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="211063478"
X-IronPort-AV: E=Sophos;i="5.75,361,1589266800"; d="scan'208";a="211063478"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 18:57:17 -0700
IronPort-SDR: mT6VzHMhVwO/FSuXYeEzbhVjeCB9zU5VvMcRs9kwv/fRUNOxykv65tRcg16Vkmrgi/EuAPiXTp
 opc3Pqntq2yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,361,1589266800"; d="scan'208";a="269413419"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jul 2020 18:57:17 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 18:57:16 -0700
Message-Id: <20200717015716.37671-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200717015716.37671-1-umesh.nerlige.ramappa@intel.com>
References: <20200717015716.37671-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/perf: Map OA buffer to user space
 for gen12 performance query
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
implementation for query, but Gen12+ requires a new approach for query
based on triggered reports within oa buffer.

Triggering reports into the OA buffer is achieved by writing into a
a trigger register. Optionally an unused counter/register is set with a
marker value such that a triggered report can be identified in the OA
buffer. Reports are usually triggered at the start and end of work that
is measured.

Since OA buffer is large and queries can be frequent, an efficient way
to look for triggered reports is required. By knowing the current head
and tail offsets into the OA buffer, it is easier to determine the
locality of the reports of interest.

Current perf OA interface does not expose head/tail information to the
user and it filters out invalid reports before sending data to user.
Also considering limited size of user buffer used during a query,
creating a 1:1 copy of the OA buffer at the user space added undesired
complexity.

The solution was to map the OA buffer to user space provided

(1) that it is accessed from a privileged user.
(2) OA report filtering is not used.

These 2 conditions would satisfy the safety criteria that the current
perf interface addresses.

To enable the query:
- Add an ioctl to expose head and tail to the user
- Add an ioctl to return size and offset of the OA buffer
- Map the OA buffer to the user space

Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_mman.c |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_mman.h |   2 +
 drivers/gpu/drm/i915/i915_perf.c         | 156 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_perf_types.h   |   5 +
 drivers/gpu/drm/i915/i915_reg.h          |   1 +
 include/uapi/drm/i915_drm.h              |  32 +++++
 6 files changed, 194 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
index b23368529a40..7c4b9b0c334b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
@@ -204,7 +204,7 @@ compute_partial_view(const struct drm_i915_gem_object *obj,
 	return view;
 }
 
-static vm_fault_t i915_error_to_vmf_fault(int err)
+vm_fault_t i915_error_to_vmf_fault(int err)
 {
 	switch (err) {
 	default:
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.h b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
index efee9e0d2508..1190a3a228ea 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
@@ -29,4 +29,6 @@ void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
 
 void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj);
 
+vm_fault_t i915_error_to_vmf_fault(int err);
+
 #endif
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index c6f6370283cf..a7733722f915 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -192,10 +192,12 @@
  */
 
 #include <linux/anon_inodes.h>
+#include <linux/mman.h>
 #include <linux/sizes.h>
 #include <linux/uuid.h>
 
 #include "gem/i915_gem_context.h"
+#include "gem/i915_gem_mman.h"
 #include "gt/intel_engine_pm.h"
 #include "gt/intel_engine_user.h"
 #include "gt/intel_gt.h"
@@ -434,6 +436,30 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
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
 
@@ -1584,6 +1612,58 @@ static int alloc_oa_buffer(struct i915_perf_stream *stream)
 	return ret;
 }
 
+static vm_fault_t vm_fault_oa(struct vm_fault *vmf)
+{
+	struct vm_area_struct *vma = vmf->vma;
+	struct i915_perf_stream *stream = vma->vm_private_data;
+	struct drm_i915_gem_object *obj = stream->oa_buffer.vma->obj;
+	int err;
+
+	err = i915_gem_object_pin_pages(obj);
+	if (err)
+		goto out;
+
+	err = remap_io_sg(vma,
+			  vma->vm_start, vma->vm_end - vma->vm_start,
+			  obj->mm.pages->sgl, -1);
+
+	i915_gem_object_unpin_pages(obj);
+
+out:
+	return i915_error_to_vmf_fault(err);
+}
+
+static const struct vm_operations_struct vm_ops_oa = {
+	.fault = vm_fault_oa,
+};
+
+#define I915_PERF_OA_BUFFER_MMAP_OFFSET 1
+
+int i915_perf_mmap(struct file *file, struct vm_area_struct *vma)
+{
+	struct i915_perf_stream *stream = file->private_data;
+
+	if (vma->vm_end < vma->vm_start)
+		return -EINVAL;
+
+	if ((vma->vm_end - vma->vm_start) > OA_BUFFER_SIZE)
+		return -EINVAL;
+
+	if (vma->vm_flags & VM_WRITE)
+		return -EINVAL;
+
+	if (vma->vm_pgoff != I915_PERF_OA_BUFFER_MMAP_OFFSET)
+		return -EINVAL;
+
+	vma->vm_flags &= ~(VM_MAYWRITE | VM_MAYEXEC | VM_MAYSHARE);
+	vma->vm_flags |= VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP;
+	vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
+	vma->vm_private_data = stream;
+	vma->vm_ops = &vm_ops_oa;
+
+	return 0;
+}
+
 static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
 				  bool save, i915_reg_t reg, u32 offset,
 				  u32 dword_count)
@@ -2493,6 +2573,13 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
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
@@ -3199,6 +3286,57 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
 	return ret;
 }
 
+/**
+ * i915_perf_oa_buffer_head_tail_locked - head and tail of the OA buffer
+ * @stream: i915 perf stream
+ * @arg: pointer to oa buffer head and tail filled by this function.
+ */
+static int i915_perf_oa_buffer_head_tail_locked(struct i915_perf_stream *stream,
+						unsigned long arg)
+{
+	struct drm_i915_perf_oa_buffer_head_tail ht;
+	void __user *output = (void __user *) arg;
+	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
+
+	if (!output)
+		return -EINVAL;
+
+	memset(&ht, 0, sizeof(ht));
+
+	ht.head = stream->perf->ops.oa_hw_head_read(stream) - gtt_offset;
+	ht.tail = stream->perf->ops.oa_hw_tail_read(stream) - gtt_offset;
+
+	if (copy_to_user(output, &ht, sizeof(ht)))
+		return -EFAULT;
+
+	return 0;
+}
+
+/**
+ * i915_perf_oa_buffer_info_locked - size and offset of the OA buffer
+ * @stream: i915 perf stream
+ * @arg: pointer to oa buffer info filled by this function.
+ */
+static int i915_perf_oa_buffer_info_locked(struct i915_perf_stream *stream,
+					   unsigned long arg)
+{
+	struct drm_i915_perf_oa_buffer_info info;
+	void __user *output = (void __user *) arg;
+
+	if (!output)
+		return -EINVAL;
+
+	memset(&info, 0, sizeof(info));
+
+	info.size = stream->oa_buffer.vma->size;
+	info.offset = I915_PERF_OA_BUFFER_MMAP_OFFSET * PAGE_SIZE;
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
@@ -3224,6 +3362,10 @@ static long i915_perf_ioctl_locked(struct i915_perf_stream *stream,
 		return 0;
 	case I915_PERF_IOCTL_CONFIG:
 		return i915_perf_config_locked(stream, arg);
+	case I915_PERF_IOCTL_GET_OA_BUFFER_INFO:
+		return i915_perf_oa_buffer_info_locked(stream, arg);
+	case I915_PERF_IOCTL_GET_OA_BUFFER_HEAD_TAIL:
+		return i915_perf_oa_buffer_head_tail_locked(stream, arg);
 	}
 
 	return -EINVAL;
@@ -3317,6 +3459,7 @@ static const struct file_operations fops = {
 	 * to handle 32bits compatibility.
 	 */
 	.compat_ioctl   = i915_perf_ioctl,
+	.mmap		= i915_perf_mmap,
 };
 
 
@@ -4245,6 +4388,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 		perf->ops.oa_disable = gen7_oa_disable;
 		perf->ops.read = gen7_oa_read;
 		perf->ops.oa_hw_tail_read = gen7_oa_hw_tail_read;
+		perf->ops.oa_hw_head_read = gen7_oa_hw_head_read;
 
 		perf->oa_formats = hsw_oa_formats;
 	} else if (HAS_LOGICAL_RING_CONTEXTS(i915)) {
@@ -4276,6 +4420,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 			perf->ops.enable_metric_set = gen8_enable_metric_set;
 			perf->ops.disable_metric_set = gen8_disable_metric_set;
 			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
+			perf->ops.oa_hw_head_read = gen8_oa_hw_head_read;
 
 			if (IS_GEN(i915, 8)) {
 				perf->ctx_oactxctrl_offset = 0x120;
@@ -4303,6 +4448,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 			perf->ops.enable_metric_set = gen8_enable_metric_set;
 			perf->ops.disable_metric_set = gen10_disable_metric_set;
 			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
+			perf->ops.oa_hw_head_read = gen8_oa_hw_head_read;
 
 			if (IS_GEN(i915, 10)) {
 				perf->ctx_oactxctrl_offset = 0x128;
@@ -4327,6 +4473,7 @@ void i915_perf_init(struct drm_i915_private *i915)
 			perf->ops.enable_metric_set = gen12_enable_metric_set;
 			perf->ops.disable_metric_set = gen12_disable_metric_set;
 			perf->ops.oa_hw_tail_read = gen12_oa_hw_tail_read;
+			perf->ops.oa_hw_head_read = gen12_oa_hw_head_read;
 
 			perf->ctx_flexeu0_offset = 0;
 			perf->ctx_oactxctrl_offset = 0x144;
@@ -4432,8 +4579,11 @@ int i915_perf_ioctl_version(void)
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
index a36a455ae336..579f34e6fdd8 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -377,6 +377,11 @@ struct i915_oa_ops {
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
index 33653aa0cfd3..f42004dc3757 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -697,6 +697,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define OABUFFER_SIZE_16M   (7 << 3)
 
 #define GEN12_OA_TLB_INV_CR _MMIO(0xceec)
+#define GEN12_SQCNT1 _MMIO(0x8718)
 
 /* Gen12 OAR unit */
 #define GEN12_OAR_OACONTROL _MMIO(0x2960)
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 00546062e023..148c86e608ff 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2048,6 +2048,38 @@ struct drm_i915_perf_open_param {
  */
 #define I915_PERF_IOCTL_CONFIG	_IO('i', 0x2)
 
+/**
+ * Returns OA buffer properties to be used with mmap.
+ *
+ * This ioctl is available in perf revision 6.
+ */
+#define I915_PERF_IOCTL_GET_OA_BUFFER_INFO _IO('i', 0x3)
+
+/**
+ * OA buffer size and offset.
+ */
+struct drm_i915_perf_oa_buffer_info {
+	__u32 size;
+	__u32 offset;
+	__u64 reserved[4];
+};
+
+/**
+ * Returns current position of OA buffer head and tail.
+ *
+ * This ioctl is available in perf revision 6.
+ */
+#define I915_PERF_IOCTL_GET_OA_BUFFER_HEAD_TAIL _IO('i', 0x4)
+
+/**
+ * OA buffer head and tail.
+ */
+struct drm_i915_perf_oa_buffer_head_tail {
+	__u32 head;
+	__u32 tail;
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
