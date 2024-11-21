Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA3A9D4BDE
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 12:27:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DACC10E245;
	Thu, 21 Nov 2024 11:27:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JvOVTDvC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 582F810E1C8;
 Thu, 21 Nov 2024 11:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732188470; x=1763724470;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MWDbEhntnflG5XCuTXONUOyW7j8rawuz02ZTCPfYUZc=;
 b=JvOVTDvC8lT+7z9nN041RYQZOn9xeb0dXbh2chjWcirFizujHOd7j5CX
 KG+1FoNLaj4WqaJz8WUoDmODyIcLa6W5Xgp0WGHZ2abG+32iyDArLniZY
 P+Nkj+wl13wFu9WTOUtMCivH8ILNaz3hQBCor4IEsO1LKZb98jUnte9GA
 rITgtM9kfJbyI2zve0CVRHGqGNGTwRJ4TQH43Su9+fOX38V0/BZDcOvWe
 9dyU1r4jXFoAjxA018lzogvYVFCREioPdXY9XGOyDKX1Qrl1TfUykOJGN
 iJDm99IwnR7/9kaDkGcQn8GDCMU4ECxvkUrUCFvzs+ydAijN7UZjBs4O+ w==;
X-CSE-ConnectionGUID: nlBaaQm0Q/uKL8jcwkPRRQ==
X-CSE-MsgGUID: kCOPiH3lSiCCDDXKJQ/ZYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="49821038"
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="49821038"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 03:27:50 -0800
X-CSE-ConnectionGUID: mUZCF3nPQESMYT/7ji0EEA==
X-CSE-MsgGUID: snSpl+9xQraA5DmsjpqsSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="90165770"
Received: from vgovind2-mobl3.fi.intel.com ([10.237.66.37])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 03:27:48 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH v2 1/3] drm/i915/display: update to plane_wm register access
 function
Date: Thu, 21 Nov 2024 13:27:24 +0200
Message-Id: <20241121112726.510220-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241121112726.510220-1-vinod.govindapillai@intel.com>
References: <20241121112726.510220-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
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

Future platforms can have new additions in the plane_wm
registers. So update skl_wm_level_from_reg_val() to have
possiblity for such platform differentiations. This is in
preparation for the rest of the patches in this series where
hw support for the minimum and interim ddb allocations for
async flip is added. Replace all the i915 uses to intel_display
in this function while updating this function

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 32 ++++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1a4c1fa24820..7c1c491c2fe0 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2927,7 +2927,8 @@ skl_compute_wm(struct intel_atomic_state *state)
 	return 0;
 }
 
-static void skl_wm_level_from_reg_val(u32 val, struct skl_wm_level *level)
+static void skl_wm_level_from_reg_val(struct intel_display *display,
+				      u32 val, struct skl_wm_level *level)
 {
 	level->enable = val & PLANE_WM_EN;
 	level->ignore_lines = val & PLANE_WM_IGNORE_LINES;
@@ -2939,7 +2940,6 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 				     struct skl_pipe_wm *out)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	enum plane_id plane_id;
 	int level;
@@ -2948,37 +2948,37 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 	for_each_plane_id_on_crtc(crtc, plane_id) {
 		struct skl_plane_wm *wm = &out->planes[plane_id];
 
-		for (level = 0; level < i915->display.wm.num_levels; level++) {
+		for (level = 0; level < display->wm.num_levels; level++) {
 			if (plane_id != PLANE_CURSOR)
-				val = intel_de_read(i915, PLANE_WM(pipe, plane_id, level));
+				val = intel_de_read(display, PLANE_WM(pipe, plane_id, level));
 			else
-				val = intel_de_read(i915, CUR_WM(pipe, level));
+				val = intel_de_read(display, CUR_WM(pipe, level));
 
-			skl_wm_level_from_reg_val(val, &wm->wm[level]);
+			skl_wm_level_from_reg_val(display, val, &wm->wm[level]);
 		}
 
 		if (plane_id != PLANE_CURSOR)
-			val = intel_de_read(i915, PLANE_WM_TRANS(pipe, plane_id));
+			val = intel_de_read(display, PLANE_WM_TRANS(pipe, plane_id));
 		else
-			val = intel_de_read(i915, CUR_WM_TRANS(pipe));
+			val = intel_de_read(display, CUR_WM_TRANS(pipe));
 
-		skl_wm_level_from_reg_val(val, &wm->trans_wm);
+		skl_wm_level_from_reg_val(display, val, &wm->trans_wm);
 
 		if (HAS_HW_SAGV_WM(display)) {
 			if (plane_id != PLANE_CURSOR)
-				val = intel_de_read(i915, PLANE_WM_SAGV(pipe, plane_id));
+				val = intel_de_read(display, PLANE_WM_SAGV(pipe, plane_id));
 			else
-				val = intel_de_read(i915, CUR_WM_SAGV(pipe));
+				val = intel_de_read(display, CUR_WM_SAGV(pipe));
 
-			skl_wm_level_from_reg_val(val, &wm->sagv.wm0);
+			skl_wm_level_from_reg_val(display, val, &wm->sagv.wm0);
 
 			if (plane_id != PLANE_CURSOR)
-				val = intel_de_read(i915, PLANE_WM_SAGV_TRANS(pipe, plane_id));
+				val = intel_de_read(display, PLANE_WM_SAGV_TRANS(pipe, plane_id));
 			else
-				val = intel_de_read(i915, CUR_WM_SAGV_TRANS(pipe));
+				val = intel_de_read(display, CUR_WM_SAGV_TRANS(pipe));
 
-			skl_wm_level_from_reg_val(val, &wm->sagv.trans_wm);
-		} else if (DISPLAY_VER(i915) >= 12) {
+			skl_wm_level_from_reg_val(display, val, &wm->sagv.trans_wm);
+		} else if (DISPLAY_VER(display) >= 12) {
 			wm->sagv.wm0 = wm->wm[0];
 			wm->sagv.trans_wm = wm->trans_wm;
 		}
-- 
2.34.1

