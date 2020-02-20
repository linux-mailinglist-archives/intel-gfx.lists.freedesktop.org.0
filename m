Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D987165D47
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 13:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64FDE6ED40;
	Thu, 20 Feb 2020 12:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 528F96ED3D
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 12:10:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 04:10:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,464,1574150400"; d="scan'208";a="259252303"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga004.fm.intel.com with ESMTP; 20 Feb 2020 04:10:47 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Feb 2020 14:07:35 +0200
Message-Id: <20200220120741.6917-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
References: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v17 1/7] drm/i915: Start passing latency as
 parameter
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to start passing memory latency as a
parameter when calculating plane wm levels,
as latency can get changed in different
circumstances(for example with or without SAGV).
So we need to be more flexible on that matter.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index ffac0b862ca5..d6933e382657 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -4002,6 +4002,7 @@ static int skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 				 int color_plane);
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 int level,
+				 u32 latency,
 				 const struct skl_wm_params *wp,
 				 const struct skl_wm_level *result_prev,
 				 struct skl_wm_level *result /* out */);
@@ -4024,7 +4025,9 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
 	drm_WARN_ON(&dev_priv->drm, ret);
 
 	for (level = 0; level <= max_level; level++) {
-		skl_compute_plane_wm(crtc_state, level, &wp, &wm, &wm);
+		u32 latency = dev_priv->wm.skl_latency[level];
+
+		skl_compute_plane_wm(crtc_state, level, latency, &wp, &wm, &wm);
 		if (wm.min_ddb_alloc == U16_MAX)
 			break;
 
@@ -4978,12 +4981,12 @@ static bool skl_wm_has_lines(struct drm_i915_private *dev_priv, int level)
 
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 int level,
+				 u32 latency,
 				 const struct skl_wm_params *wp,
 				 const struct skl_wm_level *result_prev,
 				 struct skl_wm_level *result /* out */)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
-	u32 latency = dev_priv->wm.skl_latency[level];
 	uint_fixed_16_16_t method1, method2;
 	uint_fixed_16_16_t selected_result;
 	u32 res_blocks, res_lines, min_ddb_alloc = 0;
@@ -5112,9 +5115,10 @@ skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
 
 	for (level = 0; level <= max_level; level++) {
 		struct skl_wm_level *result = &levels[level];
+		u32 latency = dev_priv->wm.skl_latency[level];
 
-		skl_compute_plane_wm(crtc_state, level, wm_params,
-				     result_prev, result);
+		skl_compute_plane_wm(crtc_state, level, latency,
+				     wm_params, result_prev, result);
 
 		result_prev = result;
 	}
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
