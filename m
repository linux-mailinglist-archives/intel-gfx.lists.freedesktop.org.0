Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6C7ABD1EE
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:29:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C6D310E586;
	Tue, 20 May 2025 08:29:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GAXxV0jL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7338710E56B
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 May 2025 08:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747729772; x=1779265772;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CNla2nvNLRapjwOUYSUWdqN5q/NinECBDuq7QZDonOM=;
 b=GAXxV0jLaa0kTaBP+Pl25ZG7Gn6tLIKyRCSfpnoVSDW90Rw71ueMs3nI
 ADy9WF2IsT5UzjR2Cmq94+7r5ZCXYA+rED0uc9sWHOc+8Xe7UJkE2sT5o
 63Jw7rouebqR/IQOrbvd2WOzG7astucXGbk3FLi0slJyJEfuDVg+xnpHB
 caK13plXdsO1h00zqWVDQOMFTHCBkdLmq7W+NaDJuw4vt5D8ziM5Wb7nX
 L0VcNjSolfrJUhowa/nXMFWlatJ5ZAydjLEMlM1rIDVUHpwxXzglZ9por
 tTEkPRsIG57pXjoPQv5vbjJH7PjMgBx8+MH6XggvYFjH89vSobebZgI3r A==;
X-CSE-ConnectionGUID: KpZ15IdrRd+Ai9H+xn3VuA==
X-CSE-MsgGUID: wbZ+UQMlRn+a1UJjn3mVvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="49804356"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="49804356"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:29:32 -0700
X-CSE-ConnectionGUID: EEOs4KgnRTeiIntowu9B7w==
X-CSE-MsgGUID: JE9svus7T7eSwVFPQFYe7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144875726"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.245.245.155])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:29:31 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915: remove unused arg in
 skl_scaler_get_filter_select()
Date: Tue, 20 May 2025 11:26:59 +0300
Message-ID: <20250520082917.1302665-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250520082917.1302665-1-luciano.coelho@intel.com>
References: <20250520082917.1302665-1-luciano.coelho@intel.com>
MIME-Version: 1.0
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

We always pass 0 in the set argument of skl_scaler_get_filter_select()
calls, so the argument is unnecessary.  Remove it.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index c855426544cf..9cbfddb8556a 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -695,15 +695,14 @@ static void glk_program_nearest_filter_coefs(struct intel_display *display,
 			   GLK_PS_COEF_INDEX_SET(pipe, id, set), 0);
 }
 
-static u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter, int set)
+static u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter)
 {
-	if (filter == DRM_SCALING_FILTER_NEAREST_NEIGHBOR) {
+	if (filter == DRM_SCALING_FILTER_NEAREST_NEIGHBOR)
 		return (PS_FILTER_PROGRAMMED |
-			PS_Y_VERT_FILTER_SELECT(set) |
-			PS_Y_HORZ_FILTER_SELECT(set) |
-			PS_UV_VERT_FILTER_SELECT(set) |
-			PS_UV_HORZ_FILTER_SELECT(set));
-	}
+			PS_Y_VERT_FILTER_SELECT(0) |
+			PS_Y_HORZ_FILTER_SELECT(0) |
+			PS_UV_VERT_FILTER_SELECT(0) |
+			PS_UV_HORZ_FILTER_SELECT(0));
 
 	return PS_FILTER_MEDIUM;
 }
@@ -761,7 +760,7 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 	id = scaler_state->scaler_id;
 
 	ps_ctrl = PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].mode |
-		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, 0);
+		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter);
 
 	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
 
@@ -827,7 +826,7 @@ skl_program_plane_scaler(struct intel_dsb *dsb,
 	}
 
 	ps_ctrl = PS_SCALER_EN | PS_BINDING_PLANE(plane->id) | scaler->mode |
-		skl_scaler_get_filter_select(plane_state->hw.scaling_filter, 0);
+		skl_scaler_get_filter_select(plane_state->hw.scaling_filter);
 
 	trace_intel_plane_scaler_update_arm(plane, scaler_id,
 					    crtc_x, crtc_y, crtc_w, crtc_h);
-- 
2.47.2

