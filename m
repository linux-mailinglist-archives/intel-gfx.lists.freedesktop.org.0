Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 665795F346B
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 19:25:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDB3010E444;
	Mon,  3 Oct 2022 17:25:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07ADF10E444;
 Mon,  3 Oct 2022 17:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664817939; x=1696353939;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YjJKPO6l1giTJLE2BCEVJifRtUpFQ5+iW3rAd7x0MBQ=;
 b=aIk0D9gt2roR5vFb8UuPL/4arFpavZOXBDQahypWSaugO++I/HhKePsE
 gnql1+orcwDmlgVNH5WxBB06BEYP5LsJ32YP+GIDaxPs2H33NNJTVT+KD
 k7i+EJ9rSKFKzcyEmGAlKD5oHiBq/351l1tWA4TGK5eFGQ0p4Qd/2LA9L
 5tm8PFUlKKHpg1t0GwYImGXihztsEdGrFVdo8jmZLJzxTGdZPS2jn+v5N
 EKplJkzDmp+d1wRvpxP+GSiHSbY2g2YGF3zY2LWDAH1mzV/+pVwVwt/sS
 2w3epi9GhuCAtcmP5Jx+ubKh2b6DkYWNGNVOKf8C+3IN6i6MDCyjhyOAD w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="282413381"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="282413381"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:25:23 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="686202355"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="686202355"
