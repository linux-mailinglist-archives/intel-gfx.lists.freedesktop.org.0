Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED16BBEBAD
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 18:47:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F4B510E437;
	Mon,  6 Oct 2025 16:47:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Am4fXMBS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F2F110E437;
 Mon,  6 Oct 2025 16:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759769234; x=1791305234;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TOXu/j3pM9swp+zVD1K7gMt/ivWKfurgjZ3qcNjNJOc=;
 b=Am4fXMBSU0qf7S18H75OlaV/aWUjwrt5yPJ/eTq+WmLSK7Cgk3FeAUlb
 acflt6ADty42NPKD3nUVNURtTNPCF9lDQLbizNiU90WhM3rDWUmUE5Ckm
 tIID56tGko2SbOPaHjrBmP05yhrEoqvxXWvn07fFtG8i09DhLsP5bN/RI
 RprZTYO9e2YEUobS55AIKdkqpQThhHPMN0mzlAQPOPT5C290GsevThqcc
 meis5kmP2uK2Hfrkcd6acut8E6KURFAMDyUDg/P5nXddjZtY+o9lgjH2x
 1D0tutmtWmOFtMrGJTolmMtCd4H5wzCJdZSWdrpDxk36j3WgmtNjfrbzB g==;
X-CSE-ConnectionGUID: WWpq1mD1TR67rQq/sBSyaA==
X-CSE-MsgGUID: UQYfPBefTEyqP1J1LY9hDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="65795679"
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="65795679"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:47:14 -0700
X-CSE-ConnectionGUID: twBx0/PbShKn17+XBU7opg==
X-CSE-MsgGUID: iqjpiGwmRPO63iyu4qXj0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="179861562"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.80])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:47:12 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 06/10] drm/i915/frontbuffef: Split fb_tracking.lock into two
Date: Mon,  6 Oct 2025 19:46:44 +0300
Message-ID: <20251006164648.6761-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251006164648.6761-1-ville.syrjala@linux.intel.com>
References: <20251006164648.6761-1-ville.syrjala@linux.intel.com>
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
index 99c9e5bac78d..11c74aa99ab9 100644
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
 	kfree_rcu(front, rcu);
@@ -252,9 +252,9 @@ intel_frontbuffer_get(struct drm_gem_object *obj)
 			 I915_ACTIVE_RETIRE_SLEEPS);
 	INIT_WORK(&front->flush_work, intel_frontbuffer_flush_work);
 
-	spin_lock(&display->fb_tracking.lock);
+	spin_lock(&display->fb_tracking.frontbuffer_lock);
 	cur = intel_bo_set_frontbuffer(obj, front);
-	spin_unlock(&display->fb_tracking.lock);
+	spin_unlock(&display->fb_tracking.frontbuffer_lock);
 	if (cur != front)
 		kfree(front);
 	return cur;
@@ -264,7 +264,7 @@ void intel_frontbuffer_put(struct intel_frontbuffer *front)
 {
 	kref_put_lock(&front->ref,
 		      frontbuffer_release,
-		      &to_intel_display(front->obj->dev)->fb_tracking.lock);
+		      &to_intel_display(front->obj->dev)->fb_tracking.frontbuffer_lock);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
index b6dc3d1b9bb1..84f82c2289a8 100644
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

