Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B3A467436
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 10:43:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D5257354F;
	Fri,  3 Dec 2021 09:43:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C819D72F50
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 09:43:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="323200949"
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="323200949"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 01:40:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="501125161"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.167])
 by orsmga007.jf.intel.com with ESMTP; 03 Dec 2021 01:40:46 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Dec 2021 11:40:38 +0200
Message-Id: <20211203094041.18399-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Pass plane id to watermark
 calculation functions
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
Cc: jani.saarinen@intel.co
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Sometimes we might need to change the way we calculate
watermarks, based on which particular plane it is calculated
for. Thus it would be convenient to pass plane_id to those
functions.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 2ff260117476..c5c1b6bef9a2 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4274,6 +4274,7 @@ static int skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 				 u32 plane_pixel_rate, struct skl_wm_params *wp,
 				 int color_plane);
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
+				 enum plane_id plane_id,
 				 int level,
 				 unsigned int latency,
 				 const struct skl_wm_params *wp,
@@ -4300,7 +4301,7 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 	for (level = 0; level <= max_level; level++) {
 		unsigned int latency = dev_priv->wm.skl_latency[level];
 
-		skl_compute_plane_wm(crtc_state, level, latency, &wp, &wm, &wm);
+		skl_compute_plane_wm(crtc_state, PLANE_CURSOR, level, latency, &wp, &wm, &wm);
 		if (wm.min_ddb_alloc == U16_MAX)
 			break;
 
@@ -5530,6 +5531,7 @@ static int skl_wm_max_lines(struct drm_i915_private *dev_priv)
 }
 
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
+				 enum plane_id plane_id,
 				 int level,
 				 unsigned int latency,
 				 const struct skl_wm_params *wp,
@@ -5657,6 +5659,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 
 static void
 skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
+		      enum plane_id plane_id,
 		      const struct skl_wm_params *wm_params,
 		      struct skl_wm_level *levels)
 {
@@ -5668,7 +5671,7 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 		struct skl_wm_level *result = &levels[level];
 		unsigned int latency = dev_priv->wm.skl_latency[level];
 
-		skl_compute_plane_wm(crtc_state, level, latency,
+		skl_compute_plane_wm(crtc_state, plane_id, level, latency,
 				     wm_params, result_prev, result);
 
 		result_prev = result;
@@ -5676,6 +5679,7 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 }
 
 static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
+				enum plane_id plane_id,
 				const struct skl_wm_params *wm_params,
 				struct skl_plane_wm *plane_wm)
 {
@@ -5684,7 +5688,7 @@ static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
 	struct skl_wm_level *levels = plane_wm->wm;
 	unsigned int latency = dev_priv->wm.skl_latency[0] + dev_priv->sagv_block_time_us;
 
-	skl_compute_plane_wm(crtc_state, 0, latency,
+	skl_compute_plane_wm(crtc_state, plane_id, 0, latency,
 			     wm_params, &levels[0],
 			     sagv_wm);
 }
@@ -5767,13 +5771,13 @@ static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	skl_compute_wm_levels(crtc_state, &wm_params, wm->wm);
+	skl_compute_wm_levels(crtc_state, plane_id, &wm_params, wm->wm);
 
 	skl_compute_transition_wm(dev_priv, &wm->trans_wm,
 				  &wm->wm[0], &wm_params);
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		tgl_compute_sagv_wm(crtc_state, &wm_params, wm);
+		tgl_compute_sagv_wm(crtc_state, plane_id, &wm_params, wm);
 
 		skl_compute_transition_wm(dev_priv, &wm->sagv.trans_wm,
 					  &wm->sagv.wm0, &wm_params);
@@ -5798,7 +5802,7 @@ static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
 	if (ret)
 		return ret;
 
-	skl_compute_wm_levels(crtc_state, &wm_params, wm->uv_wm);
+	skl_compute_wm_levels(crtc_state, plane_id, &wm_params, wm->uv_wm);
 
 	return 0;
 }
-- 
2.24.1.485.gad05a3d8e5

