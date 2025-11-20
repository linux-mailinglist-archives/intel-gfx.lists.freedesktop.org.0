Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38153C74A5C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 15:49:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC60510E75E;
	Thu, 20 Nov 2025 14:49:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D4haGhHZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2208910E2A9;
 Thu, 20 Nov 2025 14:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763650156; x=1795186156;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lFyZY6LPNtjX76oiKyculILB37UJIe/X7PqOyoqT41E=;
 b=D4haGhHZPDvJyGDlsEHvlTd6QQLnsJoOLtGomjs58gjSbd9bI1O1w2Xg
 gMxHMLSZy4wN9yj1YkcYTN0XPdN3weO4AYO8ojqQ4e0WWRk0lrQP0j3xX
 4PC4pIDcyXwICTK7TXOPiUPgHDrLUbLi3+0Cd7/6W5IcIjZtHpUqDpKNz
 tE+QxyfNUJe01wmzqVHB93ZPPRzr69FZ/shKBblrULUMIBcn5rn9V8+sm
 J4KH+czZoOEcfgy4QfChb1XoBBMiDl2WaysAOK+K97eTkAca3hadI49kD
 vzB0z8UMMD0G3G4pD9pG6Tw+siZ+8o4nx6PsvhFgv6YmIuj9zM5qvO+Re A==;
X-CSE-ConnectionGUID: tUTj83sZS4+5ioPsMSW3jQ==
X-CSE-MsgGUID: OtUITxI3TomLwQZAhwij2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65652324"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="65652324"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 06:49:15 -0800
X-CSE-ConnectionGUID: lUk+tnyZSR2cp30HrzPKpA==
X-CSE-MsgGUID: xQ5GvflkSuK1WFERPwQ1qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="190669402"
Received: from inaky-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.245.244.92])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 06:49:15 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915: Walk crtcs in pipe order
Date: Thu, 20 Nov 2025 16:49:10 +0200
Message-ID: <20251120144910.13028-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
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

Currently our crtcs are registered in pipe order, and thus
all the for_intel_crtc*() iterators walk the crtcs in pipe
order. There are a bunch of places that more or less depend
on that. Eg. during plane updates and such we want joined
pipes to be processed back-to-back to give a better chance
of an atomic update across the whole set.

When we start to register crtcs in a different order we don't
want to change the order in which the pipes get handled.
Decouple the for_each_intel_crtc*() iterators from the crtc
registration order by using a separate list which will be
sorted by the pipe rather than the crtc index.

We could priobably use a simple array or something, but that
would require some kind of extra iterator variable for the
macros, and thus would require a lot more changes. Using
a linked list keeps the fallout minimal. We can look at
using a more optimal data structure later.

I also added this extra junk to the atomic state iterators:
"(__i) = drm_crtc_index(&(crtc)->base), (void)(__i)"
even though the macro itself no longer needs the "__i" iterator.
This in case the "__i" is used by the caller, and to
avoid compiler warnings if it's completely unused now.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c     | 20 +++++
 drivers/gpu/drm/i915/display/intel_display.h  | 90 ++++++++-----------
 .../gpu/drm/i915/display/intel_display_core.h |  3 +
 .../drm/i915/display/intel_display_driver.c   |  1 +
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/xe/display/xe_display.c       |  1 +
 6 files changed, 64 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 153ff4b4b52c..7ebbde716238 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -209,6 +209,8 @@ static struct intel_crtc *intel_crtc_alloc(void)
 	crtc->base.state = &crtc_state->uapi;
 	crtc->config = crtc_state;
 
+	INIT_LIST_HEAD(&crtc->pipe_head);
+
 	return crtc;
 }
 
