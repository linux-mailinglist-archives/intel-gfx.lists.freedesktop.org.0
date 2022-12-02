Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 355776407D7
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 14:44:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374BD10E0BD;
	Fri,  2 Dec 2022 13:44:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93EF310E143
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 13:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669988658; x=1701524658;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dJQyOhn8SoM+DoQymEc+1JpD7tD5Feyelpj5wZFAIDo=;
 b=bEqzb8xU8b4/GIOIWcrqzKy0kno0eXYc9iPf15cY07JuLM9V8aavKp1b
 ST8gHK1oja8X7g83umxSPeguDqPUyNfBrq2NrFF6A5rdixNTRlj+fsNX1
 aYepFuHsBorlTqBdvcpV7TZtdjfPdu2ctO+q87ikGnHE6OIBo6tZG0TQB
 eX9s1Q2AR8/27I8Gaf94cLjOMEU1JLKJrUgM6rLs/y6AVCAEg76p0GQx+
 9C9RrZSLPw9KRjXGYhXyFxm5PLLTTNH/H8sURKN2aw7otIWvqoHW4j2dI
 rbGnAgvE5aiG9AwRMAwKZlwyFSA5smFUFaMSASI47584qePkPqSmAEQzG Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="317102409"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="317102409"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 05:44:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="622703994"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="622703994"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga006.jf.intel.com with SMTP; 02 Dec 2022 05:44:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Dec 2022 15:44:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 15:44:09 +0200
Message-Id: <20221202134412.21943-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
References: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/vrr: Make registers latch in a
 consitent place on icl/tgl
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

Account for the framestart delay when calculating the "pipeline full"
value for icl/tgl vrr. This puts the start of vblank (ie. where the
double bufferd registers get latched) to a consistent place regardless
of what framestart delay value is used. framestart delay does not
change where start of vblank occurs in non-vrr mode and I can't see
any reason why we'd want different behaviour in vrr mode.

Currently framestart delay is always set to 1, and the hardcoded 4
scanlines in the code means we're currently delaying the start of
vblank by three extra lines. And with framestart delay set to 4 we'd
have no extra delay.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 7b1357e82b69..6655dd2c1684 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -153,18 +153,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		crtc_state->vrr.guardband =
 			crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay;
 	} else {
-		/*
-		 * FIXME: s/4/framestart_delay/ to get consistent
-		 * earliest/latest points for register latching regardless
-		 * of the framestart_delay used?
-		 *
-		 * FIXME: this really needs the extra scanline to provide consistent
-		 * behaviour for all framestart_delay values. Otherwise with
-		 * framestart_delay==4 we will end up extending the min vblank by
-		 * one extra line.
-		 */
 		crtc_state->vrr.pipeline_full =
-			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay - 4 - 1);
+			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay -
+			    crtc_state->framestart_delay - 1);
 	}
 
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
-- 
2.37.4

