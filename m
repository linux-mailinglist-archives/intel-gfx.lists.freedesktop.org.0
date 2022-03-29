Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3B24EB5FA
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 00:30:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A210510E891;
	Tue, 29 Mar 2022 22:30:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D3710E6E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 22:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648592997; x=1680128997;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dP/trcgTV0LIkXb0qfkbDYTJdTCbRO7js7JHfiEAr4U=;
 b=EHYqiHW/fxCFNhSf9GG5O6GFtEadtGckle2vxkJYN2HI4i9s7rhQ68z2
 dfTp9YZCSKr+1jVHTwPzgFYIBLOQT9WqUx1hkjaAEo6TpidjRorqrm28G
 xmz+LoV6UY57aOCp6prQdNcWYIuorUAwoPz+AfksVZ0mbJB/Oe2e5qhjr
 GU6OJ+1vWjmJx6L8w4+gQTAcmo07mxPpSeYGbStOf1NAv9dRFktHqnu1a
 fM05aPMLjonUGXkZow/ekVUCu/a2OkUgxmItiJlchdZqmVASR7+Dab6id
 Y0uZKxfbAxc3Z2DuiMNC//S+qGa6cPS7ywfgM0wyyROQPc6RAww25UAaH Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239319343"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="239319343"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 15:29:57 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="653332936"
Received: from srmusala-desk.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.104.251])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 15:29:55 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 15:31:02 -0700
Message-Id: <20220329223102.218689-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220329223102.218689-1-jose.souza@intel.com>
References: <20220329223102.218689-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 4/4] drm/i915/display/adlp: Fix programing of
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
the gigantic size of intel_display.c and intel_pm.c have other MBUS
programing sequences.

v2:
- do not program PIPE_MBUS_DBOX_CTL if pipe will not be active or
when it do not needs modeset
- remove the checks to wait a vblank

v3:
- checking if dbuf state is present in state before using it

v4:
- removing redundant checks
- calling intel_atomic_get_new_dbuf_state instead of
intel_atomic_get_dbuf_state

BSpec: 49213
BSpec: 50343
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 41 +--------------
 drivers/gpu/drm/i915/intel_pm.c              | 52 ++++++++++++++++++++
 drivers/gpu/drm/i915/intel_pm.h              |  1 +
 3 files changed, 54 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 389a3c988dc6f..1bd869af15bf8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1825,39 +1825,6 @@ static void glk_pipe_scaler_clock_gating_wa(struct drm_i915_private *dev_priv,
 	intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe), val);
 }
 
-static void icl_pipe_mbus_enable(struct intel_crtc *crtc, bool joined_mbus)
-{
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-	u32 val = 0;
-
-	if (DISPLAY_VER(dev_priv) >= 12) {
-		val |= MBUS_DBOX_B2B_TRANSACTIONS_MAX(16);
-		val |= MBUS_DBOX_B2B_TRANSACTIONS_DELAY(1);
-		val |= MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN;
-	}
-
-	/* Wa_22010947358:adl-p */
-	if (IS_ALDERLAKE_P(dev_priv))
-		val |= joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
-				     MBUS_DBOX_A_CREDIT(4);
-	else
-		val |= MBUS_DBOX_A_CREDIT(2);
-
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
@@ -1994,13 +1961,6 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
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
 
@@ -8612,6 +8572,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	intel_encoders_update_prepare(state);
 
 	intel_dbuf_pre_plane_update(state);
+	intel_mbus_dbox_update(state);
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (new_crtc_state->do_async_flip)
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index e60c02d760ffa..90ea5b87b52bb 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -8258,3 +8258,55 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 	gen9_dbuf_slices_update(dev_priv,
 				new_dbuf_state->enabled_slices);
 }
+
+void intel_mbus_dbox_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
+	struct intel_crtc_state *new_crtc_state;
+	struct intel_crtc *crtc;
+	u32 val = 0;
+	int i;
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
+	if (DISPLAY_VER(i915) >= 12) {
+		val |= MBUS_DBOX_B2B_TRANSACTIONS_MAX(16);
+		val |= MBUS_DBOX_B2B_TRANSACTIONS_DELAY(1);
+		val |= MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN;
+	}
+
+	/* Wa_22010947358:adl-p */
+	if (IS_ALDERLAKE_P(i915))
+		val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
+						     MBUS_DBOX_A_CREDIT(4);
+	else
+		val |= MBUS_DBOX_A_CREDIT(2);
+
+	if (IS_ALDERLAKE_P(i915)) {
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
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (!new_crtc_state->hw.active ||
+		    !intel_crtc_needs_modeset(new_crtc_state))
+			continue;
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

