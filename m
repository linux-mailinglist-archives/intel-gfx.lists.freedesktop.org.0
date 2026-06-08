Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4P2SH4dhJmqtVgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 08:30:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1657E65321F
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 08:30:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=m3UJGnWw;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5EEC10ED78;
	Mon,  8 Jun 2026 06:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76B6410ED78;
 Mon,  8 Jun 2026 06:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780900227; x=1812436227;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ya6zZBRepE62H65Dgd6ur0hlDx4EMahWzHwiG0VJfqA=;
 b=m3UJGnWwte78YchwVSpEb86DEz4VYeKa5z7HyPEhtiyIkDVcfa/HZJdP
 eWgbT3phErfZ7bT33YdX1UcLEOQ7LcEWbazaDTNNbZX+tJobdBodg7utX
 BKNJug54AEkvHPkNvsvexK3SeDdxvJK6Loi1S+aOXvyZzAAu47yDgu358
 s8TxrAD/nhvWwXNQyzWHCZUABrX2TX3EdOtxN5+GhJWYoHrg4eIpRgf4y
 LC52qsboyr7Gu+zVbgjAc4BGmhOiLmT5lfBU4AxE/6wQ+c2QkLL2YA8x5
 YbnsOOstLEUHgavc437InO3efKsbj/1adJUGrMO1gR8E17ci/GNPZD/Tu g==;
X-CSE-ConnectionGUID: EQiOeodRQYmPV7XCsRjEKw==
X-CSE-MsgGUID: ugozRCisSyyBZKWnKZTo5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="85482626"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="85482626"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2026 23:30:27 -0700
X-CSE-ConnectionGUID: 9evwRnx/RUu/loGABOhoYA==
X-CSE-MsgGUID: j2TXBo+eTfSTlbwAANUzgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="269158538"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa002.fm.intel.com with ESMTP; 07 Jun 2026 23:30:26 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 1/6] drm/i915/cursor: Check joiner cursor commit status
Date: Mon,  8 Jun 2026 11:56:24 +0530
Message-Id: <20260608062629.820477-2-nemesa.garg@intel.com>
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
X-Rspamd-Queue-Id: 1657E65321F

In joiner mode, secondary cursor commits may still be running
even when the primary cursor commit is done. Walking the secondary
pipes also requires holding the secondary planes modeset locks.
Add intel_cursor_lock_joined_planes() to acquire modeset locks
for all secondary cursor planes. Check all joined cursor commit
status before taking the fast path. If any commit is still pending,
fallback to slow path.

v2: Use intel_crtc_joined_pipe_mask(). [Ville]
v3: Lock secondary cursor CRTCs and planes. [sashiko]

Assisted-by: Claude:claude-sonnet-4.6
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 63 +++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 88384dea868b..f8b24865c93a 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -13,6 +13,7 @@
 #include <drm/drm_vblank.h>
 
 #include "intel_atomic.h"
+#include "intel_crtc.h"
 #include "intel_cursor.h"
 #include "intel_cursor_regs.h"
 #include "intel_de.h"
@@ -796,6 +797,58 @@ void intel_cursor_unpin_work(struct kthread_work *base)
 	intel_plane_destroy_state(&plane->base, &plane_state->uapi);
 }
 
+static int intel_cursor_lock_joined_planes(struct intel_display *display,
+					   const struct intel_crtc_state *crtc_state,
+					   struct intel_plane *primary_plane,
+					   struct drm_modeset_acquire_ctx *ctx)
+{
+	struct intel_crtc *pipe_crtc;
+	int ret;
+
+	for_each_intel_crtc_in_pipe_mask(display, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(crtc_state)) {
+		struct intel_plane *pipe_plane =
+			intel_crtc_get_plane(pipe_crtc, PLANE_CURSOR);
+
+		if (pipe_plane == primary_plane)
+			continue;
+
+		ret = drm_modeset_lock(&pipe_crtc->base.mutex, ctx);
+		if (ret)
+			return ret;
+
+		ret = drm_modeset_lock(&pipe_plane->base.mutex, ctx);
+		if (ret)
+			return ret;
+	}
+	return 0;
+}
+
+static bool
+intel_cursor_joiner_commits_idle(struct intel_display *display,
+				 const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *pipe_crtc;
+
+	for_each_intel_crtc_in_pipe_mask(display, pipe_crtc,
+					 intel_crtc_joined_pipe_mask(crtc_state)) {
+		struct intel_plane *pipe_plane;
+		struct intel_plane_state *pipe_plane_state;
+
+		if (pipe_crtc == to_intel_crtc(crtc_state->uapi.crtc))
+			continue;
+
+		pipe_plane = intel_crtc_get_plane(pipe_crtc, PLANE_CURSOR);
+		pipe_plane_state = to_intel_plane_state(pipe_plane->base.state);
+
+		if (pipe_plane_state->uapi.commit &&
+		    !try_wait_for_completion(&pipe_plane_state->uapi.commit->hw_done))
+			return false;
+	}
+
+	return true;
+}
+
 static int
 intel_legacy_cursor_update(struct drm_plane *_plane,
 			   struct drm_crtc *_crtc,
@@ -842,6 +895,16 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	    !try_wait_for_completion(&old_plane_state->uapi.commit->hw_done))
 		goto slow;
 
+	ret = intel_cursor_lock_joined_planes(display, crtc_state, plane, ctx);
+	if (ret == -EDEADLK)
+		return ret;
+	if (ret)
+		goto slow;
+
+	/* Check all joined pipes for pending commits */
+	if (!intel_cursor_joiner_commits_idle(display, crtc_state))
+		goto slow;
+
 	/*
 	 * If any parameters change that may affect watermarks,
 	 * take the slowpath. Only changing fb or position should be
-- 
2.25.1

