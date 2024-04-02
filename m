Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB4B8958C0
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 17:50:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF4A110FE12;
	Tue,  2 Apr 2024 15:50:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d2ASfo2q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE3BF10FE12
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 15:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712073039; x=1743609039;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y91i1UfaKnsGRL7qk20f97qitLYdXqaAjfzrFQE6arM=;
 b=d2ASfo2qlqoThCK9CQGVm5pUtUXCnAR8OQNnTCmfqmwPm1H7Ju6xqAmT
 eNyNn0S4JhFUE4dxkC65k+VmCB4ExyFPyPf/RV/HPC6zz6gWv8oiFX915
 einjEqeAYDLr8rG+yCcu55kpJWwIm8ui7hs4aZr+8bXdVZv1ctCIjfV3y
 mKHzVFG6rM18qvzBtpYs4NRY8aWvb3e3amia0nJAHcOFHSr1BsdEcmRqO
 NHKMuJile/z8iz3A0cfYT1zIeCN06FnmCkkwM7jj/llYTzzZ0Vih8BGKE
 ZJQcwc8bVnJy9m6Z1OymBmiLZv2tJ06Ut24d0MsJhsrHjm718MFh3GF2g g==;
X-CSE-ConnectionGUID: 7KiMVQWmT5iANzkAcpssvA==
X-CSE-MsgGUID: uAW1F/z9QECtWicDtMwA0g==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17980838"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17980838"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 08:50:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789474"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789474"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 08:50:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 18:50:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 06/14] drm/i915: Relocate intel_mbus_dbox_update()
Date: Tue,  2 Apr 2024 18:50:08 +0300
Message-ID: <20240402155016.13733-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
References: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
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

