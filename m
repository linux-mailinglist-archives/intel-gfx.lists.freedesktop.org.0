Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D455F7A8EC6
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 23:59:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B9E010E089;
	Wed, 20 Sep 2023 21:59:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C0FB10E082;
 Wed, 20 Sep 2023 21:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695247172; x=1726783172;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+UfZKgjN/aXBcFicuvsoxd+ZUslBdBfshjCH7giZQ/M=;
 b=LQjG5T21u6mw0eYZww4H/RP/X6TlkLsZBnAUDRpFM2syIVQjVWCwxNWe
 XYPKvUczcZhD2decY41KjyRUzv7u2BJx7uuQUmSucsgCGaVQKb5jR2QMR
 bFAhVEFEASYSuuCxEEqCwVAWCC7KwReolwNOeA0g5mLp4cXqCO+EStMO0
 CyEwVOpU2i8gy0uRbChX5Fh2TxIu2UXmIvcpXSGUz03J2KzTpaDPjxlBN
 zGzpRzHRs3BpMWTrtgdduSDdF8mES2Mwa4S22XzBGar36JoqaCBBFYAFB
 VT6vrPD1Pe0uSrTUOWQ1kOQbijQFs4FW8kEDyGcsm1yZjR5NdlTCnbSxy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="466659916"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="466659916"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 14:59:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="890113651"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="890113651"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by fmsmga001.fm.intel.com with ESMTP; 20 Sep 2023 14:58:42 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 20 Sep 2023 14:56:24 -0700
Message-Id: <20230920215624.3482244-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Allow users to disable waitboost
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Provide a bit to disable waitboost while waiting on a gem object.
Waitboost results in increased power consumption by requesting RP0
while waiting for the request to complete. Add a bit in the gem_wait()
IOCTL where this can be disabled.

This is related to the libva API change here -
Link: https://github.com/XinfengZhang/libva/commit/3d90d18c67609a73121bb71b20ee4776b54b61a7

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_wait.c | 9 ++++++---
 drivers/gpu/drm/i915/i915_request.c      | 3 ++-
 drivers/gpu/drm/i915/i915_request.h      | 1 +
 include/uapi/drm/i915_drm.h              | 1 +
 4 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index d4b918fb11ce..955885ec859d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -72,7 +72,8 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
 	struct dma_fence *fence;
 	long ret = timeout ?: 1;
 
-	i915_gem_object_boost(resv, flags);
+	if (!(flags & I915_WAITBOOST_DISABLE))
+		i915_gem_object_boost(resv, flags);
 
 	dma_resv_iter_begin(&cursor, resv,
 			    dma_resv_usage_rw(flags & I915_WAIT_ALL));
@@ -236,7 +237,7 @@ i915_gem_wait_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
 	ktime_t start;
 	long ret;
 
-	if (args->flags != 0)
+	if (args->flags != 0 || args->flags != I915_GEM_WAITBOOST_DISABLE)
 		return -EINVAL;
 
 	obj = i915_gem_object_lookup(file, args->bo_handle);
@@ -248,7 +249,9 @@ i915_gem_wait_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
 	ret = i915_gem_object_wait(obj,
 				   I915_WAIT_INTERRUPTIBLE |
 				   I915_WAIT_PRIORITY |
-				   I915_WAIT_ALL,
+				   I915_WAIT_ALL |
+				   (args->flags & I915_GEM_WAITBOOST_DISABLE ?
+				    I915_WAITBOOST_DISABLE : 0),
 				   to_wait_timeout(args->timeout_ns));
 
 	if (args->timeout_ns > 0) {
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index f59081066a19..2957409b4b2a 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -2044,7 +2044,8 @@ long i915_request_wait_timeout(struct i915_request *rq,
 	 * but at a cost of spending more power processing the workload
 	 * (bad for battery).
 	 */
-	if (flags & I915_WAIT_PRIORITY && !i915_request_started(rq))
+	if (!(flags & I915_WAITBOOST_DISABLE) && (flags & I915_WAIT_PRIORITY) &&
+	    !i915_request_started(rq))
 		intel_rps_boost(rq);
 
 	wait.tsk = current;
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 0ac55b2e4223..3cc00e8254dc 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -445,6 +445,7 @@ long i915_request_wait(struct i915_request *rq,
 #define I915_WAIT_INTERRUPTIBLE	BIT(0)
 #define I915_WAIT_PRIORITY	BIT(1) /* small priority bump for the request */
 #define I915_WAIT_ALL		BIT(2) /* used by i915_gem_object_wait() */
+#define I915_WAITBOOST_DISABLE	BIT(3) /* used by i915_gem_object_wait() */
 
 void i915_request_show(struct drm_printer *m,
 		       const struct i915_request *rq,
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 7000e5910a1d..4adee70e39cf 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -1928,6 +1928,7 @@ struct drm_i915_gem_wait {
 	/** Handle of BO we shall wait on */
 	__u32 bo_handle;
 	__u32 flags;
+#define I915_GEM_WAITBOOST_DISABLE      (1u<<0)
 	/** Number of nanoseconds to wait, Returns time remaining. */
 	__s64 timeout_ns;
 };
-- 
2.38.1

