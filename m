Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNY9AlrC8GloYQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 16:21:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF2B486D00
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 16:21:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EAD810EBE6;
	Tue, 28 Apr 2026 14:21:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bdZwZHeB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 941E910EBB7;
 Tue, 28 Apr 2026 14:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777386069; x=1808922069;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zaKUgL+IFvTNM1A06SDO2mz84yMzMOaMYA36Ve3Q9Sg=;
 b=bdZwZHeB8y9XqagWhSgvsuLvG60TDqrhyKN28b2hFMNuNxOOnhvX/vlP
 oZAqi26kbJQM6VpsdsMgAw+ySSe0TNBhJVlDjsChl3uDgq+hh2IgK3R3V
 GWuEroFDqamJ5EauPEpYcRj7bHDOeMuIED/3bMvewi+nqcbUjPOkEYowv
 z4zKMJWeSTdDGwNDHj1tlNjy2n/qi7FgY3xn0aJJivO1Py0u0Js/DPYku
 Xj7fTHEDNnqhYviDAOHqpbbnr8qbp5JZ99jdTSte9w9z8IdNSewjKtGlb
 TjH78Lw+UH9JvfFtubXW4Py/dK1YLpvG9p6vnjLPLLJhuONrX1lSPvdm3 g==;
X-CSE-ConnectionGUID: 43mtjCa+Rx+DgW9AP7Zjpw==
X-CSE-MsgGUID: TXfR5wQZRnWbJ9S2e+MZzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="89756389"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="89756389"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 07:21:09 -0700
X-CSE-ConnectionGUID: 8hNcn7rvRLaBJfGCcLKtUA==
X-CSE-MsgGUID: jogvKjqUQ12/0VkyINfCtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="227445435"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa009.fm.intel.com with ESMTP; 28 Apr 2026 07:21:08 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 4/6] drm/i915/cursor: Sync joiner secondary cursor state
Date: Tue, 28 Apr 2026 19:46:37 +0530
Message-Id: <20260428141639.2373678-5-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260428141639.2373678-1-nemesa.garg@intel.com>
References: <20260428141639.2373678-1-nemesa.garg@intel.com>
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
X-Rspamd-Queue-Id: 8FF2B486D00
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

Before entering the vblank evade window, swap in the new
plane states for all joined cursor planes uniformly and update
each pipe crtc's active_planes bitmask to reflect the
new cursor visibility.

v2: Check primary and secondary pipe together. [Ville]

Assisted-by: Claude:claude-sonnet-4.6
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 37 +++++++++++++--------
 1 file changed, 24 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index b4d17aabe203..71795f4dfc3f 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -878,6 +878,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	struct intel_vblank_evade_ctx evade;
 	struct intel_plane_state *old_pipe_states[4] = {};
 	struct intel_plane_state *new_pipe_states[4] = {};
+	struct intel_crtc_state *pipe_crtc_states[4] = {};
 	struct intel_plane *pipe_planes[4] = {};
 	struct intel_crtc *pipe_crtcs[4] = {};
 	struct intel_crtc *pipe_crtc;
@@ -1013,6 +1014,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 
 		pipe_planes[num_pipes] = pipe_plane;
 		pipe_crtcs[num_pipes] = pipe_crtc;
+		pipe_crtc_states[num_pipes] = pipe_crtc_state;
 		old_pipe_states[num_pipes] = old_pipe_plane_state;
 		new_pipe_states[num_pipes] = new_pipe_plane_state;
 		num_pipes++;
@@ -1026,20 +1028,29 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 					to_intel_frontbuffer(new_pipe_states[i]->hw.fb),
 					pipe_planes[i]->frontbuffer_bit);
 
-	/* Swap plane state */
-	plane->base.state = &new_plane_state->uapi;
+       /*
+        * We cannot swap crtc_state as it may be in use by an atomic commit or
+        * page flip that's running simultaneously. If we swap crtc_state and
+        * destroy the old state, we will cause a use-after-free there.
+        *
+        * Only update active_planes, which is needed for our internal
+        * bookkeeping. Either value will do the right thing when updating
+        * planes atomically. If the cursor was part of the atomic update then
+        * we would have taken the slowpath.
+        */
+	for (int i = 0; i < num_pipes; i++) {
+		struct intel_crtc_state *pipe_crtc_state =
+				pipe_crtc_states[i];
 
-	/*
-	 * We cannot swap crtc_state as it may be in use by an atomic commit or
-	 * page flip that's running simultaneously. If we swap crtc_state and
-	 * destroy the old state, we will cause a use-after-free there.
-	 *
-	 * Only update active_planes, which is needed for our internal
-	 * bookkeeping. Either value will do the right thing when updating
-	 * planes atomically. If the cursor was part of the atomic update then
-	 * we would have taken the slowpath.
-	 */
-	crtc_state->active_planes = new_crtc_state->active_planes;
+		pipe_planes[i]->base.state = &new_pipe_states[i]->uapi;
+
+		if (pipe_crtcs[i] == crtc)
+			pipe_crtc_state->active_planes = new_crtc_state->active_planes;
+		else if (new_pipe_states[i]->uapi.visible)
+			pipe_crtc_state->active_planes |= BIT(PLANE_CURSOR);
+		else
+			pipe_crtc_state->active_planes &= ~BIT(PLANE_CURSOR);
+	}
 
 	intel_vblank_evade_init(crtc_state, crtc_state, &evade);
 
-- 
2.25.1

