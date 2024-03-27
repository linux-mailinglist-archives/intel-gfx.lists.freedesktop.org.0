Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E20E288ECE9
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 18:46:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AEE110FED5;
	Wed, 27 Mar 2024 17:46:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T1gkQQA9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FCEC10FED2
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 17:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711561565; x=1743097565;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=PZ4DJI5/8m0Cye+EHEwEdSkOuxRVOHQwv/1u7bftK+A=;
 b=T1gkQQA9hk+e48pdONs3cCxFxM78UN9yUgNWRaOxfW6Ie0JPveF/0AIx
 r9dIY+MsvCJxtu4oJLsotoIi6qCO484zwrxtKJwt0/AwWNSo/tsyiFztT
 83oEnddZWcEEw5cMS0QPkpjAma2mdm89nrntZaTvTvivB3mDm6rJtLWS0
 YTicEjaIvRfUuRc5/LXPQHrrFVnus3tT3FJ4xMLYO0vy8+bcNNS7S1oD5
 d+QJ64DtNoNzn7sLu9Q7lBLZ+zBQtSpRrWAorXzGiteTM7z5EG/4xsUev
 +Zskx3/BCk+nYt2UMvNVXCzA7HBIxSzHmK7h/aIZwKoX1ZU9F7H/HMcqv Q==;
X-CSE-ConnectionGUID: IfoJrGryTB6ZYBYrn1MA2w==
X-CSE-MsgGUID: W8Eu5uG4RrKTe5T6485Dkw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6795421"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6795421"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 10:46:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827785909"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="827785909"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Mar 2024 10:46:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 19:46:02 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/13] drm/i915: Relocate intel_mbus_dbox_update()
Date: Wed, 27 Mar 2024 19:45:37 +0200
Message-ID: <20240327174544.983-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240327174544.983-1-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
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

intel_mbus_dbox_update() will become static soon. Relocate it
into a place that avoids having to add a forward declaration
for it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 166 +++++++++----------
 1 file changed, 83 insertions(+), 83 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index f582992592c1..6bd3fec0aa56 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3540,6 +3540,89 @@ int intel_dbuf_init(struct drm_i915_private *i915)
 	return 0;
 }
 
+static bool xelpdp_is_only_pipe_per_dbuf_bank(enum pipe pipe, u8 active_pipes)
+{
+	switch (pipe) {
+	case PIPE_A:
+		return !(active_pipes & BIT(PIPE_D));
+	case PIPE_D:
+		return !(active_pipes & BIT(PIPE_A));
+	case PIPE_B:
+		return !(active_pipes & BIT(PIPE_C));
+	case PIPE_C:
+		return !(active_pipes & BIT(PIPE_B));
+	default: /* to suppress compiler warning */
+		MISSING_CASE(pipe);
+		break;
+	}
+
+	return false;
+}
+
+void intel_mbus_dbox_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
+	const struct intel_crtc *crtc;
+	u32 val = 0;
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
+	if (DISPLAY_VER(i915) >= 14)
+		val |= MBUS_DBOX_I_CREDIT(2);
+
+	if (DISPLAY_VER(i915) >= 12) {
+		val |= MBUS_DBOX_B2B_TRANSACTIONS_MAX(16);
+		val |= MBUS_DBOX_B2B_TRANSACTIONS_DELAY(1);
+		val |= MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN;
+	}
+
+	if (DISPLAY_VER(i915) >= 14)
+		val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(12) :
+						     MBUS_DBOX_A_CREDIT(8);
+	else if (IS_ALDERLAKE_P(i915))
+		/* Wa_22010947358:adl-p */
+		val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
+						     MBUS_DBOX_A_CREDIT(4);
+	else
+		val |= MBUS_DBOX_A_CREDIT(2);
+
+	if (DISPLAY_VER(i915) >= 14) {
+		val |= MBUS_DBOX_B_CREDIT(0xA);
+	} else if (IS_ALDERLAKE_P(i915)) {
+		val |= MBUS_DBOX_BW_CREDIT(2);
+		val |= MBUS_DBOX_B_CREDIT(8);
+	} else if (DISPLAY_VER(i915) >= 12) {
+		val |= MBUS_DBOX_BW_CREDIT(2);
+		val |= MBUS_DBOX_B_CREDIT(12);
+	} else {
+		val |= MBUS_DBOX_BW_CREDIT(1);
+		val |= MBUS_DBOX_B_CREDIT(8);
+	}
+
+	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->active_pipes) {
+		u32 pipe_val = val;
+
+		if (DISPLAY_VER(i915) >= 14) {
+			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
+							      new_dbuf_state->active_pipes))
+				pipe_val |= MBUS_DBOX_BW_8CREDITS_MTL;
+			else
+				pipe_val |= MBUS_DBOX_BW_4CREDITS_MTL;
+		}
+
+		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), pipe_val);
+	}
+}
+
 int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8 ratio)
 {
 	struct intel_dbuf_state *dbuf_state;
@@ -3657,89 +3740,6 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 				new_dbuf_state->enabled_slices);
 }
 
