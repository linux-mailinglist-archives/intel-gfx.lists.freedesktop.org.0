Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DECB60C46B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 08:59:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7D1B10E185;
	Tue, 25 Oct 2022 06:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A08C410E184;
 Tue, 25 Oct 2022 06:59:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666681151; x=1698217151;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s2SytYlZ4XW8IHH4S3RWx/PSLW3YXP5X/WijwHLKFdA=;
 b=h0Qz5vsbjnIlqvWP7g9e6xB2GBSeMIh2WZa3HGi7GjnII4A3PSQUZV/I
 4ca8RM+8fqNRiLB5Scb1fqYlvSwrhUNrLqCBuXxrWeUghfA5rhJYySdsd
 syECA9z/RAMU8GEZDiDOve0DdL4UEx+XXJcfgxoJEEJoOZ65hwrUYC0Yc
 oCNY2wCnfutzESG8lFgsLxoe0JjnBn04FPtbmteV83nTqoAXspfF53iB/
 hvYLPLoJWCWxBdhB8EOVECj/k8F5jwXQ1X2/MumBpVVquaOA21S2r0dfp
 0dQfa+WQsx/17dv8ZHgU5kwUzj7kUxrdQQUgDIGQO2HjMDsJ3U2869cX+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="334198161"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="334198161"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 23:59:11 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="806564386"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="806564386"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 23:59:10 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 24 Oct 2022 23:58:48 -0700
Message-Id: <20221025065905.13325-3-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
In-Reply-To: <20221025065905.13325-1-niranjana.vishwanathapura@intel.com>
References: <20221025065905.13325-1-niranjana.vishwanathapura@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 02/19] drm/i915/vm_bind: Add
 __i915_sw_fence_await_reservation()
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
Cc: paulo.r.zanoni@intel.com, jani.nikula@intel.com, thomas.hellstrom@intel.com,
 matthew.auld@intel.com, daniel.vetter@intel.com, christian.koenig@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add function __i915_sw_fence_await_reservation() for
asynchronous wait on a dma-resv object with specified
dma_resv_usage. This is required for async vma unbind
with vm_bind.

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/i915/i915_sw_fence.c | 28 +++++++++++++++++++++-------
 drivers/gpu/drm/i915/i915_sw_fence.h | 23 +++++++++++++++++------
 2 files changed, 38 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
index cc2a8821d22a..ae06d35db056 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence.c
+++ b/drivers/gpu/drm/i915/i915_sw_fence.c
@@ -7,7 +7,6 @@
 #include <linux/slab.h>
 #include <linux/dma-fence.h>
 #include <linux/irq_work.h>
-#include <linux/dma-resv.h>
 
 #include "i915_sw_fence.h"
 #include "i915_selftest.h"
@@ -569,11 +568,26 @@ int __i915_sw_fence_await_dma_fence(struct i915_sw_fence *fence,
 	return ret;
 }
 
-int i915_sw_fence_await_reservation(struct i915_sw_fence *fence,
-				    struct dma_resv *resv,
-				    bool write,
-				    unsigned long timeout,
-				    gfp_t gfp)
+/**
+ * __i915_sw_fence_await_reservation() - Setup a fence to wait on a dma-resv
+ * object with specified usage.
+ * @fence: the fence that needs to wait
+ * @resv: dma-resv object
+ * @usage: dma_resv_usage (See enum dma_resv_usage)
+ * @timeout: how long to wait in jiffies
+ * @gfp: allocation mode
+ *
+ * Setup the @fence to asynchronously wait on dma-resv object @resv for
+ * @usage to complete before signaling.
+ *
+ * Returns 0 if there is nothing to wait on, -ve error code upon error
+ * and >0 upon successfully setting up the wait.
+ */
+int __i915_sw_fence_await_reservation(struct i915_sw_fence *fence,
+				      struct dma_resv *resv,
+				      enum dma_resv_usage usage,
+				      unsigned long timeout,
+				      gfp_t gfp)
 {
 	struct dma_resv_iter cursor;
 	struct dma_fence *f;
@@ -582,7 +596,7 @@ int i915_sw_fence_await_reservation(struct i915_sw_fence *fence,
 	debug_fence_assert(fence);
 	might_sleep_if(gfpflags_allow_blocking(gfp));
 
-	dma_resv_iter_begin(&cursor, resv, dma_resv_usage_rw(write));
+	dma_resv_iter_begin(&cursor, resv, usage);
 	dma_resv_for_each_fence_unlocked(&cursor, f) {
 		pending = i915_sw_fence_await_dma_fence(fence, f, timeout,
 							gfp);
diff --git a/drivers/gpu/drm/i915/i915_sw_fence.h b/drivers/gpu/drm/i915/i915_sw_fence.h
index f752bfc7c6e1..9c4859dc4c0d 100644
--- a/drivers/gpu/drm/i915/i915_sw_fence.h
+++ b/drivers/gpu/drm/i915/i915_sw_fence.h
@@ -10,13 +10,13 @@
 #define _I915_SW_FENCE_H_
 
 #include <linux/dma-fence.h>
+#include <linux/dma-resv.h>
 #include <linux/gfp.h>
 #include <linux/kref.h>
 #include <linux/notifier.h> /* for NOTIFY_DONE */
 #include <linux/wait.h>
 
 struct completion;
-struct dma_resv;
 struct i915_sw_fence;
 
 enum i915_sw_fence_notify {
@@ -89,11 +89,22 @@ int i915_sw_fence_await_dma_fence(struct i915_sw_fence *fence,
 				  unsigned long timeout,
 				  gfp_t gfp);
 
-int i915_sw_fence_await_reservation(struct i915_sw_fence *fence,
-				    struct dma_resv *resv,
-				    bool write,
-				    unsigned long timeout,
-				    gfp_t gfp);
+int __i915_sw_fence_await_reservation(struct i915_sw_fence *fence,
+				      struct dma_resv *resv,
+				      enum dma_resv_usage usage,
+				      unsigned long timeout,
+				      gfp_t gfp);
+
+static inline int i915_sw_fence_await_reservation(struct i915_sw_fence *fence,
+						  struct dma_resv *resv,
+						  bool write,
+						  unsigned long timeout,
+						  gfp_t gfp)
+{
+	return __i915_sw_fence_await_reservation(fence, resv,
+						 dma_resv_usage_rw(write),
+						 timeout, gfp);
+}
 
 bool i915_sw_fence_await(struct i915_sw_fence *fence);
 void i915_sw_fence_complete(struct i915_sw_fence *fence);
-- 
2.21.0.rc0.32.g243a4c7e27

