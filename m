Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0D497B2CE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:15:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BA7E10E4A8;
	Tue, 17 Sep 2024 16:15:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BBrPi+/v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0847410E4A8;
 Tue, 17 Sep 2024 16:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589749; x=1758125749;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KmrxsPQI4ZGBjwXpthliaxrT3jPjJ8xr9PWyw2w5kuM=;
 b=BBrPi+/v9iTTD+m11EKxxLppam2vxW6CFiwx5Wfk3CtD1nI529imwy+S
 VqzjkwfCxDFrkrdeAby+ru6pMMbVs8zRHWcynQlu0Tn0WWhSxfmWO+XQ3
 ReC98nuEtJVQYD5e3oXcFwYK5o7ZxIvIcCtXOo8EB/CFAUZlH3COpl0kv
 COSfdSBrb+Pr9bhGJzF5dBl0COw+5fNiv+Bno/5L9NZQ9zyfY2HLOM/fG
 bDh6YN/VsFp4d8ZkFlmmh1flRR/E91Zuf9SQZRSJPsZE4V2PIiyFukRHd
 zSd4FQcT3fXf306GqKQN5zKZJeC8Mw1dHT+ISLI+9tdD3v+do20rIxUu5 g==;
X-CSE-ConnectionGUID: U8oeREFvTdSHCnBwnMUw2Q==
X-CSE-MsgGUID: rcFqwxFvTQeJKCuGD3tvEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25343516"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25343516"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:48 -0700
X-CSE-ConnectionGUID: 6EThoVQnRmiGaS2bR1rmVQ==
X-CSE-MsgGUID: Yv/0sfTnS8y6FV7x/wazVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73989231"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 16/22] drm/i915/frontbuffer: convert frontbuffer->obj to
 struct drm_gem_object
Date: Tue, 17 Sep 2024 19:13:55 +0300
Message-Id: <51bdb3c9b798e28bd70c259fc3874d80bc9b7443.1726589119.git.jani.nikula@intel.com>
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

Do some opportunistic struct intel_display conversions while at it,
because it's more convenient to deal with.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 56 ++++++++++---------
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  2 +-
 2 files changed, 32 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 8d8b0a905cc3..6ed5f726ee60 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -55,8 +55,8 @@
  * cancelled as soon as busyness is detected.
  */
 
-#include "gem/i915_gem_object_frontbuffer.h"
-#include "gem/i915_gem_object_types.h"
+#include <drm/drm_gem.h>
+
 #include "i915_active.h"
 #include "i915_drv.h"
 #include "intel_bo.h"
