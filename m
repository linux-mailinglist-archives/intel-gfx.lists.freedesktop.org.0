Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C029F7F2BB7
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 12:27:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E41C10E267;
	Tue, 21 Nov 2023 11:27:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 346EF10E267
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 11:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700566072; x=1732102072;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yEnn7EFFdTIhox3OpyKoVwuH+YfyY+k4rUAmR2ZZa18=;
 b=d8scq2p+P7Hut2L6Le3F4DoAmG0+yLCQsWZfPdQFixEPJ0YElzKHZnLs
 laBPqwt6LlMm3Iyc8wM9P3jMLwspolV+XOxXxyxHcEyN0xIJPEptWKQzn
 3BaCxmiKMfOosP0pY0myaWdI580ItTUqnB97aXHVGGCQOd73x2NjF/wxA
 1aERo9vG43sSn/nAYmM1U/7JnCR1Gj/fPh8PEN/+IASYzkFwyJ91z4peT
 J6zgmGaOKdWbYfikyzfcP22TKudnLyBeSXyZKDFCllvOF3TltqedQvy5i
 IsR1RINg0WABFGKfMDCFCUPikAYhwVaBFFigk+80MImHL024LXKX7EYAG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="390674948"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="390674948"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 03:27:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="890223222"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="890223222"
Received: from ttmerile-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.39.236])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 03:27:50 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Nov 2023 13:27:26 +0200
Message-Id: <20231121112729.4191245-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231121112729.4191245-1-jouni.hogander@intel.com>
References: <20231121112729.4191245-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 1/4] drm/i915/display: use intel_bo_to_drm_bo
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

