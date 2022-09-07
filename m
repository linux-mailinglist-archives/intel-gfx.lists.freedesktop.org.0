Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC0D5B0008
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:11:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EC6710E49D;
	Wed,  7 Sep 2022 09:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3C1710E48C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662541876; x=1694077876;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=auJE80Kp99NwBGEdoS9KF9kd+f8hBSapo32mKpNkOGI=;
 b=W8OTbnVo5Iba+J1Q7jJSQM3WoxpIohY68zE+8WsFmJL87ExIzmwPxM6k
 DLf0lbXUvDMhKohpbq1VlczDCVqN5VjnQvi/vQhh6HHGVnsFWBG+tpcJh
 6SizF4bCuzWgff4EraJeRFR7F8kQz+P0WJY5TUw17JHhhfl4J2kUxhz1/
 9c4DpO103jf/WM++HsiB7h5q3n4AOgo3h0Y/sJUwmGcW5SHxbZKSjckAK
 2ABhkAlbB7HbYtsJbLWLS3KZv5wyE7O7LMpVmgJI8izuOsbp0HZ/V2VxS
 hY7RuVN7c1csxCITLrj3MK2g3PBZCZTgO4939gmdYssNb8Va87xQASf+J w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="276562513"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="276562513"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:11:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="718052619"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 07 Sep 2022 02:11:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:11:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:10:45 +0300
Message-Id: <20220907091057.11572-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 05/17] drm/i915: Do .crtc_compute_clock()
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
index d0efdf6123fd..80e077050b67 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4819,10 +4819,6 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		crtc_state->update_wm_post = true;
 
 	if (mode_changed) {
-		ret = intel_dpll_crtc_compute_clock(state, crtc);
-		if (ret)
-			return ret;
-
 		ret = intel_dpll_crtc_get_shared_dpll(state, crtc);
 		if (ret)
 			return ret;
@@ -6911,6 +6907,11 @@ static int intel_atomic_check(struct drm_device *dev,
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
index 81655fdf2c89..6b8d90d72e00 100644
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

