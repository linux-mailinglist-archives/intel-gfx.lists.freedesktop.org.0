Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F351454D38
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 19:31:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E84206E0B6;
	Wed, 17 Nov 2021 18:31:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91BB26E0B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 18:31:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10171"; a="221238845"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="221238845"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 10:31:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="495044708"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 17 Nov 2021 10:31:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Nov 2021 20:31:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Nov 2021 20:31:01 +0200
Message-Id: <20211117183103.27418-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Move vrr push after the frame
 counter sampling again
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Moving the vrr push to happen before sampling the frame counter
was wrong. If we are already in vblank when the push is sent
the vblank exit will start immediately which causes the sampled
frame counter to correspond to the next frame instead of the current
frame.

So put things back into the original order (except we should
keep the vrr push within the irq disable section to avoid
pointless irq related delays here).

We'll just have to accept the tiny race that exists between
sampling the frame counter vs. vrr push. And let's at least
document said race properly in a comment.

I suppose we could try to minimize the race by sampling the frame
counter just before sending the push, but that would require
changing drm_crtc_arm_vblank_event() to accept a caller provided
vblank counter value, so leave it be for now. Another thing we
could do is change the vblank evasion to account for the case
where a push was already sent. That would anyway be required
for mailbox style updates. Currently mailbox updates are only
used by the legacy cursor, but we don't do a vrr push for those.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Fixes: 6f9976bd1310 ("drm/i915: Do vrr push before sampling the frame counter")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index f09df2cf052b..cf403be7736c 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -610,9 +610,6 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 
 	trace_intel_pipe_update_end(crtc, end_vbl_count, scanline_end);
 
-	/* Send VRR Push to terminate Vblank */
-	intel_vrr_send_push(new_crtc_state);
-
 	/*
 	 * Incase of mipi dsi command mode, we need to set frame update
 	 * request for every commit.
@@ -641,6 +638,22 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 		new_crtc_state->uapi.event = NULL;
 	}
 
+	/*
+	 * Send VRR Push to terminate Vblank. If we are already in vblank
+	 * this has to be done _after_ sampling the frame counter, as
+	 * otherwise the push would immediately terminate the vblank and
+	 * the sampled frame counter would correspond to the next frame
+	 * instead of the current frame.
+	 *
+	 * There is a tiny race here (iff vblank evasion failed us) where
+	 * we might sample the frame counter just before vmax vblank start
+	 * but the push would be sent just after it. That would cause the
+	 * push to affect the next frame instead of the current frame,
+	 * which would cause the next frame to terminate already at vmin
+	 * vblank start instead of vmax vblank start.
+	 */
+	intel_vrr_send_push(new_crtc_state);
+
 	local_irq_enable();
 
 	if (intel_vgpu_active(dev_priv))
-- 
2.32.0

