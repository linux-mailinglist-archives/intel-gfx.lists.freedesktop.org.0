Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FDE7EEFA7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 11:02:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031F910E73F;
	Fri, 17 Nov 2023 10:02:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC6610E741
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 10:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700215368; x=1731751368;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jx9yN2xZO9Iwo+dB1l3OxqKl4W9x3OjIDq5XFzNn7vU=;
 b=FJYvm5aLyDw4Mqc748tR1vxUWez8kuft/BrNMKRA3pEMV++bVUekk6Sp
 /GQj80vcsxK1LiaPvv6T52EiU/nvtwgXB16//nWLl545NpiQhuITM6cKS
 DQMKtZL5rhBjlvwgEAao+aKQgcyLeK8r5MCIrMl1TSVK6lF20xcWllFu4
 qLIa+4BO+0sDBp1BNI0SqJH//VnYNpf1fnfgaOKEJZbAlMuFh6MXbtY2K
 pGK3C5Xrnx30GT615XEEiy7cgz8BODjPRZsSiVnY9/iXT9cmOuRkmXPbJ
 gvrUkSH2NqJHBrRUnXjdlgzfqXiNTJtEHhi8gdx/aABBdK/nTxJ8lC0xA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="457770505"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="457770505"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 02:02:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="759127426"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759127426"
Received: from ylysyix-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.251.219.145])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 02:02:46 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Nov 2023 12:02:27 +0200
Message-Id: <20231117100227.609261-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231117100227.609261-1-jouni.hogander@intel.com>
References: <20231117100227.609261-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/psr: Add proper handling for
 disabling sel fetch for planes
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

Currently we are enabling selective fetch for all planes that are visible.
This is suboptimal as we might be fetching for memory for planes that are
not part of selective update.

Fix this by adding proper handling for disabling plane selective fetch:
If plane previously part of selective update is now not part of update:
Add it into updated planes and let the plane configuration to disable
selective fetch for it.

v2:
  - Add setting sel_fetch_area->y1/y2 to -1
  - Remove setting again local sel_fetch_area variable

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   | 22 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_psr.c      | 13 ++++++++++-
 .../drm/i915/display/skl_universal_plane.c    |  8 +++++--
 3 files changed, 31 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index c089dd6f9781..299d22708fa4 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -485,22 +485,22 @@ static int i9xx_check_cursor(struct intel_crtc_state *crtc_state,
 	return 0;
 }
 
-static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
-					     const struct intel_crtc_state *crtc_state,
-					     const struct intel_plane_state *plane_state)
+static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
+					    const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
-			  plane_state->ctl);
+
+	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
 }
 
-static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
-					    const struct intel_crtc_state *crtc_state)
+static void i9xx_cursor_update_sel_fetch_arm(struct intel_plane *plane,
+					     const struct intel_crtc_state *crtc_state,
+					     const struct intel_plane_state *plane_state)
 {
 	struct drm_i915_private *i915 = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
@@ -508,7 +508,11 @@ static void i9xx_cursor_disable_sel_fetch_arm(struct intel_plane *plane,
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
+	if (drm_rect_height(&plane_state->psr2_sel_fetch_area) > 0)
+		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
+				  plane_state->ctl);
+	else
+		i9xx_cursor_disable_sel_fetch_arm(plane, crtc_state);
 }
 
 /* TODO: split into noarm+arm pair */
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 87eb1535ba98..239365c666e2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2173,8 +2173,19 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			continue;
 
 		inter = pipe_clip;
-		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst))
+		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
+		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst)) {
+			sel_fetch_area->y1 = -1;
+			sel_fetch_area->y2 = -1;
+			/*
+			 * if plane sel fetch was previously enabled ->
+			 * disable it
+			 */
+			if (drm_rect_height(&old_plane_state->psr2_sel_fetch_area) > 0)
+				crtc_state->update_planes |= BIT(plane->id);
+
 			continue;
+		}
 
 		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
 			full_update = true;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 99d33ac5ceee..a969bb835baf 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1336,8 +1336,12 @@ static void icl_plane_update_sel_fetch_arm(struct intel_plane *plane,
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
-	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
-			  PLANE_SEL_FETCH_CTL_ENABLE);
+
+	if (drm_rect_height(&plane_state->psr2_sel_fetch_area) > 0)
+		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
+				  PLANE_SEL_FETCH_CTL_ENABLE);
+	else
+		icl_plane_disable_sel_fetch_arm(plane, crtc_state);
 }
 
 static void
-- 
2.34.1

