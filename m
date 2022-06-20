Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF438552311
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 19:52:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107D210ED9C;
	Mon, 20 Jun 2022 17:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA94810EDFB
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 17:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655747549; x=1687283549;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rO3O70PlLOxIyExfu46ovL8gnZCOBpoaZKZm6DccUP8=;
 b=J8iz7i2R2eWB6KQGg/csYHRKsNmZhfmIWzKB8u/rHPWTGQ2wRZeM2Vnu
 giaoC5CZ1K7y2DruFs19R35tjG+MBLIpCoInKbpz9CLbBFTW3qppBTqyF
 UVSJFq7snFs/+IWXsFMDiL6iiYef+5gaIpDEOrXN4P6+WlxkMZIN6kN6c
 5EjQEV8ZnvW09x+nKBjzHEaPM4b7TI3jU9bFIXrWykd96ay4A+bP5R8QQ
 X+ZqtwbBHzX1kdyYrfbNV8iFDaXZCYZlfxQulpfKGuRIUowYYzzOM/fdd
 lgpoviTqkWaB8gBjneumSQEccbDHY0W8cjMKSV/JxJqqgm1+hQ8UOYmy9 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="268669304"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="268669304"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 10:52:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="620189720"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga001.jf.intel.com with SMTP; 20 Jun 2022 10:52:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jun 2022 20:52:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 20:51:58 +0300
Message-Id: <20220620175210.28788-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 05/17] drm/i915: Do .crtc_compute_clock()
 earlier
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
Cc: Jani Nikula <jani.nikula@intel.com>
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

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +++++----
 drivers/gpu/drm/i915/display/intel_dpll.c    | 3 ---
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0384af821ee5..25dd47835cfe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4809,10 +4809,6 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		crtc_state->update_wm_post = true;
 
 	if (mode_changed) {
-		ret = intel_dpll_crtc_compute_clock(state, crtc);
-		if (ret)
-			return ret;
-
 		ret = intel_dpll_crtc_get_shared_dpll(state, crtc);
 		if (ret)
 			return ret;
@@ -6901,6 +6897,11 @@ static int intel_atomic_check(struct drm_device *dev,
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
index 5262f16b45ac..8d095f28fa20 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1411,9 +1411,6 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 
 	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
 
-	if (drm_WARN_ON(&i915->drm, crtc_state->shared_dpll))
-		return 0;
-
 	memset(&crtc_state->dpll_hw_state, 0,
 	       sizeof(crtc_state->dpll_hw_state));
 
-- 
2.35.1

