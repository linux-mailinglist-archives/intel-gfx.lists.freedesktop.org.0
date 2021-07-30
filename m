Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AF23DBDBA
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 19:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2E5C6E1E9;
	Fri, 30 Jul 2021 17:31:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F2C26E1E9
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jul 2021 17:31:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="274209449"
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="274209449"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 10:30:59 -0700
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="582176919"
Received: from chiaotih-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.133.66])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 10:30:59 -0700
Date: Fri, 30 Jul 2021 10:30:58 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Cai Huoqing <caihuoqing@baidu.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org
Message-ID: <20210730173058.swrziix6pq4hdtid@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210730094918.2928-1-caihuoqing@baidu.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210730094918.2928-1-caihuoqing@baidu.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix typo in comments and
 Kconfig.debug
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

On Fri, Jul 30, 2021 at 05:49:18PM +0800, Cai Huoqing wrote:
>Fix typo:
>*iff  ==> if

this is one that is hard to do automatically because it's also an
abbreviation for "if and only if". See
https://en.wikipedia.org/wiki/If_and_only_if . In the single place it
was changed below, the abbreviation was intended.

I guess these fixes come from some tool. Mind mentioning in the commit
message what it is? I would have guessed codespell, but codespell
doesn't have this entry, so it must be something else.

Rest looks good. Thanks

Lucas De Marchi

