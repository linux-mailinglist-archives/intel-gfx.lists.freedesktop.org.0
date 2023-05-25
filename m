Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 783AC7110FF
	for <lists+intel-gfx@lfdr.de>; Thu, 25 May 2023 18:29:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF81D10E48E;
	Thu, 25 May 2023 16:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE6B510E48E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 May 2023 16:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685032191; x=1716568191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pzb5A4ZEPA1FmmA8iO31a8EgCV7dqHJx3TgiyeAYFjo=;
 b=l2eKEcAB0fZa/aJH0/sLoXfuzkHcwEUzFcSIe3knsan0nA3eDkFHfcGd
 7UhnqSlu8pl4tReDsjV3S7qNkdotshUQ3PakjVbSA3RYcpUgElnJEiwbW
 QHzBCyJTzmaPaMYK77IOMwQ6beSc3uaMFYNR8E0gIwhHADKN9UVmUp46u
 iqPRuTD6ClQxBNgTRlRbJWIS7lFoZ1DyRRKnKx+ri943tnKlxdRrJLbSo
 XIDLCWJghqnjBZrAwXD9zZmaJKtopiuFWpLWwgMCDO0u8xlNCjMCneQTn
 2ZIJJTrNMdo1I5aAtiPODbDPFM/ZgtQundi6G40mqBEuq4U61Tu1GTCnx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="419685510"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="419685510"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 09:26:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="817170620"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="817170620"
Received: from mtpaasto-mobl4.ger.corp.intel.com (HELO intel.com)
 ([10.251.208.188])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 09:26:02 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>
Date: Thu, 25 May 2023 18:25:40 +0200
Message-Id: <20230525162540.1853246-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230525162540.1853246-1-andi.shyti@linux.intel.com>
References: <20230525162540.1853246-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v12 1/1] drm/i915: Allow user to set cache at BO
 creation
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

From: Fei Yang <fei.yang@intel.com>

To comply with the design that buffer objects shall have immutable
cache setting through out their life cycle, {set, get}_caching ioctl's
are no longer supported from MTL onward. With that change caching
policy can only be set at object creation time. The current code
applies a default (platform dependent) cache setting for all objects.
However this is not optimal for performance tuning. The patch extends
the existing gem_create uAPI to let user set PAT index for the object
at creation time.
The new extension is platform independent, so UMD's can switch to using
this extension for older platforms as well, while {set, get}_caching are
still supported on these legacy paltforms for compatibility reason.

BSpec: 45101

Test igt@gem_create@create_ext_set_pat posted at
https://patchwork.freedesktop.org/series/118314/

Tested with https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/22878

Signed-off-by: Fei Yang <fei.yang@intel.com>
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Acked-by: Jordan Justen <jordan.l.justen@intel.com>
Tested-by: Jordan Justen <jordan.l.justen@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_create.c | 36 +++++++++++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_object.c |  6 ++++
 include/uapi/drm/i915_drm.h                | 41 ++++++++++++++++++++++
 3 files changed, 83 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
