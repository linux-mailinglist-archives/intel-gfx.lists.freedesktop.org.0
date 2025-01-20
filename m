Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEE2A167AF
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 08:53:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AE6710E353;
	Mon, 20 Jan 2025 07:53:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j7ltdip+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B786810E353
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 07:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737359627; x=1768895627;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kmtgt0veauhUABcwR8VyeaBhtErdotlkIoqqQWJd/EU=;
 b=j7ltdip+guuDxfL/xwKGAUw7ihLeAqE/6wodHGpJnRqixBFXewNFdSkR
 82lRLUYRMGa3V5opcOCEbsk14jYGM0PnXvZkMtY/fkauXXkTyFjwYTzf+
 GRkRLXOssU2VqwDbbWOFT+3RB3q00aqGWb3Onhs1Xl915BjSqzv1LHawK
 PnU/ea5OULCg1ekCXQhqkAQUT3506pTvjLXZqwVFCpGLewsgofnt4DJDf
 hmIfHg+1E1BcaQofeGzwNUICbWrMvqiJpeNoOq142kWAbxK7g/iN+BXmw
 57HP3stdMatV9YJnlscz4Ih51WNU+S1KqostD7JvyIdqIkqDpT1f5AC+o Q==;
X-CSE-ConnectionGUID: NPjw4u/xSfKAvP61DvUKHw==
X-CSE-MsgGUID: ZhSY/+LoSlm1TOhR5EQWfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11320"; a="25325776"
X-IronPort-AV: E=Sophos;i="6.13,218,1732608000"; d="scan'208";a="25325776"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2025 23:53:46 -0800
X-CSE-ConnectionGUID: SWyC2lMOQmqwA4Y71l0wrA==
X-CSE-MsgGUID: iWA5e5LgSqC1K5upxed8Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="137317982"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa001.fm.intel.com with ESMTP; 19 Jan 2025 23:53:44 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: krzysztof.niemiec@intel.com
Cc: andi.shyti@intel.com, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org, nitin.r.gote@intel.com
Subject: [PATCH v4 2/8] drm/i915/gvt: fix typos in i915/gvt files
Date: Mon, 20 Jan 2025 13:45:11 +0530
Message-Id: <20250120081517.3237326-3-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250120081517.3237326-1-nitin.r.gote@intel.com>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Fix all typos in files under drm/i915/gvt reported by codespell tool.

v2: Correct comment styling. <Krzysztof Niemiec>

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/gvt/cmd_parser.c   | 15 ++++++++-------
 drivers/gpu/drm/i915/gvt/dmabuf.c       |  2 +-
 drivers/gpu/drm/i915/gvt/edid.c         |  2 +-
 drivers/gpu/drm/i915/gvt/gtt.c          |  2 +-
 drivers/gpu/drm/i915/gvt/gvt.h          |  8 +++++---
 drivers/gpu/drm/i915/gvt/handlers.c     |  6 +++---
 drivers/gpu/drm/i915/gvt/kvmgt.c        |  2 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c |  6 +++---
 drivers/gpu/drm/i915/gvt/scheduler.c    | 11 ++++++-----
 drivers/gpu/drm/i915/gvt/vgpu.c         |  6 +++---
 10 files changed, 32 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 6439c8e91a8d..f25ee2953baf 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -1906,7 +1906,7 @@ static int perform_bb_shadow(struct parser_exec_state *s)
 		s->vgpu->gtt.ggtt_mm : s->workload->shadow_mm;
 	unsigned long start_offset = 0;
 
-	/* get the start gm address of the batch buffer */
+	/* Get the start gm address of the batch buffer */
 	gma = get_gma_bb_from_cmd(s, 1);
 	if (gma == INTEL_GVT_INVALID_ADDR)
 		return -EFAULT;
@@ -1921,15 +1921,16 @@ static int perform_bb_shadow(struct parser_exec_state *s)
 
 	bb->ppgtt = (s->buf_addr_type == GTT_BUFFER) ? false : true;
 
