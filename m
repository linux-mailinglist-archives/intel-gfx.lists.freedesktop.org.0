Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F4AA49BEC
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 15:25:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4655E10ECBB;
	Fri, 28 Feb 2025 14:25:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EHggppva";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E37610ECBB;
 Fri, 28 Feb 2025 14:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740752747; x=1772288747;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8PxNratPLVVM452PV5ltT823dHgjbl8Qv0EOukbgojY=;
 b=EHggppvaznskaVFsXFmG1v2q4TdZ9YnA3lXPLmCYOOA2wuA1M90S5mXC
 ncJy0NAHjbJWJKqM1M/nfnVFSuEvBloCAIN4YSpDF7Lk6Id9hnH6RYIiz
 JI3f9bM23I+PR0Xqbaa3xqL9kzzOdvGx1YglhmTHtv0wepkW0/1DXZq29
 K8lB2RmXnIqeBgRKqwFg2yBZJpE7c7/znHJRH7B9rNSiN+yFaikFDk5bg
 NsknKlRRPTfu4ioPGuQCNwLpp3tyh8Fs96LMiDVtoxO4V/Pdt5t3+ZdXr
 TPGZs+PxeKW7SUHeMulikAECFcBIfO+E1RNbjws6GV3YaQj1ElAv4f3MA A==;
X-CSE-ConnectionGUID: YcwSWi3dTkWBMNVts/lH6Q==
X-CSE-MsgGUID: iJ5X36RlT3KWTTVAz65v6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11359"; a="45601405"
X-IronPort-AV: E=Sophos;i="6.13,322,1732608000"; d="scan'208";a="45601405"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 06:25:45 -0800
X-CSE-ConnectionGUID: IteGNrZvQlC/zEaw1SJg0Q==
X-CSE-MsgGUID: s4hTDAerSgOIZaM6wfqzJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="154518456"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.24])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2025 06:25:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/xe/compat: refactor compat i915_drv.h
Date: Fri, 28 Feb 2025 16:25:38 +0200
Message-Id: <20250228142539.3216960-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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
 drivers/gpu/drm/i915/display/intel_atomic_plane.c |  4 +++-
 .../xe/compat-i915-headers/gem/i915_gem_object.h  | 15 +++++++++++++++
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h |  8 --------
 .../xe/compat-i915-headers/i915_scheduler_types.h | 13 +++++++++++++
 .../gpu/drm/xe/compat-i915-headers/intel_uncore.h |  2 ++
 5 files changed, 33 insertions(+), 9 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_object.h
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_scheduler_types.h

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 05dcfa3bea73..181ad7468d85 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -40,8 +40,10 @@
 #include <drm/drm_gem.h>
 #include <drm/drm_gem_atomic_helper.h>
 
-#include "i915_drv.h"
+#include "gem/i915_gem_object.h"
 #include "i915_config.h"
+#include "i915_drv.h"
+#include "i915_scheduler_types.h"
 #include "i9xx_plane_regs.h"
 #include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
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

