Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B045B8DAC
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 18:59:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3962D10E99D;
	Wed, 14 Sep 2022 16:59:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B350910E999
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 16:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663174752; x=1694710752;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HrNqQMRTnpYLSc5yFXt335FjYY+Mgzif0P3vk8QVAiA=;
 b=Cfprq85nJ3BV0eVOJbqSOLiWi3yMswI3w+BKW2U+FrUKNuYIZLbV+GpD
 4YZURJxATSGWdR1Kp/QP0xS3iWfHN7LQ4fdKfJi9QyfNZLhcdkI7bvR9w
 1auuCZ2eGb8GghXgQQEqlj5PrtFhKu2AkFyzxtkzYkZu+Ce+WKrE/JMic
 AF5cOacZ+hzPl77r9DOQjX6QHYIYe0+Y/OQl9sLmr9UD8Xz9z/5ADXU+t
 ERlyVOJab+6v7D8qI5v8a5gDo1cDK/scZ4tadXlzMmRzYzFCDsZ61QI57
 /GBm5OdcMZYEWZf7HDxYZAXKU51+m9Bit1ZMxz4zvi/M/fWuYSvA0yDXW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="298481832"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="298481832"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 09:59:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="679131994"
Received: from dbrayfor-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.164])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 09:59:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Sep 2022 19:59:03 +0300
Message-Id: <20220914165903.1905962-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: move i915_fence_{context_,
 }timeout() to i915_sw_fence.[ch]
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

Maybe there was a grand plan with i915_fence_timeout() and
i915_fence_context_timeout() and i915_config.c, but that seems to have
been lost a bit.

Just move the functions to i915_sw_fence.[ch] from i915_drv.h and
i915_config.c, and remove the latter.

Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile        |  1 -
 drivers/gpu/drm/i915/i915_config.c   | 15 ---------------
 drivers/gpu/drm/i915/i915_drv.h      |  9 ---------
 drivers/gpu/drm/i915/i915_sw_fence.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/i915_sw_fence.h |  5 +++++
 5 files changed, 20 insertions(+), 25 deletions(-)
 delete mode 100644 drivers/gpu/drm/i915/i915_config.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index a26edcdadc21..0221682d3a0f 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -34,7 +34,6 @@ subdir-ccflags-y += -I$(srctree)/$(src)
 # core driver code
 i915-y += i915_driver.o \
 	  i915_drm_client.o \
-	  i915_config.o \
 	  i915_getparam.o \
 	  i915_ioctl.o \
 	  i915_irq.o \
diff --git a/drivers/gpu/drm/i915/i915_config.c b/drivers/gpu/drm/i915/i915_config.c
deleted file mode 100644
index afb828dab53b..000000000000
--- a/drivers/gpu/drm/i915/i915_config.c
+++ /dev/null
@@ -1,15 +0,0 @@
-// SPDX-License-Identifier: MIT
-/*
- * Copyright © 2020 Intel Corporation
- */
-
-#include "i915_drv.h"
-
-unsigned long
-i915_fence_context_timeout(const struct drm_i915_private *i915, u64 context)
-{
-	if (CONFIG_DRM_I915_FENCE_TIMEOUT && context)
-		return msecs_to_jiffies_timeout(CONFIG_DRM_I915_FENCE_TIMEOUT);
-
-	return 0;
-}
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 524b5ee495be..02956385d32d 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -167,15 +167,6 @@ struct i915_gem_mm {
 
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
diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
index 6fc0d1b89690..2a90987799e7 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence.c
@@ -11,6 +11,7 @@
 
 #include "i915_sw_fence.h"
 #include "i915_selftest.h"
+#include "i915_utils.h"
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
 #define I915_SW_FENCE_BUG_ON(expr) BUG_ON(expr)
@@ -471,6 +472,20 @@ static void irq_i915_sw_fence_work(struct irq_work *wrk)
 	kfree_rcu(cb, rcu);
 }
 
+unsigned long i915_fence_context_timeout(const struct drm_i915_private *i915,
+					 u64 context)
+{
+	if (CONFIG_DRM_I915_FENCE_TIMEOUT && context)
+		return msecs_to_jiffies_timeout(CONFIG_DRM_I915_FENCE_TIMEOUT);
+
+	return 0;
+}
+
+unsigned long i915_fence_timeout(const struct drm_i915_private *i915)
+{
+	return i915_fence_context_timeout(i915, U64_MAX);
+}
+
 int i915_sw_fence_await_dma_fence(struct i915_sw_fence *fence,
 				  struct dma_fence *dma,
 				  unsigned long timeout,
diff --git a/drivers/gpu/drm/i915/i915_sw_fence.h b/drivers/gpu/drm/i915/i915_sw_fence.h
index 619fc5a22f0c..cdef7dabafbd 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence.h
+++ b/drivers/gpu/drm/i915/i915_sw_fence.h
@@ -17,6 +17,7 @@
 
 struct completion;
 struct dma_resv;
+struct drm_i915_private;
 struct i915_sw_fence;
 
 enum i915_sw_fence_notify {
@@ -81,6 +82,10 @@ struct i915_sw_dma_fence_cb {
 	struct i915_sw_fence *fence;
 };
 
+unsigned long i915_fence_context_timeout(const struct drm_i915_private *i915,
+					 u64 context);
+unsigned long i915_fence_timeout(const struct drm_i915_private *i915);
+
 int __i915_sw_fence_await_dma_fence(struct i915_sw_fence *fence,
 				    struct dma_fence *dma,
 				    struct i915_sw_dma_fence_cb *cb);
-- 
2.34.1

