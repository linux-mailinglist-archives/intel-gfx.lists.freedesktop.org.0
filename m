Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB7672570B
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 10:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D776210E45E;
	Wed,  7 Jun 2023 08:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04AD810E45E
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 08:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686125573; x=1717661573;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JCrSPHmoGll6jExLYMBVluhFw8MAqpPZSSCjw/r6oaY=;
 b=dkQX8x+8Omn2xxYf4ez2VBuBYzTzQhszIen8l1A4rtvh0f9NHpoklpxg
 16PtJe6wvEAxZHfPUza+MYhj68vj6KD4Q+KMKu0MqGjxecgWWfKbtGmat
 Il/0SB8GZ1SXiI067a3IZNyKohBa6TFVruJrHMjLi0xAXvjUeME/ncgeq
 WiV3T2158eNSmLd6hPpAgcMYOXJo6OtWD2qy85vEPya0/d/uudz8eMuLN
 emISDm/aTgMRG9SaNEST8IrNbsmFVHdCHuB65KLWw1vrh40TW7gY/kozy
 4vJ97S2d/kNqqSyGXJbrg9CzhxNnda1ajNCuJVIPYFC1t6j33b8DdRYLd A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="336544422"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="336544422"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 01:12:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="956122222"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="956122222"
Received: from tneuman-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.210.241])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 01:12:52 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Jun 2023 11:12:25 +0300
Message-Id: <20230607081227.96992-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230607081227.96992-1-jouni.hogander@intel.com>
References: <20230607081227.96992-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915: Add getter/setter for
 i915_gem_object->frontbuffer
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

Add getter/setter for i915_gem_object->frontbuffer and use it instead of
directly touching i915_gem_object->frontbuffer frontbuffer pointer.

v2: Move getter/setter into i915_gem_object.h

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 18 ++---
 .../gpu/drm/i915/display/intel_frontbuffer.h  | 27 --------
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  4 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    | 66 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_vma.c               |  2 +-
 5 files changed, 75 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 3ce0436a0c7d..41ac65c98720 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -237,7 +237,7 @@ static void frontbuffer_release(struct kref *ref)
 	}
 	spin_unlock(&obj->vma.lock);
 
-	RCU_INIT_POINTER(obj->frontbuffer, NULL);
+	i915_gem_object_set_frontbuffer(obj, NULL);
 	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
 
 	i915_active_fini(&front->write);
@@ -250,9 +250,9 @@ struct intel_frontbuffer *
 intel_frontbuffer_get(struct drm_i915_gem_object *obj)
 {
 	struct drm_i915_private *i915 = intel_bo_to_i915(obj);
-	struct intel_frontbuffer *front;
+	struct intel_frontbuffer *front, *front_ret;
 
-	front = __intel_frontbuffer_get(obj);
+	front = i915_gem_object_get_frontbuffer(obj);
 	if (front)
 		return front;
 
@@ -269,16 +269,10 @@ intel_frontbuffer_get(struct drm_i915_gem_object *obj)
 			 I915_ACTIVE_RETIRE_SLEEPS);
 
 	spin_lock(&i915->display.fb_tracking.lock);
-	if (rcu_access_pointer(obj->frontbuffer)) {
-		kfree(front);
-		front = rcu_dereference_protected(obj->frontbuffer, true);
-		kref_get(&front->ref);
-	} else {
-		i915_gem_object_get(obj);
-		rcu_assign_pointer(obj->frontbuffer, front);
-	}
+	front_ret = i915_gem_object_set_frontbuffer(obj, front);
 	spin_unlock(&i915->display.fb_tracking.lock);