Received: from adejeanb-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.6.198])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 10:25:22 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon,  3 Oct 2022 18:24:53 +0100
Message-Id: <20221003172456.97522-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/4] i915_drm.h sync
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Get the small-bar related stuff at: 525e93f6317a ("drm/i915/uapi: add
NEEDS_CPU_ACCESS hint"), and drop the local related bits.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 include/drm-uapi/i915_drm.h    | 182 +++++++++++++++++++++++++--------
 lib/i915/i915_drm_local.h      |  21 ----
 lib/i915/intel_memory_region.c |   3 +-
 tests/i915/gem_create.c        |   5 -
 tests/i915/gem_exec_capture.c  |   5 -
 tests/i915/i915_query.c        |   6 --
 6 files changed, 141 insertions(+), 81 deletions(-)

diff --git a/include/drm-uapi/i915_drm.h b/include/drm-uapi/i915_drm.h
index b4efc96c..ae9558b3 100644
--- a/include/drm-uapi/i915_drm.h
+++ b/include/drm-uapi/i915_drm.h
@@ -3207,36 +3207,6 @@ struct drm_i915_gem_memory_class_instance {
  * struct drm_i915_memory_region_info - Describes one region as known to the
  * driver.
  *
- * Note that we reserve some stuff here for potential future work. As an example
- * we might want expose the capabilities for a given region, which could include
- * things like if the region is CPU mappable/accessible, what are the supported
- * mapping types etc.
- *
- * Note that to extend struct drm_i915_memory_region_info and struct
- * drm_i915_query_memory_regions in the future the plan is to do the following:
- *
- * .. code-block:: C
- *
- *	struct drm_i915_memory_region_info {
- *		struct drm_i915_gem_memory_class_instance region;
- *		union {
- *			__u32 rsvd0;
- *			__u32 new_thing1;
- *		};
- *		...
- *		union {
- *			__u64 rsvd1[8];
- *			struct {
- *				__u64 new_thing2;
- *				__u64 new_thing3;
- *				...
- *			};
- *		};
- *	};
- *
- * With this things should remain source compatible between versions for
- * userspace, even as we add new fields.
- *
  * Note this is using both struct drm_i915_query_item and struct drm_i915_query.
  * For this new query we are adding the new query id DRM_I915_QUERY_MEMORY_REGIONS
  * at &drm_i915_query_item.query_id.
@@ -3248,14 +3218,81 @@ struct drm_i915_memory_region_info {
 	/** @rsvd0: MBZ */
 	__u32 rsvd0;
 
-	/** @probed_size: Memory probed by the driver (-1 = unknown) */
+	/**
+	 * @probed_size: Memory probed by the driver
+	 *
+	 * Note that it should not be possible to ever encounter a zero value
+	 * here, also note that no current region type will ever return -1 here.
+	 * Although for future region types, this might be a possibility. The
+	 * same applies to the other size fields.
+	 */
 	__u64 probed_size;
 
-	/** @unallocated_size: Estimate of memory remaining (-1 = unknown) */
+	/**
+	 * @unallocated_size: Estimate of memory remaining
+	 *
+	 * Requires CAP_PERFMON or CAP_SYS_ADMIN to get reliable accounting.
+	 * Without this (or if this is an older kernel) the value here will
+	 * always equal the @probed_size. Note this is only currently tracked
+	 * for I915_MEMORY_CLASS_DEVICE regions (for other types the value here
+	 * will always equal the @probed_size).
+	 */
 	__u64 unallocated_size;
 
-	/** @rsvd1: MBZ */
-	__u64 rsvd1[8];
+	union {
+		/** @rsvd1: MBZ */
+		__u64 rsvd1[8];
+		struct {
+			/**
+			 * @probed_cpu_visible_size: Memory probed by the driver
+			 * that is CPU accessible.
+			 *
+			 * This will be always be <= @probed_size, and the
+			 * remainder (if there is any) will not be CPU
+			 * accessible.
+			 *
+			 * On systems without small BAR, the @probed_size will
+			 * always equal the @probed_cpu_visible_size, since all
+			 * of it will be CPU accessible.
+			 *
+			 * Note this is only tracked for
+			 * I915_MEMORY_CLASS_DEVICE regions (for other types the
+			 * value here will always equal the @probed_size).
+			 *
+			 * Note that if the value returned here is zero, then
+			 * this must be an old kernel which lacks the relevant
+			 * small-bar uAPI support (including
+			 * I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS), but on
+			 * such systems we should never actually end up with a
+			 * small BAR configuration, assuming we are able to load
+			 * the kernel module. Hence it should be safe to treat
+			 * this the same as when @probed_cpu_visible_size ==
+			 * @probed_size.
+			 */
+			__u64 probed_cpu_visible_size;
+
+			/**
+			 * @unallocated_cpu_visible_size: Estimate of CPU
+			 * visible memory remaining.
+			 *
+			 * Note this is only tracked for
+			 * I915_MEMORY_CLASS_DEVICE regions (for other types the
+			 * value here will always equal the
+			 * @probed_cpu_visible_size).
+			 *
+			 * Requires CAP_PERFMON or CAP_SYS_ADMIN to get reliable
+			 * accounting.  Without this the value here will always
+			 * equal the @probed_cpu_visible_size. Note this is only
+			 * currently tracked for I915_MEMORY_CLASS_DEVICE
+			 * regions (for other types the value here will also
+			 * always equal the @probed_cpu_visible_size).
+			 *
+			 * If this is an older kernel the value here will be
+			 * zero, see also @probed_cpu_visible_size.
+			 */
+			__u64 unallocated_cpu_visible_size;
+		};
+	};
 };
 
 /**
@@ -3329,11 +3366,11 @@ struct drm_i915_query_memory_regions {
  * struct drm_i915_gem_create_ext - Existing gem_create behaviour, with added
  * extension support using struct i915_user_extension.
  *
- * Note that in the future we want to have our buffer flags here, at least for
- * the stuff that is immutable. Previously we would have two ioctls, one to
- * create the object with gem_create, and another to apply various parameters,
- * however this creates some ambiguity for the params which are considered
- * immutable. Also in general we're phasing out the various SET/GET ioctls.
+ * Note that new buffer flags should be added here, at least for the stuff that
+ * is immutable. Previously we would have two ioctls, one to create the object
+ * with gem_create, and another to apply various parameters, however this
+ * creates some ambiguity for the params which are considered immutable. Also in
+ * general we're phasing out the various SET/GET ioctls.
  */
 struct drm_i915_gem_create_ext {
 	/**
@@ -3341,7 +3378,6 @@ struct drm_i915_gem_create_ext {
 	 *
 	 * The (page-aligned) allocated size for the object will be returned.
 	 *
-	 *
 	 * DG2 64K min page size implications:
 	 *
 	 * On discrete platforms, starting from DG2, we have to contend with GTT
@@ -3353,7 +3389,9 @@ struct drm_i915_gem_create_ext {
 	 *
 	 * Note that the returned size here will always reflect any required
 	 * rounding up done by the kernel, i.e 4K will now become 64K on devices
-	 * such as DG2.
+	 * such as DG2. The kernel will always select the largest minimum
+	 * page-size for the set of possible placements as the value to use when
+	 * rounding up the @size.
 	 *
 	 * Special DG2 GTT address alignment requirement:
 	 *
@@ -3377,14 +3415,58 @@ struct drm_i915_gem_create_ext {
 	 * is deemed to be a good compromise.
 	 */
 	__u64 size;
+
 	/**
 	 * @handle: Returned handle for the object.
 	 *
 	 * Object handles are nonzero.
 	 */
 	__u32 handle;
-	/** @flags: MBZ */
+
+	/**
+	 * @flags: Optional flags.
+	 *
+	 * Supported values:
+	 *
+	 * I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS - Signal to the kernel that
+	 * the object will need to be accessed via the CPU.
+	 *
+	 * Only valid when placing objects in I915_MEMORY_CLASS_DEVICE, and only
+	 * strictly required on configurations where some subset of the device
+	 * memory is directly visible/mappable through the CPU (which we also
+	 * call small BAR), like on some DG2+ systems. Note that this is quite
+	 * undesirable, but due to various factors like the client CPU, BIOS etc
+	 * it's something we can expect to see in the wild. See
+	 * &drm_i915_memory_region_info.probed_cpu_visible_size for how to
+	 * determine if this system applies.
+	 *
+	 * Note that one of the placements MUST be I915_MEMORY_CLASS_SYSTEM, to
+	 * ensure the kernel can always spill the allocation to system memory,
+	 * if the object can't be allocated in the mappable part of
+	 * I915_MEMORY_CLASS_DEVICE.
+	 *
+	 * Also note that since the kernel only supports flat-CCS on objects
+	 * that can *only* be placed in I915_MEMORY_CLASS_DEVICE, we therefore
+	 * don't support I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS together with
+	 * flat-CCS.
+	 *
+	 * Without this hint, the kernel will assume that non-mappable
+	 * I915_MEMORY_CLASS_DEVICE is preferred for this object. Note that the
+	 * kernel can still migrate the object to the mappable part, as a last
+	 * resort, if userspace ever CPU faults this object, but this might be
+	 * expensive, and so ideally should be avoided.
+	 *
+	 * On older kernels which lack the relevant small-bar uAPI support (see
+	 * also &drm_i915_memory_region_info.probed_cpu_visible_size),
+	 * usage of the flag will result in an error, but it should NEVER be
+	 * possible to end up with a small BAR configuration, assuming we can
+	 * also successfully load the i915 kernel module. In such cases the
+	 * entire I915_MEMORY_CLASS_DEVICE region will be CPU accessible, and as
+	 * such there are zero restrictions on where the object can be placed.
+	 */
+#define I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS (1 << 0)
 	__u32 flags;
+
 	/**
 	 * @extensions: The chain of extensions to apply to this object.
 	 *
@@ -3443,6 +3525,22 @@ struct drm_i915_gem_create_ext {
  * At which point we get the object handle in &drm_i915_gem_create_ext.handle,
  * along with the final object size in &drm_i915_gem_create_ext.size, which
  * should account for any rounding up, if required.
+ *
+ * Note that userspace has no means of knowing the current backing region
+ * for objects where @num_regions is larger than one. The kernel will only
+ * ensure that the priority order of the @regions array is honoured, either
+ * when initially placing the object, or when moving memory around due to
+ * memory pressure
+ *
+ * On Flat-CCS capable HW, compression is supported for the objects residing
+ * in I915_MEMORY_CLASS_DEVICE. When such objects (compressed) have other
+ * memory class in @regions and migrated (by i915, due to memory
+ * constraints) to the non I915_MEMORY_CLASS_DEVICE region, then i915 needs to
+ * decompress the content. But i915 doesn't have the required information to
+ * decompress the userspace compressed objects.
+ *
+ * So i915 supports Flat-CCS, on the objects which can reside only on
+ * I915_MEMORY_CLASS_DEVICE regions.
  */
 struct drm_i915_gem_create_ext_memory_regions {
 	/** @base: Extension link. See struct i915_user_extension. */
diff --git a/lib/i915/i915_drm_local.h b/lib/i915/i915_drm_local.h
index ac35abf6..9a2273c4 100644
--- a/lib/i915/i915_drm_local.h
+++ b/lib/i915/i915_drm_local.h
@@ -23,27 +23,6 @@ extern "C" {
 
 #define DRM_I915_QUERY_GEOMETRY_SUBSLICES      6
 
-/*
- * Signal to the kernel that the object will need to be accessed via
- * the CPU.
- *
- * Only valid when placing objects in I915_MEMORY_CLASS_DEVICE, and only
- * strictly required on platforms where only some of the device memory
- * is directly visible or mappable through the CPU, like on DG2+.
- *
- * One of the placements MUST also be I915_MEMORY_CLASS_SYSTEM, to
- * ensure we can always spill the allocation to system memory, if we
- * can't place the object in the mappable part of
- * I915_MEMORY_CLASS_DEVICE.
- *
- * Without this hint, the kernel will assume that non-mappable
- * I915_MEMORY_CLASS_DEVICE is preferred for this object. Note that the
- * kernel can still migrate the object to the mappable part, as a last
- * resort, if userspace ever CPU faults this object, but this might be
- * expensive, and so ideally should be avoided.
- */
-#define I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS (1 << 0)
-
 #if defined(__cplusplus)
 }
 #endif
diff --git a/lib/i915/intel_memory_region.c b/lib/i915/intel_memory_region.c
index d80cb3a0..075ba0ce 100644
--- a/lib/i915/intel_memory_region.c
+++ b/lib/i915/intel_memory_region.c
@@ -942,8 +942,7 @@ struct gem_memory_region *__gem_get_memory_regions(int i915)
 
 		r->ci = info->regions[i].region;
 		r->size = info->regions[i].probed_size;
-		/* XXX: replace with probed_cpu_visible_size */
-		r->cpu_size = info->regions[i].rsvd1[0];
+		r->cpu_size = info->regions[i].probed_cpu_visible_size;
 		if (r->size == -1ull)
 			r->size = igt_get_avail_ram_mb() << 20;
 
diff --git a/tests/i915/gem_create.c b/tests/i915/gem_create.c
index c39390f3..becdc715 100644
--- a/tests/i915/gem_create.c
+++ b/tests/i915/gem_create.c
@@ -724,11 +724,6 @@ static void trap_sigbus(uint32_t *ptr)
 	signal(SIGBUS, old_sigbus);
 }
 
-/**
- * XXX: Remove this once we can safely sync the uapi header with the kernel.
- * Should be source compatible either way though.
- */
-#define probed_cpu_visible_size rsvd1[0]
 static void create_ext_cpu_access_big(int fd)
 {
 	struct drm_i915_query_memory_regions *regions;
diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index 6950b2d2..2db58266 100644
--- a/tests/i915/gem_exec_capture.c
+++ b/tests/i915/gem_exec_capture.c
@@ -578,11 +578,6 @@ __captureN(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	return offsets;
 }
 
-/*
- * FIXME: remove once the kernel changes have landed and everything has settled.
- * The change here is non-backwards compatible, and we don't want to upset CI.
-*/
-#define probed_cpu_visible_size rsvd1[0]
 static bool kernel_supports_probed_size(int fd)
 {
 	struct drm_i915_query_memory_regions *regions;
diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
index 8befd48b..2744421c 100644
--- a/tests/i915/i915_query.c
+++ b/tests/i915/i915_query.c
@@ -516,12 +516,6 @@ static bool query_regions_supported(int fd)
 	return __i915_query_items(fd, &item, 1) == 0 && item.length > 0;
 }
 
-/**
- * XXX: Remove these once we can safely sync the uapi header with the kernel.
- * Should be source compatible either way though.
- */
-#define probed_cpu_visible_size rsvd1[0]
-#define unallocated_cpu_visible_size rsvd1[1]
 static bool query_regions_unallocated_supported(int fd)
 {
 	struct drm_i915_query_memory_regions *regions;
-- 
2.37.3