@@ -222,6 +224,8 @@ static void intel_crtc_destroy(struct drm_crtc *_crtc)
 {
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
 
+	list_del(&crtc->pipe_head);
+
 	cpu_latency_qos_remove_request(&crtc->vblank_pm_qos);
 
 	drm_crtc_cleanup(&crtc->base);
@@ -308,6 +312,20 @@ static const struct drm_crtc_funcs i8xx_crtc_funcs = {
 	.get_vblank_timestamp = intel_crtc_get_vblank_timestamp,
 };
 
+static void add_crtc_to_pipe_list(struct intel_display *display, struct intel_crtc *crtc)
+{
+	struct intel_crtc *iter;
+
+	list_for_each_entry(iter, &display->pipe_list, pipe_head) {
+		if (iter->pipe > crtc->pipe) {
+			list_add_tail(&crtc->pipe_head, &iter->pipe_head);
+			return;
+		}
+	}
+
+	list_add_tail(&crtc->pipe_head, &display->pipe_list);
+}
+
 int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 {
 	struct intel_plane *primary, *cursor;
@@ -398,6 +416,8 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 	if (HAS_CASF(display))
 		drm_crtc_create_sharpness_strength_property(&crtc->base);
 
+	add_crtc_to_pipe_list(display, crtc);
+
 	return 0;
 
 fail:
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index bcc6ccb69d2b..ac83d4f09bb9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -238,22 +238,23 @@ enum phy_fia {
 			    base.head)					\
 		for_each_if((intel_plane)->pipe == (intel_crtc)->pipe)
 
-#define for_each_intel_crtc(dev, intel_crtc)				\
-	list_for_each_entry(intel_crtc,					\
-			    &(dev)->mode_config.crtc_list,		\
-			    base.head)
+#define for_each_intel_crtc(dev, crtc) \
+	list_for_each_entry((crtc), \
+			    &to_intel_display(dev)->pipe_list, \
+			    pipe_head)
 
-#define for_each_intel_crtc_in_pipe_mask(dev, intel_crtc, pipe_mask)	\
-	list_for_each_entry(intel_crtc,					\
-			    &(dev)->mode_config.crtc_list,		\
-			    base.head)					\
-		for_each_if((pipe_mask) & BIT(intel_crtc->pipe))
+#define for_each_intel_crtc_reverse(dev, crtc) \
+	list_for_each_entry_reverse((crtc), \
+				    &to_intel_display(dev)->pipe_list, \
+				    pipe_head)
 
-#define for_each_intel_crtc_in_pipe_mask_reverse(dev, intel_crtc, pipe_mask)	\
-	list_for_each_entry_reverse((intel_crtc),				\
-				    &(dev)->mode_config.crtc_list,		\
-				    base.head)					\
-		for_each_if((pipe_mask) & BIT((intel_crtc)->pipe))
+#define for_each_intel_crtc_in_pipe_mask(dev, crtc, pipe_mask) \
+	for_each_intel_crtc((dev), (crtc)) \
+		for_each_if((pipe_mask) & BIT((crtc)->pipe))
+
+#define for_each_intel_crtc_in_pipe_mask_reverse(dev, crtc, pipe_mask) \
+	for_each_intel_crtc_reverse((dev), (crtc)) \
+		for_each_if((pipe_mask) & BIT((crtc)->pipe))
 
 #define for_each_intel_encoder(dev, intel_encoder)		\
 	list_for_each_entry(intel_encoder,			\
@@ -295,14 +296,6 @@ enum phy_fia {
 	     (__i)++) \
 		for_each_if(plane)
 
-#define for_each_old_intel_crtc_in_state(__state, crtc, old_crtc_state, __i) \
-	for ((__i) = 0; \
-	     (__i) < (__state)->base.dev->mode_config.num_crtc && \
-		     ((crtc) = to_intel_crtc((__state)->base.crtcs[__i].ptr), \
-		      (old_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].old_state), 1); \
-	     (__i)++) \
-		for_each_if(crtc)
-
 #define for_each_new_intel_plane_in_state(__state, plane, new_plane_state, __i) \
 	for ((__i) = 0; \
 	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
@@ -311,22 +304,6 @@ enum phy_fia {
 	     (__i)++) \
 		for_each_if(plane)
 
-#define for_each_new_intel_crtc_in_state(__state, crtc, new_crtc_state, __i) \
-	for ((__i) = 0; \
-	     (__i) < (__state)->base.dev->mode_config.num_crtc && \
-		     ((crtc) = to_intel_crtc((__state)->base.crtcs[__i].ptr), \
-		      (new_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].new_state), 1); \
-	     (__i)++) \
-		for_each_if(crtc)
-
-#define for_each_new_intel_crtc_in_state_reverse(__state, crtc, new_crtc_state, __i) \
-	for ((__i) = (__state)->base.dev->mode_config.num_crtc - 1; \
-	     (__i) >= 0  && \
-	     ((crtc) = to_intel_crtc((__state)->base.crtcs[__i].ptr), \
-	      (new_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].new_state), 1); \
-	     (__i)--) \
-		for_each_if(crtc)
-
 #define for_each_oldnew_intel_plane_in_state(__state, plane, old_plane_state, new_plane_state, __i) \
 	for ((__i) = 0; \
 	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
@@ -336,23 +313,32 @@ enum phy_fia {
 	     (__i)++) \
 		for_each_if(plane)
 
+#define for_each_old_intel_crtc_in_state(__state, crtc, old_crtc_state, __i) \
+	for_each_intel_crtc((__state)->base.dev, (crtc)) \
+		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
+			     (old_crtc_state) = intel_atomic_get_old_crtc_state((__state), (crtc))))
+
+#define for_each_new_intel_crtc_in_state(__state, crtc, new_crtc_state, __i) \
+	for_each_intel_crtc((__state)->base.dev, (crtc)) \
+		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
+			     (new_crtc_state) = intel_atomic_get_new_crtc_state((__state), (crtc))))
+
+#define for_each_new_intel_crtc_in_state_reverse(__state, crtc, new_crtc_state, __i) \
+	for_each_intel_crtc_reverse((__state)->base.dev, (crtc)) \
+		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
+			     (new_crtc_state) = intel_atomic_get_new_crtc_state((__state), (crtc))))
+
 #define for_each_oldnew_intel_crtc_in_state(__state, crtc, old_crtc_state, new_crtc_state, __i) \
