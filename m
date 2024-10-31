Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B20D9B7F61
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 16:56:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BAD510E043;
	Thu, 31 Oct 2024 15:56:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IMkRFaHo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FDCE10E41B
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730390215; x=1761926215;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Az3zC6WX1OfTmfjWC4AXzIHSdF+63WohMU1+xuVo914=;
 b=IMkRFaHoUHvtBG2DP7Z8Ah6lOSarinhu7TTOCrEzVNoFT5AEEkDCcgTl
 +kcWKLRwVSy6f86iI5eM511hGxASLXllNWPexx8t0VYiwBL2HOi2E37df
 8lBKOw5zqmo0or+rYtS0/mcppvKAbt+hV+590A03zrrD+nTX+2vt1fx5S
 DpTg6wVDPa+90Btte0YlfDoM8Zli6jVIIWnSdHGCFOo+99ilF5V68mbuz
 KL+9M761P3XmuOFLwxyri6JRbtrae/8oy0D62JtTkOqJCprRBRXmARFtA
 A5FTN5yTOdkmDO26Jgt7NYXV2egXo6DQJAEjhz5/fIX5x1338Hay61wym g==;
X-CSE-ConnectionGUID: gwMlLI/JTBqljF7RbQzDJA==
X-CSE-MsgGUID: YPInVwCUTeKwWkHMHIjLPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="29575326"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="29575326"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 08:56:55 -0700
X-CSE-ConnectionGUID: XEjBYkORS0GtpTp6AaMXyA==
X-CSE-MsgGUID: SFsR1eJ6RCevAcdut5d97g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82791569"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 Oct 2024 08:56:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2024 17:56:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/6] drm/i915: Extract pipe_mbus_dbox_ctl()
Date: Thu, 31 Oct 2024 17:56:42 +0200
Message-ID: <20241031155646.15165-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
References: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We'll be wanting reprogram the PIPE_MBUS_DBOX_CTL registers
during an upcoming MBUS sanitation stage. To make that easier
extract a helper that computes the full register value for us.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 63 +++++++++++---------
 1 file changed, 34 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 92794dfbd3bd..7a7caaf7e87d 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3271,23 +3271,12 @@ static bool xelpdp_is_only_pipe_per_dbuf_bank(enum pipe pipe, u8 active_pipes)
 	return false;
 }
 
-static void intel_mbus_dbox_update(struct intel_atomic_state *state)
+static u32 pipe_mbus_dbox_ctl(const struct intel_crtc *crtc,
+			      const struct intel_dbuf_state *dbuf_state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
-	const struct intel_crtc *crtc;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	u32 val = 0;
 
-	if (DISPLAY_VER(i915) < 11)
-		return;
-
-	new_dbuf_state = intel_atomic_get_new_dbuf_state(state);
-	old_dbuf_state = intel_atomic_get_old_dbuf_state(state);
-	if (!new_dbuf_state ||
-	    (new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus &&
-	     new_dbuf_state->active_pipes == old_dbuf_state->active_pipes))
-		return;
-
 	if (DISPLAY_VER(i915) >= 14)
 		val |= MBUS_DBOX_I_CREDIT(2);
 
@@ -3298,12 +3287,12 @@ static void intel_mbus_dbox_update(struct intel_atomic_state *state)
 	}
 
 	if (DISPLAY_VER(i915) >= 14)
-		val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(12) :
-						     MBUS_DBOX_A_CREDIT(8);
+		val |= dbuf_state->joined_mbus ?
+			MBUS_DBOX_A_CREDIT(12) : MBUS_DBOX_A_CREDIT(8);
 	else if (IS_ALDERLAKE_P(i915))
 		/* Wa_22010947358:adl-p */
-		val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
-						     MBUS_DBOX_A_CREDIT(4);
+		val |= dbuf_state->joined_mbus ?
+			MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
 	else
 		val |= MBUS_DBOX_A_CREDIT(2);
 
@@ -3320,19 +3309,35 @@ static void intel_mbus_dbox_update(struct intel_atomic_state *state)
 		val |= MBUS_DBOX_B_CREDIT(8);
 	}
 
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->active_pipes) {
-		u32 pipe_val = val;
+	if (DISPLAY_VERx100(i915) == 1400) {
+		if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe, dbuf_state->active_pipes))
+			val |= MBUS_DBOX_BW_8CREDITS_MTL;
+		else
+			val |= MBUS_DBOX_BW_4CREDITS_MTL;
+	}
 
-		if (DISPLAY_VERx100(i915) == 1400) {
-			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
-							      new_dbuf_state->active_pipes))
-				pipe_val |= MBUS_DBOX_BW_8CREDITS_MTL;
-			else
-				pipe_val |= MBUS_DBOX_BW_4CREDITS_MTL;
-		}
+	return val;
+}
 
-		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), pipe_val);
-	}
+static void intel_mbus_dbox_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
+	const struct intel_crtc *crtc;
+
+	if (DISPLAY_VER(i915) < 11)
+		return;
+
+	new_dbuf_state = intel_atomic_get_new_dbuf_state(state);
+	old_dbuf_state = intel_atomic_get_old_dbuf_state(state);
+	if (!new_dbuf_state ||
+	    (new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus &&
+	     new_dbuf_state->active_pipes == old_dbuf_state->active_pipes))
+		return;
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->active_pipes)
+		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe),
+			       pipe_mbus_dbox_ctl(crtc, new_dbuf_state));
 }
 
 int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
-- 
2.45.2

