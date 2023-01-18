Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E18671D42
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 14:15:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6906310E745;
	Wed, 18 Jan 2023 13:15:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D62A10E742
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 13:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674047745; x=1705583745;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VgFN379rlSGnwXD3omws/EAzeNOFNRnqZQSy+xlywiA=;
 b=OM55N8vHajoNYXwnQqXUMUXOwwQfiAlB3PFWzKs1Pgz7mO68cJLXeT1y
 Q0SeYpkaFCe4UM92J3Hd8LC0wn7N0CIhDCnE2Zch/L/N5xCzqfhGUPl/c
 ar7okatgDfiis1Ou7xszlj8k1lcGs7VK8YMeupEtZLakN7YZ20zBvbh4L
 cMnecYCDKftMQ0KUkudz3oBQfu0R8apcKIIkbWQiNo0XI+zeSxIWD3CR2
 kMOz/jzuRwZ6UAmJCFse8ll0fHK9mvQuXFCekoZNKbxk7B0P8/avzuKiY
 itlLuY6IE98w2ICreqpqQh2MtEI9LTZKuxRCiqafVqCwdao6rF8Z75sAa A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="389479750"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="389479750"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:15:44 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="690189883"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="690189883"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 05:15:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 15:15:32 +0200
Message-Id: <20230118131538.3558599-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: add i915_config.h and move
 relevant declarations there
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

We already have i915_config.c. Add the i915_config.h counterpart, and
declutter i915_drv.h in the process.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_clflush.c   |  1 +
 drivers/gpu/drm/i915/i915_config.c            |  5 +++-
 drivers/gpu/drm/i915/i915_config.h            | 23 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h               |  9 --------
 drivers/gpu/drm/i915/i915_request.c           |  1 +
 6 files changed, 30 insertions(+), 10 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_config.h

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 10e1fc9d0698..1409bcfb6fd3 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -36,6 +36,7 @@
 
 #include "gt/intel_rps.h"
 
+#include "i915_config.h"
 #include "intel_atomic_plane.h"
 #include "intel_cdclk.h"
 #include "intel_display_trace.h"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
index b3b398fe689c..385ffc575b48 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_clflush.c
@@ -8,6 +8,7 @@
 
 #include "display/intel_frontbuffer.h"
 
+#include "i915_config.h"
 #include "i915_drv.h"
 #include "i915_gem_clflush.h"
 #include "i915_sw_fence_work.h"
diff --git a/drivers/gpu/drm/i915/i915_config.c b/drivers/gpu/drm/i915/i915_config.c
index afb828dab53b..24e5bb8a670e 100644
--- a/drivers/gpu/drm/i915/i915_config.c
+++ b/drivers/gpu/drm/i915/i915_config.c
@@ -3,7 +3,10 @@
  * Copyright © 2020 Intel Corporation
  */
 
-#include "i915_drv.h"
+#include <linux/kernel.h>
+
+#include "i915_config.h"
+#include "i915_utils.h"
 
 unsigned long
 i915_fence_context_timeout(const struct drm_i915_private *i915, u64 context)
diff --git a/drivers/gpu/drm/i915/i915_config.h b/drivers/gpu/drm/i915/i915_config.h
new file mode 100644
index 000000000000..10e18b036489
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_config.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __I915_CONFIG_H__
+#define __I915_CONFIG_H__
+
+#include <linux/types.h>
+#include <linux/limits.h>
+
+struct drm_i915_private;
+
+unsigned long i915_fence_context_timeout(const struct drm_i915_private *i915,
+					 u64 context);
+
+static inline unsigned long
+i915_fence_timeout(const struct drm_i915_private *i915)
+{
+	return i915_fence_context_timeout(i915, U64_MAX);
+}
+
+#endif /* __I915_CONFIG_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2ed3cb7e38d7..8377173e8de5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -196,15 +196,6 @@ struct i915_gem_mm {
 
 #define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
 
-unsigned long i915_fence_context_timeout(const struct drm_i915_private *i915,
-					 u64 context);
-
-static inline unsigned long
-i915_fence_timeout(const struct drm_i915_private *i915)
-{
-	return i915_fence_context_timeout(i915, U64_MAX);
-}
-
 #define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 
 struct i915_virtual_gpu {
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index f949a9495758..7503dcb9043b 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -43,6 +43,7 @@
 #include "gt/intel_rps.h"
 
 #include "i915_active.h"
+#include "i915_config.h"
 #include "i915_deps.h"
 #include "i915_driver.h"
 #include "i915_drv.h"
-- 
2.34.1

