Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C66CDA5051E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 17:38:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E48610E811;
	Wed,  5 Mar 2025 16:38:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lXoWZ22q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1B5910E811;
 Wed,  5 Mar 2025 16:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741192715; x=1772728715;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NmFMcj//FJ9j3aKsuwqmt3WabIEFw8/tFtKgWkbgAgg=;
 b=lXoWZ22qJaxusy6G8AnCM/hocivwi+HM26X0pvYJzlUCj/69Ih2RdQ1B
 V8rko+jORZQL26n/aT+Z9NMA8WH976e02oZgxSiyXvqMzBT0YCXK4KqdW
 gfU+3ZAfAG5DOdBaR9yBaUpNmAGd7BbxCZWZ/vO8DoU2om/ZaDsWi/Tzs
 XC8P9HpjVgA0El1DP0Ucm7vXyr6go5XbBD735CcecbIR1DXKvpUrd/Z3D
 Xk4Z5t97ZhlmF1zyxYQXV7pyboXxBGN+841yCWJrZS6z3u+YdEhoc/sQT
 SVtLbt9ZvmH0T78lbu+N4W4jtFzTRWOD9uKihD0YmFPvSbrThNkmhlYyJ w==;
X-CSE-ConnectionGUID: Bk0hrcUtTeSh7dCFge7HcQ==
X-CSE-MsgGUID: jhiJg26+TLmcAEEMs9m9IQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="44972083"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="44972083"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:38:35 -0800
X-CSE-ConnectionGUID: e2sx6dk8RX6GIos1xcfsHg==
X-CSE-MsgGUID: lp+ZhzwATVSTv+nh4GZVMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="118904860"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 08:38:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@intel.com,
 rodrigo.vivi@intel.com
Subject: [PATCH v2 1/2] drm/xe/compat: refactor compat i915_drv.h
Date: Wed,  5 Mar 2025 18:38:22 +0200
Message-Id: <d6bd95bf52aa37f48ddec3e675b7a3cc66829eef.1741192597.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741192597.git.jani.nikula@intel.com>
References: <cover.1741192597.git.jani.nikula@intel.com>
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

The compat i915_drv.h contains things that aren't there in the original
i915_drv.h. Split out gem/i915_gem_object.h and i915_scheduler_types.h,
moving the corresponding pieces out, including FORCEWAKE_ALL to
intel_uncore.h.

Technically I915_PRIORITY_DISPLAY should be in i915_priolist_types.h,
but it's a bit overkill to split out another file just for
that. i915_scheduler_types.h shall do.

With this, the compat i915_drv.h becomes a strict subset of the
original.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c |  2 ++
 .../xe/compat-i915-headers/gem/i915_gem_object.h  | 15 +++++++++++++++
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h |  8 --------
 .../xe/compat-i915-headers/i915_scheduler_types.h | 13 +++++++++++++
 .../gpu/drm/xe/compat-i915-headers/intel_uncore.h |  2 ++
 5 files changed, 32 insertions(+), 8 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_scheduler_types.h

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index a26b54185d5b..d899c37d80c6 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -41,8 +41,10 @@
 #include <drm/drm_gem.h>
 #include <drm/drm_gem_atomic_helper.h>
 
+#include "gem/i915_gem_object.h"
 #include "i915_config.h"
 #include "i915_drv.h"
+#include "i915_scheduler_types.h"
 #include "i915_vma.h"
 #include "i9xx_plane_regs.h"
 #include "intel_atomic_plane.h"
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
new file mode 100644
index 000000000000..03f35dce7b93
--- /dev/null
+++ b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_GEM_OBJECT_H__
+#define __i915_GEM_OBJECT_H__
+
+struct dma_fence;
+struct i915_sched_attr;
+
+static inline void i915_gem_fence_wait_priority(struct dma_fence *fence,
+						const struct i915_sched_attr *attr)
+{
+}
+
+#endif
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 84b0991b35b3..dfec5108d2c3 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -95,14 +95,6 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 
 #define HAS_128_BYTE_Y_TILING(xe) (xe || 1)
 
-#define I915_PRIORITY_DISPLAY 0
-struct i915_sched_attr {
-	int priority;
-};
-#define i915_gem_fence_wait_priority(fence, attr) do { (void) attr; } while (0)
-
-#define FORCEWAKE_ALL XE_FORCEWAKE_ALL
-
 #ifdef CONFIG_ARM64
 /*
  * arm64 indirectly includes linux/rtc.h,
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_scheduler_types.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_scheduler_types.h
new file mode 100644
index 000000000000..c11130440d31
--- /dev/null
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_scheduler_types.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_SCHEDULER_TYPES_H__
+#define __I915_SCHEDULER_TYPES_H__
+
+#define I915_PRIORITY_DISPLAY 0
+
+struct i915_sched_attr {
+	int priority;
+};
+
+#endif
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index 4fc3e535de91..0c1e88e36a1e 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -10,6 +10,8 @@
 #include "xe_device_types.h"
 #include "xe_mmio.h"
 
+#define FORCEWAKE_ALL XE_FORCEWAKE_ALL
+
 static inline struct intel_uncore *to_intel_uncore(struct drm_device *drm)
 {
 	return &to_xe_device(drm)->uncore;
-- 
2.39.5

