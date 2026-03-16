Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEFAEmYyuGmvaAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 17:40:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9137E29D881
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 17:40:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D6EF10E27F;
	Mon, 16 Mar 2026 16:40:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mz2X89ay";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34A7810E27F;
 Mon, 16 Mar 2026 16:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773679202; x=1805215202;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X+1cXAGqYt76ApyxRWpM6zbw57LF77SbCAxABu90hy8=;
 b=mz2X89aymyT5ozP2QTumj50unM6Fl5m79cQQhkG/aZk0xIZvs6BFtMlk
 YPJH6czOBEFESp4RiF3lTtjuEKVgr5d0tgxKr1J4qvxFqQ21oDpDvay5o
 4kV8OM7K+G0emHuXboZOHK+3SrL1Dwjdtljry++CsX56qj9SUnL/9U8Cf
 BiV9gacSpdBW3+f2F8xN6zgX5KfWxi69JJ7Ehq+oR/jaU+Ij4RUGUv1Bu
 MJqexJd7Y2m9eKpYvovrquxW9JJ+NV+etT0tL5rFnCY3Veyo54koJokY8
 GRtN0LS7RMKjxUME7SwBwk5QWuARpPeHn4+0x9AggWoPif/fnXO9MnfbU A==;
X-CSE-ConnectionGUID: 9LlJjBSAQgyatyvZiTn8tQ==
X-CSE-MsgGUID: H4TtAHHnTdqvJBhVyJV9Pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="74735676"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74735676"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 09:40:02 -0700
X-CSE-ConnectionGUID: u/8TmVzeTKKfi1s3ZUog0w==
X-CSE-MsgGUID: tdWv/I/OR9+oXmjQh/Bbkw==
X-ExtLoop1: 1
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.42])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 09:40:00 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, stable@vger.kernel.org,
 Khaled Almahallawy <khaled.almahallawy@intel.com>
Subject: [PATCH 1/3] drm/i915: Unlink NV12 planes earlier
Date: Mon, 16 Mar 2026 18:39:51 +0200
Message-ID: <20260316163953.12905-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260316163953.12905-1-ville.syrjala@linux.intel.com>
References: <20260316163953.12905-1-ville.syrjala@linux.intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9137E29D881
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

unlink_nv12_plane() will clobber parts of the plane state
potentially already set up by plane_atomic_check(), so we
must make sure not to call the two in the wrong order.
The problem happens when a plane previously selected as
a Y plane is now configured as a normal plane by user space.
plane_atomic_check() will first compute the proper plane
state based on the userspace request, and unlink_nv12_plane()
later clears some of the state.

This used to work on account of unlink_nv12_plane() skipping
the state clearing based on the plane visibility. But I removed
that check, thinking it was an impossible situation. Now when
that situation happens unlink_nv12_plane() will just WARN
and proceed to clobber the state.

Rather than reverting to the old way of doing things, I think
it's more clear if we unlink the NV12 planes before we even
compute the new plane state.

Cc: stable@vger.kernel.org
Reported-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Closes: https://lore.kernel.org/intel-gfx/20260212004852.1920270-1-khaled.almahallawy@intel.com/
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Fixes: 6a01df2f1b2a ("drm/i915: Remove pointless visible check in unlink_nv12_plane()")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_plane.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index e06a0618b4c6..076b9b356481 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -436,11 +436,16 @@ void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
 		drm_framebuffer_get(plane_state->hw.fb);
 }
 
+static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
+			      struct intel_plane_state *plane_state);
+
 void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 			       struct intel_plane_state *plane_state)
 {
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 
+	unlink_nv12_plane(crtc_state, plane_state);
+
 	crtc_state->active_planes &= ~BIT(plane->id);
 	crtc_state->scaled_planes &= ~BIT(plane->id);
 	crtc_state->nv12_planes &= ~BIT(plane->id);
@@ -1513,6 +1518,9 @@ static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
 	struct intel_display *display = to_intel_display(plane_state);
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 
+	if (!plane_state->planar_linked_plane)
+		return;
+
 	plane_state->planar_linked_plane = NULL;
 
 	if (!plane_state->is_y_plane)
@@ -1550,8 +1558,7 @@ static int icl_check_nv12_planes(struct intel_atomic_state *state,
 		if (plane->pipe != crtc->pipe)
 			continue;
 
-		if (plane_state->planar_linked_plane)
-			unlink_nv12_plane(crtc_state, plane_state);
+		unlink_nv12_plane(crtc_state, plane_state);
 	}
 
 	if (!crtc_state->nv12_planes)
-- 
2.52.0

