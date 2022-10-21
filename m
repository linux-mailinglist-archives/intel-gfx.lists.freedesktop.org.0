Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C85607C20
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 18:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A515E10E510;
	Fri, 21 Oct 2022 16:25:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 494E610E258
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 16:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666369492; x=1697905492;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u+NAA/myz5tlnVS/ScPL5jgfV68+WnQQQfDZaNL6PPA=;
 b=ScZy7d9zbio4E3Ca5eCoSnelwpbWxNcy6ihNgfrtYDs0Q7VYqh2mxzdg
 NsVlKDHEeIae1BoGw9UEoTb5/flOjJMmTn55IVIoIr+81Olyf8UHjCfGH
 VY8bnch4g4SeofhbChaPG9XuR2tAT1zkfkItsI6/w1YAXlqJcEf+3TinH
 lEZwTaL2cL2gApRMzCIHL5UjFByDqP6WSia2kI3Uekc4oXROZnPU2hprB
 pCiWA5xZIXQcoqMiNnoKQEd/5Pcgk/ttKosifUqutbSx8t+4QMsq75NoO
 /NgjyTrb8CI78s0D6rJxZChAqxDyAmOfWXYq484ldqVVf5VFjUIdiKltS A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="294440723"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="294440723"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 09:24:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="773109958"
X-IronPort-AV: E=Sophos;i="5.95,202,1661842800"; d="scan'208";a="773109958"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 21 Oct 2022 09:24:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Oct 2022 19:24:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 19:24:40 +0300
Message-Id: <20221021162442.27283-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221021162442.27283-1-ville.syrjala@linux.intel.com>
References: <20221021162442.27283-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915: Remove some local
 'mode_changed' bools
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

These 'mode_changed' booleans aren't very helpful. Just
replace them with direct intel_crtc_needs_modeset() calls
which is more descriptive.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0929fb8a4302..b6004b3e6684 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4833,14 +4833,14 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	bool mode_changed = intel_crtc_needs_modeset(crtc_state);
 	int ret;
 
 	if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv) &&
-	    mode_changed && !crtc_state->hw.active)
+	    intel_crtc_needs_modeset(crtc_state) &&
+	    !crtc_state->hw.active)
 		crtc_state->update_wm_post = true;
 
-	if (mode_changed) {
+	if (intel_crtc_needs_modeset(crtc_state)) {
 		ret = intel_dpll_crtc_get_shared_dpll(state, crtc);
 		if (ret)
 			return ret;
@@ -4853,7 +4853,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	if (c8_planes_changed(crtc_state))
 		crtc_state->uapi.color_mgmt_changed = true;
 
-	if (mode_changed ||
+	if (intel_crtc_needs_modeset(crtc_state) ||
 	    intel_crtc_needs_fastset(crtc_state) ||
 	    crtc_state->uapi.color_mgmt_changed) {
 		ret = intel_color_check(crtc_state);
@@ -4881,7 +4881,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 9) {
-		if (mode_changed ||
+		if (intel_crtc_needs_modeset(crtc_state) ||
 		    intel_crtc_needs_fastset(crtc_state)) {
 			ret = skl_update_scaler_crtc(crtc_state);
 			if (ret)
@@ -6962,9 +6962,7 @@ static int intel_atomic_prepare_commit(struct intel_atomic_state *state)
 		return ret;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		bool mode_changed = intel_crtc_needs_modeset(crtc_state);
-
-		if (mode_changed ||
+		if (intel_crtc_needs_modeset(crtc_state) ||
 		    intel_crtc_needs_fastset(crtc_state) ||
 		    crtc_state->uapi.color_mgmt_changed) {
 			intel_dsb_prepare(crtc_state);
-- 
2.35.1