-static bool xelpdp_is_only_pipe_per_dbuf_bank(enum pipe pipe, u8 active_pipes)
-{
-	switch (pipe) {
-	case PIPE_A:
-		return !(active_pipes & BIT(PIPE_D));
-	case PIPE_D:
-		return !(active_pipes & BIT(PIPE_A));
-	case PIPE_B:
-		return !(active_pipes & BIT(PIPE_C));
-	case PIPE_C:
-		return !(active_pipes & BIT(PIPE_B));
-	default: /* to suppress compiler warning */
-		MISSING_CASE(pipe);
-		break;
-	}
-
-	return false;
-}
-
-void intel_mbus_dbox_update(struct intel_atomic_state *state)
-{
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
-	const struct intel_crtc *crtc;
-	u32 val = 0;
-
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
-	if (DISPLAY_VER(i915) >= 14)
-		val |= MBUS_DBOX_I_CREDIT(2);
-
-	if (DISPLAY_VER(i915) >= 12) {
-		val |= MBUS_DBOX_B2B_TRANSACTIONS_MAX(16);
-		val |= MBUS_DBOX_B2B_TRANSACTIONS_DELAY(1);
-		val |= MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN;
-	}
-
-	if (DISPLAY_VER(i915) >= 14)
-		val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(12) :
-						     MBUS_DBOX_A_CREDIT(8);
-	else if (IS_ALDERLAKE_P(i915))
-		/* Wa_22010947358:adl-p */
-		val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
-						     MBUS_DBOX_A_CREDIT(4);
-	else
-		val |= MBUS_DBOX_A_CREDIT(2);
-
-	if (DISPLAY_VER(i915) >= 14) {
-		val |= MBUS_DBOX_B_CREDIT(0xA);
-	} else if (IS_ALDERLAKE_P(i915)) {
-		val |= MBUS_DBOX_BW_CREDIT(2);
-		val |= MBUS_DBOX_B_CREDIT(8);
-	} else if (DISPLAY_VER(i915) >= 12) {
-		val |= MBUS_DBOX_BW_CREDIT(2);
-		val |= MBUS_DBOX_B_CREDIT(12);
-	} else {
-		val |= MBUS_DBOX_BW_CREDIT(1);
-		val |= MBUS_DBOX_B_CREDIT(8);
-	}
-
-	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->active_pipes) {
-		u32 pipe_val = val;
-
-		if (DISPLAY_VER(i915) >= 14) {
-			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
-							      new_dbuf_state->active_pipes))
-				pipe_val |= MBUS_DBOX_BW_8CREDITS_MTL;
-			else
-				pipe_val |= MBUS_DBOX_BW_4CREDITS_MTL;
-		}
-
-		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), pipe_val);
-	}
-}
-
 static int skl_watermark_ipc_status_show(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *i915 = m->private;
-- 
2.43.2

