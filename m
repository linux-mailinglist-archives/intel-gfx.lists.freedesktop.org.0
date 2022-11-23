Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B627636C44
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 22:20:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA68410E643;
	Wed, 23 Nov 2022 21:20:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3B1810E63C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 21:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669238348; x=1700774348;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iFXgLPnDXLeMfKfOoLSd9lQGZAhtjjbcbCuNZLywra8=;
 b=T/lgZgBZGTfp5m8yBZvWekDsJ+BsaI/Y5PJH8vQ73wdebPTtAbX4c2Yr
 rPBbbrBXxGpuLXHLA2aI6Dmh1Aqd5DkA4+iOCg7hO61o4FmFHNPWtr4RE
 9K4m17nThgsLPPcT7yDD69ayGsdY2jLX2TG/bLxgdYEXL3metru5UR/Nf
 p2a5DRaVr8s7THL7bWj+4ImyEgOQzmoucEXhfVw4QtDh1chDEkyO2W9pl
 bQ/+bL93a1O2dDkFKxuyfhhLeuLrleWMTDnalAo+me6eQwPXI4plFDxJ6
 xyPnxohWlys/9Jz8Mgl9J1VrBAOtNWsi0mr41GWFViVpL7qclhwhfDUBZ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="293866724"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="293866724"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:19:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="641985352"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="641985352"
Received: from jgronski-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.163])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 13:19:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 23:18:22 +0200
Message-Id: <686fea60a3182800eab900783c20c9bb06f5f29a.1669238194.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1669238194.git.jani.nikula@intel.com>
References: <cover.1669238194.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/12] drm/i915/wm: switch to intel_de_*
 register accessors in display code
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Avoid direct uncore use in display code.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 42 +++++++++-----------
 1 file changed, 18 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index e0766d1be966..ae4e9e680c2e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -45,8 +45,7 @@ u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *i915)
 	enum dbuf_slice slice;
 
 	for_each_dbuf_slice(i915, slice) {
-		if (intel_uncore_read(&i915->uncore,
-				      DBUF_CTL_S(slice)) & DBUF_POWER_STATE)
+		if (intel_de_read(i915, DBUF_CTL_S(slice)) & DBUF_POWER_STATE)
 			enabled_slices |= BIT(slice);
 	}
 
@@ -75,7 +74,7 @@ intel_sagv_block_time(struct drm_i915_private *i915)
 	if (DISPLAY_VER(i915) >= 14) {
 		u32 val;
 
-		val = intel_uncore_read(&i915->uncore, MTL_LATENCY_SAGV);
+		val = intel_de_read(i915, MTL_LATENCY_SAGV);
 
 		return REG_FIELD_GET(MTL_LATENCY_QCLK_SAGV, val);
 	} else if (DISPLAY_VER(i915) >= 12) {
@@ -756,18 +755,18 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *i915,
 
 	/* Cursor doesn't support NV12/planar, so no extra calculation needed */
 	if (plane_id == PLANE_CURSOR) {
-		val = intel_uncore_read(&i915->uncore, CUR_BUF_CFG(pipe));
+		val = intel_de_read(i915, CUR_BUF_CFG(pipe));
 		skl_ddb_entry_init_from_hw(ddb, val);
 		return;
 	}
 
-	val = intel_uncore_read(&i915->uncore, PLANE_BUF_CFG(pipe, plane_id));
+	val = intel_de_read(i915, PLANE_BUF_CFG(pipe, plane_id));
 	skl_ddb_entry_init_from_hw(ddb, val);
 
 	if (DISPLAY_VER(i915) >= 11)
 		return;
 
-	val = intel_uncore_read(&i915->uncore, PLANE_NV12_BUF_CFG(pipe, plane_id));
+	val = intel_de_read(i915, PLANE_NV12_BUF_CFG(pipe, plane_id));
 	skl_ddb_entry_init_from_hw(ddb_y, val);
 }
 
