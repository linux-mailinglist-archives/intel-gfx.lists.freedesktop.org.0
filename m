Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DaiuBZFhJmqwVgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 08:30:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B531A65322C
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 08:30:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=e+nI4jr8;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BFE610ED7B;
	Mon,  8 Jun 2026 06:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0CE310ED76;
 Mon,  8 Jun 2026 06:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780900239; x=1812436239;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KhWtR36pBwjg08P/x3cs8QmXnKpdmwVOv8OZk2VOUyY=;
 b=e+nI4jr8jMyTgltBnIyVbgtnT+tXL9Mjvs6NJQhfAWRG5JqNfREqAOzF
 cGlAVI7mmheVsmTDiTYsb2bvXeW+VSC2Ya5W5U3fOUmq9qseCopPd7lL7
 hnP8LtehCgIfMiQMw5gWMYalH7fheZsjpWi+ZzYdP7ffTNqTljF7Auuaa
 HXAibTzsiUCON0oIcp71U2fdYWVnIQyruD+ikH/WBlNPk987bocqHMMdH
 9aVwYFLM2uYOQIdPz+9RfKg7t3/i/evOJENkA/R/OKg5dd9Jo3ehPbzWh
 iTpywGd8NGzJf+j5C7aPtREx0iGrSadYfznTeWFxdkFPFiYPePV8idv6y Q==;
X-CSE-ConnectionGUID: sNgJOWEgTn2t95GnvSyfxw==
X-CSE-MsgGUID: LgP5GABhRq6nFBnVDJfmpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="85482676"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="85482676"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2026 23:30:35 -0700
X-CSE-ConnectionGUID: rwoIqXMDS3mqGMe2y77D+w==
X-CSE-MsgGUID: JNQZq5nbQ9SxNWpMMzaYmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="269158599"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa002.fm.intel.com with ESMTP; 07 Jun 2026 23:30:33 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 3/6] drm/i915/cursor: Handle secondary cursor state
Date: Mon,  8 Jun 2026 11:56:26 +0530
Message-Id: <20260608062629.820477-4-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260608062629.820477-1-nemesa.garg@intel.com>
References: <20260608062629.820477-1-nemesa.garg@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B531A65322C

In joiner mode the fast path cursor update must handle
secondary pipes. Iterate over all joined pipes uniformly
to duplicate plane state, run check_plane(), pin the
framebuffer and on success swap in the new plane state
or each secondary cursor.

Track every successfully prepared pipe in per-pipe arrays
so that later frontbuffer, unpin and error-cleanup paths
treat primary and secondaries uniformly, and ensures the primary's
pinned framebuffer is released if a secondary fails partway through.

v2: Use intel_crtc_joined_pipe_mask(). [Ville]
    Add locking mechanism. [Ville]
v3: Drop the per-pipe fastpath mutex array. [sashiko]

Assisted-by: Claude:claude-sonnet-4.6
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 141 +++++++++++++++++---
 1 file changed, 119 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 38234c6292ec..3da2c2308081 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -889,11 +889,17 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	struct intel_display *display = to_intel_display(plane);
 	struct intel_plane_state *old_plane_state =
 		to_intel_plane_state(plane->base.state);
-	struct intel_plane_state *new_plane_state;
+	struct intel_plane_state *new_plane_state = NULL;
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
-	struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc_state *new_crtc_state = NULL;
 	struct intel_vblank_evade_ctx evade;
