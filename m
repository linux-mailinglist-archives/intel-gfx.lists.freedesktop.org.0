Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BpmELxO6mkhxgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 18:54:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4182455267
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2026 18:54:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A88710F1E9;
	Thu, 23 Apr 2026 16:54:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jal2H7VZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F34A310E341;
 Thu, 23 Apr 2026 16:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776963257; x=1808499257;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i7q3AG4MPSqObFj84WeFtnmHk0Wpazya8KXBRd4Pwfs=;
 b=Jal2H7VZ5bUK74BZsc1qvwiW4koUaiBc48pAiXF8yh+ezuRXGypOiolW
 Y74itZN7M3Itsgnxc56l5OaghfalYq8AmKWiNcnaOMXhxsWsJgRiS4/T1
 K8I+7gkzO1owlL4qtGZlc/FLptlEnXPt8REuxdwAg5u2OKxNehK22Mx7L
 jWrUiEZe8IOro+fIg+DiSc+SqcpHbSTIijA7cXvKRuL4GSJQqGvQHruGL
 wjgsL7oZ++o0hIe/a7RZoRDa6P00MxUVNYeYdqWV9gLkDDQmn/CgH/txi
 /8ekJBH3htHSL2HqCeY7VfoLxx+AhoaopCWGJTniPWCSQvC3Qw4KlxFry w==;
X-CSE-ConnectionGUID: TUliSiUIS3+z7c4uUvxPbQ==
X-CSE-MsgGUID: Z7nVB5oxSKK4f6TgG2Z59g==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="88245202"
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="88245202"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 09:54:17 -0700
X-CSE-ConnectionGUID: mvvSYC28TRWvPkmUWUNRXg==
X-CSE-MsgGUID: tU9eFhtdQO6muXZ6cbCyYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,195,1770624000"; d="scan'208";a="237765231"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.188])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 09:54:16 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 06/16] drm/i915: Introduce i915_fb_pin_ggtt_(un)pin()
Date: Thu, 23 Apr 2026 19:53:35 +0300
Message-ID: <20260423165346.20884-7-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: B4182455267
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the inner DPT parts of intel_plane_(un)pin() into the
i915_fb_pin_ggtt_(un)pin(). These will become part of the new
fb_pin parent interface.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_fb_pin.c | 68 +++++++++++++++++++-----------
 1 file changed, 44 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_fb_pin.c b/drivers/gpu/drm/i915/i915_fb_pin.c
index 0019f570d843..e14d2c1fb81f 100644
--- a/drivers/gpu/drm/i915/i915_fb_pin.c
+++ b/drivers/gpu/drm/i915/i915_fb_pin.c
@@ -257,6 +257,41 @@ intel_plane_fb_vtd_guard(const struct intel_plane_state *plane_state)
 				       plane_state->hw.rotation);
 }
 
+static int i915_fb_pin_ggtt_pin(struct drm_gem_object *obj,
+				const struct intel_fb_pin_params *pin_params,
+				struct i915_vma **out_ggtt_vma,
+				u32 *out_offset,
+				int *out_fence_id)
+{
+	struct i915_vma *ggtt_vma;
+
+	ggtt_vma = intel_fb_pin_to_ggtt(obj, pin_params, out_fence_id);
+	if (IS_ERR(ggtt_vma))
+		return PTR_ERR(ggtt_vma);
+
+	*out_ggtt_vma = ggtt_vma;
+
+	/*
+	 * Pre-populate the dma address before we enter the vblank
+	 * evade critical section as i915_gem_object_get_dma_address()
+	 * will trigger might_sleep() even if it won't actually sleep,
+	 * which is the case when the fb has already been pinned.
+	 */
+	if (pin_params->needs_physical)
+		*out_offset = i915_gem_object_get_dma_address(to_intel_bo(obj), 0);
+	else
+		*out_offset = i915_ggtt_offset(ggtt_vma);
+
+	return 0;
+}
+
+static void i915_fb_pin_ggtt_unpin(struct i915_vma *ggtt_vma,
+				   int fence_id)
+{
+	if (ggtt_vma)
+		intel_fb_unpin_vma(ggtt_vma, fence_id);
+}
+
 static int i915_fb_pin_dpt_pin(struct drm_gem_object *obj, struct intel_dpt *dpt,
 			       const struct intel_fb_pin_params *pin_params,
 			       struct i915_vma **out_dpt_vma,
@@ -325,24 +360,11 @@ int intel_plane_pin_fb(struct intel_plane_state *plane_state,
 			.needs_fence = intel_plane_needs_fence(display),
 		};
 
-		ggtt_vma = intel_fb_pin_to_ggtt(intel_fb_bo(&fb->base), &pin_params,
-						intel_plane_uses_fence(plane_state) ? &fence_id : NULL);
-		if (IS_ERR(ggtt_vma))
-			return PTR_ERR(ggtt_vma);
-
-		/*
-		 * Pre-populate the dma address before we enter the vblank
-		 * evade critical section as i915_gem_object_get_dma_address()
-		 * will trigger might_sleep() even if it won't actually sleep,
-		 * which is the case when the fb has already been pinned.
-		 */
-		if (intel_plane_needs_physical(plane)) {
-			struct drm_i915_gem_object *obj = to_intel_bo(intel_fb_bo(&fb->base));
-
-			offset = i915_gem_object_get_dma_address(obj, 0);
-		} else {
-			offset = i915_ggtt_offset(ggtt_vma);
-		}
+		ret = i915_fb_pin_ggtt_pin(intel_fb_bo(&fb->base),
+					   &pin_params, &ggtt_vma, &offset,
+					   intel_plane_uses_fence(plane_state) ? &fence_id : NULL);
+		if (ret)
+			return ret;
 	} else {
 		struct intel_fb_pin_params pin_params = {
 			.view = &plane_state->view.gtt,
@@ -371,13 +393,11 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 		to_intel_framebuffer(old_plane_state->hw.fb);
 
 	if (!intel_fb_uses_dpt(&fb->base)) {
-		struct i915_vma *vma;
+		i915_fb_pin_ggtt_unpin(old_plane_state->ggtt_vma,
+				       old_plane_state->fence_id);
 
-		vma = fetch_and_zero(&old_plane_state->ggtt_vma);
-		if (vma) {
-			intel_fb_unpin_vma(vma, old_plane_state->fence_id);
-			old_plane_state->fence_id = -1;
-		}
+		old_plane_state->ggtt_vma = NULL;
+		old_plane_state->fence_id = -1;
 	} else {
 		i915_fb_pin_dpt_unpin(fb->dpt,
 				      old_plane_state->dpt_vma,
-- 
2.52.0

