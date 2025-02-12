Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2840BA32BD6
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:37:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C19D410E91A;
	Wed, 12 Feb 2025 16:37:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LhhGJnjl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C485910E905;
 Wed, 12 Feb 2025 16:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378226; x=1770914226;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F19TtoBfJaNhlD/EeLqiEpNQUAH3pB1Q8XD/p2xpG7M=;
 b=LhhGJnjlpKu9WG2gX116LCrvcIiLcQj5g3dBH5VYF4WbkX3vboHgUINO
 6gOTBjRm0lbIPu9R3AH0u8pY5Oaro3G8nz6nWSZ4Y0A6iM8zxz3F6q49I
 P092DRSSG10mmFp62TkQLsHmBk6fyhdWv1cXIkKfA13glh+HWqb4fKWCf
 P7eeKn+HGRFeCwTdSXpYJ6qaVfwWgm9oVQ2XofjIrPqITtHVbYtm5lMcy
 umCoEGNvOARQx/vPgBqi8XX6zJ0Cwt3fs0YMHSXc3z+xBOFVKvUcvIrov
 jOyiXh84ZvKzI6yoIsvwkrGOi26jWOzbhNq/6akris3rRDbbt2q7wfl87 g==;
X-CSE-ConnectionGUID: qG4NPjobT4qQeA9Y8yvQIQ==
X-CSE-MsgGUID: w0lnTyNhS1yCe24Ikmp62Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="50693488"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="50693488"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:05 -0800
X-CSE-ConnectionGUID: wZ0NHz73Q8ywuA7sfnK1/g==
X-CSE-MsgGUID: FOZjyQZBQSmKqFpeyOXdZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="143713476"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/14] drm/i915/ips: convert hsw_ips.c to struct intel_display
Date: Wed, 12 Feb 2025 18:36:32 +0200
Message-Id: <ebea40784fca6cfb4dbacec570bc9bef49393fc1.1739378095.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1739378095.git.jani.nikula@intel.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of hsw_ips.c to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c | 26 ++++++++++++--------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index d02c328bf902..674a0e5f0858 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -36,7 +36,7 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
 	if (display->ips.false_color)
 		val |= IPS_FALSE_COLOR;
 
-	if (IS_BROADWELL(i915)) {
+	if (display->platform.broadwell) {
 		drm_WARN_ON(display->drm,
 			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL,
 					    val | IPS_PCODE_CONTROL));
@@ -71,7 +71,7 @@ bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
 	if (!crtc_state->ips_enabled)
 		return need_vblank_wait;
 
-	if (IS_BROADWELL(i915)) {
+	if (display->platform.broadwell) {
 		drm_WARN_ON(display->drm,
 			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL, 0));
 		/*
@@ -96,7 +96,7 @@ bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
 static bool hsw_ips_need_disable(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
@@ -114,7 +114,7 @@ static bool hsw_ips_need_disable(struct intel_atomic_state *state,
 	 *
 	 * Disable IPS before we program the LUT.
 	 */
-	if (IS_HASWELL(i915) &&
+	if (display->platform.haswell &&
 	    intel_crtc_needs_color_update(new_crtc_state) &&
 	    new_crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT)
 		return true;
@@ -137,7 +137,7 @@ bool hsw_ips_pre_update(struct intel_atomic_state *state,
 static bool hsw_ips_need_enable(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
@@ -155,7 +155,7 @@ static bool hsw_ips_need_enable(struct intel_atomic_state *state,
 	 *
 	 * Re-enable IPS after the LUT has been programmed.
 	 */
-	if (IS_HASWELL(i915) &&
+	if (display->platform.haswell &&
 	    intel_crtc_needs_color_update(new_crtc_state) &&
 	    new_crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT)
 		return true;
@@ -194,7 +194,6 @@ static bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	/* IPS only exists on ULT machines and is tied to pipe A. */
 	if (!hsw_crtc_supports_ips(crtc))
@@ -213,7 +212,7 @@ static bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state
 	 *
 	 * Should measure whether using a lower cdclk w/o IPS
 	 */
-	if (IS_BROADWELL(i915) &&
+	if (display->platform.broadwell &&
 	    crtc_state->pixel_rate > display->cdclk.max_cdclk_freq * 95 / 100)
 		return false;
 
@@ -222,9 +221,9 @@ static bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state
 
 int hsw_ips_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (!IS_BROADWELL(i915))
+	if (!display->platform.broadwell)
 		return 0;
 
 	if (!hsw_crtc_state_ips_capable(crtc_state))
@@ -237,7 +236,7 @@ int hsw_ips_min_cdclk(const struct intel_crtc_state *crtc_state)
 int hsw_ips_compute_config(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
@@ -259,7 +258,7 @@ int hsw_ips_compute_config(struct intel_atomic_state *state,
 	if (!(crtc_state->active_planes & ~BIT(PLANE_CURSOR)))
 		return 0;
 
-	if (IS_BROADWELL(i915)) {
+	if (display->platform.broadwell) {
 		const struct intel_cdclk_state *cdclk_state;
 
 		cdclk_state = intel_atomic_get_cdclk_state(state);
@@ -280,12 +279,11 @@ void hsw_ips_get_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
 	if (!hsw_crtc_supports_ips(crtc))
 		return;
 
-	if (IS_HASWELL(i915)) {
+	if (display->platform.haswell) {
 		crtc_state->ips_enabled = intel_de_read(display, IPS_CTL) & IPS_ENABLE;
 	} else {
 		/*
-- 
2.39.5

