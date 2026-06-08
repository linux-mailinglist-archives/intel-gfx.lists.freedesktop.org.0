Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nwjBIZhhJmqyVgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 08:30:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34092653234
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 08:30:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="KJ/BPMN9";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAA5410ED76;
	Mon,  8 Jun 2026 06:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5FC810ED76;
 Mon,  8 Jun 2026 06:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780900246; x=1812436246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rcp4Cud83cwBxr8/2c/DwdlpsmZq7KCl/Uc5QgMRduQ=;
 b=KJ/BPMN9NCwkdK+62mQsSvU3dQKPmXVP9nLlGmKxTfy8dRTcusBar+yO
 OhPpTIa+cFmKHAyggqtX+ZNd3DZlrlBUqHRe8n6ahi0qJpMNH1rByvfRq
 ylsFrDA9NdR57625PkgkOSh+sdTEFJxRYljbqxG1tBEgh/yWjfJTGtznD
 pzbLThI7PQiaJvR5HUGLzCHZf1M00A2AK4T2QaNDfcNry0bYWjRtUM8FF
 1K5vOa2DalW6vHbKSQHQoiFkLWfLDLubowPuahQ5OA4y0rsxCu61RkUYA
 KLbQ8VCZMYYEwQ8Jz2yJdPGzXQoXenAhGLTyd8q0t81iD0iN5ric/FCmI A==;
X-CSE-ConnectionGUID: CW9moZWwQJK3BlLWvG1UPA==
X-CSE-MsgGUID: A7143YLwR76tdEoXTExBTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="85482697"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="85482697"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2026 23:30:37 -0700
X-CSE-ConnectionGUID: cKMVm0KFRdqm6UtbVNxkaw==
X-CSE-MsgGUID: SteGbK9KRmCDiHBUjU2WEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="269158625"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa002.fm.intel.com with ESMTP; 07 Jun 2026 23:30:36 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 4/6] drm/i915/cursor: Sync joiner secondary cursor state
Date: Mon,  8 Jun 2026 11:56:27 +0530
Message-Id: <20260608062629.820477-5-nemesa.garg@intel.com>
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
X-Rspamd-Queue-Id: 34092653234

Before entering the vblank evade window, swap in the new
plane states for all joined cursor planes uniformly and update
each pipe crtc's active_planes bitmask to reflect the
new cursor visibility.

The bitmask is updated on the live crtc state (read via
pipe_crtcs[i]->base.state) rather than on the duplicated
new_crtc_state, since the duplicate is destroyed at out_free and
its value would otherwise be lost. The same update is applied
uniformly to primary and secondary pipes based on
new_pipe_states[i]->uapi.visible.

v2: Check primary and secondary pipe together. [Ville]
v3: Update active_planes on the live crtc state for all pipes. [sashiko]

Assisted-by: Claude:claude-sonnet-4.6
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 3da2c2308081..147ed6efb174 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -1045,9 +1045,6 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 					to_intel_frontbuffer(new_pipe_states[i]->hw.fb),
 					pipe_planes[i]->frontbuffer_bit);
 
-	/* Swap plane state */
-	plane->base.state = &new_plane_state->uapi;
-
 	/*
 	 * We cannot swap crtc_state as it may be in use by an atomic commit or
 	 * page flip that's running simultaneously. If we swap crtc_state and
@@ -1058,7 +1055,17 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	 * planes atomically. If the cursor was part of the atomic update then
 	 * we would have taken the slowpath.
 	 */
-	crtc_state->active_planes = new_crtc_state->active_planes;
+	for (int i = 0; i < num_pipes; i++) {
+		struct intel_crtc_state *pipe_crtc_state =
+				to_intel_crtc_state(pipe_crtcs[i]->base.state);
+
+		pipe_planes[i]->base.state = &new_pipe_states[i]->uapi;
+
+		if (new_pipe_states[i]->uapi.visible)
+			pipe_crtc_state->active_planes |= BIT(PLANE_CURSOR);
+		else
+			pipe_crtc_state->active_planes &= ~BIT(PLANE_CURSOR);
+	}
 
 	intel_vblank_evade_init(crtc_state, crtc_state, &evade);
 
-- 
2.25.1

