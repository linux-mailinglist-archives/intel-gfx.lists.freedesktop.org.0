Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 772045B0005
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Sep 2022 11:11:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 563C810E49F;
	Wed,  7 Sep 2022 09:11:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 165DD10E48C
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 09:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662541880; x=1694077880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RL9q+B9oDRvuqXt4r6X0Qg/O0ZPHEOvPqzqb/aNlfrg=;
 b=nVz2AElYeRcwpfxLaCVaAqjQd2cL9qaOuFP8bshLDXINIxhckkzJFa5b
 fQ5V4HIHzbQKWUsxAydzK0WC7X7oU2nxD1e9JWwFkcvzIZS0Y/9ku6fNN
 duEMVls2OJMs5CT90XsNSNtiphKcqOzT2TlrGYyLf4PeR3tf+uERDSNNA
 52CgUK84EFti6OltZV55E1yPtUc77JxcwCCKNB/vFuP2//wVSDozjy5c3
 0PKz7mGG2KroXWYNBeHmrfm+bjGTg4k9NG7dnkWAhHn2GzHmerRgN34Hc
 aLQo9pR0VFClnMG4fCSUIfEepL3kkdKVNhII0RlzXENlPonOk+jg2/NNs g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="296822218"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="296822218"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 02:11:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="617007062"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 07 Sep 2022 02:11:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Sep 2022 12:11:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 12:10:46 +0300
Message-Id: <20220907091057.11572-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
References: <20220907091057.11572-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 06/17] drm/i915: Reassign DPLLs only for
 crtcs going throug .compute_config()
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

Only reassign the pipe's DPLL if it's going through a full
.compute_config() cycle. If OTOH it's just getting modeset
eg. in order to change cdclk there doesn't seem much point in
picking a new DPLL for it.

This should also prevent .get_dplls() from seeing a funky port_clock
for DP even in cases where the readout produces a non-standard
clock and we (for some reason) have decided to not fully recompute
the state to remedy the situation.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 17 +----------------
 drivers/gpu/drm/i915/display/intel_dpll.c    |  6 ++----
 2 files changed, 3 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 80e077050b67..4e8d30ff998b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6065,20 +6065,6 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-static void intel_modeset_clear_plls(struct intel_atomic_state *state)
-{
-	struct intel_crtc_state *new_crtc_state;
-	struct intel_crtc *crtc;
-	int i;
-
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
-		if (!intel_crtc_needs_modeset(new_crtc_state))
-			continue;
-
-		intel_release_shared_dplls(state, crtc);
-	}
-}
-
 /*
  * This implements the workaround described in the "notes" section of the mode
  * set sequence documentation. When going from no pipes or single pipe to
@@ -6912,6 +6898,7 @@ static int intel_atomic_check(struct drm_device *dev,
 			if (ret)
 				goto fail;
 
+			intel_release_shared_dplls(state, crtc);
 			continue;
 		}
 
@@ -6959,8 +6946,6 @@ static int intel_atomic_check(struct drm_device *dev,
 		ret = intel_modeset_calc_cdclk(state);
 		if (ret)
 			return ret;
-
-		intel_modeset_clear_plls(state);
 	}
 
 	ret = intel_atomic_check_crtcs(state);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 6b8d90d72e00..4b20541ba760 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1436,11 +1436,9 @@ int intel_dpll_crtc_get_shared_dpll(struct intel_atomic_state *state,
 	int ret;
 
 	drm_WARN_ON(&i915->drm, !intel_crtc_needs_modeset(crtc_state));
+	drm_WARN_ON(&i915->drm, !crtc_state->hw.enable && crtc_state->shared_dpll);
 
-	if (drm_WARN_ON(&i915->drm, crtc_state->shared_dpll))
-		return 0;
-
-	if (!crtc_state->hw.enable)
+	if (!crtc_state->hw.enable || crtc_state->shared_dpll)
 		return 0;
 
 	if (!i915->display.funcs.dpll->crtc_get_shared_dpll)
-- 
2.35.1

