Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 325C1A2D0D7
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 23:43:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DE6210E317;
	Fri,  7 Feb 2025 22:43:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jpMxW0Ti";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D82F510EBB7;
 Fri,  7 Feb 2025 22:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738967541; x=1770503541;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zJ3bfN9jDCgj/2AVVzkDqFub5TbD6wecWJ/P/LjRJJw=;
 b=jpMxW0TiBs++kGBte1RwiRWusZXgasbHkYeZdMMRsUpu0muJJooij1EY
 kTuihqqwxCeU1tO9vWft+JU7aKLPUTMAqNgB3LsuZZcNIZpDRpj/m1+4n
 8t7iIMdUvP/i1tMQQAvSDFvv02G56HMsJIPeFYRe8X4lC7KvW4m00uBgT
 KBWNMSO17VBw2820OIPQqImmr65QGWGaOHSUCiTzlWKHLsx0z/E/qxquq
 qqzCp4MfGRXvPcREEqjGTHVcCPrWacIBFttqudmZYZ3pv/leOv+qASQxu
 dSovpD1KFuH5v+MIa6a0gg0PYGZHCQUaIqS8HUa+IJEPdkA4NOZ0OQ4ID w==;
X-CSE-ConnectionGUID: rCU9hH7vQpak8+DapqcjsA==
X-CSE-MsgGUID: dZPiCTOZRoiESuW5MKKdgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39313402"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="39313402"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 14:32:20 -0800
X-CSE-ConnectionGUID: GQJrjvdIRQyif/uhrqGaQg==
X-CSE-MsgGUID: CktiEosCSQyCaHJ38oF5DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="111857468"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Feb 2025 14:32:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 08 Feb 2025 00:32:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 6/8] drm/i915/vrr: Reorder the DSB "wait for safe window"
 vs. TRANS_PUSH
Date: Sat,  8 Feb 2025 00:31:57 +0200
Message-ID: <20250207223159.14132-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
References: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
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

Currently we trigger the push send first, then follow it with
a "wait for safe window". That approach no longer works on
PTL+ because triggering the push send immediately ends the safe
window. On prior hardware the safe window extended past the
push being sent (presumably all the way to the pipe's delayed
vblank).

In order to deal with the new hardware behaviour we must reverse
the order of these two operations: first wait for safe window,
then trigger the push.

The only slight danger with this approach is that if we mess up
the vblank evasion around the vmax decision boundary the push
might get postponed until after the next frame's vactive. But
assuming we don't mess up the vblank evasion this approach is
completely safe.

As a slight bonus we can perform the push after we've done the
LUT writes as well, meaning we no longer have to worry about
extending the vblank delay to provide enough time for LUT
programming. Instead we will now depend on the vblank evasion
at vmax decision boundary to guarantee this.

However vblank delay (or framestart delay) is still the only
way to provide extra time for the LUT programming in the
non-VRR use cases. Let's assume we don't need anything extra
for now, but eventually we should come up with some proper
estimates on how long the LUT programming can take and
configure the vblank delay accordingly for the non-VRR use
cases.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c   |  2 ++
 drivers/gpu/drm/i915/display/intel_display.c | 12 ++----------
 2 files changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 792cf7cef58a..4d8f6509cac4 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -29,6 +29,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsb.h"
+#include "intel_vrr.h"
 
 struct intel_color_funcs {
 	int (*color_check)(struct intel_atomic_state *state,
@@ -1988,6 +1989,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 	display->funcs.color->load_luts(crtc_state);
 
 	if (crtc_state->use_dsb) {
+		intel_vrr_send_push(crtc_state->dsb_color_vblank, crtc_state);
 		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color_vblank);
 		intel_dsb_interrupt(crtc_state->dsb_color_vblank);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 452b70ffe97c..0790b2a4583e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2630,14 +2630,6 @@ static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
 	if (intel_crtc_needs_wa_14015401596(crtc_state))
 		vblank_delay = max(vblank_delay, 1);
 
-	/*
-	 * Add a minimal vblank delay to make sure the push
-	 * doesn't race with the "wait for safe window" used
-	 * for frame completion with DSB.
-	 */
-	if (intel_vrr_possible(crtc_state))
-		vblank_delay = max(vblank_delay, 1);
-
 	return vblank_delay;
 }
 
@@ -7740,10 +7732,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
 					     state, crtc);
 
-		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
-
 		if (!new_crtc_state->dsb_color_vblank) {
 			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
+
+			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
 			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
 			intel_dsb_interrupt(new_crtc_state->dsb_commit);
 		}
-- 
2.45.3

