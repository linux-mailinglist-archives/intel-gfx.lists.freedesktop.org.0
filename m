Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B37D8510737
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 20:37:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A00110E33D;
	Tue, 26 Apr 2022 18:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0FFD10E33D
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 18:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650998246; x=1682534246;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NI+qepTN5HrOUzEzLWHLWahcioSPbNBvkOBwrsdSzoo=;
 b=C1poUIoTFvwtuTB3REb5moSvVDjyf+X+FQPrnr7/sLG7apb6srRpgXhz
 Uod2jqcmzAcFdFMHY3nUQjnE4GxCfukhK+LVKCIpYrCR3z7lNx/pcHpY/
 Cc2GrXQ0z0ElKOjZJ351BDyMmcxZnXOXHQ3v11sMRRACB9nIAybbjXzuJ
 VgvVyZejF3qcBHo89yM9Dl2KU69zZvsa4XsPslmuwlhtM9eENt9ec4zuN
 NMmCix510ppPnhe0631OQYfBXUymBNc29XPpxhzATXDV3ftiDrbUrDtAZ
 kkUenycOAXwNPzIqNjGqyAMVBP8ACIV0s1P2aZHN5TcN5Txz7Ln4XJN4A g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="265491660"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="265491660"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 11:37:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="617133888"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga008.fm.intel.com with SMTP; 26 Apr 2022 11:37:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 21:37:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 21:37:15 +0300
Message-Id: <20220426183717.27099-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426183717.27099-1-ville.syrjala@linux.intel.com>
References: <20220426183717.27099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915: Do .crtc_compute_clock()
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

