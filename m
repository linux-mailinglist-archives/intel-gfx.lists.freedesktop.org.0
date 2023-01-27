Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA2167DF13
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 09:27:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00D3010E402;
	Fri, 27 Jan 2023 08:27:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56BBB10E402
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 08:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674808074; x=1706344074;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oVlwK7AxXA59Jy/fMJvUwsufLs5m+e7WAjLqE7dx1Eo=;
 b=ckcPp1IXaJOOpPZqnBjpVD36wiA2MExeqP5wdcu+t1j3F40aKt+Ij2ej
 /XV2wIzD8oUFhvOCLeJTutLT5uitIbaf2O1ARfaP3Ww45L4E3OZDrDXQ3
 003/tpRLyDkv/XjFX1TvoZO1YM3Q3v0cdgmqioQMl0yix9Ex5GedvSqZw
 BNKCGDLLbld0ZCZJr4MqGW1hJhwA8O0488M9P60CyK9huB9LnVUt4wXoq
 o5N4uhmA1GD1zJf2Z5Gfwg8Gsyj2VURlrdhESVNwsb7ZuyGpvQsYJB+Vv
 JGtPy6HEmSBJgsFiDpEJiks337q30FHsqlRAtp68nXZail+MZcz6Fh9+u Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="306694383"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="306694383"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 00:27:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="656520346"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="656520346"
Received: from mmaiores-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.56.243])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 00:27:38 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 10:27:02 +0200
Message-Id: <20230127082702.3460571-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/psr: Split sel fetch plane
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
---
 drivers/gpu/drm/i915/display/intel_cursor.c   |  3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 28 +++++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h      |  6 +++-
 .../drm/i915/display/skl_universal_plane.c    |  4 ++-
 4 files changed, 30 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index d190fa0d393b..ae9f0b6c92db 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -532,7 +532,8 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
 		skl_write_cursor_wm(plane, crtc_state);
 
 	if (plane_state)
-		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, 0);
+		intel_psr2_program_plane_sel_fetch_arm(plane, crtc_state,
+						       plane_state);
 	else
 		intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7a72e15e6836..a3f4451eb66d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1559,7 +1559,25 @@ void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
 }
 
-void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
+void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
+					const struct intel_crtc_state *crtc_state,
+					const struct intel_plane_state *plane_state)
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
 					const struct intel_crtc_state *crtc_state,
 					const struct intel_plane_state *plane_state,
 					int color_plane)
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
index 2ac3a46cccc5..c87ae2e6ee6c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -46,10 +46,14 @@ bool intel_psr_enabled(struct intel_dp *intel_dp);
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state);
-void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
+void intel_psr2_program_plane_sel_fetch_noarm(struct intel_plane *plane,
 					const struct intel_crtc_state *crtc_state,
 					const struct intel_plane_state *plane_state,
 					int color_plane);
+void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
+					const struct intel_crtc_state *crtc_state,
+					const struct intel_plane_state *plane_state);
+
 void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
 					const struct intel_crtc_state *crtc_state);
 void intel_psr_pause(struct intel_dp *intel_dp);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9b172a1e90de..296da4bc297c 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
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

