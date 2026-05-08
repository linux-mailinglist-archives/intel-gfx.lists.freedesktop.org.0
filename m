Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OL+zE7j0/Wn5lAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:35:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DC04F7D04
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:35:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0556710F51B;
	Fri,  8 May 2026 14:35:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UZ3gKg6g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD6FE10F519;
 Fri,  8 May 2026 14:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778250933; x=1809786933;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wLJGxnGsnrhpl+502+LAuoSTODc0TaZXN9S8A7AF3ig=;
 b=UZ3gKg6g0CHfLs/i7pkX2iCSxs0qmV+/VtdyVViW1yH2vOPdZ5NngEyG
 kiJFHXrvLwpxVpe8tkBBx8OrxpaBkyFHJ0PNZfaNUE8JGwfvvQAnBGkv1
 wr24QlIVs9aIuMidU8diJUtJgR9+r8FxBYdMcWI4lVxHd6OV9H4YmMrmB
 9bOWa/Qlb8MWVmr+EzqDuUV3XixdG3HxqEzFEPrRwvu3v5qqA7RM3QtOy
 o4URQ7cp1xHAX7Fw7GBvXmeCaS3NT/3FxG2NyK4Sji47Q5wAhC8XuG+zq
 KI19Ym+TPU4IseBrtU+0cvS83oR1C1WDirS+nGIBWAQbx3u/DUIIqoWN/ g==;
X-CSE-ConnectionGUID: OcDr2oHbQGuZx+NX3eZv7g==
X-CSE-MsgGUID: GkmAiYJFSuekM9ogLhQ2qg==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="96644383"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="96644383"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:35:33 -0700
X-CSE-ConnectionGUID: 4yMMClFGRui/Utg7liiRAw==
X-CSE-MsgGUID: POE5mXd8Tn2PRC9IRNpoCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="238566582"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:35:31 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 14/16] drm/i915/fbdev: Use
 intel_parent_fb_pin_ggtt_(un)pin()
Date: Fri,  8 May 2026 17:34:24 +0300
Message-ID: <20260508143426.26504-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260508143426.26504-1-ville.syrjala@linux.intel.com>
References: <20260508143426.26504-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: E9DC04F7D04
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the intel_fb_pin_to_ggtt() and intel_fb_unpin_vma() with the
new abstract parent interface (intel_parent_fb_pin_ggtt_(un)pin()).

xe no longer needs intel_fb_unpin_vma(), and in i915 it now
becomes and internal function to i915_fb_pin.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.h |  2 --
 drivers/gpu/drm/i915/display/intel_fbdev.c  | 14 +++++++-------
 drivers/gpu/drm/i915/i915_fb_pin.c          |  2 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c      |  5 -----
 4 files changed, 8 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
index 84530f20d7d1..6ff17d3e2cf5 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -20,8 +20,6 @@ intel_fb_pin_to_ggtt(struct drm_gem_object *obj,
 		     const struct intel_fb_pin_params *pin_params,
 		     int *out_fence_id);
 
-void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id);
-
 int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 		       const struct intel_plane_state *old_plane_state);
 void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index aa2701795caa..8463f88149a5 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -53,7 +53,6 @@
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
-#include "intel_fb_pin.h"
 #include "intel_fbdev.h"
 #include "intel_frontbuffer.h"
 #include "intel_parent.h"
@@ -133,6 +132,7 @@ static int intel_fbdev_mmap(struct fb_info *info, struct vm_area_struct *vma)
 static void intel_fbdev_fb_destroy(struct fb_info *info)
 {
 	struct drm_fb_helper *fb_helper = info->par;
+	struct intel_display *display = to_intel_display(fb_helper->client.dev);
 	struct intel_fbdev *ifbdev = to_intel_fbdev(fb_helper);
 
 	drm_fb_helper_fini(fb_helper);
@@ -142,7 +142,7 @@ static void intel_fbdev_fb_destroy(struct fb_info *info)
 	 * the info->screen_base mmaping. Leaking the VMA is simpler than
 	 * trying to rectify all the possible error paths leading here.
 	 */
-	intel_fb_unpin_vma(ifbdev->vma, -1);
+	intel_parent_fb_pin_ggtt_unpin(display, ifbdev->vma, -1);
 	drm_framebuffer_remove(fb_helper->fb);
 
 	drm_client_release(&fb_helper->client);
@@ -274,6 +274,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 	struct i915_vma *vma;
 	bool prealloc = false;
 	struct drm_gem_object *obj;
+	u32 offset;
 	int ret;
 
 	ifbdev->fb = NULL;
@@ -321,11 +322,10 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 						       DRM_MODE_ROTATE_0);
 	pin_params.needs_low_address = intel_plane_needs_low_address(display);
 
-	vma = intel_fb_pin_to_ggtt(obj, &pin_params, NULL);
-	if (IS_ERR(vma)) {
-		ret = PTR_ERR(vma);
+	ret = intel_parent_fb_pin_ggtt_pin(display, obj, &pin_params,
+					   &vma, &offset, NULL);
+	if (ret)
 		goto out_unlock;
-	}
 
 	helper->funcs = &intel_fb_helper_funcs;
 	helper->fb = &fb->base;
@@ -356,7 +356,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 	return 0;
 
 out_unpin:
-	intel_fb_unpin_vma(vma, -1);
+	intel_parent_fb_pin_ggtt_unpin(display, vma, -1);
 out_unlock:
 	intel_display_rpm_put(display, wakeref);
 
diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index 1f08e364d569..cedefee46fbf 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -222,7 +222,7 @@ intel_fb_pin_to_ggtt(struct drm_gem_object *_obj,
 	return vma;
 }
 
-void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id)
+static void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id)
 {
 	if (fence_id >= 0)
 		i915_vma_unpin_fence(vma);
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 7b1347b02831..3247b0683987 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -424,11 +424,6 @@ intel_fb_pin_to_ggtt(struct drm_gem_object *obj,
 	return __xe_pin_fb_vma(obj, false, pin_params);
 }
 
-void intel_fb_unpin_vma(struct i915_vma *vma, int fence_id)
-{
-	__xe_unpin_fb_vma(vma);
-}
-
 static int xe_fb_pin_ggtt_pin(struct drm_gem_object *obj,
 			      const struct intel_fb_pin_params *pin_params,
 			      struct i915_vma **out_ggtt_vma,
-- 
2.52.0

