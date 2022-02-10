Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 477324B0D61
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 13:17:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C23410E84E;
	Thu, 10 Feb 2022 12:16:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 784F610E857;
 Thu, 10 Feb 2022 12:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644495414; x=1676031414;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YiF4zueZ8KsbNIcxq+w8XyH6uq5rC/6tVu5ZsYD8CN4=;
 b=VkLprGlrAE1MqKBIzS76I4CVHEJ1YuZt4xIDw4RaI/Xh6bPMFwtYJ9Uy
 2jicyfYrP7+YRRYEPEXGmtf8cVnBEAfvYrlghIrICpnKazD0eq+xTfLbA
 lyf11vF4cxFHvp1kPZFFlU4dzgGilgOG38IAEhtZty1Vcw1lM53gkHTAA
 PXCuO/ioxGP/e+R49SvdP7YOgP6YM0jJ3kSr596s6n/M4xAM0fWX6PfjI
 OQiP8dDdVbf0tYk9Y5b4yktypvFYAZQlWn0VGKJ9EUaYyzyPw0EO/cpH/
 zWpgewiLtAoQU2obE5HIutAnZNo4ibCxWE40lrDT07dzHry4XbHrDDdvW Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10253"; a="247060985"
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="247060985"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 04:16:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,358,1635231600"; d="scan'208";a="485664994"
Received: from paulbarr-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.11.226])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 04:16:53 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 12:13:11 +0000
Message-Id: <20220210121313.701004-14-matthew.auld@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220210121313.701004-1-matthew.auld@intel.com>
References: <20220210121313.701004-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/15] drm/i915/uapi: add NEEDS_CPU_ACCESS
 hint
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
index cc9ddb943f96..2737977f81a4 100644
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
+		if (!IS_DG1(i915) && (ext_data.n_placements > 1 ||
+				      ext_data.placements[0]->type !=
+				      INTEL_MEMORY_SYSTEM))
+			ext_data.flags |= I915_BO_ALLOC_GPU_ONLY;
+	}
 
 	obj = __i915_gem_object_create_user_ext(i915, args->size,
 						ext_data.placements,
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 914ebd9290e5..925685bd261e 100644
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
+#define I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS (1 << 0)
 	__u32 flags;
 	/**
 	 * @extensions: The chain of extensions to apply to this object.
-- 
2.34.1

