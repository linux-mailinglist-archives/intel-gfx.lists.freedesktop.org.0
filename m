Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F4DBE5200
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 20:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D962E10EA79;
	Thu, 16 Oct 2025 18:54:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CB+v6+HM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AE9B10EA68;
 Thu, 16 Oct 2025 18:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760640877; x=1792176877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oeQk5atVl5Atr92F5aaUMY9Ju/VQIqBNzON771qGUl8=;
 b=CB+v6+HMPItBi3UEBleTjnB8vJ8aPqKVKrIhal8RVaMzy5+DBV8WdUSI
 JpFcN1Md4JcRZHPGUpjwjLN6kDumzzuGsoH3AJBLkU3/ZrsAt2vZfH7uC
 OTZzDMMvyL6BCpaG8LbMD+iAGuqcgl0MGWsxfByC+3JJoq0UHwuLZSdJg
 /VIBiOWw4uUAYXpBfNJUQ75VFn0BvNrXOAgPmQVKYB/yit8IrvNIlJZlQ
 ihmmf55SEVqVZKvY0ocuoiKsgVBONSKzXQ8rbxrfIcSTNEGiDS2gB0x6E
 SWhk3a9zQ/PwYSltbCw09rPldgc0DWi1bVRzIeb90Ew00t1KtmiWRo8jf w==;
X-CSE-ConnectionGUID: aqb4Vyn5Q7W8yNNAkp9mlQ==
X-CSE-MsgGUID: 90ZzEd+7QjyN5CLi2NBFig==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62894826"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62894826"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:37 -0700
X-CSE-ConnectionGUID: vh+ZJLp8S9KnPagl0bXmGw==
X-CSE-MsgGUID: NG6kUksQRmiXTXqQ3h/gaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182514654"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.12])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:36 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 06/10] drm/i915/frontbuffef: Split fb_tracking.lock into two
Date: Thu, 16 Oct 2025 21:54:04 +0300
Message-ID: <20251016185408.22735-7-ville.syrjala@linux.intel.com>
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

Our fb_tracking.lock is serving a double duty:
- protects fb_tracking.busy_bits
- provides the write-side protection for obj->frontbuffer

Split obj->frontbuffer role into a separate lock so that
we can clean up the current mess with the frontbuffer lifetime
management.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h      |  4 ++++
 drivers/gpu/drm/i915/display/intel_display_driver.c    |  1 +
 drivers/gpu/drm/i915/display/intel_frontbuffer.c       | 10 +++++-----
 drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h |  2 +-
 4 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index fa43636b89fa..13576d07c999 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -141,6 +141,10 @@ struct intel_dpll_global {
 };
 
 struct intel_frontbuffer_tracking {
+	/* protects obj->frontbuffer (write-side) */
+	spinlock_t frontbuffer_lock;
+
+	/* protects busy_bits */
 	spinlock_t lock;
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index f84a0b26b7a6..ac684f8c5d40 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -184,6 +184,7 @@ void intel_display_driver_early_probe(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
+	spin_lock_init(&display->fb_tracking.frontbuffer_lock);
 	spin_lock_init(&display->fb_tracking.lock);
 	mutex_init(&display->backlight.lock);
 	mutex_init(&display->audio.mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index bdf8bfa7deb9..02b06dfb9fee 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -210,7 +210,7 @@ static void frontbuffer_retire(struct i915_active *ref)
 }
 
 static void frontbuffer_release(struct kref *ref)
-	__releases(&to_intel_display(front->obj->dev)->fb_tracking.lock)
+	__releases(&to_intel_display(front->obj->dev)->fb_tracking.frontbuffer_lock)
 {
 	struct intel_frontbuffer *ret, *front =
 		container_of(ref, typeof(*front), ref);
@@ -223,7 +223,7 @@ static void frontbuffer_release(struct kref *ref)
 
 	ret = intel_bo_set_frontbuffer(obj, NULL);
 	drm_WARN_ON(display->drm, ret);
-	spin_unlock(&display->fb_tracking.lock);
+	spin_unlock(&display->fb_tracking.frontbuffer_lock);
 
 	i915_active_fini(&front->write);
 
@@ -256,9 +256,9 @@ intel_frontbuffer_get(struct drm_gem_object *obj)
 			 I915_ACTIVE_RETIRE_SLEEPS);
 	INIT_WORK(&front->flush_work, intel_frontbuffer_flush_work);
 
-	spin_lock(&display->fb_tracking.lock);
+	spin_lock(&display->fb_tracking.frontbuffer_lock);
 	cur = intel_bo_set_frontbuffer(obj, front);
-	spin_unlock(&display->fb_tracking.lock);
+	spin_unlock(&display->fb_tracking.frontbuffer_lock);
 
 	if (cur != front) {
 		drm_gem_object_put(obj);
@@ -272,7 +272,7 @@ void intel_frontbuffer_put(struct intel_frontbuffer *front)
 {
 	kref_put_lock(&front->ref,
 		      frontbuffer_release,
-		      &to_intel_display(front->obj->dev)->fb_tracking.lock);
+		      &to_intel_display(front->obj->dev)->fb_tracking.frontbuffer_lock);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
index b682969e3a29..1ec382c43aee 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
@@ -77,7 +77,7 @@ i915_gem_object_get_frontbuffer(const struct drm_i915_gem_object *obj)
  * Set object's frontbuffer pointer. If frontbuffer is already set for the
  * object keep it and return it's pointer to the caller. Please note that RCU
  * mechanism is used to handle e.g. ongoing removal of frontbuffer pointer. This
- * function is protected by i915->display->fb_tracking.lock
+ * function is protected by i915->display->fb_tracking.frontbuffer_lock
  *
  * Return: pointer to frontbuffer which was set.
  */
-- 
2.49.1