-	for ((__i) = 0; \
-	     (__i) < (__state)->base.dev->mode_config.num_crtc && \
-		     ((crtc) = to_intel_crtc((__state)->base.crtcs[__i].ptr), \
-		      (old_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].old_state), \
-		      (new_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].new_state), 1); \
-	     (__i)++) \
-		for_each_if(crtc)
+	for_each_intel_crtc((__state)->base.dev, (crtc)) \
+		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
+			     (old_crtc_state) = intel_atomic_get_old_crtc_state((__state), (crtc)), \
+			     (new_crtc_state) = intel_atomic_get_new_crtc_state((__state), (crtc))))
 
 #define for_each_oldnew_intel_crtc_in_state_reverse(__state, crtc, old_crtc_state, new_crtc_state, __i) \
-	for ((__i) = (__state)->base.dev->mode_config.num_crtc - 1; \
-	     (__i) >= 0  && \
-	     ((crtc) = to_intel_crtc((__state)->base.crtcs[__i].ptr), \
-	      (old_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].old_state), \
-	      (new_crtc_state) = to_intel_crtc_state((__state)->base.crtcs[__i].new_state), 1); \
-	     (__i)--) \
-		for_each_if(crtc)
+	for_each_intel_crtc_reverse((__state)->base.dev, (crtc)) \
+		for_each_if(((__i) = drm_crtc_index(&(crtc)->base), (void)(__i), \
+			     (old_crtc_state) = intel_atomic_get_old_crtc_state((__state), (crtc)), \
+			     (new_crtc_state) = intel_atomic_get_new_crtc_state((__state), (crtc))))
 
 #define intel_atomic_crtc_state_for_each_plane_state( \
 		  plane, plane_state, \
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 9b8414b77c15..4f4d5c314394 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -294,6 +294,9 @@ struct intel_display {
 	/* Parent, or core, driver functions exposed to display */
 	const struct intel_display_parent_interface *parent;
 
+	/* list of all intel_crtcs sorted by pipe */
+	struct list_head pipe_list;
+
 	/* Display functions */
 	struct {
 		/* Top level crtc-ish functions */
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 7e000ba3e08b..32726906e550 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -119,6 +119,7 @@ static void intel_mode_config_init(struct intel_display *display)
 
 	drm_mode_config_init(display->drm);
 	INIT_LIST_HEAD(&display->global.obj_list);
+	INIT_LIST_HEAD(&display->pipe_list);
 
 	mode_config->min_width = 0;
 	mode_config->min_height = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 38702a9e0f50..1c2bd9445795 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1441,6 +1441,7 @@ struct intel_flipq {
 
 struct intel_crtc {
 	struct drm_crtc base;
+	struct list_head pipe_head;
 	enum pipe pipe;
 	/*
 	 * Whether the crtc and the connected output pipeline is active. Implies
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index e3320d9e6314..cfcbc7dd8638 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -22,6 +22,7 @@
 #include "intel_audio.h"
 #include "intel_bw.h"
 #include "intel_display.h"
+#include "intel_display_core.h"
 #include "intel_display_device.h"
 #include "intel_display_driver.h"
 #include "intel_display_irq.h"
-- 
2.49.1

