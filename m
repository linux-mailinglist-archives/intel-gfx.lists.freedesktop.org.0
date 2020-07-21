Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07840227584
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 04:18:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB10889C1A;
	Tue, 21 Jul 2020 02:18:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B03B89C1A
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 02:17:59 +0000 (UTC)
IronPort-SDR: itK17DSkKczeDJ5VEaMBKuSKjRaXnq3ByjfO42AXajwV6Fl/NQVfjuCc8IeFLkLuEAAO7xu039
 V1sYRg0BOTUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="129617917"
X-IronPort-AV: E=Sophos;i="5.75,377,1589266800"; d="scan'208";a="129617917"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 19:17:59 -0700
IronPort-SDR: EoZN63RZyT8WZMIJTSIkdflzp5b7vUhMsxKa9jVdjSEvl8cXc8RDMzQPE9SWd5LiQHJfm7e9B1
 2uHcvrLTppHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,377,1589266800"; d="scan'208";a="461909681"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by orsmga005.jf.intel.com with ESMTP; 20 Jul 2020 19:17:59 -0700
Date: Mon, 20 Jul 2020 19:17:59 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200721021759.GA26358@orsosgc001.amr.corp.intel.com>
References: <20200721020012.46506-1-umesh.nerlige.ramappa@intel.com>
 <20200721020012.46506-5-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200721020012.46506-5-umesh.nerlige.ramappa@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/perf: Map OA buffer to user
 space for gen12 performance query
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

I have added your comments, but I have a few questions below:

Thanks for your help,
Umesh

