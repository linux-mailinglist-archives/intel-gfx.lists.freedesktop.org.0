Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B551BE5202
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 20:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51B1010EA68;
	Thu, 16 Oct 2025 18:54:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QIpk9uD1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E91E410E346;
 Thu, 16 Oct 2025 18:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760640886; x=1792176886;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f5DxwrtekFCE6MniCQe22HZIeACEJq+K0sr8a7JZbDk=;
 b=QIpk9uD1SN/v+PFyEJ9w7rNQi8HZPdqlE4+QN5JSY4ChhfPircvkek7c
 MDKA2OOFnCdX4U6bqk62yvn5KLGctstN76oVh1MnnNyruuMRlY8HDGl4u
 lWmsBpHHom/q2wGYcy+XjcyxrDTAAFkqRcAJ02vuFYlIuirMzNCCcBeV0
 DAFxfWUGXnlI4+Ic5HhQGTtzw3LzJo9OR72Wp9wXtbqkBAfdHYedPNEi9
 SjjF2rt4yW8RAZFf/l4M34BJGUAX/usNNCw0+wXHv+5U9KEAppadaZYm5
 wVJ5TvBzhvOYxeoDNM2yl06QPogwLBN3lowbL+29RgO2gRNDU7SK+g2JT g==;
X-CSE-ConnectionGUID: i1Bw+yvcQTCk6JYuv1r3qg==
X-CSE-MsgGUID: xcsH4ynHRpy1svG2FKsOhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62755594"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62755594"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:46 -0700
X-CSE-ConnectionGUID: iEipfbuLR1Oxhl5L8+mdCA==
X-CSE-MsgGUID: w85+GyFMSSyEzK9T7orVZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="219687962"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.12])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:44 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 08/10] drm/i915/frontbuffer: Add intel_frontbuffer::display
Date: Thu, 16 Oct 2025 21:54:06 +0300
Message-ID: <20251016185408.22735-9-ville.syrjala@linux.intel.com>
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

After upcoming intel_frontbuffer lifetime related changed we
won't need intel_frontbuffer::obj for anything apart from
getting at the display. Add a direct pointer for that instead
so that the obj pointer can be completely eliminated.

Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 19 ++++++++-----------
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  1 +
 2 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index e5f3f0d555a8..5d627eac07bd 100644
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
 
@@ -253,6 +253,7 @@ intel_frontbuffer_get(struct drm_gem_object *obj)
 	drm_gem_object_get(obj);
 
 	front->obj = obj;
+	front->display = display;
 	kref_init(&front->ref);
 	atomic_set(&front->bits, 0);
 	i915_active_init(&front->write,
@@ -277,7 +278,7 @@ void intel_frontbuffer_put(struct intel_frontbuffer *front)
 {
 	kref_put_lock(&front->ref,
 		      frontbuffer_release,
-		      &to_intel_display(front->obj->dev)->fb_tracking.frontbuffer_lock);
+		      &front->display->fb_tracking.frontbuffer_lock);
 }
 
 /**
@@ -306,17 +307,13 @@ void intel_frontbuffer_track(struct intel_frontbuffer *old,
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

