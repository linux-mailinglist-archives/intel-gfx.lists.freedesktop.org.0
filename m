Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5314397B2CF
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:15:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECA9410E4B5;
	Tue, 17 Sep 2024 16:15:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SejmiL+B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3721A10E4B5;
 Tue, 17 Sep 2024 16:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589751; x=1758125751;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RLSvpvUXVk+prycmYBxLE9SrojanK0JjrO5sZbqllBo=;
 b=SejmiL+BAVv5RNDcvzktt1yT488k5txZuT49A21YJK5um870UKgEkV1k
 3mk2JkuZl4jHngEZ77PKkJ2Pp3dNvzfzCZ/wbitsTX6jT/RiggHILoNBK
 3C0DxdmoSH0UVotTsVTqzsbDPpt/V1frupcPt0pyrpksOJ0RItnZ3pubb
 EtwmwCSnH5Sy0sR5Aa2f20it6Ls9OeLsYbYqS7xqJD6DXeErvnDEe6S5t
 D4h7vbltSJqLc2qJQmn7pzJkjIzROYeoEihrw9rHpBdW39+K+0ojYgBH6
 5RFKJJJmeuq2dZx4Szzw/iG3T74Gg0/oNR6O3MTSoL7xFp9iH9yYpteFL A==;
X-CSE-ConnectionGUID: oU74aBCUSQGoXcH/v3viAw==
X-CSE-MsgGUID: ee+MEmJWRtilOHxHSN0c6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="24990322"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="24990322"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:42 -0700
X-CSE-ConnectionGUID: Y7a4WRg6QN+jLWBIZDSt8w==
X-CSE-MsgGUID: GRA1JqsMQeu+bMzu2XYrcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73337112"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 15/22] drm/i915/frontbuffer: convert intel_frontbuffer_get()
 to struct drm_gem_object
Date: Tue, 17 Sep 2024 19:13:54 +0300
Message-Id: <358cfcb5eb666732cd7ae21e4f63d07837960ec2.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer the driver agnostic struct drm_gem_object over i915 specific
struct drm_i915_gem_object.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c          |  2 +-
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_frontbuffer.h |  3 ++-
 drivers/gpu/drm/i915/display/intel_overlay.c     |  2 +-
 4 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 06bf25464ec9..6ac9642a65ee 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1976,7 +1976,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 	if (ret)
 		return ret;
 
-	intel_fb->frontbuffer = intel_frontbuffer_get(to_intel_bo(obj));
+	intel_fb->frontbuffer = intel_frontbuffer_get(obj);
 	if (!intel_fb->frontbuffer) {
 		ret = -ENOMEM;
 		goto err;
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 1be72901efb0..8d8b0a905cc3 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -216,7 +216,7 @@ static void intel_frontbuffer_flush_work(struct work_struct *work)
 	struct intel_frontbuffer *front =
 		container_of(work, struct intel_frontbuffer, flush_work);
 
-	i915_gem_object_flush_if_display(front->obj);
+	intel_bo_flush_if_display(intel_bo_to_drm_bo(front->obj));
 	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
 	intel_frontbuffer_put(front);
 }
@@ -276,12 +276,12 @@ static void frontbuffer_release(struct kref *ref)
 }
 
 struct intel_frontbuffer *
-intel_frontbuffer_get(struct drm_i915_gem_object *obj)
+intel_frontbuffer_get(struct drm_gem_object *obj)
 {
-	struct drm_i915_private *i915 = intel_bo_to_i915(obj);
+	struct drm_i915_private *i915 = to_i915(obj->dev);
 	struct intel_frontbuffer *front, *cur;
 
-	front = intel_bo_get_frontbuffer(intel_bo_to_drm_bo(obj));
+	front = intel_bo_get_frontbuffer(obj);
 	if (front)
 		return front;
 
@@ -289,7 +289,7 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
 	if (!front)
 		return NULL;
 
-	front->obj = obj;
+	front->obj = to_intel_bo(obj);
 	kref_init(&front->ref);
 	atomic_set(&front->bits, 0);
 	i915_active_init(&front->write,
@@ -299,7 +299,7 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
 	INIT_WORK(&front->flush_work, intel_frontbuffer_flush_work);
 
 	spin_lock(&i915->display.fb_tracking.lock);
-	cur = intel_bo_set_frontbuffer(intel_bo_to_drm_bo(obj), front);
+	cur = intel_bo_set_frontbuffer(obj, front);
 	spin_unlock(&i915->display.fb_tracking.lock);
 	if (cur != front)
 		kfree(front);
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index abb51e8bb920..128682b9ae12 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -30,6 +30,7 @@
 
 #include "i915_active_types.h"
 
+struct drm_gem_object;
 struct drm_i915_private;
 
 enum fb_op_origin {
@@ -77,7 +78,7 @@ void intel_frontbuffer_flip(struct drm_i915_private *i915,
 void intel_frontbuffer_put(struct intel_frontbuffer *front);
 
 struct intel_frontbuffer *
-intel_frontbuffer_get(struct drm_i915_gem_object *obj);
+intel_frontbuffer_get(struct drm_gem_object *obj);
 
 void __intel_fb_invalidate(struct intel_frontbuffer *front,
 			   enum fb_op_origin origin,
diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index b89541458765..2ec14096ba9c 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -294,7 +294,7 @@ static void intel_overlay_flip_prepare(struct intel_overlay *overlay,
 	drm_WARN_ON(&overlay->i915->drm, overlay->old_vma);
 
 	if (vma)
-		frontbuffer = intel_frontbuffer_get(vma->obj);
+		frontbuffer = intel_frontbuffer_get(intel_bo_to_drm_bo(vma->obj));
 
 	intel_frontbuffer_track(overlay->frontbuffer, frontbuffer,
 				INTEL_FRONTBUFFER_OVERLAY(pipe));
-- 
2.39.2

