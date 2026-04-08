Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BbSMQ571mk0FwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 17:58:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEF83BE9D9
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 17:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A8810E6A6;
	Wed,  8 Apr 2026 15:58:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kveYrpOz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E254F10E68D;
 Wed,  8 Apr 2026 15:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775663884; x=1807199884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jfP79QxpHT3XEiljNlcn9AH83eE/Ml5mwrQJd7wFBMI=;
 b=kveYrpOz4vN+sKzPcYYkoAVOB78IeogCxoTbL7aJEK8doLG61zSs75w2
 A5+AksjXpwnCvBDpE6RZm9CUXid+XiDRgbhFJosqSL8ag7wdTwwL2NUu+
 pCgBMCJB6ngkpOAKiC4EQG3mNOtLLrC0qpzfp7ZTjU9YfTnPqD2enBh4y
 PyMrfZMq8rJF7AbftmfFo3ZZN/SEzYlBqKA087lxbbpJiiVja1RpnCkJ0
 EIWoRD5imLWRN0SBeQindVzl2jM8uxMnNZpNtWyiFQ+/rXkM5Ig0SX1Og
 45rjslIWJfsEUX2uEUlZ4Y2FJSKk1iC0t92/sge9pdfysmz7TTKxcR9Dz A==;
X-CSE-ConnectionGUID: 9ltOxFqQRVCKaXlbRyoN9Q==
X-CSE-MsgGUID: F0i/fGt2Rba2tvf+F5KDMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76542088"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="76542088"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 08:58:02 -0700
X-CSE-ConnectionGUID: 7tcSnkUpQtaHA+MFomUn9A==
X-CSE-MsgGUID: 8jBTLxwDQRus0QW8Chwibg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228400702"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.73])
 by orviesa009-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Apr 2026 08:57:59 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 2/2] drm/i915: Walk crtcs in pipe order
Date: Wed,  8 Apr 2026 18:57:44 +0300
Message-ID: <20260408155744.13326-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260408155744.13326-1-ville.syrjala@linux.intel.com>
References: <20260408155744.13326-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5DEF83BE9D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

We could probably use a simple array or something, but that
would require some kind of extra iterator variable for the
macros, and thus would require a lot more changes. Using
a linked list keeps the fallout minimal. We can look at
using a more optimal data structure later.

I also added this extra junk to the atomic state iterators:
"(__i) = drm_crtc_index(&(crtc)->base), (void)(__i)"
even though the macro itself no longer needs the "__i" iterator.
This in case the "__i" is used by the caller, and to
avoid compiler warnings if it's completely unused now.

v2: Flip the pipe comparison (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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
index b8189cd5d864..c88a6810c49f 100644
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
+		if (crtc->pipe < iter->pipe) {
+			list_add_tail(&crtc->pipe_head, &iter->pipe_head);
+			return;
+		}
+	}
+
+	list_add_tail(&crtc->pipe_head, &display->pipe_list);
+}
+
 static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
 {
 	struct intel_plane *primary, *cursor;
@@ -398,6 +416,8 @@ static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
 	if (HAS_CASF(display) && crtc->num_scalers >= 2)
 		drm_crtc_create_sharpness_strength_property(&crtc->base);
 
+	add_crtc_to_pipe_list(display, crtc);
+
 	return 0;
 
 fail:
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 552a59d19e0f..1e76a455d7c4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -212,22 +212,23 @@ enum phy_fia {
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
@@ -269,14 +270,6 @@ enum phy_fia {
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
@@ -285,22 +278,6 @@ enum phy_fia {
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
@@ -310,23 +287,32 @@ enum phy_fia {
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
index d708d322aa85..d9baca2d5aaf 100644
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
index 23bfecc983e8..9c2f7ad6c7b7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -117,6 +117,7 @@ static void intel_mode_config_init(struct intel_display *display)
 
 	drm_mode_config_init(display->drm);
 	INIT_LIST_HEAD(&display->global.obj_list);
+	INIT_LIST_HEAD(&display->pipe_list);
 
 	mode_config->min_width = 0;
 	mode_config->min_height = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ca2581fb7bbd..ee076106be85 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1485,6 +1485,7 @@ struct intel_flipq {
 
 struct intel_crtc {
 	struct drm_crtc base;
+	struct list_head pipe_head;
 	enum pipe pipe;
 	/*
 	 * Whether the crtc and the connected output pipeline is active. Implies
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index a0a4ddf3bb46..00dfa68af29a 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -21,6 +21,7 @@
 #include "intel_audio.h"
 #include "intel_bw.h"
 #include "intel_display.h"
+#include "intel_display_core.h"
 #include "intel_display_device.h"
 #include "intel_display_driver.h"
 #include "intel_display_irq.h"
-- 
2.52.0

