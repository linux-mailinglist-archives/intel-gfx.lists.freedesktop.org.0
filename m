Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21753487820
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 14:21:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42FB910FBD6;
	Fri,  7 Jan 2022 13:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CD0110FB7D
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 13:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641561688; x=1673097688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iak4JS/beRSaEspJC61b53YJ2+WOsWE5gUQqXVRlqWg=;
 b=KnoVFJDnPJGUaFMQojosmaxFQjgGlu2uzLk1u23nEgkVkSHn0i3/9TTT
 80owxDEeb0BAjbKUZFHZqRHWkX49xyG9XxPVn0sA7Ufl2vjsKzFJ3pNzl
 I1uhAid3AXHb92WjQ5TJhComFuFWm5ErjkU/Uiy0CgGxHH2l+pHR8qmMj
 EHv/yMju7n+OI9Wh5SH3cE7lSNuaMWi7hu9sE8aDFhtT8AyrYQNFvgSWm
 MgVRI8B83wbLIUc6BqyYCiWrJC2vnJhp/G8GuJQOAsCfoB94YNrD9NYdV
 rgX0NZCP7KDtp6mBz20WtJ7Tihfi2cjqcCsqDo42U4FDXJP51a0t8vvex A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="242817758"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="242817758"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:21:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="557261636"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.24.206])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:21:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jan 2022 15:20:47 +0200
Message-Id: <8073a429ed1f8ade9c0cc8a6ed1a0f82183100c5.1641561552.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641561552.git.jani.nikula@intel.com>
References: <cover.1641561552.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: split out gem/i915_gem_tiling.h
 from i915_drv.h
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

We already have the gem/i915_gem_tiling.c file.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_tiling.h | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h            |  5 -----
 drivers/gpu/drm/i915/i915_vma.c            |  2 +-
 4 files changed, 20 insertions(+), 6 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_tiling.h

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index c3d432e314c9..f37ba4f54979 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -12,6 +12,7 @@
 #include "i915_gem_ioctls.h"
 #include "i915_gem_mman.h"
 #include "i915_gem_object.h"
+#include "i915_gem_tiling.h"
 
 /**
  * DOC: buffer object tiling
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.h b/drivers/gpu/drm/i915/gem/i915_gem_tiling.h
new file mode 100644
index 000000000000..9924196a8139
--- /dev/null
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.h
@@ -0,0 +1,18 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __I915_GEM_TILING_H__
+#define __I915_GEM_TILING_H__
+
+#include <linux/types.h>
+
+struct drm_i915_private;
+
+u32 i915_gem_fence_size(struct drm_i915_private *i915, u32 size,
+			unsigned int tiling, unsigned int stride);
+u32 i915_gem_fence_alignment(struct drm_i915_private *i915, u32 size,
+			     unsigned int tiling, unsigned int stride);
+
+#endif /* __I915_GEM_TILING_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 83f656e116f0..a44e0c3298fc 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1732,11 +1732,6 @@ static inline bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_objec
 		i915_gem_object_is_tiled(obj);
 }
 
-u32 i915_gem_fence_size(struct drm_i915_private *dev_priv, u32 size,
-			unsigned int tiling, unsigned int stride);
-u32 i915_gem_fence_alignment(struct drm_i915_private *dev_priv, u32 size,
-			     unsigned int tiling, unsigned int stride);
-
 const char *i915_cache_level_str(struct drm_i915_private *i915, int type);
 
 /* intel_device_info.c */
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 09d3424c9270..81a611b7d36f 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -26,8 +26,8 @@
 #include <drm/drm_gem.h>
 
 #include "display/intel_frontbuffer.h"
-
 #include "gem/i915_gem_lmem.h"
+#include "gem/i915_gem_tiling.h"
 #include "gt/intel_engine.h"
 #include "gt/intel_engine_heartbeat.h"
 #include "gt/intel_gt.h"
-- 
2.30.2

