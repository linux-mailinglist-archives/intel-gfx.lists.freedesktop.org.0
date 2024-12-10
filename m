Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B809EBBA0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:11:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE63210E98E;
	Tue, 10 Dec 2024 21:10:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MfaMnvAw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10BD610E98A
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865057; x=1765401057;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Tt44BQJrqupArjxUAHTn8yRV06ot1m2sy2wq9vj39+c=;
 b=MfaMnvAwFAxq8nRzzH1jkrouHaCzW7g2xRsTn6iZfGQf846IfvJDRkZm
 GK2iu4f8R2kUoS7wG+QmiV//svZZZuLT9rPklu4YxZ6YBQsMMKKUxOqKq
 1yWDJs3y0K0j+azXQS2ObCiQKdX3wxWXZG6I3p5W4rVYSBFxsgux5buhr
 LCYmOYS6K+vmgYeJttgerf2lyCRqLCZshoHVNQqkgEIhWQqfRle1EPv8F
 MfOqaZO50Y4w9t8FHMxzwkCgVuaIy8sRoyud8pE26as6cEZLH6DZAFaOw
 iZ0AFIf53rw38HnT4gAwPIXJUSBCvrwPQZD3TJVApVIZXWnCSVc08wuOL A==;
X-CSE-ConnectionGUID: RrIT1kGfTjutPhX5qT+iXQ==
X-CSE-MsgGUID: uhGCntxbTjSkaaMMGrnGUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620222"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620222"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:57 -0800
X-CSE-ConnectionGUID: srD6HsigQym/5adIFtbAbg==
X-CSE-MsgGUID: odyUsT6ZTIiHXVlAA1CK4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735161"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 17/18] drm/i915/dsb: Add support for triggering VRR push with
 DSB
Date: Tue, 10 Dec 2024 23:10:06 +0200
Message-ID: <20241210211007.5976-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 22b5eacda0f0..4b3199dcbe7a 100644
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
+	if (HAS_VRR(display))
+		vblank_delay = max(vblank_delay, 1);
+
 	return vblank_delay;
 }
 
@@ -7725,6 +7733,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
 					     state, crtc);
 
+		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
+
 		if (!new_crtc_state->dsb_color_vblank) {
 			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
 			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
-- 
2.45.2

