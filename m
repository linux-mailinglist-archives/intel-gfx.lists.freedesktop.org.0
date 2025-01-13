Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF42EA0BFB4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 19:22:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9510210E79B;
	Mon, 13 Jan 2025 18:22:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VV2Y14dL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 918AF10E795
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 18:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736792522; x=1768328522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6osJiNit9ihpGjYv9Sy+xk5hvlb7N7hKLiZqwgVkWZM=;
 b=VV2Y14dLLdfKIMm0E7VhGdzh5u1EcjeTR1Df/IhUbqUOXiFktnjqrbSV
 5Dhj75+2io/OPFtJtSf8tMrw7AAIezyNSEUYgEFaOxMYrx8JaPlmMdxuw
 ZQU8dqZ/ALl40007eyY/F4i//u7Nah92x7TJ78iQH3ZEyWoqjC27aUEV5
 fMcAPZv9Q4Jx/GlRN5OsQnooC9wQg82FzGxET/Bj9fEwUnhVOhUmXhTUV
 Bs7cyjWF1+Yrd9T7JaD94A93M1JrSjoFdN8Pdr3bTa/dxx4KL6jvDwer0
 A+Sg55qKeiwxey6yliWUVRWKpamJz5IeDjzpUVShc/mqf1tLGAGhSaCc4 A==;
X-CSE-ConnectionGUID: wrsfUkpVR2667FD2C0ULmA==
X-CSE-MsgGUID: 4QgOFi6iRWuGk+ut9MLLdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="37299063"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="37299063"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 10:22:02 -0800
X-CSE-ConnectionGUID: OebrH6ufT5WOnSjNt8TXkA==
X-CSE-MsgGUID: Jttaf1DjTzGcnIeqrU+t8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="105078605"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa010.fm.intel.com with ESMTP; 13 Jan 2025 10:22:00 -0800
From: Nitin Gote <nitin.r.gote@intel.com>
To: andi.shyti@intel.com, jani.nikula@linux.intel.com,
 intel-gfx@lists.freedesktop.org
Cc: nitin.r.gote@intel.com
Subject: [PATCH v3 8/8] drm/i915: fix typos in drm/i915 files
Date: Tue, 14 Jan 2025 00:13:18 +0530
Message-Id: <20250113184318.2549653-9-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250113184318.2549653-1-nitin.r.gote@intel.com>
References: <20250113184318.2549653-1-nitin.r.gote@intel.com>
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

Fix all typos in files under drm/i915 reported by codespell tool.

v2: Fix commenting style <Andi>

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c          |  2 +-
 drivers/gpu/drm/i915/i915_gem.c             |  2 +-
 drivers/gpu/drm/i915/i915_irq.c             |  2 +-
 drivers/gpu/drm/i915/i915_module.c          |  2 +-
 drivers/gpu/drm/i915/i915_perf.c            | 10 ++++++----
 drivers/gpu/drm/i915/i915_pmu.h             |  2 +-
 drivers/gpu/drm/i915/i915_reg.h             |  4 ++--
 drivers/gpu/drm/i915/i915_request.c         |  2 +-
 drivers/gpu/drm/i915/i915_request.h         |  4 ++--
 drivers/gpu/drm/i915/i915_vma.c             |  8 ++++----
 drivers/gpu/drm/i915/intel_clock_gating.c   |  2 +-
 drivers/gpu/drm/i915/intel_gvt.c            |  2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c |  2 +-
 drivers/gpu/drm/i915/intel_runtime_pm.c     |  2 +-
 drivers/gpu/drm/i915/intel_runtime_pm.h     |  2 +-
 drivers/gpu/drm/i915/intel_uncore.c         |  2 +-
 16 files changed, 26 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c2ae37d6b94d..91a7748f4492 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1130,7 +1130,7 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
 	 * leave the device in D0 on those platforms and hope the BIOS will
 	 * power down the device properly. The issue was seen on multiple old
 	 * GENs with different BIOS vendors, so having an explicit blacklist
