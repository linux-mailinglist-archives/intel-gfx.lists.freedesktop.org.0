Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5DF7F0FE9
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 11:09:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CD6910E395;
	Mon, 20 Nov 2023 10:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB4ED10E393
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 10:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700474951; x=1732010951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yEnn7EFFdTIhox3OpyKoVwuH+YfyY+k4rUAmR2ZZa18=;
 b=C1UX9TIPCrrgeaqqbYHsQHWQL5viRTpJQrhK47oJq66TCfTfPfGWV4gC
 8NCbGs4KK83qrUo7iMKrp2Dcv3jzruvnwmpzJjEbxa/FYu4FTXFl9hjR6
 cTsmh7cqY128zSWIOrCyJvD2KT4DxGAwXa0P9of7/8pWTUzax2x+x6VJi
 3UdCan0FhC7BcdW5Ioz392Ec4gj/omblNcAoRNi5rcJWJgbUwUNwKqT6Y
 RSY5D8PwfKNHvq0ERLqdTcVp7KZ/E/HOR6cpWtXkJz1vPFDawFy+mYJd5
 ZgW/QfoiBNnkJzeu5rN547X8XACe9cXxQU6sxNnjn75Bi19M682So7CTv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="455916661"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="455916661"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 02:08:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="795429558"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="795429558"
Received: from dbailonh-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.57.59])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 02:08:50 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Nov 2023 12:08:31 +0200
Message-Id: <20231120100833.3221946-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231120100833.3221946-1-jouni.hogander@intel.com>
References: <20231120100833.3221946-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/3] drm/i915/display: use intel_bo_to_drm_bo
 in intel_fb.c
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

We are preparing for Xe driver. I915 and Xe object implementation are
differing. Do not use  i915_gem_object->base directly. Instead use
intel_bo_to_drm_bo.

Also use drm_gem_object_put instead of i915_gem_object_put. This should be
ok as i915_gem_object_put is really just doing 	__drm_gem_object_put.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index c1777ea35761..7c2df6c1f377 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1657,10 +1657,10 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct intel_framebuffer *
 		max_size = max(max_size, offset + size);
 	}
 
-	if (mul_u32_u32(max_size, tile_size) > obj->base.size) {
+	if (mul_u32_u32(max_size, tile_size) > intel_bo_to_drm_bo(obj)->size) {
 		drm_dbg_kms(&i915->drm,
 			    "fb too big for bo (need %llu bytes, have %zu bytes)\n",
-			    mul_u32_u32(max_size, tile_size), obj->base.size);
+			    mul_u32_u32(max_size, tile_size), intel_bo_to_drm_bo(obj)->size);
 		return -EINVAL;
 	}
 
@@ -1889,7 +1889,7 @@ static int intel_user_framebuffer_create_handle(struct drm_framebuffer *fb,
 						unsigned int *handle)
 {
 	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct drm_i915_private *i915 = to_i915(intel_bo_to_drm_bo(obj)->dev);
 
 	if (i915_gem_object_is_userptr(obj)) {
 		drm_dbg(&i915->drm,
@@ -1897,7 +1897,7 @@ static int intel_user_framebuffer_create_handle(struct drm_framebuffer *fb,
 		return -EINVAL;
 	}
 
-	return drm_gem_handle_create(file, &obj->base, handle);
+	return drm_gem_handle_create(file, intel_bo_to_drm_bo(obj), handle);
 }
 
 struct frontbuffer_fence_cb {
@@ -1975,7 +1975,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 			   struct drm_i915_gem_object *obj,
 			   struct drm_mode_fb_cmd2 *mode_cmd)
 {
-	struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(intel_bo_to_drm_bo(obj)->dev);
 	struct drm_framebuffer *fb = &intel_fb->base;
 	u32 max_stride;
 	unsigned int tiling, stride;
@@ -2153,7 +2153,7 @@ intel_user_framebuffer_create(struct drm_device *dev,
 	}
 
 	fb = intel_framebuffer_create(obj, &mode_cmd);
-	i915_gem_object_put(obj);
+	drm_gem_object_put(intel_bo_to_drm_bo(obj));
 
 	return fb;
 }
-- 
2.34.1

