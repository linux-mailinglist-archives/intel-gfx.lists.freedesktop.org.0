Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JnFALNO6mkhxgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 18:54:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CFD455252
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 18:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E22E10F1DB;
	Thu, 23 Apr 2026 16:54:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gny1Ya4w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B68210F1E1;
 Thu, 23 Apr 2026 16:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776963249; x=1808499249;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4aU1lhgdhTmFyJZ0NMU1akjISFlCAin5Or+duy4MwqM=;
 b=gny1Ya4w8sbXq63bmMC5/1jUoOpFOa07vwN7G1Mcmx1rIGW+ccDuBoqS
 MMmqsllDmT/57TODQFHmYLeqD4NjdTY9GisVdWC9jl1GX0ABV2h9zZo/t
 YiL/OqyBthNWK8U136ejRpE/bdEdzf5HMwL6emh5cGEj0RcT4fd6jG4bs
 bMDdozbMyARE2D6ULoHIcq+n9gryCHQVl6D4pe9nQ8ECIMdMlyWNV1+XL
 foDK43Cr1ai01IiLvWxAPTNsbCtY0lECJcq3LAs4ElofeOWZ8RmH6yVyd
 rE1IO1cVBWpPPGgVHS4w3c6JXJldNYA3MsKPTnptD9EqZrzYInPeR2IJS g==;
X-CSE-ConnectionGUID: Y6jf2uqCT8Ku8PMldbHGjA==
X-CSE-MsgGUID: oB2kesKeS4ODD8LSkgrzuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="88245182"
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="88245182"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 09:54:09 -0700
X-CSE-ConnectionGUID: b1V2BY+eQq69GunWipYCOg==
X-CSE-MsgGUID: MYT2JukxRYC+mK3d1f7S2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="237765195"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.188])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 09:54:07 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/16] drm/i915: Reorganize intel_plane_pin_fb() a bit
Date: Thu, 23 Apr 2026 19:53:33 +0300
Message-ID: <20260423165346.20884-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
References: <20260423165346.20884-1-ville.syrjala@linux.intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A5CFD455252
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move most of the plane state stuff out from the inner parts
of intel_plane_pin_fb(). The plan is to take those inner parts and
abstract them into the new fb_pin parent interface, and we don't
want any plane_state stuff there.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_fb_pin.c | 67 +++++++++++++++---------------
 1 file changed, 33 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index 400ad8768c11..bc2e185b4573 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -264,7 +264,10 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 	const struct intel_framebuffer *fb =
 		to_intel_framebuffer(plane_state->hw.fb);
-	struct i915_vma *vma;
+	struct i915_vma *ggtt_vma = NULL;
+	struct i915_vma *dpt_vma = NULL;
+	int fence_id = -1;
+	u32 offset;
 
 	if (!intel_fb_uses_dpt(&fb->base)) {
 		struct intel_fb_pin_params pin_params = {
@@ -277,15 +280,25 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 			.needs_physical = intel_plane_needs_physical(plane),
 			.needs_fence = intel_plane_needs_fence(display),
 		};
-		int fence_id = -1;
 
-		vma = intel_fb_pin_to_ggtt(intel_fb_bo(&fb->base), &pin_params,
-					   intel_plane_uses_fence(plane_state) ? &fence_id : NULL);
-		if (IS_ERR(vma))
-			return PTR_ERR(vma);
+		ggtt_vma = intel_fb_pin_to_ggtt(intel_fb_bo(&fb->base), &pin_params,
+						intel_plane_uses_fence(plane_state) ? &fence_id : NULL);
+		if (IS_ERR(ggtt_vma))
+			return PTR_ERR(ggtt_vma);
 
-		plane_state->ggtt_vma = vma;
-		plane_state->fence_id = fence_id;
+		/*
+		 * Pre-populate the dma address before we enter the vblank
+		 * evade critical section as i915_gem_object_get_dma_address()
+		 * will trigger might_sleep() even if it won't actually sleep,
+		 * which is the case when the fb has already been pinned.
+		 */
+		if (intel_plane_needs_physical(plane)) {
+			struct drm_i915_gem_object *obj = to_intel_bo(intel_fb_bo(&fb->base));
+
+			offset = i915_gem_object_get_dma_address(obj, 0);
+		} else {
+			offset = i915_ggtt_offset(ggtt_vma);
+		}
 	} else {
 		struct intel_fb_pin_params pin_params = {
 			.view = &plane_state->view.gtt,
@@ -293,39 +306,25 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 			.needs_cpu_lmem_access = intel_fb_needs_cpu_access(&fb->base),
 		};
 
-		vma = i915_dpt_pin_to_ggtt(fb->dpt, pin_params.alignment / 512);
-		if (IS_ERR(vma))
-			return PTR_ERR(vma);
+		ggtt_vma = i915_dpt_pin_to_ggtt(fb->dpt, pin_params.alignment / 512);
+		if (IS_ERR(ggtt_vma))
+			return PTR_ERR(ggtt_vma);
 
-		plane_state->ggtt_vma = vma;
-
-		vma = intel_fb_pin_to_dpt(intel_fb_bo(&fb->base), fb->dpt, &pin_params);
-		if (IS_ERR(vma)) {
+		dpt_vma = intel_fb_pin_to_dpt(intel_fb_bo(&fb->base), fb->dpt, &pin_params);
+		if (IS_ERR(dpt_vma)) {
 			i915_dpt_unpin_from_ggtt(fb->dpt);
-			plane_state->ggtt_vma = NULL;
-			return PTR_ERR(vma);
+			return PTR_ERR(dpt_vma);
 		}
 
-		plane_state->dpt_vma = vma;
+		WARN_ON(ggtt_vma == dpt_vma);
 
-		WARN_ON(plane_state->ggtt_vma == plane_state->dpt_vma);
+		offset = i915_ggtt_offset(ggtt_vma);
 	}
 
-	/*
-	 * Pre-populate the dma address before we enter the vblank
-	 * evade critical section as i915_gem_object_get_dma_address()
-	 * will trigger might_sleep() even if it won't actually sleep,
-	 * which is the case when the fb has already been pinned.
-	 */
-	if (intel_plane_needs_physical(plane)) {
-		struct drm_i915_gem_object *obj = to_intel_bo(intel_fb_bo(&fb->base));
-
-		plane_state->surf = i915_gem_object_get_dma_address(obj, 0) +
-			plane->surf_offset(plane_state);
-	} else {
-		plane_state->surf = i915_ggtt_offset(plane_state->ggtt_vma) +
-			plane->surf_offset(plane_state);
-	}
+	plane_state->dpt_vma = dpt_vma;
+	plane_state->ggtt_vma = ggtt_vma;
+	plane_state->fence_id = fence_id;
+	plane_state->surf = offset + plane->surf_offset(plane_state);
 
 	return 0;
 }
-- 
2.52.0

