Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0B04E4899
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 22:45:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8F410E5B1;
	Tue, 22 Mar 2022 21:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCB6A10E5B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 21:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647985513; x=1679521513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5VJYE1ZIMdZ3w3V2rDU40bhFJvWJULu+hWgQhth7ZAU=;
 b=faW+EJjC/tFCZulwm16t9dM+RLDg5CqzUESIPQGiWFtQa//AJFm8kbrF
 pLdbBE7ohdi1G+oDgY4t3aebuJMq/MDj3OWGKApt5eCk3AoBCvT287uDY
 g6NrM4v8JQRzhax5MTFl/5HfVF6XqsJyQGAWcOYGbxrK6BkRI8Ko3uXlX
 qVp8M8IoZbZEo1cRnCrr2BB1Uv7KMU8tFbJbQ9gOKJ/s+aJcMsK2PKUbg
 qAWpK/Wd0bf/+26cvTvF0zdZL6WlV/Y4AKvTgeZY/prY7jilECHIfUSs1
 2inZanC52ZAAc0kz+BDxSo4T7DBGxKAjzqP1RTMhm95Vr8bbSkCVMFzwT A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="282796519"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="282796519"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:45:13 -0700
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="583449614"
Received: from idwilson-mobl.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.48.12])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:45:11 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:46:15 -0700
Message-Id: <20220322214616.160640-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220322214616.160640-1-jose.souza@intel.com>
References: <20220322214616.160640-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915/display/adlp: Fix programing of
 PIPE_MBUS_DBOX_CTL
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

PIPE_MBUS_DBOX_CTL was only being programmed when a pipe is being
enabled but that could potentially cause issues as it could have
mismatching values while pipes are being enabled.

So here moving the PIPE_MBUS_DBOX_CTL programming of all pipes to be
executed before the function that enables all pipes, leaving all pipes
with a matching A_CREDIT value.

While at it, also moving it to intel_pm.c as we are trying to reduce
the gigantic size of it and intel_pm.c have other MBUS programing
sequences.

v2:
- do not program PIPE_MBUS_DBOX_CTL if pipe will not be active or
when it do not needs modeset
- remove the checks to wait a vblank

BSpec: 49213
BSpec: 50343
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 37 +--------------
 drivers/gpu/drm/i915/intel_pm.c              | 47 ++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pm.h              |  1 +
 3 files changed, 49 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 424cd7e9afe60..ef5076b5e7027 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1824,35 +1824,6 @@ static void glk_pipe_scaler_clock_gating_wa(struct drm_i915_private *dev_priv,
 	intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe), val);
 }
 
-static void icl_pipe_mbus_enable(struct intel_crtc *crtc, bool joined_mbus)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-	u32 val;
-
-	val = intel_de_read(dev_priv, PIPE_MBUS_DBOX_CTL(pipe));
-	val &= ~MBUS_DBOX_A_CREDIT_MASK;
-	/* Wa_22010947358:adl-p */
-	if (IS_ALDERLAKE_P(dev_priv))
-		val |= joined_mbus ? MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
-	else
-		val |= MBUS_DBOX_A_CREDIT(2);
-
-	val &= ~(MBUS_DBOX_BW_CREDIT_MASK | MBUS_DBOX_B_CREDIT_MASK);
-	if (IS_ALDERLAKE_P(dev_priv)) {
-		val |= MBUS_DBOX_BW_CREDIT(2);
-		val |= MBUS_DBOX_B_CREDIT(8);
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		val |= MBUS_DBOX_BW_CREDIT(2);
-		val |= MBUS_DBOX_B_CREDIT(12);
-	} else {
-		val |= MBUS_DBOX_BW_CREDIT(1);
-		val |= MBUS_DBOX_B_CREDIT(8);
-	}
-
-	intel_de_write(dev_priv, PIPE_MBUS_DBOX_CTL(pipe), val);
-}
-
 static void hsw_set_linetime_wm(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -1988,13 +1959,6 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	intel_initial_watermarks(state, crtc);
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
-		const struct intel_dbuf_state *dbuf_state =
-				intel_atomic_get_new_dbuf_state(state);
-
-		icl_pipe_mbus_enable(crtc, dbuf_state->joined_mbus);
-	}
-
 	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
 		intel_crtc_vblank_on(new_crtc_state);
 
@@ -8599,6 +8563,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_encoders_update_prepare(state);
 
 	intel_dbuf_pre_plane_update(state);
+	intel_mbus_dbox_update(state);
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (new_crtc_state->do_async_flip)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index e60c02d760ffa..cf290bb704221 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -8258,3 +8258,50 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 	gen9_dbuf_slices_update(dev_priv,
 				new_dbuf_state->enabled_slices);
 }
+
+void intel_mbus_dbox_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_crtc_state *new_crtc_state;
+	struct intel_dbuf_state *new_dbuf_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	if (DISPLAY_VER(i915) < 11 || !state->modeset)
+		return;
+
+	if (HAS_MBUS_JOINING(i915))
+		new_dbuf_state = intel_atomic_get_dbuf_state(state);
+
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		u32 val;
+
+		if (!new_crtc_state->hw.active ||
+		    !intel_crtc_needs_modeset(new_crtc_state))
+			continue;
+
+		val = intel_de_read(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe));
+		val &= ~MBUS_DBOX_A_CREDIT_MASK;
+		/* Wa_22010947358:adl-p */
+		if (IS_ALDERLAKE_P(i915))
+			val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
+							     MBUS_DBOX_A_CREDIT(4);
+		else
+			val |= MBUS_DBOX_A_CREDIT(2);
+
+		if (IS_ALDERLAKE_P(i915)) {
+			val |= MBUS_DBOX_BW_CREDIT(2);
+			val |= MBUS_DBOX_B_CREDIT(8);
+		} else if (DISPLAY_VER(i915) >= 12) {
+			val &= ~(MBUS_DBOX_BW_CREDIT_MASK | MBUS_DBOX_B_CREDIT_MASK);
+			val |= MBUS_DBOX_BW_CREDIT(2);
+			val |= MBUS_DBOX_B_CREDIT(12);
+		} else {
+			val &= ~(MBUS_DBOX_BW_CREDIT_MASK | MBUS_DBOX_B_CREDIT_MASK);
+			val |= MBUS_DBOX_BW_CREDIT(1);
+			val |= MBUS_DBOX_B_CREDIT(8);
+		}
+
+		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), val);
+	}
+}
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index 51705151b842f..50604cf7398c4 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -94,5 +94,6 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
 int intel_dbuf_init(struct drm_i915_private *dev_priv);
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
 void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
+void intel_mbus_dbox_update(struct intel_atomic_state *state);
 
 #endif /* __INTEL_PM_H__ */
-- 
2.35.1

