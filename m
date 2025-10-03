Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA19BB740D
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Oct 2025 16:57:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0629210E93A;
	Fri,  3 Oct 2025 14:57:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XrHTV7fY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF0E110E93B;
 Fri,  3 Oct 2025 14:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759503463; x=1791039463;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y0YcTDBpYzbuiMBSIXYA4wMUPd9I5QodhUFhE6JoFY8=;
 b=XrHTV7fY6IWSBYfFRbyJsKN0T5ckycEDzZy5nDla8/6m/hnEd0h0eUaR
 +RJrRbSYlVrd18LCLbUlXQN0C80pldxJLgDRxr+12uHBq7/c5dvsFe8aI
 fN6zIj8yXCECv7XIvcGS7W1aKL+YZI9G4zoRpyMWh8Iy4JGcyOuUJbkjn
 j1oIGZ4927E/n9z0oWLSHW0SOlcDkwhJBcQk+6kSqYps1i4J4wxGUhTT/
 3ZKqKYzSvUzfGivBHeLfgFQ3tS11ucoZG3fJVHav89RdvrVnBFvb3v+lx
 pZtSBZODVMPluREcdFUhHNMZPViI8lcsNxmuGD51tIUSgTYCJZo4HIqOF w==;
X-CSE-ConnectionGUID: VVKzfpdvQ12TOv6tH0qvTg==
X-CSE-MsgGUID: mkyRCX/rR/64aH9xEW4NUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11571"; a="73138755"
X-IronPort-AV: E=Sophos;i="6.18,312,1751266800"; d="scan'208";a="73138755"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 07:57:43 -0700
X-CSE-ConnectionGUID: BWl1FPQZTAGl2bnMzrgM6g==
X-CSE-MsgGUID: 9iQF7ynhS3C2TCTOSqMwnA==
X-ExtLoop1: 1
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.127])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2025 07:57:41 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 1/5] drm/i915/frontbuffer: Move bo refcounting
 intel_frontbuffer_{get, release}()
Date: Fri,  3 Oct 2025 17:57:30 +0300
Message-ID: <20251003145734.7634-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251003145734.7634-1-ville.syrjala@linux.intel.com>
References: <20251003145734.7634-1-ville.syrjala@linux.intel.com>
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

Currently xe's intel_frontbuffer implementation forgets to
hold a reference on the bo. This makes the entire thing
extremely fragile as the cleanup order now depends on bo
references held by other things
(namely intel_fb_bo_framebuffer_fini()).

Move the bo refcounting to intel_frontbuffer_{get,release}()
so that both i915 and xe do this the same way.

I first tried to fix this by having xe do the refcounting
from its intel_bo_set_frontbuffer() implementation
(which is what i915 does currently), but turns out xe's
drm_gem_object_free() can sleep and thus drm_gem_object_put()
isn't safe to call while we hold fb_tracking.lock.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.c       | 10 +++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h |  2 --
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 43be5377ddc1..73ed28ac9573 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -270,6 +270,8 @@ static void frontbuffer_release(struct kref *ref)
 	spin_unlock(&display->fb_tracking.lock);
 
 	i915_active_fini(&front->write);
+
+	drm_gem_object_put(obj);
 	kfree_rcu(front, rcu);
 }
 
@@ -287,6 +289,8 @@ intel_frontbuffer_get(struct drm_gem_object *obj)
 	if (!front)
 		return NULL;
 
+	drm_gem_object_get(obj);
+
 	front->obj = obj;
 	kref_init(&front->ref);
 	atomic_set(&front->bits, 0);
@@ -299,8 +303,12 @@ intel_frontbuffer_get(struct drm_gem_object *obj)
 	spin_lock(&display->fb_tracking.lock);
 	cur = intel_bo_set_frontbuffer(obj, front);
 	spin_unlock(&display->fb_tracking.lock);
-	if (cur != front)
+
+	if (cur != front) {
+		drm_gem_object_put(obj);
 		kfree(front);
+	}
+
 	return cur;
 }
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
index b6dc3d1b9bb1..b682969e3a29 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
@@ -89,12 +89,10 @@ i915_gem_object_set_frontbuffer(struct drm_i915_gem_object *obj,
 
 	if (!front) {
 		RCU_INIT_POINTER(obj->frontbuffer, NULL);
-		drm_gem_object_put(intel_bo_to_drm_bo(obj));
 	} else if (rcu_access_pointer(obj->frontbuffer)) {
 		cur = rcu_dereference_protected(obj->frontbuffer, true);
 		kref_get(&cur->ref);
 	} else {
-		drm_gem_object_get(intel_bo_to_drm_bo(obj));
 		rcu_assign_pointer(obj->frontbuffer, front);
 	}
 
-- 
2.49.1

