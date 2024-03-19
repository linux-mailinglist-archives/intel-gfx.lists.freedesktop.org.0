Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E0787FDA3
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 13:33:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D135510FA56;
	Tue, 19 Mar 2024 12:33:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z2DLtXWX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9E0110FA4E
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 12:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710851628; x=1742387628;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eZhKwBe2fPJ5CKotqXX0AzuUzeuWjLWjBOsBu2e36ro=;
 b=Z2DLtXWXu0yCXFfjCQgZhAU5dDivfCSOF9ITwLS1ZgVMOzuVM1XKOemb
 1YFKgmQYIL2UaC8RrSwxsgZywcNWqnwOOLDt4dN1dIo8GNwyFPfr2Gyaw
 rXmwFjOarSJf8CdXtVtDLrGkOXdn4/ko8KaTosFS2g8IbHdPBpskJmJ03
 b0H1vLujJkehKHWRiBUZJgfjco8giDprhOATY9YDXsnql2WtBDnHvWLaL
 66nyP9ijgv7oTRvW/3fy4LMVEFHFWXRABeIKJRr/e5/gaJD87euYenY8q
 SzPHezuqbdFE+sVA2ivnkigeS17nU2mi6FzUtpObodw5514iFUUmmfEnR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5894312"
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; 
   d="scan'208";a="5894312"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 05:33:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,136,1708416000"; d="scan'208";a="18437982"
Received: from jlaghzal-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.53.224])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 05:33:46 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 5/5] drm/i915/display: Implement Wa_16021440873
Date: Tue, 19 Mar 2024 14:33:27 +0200
Message-Id: <20240319123327.1661097-6-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240319123327.1661097-1-jouni.hogander@intel.com>
References: <20240319123327.1661097-1-jouni.hogander@intel.com>
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

This patch is implementing Wa_16021440873.

Bspec: 74151

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 24 ++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_psr.c    | 20 +++++++++++------
 2 files changed, 37 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index f8b33999d43f..838d1a723ff1 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -511,6 +511,24 @@ static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
 	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
 }
 
+static void wa_16021440873(struct intel_plane *plane,
+			   const struct intel_crtc_state *crtc_state,
+			   const struct intel_plane_state *plane_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	u32 ctl = plane_state->ctl;
+	int et_y_position = drm_rect_height(&crtc_state->pipe_src) + 1;
+	enum pipe pipe = plane->pipe;
+
+	ctl &= ~MCURSOR_MODE_MASK;
+	ctl |= MCURSOR_MODE_64_2B;
+
+	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), ctl);
+
+	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(pipe),
+		       PIPESRC_HEIGHT(et_y_position));
+}
+
 static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
 					     const struct intel_crtc_state *crtc_state,
 					     const struct intel_plane_state *plane_state)
@@ -531,7 +549,11 @@ static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
 		intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id),
 				  plane_state->ctl);
 	} else {
-		i9xx_cursor_disable_sel_fetch_arm(plane, crtc_state);
+		/* Wa_16021440873 */
+		if (crtc_state->enable_psr2_su_region_et)
+			wa_16021440873(plane, crtc_state, plane_state);
+		else
+			i9xx_cursor_disable_sel_fetch_arm(plane, crtc_state);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e1a9399aa503..7ecf1b35c1ef 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2082,14 +2082,19 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 	crtc_state->psr2_man_track_ctl = val;
 }
 
-static u32 psr2_pipe_srcsz_early_tpt_calc(struct intel_crtc_state *crtc_state,
-					  bool full_update)
+static u32
+psr2_pipe_srcsz_early_tpt_calc(struct intel_crtc_state *crtc_state,
+			       bool full_update, bool cursor_in_su_area)
 {
 	int width, height;
 
 	if (!crtc_state->enable_psr2_su_region_et || full_update)
 		return 0;
 
+	if (!cursor_in_su_area)
+		return PIPESRC_WIDTH(0) |
+			PIPESRC_HEIGHT(drm_rect_height(&crtc_state->pipe_src));
+
 	width = drm_rect_width(&crtc_state->psr2_su_area);
 	height = drm_rect_height(&crtc_state->psr2_su_area);
 
@@ -2141,7 +2146,8 @@ static void intel_psr2_sel_fetch_pipe_alignment(struct intel_crtc_state *crtc_st
  */
 static void
 intel_psr2_sel_fetch_et_alignment(struct intel_atomic_state *state,
-				  struct intel_crtc *crtc)
+				  struct intel_crtc *crtc,
+				  bool *cursor_in_su_area)
 {
 	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane_state *new_plane_state;
@@ -2169,6 +2175,7 @@ intel_psr2_sel_fetch_et_alignment(struct intel_atomic_state *state,
 
 		clip_area_update(&crtc_state->psr2_su_area, &new_plane_state->uapi.dst,
 				 &crtc_state->pipe_src);
+		*cursor_in_su_area = true;
 	}
 }
 
@@ -2214,7 +2221,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_plane_state *new_plane_state, *old_plane_state;
 	struct intel_plane *plane;
-	bool full_update = false;
+	bool full_update = false, cursor_in_su_area = false;
 	int i, ret;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
@@ -2331,7 +2338,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	 * drm_atomic_add_affected_planes to ensure visible cursor is added into
 	 * affected planes even when cursor is not updated by itself.
 	 */
-	intel_psr2_sel_fetch_et_alignment(state, crtc);
+	intel_psr2_sel_fetch_et_alignment(state, crtc, &cursor_in_su_area);
 
 	intel_psr2_sel_fetch_pipe_alignment(crtc_state);
 
@@ -2395,7 +2402,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 skip_sel_fetch_set_loop:
 	psr2_man_trk_ctl_calc(crtc_state, full_update);
 	crtc_state->pipe_srcsz_early_tpt =
-		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update);
+		psr2_pipe_srcsz_early_tpt_calc(crtc_state, full_update,
+					       cursor_in_su_area);
 	return 0;
 }
 
-- 
2.34.1