On Mon, Jul 20, 2020 at 07:00:12PM -0700, Umesh Nerlige Ramappa wrote:
>From: Piotr Maciejewski <piotr.maciejewski@intel.com>
>
>i915 used to support time based sampling mode which is good for overall
>system monitoring, but is not enough for query mode used to measure a
>single draw call or dispatch. Gen9-Gen11 are using current i915 perf
>implementation for query, but Gen12+ requires a new approach for query
>based on triggered reports within oa buffer.
>
>Triggering reports into the OA buffer is achieved by writing into a
>a trigger register. Optionally an unused counter/register is set with a
>marker value such that a triggered report can be identified in the OA
>buffer. Reports are usually triggered at the start and end of work that
>is measured.
>
>Since OA buffer is large and queries can be frequent, an efficient way
>to look for triggered reports is required. By knowing the current head
>and tail offsets into the OA buffer, it is easier to determine the
>locality of the reports of interest.
>
>Current perf OA interface does not expose head/tail information to the
>user and it filters out invalid reports before sending data to user.
>Also considering limited size of user buffer used during a query,
>creating a 1:1 copy of the OA buffer at the user space added undesired
>complexity.
>
>The solution was to map the OA buffer to user space provided
>
>(1) that it is accessed from a privileged user.
>(2) OA report filtering is not used.
>
>These 2 conditions would satisfy the safety criteria that the current
>perf interface addresses.
>
>To enable the query:
>- Add an ioctl to expose head and tail to the user
>- Add an ioctl to return size and offset of the OA buffer
>- Map the OA buffer to the user space
>
>v2:
>- Improve commit message (Chris)
>- Do not mmap based on gem object filp. Instead, use perf_fd and support
>  mmap syscall (Chris)
>- Pass non-zero offset in mmap to enforce the right object is mapped (Chris)
>- Do not expose gpu_address (Chris)
>- Verify start and length of vma for page alignment (Lionel)
>- Move SQNTL config out (Lionel)
>
>v3: (Chris)
>- Omit redundant checks
>- Return VM_FAULT_SIGBUS is old stream is closed
>- Maintain reference counts to stream in vm_open and vm_close
>- Use switch to identify object to be mapped
>
>Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/gem/i915_gem_mman.c |   2 +-
> drivers/gpu/drm/i915/gem/i915_gem_mman.h |   2 +
> drivers/gpu/drm/i915/i915_perf.c         | 196 ++++++++++++++++++++++-
> drivers/gpu/drm/i915/i915_perf_types.h   |  17 ++
> include/uapi/drm/i915_drm.h              |  32 ++++
> 5 files changed, 245 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>index b23368529a40..7c4b9b0c334b 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>@@ -204,7 +204,7 @@ compute_partial_view(const struct drm_i915_gem_object *obj,
> 	return view;
> }
>
>-static vm_fault_t i915_error_to_vmf_fault(int err)
>+vm_fault_t i915_error_to_vmf_fault(int err)
> {
> 	switch (err) {
> 	default:
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.h b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
>index efee9e0d2508..1190a3a228ea 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_mman.h
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.h
>@@ -29,4 +29,6 @@ void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj);
>
> void i915_gem_object_release_mmap_offset(struct drm_i915_gem_object *obj);
>
>+vm_fault_t i915_error_to_vmf_fault(int err);
>+
> #endif
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index 453afeaee0a7..0e9696fc4ab2 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -192,10 +192,12 @@
>  */
>
> #include <linux/anon_inodes.h>
>+#include <linux/mman.h>
> #include <linux/sizes.h>
> #include <linux/uuid.h>
>
> #include "gem/i915_gem_context.h"
>+#include "gem/i915_gem_mman.h"
> #include "gt/intel_engine_pm.h"
> #include "gt/intel_engine_user.h"
> #include "gt/intel_gt.h"
>@@ -434,6 +436,30 @@ static u32 gen7_oa_hw_tail_read(struct i915_perf_stream *stream)
> 	return oastatus1 & GEN7_OASTATUS1_TAIL_MASK;
> }
>
>+static u32 gen12_oa_hw_head_read(struct i915_perf_stream *stream)
>+{
>+	struct intel_uncore *uncore = stream->uncore;
>+
>+	return intel_uncore_read(uncore, GEN12_OAG_OAHEADPTR) &
>+	       GEN12_OAG_OAHEADPTR_MASK;
>+}
>+
>+static u32 gen8_oa_hw_head_read(struct i915_perf_stream *stream)
>+{
>+	struct intel_uncore *uncore = stream->uncore;
>+
>+	return intel_uncore_read(uncore, GEN8_OAHEADPTR) &
>+	       GEN8_OAHEADPTR_MASK;
>+}
>+
>+static u32 gen7_oa_hw_head_read(struct i915_perf_stream *stream)
>+{
>+	struct intel_uncore *uncore = stream->uncore;
>+	u32 oastatus2 = intel_uncore_read(uncore, GEN7_OASTATUS2);
>+
>+	return oastatus2 & GEN7_OASTATUS2_HEAD_MASK;
>+}
>+
> /**
>  * oa_buffer_check_unlocked - check for data and update tail ptr state
>  * @stream: i915 stream instance
>@@ -1347,6 +1373,15 @@ free_noa_wait(struct i915_perf_stream *stream)
> 	i915_vma_unpin_and_release(&stream->noa_wait, 0);
> }
>
>+static void
>+free_stream(struct kref *kref)
>+{
>+	struct i915_perf_stream *stream =
>+		container_of(kref, typeof(*stream), refcount);
>+
>+	kfree(stream);
>+}
>+
> static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
> {
> 	struct i915_perf *perf = stream->perf;
>@@ -2934,6 +2969,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
> 	stream->poll_check_timer.function = oa_poll_check_timer_cb;
> 	init_waitqueue_head(&stream->poll_wq);
> 	spin_lock_init(&stream->oa_buffer.ptr_lock);
>+	kref_init(&stream->refcount);
>
> 	return 0;
>
>@@ -3214,6 +3250,69 @@ static long i915_perf_config_locked(struct i915_perf_stream *stream,
> 	return ret;
> }
>
>+/**
>+ * i915_perf_oa_buffer_head_tail_locked - head and tail of the OA buffer
>+ * @stream: i915 perf stream
>+ * @arg: pointer to oa buffer head and tail filled by this function.
>+ */
>+static int i915_perf_oa_buffer_head_tail_locked(struct i915_perf_stream *stream,
>+						unsigned long arg)
>+{
>+	struct drm_i915_perf_oa_buffer_head_tail ht;
>+	void __user *output = (void __user *)arg;
>+	u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
>+
>+	if (i915_perf_stream_paranoid && !perfmon_capable()) {
>+		DRM_DEBUG("Insufficient privileges to access OA buffer info\n");
>+		return -EACCES;
>+	}
>+
>+	if (!output)
>+		return -EINVAL;
>+
>+	memset(&ht, 0, sizeof(ht));
>+
>+	ht.head = stream->perf->ops.oa_hw_head_read(stream) - gtt_offset;
>+	ht.tail = stream->perf->ops.oa_hw_tail_read(stream) - gtt_offset;
>+
>+	if (copy_to_user(output, &ht, sizeof(ht)))
>+		return -EFAULT;
>+
>+	return 0;
>+}
>+
>+#define I915_PERF_OA_BUFFER_MMAP_OFFSET 1
>+
>+/**
>+ * i915_perf_oa_buffer_info_locked - size and offset of the OA buffer
>+ * @stream: i915 perf stream
>+ * @arg: pointer to oa buffer info filled by this function.
>+ */
>+static int i915_perf_oa_buffer_info_locked(struct i915_perf_stream *stream,
>+					   unsigned long arg)
>+{
>+	struct drm_i915_perf_oa_buffer_info info;
>+	void __user *output = (void __user *)arg;
>+
>+	if (i915_perf_stream_paranoid && !perfmon_capable()) {
>+		DRM_DEBUG("Insufficient privileges to access OA buffer info\n");
>+		return -EACCES;
>+	}
>+
>+	if (!output)
>+		return -EINVAL;
>+
>+	memset(&info, 0, sizeof(info));
>+
>+	info.size = stream->oa_buffer.vma->size;
>+	info.offset = I915_PERF_OA_BUFFER_MMAP_OFFSET * PAGE_SIZE;
>+
>+	if (copy_to_user(output, &info, sizeof(info)))
>+		return -EFAULT;
>+
>+	return 0;
>+}
>+
> /**
>  * i915_perf_ioctl - support ioctl() usage with i915 perf stream FDs
>  * @stream: An i915 perf stream
>@@ -3239,6 +3338,10 @@ static long i915_perf_ioctl_locked(struct i915_perf_stream *stream,
> 		return 0;
> 	case I915_PERF_IOCTL_CONFIG:
> 		return i915_perf_config_locked(stream, arg);
>+	case I915_PERF_IOCTL_GET_OA_BUFFER_INFO:
>+		return i915_perf_oa_buffer_info_locked(stream, arg);
>+	case I915_PERF_IOCTL_GET_OA_BUFFER_HEAD_TAIL:
>+		return i915_perf_oa_buffer_head_tail_locked(stream, arg);
> 	}
>
> 	return -EINVAL;
>@@ -3290,8 +3393,6 @@ static void i915_perf_destroy_locked(struct i915_perf_stream *stream)
>
> 	if (stream->ctx)
> 		i915_gem_context_put(stream->ctx);
>-
>-	kfree(stream);
> }
>
> /**
>@@ -3314,12 +3415,93 @@ static int i915_perf_release(struct inode *inode, struct file *file)
> 	i915_perf_destroy_locked(stream);
> 	mutex_unlock(&perf->lock);
>
>+	WRITE_ONCE(stream->closed, true);
>+	unmap_mapping_range(file->f_mapping, 0, OA_BUFFER_SIZE, 1);
>+
> 	/* Release the reference the perf stream kept on the driver. */
> 	drm_dev_put(&perf->i915->drm);
>
> 	return 0;
> }
>
>+static void vm_open_oa(struct vm_area_struct *vma)
>+{
>+	struct i915_perf_stream *stream = vma->vm_private_data;
>+
>+	GEM_BUG_ON(!stream);
>+	kref_get(&stream->refcount);

When user calls mmap, after this call the count is 2 (since kref_init 
started off the count with 1).

>+}
>+
>+static void vm_close_oa(struct vm_area_struct *vma)
>+{
>+	struct i915_perf_stream *stream = vma->vm_private_data;
>+
>+	GEM_BUG_ON(!stream);
>+	kref_put(&stream->refcount, free_stream);

When the user closes perf fd or calls unmap, vm_close_oa is called and 
refcount goes to 1, so not sure how the refcount goes to 0 so that 
free_stream is called. Should I kref_put when closing perf fd also?

>+}
>+
>+static vm_fault_t vm_fault_oa(struct vm_fault *vmf)
>+{
>+	struct vm_area_struct *vma = vmf->vma;
>+	struct i915_perf_stream *stream = vma->vm_private_data;
>+	struct drm_i915_gem_object *obj = stream->oa_buffer.vma->obj;
>+	int err;
>+
>+	if (READ_ONCE(stream->closed))
>+		return VM_FAULT_SIGBUS;
>+
>+	err = i915_gem_object_pin_pages(obj);
>+	if (err)
>+		goto out;
>+
>+	err = remap_io_sg(vma,
>+			  vma->vm_start, vma->vm_end - vma->vm_start,
>+			  obj->mm.pages->sgl, -1);
>+
>+	i915_gem_object_unpin_pages(obj);
>+
>+out:
>+	return i915_error_to_vmf_fault(err);
>+}
>+
>+static const struct vm_operations_struct vm_ops_oa = {
>+	.open = vm_open_oa,
>+	.close = vm_close_oa,
>+	.fault = vm_fault_oa,
>+};
>+
>+int i915_perf_mmap(struct file *file, struct vm_area_struct *vma)
>+{
>+	struct i915_perf_stream *stream = file->private_data;
>+
>+	if (i915_perf_stream_paranoid && !perfmon_capable()) {
>+		DRM_DEBUG("Insufficient privileges to map OA buffer\n");
>+		return -EACCES;
>+	}
>+
>+	switch (vma->vm_pgoff) {
>+	case I915_PERF_OA_BUFFER_MMAP_OFFSET:
>+		if (vma->vm_end - vma->vm_start > OA_BUFFER_SIZE)
>+			return -EINVAL;
>+
>+		if (vma->vm_flags & VM_WRITE)
>+			return -EINVAL;
>+
>+		break;
>+
>+	default:
>+		return -EINVAL;
>+	}
>+
>+	vma->vm_flags &= ~(VM_MAYWRITE | VM_MAYEXEC | VM_MAYSHARE);
>+	vma->vm_flags |= VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP;
>+	vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
>+	vma->vm_private_data = stream;
>+	vma->vm_ops = &vm_ops_oa;
>+	vm_open_oa(vma);

I am calling the open explicitly here to get the reference, otherwise I 
don't see open being called by anyone/anything.

If user calls mmap multiple times, does he get a unique vma each time?
Do I need to track all of them (and their sizes) and then unmap them 
when perf_fd is closed?

>+
>+	return 0;
>+}
>
> static const struct file_operations fops = {
> 	.owner		= THIS_MODULE,
>@@ -3332,6 +3514,7 @@ static const struct file_operations fops = {
> 	 * to handle 32bits compatibility.
> 	 */
> 	.compat_ioctl   = i915_perf_ioctl,
>+	.mmap		= i915_perf_mmap,
> };
>
>
>@@ -4260,6 +4443,7 @@ void i915_perf_init(struct drm_i915_private *i915)
> 		perf->ops.oa_disable = gen7_oa_disable;
> 		perf->ops.read = gen7_oa_read;
> 		perf->ops.oa_hw_tail_read = gen7_oa_hw_tail_read;
>+		perf->ops.oa_hw_head_read = gen7_oa_hw_head_read;
>
> 		perf->oa_formats = hsw_oa_formats;
> 	} else if (HAS_LOGICAL_RING_CONTEXTS(i915)) {
>@@ -4291,6 +4475,7 @@ void i915_perf_init(struct drm_i915_private *i915)
> 			perf->ops.enable_metric_set = gen8_enable_metric_set;
> 			perf->ops.disable_metric_set = gen8_disable_metric_set;
> 			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
>+			perf->ops.oa_hw_head_read = gen8_oa_hw_head_read;
>
> 			if (IS_GEN(i915, 8)) {
> 				perf->ctx_oactxctrl_offset = 0x120;
>@@ -4318,6 +4503,7 @@ void i915_perf_init(struct drm_i915_private *i915)
> 			perf->ops.enable_metric_set = gen8_enable_metric_set;
> 			perf->ops.disable_metric_set = gen10_disable_metric_set;
> 			perf->ops.oa_hw_tail_read = gen8_oa_hw_tail_read;
>+			perf->ops.oa_hw_head_read = gen8_oa_hw_head_read;
>
> 			if (IS_GEN(i915, 10)) {
> 				perf->ctx_oactxctrl_offset = 0x128;
>@@ -4342,6 +4528,7 @@ void i915_perf_init(struct drm_i915_private *i915)
> 			perf->ops.enable_metric_set = gen12_enable_metric_set;
> 			perf->ops.disable_metric_set = gen12_disable_metric_set;
> 			perf->ops.oa_hw_tail_read = gen12_oa_hw_tail_read;
>+			perf->ops.oa_hw_head_read = gen12_oa_hw_head_read;
>
> 			perf->ctx_flexeu0_offset = 0;
> 			perf->ctx_oactxctrl_offset = 0x144;
>@@ -4453,8 +4640,11 @@ int i915_perf_ioctl_version(void)
> 	 *
> 	 * 7: Whitelist OA buffer head/tail registers for user to identify the
> 	 *    location of triggered reports into the OA buffer.
>+	 *
>+	 * 8: Added an option to map oa buffer at umd driver level and trigger
>+	 *    oa reports within oa buffer from command buffer.
> 	 */
>-	return 7;
>+	return 8;
> }
>
> #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
>index a36a455ae336..2efbe35c5fa9 100644
>--- a/drivers/gpu/drm/i915/i915_perf_types.h
>+++ b/drivers/gpu/drm/i915/i915_perf_types.h
>@@ -311,6 +311,18 @@ struct i915_perf_stream {
> 	 * buffer should be checked for available data.
> 	 */
> 	u64 poll_oa_period;
>+
>+	/**
>+	 * @closed: Open or closed state of the stream.
>+	 * True if stream is closed.
>+	 */
>+	bool closed;

closed is part of the stream itself, so I cannot kfree(stream) until the 
refcount goes to 0.

>+
>+	/**
>+	 * @refcount: References to the mapped OA buffer managed by this
>+	 * stream.
>+	 */
>+	struct kref refcount;
> };
>
> /**
>@@ -377,6 +389,11 @@ struct i915_oa_ops {
> 	 * generations.
> 	 */
> 	u32 (*oa_hw_tail_read)(struct i915_perf_stream *stream);
>+
>+	/**
>+	 * @oa_hw_head_read: read the OA head pointer register
>+	 */
>+	u32 (*oa_hw_head_read)(struct i915_perf_stream *stream);
> };
>
> struct i915_perf {
>diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>index 00546062e023..2042f6339182 100644
>--- a/include/uapi/drm/i915_drm.h
>+++ b/include/uapi/drm/i915_drm.h
>@@ -2048,6 +2048,38 @@ struct drm_i915_perf_open_param {
>  */
> #define I915_PERF_IOCTL_CONFIG	_IO('i', 0x2)
>
>+/**
>+ * Returns OA buffer properties to be used with mmap.
>+ *
>+ * This ioctl is available in perf revision 8.
>+ */
>+#define I915_PERF_IOCTL_GET_OA_BUFFER_INFO _IO('i', 0x3)
>+
>+/**
>+ * OA buffer size and offset.
>+ */
>+struct drm_i915_perf_oa_buffer_info {
>+	__u32 size;
>+	__u32 offset;
>+	__u64 reserved[4];
>+};
>+
>+/**
>+ * Returns current position of OA buffer head and tail.
>+ *
>+ * This ioctl is available in perf revision 8.
>+ */
>+#define I915_PERF_IOCTL_GET_OA_BUFFER_HEAD_TAIL _IO('i', 0x4)
>+
>+/**
>+ * OA buffer head and tail.
>+ */
>+struct drm_i915_perf_oa_buffer_head_tail {
>+	__u32 head;
>+	__u32 tail;
>+	__u64 reserved[4];
>+};
>+
> /**
>  * Common to all i915 perf records
>  */
>-- 
>2.20.1
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
