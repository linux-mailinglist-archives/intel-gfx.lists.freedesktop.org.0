Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6826049CE12
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 16:23:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95C8810E94E;
	Wed, 26 Jan 2022 15:22:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC15E10E900;
 Wed, 26 Jan 2022 15:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643210546; x=1674746546;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SejTynlJSjOKBO36cj56rGbbcEZAlBryD85kVp98RdM=;
 b=kskiXCQe3hrJsZ4bm9074gvk/ULiyMmjWHlKQlE/ch+VrI3l+xHkJ6Lk
 w5cFmWDfAMRUKn4Op3b3vRdYUOsOctTjOs+7Hsh8TSNpylQfMHeEpPI4s
 UB8n8JkeNf00QYD60IUAI98ewtz22A8uJR+se9DHYiqOpBLoLHlHpR9mK
 B4UqhhNmPN+l0kKtddU7c4/05HMVoDePm/nL4Y8kv2WE9q09oG1vlbV+R
 BjJ5btKSDim5ncc0FPPlZbBsma/i67BUoRcZeJGpFTryB8ofHcXwJChM9
 jgakv+dDGz3QMPLE/afbrdFSLOFkb9yDhKu0BJDoQ/3PuNDmAPRHUPWzn Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="309885282"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="309885282"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 07:22:26 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="674386318"
Received: from jamesstx-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.247.182])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 07:22:25 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jan 2022 15:21:52 +0000
Message-Id: <20220126152155.3070602-18-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220126152155.3070602-1-matthew.auld@intel.com>
References: <20220126152155.3070602-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/20] drm/i915/uapi: add NEEDS_CPU_ACCESS hint
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If set, force the allocation to be placed in the mappable portion of
LMEM. One big restriction here is that system memory must be given as a
potential placement for the object, that way we can always spill the
object into system memory if we can't make space.

XXX: Still very much WIP and needs IGTs. Including now just for the sake
of having more complete picture.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c | 28 ++++++++++++-------
 include/uapi/drm/i915_drm.h                | 31 +++++++++++++++++++++-
 2 files changed, 49 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index e7456443f163..98d63cb21e94 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -238,6 +238,7 @@ struct create_ext {
 	struct drm_i915_private *i915;
 	struct intel_memory_region *placements[INTEL_REGION_UNKNOWN];
 	unsigned int n_placements;
+	unsigned int placement_mask;
 	unsigned long flags;
 };
 
@@ -334,6 +335,7 @@ static int set_placements(struct drm_i915_gem_create_ext_memory_regions *args,
 	for (i = 0; i < args->num_regions; i++)
 		ext_data->placements[i] = placements[i];
 
+	ext_data->placement_mask = mask;
 	return 0;
 
 out_dump:
@@ -408,7 +410,7 @@ i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
 	struct drm_i915_gem_object *obj;
 	int ret;
 
-	if (args->flags)
+	if (args->flags & ~I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS)
 		return -EINVAL;
 
 	ret = i915_user_extensions(u64_to_user_ptr(args->extensions),
@@ -424,14 +426,22 @@ i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
 		ext_data.n_placements = 1;
 	}
 
-	/*
-	 * TODO: add a userspace hint to force CPU_ACCESS for the object, which
-	 * can override this.
-	 */
-	if (!IS_DG1(i915) && (ext_data.n_placements > 1 ||
-			      ext_data.placements[0]->type !=
-			      INTEL_MEMORY_SYSTEM))
-		ext_data.flags |= I915_BO_ALLOC_TOPDOWN;
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
+		if (!IS_DG1(i915) && (ext_data.n_placements > 1 ||
+				      ext_data.placements[0]->type !=
+				      INTEL_MEMORY_SYSTEM))
+			ext_data.flags |= I915_BO_ALLOC_TOPDOWN;
+	}
 
 	obj = __i915_gem_object_create_user_ext(i915, args->size,
 						ext_data.placements,
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 914ebd9290e5..ecfa805549a7 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -3157,7 +3157,36 @@ struct drm_i915_gem_create_ext {
 	 * Object handles are nonzero.
 	 */
 	__u32 handle;
-	/** @flags: MBZ */
+	/**
+	 * @flags: Optional flags.
+	 *
+	 * Supported values:
+	 *
+	 * I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS - Signal to the kernel that
+	 * the object will need to be accessed via the CPU.
+	 *
+	 * Only valid when placing objects in I915_MEMORY_CLASS_DEVICE, and
+	 * only strictly required on platforms where only some of the device
+	 * memory is directly visible or mappable through the CPU, like on DG2+.
+	 *
+	 * One of the placements MUST also be I915_MEMORY_CLASS_SYSTEM, to
+	 * ensure we can always spill the allocation to system memory, if we
+	 * can't place the object in the mappable part of
+	 * I915_MEMORY_CLASS_DEVICE.
+	 *
+	 * Note that buffers that need to be captured with EXEC_OBJECT_CAPTURE,
+	 * will need to enable this hint, if the object can also be placed in
+	 * I915_MEMORY_CLASS_DEVICE, starting from DG2+. The execbuf call will
+	 * throw an error otherwise. This also means that such objects will need
+	 * I915_MEMORY_CLASS_SYSTEM set as a possible placement.
+	 *
+	 * Without this hint, the kernel will assume that non-mappable
+	 * I915_MEMORY_CLASS_DEVICE is preferred for this object. Note that the
+	 * kernel can still migrate the object to the mappable part, as a last
+	 * resort, if userspace ever CPU faults this object, but this might be
+	 * expensive, and so ideally should be avoided.
+	 */
+#define I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS (1<<0)
 	__u32 flags;
 	/**
 	 * @extensions: The chain of extensions to apply to this object.
-- 
2.34.1