-	 * is inpractical; apply the workaround on everything pre GEN6. The
+	 * is impractical; apply the workaround on everything pre GEN6. The
 	 * platforms where the issue was seen:
 	 * Lenovo Thinkpad X301, X61s, X60, T60, X41
 	 * Fujitsu FSC S7110
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 070ab6546987..686ed33c1a8b 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1146,7 +1146,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
 	int ret;
 
 	/*
-	 * In the proccess of replacing cache_level with pat_index a tricky
+	 * In the process of replacing cache_level with pat_index a tricky
 	 * dependency is created on the definition of the enum i915_cache_level.
 	 * in case this enum is changed, PTE encode would be broken.
 	 * Add a WARNING here. And remove when we completely quit using this
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 7920ad9585ae..bc4b92edcb9f 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1231,7 +1231,7 @@ int intel_irq_install(struct drm_i915_private *dev_priv)
 }
 
 /**
- * intel_irq_uninstall - finilizes all irq handling
+ * intel_irq_uninstall - finalizes all irq handling
  * @dev_priv: i915 device instance
  *
  * This stops interrupt and hotplug handling and unregisters and frees all
diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
index 7ed6d70389af..2f88970cc0a9 100644
--- a/drivers/gpu/drm/i915/i915_module.c
+++ b/drivers/gpu/drm/i915/i915_module.c
@@ -24,7 +24,7 @@ static int i915_check_nomodeset(void)
 	bool use_kms = true;
 
 	/*
-	 * Enable KMS by default, unless explicitly overriden by
+	 * Enable KMS by default, unless explicitly overridden by
 	 * either the i915.modeset parameter or by the
 	 * nomodeset boot option.
 	 */
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 2406cda75b7b..cea24ad657d7 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -570,7 +570,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
 	tail = hw_tail;
 
 	/* Walk the stream backward until we find a report with report
-	 * id and timestmap not at 0. Since the circular buffer pointers
+	 * id and timestamp not at 0. Since the circular buffer pointers
 	 * progress by increments of 64 bytes and that reports can be up
 	 * to 256 bytes long, we can't tell whether a report has fully
 	 * landed in memory before the report id and timestamp of the
@@ -3849,7 +3849,7 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 	}
 
 	/*
-	 * Asking for SSEU configuration is a priviliged operation.
+	 * Asking for SSEU configuration is a privileged operation.
 	 */
 	if (props->has_sseu)
 		privileged_op = true;
