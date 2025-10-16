Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD0EBE520E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 20:54:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3BD110EA6D;
	Thu, 16 Oct 2025 18:54:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LF5/iVu/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB86610EA6F;
 Thu, 16 Oct 2025 18:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760640895; x=1792176895;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tzpl8QpKWNbW/sInDO2DlFNkEjPjzM8E8Enq4vjcmUU=;
 b=LF5/iVu/XKyC1gg8YoE3jESQSarKW64i0UKExVtJTjSCqxtsm61KGRNA
 phcc2h1a23algYwIn33V+jh+4p9OG99zAc4fvoHrSV6KGn5PUtS5IJ2sI
 WxSjjdf6hngHcEPIp3AGkVaxgwSbY9DctfNMyZ4K+V/fsm7QvQrIN7mYQ
 xqZSWsVbm4ZQ2PzaqSuqWuUJ4nTvgSeT5eAThVnukF/9m/ql+A2HsKSOf
 9Z/Top1g9HNYMyarG3KMJ2r2ccpeBklv1qxm8UDNEC6f+Qpd5XWnL2Gpq
 vhQaqSwbkXk0BVSLlMoKchmoqIA+p1a4pD3qhPrSXYGfs2IrD1FUdntBl A==;
X-CSE-ConnectionGUID: IujnyAwSSZqulJz61JgeSw==
X-CSE-MsgGUID: I8U0rObzQOewKBG0WC7wZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62755605"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62755605"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:55 -0700
X-CSE-ConnectionGUID: NWIy8qS4S2OTBgaFKoDzyg==
X-CSE-MsgGUID: Oy/RXj05QvCGMbSZbDfiBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="219687995"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.12])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:53 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 10/10] drm/i915/gem:
 s/i915_gem_object_get_frontbuffer/i915_gem_object_frontbuffer_lookup/
Date: Thu, 16 Oct 2025 21:54:08 +0300
Message-ID: <20251016185408.22735-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
References: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The i915_gem_object_get_frontbuffer() name is rather confusing wrt.
intel_frontbuffer_get(). Rename to i915_gem_object_frontbuffer_lookup()
to make things less confusing.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object.c             | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h | 6 +++---
 drivers/gpu/drm/i915/i915_vma.c                        | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 36680eddf88e..828936e603a6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -478,7 +478,7 @@ void __i915_gem_object_flush_frontbuffer(struct drm_i915_gem_object *obj,
 {
 	struct i915_frontbuffer *front;
 
-	front = i915_gem_object_get_frontbuffer(obj);
+	front = i915_gem_object_frontbuffer_lookup(obj);
 	if (front) {
 		intel_frontbuffer_flush(&front->base, origin);
 		i915_gem_object_frontbuffer_put(front);
@@ -490,7 +490,7 @@ void __i915_gem_object_invalidate_frontbuffer(struct drm_i915_gem_object *obj,
 {
 	struct i915_frontbuffer *front;
 
-	front = i915_gem_object_get_frontbuffer(obj);
+	front = i915_gem_object_frontbuffer_lookup(obj);
 	if (front) {
 		intel_frontbuffer_invalidate(&front->base, origin);
 		i915_gem_object_frontbuffer_put(front);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
index 7ef89613c025..aaa15e7b3f17 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c
@@ -28,7 +28,7 @@ i915_gem_object_frontbuffer_get(struct drm_i915_gem_object *obj)
 	struct drm_i915_private *i915 = to_i915(obj->base.dev);
 	struct i915_frontbuffer *front, *cur;
 
-	front = i915_gem_object_get_frontbuffer(obj);
+	front = i915_gem_object_frontbuffer_lookup(obj);
 	if (front)
 		return front;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
index 385f7e8049b8..2133e29047c5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
@@ -46,8 +46,8 @@ void i915_gem_object_frontbuffer_ref(struct i915_frontbuffer *front);
 void i915_gem_object_frontbuffer_put(struct i915_frontbuffer *front);
 
 /**
- * i915_gem_object_get_frontbuffer - Get the object's frontbuffer
- * @obj: The object whose frontbuffer to get.
+ * i915_gem_object_frontbuffer_lookup - Look up the object's frontbuffer
+ * @obj: The object whose frontbuffer to look up.
  *
  * Get pointer to object's frontbuffer if such exists. Please note that RCU
  * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer.
@@ -55,7 +55,7 @@ void i915_gem_object_frontbuffer_put(struct i915_frontbuffer *front);
  * Return: pointer to object's frontbuffer is such exists or NULL
  */
 static inline struct i915_frontbuffer *
-i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj)
+i915_gem_object_frontbuffer_lookup(const struct drm_i915_gem_object *obj)
 {
 	struct i915_frontbuffer *front;
 
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index cb36daaa101d..6888d3f4557b 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1992,7 +1992,7 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
 	if (flags & EXEC_OBJECT_WRITE) {
 		struct i915_frontbuffer *front;
 
-		front = i915_gem_object_get_frontbuffer(obj);
+		front = i915_gem_object_frontbuffer_lookup(obj);
 		if (unlikely(front)) {
 			if (intel_frontbuffer_invalidate(&front->base, ORIGIN_CS))
 				i915_active_add_request(&front->write, rq);
-- 
2.49.1

