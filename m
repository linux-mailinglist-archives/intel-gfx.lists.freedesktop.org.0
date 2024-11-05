Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F2C9BC6C2
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 08:16:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D910E10E52A;
	Tue,  5 Nov 2024 07:16:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gpkb6Igv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBD9B10E534;
 Tue,  5 Nov 2024 07:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730790996; x=1762326996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zVFLpyChl9zzEpMr2wcRGvX7C1usw2di5CzjwFJ4AHY=;
 b=Gpkb6IgveCC7KmFV1B3CMREw49L606pJSrfy+1fcRBK1zsvyMknajVlu
 6d5Vy/P4fahTnETnSNvKKgUtjendJ4N9IRGccJuwCOrzQWiv/SnQtJ2zI
 JyYw1Vkeq7oHX/vKnWPS49kU2XueZigdnFKtlamHIUglYko7dQho50aou
 j14heJJqwiwMDssZ9tDwIU6HTuYI7tQQ+ZyWkXtsOQsOzY7qLcy8uIYxD
 qud+ahEukp62QN6/Ic7JgVYPD91k/gT0FYJvn0gxp+EhBa9fJZVxbf7Kf
 Vts9yIauzoRZ942OSqIvdK+fkRnbbZOAUix4Y+vJ8S94rxZgL3OHTWfB+ g==;
X-CSE-ConnectionGUID: YhMS6BQ2Tn+nsa5cj6QR9w==
X-CSE-MsgGUID: sBtNiCQqTjq6XFUmwNktuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="34449550"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="34449550"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:36 -0800
X-CSE-ConnectionGUID: fMcq9GI0Tj2h/g/spKyhvg==
X-CSE-MsgGUID: p5ziocTHSYG/FA9tcmpfyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="87835625"
Received: from apaszkie-mobl2.apaszkie-mobl2 (HELO vgovind2-mobl3..)
 ([10.245.245.146])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:34 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH 6/8] drm/i915/display: update to plane_wm register access
 function
Date: Tue,  5 Nov 2024 09:15:58 +0200
Message-Id: <20241105071600.235338-7-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241105071600.235338-1-vinod.govindapillai@intel.com>
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
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
async flip is added

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a01b1dc01348..d961d01343b3 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2922,7 +2922,8 @@ skl_compute_wm(struct intel_atomic_state *state)
 	return 0;
 }
 
-static void skl_wm_level_from_reg_val(u32 val, struct skl_wm_level *level)
+static void skl_wm_level_from_reg_val(struct intel_display *display,
+				      u32 val, struct skl_wm_level *level)
 {
 	level->enable = val & PLANE_WM_EN;
 	level->ignore_lines = val & PLANE_WM_IGNORE_LINES;
@@ -2949,7 +2950,7 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 			else
 				val = intel_de_read(display, CUR_WM(pipe, level));
 
-			skl_wm_level_from_reg_val(val, &wm->wm[level]);
+			skl_wm_level_from_reg_val(display, val, &wm->wm[level]);
 		}
 
 		if (plane_id != PLANE_CURSOR)
@@ -2957,7 +2958,7 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 		else
 			val = intel_de_read(display, CUR_WM_TRANS(pipe));
 
-		skl_wm_level_from_reg_val(val, &wm->trans_wm);
+		skl_wm_level_from_reg_val(display, val, &wm->trans_wm);
 
 		if (HAS_HW_SAGV_WM(i915)) {
 			if (plane_id != PLANE_CURSOR)
@@ -2965,14 +2966,14 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 			else
 				val = intel_de_read(display, CUR_WM_SAGV(pipe));
 
-			skl_wm_level_from_reg_val(val, &wm->sagv.wm0);
+			skl_wm_level_from_reg_val(display, val, &wm->sagv.wm0);
 
 			if (plane_id != PLANE_CURSOR)
 				val = intel_de_read(display, PLANE_WM_SAGV_TRANS(pipe, plane_id));
 			else
 				val = intel_de_read(display, CUR_WM_SAGV_TRANS(pipe));
 
-			skl_wm_level_from_reg_val(val, &wm->sagv.trans_wm);
+			skl_wm_level_from_reg_val(display, val, &wm->sagv.trans_wm);
 		} else if (DISPLAY_VER(i915) >= 12) {
 			wm->sagv.wm0 = wm->wm[0];
 			wm->sagv.trans_wm = wm->trans_wm;
-- 
2.34.1