@@ -2821,36 +2820,32 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 
 		for (level = 0; level <= max_level; level++) {
 			if (plane_id != PLANE_CURSOR)
-				val = intel_uncore_read(&i915->uncore, PLANE_WM(pipe, plane_id, level));
+				val = intel_de_read(i915, PLANE_WM(pipe, plane_id, level));
 			else
-				val = intel_uncore_read(&i915->uncore, CUR_WM(pipe, level));
+				val = intel_de_read(i915, CUR_WM(pipe, level));
 
 			skl_wm_level_from_reg_val(val, &wm->wm[level]);
 		}
 
 		if (plane_id != PLANE_CURSOR)
-			val = intel_uncore_read(&i915->uncore, PLANE_WM_TRANS(pipe, plane_id));
+			val = intel_de_read(i915, PLANE_WM_TRANS(pipe, plane_id));
 		else
-			val = intel_uncore_read(&i915->uncore, CUR_WM_TRANS(pipe));
+			val = intel_de_read(i915, CUR_WM_TRANS(pipe));
 
 		skl_wm_level_from_reg_val(val, &wm->trans_wm);
 
 		if (HAS_HW_SAGV_WM(i915)) {
 			if (plane_id != PLANE_CURSOR)
-				val = intel_uncore_read(&i915->uncore,
-							PLANE_WM_SAGV(pipe, plane_id));
+				val = intel_de_read(i915, PLANE_WM_SAGV(pipe, plane_id));
 			else
-				val = intel_uncore_read(&i915->uncore,
-							CUR_WM_SAGV(pipe));
+				val = intel_de_read(i915, CUR_WM_SAGV(pipe));
 
 			skl_wm_level_from_reg_val(val, &wm->sagv.wm0);
 
 			if (plane_id != PLANE_CURSOR)
-				val = intel_uncore_read(&i915->uncore,
-							PLANE_WM_SAGV_TRANS(pipe, plane_id));
+				val = intel_de_read(i915, PLANE_WM_SAGV_TRANS(pipe, plane_id));
 			else
-				val = intel_uncore_read(&i915->uncore,
-							CUR_WM_SAGV_TRANS(pipe));
+				val = intel_de_read(i915, CUR_WM_SAGV_TRANS(pipe));
 
 			skl_wm_level_from_reg_val(val, &wm->sagv.trans_wm);
 		} else if (DISPLAY_VER(i915) >= 12) {
@@ -3126,8 +3121,8 @@ void skl_watermark_ipc_update(struct drm_i915_private *i915)
 	if (!HAS_IPC(i915))
 		return;
 
-	intel_uncore_rmw(&i915->uncore, DISP_ARB_CTL2, DISP_IPC_ENABLE,
-			 skl_watermark_ipc_enabled(i915) ? DISP_IPC_ENABLE : 0);
+	intel_de_rmw(i915, DISP_ARB_CTL2, DISP_IPC_ENABLE,
+		     skl_watermark_ipc_enabled(i915) ? DISP_IPC_ENABLE : 0);
 }
 
 static bool skl_watermark_ipc_can_enable(struct drm_i915_private *i915)
@@ -3201,19 +3196,18 @@ adjust_wm_latency(struct drm_i915_private *i915,
 
 static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
 {
-	struct intel_uncore *uncore = &i915->uncore;
 	int max_level = ilk_wm_max_level(i915);
 	u32 val;
 
-	val = intel_uncore_read(uncore, MTL_LATENCY_LP0_LP1);
+	val = intel_de_read(i915, MTL_LATENCY_LP0_LP1);
 	wm[0] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
 	wm[1] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
 
-	val = intel_uncore_read(uncore, MTL_LATENCY_LP2_LP3);
+	val = intel_de_read(i915, MTL_LATENCY_LP2_LP3);
 	wm[2] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
 	wm[3] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
 
-	val = intel_uncore_read(uncore, MTL_LATENCY_LP4_LP5);
+	val = intel_de_read(i915, MTL_LATENCY_LP4_LP5);
 	wm[4] = REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
 	wm[5] = REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
 
-- 
2.34.1

