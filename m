Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2859F7144BC
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 08:27:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF1E10E213;
	Mon, 29 May 2023 06:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CF1A10E213
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 06:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685341666; x=1716877666;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O/Tj1tG8UAEUDz9JNjuv3/gKLiYgdTDHv0qtaB17E6k=;
 b=Sx1O2ThhGkA9tJOBzQD858wunvc7oN0LSlEuwk1489jSvVlg9rxrO/DN
 fAVlZqbB8k/DW3eiE2gMBr9akOYmDanQ08C2huAOLbexkqlxVYElCFHmh
 NY5a/HpH3TW8HHAebgKUKshIlRgEPGIsWwN71MPnSlJrgHjEhEohikYkL
 TmLi5/3+7H7ZE8NPWjWbPU0CDBdn8pJcY4noif6w/ogY4WbZPOgFgd1Fa
 d4mt2HecrT0r8XLx7O3JuRWHYIQGIg+1Xx4+gt1VG7kUiTfxrueqelk1f
 AzpyiChBUUd1ia8H7p7gTfEU2QDn3KQD73T6aLgOZWIZbrFYNtkvql7i0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="418114385"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="418114385"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 23:27:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="739031524"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="739031524"
Received: from ilovin-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.208.33])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 23:27:44 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 May 2023 09:27:21 +0300
Message-Id: <20230529062723.1928520-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230529062723.1928520-1-jouni.hogander@intel.com>
References: <20230529062723.1928520-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Add getter/setter for
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 18 ++---
 .../gpu/drm/i915/display/intel_frontbuffer.h  | 27 -------
 drivers/gpu/drm/i915/gem/i915_gem_object.c    | 70 ++++++++++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_object.h    |  6 ++
 drivers/gpu/drm/i915/i915_vma.c               |  2 +-
 5 files changed, 81 insertions(+), 42 deletions(-)

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
index 46a19b099ec8..6945e903e106 100644
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
@@ -952,6 +952,72 @@ bool i915_gem_object_has_unknown_state(struct drm_i915_gem_object *obj)
 	return obj->mm.unknown_state;
 }
 
+/**
+ * i915_gem_object_get_frontbuffer - Get the object's frontbuffer
+ * @obj: The object whose frontbuffer to get.
+ *
+ * Get pointer to object's frontbuffer if such exists. Please note that RCU
+ * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer.
+ *
+ * Return: pointer to object's frontbuffer is such exists or NULL
+ */
+struct intel_frontbuffer *
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
+struct intel_frontbuffer *
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
+		drm_gem_object_get(&intel_bo_to_drm_bo(obj));
+		rcu_assign_pointer(obj->frontbuffer, front);
+	}
+
+	return front_ret;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftests/huge_gem_object.c"
 #include "selftests/huge_pages.c"
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
index 884a17275b3a..69c5fa91152a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
@@ -891,4 +891,10 @@ static inline int i915_gem_object_userptr_validate(struct drm_i915_gem_object *o
 
 #endif
 
+struct intel_frontbuffer *
+i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj);
+struct intel_frontbuffer *
+i915_gem_object_set_frontbuffer(struct drm_i915_gem_object *obj,
+				struct intel_frontbuffer *front);
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

