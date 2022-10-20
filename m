Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 489EF605FB6
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 14:05:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E85D10EC74;
	Thu, 20 Oct 2022 12:05:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 957EB10EB97
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 12:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666267506; x=1697803506;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Sa78xOG7Y++C/UUYtg58lVxsx9aSZAGYN4tmPagsohU=;
 b=kgVhq9rv+GcibWVQVV9607eiE0EXHeqpZbfrOXqYFNg8pkCwLo7E2lB/
 GZpnEPnigdWW4ALaglHeY/bzmbA+nxF1+RWaJjcpM6iKePuPmwSYY85Br
 ZSIM8GIzV79w2KNQzZGLvmAj8cgAM+0zFOOodD/UWerfMLjL3NmkfeUNY
 7A4sIhxgxA+oNg9aFgr90FCqiZFCMc4ChwItvHNQyVxwXFu9VrIHDtt6o
 0K4kEOa36rfUi0d6t0ri4gj6rW0ylD3W6uxns4lxqPGWtioi1DHdxmINr
 SmcRASSwjunpaWBw54SZi8OPmCEpEx2RMCxcMkdw1evSc5mW0zIYb68x8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="370900738"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="370900738"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 05:05:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="663004729"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="663004729"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 20 Oct 2022 05:05:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Oct 2022 15:05:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 15:04:55 +0300
Message-Id: <20221020120457.19528-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221020120457.19528-1-ville.syrjala@linux.intel.com>
References: <20221020120457.19528-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Remove some local 'mode_changed'
 bools
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

These 'mode_changed' booleans aren't very helpful. Just
replace them with direct intel_crtc_needs_modeset() calls
which is more descriptive.

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

