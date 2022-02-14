Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7024B5195
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 14:25:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8627310E2DC;
	Mon, 14 Feb 2022 13:24:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4717010E2DC
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 13:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644845098; x=1676381098;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Zlz0M2dzWm3wTCJI3jsLWERBQb4eg20LswMhGG1LoXY=;
 b=Z0pxQBPp02sAb98blPuM5+QODmykpJ+9nSM5qHLeHbNP3CLWvUy6+EsW
 kcUWB8ZD6Kmda9df7E6fawjyJDhNEVoNlMyL+jAWu17sIMHSvKPHkmk6R
 rCAzf+HlhJOf5xaHdkSZ8t1nv0QKs3o2fGE/qDmFh5Lid7qDYczDMj2L/
 e5J6+hZcXkwLFsBvlzlvwmjnRu+Qdb+r6mXVnYhCqOjSlNdGJ/Y0tGHTc
 DChoAQAdHPoeNmENeq4/GT5hZzYNiOkSv3ntbljjhdhZugGQ6M5P9LDEY
 yxgK2JiPCzKvIgaKZbhd9bN36qLFJGW6S68s6+/HWaxW/2khkjmiZhDnD w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="230051483"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="230051483"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 05:24:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="543569971"
Received: from unknown (HELO localhost) ([10.252.13.38])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 05:24:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 15:24:52 +0200
Message-Id: <20220214132452.1854143-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: move
 i915_gem_object_needs_bit17_swizzle() to intel_ggtt_fencing.[ch]
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move i915_gem_object_needs_bit17_swizzle() next to the other
bit_17_swizzle functions. Also un-inline while at it; does not seem like
this is a function needed in hot paths.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 8 ++++++++
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h | 1 +
 drivers/gpu/drm/i915/i915_drv.h              | 9 ---------
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index ee4049ee1fc9..55d525c562df 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -755,6 +755,14 @@ static void swizzle_page(struct page *page)
 	kunmap(page);
 }
 
+bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj)
+{
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+
+	return to_gt(i915)->ggtt->bit_6_swizzle_x == I915_BIT_6_SWIZZLE_9_10_17 &&
+		i915_gem_object_is_tiled(obj);
+}
+
 /**
  * i915_gem_object_do_bit_17_swizzle - fixup bit 17 swizzling
  * @obj: i915 GEM buffer object
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
index 25340be5ecf0..fa0734fd4749 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
@@ -46,6 +46,7 @@ void i915_unreserve_fence(struct i915_fence_reg *fence);
 
 void intel_ggtt_restore_fences(struct i915_ggtt *ggtt);
 
+bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj);
 void i915_gem_object_do_bit_17_swizzle(struct drm_i915_gem_object *obj,
 				       struct sg_table *pages);
 void i915_gem_object_save_bit_17_swizzle(struct drm_i915_gem_object *obj,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 418091484e02..395c53d4955e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1495,15 +1495,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv);
 
 int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
 
-/* i915_gem_tiling.c */
-static inline bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj)
-{
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
-
-	return to_gt(i915)->ggtt->bit_6_swizzle_x == I915_BIT_6_SWIZZLE_9_10_17 &&
-		i915_gem_object_is_tiled(obj);
-}
-
 /* intel_device_info.c */
 static inline struct intel_device_info *
 mkwrite_device_info(struct drm_i915_private *dev_priv)
-- 
2.30.2

