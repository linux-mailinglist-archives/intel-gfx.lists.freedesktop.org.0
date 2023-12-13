Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF9F810E65
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 11:25:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0364D10E787;
	Wed, 13 Dec 2023 10:25:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C9E410E787
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 10:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702463146; x=1733999146;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=r2zm2yNMDzGYA7Hw3zkxvLJAqegLWf9UdAXBvTou6AE=;
 b=PRHs0y4reEFAvs7IA+JlIQigKvFNOZDosZ2kzkpWch3fLFA82LugS7DS
 TNY/6+21a0/6HXlzdhdkrGHOjiCSXfJoeVWTvogSZAE2h1+6wU4Yp7Ql5
 PdIGUDLJZaYH5NSUokuvetuwu1iJNJlsmq3wFP+0fK5qnhshvIg5oMGod
 bT1fWmQtKYuoHRJvud9Yydb9HpYToTEpdAbGn5gIU6E+CAH6qRV4YqKrH
 2cHfPSgqd6hNLmdJ8E57QIj7N9kRc+Fy0MPYRQJ4iHt0tjZ4kEa4VGktR
 R/eZ2JR8jyqK8ARjO/FZfuK7eRH4GNV+/Wsx6pnONq6NC5tPakkqs2EzC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="393816108"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="393816108"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 02:25:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767161660"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="767161660"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 02:25:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 12:25:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 8/9] drm/i915: Perform vblank evasion around legacy cursor
 updates
Date: Wed, 13 Dec 2023 12:25:18 +0200
Message-ID: <20231213102519.13500-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Our legacy cursor updates are actually mailbox updates.
Ie. the hardware latches things once per frame on start of
vblank, but we issue an number of updates per frame,
withough any attempt to synchronize against the vblank
in software. So in theory only the last update issued
during the frame will latch, and the previous ones are
discarded.

However this can lead to problems with maintaining the
ggtt/iommu mappings as we have no idea which updates
will actually latch.

The problem is exacerbated by the hardware's annoying disarming
behaviour; any non-arming register write will disarm an already
armed update, only to be rearmed later by the arming register
(CURBASE in case of cursors). If a disarming write happens
just before the start of vblank, and the arming write happens
after start of vblank we have effectively prevented the hardware
from latching anything. And if we manage to straddle multiple
sequential vblank starts in this manner we effectively prevent
the hardware from latching any new registers for an arbitrary
amount of time. This provides more time for the (potentially
still in use by the hardware) gtt/iommu mappings to be torn
down.

A partial solution, of course, is to use vblank evasion to
avoid the register writes from spreading on both sides of
the start of vblank.

I've previously highlighted this problem as a general issue
affecting mailbox updates. I even added some notes to the
{i9xx,skl}_crtc_planes_update_arm() to remind us that the noarm
and arm phases both need to pulled into the vblank evasion
critical section if we actually decided to implement mailbox
updates in general. But as I never impelemented the noarm+arm
split for cursors we don't have to worry about that for the
moment.

We've been lucky enough so far that this hasn't really caused
problems. One thing that does help is that Xorg generally
sticks to the same cursor BO. But igt seems pretty good at
hitting this on MTL now, so apparently we have to start
thinking about this.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 926e2de00eb5..77531838001f 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -22,6 +22,7 @@
 #include "intel_frontbuffer.h"
 #include "intel_psr.h"
 #include "intel_psr_regs.h"
+#include "intel_vblank.h"
 #include "skl_watermark.h"
 
 #include "gem/i915_gem_object.h"
@@ -647,12 +648,14 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 {
 	struct intel_plane *plane = to_intel_plane(_plane);
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	struct intel_plane_state *old_plane_state =
 		to_intel_plane_state(plane->base.state);
 	struct intel_plane_state *new_plane_state;
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_crtc_state *new_crtc_state;
+	struct intel_vblank_evade_ctx evade;
 	int ret;
 
 	/*
@@ -745,14 +748,15 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	 */
 	crtc_state->active_planes = new_crtc_state->active_planes;
 
-	/*
-	 * Technically we should do a vblank evasion here to make
-	 * sure all the cursor registers update on the same frame.
-	 * For now just make sure the register writes happen as
-	 * quickly as possible to minimize the race window.
-	 */
+	intel_vblank_evade_init(crtc_state, crtc_state, &evade);
+
 	local_irq_disable();
 
+	if (!drm_WARN_ON(&i915->drm, drm_crtc_vblank_get(&crtc->base))) {
+		intel_vblank_evade(&evade);
+		drm_crtc_vblank_put(&crtc->base);
+	}
+
 	if (new_plane_state->uapi.visible) {
 		intel_plane_update_noarm(plane, crtc_state, new_plane_state);
 		intel_plane_update_arm(plane, crtc_state, new_plane_state);
-- 
2.41.0

