Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDB797A5EE
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 18:24:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D34210E3BB;
	Mon, 16 Sep 2024 16:24:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VLtFRPBe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 021B110E3B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 16:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726503875; x=1758039875;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qR1KaQq8quHrjfYL4OLaS3kUb9xO46dqPXTN1gnp3oo=;
 b=VLtFRPBe7kIUkJjOd2DqDI/1EUYXFuySwn6W75+KoDRpJswp4+JsQneK
 sOKizzUxqm0rkA6TL2pYHTlDLk72Bl099dwGAaLlEnqD2TQvYTNr7j9GI
 eC/BVQnVZVDqCVpTeR3FuXSCfQoU16zzQ9lLtMQKbqjZ1UaCfcxXj6iMw
 LDSZatc/AI8BZsFYPw86IURK5HFHZGLK35cxSJk3ng3aoct+2G5LLuFtL
 KMwIWcF4p01WNgpLkBQDTaI/fOfmNoJHKa/3y+kvVZJKlzAJU886uoyLk
 MAsuOjNKDYMJ8eAs1uto3QR6eEeAe/Abb25LXzsUhZ7LFECkQExSjzxdY g==;
X-CSE-ConnectionGUID: Yx0DaHVyTzaUPuw0wL9klg==
X-CSE-MsgGUID: lqGGXh3iRROK7Xwbx/4Wtg==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="42811738"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="42811738"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 09:24:35 -0700
X-CSE-ConnectionGUID: YDqQXRhXSaeV2vSdyqGlIQ==
X-CSE-MsgGUID: sDEWOq1VR5aJb3W6MLTjNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69029970"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Sep 2024 09:24:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Sep 2024 19:24:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/7] drm/i915: Rename variables in ilk_intermedidate_wm()
Date: Mon, 16 Sep 2024 19:24:13 +0300
Message-ID: <20240916162413.8555-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
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

ilk_compute_intermediate_wm() uses rather poor variable names
for its watermark structs. Borrow a better naming convention
from the g4x/vlv counterpart code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 35 +++++++++++++++-----------
 1 file changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index cfc487563c25..fc928307d062 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -2993,8 +2993,9 @@ static int ilk_compute_intermediate_wm(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
-	struct intel_pipe_wm *a = &new_crtc_state->wm.ilk.intermediate;
-	const struct intel_pipe_wm *b = &old_crtc_state->wm.ilk.optimal;
+	struct intel_pipe_wm *intermediate = &new_crtc_state->wm.ilk.intermediate;
+	const struct intel_pipe_wm *optimal = &new_crtc_state->wm.ilk.optimal;
+	const struct intel_pipe_wm *active = &old_crtc_state->wm.ilk.optimal;
 	int level;
 
 	/*
@@ -3002,25 +3003,29 @@ static int ilk_compute_intermediate_wm(struct intel_atomic_state *state,
 	 * currently active watermarks to get values that are safe both before
 	 * and after the vblank.
 	 */
-	*a = new_crtc_state->wm.ilk.optimal;
+	*intermediate = *optimal;
 	if (!new_crtc_state->hw.active ||
 	    intel_crtc_needs_modeset(new_crtc_state) ||
 	    state->skip_intermediate_wm)
 		return 0;
 
-	a->pipe_enabled |= b->pipe_enabled;
-	a->sprites_enabled |= b->sprites_enabled;
-	a->sprites_scaled |= b->sprites_scaled;
+	intermediate->pipe_enabled |= active->pipe_enabled;
+	intermediate->sprites_enabled |= active->sprites_enabled;
+	intermediate->sprites_scaled |= active->sprites_scaled;
 
 	for (level = 0; level < dev_priv->display.wm.num_levels; level++) {
-		struct intel_wm_level *a_wm = &a->wm[level];
-		const struct intel_wm_level *b_wm = &b->wm[level];
+		struct intel_wm_level *intermediate_wm = &intermediate->wm[level];
+		const struct intel_wm_level *active_wm = &active->wm[level];
 
-		a_wm->enable &= b_wm->enable;
-		a_wm->pri_val = max(a_wm->pri_val, b_wm->pri_val);
-		a_wm->spr_val = max(a_wm->spr_val, b_wm->spr_val);
-		a_wm->cur_val = max(a_wm->cur_val, b_wm->cur_val);
-		a_wm->fbc_val = max(a_wm->fbc_val, b_wm->fbc_val);
+		intermediate_wm->enable &= active_wm->enable;
+		intermediate_wm->pri_val = max(intermediate_wm->pri_val,
+					       active_wm->pri_val);
+		intermediate_wm->spr_val = max(intermediate_wm->spr_val,
+					       active_wm->spr_val);
+		intermediate_wm->cur_val = max(intermediate_wm->cur_val,
+					       active_wm->cur_val);
+		intermediate_wm->fbc_val = max(intermediate_wm->fbc_val,
+					       active_wm->fbc_val);
 	}
 
 	/*
@@ -3029,14 +3034,14 @@ static int ilk_compute_intermediate_wm(struct intel_atomic_state *state,
 	 * there's no safe way to transition from the old state to
 	 * the new state, so we need to fail the atomic transaction.
 	 */
-	if (!ilk_validate_pipe_wm(dev_priv, a))
+	if (!ilk_validate_pipe_wm(dev_priv, intermediate))
 		return -EINVAL;
 
 	/*
 	 * If our intermediate WM are identical to the final WM, then we can
 	 * omit the post-vblank programming; only update if it's different.
 	 */
-	if (memcmp(a, &new_crtc_state->wm.ilk.optimal, sizeof(*a)) != 0)
+	if (memcmp(intermediate, optimal, sizeof(*intermediate)) != 0)
 		new_crtc_state->wm.need_postvbl_update = true;
 
 	return 0;
-- 
2.44.2

