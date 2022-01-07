Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDAA487826
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 14:21:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEEDA112E49;
	Fri,  7 Jan 2022 13:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BCF1112FA1
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 13:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641561714; x=1673097714;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iak4JS/beRSaEspJC61b53YJ2+WOsWE5gUQqXVRlqWg=;
 b=JDKQpnx1kKAE54808cln7tvcIz6pBcSWvtQl7VqS8aOL7t+QE8mCbByS
 g7YnRvTMRtP2eczM/jtT2gEDuVQu31jN9RLpnhhnHKOEIlLNR2xgL1cB1
 79DnIJDuVpsupu9ja9hy3vcp8BCo9S/zlf+SeUQUa+UwxWj7F1rbD68Kc
 oKDEb9uMqxVIDS0JyktOUhtyq+W9vDbD0xVgKJ+GoZ+zQ79yKwdbLKtVU
 CNIltWfkDDKs0oz0t681DJN0Qk9Ax5Dl4v3zNBhOY3nQA4JvNH9rHoldE
 fVX8ZIywRjlIO/q97sWfdMNenR4D6WPap1DNangOzcdhGnUi74TIoehc+ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="222855986"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="222855986"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:21:54 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="668768898"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.24.206])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:21:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jan 2022 15:20:52 +0200
Message-Id: <20220107132126.133801-5-jani.nikula@intel.com>
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

