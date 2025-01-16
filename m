Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E43A142EB
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 21:17:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 525AE10E9F2;
	Thu, 16 Jan 2025 20:17:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cA7LdSrP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1237F10E9F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 20:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737058622; x=1768594622;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QoOYo/3YTciOJ76p6nBHVywzwD84RkgX4TzF4uhr9vw=;
 b=cA7LdSrPyP18aUXqtwMmIlbh1f+dqpZvf+qDcJEYr1RpsCeWjswWZoB3
 n3qXgG9v66Q+B77lbu7l6FXEj5kV23MdATDccMsgYjKbZLzN0Liwg7yLQ
 0Et6bsQ8Fp9hj4RpvoMQNKWwFjqW114LbVSlMpA3gAtk1LCcrHPt7W1Mq
 nMYFTetKDtc782nJ5MR0qv1GDobFxF7XGGa+1J84rkXXP/YQV7Pr44tIe
 r4mdy4d7TAaNeI8RUWOK/u2Uk9Tz72Sv5DWmd8YwIZl2Ad4ktIdfPNS8K
 3ReiswoLQ3ZdfU0TTQKbLaluvyTmpZbfqRvLh1d7bud/AheC1DTOuhUsM w==;
X-CSE-ConnectionGUID: O5WfZVrBSZGz4LjT58THXg==
X-CSE-MsgGUID: ZM+vk+hFRFS/09rRXhwWwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="40279248"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="40279248"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 12:17:01 -0800
X-CSE-ConnectionGUID: Doe6sU5/TCKaiPLR5iDEGA==
X-CSE-MsgGUID: EEZ1Uct/TaKkYBuO433LVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="105743497"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Jan 2025 12:16:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2025 22:16:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Paz Zcharya <pazz@chromium.org>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 7/8] drm/i915/dsb: Add support for triggering VRR push with DSB
Date: Thu, 16 Jan 2025 22:16:36 +0200
Message-ID: <20250116201637.22486-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
References: <20250116201637.22486-1-ville.syrjala@linux.intel.com>
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

We have at least two options for how to do the
TRANS_PUSH_SEND + commit completion signalling
with the DSB:

Option A)
 1. trigger TRANS_PUSH_SEND
 2. wait for "safe window"
 3. signal the interrupt

In this cases step 2 should not do anything if we were already
between vmin and vmax decision boundaries. Otherwise we'll wait
until the next start of the vblank period.

Option B)
 1. wait for "safe window"
 2. trigger TRANS_PUSH_SEND
 3. signal the interrupt

This option is perhaps a bit less racy, but if we do somehow
screw up and the wait is a nop but the push gets deferred
until the next frame then we'll end up completing the commit
a frame too early.

So for now I'm leaning towards option A since losing the race
won't have any drastic consequences. To deal with the race we
can give the DSB a bit more time to start step 2 before the
hardware has started the vblank termination properly. Often
times it seems to be fast enough to make it in time even without
any extra vblank delay (the push is issued somewhere within a
scanline and it latches on the next scanline).

v2: Use intel_vrr_possible() to determine if we need some
    vblank delay (also avoids adding it for DSI which doens't
    actually program the transcoder registers correctly for it)

Cc: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 471fe7d80f30..82c27da45d33 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2630,6 +2630,14 @@ static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
 	if (intel_crtc_needs_wa_14015401596(crtc_state))
 		vblank_delay = max(vblank_delay, 1);
 
+	/*
+	 * Add a minimal vblank delay to make sure the push
+	 * doesn't doesn't race with the "wait for safe
+	 * window" we use for frame completion with DSB.
+	 */
+	if (intel_vrr_possible(crtc_state))
+		vblank_delay = max(vblank_delay, 1);
+
 	return vblank_delay;
 }
 
@@ -7761,6 +7769,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
 					     state, crtc);
 
+		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
+
 		if (!new_crtc_state->dsb_color_vblank) {
 			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
 			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
-- 
2.45.2

