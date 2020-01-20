Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8B4143025
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 17:43:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD0D16EA02;
	Mon, 20 Jan 2020 16:43:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB7DC6EA00;
 Mon, 20 Jan 2020 16:43:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 08:43:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,342,1574150400"; d="scan'208";a="227097515"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 20 Jan 2020 08:43:47 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 20 Jan 2020 18:43:43 +0200
Message-Id: <20200120164343.2262-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH libdrm] intel: drm_intel_bo_gem_create_from_* on
 platforms w/o HW tiling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Platforms without a HW detiler doesn't support the get_tiling IOCTL.
Fix the drm_intel_bo_gem_create_from_* functions assuming the default
no-tiling, no-swizzling setting for the GEM buffer in this case.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 intel/intel_bufmgr_gem.c | 42 +++++++++++++++++++++++++---------------
 1 file changed, 26 insertions(+), 16 deletions(-)

diff --git a/intel/intel_bufmgr_gem.c b/intel/intel_bufmgr_gem.c
index fbf48730..fc249ef1 100644
--- a/intel/intel_bufmgr_gem.c
+++ b/intel/intel_bufmgr_gem.c
@@ -1069,6 +1069,27 @@ check_bo_alloc_userptr(drm_intel_bufmgr *bufmgr,
 					  tiling_mode, stride, size, flags);
 }
 
+static int get_tiling_mode(drm_intel_bufmgr_gem *bufmgr_gem,
+			   uint32_t gem_handle,
+			   uint32_t *tiling_mode,
+			   uint32_t *swizzle_mode)
+{
+	struct drm_i915_gem_get_tiling get_tiling;
+	int ret;
+
+	memclear(get_tiling);
+	ret = drmIoctl(bufmgr_gem->fd,
+		       DRM_IOCTL_I915_GEM_GET_TILING,
+		       &get_tiling);
+	if (ret != 0 && errno != EOPNOTSUPP)
+		return ret;
+
+	*tiling_mode = get_tiling.tiling_mode;
+	*swizzle_mode = get_tiling.swizzle_mode;
+
+	return 0;
+}
+
 /**
  * Returns a drm_intel_bo wrapping the given buffer object handle.
  *
@@ -1084,7 +1105,6 @@ drm_intel_bo_gem_create_from_name(drm_intel_bufmgr *bufmgr,
 	drm_intel_bo_gem *bo_gem;
 	int ret;
 	struct drm_gem_open open_arg;
-	struct drm_i915_gem_get_tiling get_tiling;
 
 	/* At the moment most applications only have a few named bo.
 	 * For instance, in a DRI client only the render buffers passed
@@ -1146,16 +1166,11 @@ drm_intel_bo_gem_create_from_name(drm_intel_bufmgr *bufmgr,
 	HASH_ADD(name_hh, bufmgr_gem->name_table,
 		 global_name, sizeof(bo_gem->global_name), bo_gem);
 
-	memclear(get_tiling);
-	get_tiling.handle = bo_gem->gem_handle;
-	ret = drmIoctl(bufmgr_gem->fd,
-		       DRM_IOCTL_I915_GEM_GET_TILING,
-		       &get_tiling);
+	ret = get_tiling_mode(bufmgr_gem, bo_gem->gem_handle,
+			      &bo_gem->tiling_mode, &bo_gem->swizzle_mode);
 	if (ret != 0)
 		goto err_unref;
 
-	bo_gem->tiling_mode = get_tiling.tiling_mode;
-	bo_gem->swizzle_mode = get_tiling.swizzle_mode;
 	/* XXX stride is unknown */
 	drm_intel_bo_gem_set_in_aperture_size(bufmgr_gem, bo_gem, 0);
 	DBG("bo_create_from_handle: %d (%s)\n", handle, bo_gem->name);
@@ -2634,7 +2649,6 @@ drm_intel_bo_gem_create_from_prime(drm_intel_bufmgr *bufmgr, int prime_fd, int s
 	int ret;
 	uint32_t handle;
 	drm_intel_bo_gem *bo_gem;
-	struct drm_i915_gem_get_tiling get_tiling;
 
 	pthread_mutex_lock(&bufmgr_gem->lock);
 	ret = drmPrimeFDToHandle(bufmgr_gem->fd, prime_fd, &handle);
@@ -2688,15 +2702,11 @@ drm_intel_bo_gem_create_from_prime(drm_intel_bufmgr *bufmgr, int prime_fd, int s
 	bo_gem->has_error = false;
 	bo_gem->reusable = false;
 
-	memclear(get_tiling);
-	get_tiling.handle = bo_gem->gem_handle;
-	if (drmIoctl(bufmgr_gem->fd,
-		     DRM_IOCTL_I915_GEM_GET_TILING,
-		     &get_tiling))
+	ret = get_tiling_mode(bufmgr_gem, handle,
+			      &bo_gem->tiling_mode, &bo_gem->swizzle_mode);
+	if (ret)
 		goto err;
 
-	bo_gem->tiling_mode = get_tiling.tiling_mode;
-	bo_gem->swizzle_mode = get_tiling.swizzle_mode;
 	/* XXX stride is unknown */
 	drm_intel_bo_gem_set_in_aperture_size(bufmgr_gem, bo_gem, 0);
 
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
