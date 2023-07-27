Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D599764713
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 08:42:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88F9510E126;
	Thu, 27 Jul 2023 06:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11E6310E117
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 06:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690440120; x=1721976120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pDbpuOuqTqs/4tCvlBLQZbmd5bNm5wryjMqn+ofvZUc=;
 b=Losy935132wpG2uHYcpoRZ9drDYFGY1513eDFxBgUoYzfKHXxWdZq2R2
 uPkGeNM7Mm4boatGUVsPvv0tTfbHIbXbVix1xA0V4kC26tunIXSrLIYzr
 b7RFciceGgMKUTs4IZN5cZeHIPbWZyB5IocMbRo1jOm/a+xHjynLN9yey
 qL9prJXPPefWp14YDFiKJ/v8OlGqpnHNx7CZyBlNYnE2Ri1MDa9MLclsy
 zwtYTrJWMcogzu1DZl1UH/pfa6qfsC4gyF6nuropySNODfYiOMEQN5kFz
 S8bAm7wB1auW6qYJ76KMzobtPeWTg9rMZUYRib8cQmZWH+Nzra4Gdr9EP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="347830334"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="347830334"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 23:41:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="973431839"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="973431839"
Received: from vgrigo2x-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.35.8])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 23:41:58 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 09:41:39 +0300
Message-Id: <20230727064142.751976-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230727064142.751976-1-jouni.hogander@intel.com>
References: <20230727064142.751976-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/4] drm/i915: Add macros to get i915 device
 from i915_gem_object
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We want to stop touching directly i915_gem_object struct members in
intel_frontbuffer code. As a part of this we add helper macro to get i915
device from i915_gem_object.

v2: operate on and return pointer in defined macros

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_frontbuffer.c   | 18 +++++++++---------
 .../gpu/drm/i915/gem/i915_gem_object_types.h   |  3 +++
 2 files changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 17a7aa8b28c2..3ce0436a0c7d 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -167,7 +167,7 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 			   enum fb_op_origin origin,
 			   unsigned int frontbuffer_bits)
 {
-	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
+	struct drm_i915_private *i915 = intel_bo_to_i915(front->obj);
 
 	if (origin == ORIGIN_CS) {
 		spin_lock(&i915->display.fb_tracking.lock);
@@ -188,7 +188,7 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 		      enum fb_op_origin origin,
 		      unsigned int frontbuffer_bits)
 {
-	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
+	struct drm_i915_private *i915 = intel_bo_to_i915(front->obj);
 
 	if (origin == ORIGIN_CS) {
 		spin_lock(&i915->display.fb_tracking.lock);
@@ -221,14 +221,14 @@ static void frontbuffer_retire(struct i915_active *ref)
 }
 
 static void frontbuffer_release(struct kref *ref)
-	__releases(&to_i915(front->obj->base.dev)->display.fb_tracking.lock)
+	__releases(&intel_bo_to_i915(front->obj)->display.fb_tracking.lock)
 {
 	struct intel_frontbuffer *front =
 		container_of(ref, typeof(*front), ref);
 	struct drm_i915_gem_object *obj = front->obj;
 	struct i915_vma *vma;
 
-	drm_WARN_ON(obj->base.dev, atomic_read(&front->bits));
+	drm_WARN_ON(&intel_bo_to_i915(obj)->drm, atomic_read(&front->bits));
 
 	spin_lock(&obj->vma.lock);
 	for_each_ggtt_vma(vma, obj) {
@@ -238,7 +238,7 @@ static void frontbuffer_release(struct kref *ref)
 	spin_unlock(&obj->vma.lock);
 
 	RCU_INIT_POINTER(obj->frontbuffer, NULL);
-	spin_unlock(&to_i915(obj->base.dev)->display.fb_tracking.lock);
+	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
 
 	i915_active_fini(&front->write);
 
@@ -249,7 +249,7 @@ static void frontbuffer_release(struct kref *ref)
 struct intel_frontbuffer *
 intel_frontbuffer_get(struct drm_i915_gem_object *obj)
 {
-	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct drm_i915_private *i915 = intel_bo_to_i915(obj);
 	struct intel_frontbuffer *front;
 
 	front = __intel_frontbuffer_get(obj);
@@ -286,7 +286,7 @@ void intel_frontbuffer_put(struct intel_frontbuffer *front)
 {
 	kref_put_lock(&front->ref,
 		      frontbuffer_release,
-		      &to_i915(front->obj->base.dev)->display.fb_tracking.lock);
+		      &intel_bo_to_i915(front->obj)->display.fb_tracking.lock);
 }
 
 /**
@@ -315,13 +315,13 @@ void intel_frontbuffer_track(struct intel_frontbuffer *old,
 	BUILD_BUG_ON(I915_MAX_PLANES > INTEL_FRONTBUFFER_BITS_PER_PIPE);
 
 	if (old) {
-		drm_WARN_ON(old->obj->base.dev,
+		drm_WARN_ON(&intel_bo_to_i915(old->obj)->drm,
 			    !(atomic_read(&old->bits) & frontbuffer_bits));
 		atomic_andnot(frontbuffer_bits, &old->bits);
 	}
 
 	if (new) {
-		drm_WARN_ON(new->obj->base.dev,
+		drm_WARN_ON(&intel_bo_to_i915(new->obj)->drm,
 			    atomic_read(&new->bits) & frontbuffer_bits);
 		atomic_or(frontbuffer_bits, &new->bits);
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index e72c57716bee..3de7db70f4ed 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -718,6 +718,9 @@ struct drm_i915_gem_object {
 	};
 };
 
+#define intel_bo_to_drm_bo(bo) (&(bo)->base)
+#define intel_bo_to_i915(bo) to_i915(intel_bo_to_drm_bo(bo)->dev)
+
 static inline struct drm_i915_gem_object *
 to_intel_bo(struct drm_gem_object *gem)
 {
-- 
2.34.1

