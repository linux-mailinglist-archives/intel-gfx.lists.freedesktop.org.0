Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A82CE56078A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 19:44:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9833910E8D1;
	Wed, 29 Jun 2022 17:44:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51D9710E232
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 17:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656524651; x=1688060651;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/crxhMm65GM2yPHAHVlRpYXXgkdZgJIpcygCkVhsBUQ=;
 b=VT95MzNbpPss3Ig6oivhsUsWprFdkac4iuLgIgq5wWJtu51qSgDpDRyz
 ZCwpUTK4a5CWGtsJAiAUsSzP5wyBBFSUwfkWjd/2C+pDO1J1GDkC8NFd/
 k+FMGCTWN0/KHKn4cJPa0Ge72rdm3dsbAjqMfZG6EAr49/ZMJYPqbJGRQ
 +rEyOxBFOB7hff8a6Zb4o51FdXdho10rggGzLWjjqFFKXZiViEr5ftkEu
 V+x6dhZ3nLewUz2VMDx7YULBJVAk4TlAHZeQsVy/nq8kd7kYHRYruFTRH
 UUB7JNPhOf6ptmC/+j3aB3RURfnNRWMvjS2zZ57OhSKiNP4WWzDUqLZjG Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="279643934"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="279643934"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 10:44:11 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="595331051"
Received: from nwalsh-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.202.136])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 10:44:10 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jun 2022 18:43:43 +0100
Message-Id: <20220629174350.384910-6-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220629174350.384910-1-matthew.auld@intel.com>
References: <20220629174350.384910-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v4 06/13] drm/i915/uapi: add NEEDS_CPU_ACCESS hint
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

If set, force the allocation to be placed in the mappable portion of
I915_MEMORY_CLASS_DEVICE. One big restriction here is that system memory
(i.e I915_MEMORY_CLASS_SYSTEM) must be given as a potential placement for the
object, that way we can always spill the object into system memory if we
can't make space.

Testcase: igt@gem-create@create-ext-cpu-access-sanity-check
Testcase: igt@gem-create@create-ext-cpu-access-big
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Jordan Justen <jordan.l.justen@intel.com>
Cc: Kenneth Graunke <kenneth@whitecape.org>
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c | 26 ++++++---
 include/uapi/drm/i915_drm.h                | 61 +++++++++++++++++++---
 2 files changed, 71 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index d094cae0ddf1..33673fe7ee0a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -241,6 +241,7 @@ struct create_ext {
 	struct drm_i915_private *i915;
 	struct intel_memory_region *placements[INTEL_REGION_UNKNOWN];
 	unsigned int n_placements;
+	unsigned int placement_mask;
 	unsigned long flags;
 };
 
@@ -337,6 +338,7 @@ static int set_placements(struct drm_i915_gem_create_ext_memory_regions *args,
 	for (i = 0; i < args->num_regions; i++)
 		ext_data->placements[i] = placements[i];
 
+	ext_data->placement_mask = mask;
 	return 0;
 
 out_dump:
@@ -411,7 +413,7 @@ i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_object *obj;
 	int ret;
 
-	if (args->flags)
+	if (args->flags & ~I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS)
 		return -EINVAL;
 
 	ret = i915_user_extensions(u64_to_user_ptr(args->extensions),
@@ -427,13 +429,21 @@ i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
 		ext_data.n_placements = 1;
 	}
 
-	/*
-	 * TODO: add a userspace hint to force CPU_ACCESS for the object, which
-	 * can override this.
-	 */
-	if (ext_data.n_placements > 1 ||
-	    ext_data.placements[0]->type != INTEL_MEMORY_SYSTEM)
-		ext_data.flags |= I915_BO_ALLOC_GPU_ONLY;
+	if (args->flags & I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS) {
+		if (ext_data.n_placements == 1)
+			return -EINVAL;
+
+		/*
+		 * We always need to be able to spill to system memory, if we
+		 * can't place in the mappable part of LMEM.
+		 */
+		if (!(ext_data.placement_mask & BIT(INTEL_REGION_SMEM)))
+			return -EINVAL;
+	} else {
+		if (ext_data.n_placements > 1 ||
+		    ext_data.placements[0]->type != INTEL_MEMORY_SYSTEM)
+			ext_data.flags |= I915_BO_ALLOC_GPU_ONLY;
+	}
 
 	obj = __i915_gem_object_create_user_ext(i915, args->size,
 						ext_data.placements,
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index e4847436bab8..3e78a00220ea 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -3366,11 +3366,11 @@ struct drm_i915_query_memory_regions {
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
@@ -3378,7 +3378,6 @@ struct drm_i915_gem_create_ext {
 	 *
 	 * The (page-aligned) allocated size for the object will be returned.
 	 *
-	 *
 	 * DG2 64K min page size implications:
 	 *
 	 * On discrete platforms, starting from DG2, we have to contend with GTT
@@ -3390,7 +3389,9 @@ struct drm_i915_gem_create_ext {
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
@@ -3414,14 +3415,58 @@ struct drm_i915_gem_create_ext {
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
-- 
2.36.1