index bfe1dbda4cb75..644a936248ad5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
@@ -245,6 +245,7 @@ struct create_ext {
 	unsigned int n_placements;
 	unsigned int placement_mask;
 	unsigned long flags;
+	unsigned int pat_index;
 };
 
 static void repr_placements(char *buf, size_t size,
@@ -394,11 +395,39 @@ static int ext_set_protected(struct i915_user_extension __user *base, void *data
 	return 0;
 }
 
+static int ext_set_pat(struct i915_user_extension __user *base, void *data)
+{
+	struct create_ext *ext_data = data;
+	struct drm_i915_private *i915 = ext_data->i915;
+	struct drm_i915_gem_create_ext_set_pat ext;
+	unsigned int max_pat_index;
+
+	BUILD_BUG_ON(sizeof(struct drm_i915_gem_create_ext_set_pat) !=
+		     offsetofend(struct drm_i915_gem_create_ext_set_pat, rsvd));
+
+	if (copy_from_user(&ext, base, sizeof(ext)))
+		return -EFAULT;
+
+	max_pat_index = INTEL_INFO(i915)->max_pat_index;
+
+	if (ext.pat_index > max_pat_index) {
+		drm_dbg(&i915->drm, "PAT index is invalid: %u\n",
+			ext.pat_index);
+		return -EINVAL;
+	}
+
+	ext_data->pat_index = ext.pat_index;
+
+	return 0;
+}
+
 static const i915_user_extension_fn create_extensions[] = {
 	[I915_GEM_CREATE_EXT_MEMORY_REGIONS] = ext_set_placements,
 	[I915_GEM_CREATE_EXT_PROTECTED_CONTENT] = ext_set_protected,
+	[I915_GEM_CREATE_EXT_SET_PAT] = ext_set_pat,
 };
 
+#define PAT_INDEX_NOT_SET	0xffff
 /**
  * i915_gem_create_ext_ioctl - Creates a new mm object and returns a handle to it.
  * @dev: drm device pointer
@@ -418,6 +447,7 @@ i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
 	if (args->flags & ~I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS)
 		return -EINVAL;
 
+	ext_data.pat_index = PAT_INDEX_NOT_SET;
 	ret = i915_user_extensions(u64_to_user_ptr(args->extensions),
 				   create_extensions,
 				   ARRAY_SIZE(create_extensions),
@@ -454,5 +484,11 @@ i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
 	if (IS_ERR(obj))
 		return PTR_ERR(obj);
 
+	if (ext_data.pat_index != PAT_INDEX_NOT_SET) {
+		i915_gem_object_set_pat_index(obj, ext_data.pat_index);
+		/* Mark pat_index is set by UMD */
+		obj->pat_set_by_user = true;
+	}
+
 	return i915_gem_publish(obj, file, &args->size, &args->handle);
 }
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 46a19b099ec88..97ac6fb37958f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -208,6 +208,12 @@ bool i915_gem_object_can_bypass_llc(struct drm_i915_gem_object *obj)
 	if (!(obj->flags & I915_BO_ALLOC_USER))
 		return false;
 
+	/*
+	 * Always flush cache for UMD objects at creation time.
+	 */
+	if (obj->pat_set_by_user)
+		return true;
+
 	/*
 	 * EHL and JSL add the 'Bypass LLC' MOCS entry, which should make it
 	 * possible for userspace to bypass the GTT caching bits set by the
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index f31dfacde6014..4083a23e0614f 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -3679,9 +3679,13 @@ struct drm_i915_gem_create_ext {
 	 *
 	 * For I915_GEM_CREATE_EXT_PROTECTED_CONTENT usage see
 	 * struct drm_i915_gem_create_ext_protected_content.
+	 *
+	 * For I915_GEM_CREATE_EXT_SET_PAT usage see
+	 * struct drm_i915_gem_create_ext_set_pat.
 	 */
 #define I915_GEM_CREATE_EXT_MEMORY_REGIONS 0
 #define I915_GEM_CREATE_EXT_PROTECTED_CONTENT 1
+#define I915_GEM_CREATE_EXT_SET_PAT 2
 	__u64 extensions;
 };
 
@@ -3796,6 +3800,43 @@ struct drm_i915_gem_create_ext_protected_content {
 	__u32 flags;
 };
 
+/**
+ * struct drm_i915_gem_create_ext_set_pat - The
+ * I915_GEM_CREATE_EXT_SET_PAT extension.
+ *
+ * If this extension is provided, the specified caching policy (PAT index) is
+ * applied to the buffer object.
+ *
+ * Below is an example on how to create an object with specific caching policy:
+ *
+ * .. code-block:: C
+ *
+ *      struct drm_i915_gem_create_ext_set_pat set_pat_ext = {
+ *              .base = { .name = I915_GEM_CREATE_EXT_SET_PAT },
+ *              .pat_index = 0,
+ *      };
+ *      struct drm_i915_gem_create_ext create_ext = {
+ *              .size = PAGE_SIZE,
+ *              .extensions = (uintptr_t)&set_pat_ext,
+ *      };
+ *
+ *      int err = ioctl(fd, DRM_IOCTL_I915_GEM_CREATE_EXT, &create_ext);
+ *      if (err) ...
+ */
+struct drm_i915_gem_create_ext_set_pat {
+	/** @base: Extension link. See struct i915_user_extension. */
+	struct i915_user_extension base;
+	/**
+	 * @pat_index: PAT index to be set
+	 * PAT index is a bit field in Page Table Entry to control caching
+	 * behaviors for GPU accesses. The definition of PAT index is
+	 * platform dependent and can be found in hardware specifications,
+	 */
+	__u32 pat_index;
+	/** @rsvd: reserved for future use */
+	__u32 rsvd;
+};
+
 /* ID of the protected content session managed by i915 when PXP is active */
 #define I915_PROTECTED_CONTENT_DEFAULT_SESSION 0xf
 
-- 
2.40.1