@@ -175,14 +175,14 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 			   enum fb_op_origin origin,
 			   unsigned int frontbuffer_bits)
 {
-	struct drm_i915_private *i915 = intel_bo_to_i915(front->obj);
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = to_intel_display(front->obj->dev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (origin == ORIGIN_CS) {
-		spin_lock(&i915->display.fb_tracking.lock);
-		i915->display.fb_tracking.busy_bits |= frontbuffer_bits;
-		i915->display.fb_tracking.flip_bits &= ~frontbuffer_bits;
-		spin_unlock(&i915->display.fb_tracking.lock);
+		spin_lock(&display->fb_tracking.lock);
+		display->fb_tracking.busy_bits |= frontbuffer_bits;
+		display->fb_tracking.flip_bits &= ~frontbuffer_bits;
+		spin_unlock(&display->fb_tracking.lock);
 	}
 
 	trace_intel_frontbuffer_invalidate(display, frontbuffer_bits, origin);
@@ -197,14 +197,15 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 		      enum fb_op_origin origin,
 		      unsigned int frontbuffer_bits)
 {
-	struct drm_i915_private *i915 = intel_bo_to_i915(front->obj);
+	struct intel_display *display = to_intel_display(front->obj->dev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (origin == ORIGIN_CS) {
-		spin_lock(&i915->display.fb_tracking.lock);
+		spin_lock(&display->fb_tracking.lock);
 		/* Filter out new bits since rendering started. */
-		frontbuffer_bits &= i915->display.fb_tracking.busy_bits;
-		i915->display.fb_tracking.busy_bits &= ~frontbuffer_bits;
-		spin_unlock(&i915->display.fb_tracking.lock);
+		frontbuffer_bits &= display->fb_tracking.busy_bits;
+		display->fb_tracking.busy_bits &= ~frontbuffer_bits;
+		spin_unlock(&display->fb_tracking.lock);
 	}
 
 	if (frontbuffer_bits)
@@ -216,7 +217,7 @@ static void intel_frontbuffer_flush_work(struct work_struct *work)
 	struct intel_frontbuffer *front =
 		container_of(work, struct intel_frontbuffer, flush_work);
 
-	intel_bo_flush_if_display(intel_bo_to_drm_bo(front->obj));
+	intel_bo_flush_if_display(front->obj);
 	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
 	intel_frontbuffer_put(front);
 }
@@ -257,19 +258,20 @@ static void frontbuffer_retire(struct i915_active *ref)
 }
 
 static void frontbuffer_release(struct kref *ref)
-	__releases(&intel_bo_to_i915(front->obj)->display.fb_tracking.lock)
+	__releases(&to_intel_display(front->obj->dev)->fb_tracking.lock)
 {
 	struct intel_frontbuffer *ret, *front =
 		container_of(ref, typeof(*front), ref);
-	struct drm_i915_gem_object *obj = front->obj;
+	struct drm_gem_object *obj = front->obj;
+	struct intel_display *display = to_intel_display(obj->dev);
 
-	drm_WARN_ON(&intel_bo_to_i915(obj)->drm, atomic_read(&front->bits));
+	drm_WARN_ON(display->drm, atomic_read(&front->bits));
 
-	i915_ggtt_clear_scanout(obj);
+	i915_ggtt_clear_scanout(to_intel_bo(obj));
 
-	ret = intel_bo_set_frontbuffer(intel_bo_to_drm_bo(obj), NULL);
-	drm_WARN_ON(&intel_bo_to_i915(obj)->drm, ret);
-	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
+	ret = intel_bo_set_frontbuffer(obj, NULL);
+	drm_WARN_ON(display->drm, ret);
+	spin_unlock(&display->fb_tracking.lock);
 
 	i915_active_fini(&front->write);
 	kfree_rcu(front, rcu);
@@ -289,7 +291,7 @@ intel_frontbuffer_get(struct drm_gem_object *obj)
 	if (!front)
 		return NULL;
 
-	front->obj = to_intel_bo(obj);
+	front->obj = obj;
 	kref_init(&front->ref);
 	atomic_set(&front->bits, 0);
 	i915_active_init(&front->write,
@@ -310,7 +312,7 @@ void intel_frontbuffer_put(struct intel_frontbuffer *front)
 {
 	kref_put_lock(&front->ref,
 		      frontbuffer_release,
-		      &intel_bo_to_i915(front->obj)->display.fb_tracking.lock);
+		      &to_intel_display(front->obj->dev)->fb_tracking.lock);
 }
 
 /**
@@ -339,13 +341,17 @@ void intel_frontbuffer_track(struct intel_frontbuffer *old,
 	BUILD_BUG_ON(I915_MAX_PLANES > INTEL_FRONTBUFFER_BITS_PER_PIPE);
 
 	if (old) {
-		drm_WARN_ON(&intel_bo_to_i915(old->obj)->drm,
+		struct intel_display *display = to_intel_display(old->obj->dev);
+
+		drm_WARN_ON(display->drm,
 			    !(atomic_read(&old->bits) & frontbuffer_bits));
 		atomic_andnot(frontbuffer_bits, &old->bits);
 	}
 
 	if (new) {
-		drm_WARN_ON(&intel_bo_to_i915(new->obj)->drm,
+		struct intel_display *display = to_intel_display(new->obj->dev);
+
+		drm_WARN_ON(display->drm,
 			    atomic_read(&new->bits) & frontbuffer_bits);
 		atomic_or(frontbuffer_bits, &new->bits);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index 128682b9ae12..6237780a9f68 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -45,7 +45,7 @@ struct intel_frontbuffer {
 	struct kref ref;
 	atomic_t bits;
 	struct i915_active write;
-	struct drm_i915_gem_object *obj;
+	struct drm_gem_object *obj;
 	struct rcu_head rcu;
 
 	struct work_struct flush_work;
-- 
2.39.2