>*specifc  ==> specific
>*adjustement  ==> adjustment
>*preferrably  ==> preferably
>*forseeable  ==> foreseeable
>*overwritting  ==> overwriting
>*sempahores  ==> semaphores
>*additonally  ==> additionally
>*allcoated  ==> allocated
>*contigious  ==> contiguous
>*priorty  ==> priority
>*priviliged  ==> privileged
>*fullfilling  ==> fulfilling
>*Timestmap  ==> Timestamp
>*accesible  ==> accessible
>*becaue  ==> because
>*overriden  ==> overridden
>*prarameter  ==> parameter
>*the the  ==> the
>
>Signed-off-by: Cai Huoqing <caihuoqing@baidu.com>
>---
> drivers/gpu/drm/i915/Kconfig.debug      |  2 +-
> drivers/gpu/drm/i915/i915_drv.h         |  6 +++---
> drivers/gpu/drm/i915/i915_gpu_error.c   |  2 +-
> drivers/gpu/drm/i915/i915_irq.c         |  2 +-
> drivers/gpu/drm/i915/i915_pci.c         |  4 ++--
> drivers/gpu/drm/i915/i915_perf.c        |  4 ++--
> drivers/gpu/drm/i915/i915_pmu.h         |  2 +-
> drivers/gpu/drm/i915/i915_reg.h         |  2 +-
> drivers/gpu/drm/i915/i915_request.c     |  4 ++--
> drivers/gpu/drm/i915/i915_vma.c         |  4 ++--
> drivers/gpu/drm/i915/intel_pm.c         | 10 +++++-----
> drivers/gpu/drm/i915/intel_region_ttm.c |  2 +-
> drivers/gpu/drm/i915/intel_runtime_pm.c |  2 +-
> 13 files changed, 23 insertions(+), 23 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
>index 72a38f28393f..c444d97b7c9c 100644
>--- a/drivers/gpu/drm/i915/Kconfig.debug
>+++ b/drivers/gpu/drm/i915/Kconfig.debug
>@@ -2,7 +2,7 @@
> config DRM_I915_WERROR
> 	bool "Force GCC to throw an error instead of a warning when compiling"
> 	# As this may inadvertently break the build, only allow the user
>-	# to shoot oneself in the foot iff they aim really hard
>+	# to shoot oneself in the foot if they aim really hard
> 	depends on EXPERT
> 	# We use the dependency on !COMPILE_TEST to not be enabled in
> 	# allmodconfig or allyesconfig configurations
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index 734a2fce1efe..3ae32edf367a 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -335,7 +335,7 @@ struct drm_i915_display_funcs {
> enum i915_cache_level {
> 	I915_CACHE_NONE = 0,
> 	I915_CACHE_LLC, /* also used for snoopable memory on non-LLC */
>-	I915_CACHE_L3_LLC, /* gen7+, L3 sits between the domain specifc
>+	I915_CACHE_L3_LLC, /* gen7+, L3 sits between the domain specific
> 			      caches, eg sampler/render caches, and the
> 			      large Last-Level-Cache. LLC is coherent with
> 			      the CPU, but L3 is only visible to the GPU. */
>@@ -383,7 +383,7 @@ struct intel_fbc {
> 			int src_h;
> 			bool visible;
> 			/*
>-			 * Display surface base address adjustement for
>+			 * Display surface base address adjustment for
> 			 * pageflips. Note that on gen4+ this only adjusts up
> 			 * to a tile, offsets within a tile are handled in
> 			 * the hw itself (with the TILEOFF register).
>@@ -795,7 +795,7 @@ struct drm_i915_private {
> 	 */
> 	struct resource dsm;
> 	/**
>-	 * Reseved portion of Data Stolen Memory
>+	 * Reserved portion of Data Stolen Memory
> 	 */
> 	struct resource dsm_reserved;
>
>diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
>index 35c97c39f125..601401a510c5 100644
>--- a/drivers/gpu/drm/i915/i915_gpu_error.c
>+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
>@@ -1498,7 +1498,7 @@ gt_record_uc(struct intel_gt_coredump *gt,
> 	memcpy(&error_uc->huc_fw, &uc->huc.fw, sizeof(uc->huc.fw));
>
> 	/* Non-default firmware paths will be specified by the modparam.
>-	 * As modparams are generally accesible from the userspace make
>+	 * As modparams are generally accessible from the userspace make
> 	 * explicit copies of the firmware paths.
> 	 */
> 	error_uc->guc_fw.path = kstrdup(uc->guc.fw.path, ALLOW_FAIL);
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>index e2171bd2820e..b426236e16e9 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -62,7 +62,7 @@
>
> /*
>  * Interrupt statistic for PMU. Increments the counter only if the
>- * interrupt originated from the the GPU so interrupts from a device which
>+ * interrupt originated from the GPU so interrupts from a device which
>  * shares the interrupt line are not accounted.
>  */
> static inline void pmu_irq_stats(struct drm_i915_private *i915,
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>index ec80cd1cd00c..7be7087e9433 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -1264,8 +1264,8 @@ static int __init i915_init(void)
> 		return err > 0 ? 0 : err;
>
> 	/*
>-	 * Enable KMS by default, unless explicitly overriden by
>-	 * either the i915.modeset prarameter or by the
>+	 * Enable KMS by default, unless explicitly overridden by
>+	 * either the i915.modeset parameter or by the
> 	 * vga_text_mode_force boot option.
> 	 */
>
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index 9f94914958c3..9e6043c1b65f 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -3457,7 +3457,7 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
> 	}
>
> 	/*
>-	 * Asking for SSEU configuration is a priviliged operation.
>+	 * Asking for SSEU configuration is a privileged operation.
> 	 */
> 	if (props->has_sseu)
> 		privileged_op = true;
>@@ -3939,7 +3939,7 @@ static u32 mask_reg_value(u32 reg, u32 val)
> 	if (REG_EQUAL(reg, HALF_SLICE_CHICKEN2))
> 		val = val & ~_MASKED_BIT_ENABLE(GEN8_ST_PO_DISABLE);
>
>-	/* WAIT_FOR_RC6_EXIT has only one bit fullfilling the function
>+	/* WAIT_FOR_RC6_EXIT has only one bit fulfilling the function
> 	 * indicated by its name and a bunch of selection fields used by OA
> 	 * configs.
> 	 */
>diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>index 60f9595f902c..4f315a6bc10f 100644
>--- a/drivers/gpu/drm/i915/i915_pmu.h
>+++ b/drivers/gpu/drm/i915/i915_pmu.h
>@@ -95,7 +95,7 @@ struct i915_pmu {
> 	/**
> 	 * @timer_last:
> 	 *
>-	 * Timestmap of the previous timer invocation.
>+	 * Timestamp of the previous timer invocation.
> 	 */
> 	ktime_t timer_last;
>
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>index 730afa341f8a..a7ba32e66de2 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -2955,7 +2955,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
> #define   HDPORT_DDI_USED(phy)		REG_BIT(2 * (phy) + 1)
> #define   HDPORT_ENABLED		REG_BIT(0)
>
>-/* Make render/texture TLB fetches lower priorty than associated data
>+/* Make render/texture TLB fetches lower priority than associated data
>  *   fetches. This is not turned on by default
>  */
> #define   MI_ARB_RENDER_TLB_LOW_PRIORITY	(1 << 15)
>diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
>index 37aef1308573..865aaf8378e4 100644
>--- a/drivers/gpu/drm/i915/i915_request.c
>+++ b/drivers/gpu/drm/i915/i915_request.c
>@@ -489,7 +489,7 @@ static bool __request_in_flight(const struct i915_request *signal)
> 	 * to avoid tearing.]
> 	 *
> 	 * Note that the read of *execlists->active may race with the promotion
>-	 * of execlists->pending[] to execlists->inflight[], overwritting
>+	 * of execlists->pending[] to execlists->inflight[], overwriting
> 	 * the value at *execlists->active. This is fine. The promotion implies
> 	 * that we received an ACK from the HW, and so the context is not
> 	 * stuck -- if we do not see ourselves in *active, the inflight status
>@@ -1239,7 +1239,7 @@ emit_semaphore_wait(struct i915_request *to,
> 	/*
> 	 * If this or its dependents are waiting on an external fence
> 	 * that may fail catastrophically, then we want to avoid using
>-	 * sempahores as they bypass the fence signaling metadata, and we
>+	 * semaphores as they bypass the fence signaling metadata, and we
> 	 * lose the fence->error propagation.
> 	 */
> 	if (from->sched.flags & I915_SCHED_HAS_EXTERNAL_CHAIN)
>diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
>index 0f227f28b280..1ecbf94370dd 100644
>--- a/drivers/gpu/drm/i915/i915_vma.c
>+++ b/drivers/gpu/drm/i915/i915_vma.c
>@@ -626,7 +626,7 @@ bool i915_gem_valid_gtt_space(struct i915_vma *vma, unsigned long color)
>  *
>  * First we try to allocate some free space that meets the requirements for
>  * the VMA. Failiing that, if the flags permit, it will evict an old VMA,
>- * preferrably the oldest idle entry to make room for the new VMA.
>+ * preferably the oldest idle entry to make room for the new VMA.
>  *
>  * Returns:
>  * 0 on success, negative error code otherwise.
>@@ -696,7 +696,7 @@ i915_vma_insert(struct i915_vma *vma, u64 size, u64 alignment, u64 flags)
> 		 * objects which need to be tightly packed into the low 32bits.
> 		 *
> 		 * Note that we assume that GGTT are limited to 4GiB for the
>-		 * forseeable future. See also i915_ggtt_offset().
>+		 * foreseeable future. See also i915_ggtt_offset().
> 		 */
> 		if (upper_32_bits(end - 1) &&
> 		    vma->page_sizes.sg > I915_GTT_PAGE_SIZE) {
>diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
>index 10a39a7d8150..740f0c8c1d30 100644
>--- a/drivers/gpu/drm/i915/intel_pm.c
>+++ b/drivers/gpu/drm/i915/intel_pm.c
>@@ -660,7 +660,7 @@ static const struct intel_watermark_params i845_wm_info = {
>  * @latency: Memory wakeup latency in 0.1us units
>  *
>  * Compute the watermark using the method 1 or "small buffer"
>- * formula. The caller may additonally add extra cachelines
>+ * formula. The caller may additionally add extra cachelines
>  * to account for TLB misses and clock crossings.
>  *
>  * This method is concerned with the short term drain rate
>@@ -707,7 +707,7 @@ static unsigned int intel_wm_method1(unsigned int pixel_rate,
>  * @latency: Memory wakeup latency in 0.1us units
>  *
>  * Compute the watermark using the method 2 or "large buffer"
>- * formula. The caller may additonally add extra cachelines
>+ * formula. The caller may additionally add extra cachelines
>  * to account for TLB misses and clock crossings.
>  *
>  * This method is concerned with the long term drain rate
>@@ -1719,7 +1719,7 @@ static int vlv_compute_fifo(struct intel_crtc_state *crtc_state)
> 	/*
> 	 * When enabling sprite0 after sprite1 has already been enabled
> 	 * we tend to get an underrun unless sprite0 already has some
>-	 * FIFO space allcoated. Hence we always allocate at least one
>+	 * FIFO space allocated. Hence we always allocate at least one
> 	 * cacheline for sprite0 whenever sprite1 is enabled.
> 	 *
> 	 * All other plane enable sequences appear immune to this problem.
>@@ -2919,7 +2919,7 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
> 		 * WaWmMemoryReadLatency
> 		 *
> 		 * punit doesn't take into account the read latency so we need
>-		 * to add proper adjustement to each valid level we retrieve
>+		 * to add proper adjustment to each valid level we retrieve
> 		 * from the punit when level 0 response data is 0us.
> 		 */
> 		if (wm[0] == 0) {
>@@ -4091,7 +4091,7 @@ u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
>
> 	/*
> 	 * Per plane DDB entry can in a really worst case be on multiple slices
>-	 * but single entry is anyway contigious.
>+	 * but single entry is anyway contiguous.
> 	 */
> 	while (start_slice <= end_slice) {
> 		slice_mask |= BIT(start_slice);
>diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i915/intel_region_ttm.c
>index 27fe0668d094..d0d1972343b7 100644
>--- a/drivers/gpu/drm/i915/intel_region_ttm.c
>+++ b/drivers/gpu/drm/i915/intel_region_ttm.c
>@@ -204,7 +204,7 @@ intel_region_ttm_node_alloc(struct intel_memory_region *mem,
>
> 	/*
> 	 * We ignore the flags for now since we're using the range
>-	 * manager and contigous and min page size would be fulfilled
>+	 * manager and contiguous and min page size would be fulfilled
> 	 * by default if size is min page size aligned.
> 	 */
> 	mock_bo.base.size = size;
>diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
>index eaf7688f517d..dfcf43e55fc0 100644
>--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
>+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
>@@ -575,7 +575,7 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
> 	 * leave the device suspended skipping the driver's suspend handlers
> 	 * if the device was already runtime suspended. This is needed due to
> 	 * the difference in our runtime and system suspend sequence and
>-	 * becaue the HDA driver may require us to enable the audio power
>+	 * because the HDA driver may require us to enable the audio power
> 	 * domain during system suspend.
> 	 */
> 	dev_pm_set_driver_flags(kdev, DPM_FLAG_NO_DIRECT_COMPLETE);
>-- 
>2.25.1
>
