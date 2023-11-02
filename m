Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6941A7DEEA4
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 10:08:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CCD610E82A;
	Thu,  2 Nov 2023 09:08:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64F3610E82A
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 09:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698916115; x=1730452115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/vcULqacKpQQe2+LjvMHIcR7VAMwTKzyx/6Niz+LXUE=;
 b=gFg2W/D1kPUcfI2fNbA69m999XpBmfmLKEpzkIzaq6GzVL6KnDqqGFzi
 oq2O3iQwX5NLsozXnP1uUE8mehI3gJ22VhzanciTlQSPNM5ZA7ku69Ffo
 su7giS2kagh4m21sDnFe4CifbpfUs+gD3uPPW5SgjfPa3eDrPIFkZIlwk
 k3Y9lWF8wbHGFC33S0e5PqK39/EgWFKU5uvJWP4oH3uwBJfzDvcw0BkhB
 f9E1nnLHgY6Nh0zChkLFs+jDVaYUnir+La1br4G4t8F9QPLgrcF1V1HP4
 xklcFtpFvQjJRVXiNA9V0jJbr0drzyvA2ATm1jKTIIlVc98aEEEUzIv5E w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="387545616"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="387545616"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 02:08:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="761225441"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="761225441"
Received: from avhiruda-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.34.224])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 02:08:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 11:08:12 +0200
Message-Id: <20231102090812.951411-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231102090812.951411-1-jouni.hogander@intel.com>
References: <20231102090812.951411-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/psr: Add proper handling for
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   | 22 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_psr.c      |  7 ++++++
 .../drm/i915/display/skl_universal_plane.c    |  8 +++++--
 3 files changed, 26 insertions(+), 11 deletions(-)

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
index 6e3a7ed7efe2..ce38466f82af 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2046,6 +2046,12 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst)) {
 			sel_fetch_area->y1 = -1;
 			sel_fetch_area->y2 = -1;
+			/*
+			 * if plane sel fetch was previously enabled ->
+			 * disable it
+			 */
+			if (drm_rect_height(&old_plane_state->psr2_sel_fetch_area) > 0)
+				crtc_state->update_planes |= BIT(plane->id);
 			continue;
 		}
 
@@ -2054,6 +2060,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 			break;
 		}
 
+		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
 		sel_fetch_area->y1 = inter.y1 - new_plane_state->uapi.dst.y1;
 		sel_fetch_area->y2 = inter.y2 - new_plane_state->uapi.dst.y1;
 		crtc_state->update_planes |= BIT(plane->id);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index c47a07c6e5c8..3f4df4311c5b 100644
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