@@ -4478,14 +4478,16 @@ static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 
 static u32 mask_reg_value(u32 reg, u32 val)
 {
-	/* HALF_SLICE_CHICKEN2 is programmed with a the
+	/*
+	 * HALF_SLICE_CHICKEN2 is programmed with a the
 	 * WaDisableSTUnitPowerOptimization workaround. Make sure the value
 	 * programmed by userspace doesn't change this.
 	 */
 	if (REG_EQUAL(reg, HALF_SLICE_CHICKEN2))
 		val = val & ~_MASKED_BIT_ENABLE(GEN8_ST_PO_DISABLE);
 
-	/* WAIT_FOR_RC6_EXIT has only one bit fullfilling the function
+	/*
+	 * WAIT_FOR_RC6_EXIT has only one bit fulfilling the function
 	 * indicated by its name and a bunch of selection fields used by OA
 	 * configs.
 	 */
diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
index 8e66d63d0c9f..0ec78c2b4f20 100644
--- a/drivers/gpu/drm/i915/i915_pmu.h
+++ b/drivers/gpu/drm/i915/i915_pmu.h
@@ -103,7 +103,7 @@ struct i915_pmu {
 	/**
 	 * @timer_last:
 	 *
-	 * Timestmap of the previous timer invocation.
+	 * Timestamp of the previous timer invocation.
 	 */
 	ktime_t timer_last;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 765e6c0528fb..902d7ad61021 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -84,7 +84,7 @@
  * Try to name registers according to the specs. If the register name changes in
  * the specs from platform to another, stick to the original name.
  *
- * Try to re-use existing register macro definitions. Only add new macros for
+ * Try to reuse existing register macro definitions. Only add new macros for
  * new register offsets, or when the register contents have changed enough to
  * warrant a full redefinition.
  *
@@ -492,7 +492,7 @@
 #define MBUS_ABOX_BT_CREDIT_POOL1_MASK	(0x1F << 0)
 #define MBUS_ABOX_BT_CREDIT_POOL1(x)	((x) << 0)
 
-/* Make render/texture TLB fetches lower priorty than associated data
+/* Make render/texture TLB fetches lower priority than associated data
  *   fetches. This is not turned on by default
  */
 #define   MI_ARB_RENDER_TLB_LOW_PRIORITY	(1 << 15)
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 8f62cfa23fb7..f8c584ce3295 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -473,7 +473,7 @@ static bool __request_in_flight(const struct i915_request *signal)
 	 * to avoid tearing.]
 	 *
 	 * Note that the read of *execlists->active may race with the promotion
-	 * of execlists->pending[] to execlists->inflight[], overwritting
+	 * of execlists->pending[] to execlists->inflight[], overwriting
 	 * the value at *execlists->active. This is fine. The promotion implies
 	 * that we received an ACK from the HW, and so the context is not
 	 * stuck -- if we do not see ourselves in *active, the inflight status
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 0ac55b2e4223..5f7e8138ec14 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -161,7 +161,7 @@ enum {
 	 * parent-child relationship (parallel submission, multi-lrc) that
 	 * hit an error while generating requests in the execbuf IOCTL.
 	 * Indicates this request should be skipped as another request in
-	 * submission / relationship encoutered an error.
+	 * submission / relationship encountered an error.
 	 */
 	I915_FENCE_FLAG_SKIP_PARALLEL,
 
@@ -187,7 +187,7 @@ enum {
  * RCU lookup of it that may race against reallocation of the struct
  * from the slab freelist. We intentionally do not zero the structure on
  * allocation so that the lookup can use the dangling pointers (and is
- * cogniscent that those pointers may be wrong). Instead, everything that
+ * cognisant that those pointers may be wrong). Instead, everything that
  * needs to be initialised must be done so explicitly.
  *
  * The requests are reference counted.
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 776f8cc51b2f..61b49007ecd4 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -778,8 +778,8 @@ bool i915_gem_valid_gtt_space(struct i915_vma *vma, unsigned long color)
  * @flags: mask of PIN_* flags to use
  *
  * First we try to allocate some free space that meets the requirements for
- * the VMA. Failiing that, if the flags permit, it will evict an old VMA,
- * preferrably the oldest idle entry to make room for the new VMA.
+ * the VMA. Failing that, if the flags permit, it will evict an old VMA,
+ * preferably the oldest idle entry to make room for the new VMA.
  *
  * Returns:
  * 0 on success, negative error code otherwise.
@@ -877,7 +877,7 @@ i915_vma_insert(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
 		 * objects which need to be tightly packed into the low 32bits.
 		 *
 		 * Note that we assume that GGTT are limited to 4GiB for the
-		 * forseeable future. See also i915_ggtt_offset().
+		 * foreseeable future. See also i915_ggtt_offset().
 		 */
 		if (upper_32_bits(end - 1) &&
 		    vma->page_sizes.sg > I915_GTT_PAGE_SIZE &&
@@ -1001,7 +1001,7 @@ rotate_pages(struct drm_i915_gem_object *obj, unsigned int offset,
 
 		/*
 		 * The DE ignores the PTEs for the padding tiles, the sg entry
-		 * here is just a conenience to indicate how many padding PTEs
+		 * here is just a convenience to indicate how many padding PTEs
 		 * to insert at this spot.
 		 */
 		sg_set_page(sg, NULL, left, 0);
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index f76642886569..387b26400169 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -682,7 +682,7 @@ static void i85x_init_clock_gating(struct drm_i915_private *i915)
 	 * Have FBC ignore 3D activity since we use software
 	 * render tracking, and otherwise a pure 3D workload
 	 * (even if it just renders a single frame and then does
-	 * abosultely nothing) would not allow FBC to recompress
+	 * absolutely nothing) would not allow FBC to recompress
 	 * until a 2D blit occurs.
 	 */
 	intel_uncore_write(&i915->uncore, SCPD0,
diff --git a/drivers/gpu/drm/i915/intel_gvt.c b/drivers/gpu/drm/i915/intel_gvt.c
index a5383a2bc64b..dae9dce7d1b3 100644
--- a/drivers/gpu/drm/i915/intel_gvt.c
+++ b/drivers/gpu/drm/i915/intel_gvt.c
@@ -265,7 +265,7 @@ void intel_gvt_driver_remove(struct drm_i915_private *dev_priv)
 }
 
 /**
- * intel_gvt_resume - GVT resume routine wapper
+ * intel_gvt_resume - GVT resume routine wrapper
  *
  * @dev_priv: drm i915 private *
  *
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index ee1cd2126f97..04076316e139 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -1260,7 +1260,7 @@ static int iterate_bxt_mmio(struct intel_gvt_mmio_table_iter *iter)
 
 /**
  * intel_gvt_iterate_mmio_table - Iterate the GVT MMIO table
- * @iter: the interator
+ * @iter: the iterator
  *
  * This function is called for iterating the GVT MMIO table when i915 is
  * taking the snapshot of the HW and GVT is building MMIO tracking table.
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
index 1a47ecfd3fd8..8d9f4c410546 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.c
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
@@ -375,7 +375,7 @@ void intel_runtime_pm_enable(struct intel_runtime_pm *rpm)
 	 * leave the device suspended skipping the driver's suspend handlers
 	 * if the device was already runtime suspended. This is needed due to
 	 * the difference in our runtime and system suspend sequence and
-	 * becaue the HDA driver may require us to enable the audio power
+	 * because the HDA driver may require us to enable the audio power
 	 * domain during system suspend.
 	 */
 	dev_pm_set_driver_flags(kdev, DPM_FLAG_NO_DIRECT_COMPLETE);
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index e22669d61e95..7428bd8fa67f 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -31,7 +31,7 @@ struct drm_printer;
  * it can be changed with the standard runtime PM files from sysfs.
  *
  * The irqs_disabled variable becomes true exactly after we disable the IRQs and
- * goes back to false exactly before we reenable the IRQs. We use this variable
+ * goes back to false exactly before we re-enable the IRQs. We use this variable
  * to check if someone is trying to enable/disable IRQs while they're supposed
  * to be disabled. This shouldn't happen and we'll print some error messages in
  * case it happens.
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index eed4937c3ff3..04ef628e208b 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2477,7 +2477,7 @@ static int sanity_check_mmio_access(struct intel_uncore *uncore)
 
 	/*
 	 * Sanitycheck that MMIO access to the device is working properly.  If
-	 * the CPU is unable to communcate with a PCI device, BAR reads will
+	 * the CPU is unable to communicate with a PCI device, BAR reads will
 	 * return 0xFFFFFFFF.  Let's make sure the device isn't in this state
 	 * before we start trying to access registers.
 	 *
-- 
2.25.1

