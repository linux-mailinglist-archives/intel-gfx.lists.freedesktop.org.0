Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f5nOHrqYS2r1WAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:59:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 248B5710307
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Jul 2026 13:59:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ELzOnlSl;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 963F010E92F;
	Mon,  6 Jul 2026 11:59:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1059F10E919;
 Mon,  6 Jul 2026 11:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783339191; x=1814875191;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bT0miY0bzhC2tJv2NonO4Ha8puB+UeWIGqdz7/wC0jQ=;
 b=ELzOnlSl1CjikzcDbejROixASHc8CjgipA+ThQg0RXRamUX2ybIbHGNG
 9iukgQ++iwQrk8lZblh2TF+86iaYN/fuwjc8yVl+2NQkMl+eOQEHTZNfI
 GfUHbmcYWI9G3cSBQxLAYgqKvzvVpVFEUrqWApR3XKJJ7aMpnbz17125q
 D3YKGAgDetoBd7QT07o+0TBvmtLtADzBTXSxERtVM3qxMTmee6eGLO7o7
 TjVcAhRU56BbJuGP8PdA24uqQA5BCOVcVg5zMpHfoDc30GFyWoBLebuht
 /jwISfQKL6H9Ovs29x169F6xJIZPd05EvsNqwFQK95CnKYsbyXbDeWL6L g==;
X-CSE-ConnectionGUID: 3q1ByIeuTbyzYQ+mp6kEcA==
X-CSE-MsgGUID: qSxJB1G1QRCLs7t6BurSFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="95481122"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="95481122"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 04:59:51 -0700
X-CSE-ConnectionGUID: dlZA38oqSPm4lAn6hB4UHg==
X-CSE-MsgGUID: l9EPNqy8RlmSm75A2LBTkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="253797528"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa007.jf.intel.com with ESMTP; 06 Jul 2026 04:59:50 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 3/6] drm/i915/cursor: Handle secondary cursor state
Date: Mon,  6 Jul 2026 17:26:26 +0530
Message-Id: <20260706115629.2984258-4-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260706115629.2984258-1-nemesa.garg@intel.com>
References: <20260706115629.2984258-1-nemesa.garg@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 248B5710307

In joiner mode the fast path cursor update must handle
secondary pipes. Iterate over all joined pipes uniformly
to duplicate plane state, run check_plane(), pin the
framebuffer and on success swap in the new plane state
for each secondary cursor.

Track every successfully prepared pipe in a joined[] array
of struct intel_cursor_pipe so that later frontbuffer, unpin
and error-cleanup paths treat primary and secondaries uniformly,
and ensures the primary's pinned framebuffer is released if a
secondary fails partway through.

v2: Use intel_crtc_joined_pipe_mask(). [Ville]
    Add locking mechanism. [Ville]
v3: Drop the per-pipe fastpath mutex array. [sashiko]
v4: Fold parallel arrays into struct intel_cursor_pipe joined[],
    unify primary/secondary in a single loop, and use bare
    check_plane(). [Chaitanya]

Assisted-by: Claude:claude-sonnet-4.6
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 125 ++++++++++++++------
 1 file changed, 90 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 632f7a0a5a63..fad5d5302b36 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -864,6 +864,14 @@ intel_cursor_fastpath_update_plane_state(struct intel_plane_state *plane_state,
 	intel_plane_copy_uapi_to_hw_state(NULL, plane_state, plane_state, hw_crtc);
 }
 
