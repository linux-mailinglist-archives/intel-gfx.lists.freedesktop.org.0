Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A9848599D
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:57:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4606910E401;
	Wed,  5 Jan 2022 19:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 019F910E401
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412631; x=1672948631;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KVgYBe7FEqYkX59VZVV8gJ9zw7pnOhKnOW7yizmat0A=;
 b=JJFEV5Iur5mhirSdHFVCy69fVMdg4N2osIp1L3tTGOthD8aq//Lh+6Om
 CuBUDWXRPCW0suMYxxH71/86L+92hkLDxlKfSWqc5x24ricEJjTc7NC83
 PwdtqFw0lRtdqegIvyoMBqZ0K6xZKxTiVfdAEQZw+5dgXsMg8kXe9jon3
 fCscy++Jj9EKFXia46fN/6dgMO9whO8TAEn+0AtU1P6dAgBF25ucaL6l1
 EV6UV5bNCllieb0g/v/TDEPS+ujmZufmOHwgFq9LnHXzqkGdgodfacV7E
 42lbuc9qqTjUBFE0LO/g2aYo6V6lRWIhg4nJE8Et1EHEIJHhY+p0B5VNK g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="305877573"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="305877573"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="470693705"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:57:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:21 +0200
Message-Id: <430cefd14731000d2bada42901f8a257d65b3a51.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/21] drm/i915: split out gem/i915_gem_tiling.h
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_tiling.h | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h            |  5 -----
 drivers/gpu/drm/i915/i915_vma.c            |  2 +-
 4 files changed, 20 insertions(+), 6 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_tiling.h

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index ef4d0f7dc118..cf324329703f 100644
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
index 9cc3b5b9ec39..bb48ab725a44 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1734,11 +1734,6 @@ static inline bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_objec
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

