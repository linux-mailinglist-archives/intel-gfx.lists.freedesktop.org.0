Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F113518C2D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47CFD10E800;
	Tue,  3 May 2022 18:22:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9701C10E820
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602172; x=1683138172;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NI+qepTN5HrOUzEzLWHLWahcioSPbNBvkOBwrsdSzoo=;
 b=XKAjrzN3OB169lGMoKu/MIw+uw6HvjLQzTsYBMGn57vKxmaIA4YV9Bmq
 wx9RC8njIb2cIU6F74YTAibrbSbihWDj9TD+shwq92D+A3HBoWo0Q5rSq
 oRdLKNKPVvGbrLjj4iznXp1FYJ4GE80o1PS4U14TFYdFb8uZlbhrLsSpu
 SV7O3nCQvdwx7PYeq1QVBTo6HTR8MFgIhIn7/z6A83Iam/2hhPCN0qcb3
 gLFRWrakJZJ+kqd/N6E3hr8FyAzsPSe9xAoE8u3sqfgpFxrknV7Q83ZK9
 Fi7K/YN2aOa6gQmpINlS6dLXEialZBrAK+1idbwkleTlp7hfyyrbWwnAi A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="249532672"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="249532672"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:22:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="547719863"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga002.jf.intel.com with SMTP; 03 May 2022 11:22:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:22:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:18 +0300
Message-Id: <20220503182242.18797-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/26] drm/i915: Do .crtc_compute_clock() earlier
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

Currently we calculate a lot of things (pixel rate, watermarks,
cdclk) trusting that the DPLL can generate the exact frequency
we ask it. In practice that is not true and there can be
certain amount of rounding involved.

To allow us to eventually get accurate numbers for all our
DPLL clock derived state we need to move the DPLL calculation
to hapen much earlier. To that end we hoist it up to the just
after the fastset checks. For now we just do the easy code
motion, and the actual back feeding of the final DPLL clock
into the state will come later.

A slight change here is that now .crtc_compute_clock()
can get called while the shared_dpll is still assigned.
But since .crtc_compute_clock() no longer assignes new
shared_dplls this is perfectly fine.

TODO: I'd actually like to do this before the fastset check
so that if the DPLL state should change we actually do the
modeset. Which I think is what the video aficionados want,
but it might not be what the fans of fastboot want. Not yet
sure how to reconcile those conflicting requirements...

v2: s/return/goto/ in error handling

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +++++----
 drivers/gpu/drm/i915/display/intel_dpll.c    | 3 ---
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0decf3d24237..5e50e0d56088 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4905,10 +4905,6 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		crtc_state->update_wm_post = true;
 
 	if (mode_changed) {
-		ret = intel_dpll_crtc_compute_clock(state, crtc);
-		if (ret)
-			return ret;
-
 		ret = intel_dpll_crtc_get_shared_dpll(state, crtc);
 		if (ret)
 			return ret;
@@ -7801,6 +7797,11 @@ static int intel_atomic_check(struct drm_device *dev,
 					    new_crtc_state, i) {
 		if (intel_crtc_needs_modeset(new_crtc_state)) {
 			any_ms = true;
+
+			ret = intel_dpll_crtc_compute_clock(state, crtc);
+			if (ret)
+				goto fail;
+
 			continue;
 		}
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index c19fb075ee6e..7f0538ee2b51 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1449,9 +1449,6 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 
 	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
 
-	if (drm_WARN_ON(&i915->drm, crtc_state->shared_dpll))
-		return 0;
-
 	memset(&crtc_state->dpll_hw_state, 0,
 	       sizeof(crtc_state->dpll_hw_state));
 
-- 
2.35.1

