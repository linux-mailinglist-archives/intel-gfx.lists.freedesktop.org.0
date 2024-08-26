Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9B095EEA9
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 12:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B1210E189;
	Mon, 26 Aug 2024 10:41:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZtEhxA+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F2AA10E189
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2024 10:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724668906; x=1756204906;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=W3rR3Nqj+mnQ7UifQOga7DjN5cjAoXTPErNBkl0Ov2A=;
 b=VZtEhxA++tEeK7qwRV3k3N67d0h1V2uNDPbr1ljB4q8Z50P56f2ndcrL
 rioUHS2IBYkF2cfaqrbumvfGOqA9htgg132p6Iul+/4AL2KYY4zTfr7f+
 a2osJScS2Q/t2BY7PyKpJnSQxrbkxMQbguAR17KknBp+2eKA7kzE8SM41
 DU2zuQoDfrCS1ojr2gS7UJX6OgNM4VdwTWIR4ho+PqcfLuR2HkbD4c4Y8
 FYOlD0metFuRGqWIJgGKN6o4NL/YDbg/eMHcRCt00ueJD9/5ABaOpJ4zP
 rIGsZsedjtdZlIg4H0jkFtfQ7vU4IEQBSfDCIttCFQImishQ959GFAtBs w==;
X-CSE-ConnectionGUID: VXa6fEutSyi8v8LCOYe7rg==
X-CSE-MsgGUID: 0dKC4nclTF+cNRbSareVRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="34457418"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="34457418"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 03:41:46 -0700
X-CSE-ConnectionGUID: V3Z/lOzzQfORuj+7zviqig==
X-CSE-MsgGUID: JyiVKgvaRIm3F3AXbeeelA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="63190144"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 jhogande-mobl1..) ([10.245.245.126])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 03:41:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/display: use old bpp as a base when modeset is not
 allowed
Date: Mon, 26 Aug 2024 13:41:32 +0300
Message-Id: <20240826104132.966597-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We are currently observing failure on refresh rate change on VRR setup if
full modeset is not allowed. This is caused by the mismatch in bpp
configured by GOP and bpp value calculated by our driver. Changing bpp to
value calculated by our driver would require full mode set.

We don't have mechanism to communicate current bpp to userspace ->
Userspace can't request to use current bpp. Changing bpp means full
modeset. This becomes a problem when userspace haven't allowed full mode
set.

Complete solution here would mean adding mechanism to communicate current
bpp to userspace. User space should use this bpp to avoid changing bpp if
it wants to avoid full mode set.

Tackle this for now in our driver by using existing bpp if full modeset is
not allowed.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 33 ++++++++++++++------
 1 file changed, 23 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9049b9a1209d8..7b805998b280a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4385,21 +4385,34 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_crtc_state *crtc_state =
+	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	struct drm_connector *connector;
 	struct drm_connector_state *connector_state;
 	int bpp, i;
 
-	if ((IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
-	    IS_CHERRYVIEW(dev_priv)))
-		bpp = 10*3;
-	else if (DISPLAY_VER(dev_priv) >= 5)
-		bpp = 12*3;
-	else
-		bpp = 8*3;
+	/*
+	 * TODO: We don't have mechanism to communicate current bpp to
+	 * userspace -> Userspace can't request to use current bpp. Changing bpp
+	 * means full modeset. This becomes a problem when userspace wants to
+	 * avoid full modeset. Tackle this on our driver by using existing bpp
+	 * if full modeset is not allowed.
+	 */
+	if (!state->base.allow_modeset) {
+		bpp = old_crtc_state->pipe_bpp;
+	} else {
+		if ((IS_G4X(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
+		     IS_CHERRYVIEW(dev_priv)))
+			bpp = 10 * 3;
+		else if (DISPLAY_VER(dev_priv) >= 5)
+			bpp = 12 * 3;
+		else
+			bpp = 8 * 3;
+	}
 
-	crtc_state->pipe_bpp = bpp;
+	new_crtc_state->pipe_bpp = bpp;
 
 	/* Clamp display bpp to connector max bpp */
 	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
@@ -4408,7 +4421,7 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
 		if (connector_state->crtc != &crtc->base)
 			continue;
 
-		ret = compute_sink_pipe_bpp(connector_state, crtc_state);
+		ret = compute_sink_pipe_bpp(connector_state, new_crtc_state);
 		if (ret)
 			return ret;
 	}
-- 
2.34.1