-	/* the start_offset stores the batch buffer's start gma's
-	 * offset relative to page boundary. so for non-privileged batch
+	/*
+	 * The start_offset stores the batch buffer's start gma's
+	 * offset relative to page boundary. So for non-privileged batch
 	 * buffer, the shadowed gem object holds exactly the same page
-	 * layout as original gem object. This is for the convience of
+	 * layout as original gem object. This is for the convenience of
 	 * replacing the whole non-privilged batch buffer page to this
-	 * shadowed one in PPGTT at the same gma address. (this replacing
+	 * shadowed one in PPGTT at the same gma address. (This replacing
 	 * action is not implemented yet now, but may be necessary in
 	 * future).
-	 * for prileged batch buffer, we just change start gma address to
+	 * For prileged batch buffer, we just change start gma address to
 	 * that of shadowed page.
 	 */
 	if (bb->ppgtt)
@@ -1976,7 +1977,7 @@ static int perform_bb_shadow(struct parser_exec_state *s)
 	/*
 	 * ip_va saves the virtual address of the shadow batch buffer, while
 	 * ip_gma saves the graphics address of the original batch buffer.
-	 * As the shadow batch buffer is just a copy from the originial one,
+	 * As the shadow batch buffer is just a copy from the original one,
 	 * it should be right to use shadow batch buffer'va and original batch
 	 * buffer's gma in pair. After all, we don't want to pin the shadow
 	 * buffer here (too early).
diff --git a/drivers/gpu/drm/i915/gvt/dmabuf.c b/drivers/gpu/drm/i915/gvt/dmabuf.c
index 9efc3ca0ce82..4f599af766b0 100644
--- a/drivers/gpu/drm/i915/gvt/dmabuf.c
+++ b/drivers/gpu/drm/i915/gvt/dmabuf.c
@@ -436,7 +436,7 @@ int intel_vgpu_query_plane(struct intel_vgpu *vgpu, void *args)
 			dmabuf_obj_get(dmabuf_obj);
 		}
 		ret = 0;
-		gvt_dbg_dpy("vgpu%d: re-use dmabuf_obj ref %d, id %d\n",
+		gvt_dbg_dpy("vgpu%d: reuse dmabuf_obj ref %d, id %d\n",
 			    vgpu->id, kref_read(&dmabuf_obj->kref),
 			    gfx_plane_info->dmabuf_id);
 		mutex_unlock(&vgpu->dmabuf_lock);
diff --git a/drivers/gpu/drm/i915/gvt/edid.c b/drivers/gpu/drm/i915/gvt/edid.c
index 0a357ca42db1..89147d33168c 100644
--- a/drivers/gpu/drm/i915/gvt/edid.c
+++ b/drivers/gpu/drm/i915/gvt/edid.c
@@ -298,7 +298,7 @@ static int gmbus3_mmio_read(struct intel_vgpu *vgpu, unsigned int offset,
 	int byte_count = byte_left;
 	u32 reg_data = 0;
 
-	/* Data can only be recevied if previous settings correct */
+	/* Data can only be received if previous settings correct */
 	if (vgpu_vreg_t(vgpu, PCH_GMBUS1) & GMBUS_SLAVE_READ) {
 		if (byte_left <= 0) {
 			memcpy(p_data, &vgpu_vreg(vgpu, offset), bytes);
diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gtt.c
index 464fb17e82ee..2fa7ca19ba5d 100644
--- a/drivers/gpu/drm/i915/gvt/gtt.c
+++ b/drivers/gpu/drm/i915/gvt/gtt.c
@@ -1193,7 +1193,7 @@ static int ppgtt_populate_shadow_entry(struct intel_vgpu *vgpu,
 		gvt_vdbg_mm("shadow 64K gtt entry\n");
 		/*
 		 * The layout of 64K page is special, the page size is
-		 * controlled by uper PDE. To be simple, we always split
+		 * controlled by upper PDE. To be simple, we always split
 		 * 64K page to smaller 4K pages in shadow PT.
 		 */
 		return split_64KB_gtt_entry(vgpu, spt, index, &se);
diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
index 8580c6d057e7..01d890999f25 100644
--- a/drivers/gpu/drm/i915/gvt/gvt.h
+++ b/drivers/gpu/drm/i915/gvt/gvt.h
@@ -452,8 +452,10 @@ void intel_vgpu_free_resource(struct intel_vgpu *vgpu);
 void intel_vgpu_write_fence(struct intel_vgpu *vgpu,
 	u32 fence, u64 value);
 
-/* Macros for easily accessing vGPU virtual/shadow register.
-   Explicitly seperate use for typed MMIO reg or real offset.*/
+/*
+ * Macros for easily accessing vGPU virtual/shadow register.
+ * Explicitly separate use for typed MMIO reg or real offset.
+ */
 #define vgpu_vreg_t(vgpu, reg) \
 	(*(u32 *)(vgpu->mmio.vreg + i915_mmio_reg_offset(reg)))
 #define vgpu_vreg(vgpu, offset) \
@@ -696,7 +698,7 @@ static inline void intel_gvt_mmio_set_cmd_write_patch(
  * @offset: register offset
  *
  * Returns:
- * True if GPU commmand write to an MMIO should be patched
+ * True if GPU command write to an MMIO should be patched.
  */
 static inline bool intel_gvt_mmio_is_cmd_write_patch(
 			struct intel_gvt *gvt, unsigned int offset)
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index ee473b45d1e4..4efee6797873 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -689,11 +689,11 @@ static void vgpu_update_refresh_rate(struct intel_vgpu *vgpu)
 		u32 new_rate = 0;
 		u32 *old_rate = &(intel_vgpu_port(vgpu, vgpu->display.port_num)->vrefresh_k);
 
-		/* Calcuate pixel clock by (ls_clk * M / N) */
+		/* Calculate pixel clock by (ls_clk * M / N) */
 		pixel_clk = div_u64(mul_u32_u32(link_m, dp_br), link_n);
 		pixel_clk *= MSEC_PER_SEC;
 
-		/* Calcuate refresh rate by (pixel_clk / (h_total * v_total)) */
+		/* Calculate refresh rate by (pixel_clk / (h_total * v_total)) */
 		new_rate = DIV64_U64_ROUND_CLOSEST(mul_u64_u32_shr(pixel_clk, MSEC_PER_SEC, 0), mul_u32_u32(htotal + 1, vtotal + 1));
 
 		if (*old_rate != new_rate)
@@ -2001,7 +2001,7 @@ static int elsp_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 	 * vGPU reset, it's set on D0->D3 on PCI config write, and cleared after
 	 * vGPU reset if in resuming.
 	 * In S0ix exit, the device power state also transite from D3 to D0 as
-	 * S3 resume, but no vGPU reset (triggered by QEMU devic model). After
+	 * S3 resume, but no vGPU reset (triggered by QEMU device model). After
 	 * S0ix exit, all engines continue to work. However the d3_entered
 	 * remains set which will break next vGPU reset logic (miss the expected
 	 * PPGTT invalidation).
diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
index b27ff77bfb50..69830a5c49d3 100644
--- a/drivers/gpu/drm/i915/gvt/kvmgt.c
+++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
@@ -142,7 +142,7 @@ static int gvt_pin_guest_page(struct intel_vgpu *vgpu, unsigned long gfn,
 	int ret;
 
 	/*
-	 * We pin the pages one-by-one to avoid allocating a big arrary
+	 * We pin the pages one-by-one to avoid allocating a big array
 	 * on stack to hold pfns.
 	 */
 	for (npage = 0; npage < total_pages; npage++) {
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
index 273db14fd5fc..2f7208843367 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.c
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
@@ -53,7 +53,7 @@ struct engine_mmio {
 	u32 value;
 };
 
-/* Raw offset is appened to each line for convenience. */
+/* Raw offset is append to each line for convenience. */
 static struct engine_mmio gen8_engine_mmio_list[] __cacheline_aligned = {
 	{RCS0, RING_MODE_GEN7(RENDER_RING_BASE), 0xffff, false}, /* 0x229c */
 	{RCS0, GEN9_CTX_PREEMPT_REG, 0x0, false}, /* 0x2248 */
@@ -576,8 +576,8 @@ void intel_gvt_switch_mmio(struct intel_vgpu *pre,
 
 	/**
 	 * We are using raw mmio access wrapper to improve the
-	 * performace for batch mmio read/write, so we need
-	 * handle forcewake mannually.
+	 * performance for batch mmio read/write, so we need
+	 * handle forcewake manually.
 	 */
 	intel_uncore_forcewake_get(engine->uncore, FORCEWAKE_ALL);
 	switch_mmio(pre, next, engine);
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 23f2cc397ec9..6e87c10bc454 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -77,7 +77,7 @@ static void update_shadow_pdps(struct intel_vgpu_workload *workload)
 }
 
 /*
- * when populating shadow ctx from guest, we should not overrride oa related
+ * When populating shadow ctx from guest, we should not override oa related
  * registers, so that they will not be overlapped by guest oa configs. Thus
  * made it possible to capture oa data from host for both host and guests.
  */
@@ -528,9 +528,10 @@ static int prepare_shadow_batch_buffer(struct intel_vgpu_workload *workload)
 	int ret;
 
 	list_for_each_entry(bb, &workload->shadow_bb, list) {
-		/* For privilge batch buffer and not wa_ctx, the bb_start_cmd_va
+		/*
+		 * For privilege batch buffer and not wa_ctx, the bb_start_cmd_va
 		 * is only updated into ring_scan_buffer, not real ring address
-		 * allocated in later copy_workload_to_ring_buffer. pls be noted
+		 * allocated in later copy_workload_to_ring_buffer. Please be noted
 		 * shadow_ring_buffer_va is now pointed to real ring buffer va
 		 * in copy_workload_to_ring_buffer.
 		 */
@@ -546,7 +547,7 @@ static int prepare_shadow_batch_buffer(struct intel_vgpu_workload *workload)
 		 * here, rather than switch to shadow bb's gma
 		 * address, we directly use original batch buffer's
 		 * gma address, and send original bb to hardware
-		 * directly
+		 * directly.
 		 */
 		if (!bb->ppgtt) {
 			i915_gem_ww_ctx_init(&ww, false);
@@ -1774,7 +1775,7 @@ intel_vgpu_create_workload(struct intel_vgpu *vgpu,
 }
 
 /**
- * intel_vgpu_queue_workload - Qeue a vGPU workload
+ * intel_vgpu_queue_workload - Queue a vGPU workload
  * @workload: the workload to queue in
  */
 void intel_vgpu_queue_workload(struct intel_vgpu_workload *workload)
diff --git a/drivers/gpu/drm/i915/gvt/vgpu.c b/drivers/gpu/drm/i915/gvt/vgpu.c
index 63c751ca4119..11260392234a 100644
--- a/drivers/gpu/drm/i915/gvt/vgpu.c
+++ b/drivers/gpu/drm/i915/gvt/vgpu.c
@@ -78,7 +78,7 @@ void populate_pvinfo_page(struct intel_vgpu *vgpu)
  * vGPU type name is defined as GVTg_Vx_y which contains the physical GPU
  * generation type (e.g V4 as BDW server, V5 as SKL server).
  *
- * Depening on the physical SKU resource, we might see vGPU types like
+ * Depending on the physical SKU resource, we might see vGPU types like
  * GVTg_V4_8, GVTg_V4_4, GVTg_V4_2, etc. We can create different types of
  * vGPU on same physical GPU depending on available resource. Each vGPU
  * type will have a different number of avail_instance to indicate how
@@ -417,7 +417,7 @@ int intel_gvt_create_vgpu(struct intel_vgpu *vgpu,
  * the whole vGPU to default state as when it is created. This vGPU function
  * is required both for functionary and security concerns.The ultimate goal
  * of vGPU FLR is that reuse a vGPU instance by virtual machines. When we
- * assign a vGPU to a virtual machine we must isse such reset first.
+ * assign a vGPU to a virtual machine we must issue such reset first.
  *
  * Full GT Reset and Per-Engine GT Reset are soft reset flow for GPU engines
  * (Render, Blitter, Video, Video Enhancement). It is defined by GPU Spec.
@@ -428,7 +428,7 @@ int intel_gvt_create_vgpu(struct intel_vgpu *vgpu,
  *
  * The parameter dev_level is to identify if we will do DMLR or GT reset.
  * The parameter engine_mask is to specific the engines that need to be
- * resetted. If value ALL_ENGINES is given for engine_mask, it means
+ * reset. If value ALL_ENGINES is given for engine_mask, it means
  * the caller requests a full GT reset that we will reset all virtual
  * GPU engines. For FLR, engine_mask is ignored.
  */
-- 
2.25.1

