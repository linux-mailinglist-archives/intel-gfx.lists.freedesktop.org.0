Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE024E7391
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 13:32:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 233A710E8F2;
	Fri, 25 Mar 2022 12:32:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9002510E716
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 12:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648211560; x=1679747560;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lrUDp4PyGT/MM81CCQ43AIWA2CcGpIVzOlqRTZnRjn0=;
 b=ZhkrgSQXFKXjBUIzK7BkxvkpcZeLA0OhUFEsKeEn9LjOuNzeOwoP2sJ3
 /iklPqKhh7woyzWws9YmZZSbs5xkZ7Hn9EtXw6Hu7dEGfv7qGH5dLUz+f
 IW7ayc4MVtzJTzQt7PF+g8abSuKSIns7uCl7s5HbvYp/KxKVCnIxE7/bk
 8+ojzOlGSO3mI38pHA6dlmRw7l6xH10idxN6wsdDzLXKf7rjRjl0tYQ3U
 3D1gH7i5cddN4HZp4QYROxSmuLwHykXOA3qd/IPKiKx9+bQNU0RK4v/T+
 j/tipdnwVdjCTUVXwXyJX3unEij+VuEr3EFlQNNY4idtUJbm+he75+/2R w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="256190052"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="256190052"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 05:32:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="520187383"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga006.jf.intel.com with SMTP; 25 Mar 2022 05:32:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 14:32:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Mar 2022 14:32:03 +0200
Message-Id: <20220325123205.22140-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
References: <20220325123205.22140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/13] drm/i915: Do .crtc_compute_clock() earlier
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

To allows us to eventually get accurate numbers for all our
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
index 1b7bc764498c..f6db0bd2da6f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5000,10 +5000,6 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 		crtc_state->update_wm_post = true;
 
 	if (mode_changed) {
-		ret = intel_dpll_crtc_compute_clock(state, crtc);
-		if (ret)
-			return ret;
-
 		ret = intel_dpll_crtc_get_shared_dpll(state, crtc);
 		if (ret)
 			return ret;
@@ -7896,6 +7892,11 @@ static int intel_atomic_check(struct drm_device *dev,
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
index 32918e082e9f..7c6e72555b82 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1456,9 +1456,6 @@ int intel_dpll_crtc_compute_clock(struct intel_atomic_state *state,
 
 	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
 
-	if (drm_WARN_ON(&i915->drm, crtc_state->shared_dpll))
-		return 0;
-
 	memset(&crtc_state->dpll_hw_state, 0,
 	       sizeof(crtc_state->dpll_hw_state));
 
-- 
2.34.1

