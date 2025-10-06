Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7645BBEBB6
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 18:47:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A57210E03D;
	Mon,  6 Oct 2025 16:47:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ktQ1+l2Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7B6D10E03D;
 Mon,  6 Oct 2025 16:47:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759769242; x=1791305242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AtveMzGiyRI7RgsrntSwwRispR3H/t0jZUqNgmOCXb0=;
 b=ktQ1+l2QOm/s8Uz1Todvj4Az8JEcqfj55/c9pxxDYneN/L3m8NK8c1bD
 4LNb5oFt265LUPgeoDCcefVBmz33lKTIelDko+N9wMbgjb8AN7yaPRQwi
 SnxwatJa1uGnuLUiOpiev2KiKUVj/rz90ijjOSe8vREnnv4gP02XRuqrk
 Zu7H/tGtjH6uOm0uR8uX5u7rSL4nKbBPcwTL3yGbF6IlGQ2FOHHgf8/Wz
 m+QJGRLiW1olH2lTNNW9mrFR4LA15DqVOdLYPSeYVGLRvKII8NFT1hlSW
 yR7gAwC9yFof+KxP3A059/sy2DJAONmU6utgDdC2B6Ab2gl7qJgbxLDn2 A==;
X-CSE-ConnectionGUID: PYWjSoyvSPy97SWjc/BiQQ==
X-CSE-MsgGUID: 7TptSyY7T3yuBnxiK6OPYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="65795691"
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="65795691"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:47:21 -0700
X-CSE-ConnectionGUID: Jj+hJYdWTHqNvl8bMH0i7A==
X-CSE-MsgGUID: lzdxU/dRS36jnPbKDkGI6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,320,1751266800"; d="scan'208";a="179861598"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.80])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 09:47:20 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/10] drm/i915/frontbuffer: Add intel_frontbuffer::display
Date: Mon,  6 Oct 2025 19:46:46 +0300
Message-ID: <20251006164648.6761-9-ville.syrjala@linux.intel.com>
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

After upcoming intel_frontbuffer lifetime related changed we
won't need intel_frontbuffer::obj for anything apart from
getting at the display. Add a direct pointer for that instead
so that the obj pointer can be completely eliminated.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 19 ++++++++-----------
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  1 +
 2 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 34bbf18f3c08..abe7d29781e1 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -128,7 +128,7 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 			   enum fb_op_origin origin,
 			   unsigned int frontbuffer_bits)
 {
-	struct intel_display *display = to_intel_display(front->obj->dev);
+	struct intel_display *display = front->display;
 
 	if (origin == ORIGIN_CS) {
 		spin_lock(&display->fb_tracking.lock);
@@ -148,7 +148,7 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 		      enum fb_op_origin origin,
 		      unsigned int frontbuffer_bits)
 {
-	struct intel_display *display = to_intel_display(front->obj->dev);
+	struct intel_display *display = front->display;
 
 	if (origin == ORIGIN_DIRTYFB)
 		intel_bo_frontbuffer_flush_for_display(front);
@@ -215,12 +215,12 @@ static void frontbuffer_retire(struct i915_active *ref)
 }
 
 static void frontbuffer_release(struct kref *ref)
-	__releases(&to_intel_display(front->obj->dev)->fb_tracking.frontbuffer_lock)
+	__releases(&front->display->fb_tracking.frontbuffer_lock)
 {
 	struct intel_frontbuffer *ret, *front =
 		container_of(ref, typeof(*front), ref);
+	struct intel_display *display = front->display;
 	struct drm_gem_object *obj = front->obj;
-	struct intel_display *display = to_intel_display(obj->dev);
 
 	drm_WARN_ON(display->drm, atomic_read(&front->bits));
 
@@ -248,6 +248,7 @@ intel_frontbuffer_get(struct drm_gem_object *obj)
 	if (!front)
 		return NULL;
 
+	front->display = display;
 	front->obj = obj;
 	kref_init(&front->ref);
 	atomic_set(&front->bits, 0);
@@ -269,7 +270,7 @@ void intel_frontbuffer_put(struct intel_frontbuffer *front)
 {
 	kref_put_lock(&front->ref,
 		      frontbuffer_release,
-		      &to_intel_display(front->obj->dev)->fb_tracking.frontbuffer_lock);
+		      &front->display->fb_tracking.frontbuffer_lock);
 }
 
 /**
@@ -298,17 +299,13 @@ void intel_frontbuffer_track(struct intel_frontbuffer *old,
 	BUILD_BUG_ON(I915_MAX_PLANES > INTEL_FRONTBUFFER_BITS_PER_PIPE);
 
 	if (old) {
-		struct intel_display *display = to_intel_display(old->obj->dev);
-
-		drm_WARN_ON(display->drm,
+		drm_WARN_ON(old->display->drm,
 			    !(atomic_read(&old->bits) & frontbuffer_bits));
 		atomic_andnot(frontbuffer_bits, &old->bits);
 	}
 
 	if (new) {
-		struct intel_display *display = to_intel_display(new->obj->dev);
-
-		drm_WARN_ON(display->drm,
+		drm_WARN_ON(new->display->drm,
 			    atomic_read(&new->bits) & frontbuffer_bits);
 		atomic_or(frontbuffer_bits, &new->bits);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index 293c2d0152d6..ff2a6ac75a34 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -43,6 +43,7 @@ enum fb_op_origin {
 
 struct intel_frontbuffer {
 	struct kref ref;
+	struct intel_display *display;
 	atomic_t bits;
 	struct i915_active write;
 	struct drm_gem_object *obj;
-- 
2.49.1

