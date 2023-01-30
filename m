Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A62826806F8
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 09:08:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A29AC10E0CF;
	Mon, 30 Jan 2023 08:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4EC010E0CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 08:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675066079; x=1706602079;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w4m5ZglABrSOijnp19o/jh9l0myy5OiBAfoFPUbukR0=;
 b=P9vSOSSnY4QrNzbm4uDUw/QSYlQrnxx8gFRzRmng0mk0mwr8qlMnqmsp
 nwu3MMMCYOWY6ZFL7WM88az56Dvtz3tQ7WuOBBuf0GJbODouDOl/EcYPK
 nsFe9ai1YX0yliC8LwcvRsQd4VctpAU5vsqYcBOr/oF5+LYcBIYEAVTa4
 L5NX54tq8DLK+kcrPQnG75eTaeN22jHNmyi1qNIAKPYirTcI4isME80cJ
 ChZY38Cd6Gr6IvC4NkW5BAcj/EgKzYHLyah0+dLpTJABzc/t1GRFbRXop
 5dJDpbpt0RkyXIZf3OW1iibr6QP0EkEVql3aFEJSYhDkPlXZUe8fCfir0 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="325198745"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="325198745"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 00:07:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="732604825"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="732604825"
Received: from hharjula-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.209.110])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 00:07:16 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 10:06:51 +0200
Message-Id: <20230130080651.3796929-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
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
Cc: Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SEL_FETCH_CTL registers are armed immediately when plane is disabled.
SEL_FETCH_* instances of plane configuration are used when doing
selective update and normal plane register instances for full updates.
Currently all SEL_FETCH_* registers are written as a part of noarm
plane configuration. If noarm and arm plane configuration are not
happening within same vblank we may end up having plane as a part of
selective update before it's PLANE_SURF register is written.

Fix this by splitting plane selective fetch configuration into arm and
noarm versions and call them accordingly. Write SEL_FETCH_CTL in arm
version.

v3:
 - add arm suffix into intel_psr2_disable_plane_sel_fetch
v2:
 - drop color_plane parameter from arm part
 - dev_priv -> i915 in arm part

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   |  5 ++-
 drivers/gpu/drm/i915/display/intel_psr.c      | 38 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_psr.h      | 16 +++++---
 .../drm/i915/display/skl_universal_plane.c    |  6 ++-
 4 files changed, 42 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index d190fa0d393b..c3173c0c2068 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -532,9 +532,10 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
 		skl_write_cursor_wm(plane, crtc_state);
 
 	if (plane_state)
-		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, 0);
+		intel_psr2_program_plane_sel_fetch_arm(plane, crtc_state,
+						       plane_state);
 	else
-		intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
+		intel_psr2_disable_plane_sel_fetch_arm(plane, crtc_state);
 
 	if (plane->cursor.base != base ||
 	    plane->cursor.size != fbc_ctl ||
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7a72e15e6836..06ccef7f3d93 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1547,8 +1547,8 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 	intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
 }
 
-void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
-					const struct intel_crtc_state *crtc_state)
+void intel_psr2_disable_plane_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
@@ -1559,10 +1559,28 @@ void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
 }
 
-void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
-					const struct intel_crtc_state *crtc_state,
-					const struct intel_plane_state *plane_state,
-					int color_plane)
+void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state,
+					    const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	enum pipe pipe = plane->pipe;
+
+	if (!crtc_state->enable_psr2_sel_fetch)
+		return;
+
+	if (plane->id == PLANE_CURSOR)
+		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
+				  plane_state->ctl);
+	else
+		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
+				  PLANE_SEL_FETCH_CTL_ENABLE);
+}
+
+void intel_psr2_program_plane_sel_fetch_noarm(struct intel_plane *plane,
+					      const struct intel_crtc_state *crtc_state,
+					      const struct intel_plane_state *plane_state,
+					      int color_plane)
 {
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
@@ -1573,11 +1591,8 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	if (plane->id == PLANE_CURSOR) {
-		intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id),
-				  plane_state->ctl);
+	if (plane->id == PLANE_CURSOR)
 		return;
-	}
 
 	clip = &plane_state->psr2_sel_fetch_area;
 
@@ -1605,9 +1620,6 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
 	val = (drm_rect_height(clip) - 1) << 16;
 	val |= (drm_rect_width(&plane_state->uapi.src) >> 16) - 1;
 	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_SIZE(pipe, plane->id), val);
-
-	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id),
-			  PLANE_SEL_FETCH_CTL_ENABLE);
 }
 
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 2ac3a46cccc5..7a38a9e7fa5b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -46,12 +46,16 @@ bool intel_psr_enabled(struct intel_dp *intel_dp);
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state);
-void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
-					const struct intel_crtc_state *crtc_state,
-					const struct intel_plane_state *plane_state,
-					int color_plane);
-void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
-					const struct intel_crtc_state *crtc_state);
+void intel_psr2_program_plane_sel_fetch_noarm(struct intel_plane *plane,
+					      const struct intel_crtc_state *crtc_state,
+					      const struct intel_plane_state *plane_state,
+					      int color_plane);
+void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state,
+					    const struct intel_plane_state *plane_state);
+
+void intel_psr2_disable_plane_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state);
 void intel_psr_pause(struct intel_dp *intel_dp);
 void intel_psr_resume(struct intel_dp *intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9b172a1e90de..40b2801bc0a8 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -642,7 +642,7 @@ icl_plane_disable_arm(struct intel_plane *plane,
 
 	skl_write_plane_wm(plane, crtc_state);
 
-	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
+	intel_psr2_disable_plane_sel_fetch_arm(plane, crtc_state);
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
 }
@@ -1260,7 +1260,7 @@ icl_plane_update_noarm(struct intel_plane *plane,
 	if (plane_state->force_black)
 		icl_plane_csc_load_black(plane);
 
-	intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, color_plane);
+	intel_psr2_program_plane_sel_fetch_noarm(plane, crtc_state, plane_state, color_plane);
 }
 
 static void
@@ -1287,6 +1287,8 @@ icl_plane_update_arm(struct intel_plane *plane,
 	if (plane_state->scaler_id >= 0)
 		skl_program_plane_scaler(plane, crtc_state, plane_state);
 
+	intel_psr2_program_plane_sel_fetch_arm(plane, crtc_state, plane_state);
+
 	/*
 	 * The control register self-arms if the plane was previously
 	 * disabled. Try to make the plane enable atomic by writing
-- 
2.34.1

