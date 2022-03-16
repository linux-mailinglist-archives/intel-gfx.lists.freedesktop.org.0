Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A7F4DADBF
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 10:50:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEF2110E359;
	Wed, 16 Mar 2022 09:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11CA110E359
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 09:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647424226; x=1678960226;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AptAlKrP5dI/Pzp9VSLy8XFwrKRrpX22ci38hHS8t5M=;
 b=lEH4v2DmYePuCyVVbGGPZsJF8BzE1Z7AQubXbwMHYqbkBLR5TrqNBI9L
 JixnLNwJe7STY2ntSFkC66MdXY07XL2PSU+MJsUnKY30pmIEUx2fom/JE
 wP/f/z9u/mdgnpPpm1SKNZEdJliDeWTtLjodkdqNiVnsmFQz/whHUKZea
 5aR/m+Cw996ux5Thudzb5Y82AXYguTxicERls3CnnkLwQ/Cx4kutdBMm1
 QmWDjs0MQIx9937y5bJi/hZNqpr/TLnHLdQN0jqWREdCN0h/1oB8azGBw
 pHIOv9WLbWYIilpj+WqanxYGX+EOCJmw6uFhlk6XIzAbxBo8yMdDmBM5v A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="254096807"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="254096807"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 02:50:25 -0700
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="557365854"
Received: from jgarrosx-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.34.45])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 02:50:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Mar 2022 11:50:18 +0200
Message-Id: <20220316095018.137998-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: move
 i915_gem_object_needs_bit17_swizzle() to i915_gem_tiling.[ch]
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

Move i915_gem_object_needs_bit17_swizzle() to i915_gem_tiling.[ch] as a
i915_gem_object function related to tiling. Also un-inline while at it;
does not seem like this is a function needed in hot paths.

v2: i915_gem_tiling.[ch] instead of intel_ggtt_fencing.[ch] (Chris)

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_phys.c   | 1 +
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c  | 3 ++-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c | 8 ++++++++
 drivers/gpu/drm/i915/gem/i915_gem_tiling.h | 2 ++
 drivers/gpu/drm/i915/i915_drv.h            | 9 ---------
 5 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
index ca6faffcc496..0d0e46dae559 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
@@ -14,6 +14,7 @@
 #include "i915_drv.h"
 #include "i915_gem_object.h"
 #include "i915_gem_region.h"
+#include "i915_gem_tiling.h"
 #include "i915_scatterlist.h"
 
 static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
index 3a1c782ed791..c7541dc687c1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
@@ -12,8 +12,9 @@
 
 #include "gem/i915_gem_region.h"
 #include "i915_drv.h"
-#include "i915_gemfs.h"
 #include "i915_gem_object.h"
+#include "i915_gem_tiling.h"
+#include "i915_gemfs.h"
 #include "i915_scatterlist.h"
 #include "i915_trace.h"
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index d6adda5bf96b..80ac0db1ae8c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -219,6 +219,14 @@ i915_gem_object_fence_prepare(struct drm_i915_gem_object *obj,
 	return ret;
 }
 
+bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj)
+{
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+
+	return to_gt(i915)->ggtt->bit_6_swizzle_x == I915_BIT_6_SWIZZLE_9_10_17 &&
+		i915_gem_object_is_tiled(obj);
+}
+
 int
 i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
 			   unsigned int tiling, unsigned int stride)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.h b/drivers/gpu/drm/i915/gem/i915_gem_tiling.h
index 9924196a8139..6bd5751abf28 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.h
@@ -8,8 +8,10 @@
 
 #include <linux/types.h>
 
+struct drm_i915_gem_object;
 struct drm_i915_private;
 
+bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj);
 u32 i915_gem_fence_size(struct drm_i915_private *i915, u32 size,
 			unsigned int tiling, unsigned int stride);
 u32 i915_gem_fence_alignment(struct drm_i915_private *i915, u32 size,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 26df561a4e94..a9aceb08fcd1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1486,15 +1486,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv);
 
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