+struct intel_cursor_pipe {
+	struct intel_plane *plane;
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *crtc_state;
+	struct intel_plane_state *old_plane_state;
+	struct intel_plane_state *new_plane_state;
+};
+
 static int
 intel_legacy_cursor_update(struct drm_plane *_plane,
 			   struct drm_crtc *_crtc,
@@ -879,11 +887,13 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	struct intel_display *display = to_intel_display(plane);
 	struct intel_plane_state *old_plane_state =
 		to_intel_plane_state(plane->base.state);
-	struct intel_plane_state *new_plane_state;
+	struct intel_plane_state *new_plane_state = NULL;
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
-	struct intel_crtc_state *new_crtc_state;
 	struct intel_vblank_evade_ctx evade;
+	struct intel_cursor_pipe joined[I915_MAX_PIPES] = {};
+	struct intel_crtc *pipe_crtc;
+	int num_pipes = 0;
 	int ret;
 
 	/*
@@ -929,38 +939,74 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	if (!intel_cursor_joiner_commits_idle(display, crtc_state))
 		goto slow;
 
-	new_plane_state = to_intel_plane_state(intel_plane_duplicate_state(&plane->base));
-	if (!new_plane_state)
-		return -ENOMEM;
+	/*
+	 * Iterate over all joined pipes (primary and secondary) uniformly.
+	 * The joined pipe mask includes both the primary pipe and all
+	 * secondary joiner pipes, allowing us to handle them all the same way.
+	 */
+	for_each_intel_crtc_in_pipe_mask(display, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(crtc_state)) {
+		struct intel_cursor_pipe *j = &joined[num_pipes];
+
+		j->plane = intel_crtc_get_plane(pipe_crtc, PLANE_CURSOR);
+		j->crtc = pipe_crtc;
+		j->crtc_state = to_intel_crtc_state(pipe_crtc->base.state);
+		j->old_plane_state = to_intel_plane_state(j->plane->base.state);
+		j->new_plane_state =
+			to_intel_plane_state(intel_plane_duplicate_state(&j->plane->base));
+
+		if (!j->new_plane_state) {
+			ret = -ENOMEM;
+			goto out_free;
+		}
+
+		/* Joiner secondary: uapi.crtc points at the primary uapi crtc. */
+		j->new_plane_state->uapi.crtc = &crtc->base;
+
+		intel_cursor_fastpath_update_plane_state(j->new_plane_state, fb,
+							 pipe_crtc,
+							 crtc_x, crtc_y,
+							 crtc_w, crtc_h,
+							 src_x, src_y,
+							 src_w, src_h);
+
+		ret = j->plane->check_plane(j->crtc_state, j->new_plane_state);
+		if (ret) {
+			intel_plane_destroy_state(&j->plane->base,
+						  &j->new_plane_state->uapi);
+			goto out_free;
+		}
+
+		ret = intel_plane_pin_fb(j->new_plane_state, j->old_plane_state);
+		if (ret) {
+			intel_plane_destroy_state(&j->plane->base,
+						  &j->new_plane_state->uapi);
+			goto out_free;
+		}
 
-	new_crtc_state = to_intel_crtc_state(intel_crtc_duplicate_state(&crtc->base));
-	if (!new_crtc_state) {
-		ret = -ENOMEM;
-		goto out_free;
+		num_pipes++;
 	}
 
-	intel_cursor_fastpath_update_plane_state(new_plane_state, fb,
-						 crtc,
-						 crtc_x, crtc_y, crtc_w, crtc_h,
-						 src_x, src_y, src_w, src_h);
+	new_plane_state = joined[0].new_plane_state;
+	intel_frontbuffer_flush(to_intel_frontbuffer(joined[0].new_plane_state->hw.fb),
+				ORIGIN_CURSOR_UPDATE);
 
-	ret = intel_plane_atomic_check_with_state(crtc_state, new_crtc_state,
-						  old_plane_state, new_plane_state);
-	if (ret)
-		goto out_free;
+	for (int i = 0; i < num_pipes; i++)
+		intel_frontbuffer_track(to_intel_frontbuffer(joined[i].old_plane_state->hw.fb),
+					to_intel_frontbuffer(joined[i].new_plane_state->hw.fb),
+					joined[i].plane->frontbuffer_bit);
 
-	ret = intel_plane_pin_fb(new_plane_state, old_plane_state);
-	if (ret)
-		goto out_free;
+	for (int i = 0; i < num_pipes; i++) {
+		struct intel_crtc_state *cs =
+			to_intel_crtc_state(joined[i].crtc->base.state);
 
-	intel_frontbuffer_flush(to_intel_frontbuffer(new_plane_state->hw.fb),
-				ORIGIN_CURSOR_UPDATE);
-	intel_frontbuffer_track(to_intel_frontbuffer(old_plane_state->hw.fb),
-				to_intel_frontbuffer(new_plane_state->hw.fb),
-				plane->frontbuffer_bit);
+		joined[i].plane->base.state = &joined[i].new_plane_state->uapi;
 
-	/* Swap plane state */
-	plane->base.state = &new_plane_state->uapi;
+		if (joined[i].new_plane_state->uapi.visible)
+			cs->active_planes |= BIT(PLANE_CURSOR);
+		else
+			cs->active_planes &= ~BIT(PLANE_CURSOR);
+	}
 
 	/*
 	 * We cannot swap crtc_state as it may be in use by an atomic commit or
@@ -972,7 +1018,6 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	 * planes atomically. If the cursor was part of the atomic update then
 	 * we would have taken the slowpath.
 	 */
-	crtc_state->active_planes = new_crtc_state->active_planes;
 
 	intel_vblank_evade_init(crtc_state, crtc_state, &evade);
 
@@ -1005,6 +1050,10 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 
 	intel_psr_unlock(crtc_state);
 
+	/*
+	 * Schedule or immediately unpin old framebuffers.
+	 * Protect against concurrent access.
+	 */
 	if (old_plane_state->ggtt_vma != new_plane_state->ggtt_vma) {
 		drm_vblank_work_init(&old_plane_state->unpin_work, &crtc->base,
 				     intel_cursor_unpin_work);
@@ -1013,18 +1062,24 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 					 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
 					 false);
 
-		old_plane_state = NULL;
+		joined[0].old_plane_state = NULL;
 	} else {
 		intel_plane_unpin_fb(old_plane_state);
 	}
 
 out_free:
-	if (new_crtc_state)
-		intel_crtc_destroy_state(&crtc->base, &new_crtc_state->uapi);
-	if (ret)
-		intel_plane_destroy_state(&plane->base, &new_plane_state->uapi);
-	else if (old_plane_state)
-		intel_plane_destroy_state(&plane->base, &old_plane_state->uapi);
+	if (ret) {
+		for (int i = 0; i < num_pipes; i++) {
+			intel_plane_unpin_fb(joined[i].new_plane_state);
+			intel_plane_destroy_state(&joined[i].plane->base,
+						  &joined[i].new_plane_state->uapi);
+		}
+	} else {
+		for (int i = 0; i < num_pipes; i++)
+			if (joined[i].old_plane_state)
+				intel_plane_destroy_state(&joined[i].plane->base,
+							  &joined[i].old_plane_state->uapi);
+	}
 	return ret;
 
 slow:
-- 
2.25.1

