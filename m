Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB98B98FAD
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 10:51:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 801A510E6B7;
	Wed, 24 Sep 2025 08:51:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J4pk8ilv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9747A10E121;
 Wed, 24 Sep 2025 08:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758703895; x=1790239895;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aN6Tmwt0Nj5AnXCRtwTSTwrUC6+1g0ZCCqHphT4NDMk=;
 b=J4pk8ilvUZEGTNcH5DJFpMD7ld3nC66pqMlwa85mDCP8iGccpNu+7B3M
 r5lU6tqjzrvpuCkLRUuyrAb3nXHfZMb3jXriRS0nwOLB+tYiIfDFGSJeh
 6Lfv7tKYAuETPcykkHdOSJcHZBKXvtTvyV55e+LyBn5ripC+1rrFIQUWI
 j3raAw6oK8B3xChZ6Ii3HyNE3+5fVO7+59BCCOp+A78UMVJHd7ydhjAfR
 ZbPebfeFxHZcyYFlrBThKj9W7ZqWsfXUpJfUQPx7iat6g/BheYsHmtzN9
 u4ZM3kP7eYo//OIk0swMDouNw8rC4Vn5qDfpu/heHWhwBx22fFm1xKQ8/ w==;
X-CSE-ConnectionGUID: 1fQhqAiNSXS2RfgRcWnjww==
X-CSE-MsgGUID: zT89UM6TR3OfNF9bx/O40A==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60699516"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="60699516"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 01:51:35 -0700
X-CSE-ConnectionGUID: bHuxDQNYSpKalyyHjKZsHQ==
X-CSE-MsgGUID: RS8q1pjCTcK7LTnXFSQ6bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="180999376"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.149])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 01:51:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/gem: add i915_gem_fence_wait_priority_display()
 helper
Date: Wed, 24 Sep 2025 11:51:29 +0300
Message-ID: <20250924085129.146173-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Add i915_gem_fence_wait_priority_display() helper to wait with
I915_PRIORITY_DISPLAY. This drops the intel_plane.c dependency on
i915_scheduler_types.h, and allows us to remove the compat header from
xe.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c          |  5 +----
 drivers/gpu/drm/i915/gem/i915_gem_object.h          |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_wait.c            |  7 +++++++
 .../xe/compat-i915-headers/gem/i915_gem_object.h    |  4 +---
 .../xe/compat-i915-headers/i915_scheduler_types.h   | 13 -------------
 5 files changed, 10 insertions(+), 20 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_scheduler_types.h

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 2329f09d413d..19d4640c0e53 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -45,7 +45,6 @@
 #include <drm/drm_panic.h>
 
 #include "gem/i915_gem_object.h"
-#include "i915_scheduler_types.h"
 #include "i9xx_plane_regs.h"
 #include "intel_cdclk.h"
 #include "intel_cursor.h"
@@ -1172,7 +1171,6 @@ static int
 intel_prepare_plane_fb(struct drm_plane *_plane,
 		       struct drm_plane_state *_new_plane_state)
 {
-	struct i915_sched_attr attr = { .priority = I915_PRIORITY_DISPLAY };
 	struct intel_plane *plane = to_intel_plane(_plane);
 	struct intel_display *display = to_intel_display(plane);
 	struct intel_plane_state *new_plane_state =
@@ -1221,8 +1219,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 		goto unpin_fb;
 
 	if (new_plane_state->uapi.fence) {
-		i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
-					     &attr);
+		i915_gem_fence_wait_priority_display(new_plane_state->uapi.fence);
 
 		intel_display_rps_boost_after_vblank(new_plane_state->hw.crtc,
 						     new_plane_state->uapi.fence);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 148034ef504d..8878539c10ed 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -802,6 +802,7 @@ static inline void __start_cpu_write(struct drm_i915_gem_object *obj)
 
 void i915_gem_fence_wait_priority(struct dma_fence *fence,
 				  const struct i915_sched_attr *attr);
+void i915_gem_fence_wait_priority_display(struct dma_fence *fence);
 
 int i915_gem_object_wait(struct drm_i915_gem_object *obj,
 			 unsigned int flags,
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index 54829801d3f7..2893df65c359 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -138,6 +138,13 @@ void i915_gem_fence_wait_priority(struct dma_fence *fence,
 	local_bh_enable(); /* kick the tasklets if queues were reprioritised */
 }
 
+void i915_gem_fence_wait_priority_display(struct dma_fence *fence)
+{
+	struct i915_sched_attr attr = { .priority = I915_PRIORITY_DISPLAY };
+
+	i915_gem_fence_wait_priority(fence, &attr);
+}
+
 int
 i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
 			      unsigned int flags,
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
index 8a048980ea38..0548b2e0316f 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
@@ -5,10 +5,8 @@
 #define __I915_GEM_OBJECT_H__
 
 struct dma_fence;
-struct i915_sched_attr;
 
-static inline void i915_gem_fence_wait_priority(struct dma_fence *fence,
-						const struct i915_sched_attr *attr)
+static inline void i915_gem_fence_wait_priority_display(struct dma_fence *fence)
 {
 }
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_scheduler_types.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_scheduler_types.h
deleted file mode 100644
index c11130440d31..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_scheduler_types.h
+++ /dev/null
@@ -1,13 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/* Copyright © 2025 Intel Corporation */
-
-#ifndef __I915_SCHEDULER_TYPES_H__
-#define __I915_SCHEDULER_TYPES_H__
-
-#define I915_PRIORITY_DISPLAY 0
-
-struct i915_sched_attr {
-	int priority;
-};
-
-#endif
-- 
2.47.3