+	struct intel_plane_state *old_pipe_states[4] = {};
+	struct intel_plane_state *new_pipe_states[4] = {};
+	struct intel_plane *pipe_planes[4] = {};
+	struct intel_crtc *pipe_crtcs[4] = {};
+	struct intel_crtc *pipe_crtc;
+	int num_pipes = 0;
 	int ret;
 
 	/*
@@ -944,8 +950,10 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 		goto slow;
 
 	new_plane_state = to_intel_plane_state(intel_plane_duplicate_state(&plane->base));
-	if (!new_plane_state)
-		return -ENOMEM;
+	if (!new_plane_state) {
+		ret = -ENOMEM;
+		goto out_free;
+	}
 
 	new_crtc_state = to_intel_crtc_state(intel_crtc_duplicate_state(&crtc->base));
 	if (!new_crtc_state) {
@@ -967,11 +975,75 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	if (ret)
 		goto out_free;
 
+	pipe_planes[num_pipes] = plane;
+	pipe_crtcs[num_pipes] = crtc;
+	old_pipe_states[num_pipes] = old_plane_state;
+	new_pipe_states[num_pipes] = new_plane_state;
+	num_pipes++;
+
+	/*
+	 * Iterate over all joined pipes (primary and secondary) uniformly.
+	 * The joined pipe mask includes both the primary pipe and all
+	 * secondary joiner pipes, allowing us to handle them all the same way.
+	 */
+	for_each_intel_crtc_in_pipe_mask(display, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(crtc_state)) {
+		struct intel_plane *pipe_plane;
+		struct intel_crtc_state *pipe_crtc_state;
+		struct intel_plane_state *old_pipe_plane_state;
+		struct intel_plane_state *new_pipe_plane_state;
+
+		if (pipe_crtc == crtc)
+			continue;
+
+		pipe_plane = intel_crtc_get_plane(pipe_crtc, PLANE_CURSOR);
+		pipe_crtc_state = to_intel_crtc_state(pipe_crtc->base.state);
+		old_pipe_plane_state = to_intel_plane_state(pipe_plane->base.state);
+
+		new_pipe_plane_state =
+			to_intel_plane_state(intel_plane_duplicate_state(&pipe_plane->base));
+
+		if (!new_pipe_plane_state) {
+			ret = -ENOMEM;
+			goto out_free;
+		}
+
+		intel_cursor_fastpath_update_plane_state(new_pipe_plane_state, fb,
+							 &pipe_crtc->base,
+							 pipe_crtc,
+							 crtc_x, crtc_y,
+							 crtc_w, crtc_h,
+							 src_x, src_y,
+							 src_w, src_h);
+
+		ret = pipe_plane->check_plane(pipe_crtc_state, new_pipe_plane_state);
+		if (ret) {
+			intel_plane_destroy_state(&pipe_plane->base,
+						  &new_pipe_plane_state->uapi);
+			goto out_free;
+		}
+
+		ret = intel_plane_pin_fb(new_pipe_plane_state, old_pipe_plane_state);
+		if (ret) {
+			intel_plane_destroy_state(&pipe_plane->base,
+						  &new_pipe_plane_state->uapi);
+			goto out_free;
+		}
+
+		pipe_planes[num_pipes] = pipe_plane;
+		pipe_crtcs[num_pipes] = pipe_crtc;
+		old_pipe_states[num_pipes] = old_pipe_plane_state;
+		new_pipe_states[num_pipes] = new_pipe_plane_state;
+		num_pipes++;
+	}
+
 	intel_frontbuffer_flush(to_intel_frontbuffer(new_plane_state->hw.fb),
 				ORIGIN_CURSOR_UPDATE);
-	intel_frontbuffer_track(to_intel_frontbuffer(old_plane_state->hw.fb),
-				to_intel_frontbuffer(new_plane_state->hw.fb),
-				plane->frontbuffer_bit);
+
+	for (int i = 0; i < num_pipes; i++)
+		intel_frontbuffer_track(to_intel_frontbuffer(old_pipe_states[i]->hw.fb),
+					to_intel_frontbuffer(new_pipe_states[i]->hw.fb),
+					pipe_planes[i]->frontbuffer_bit);
 
 	/* Swap plane state */
 	plane->base.state = &new_plane_state->uapi;
@@ -1019,26 +1091,51 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 
 	intel_psr_unlock(crtc_state);
 
-	if (old_plane_state->ggtt_vma != new_plane_state->ggtt_vma) {
-		drm_vblank_work_init(&old_plane_state->unpin_work, &crtc->base,
-				     intel_cursor_unpin_work);
-
-		drm_vblank_work_schedule(&old_plane_state->unpin_work,
-					 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
-					 false);
-
-		old_plane_state = NULL;
-	} else {
-		intel_plane_unpin_fb(old_plane_state);
+	/*
+	 * Schedule or immediately unpin old framebuffers.
+	 * Protect against concurrent access.
+	 */
+	for (int i = 0; i < num_pipes; i++) {
+		struct intel_plane_state *old_pipe = old_pipe_states[i];
+		struct intel_crtc *owner_crtc = pipe_crtcs[i];
+
+		if (old_pipe->ggtt_vma != new_pipe_states[i]->ggtt_vma) {
+			drm_vblank_work_init(&old_pipe->unpin_work,
+					     &owner_crtc->base,
+					     intel_cursor_unpin_work);
+			drm_vblank_work_schedule(&old_pipe->unpin_work,
+						 drm_crtc_accurate_vblank_count(&owner_crtc->base) + 1,
+						 false);
+			old_pipe_states[i] = NULL;
+		} else {
+			intel_plane_unpin_fb(old_pipe);
+		}
 	}
 
 out_free:
 	if (new_crtc_state)
 		intel_crtc_destroy_state(&crtc->base, &new_crtc_state->uapi);
-	if (ret)
-		intel_plane_destroy_state(&plane->base, &new_plane_state->uapi);
-	else if (old_plane_state)
-		intel_plane_destroy_state(&plane->base, &old_plane_state->uapi);
+	if (ret) {
+		for (int i = 0; i < num_pipes; i++) {
+			intel_plane_unpin_fb(new_pipe_states[i]);
+			intel_plane_destroy_state(new_pipe_states[i]->uapi.plane,
+						  &new_pipe_states[i]->uapi);
+		}
+
+		/*
+		 * Primary failed before being pushed (atomic_check_with_state
+		 * or pin_fb): fb was never pinned, only destroy the state.
+		 */
+		if (!num_pipes && new_plane_state)
+			intel_plane_destroy_state(&plane->base, &new_plane_state->uapi);
+	} else {
+		for (int i = 0; i < num_pipes; i++) {
+			if (old_pipe_states[i])
+				intel_plane_destroy_state(old_pipe_states[i]->uapi.plane,
+							  &old_pipe_states[i]->uapi);
+		}
+	}
+
 	return ret;
 
 slow:
-- 
2.25.1