-
+	if (front_ret != front)
+		kfree(front);
 	return front;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index 3c474ed937fb..eeccc847331d 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -75,33 +75,6 @@ void intel_frontbuffer_flip(struct drm_i915_private *i915,
 
 void intel_frontbuffer_put(struct intel_frontbuffer *front);
 
-static inline struct intel_frontbuffer *
-__intel_frontbuffer_get(const struct drm_i915_gem_object *obj)
-{
-	struct intel_frontbuffer *front;
-
-	if (likely(!rcu_access_pointer(obj->frontbuffer)))
-		return NULL;
-
-	rcu_read_lock();
-	do {
-		front = rcu_dereference(obj->frontbuffer);
-		if (!front)
-			break;
-
-		if (unlikely(!kref_get_unless_zero(&front->ref)))
-			continue;
-
-		if (likely(front == rcu_access_pointer(obj->frontbuffer)))
-			break;
-
-		intel_frontbuffer_put(front);
-	} while (1);
-	rcu_read_unlock();
-
-	return front;
-}
-
 struct intel_frontbuffer *
 intel_frontbuffer_get(struct drm_i915_gem_object *obj);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 46a19b099ec8..c4857d0eef7f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -463,7 +463,7 @@ void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
 {
 	struct intel_frontbuffer *front;
 
-	front = __intel_frontbuffer_get(obj);
+	front = i915_gem_object_get_frontbuffer(obj);
 	if (front) {
 		intel_frontbuffer_flush(front, origin);
 		intel_frontbuffer_put(front);
@@ -475,7 +475,7 @@ void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
 {
 	struct intel_frontbuffer *front;
 
-	front = __intel_frontbuffer_get(obj);
+	front = i915_gem_object_get_frontbuffer(obj);
 	if (front) {
 		intel_frontbuffer_invalidate(front, origin);
 		intel_frontbuffer_put(front);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 884a17275b3a..268f042bfaa0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -891,4 +891,70 @@ static inline int i915_gem_object_userptr_validate(struct drm_i915_gem_object *o
 
 #endif
 
+/**
+ * i915_gem_object_get_frontbuffer - Get the object's frontbuffer
+ * @obj: The object whose frontbuffer to get.
+ *
+ * Get pointer to object's frontbuffer if such exists. Please note that RCU
+ * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer.
+ *
+ * Return: pointer to object's frontbuffer is such exists or NULL
+ */
+static inline struct intel_frontbuffer *
+i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj)
+{
+	struct intel_frontbuffer *front;
+
+	if (likely(!rcu_access_pointer(obj->frontbuffer)))
+		return NULL;
+
+	rcu_read_lock();
+	do {
+		front = rcu_dereference(obj->frontbuffer);
+		if (!front)
+			break;
+
+		if (unlikely(!kref_get_unless_zero(&front->ref)))
+			continue;
+
+		if (likely(front == rcu_access_pointer(obj->frontbuffer)))
+			break;
+
+		intel_frontbuffer_put(front);
+	} while (1);
+	rcu_read_unlock();
+
+	return front;
+}
+
+/**
+ * i915_gem_object_set_frontbuffer - Set the object's frontbuffer
+ * @obj: The object whose frontbuffer to set.
+ * @front: The frontbuffer to set
+ *
+ * Set object's frontbuffer pointer. If frontbuffer is already set for the
+ * object keep it and return it's pointer to the caller. Please note that RCU
+ * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer.
+ *
+ * Return: pointer to frontbuffer which was set.
+ */
+static inline struct intel_frontbuffer *
+i915_gem_object_set_frontbuffer(struct drm_i915_gem_object *obj,
+				struct intel_frontbuffer *front)
+{
+	struct intel_frontbuffer *front_ret = front;
+
+	if (!front) {
+		RCU_INIT_POINTER(obj->frontbuffer, NULL);
+	} else if (rcu_access_pointer(obj->frontbuffer)) {
+		front_ret = rcu_dereference_protected(obj->frontbuffer, true);
+		kref_get(&front_ret->ref);
+	} else {
+		drm_gem_object_get(intel_bo_to_drm_bo(obj));
+		rcu_assign_pointer(obj->frontbuffer, front);
+	}
+
+	return front_ret;
+}
+
 #endif
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index ffb425ba591c..c66ff2157f6a 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1908,7 +1908,7 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 	if (flags & EXEC_OBJECT_WRITE) {
 		struct intel_frontbuffer *front;
 
-		front = __intel_frontbuffer_get(obj);
+		front = i915_gem_object_get_frontbuffer(obj);
 		if (unlikely(front)) {
 			if (intel_frontbuffer_invalidate(front, ORIGIN_CS))
 				i915_active_add_request(&front->write, rq);
-- 
2.34.1

