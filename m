Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E380746B9CE
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 12:07:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF0547BD65;
	Tue,  7 Dec 2021 11:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2497AB07
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 11:07:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="217579247"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="217579247"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 03:07:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="515235551"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.167])
 by orsmga008.jf.intel.com with ESMTP; 07 Dec 2021 03:07:29 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Dec 2021 13:07:21 +0200
Message-Id: <20211207110721.30409-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
References: <20211207110721.30409-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Don't allocate extra ddb during
 async flip for DG2
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

In terms of async flip optimization we don't to allocate
extra ddb space, so lets skip it.

v2: - Extracted min ddb async flip check to separate function
      (Ville Syrjälä)
    - Used this function to prevent false positive WARN
      to be triggered(Ville Syrjälä)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 34 ++++++++++++++++++++++++++-------
 1 file changed, 27 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index a529a116164e..619131de5d93 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5105,6 +5105,12 @@ static bool icl_need_wm1_wa(struct drm_i915_private *i915,
 	       (IS_DISPLAY_VER(i915, 12, 13) && plane_id == PLANE_CURSOR);
 }
 
+static bool dg2_need_min_ddb(struct drm_i915_private *i915,
+			     struct intel_crtc_state *crtc_state)
+{
+	return IS_DG2(i915) && crtc_state->uapi.async_flip;
+}
+
 static int
 skl_allocate_plane_ddb(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc)
@@ -5213,9 +5219,15 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 			break;
 
 		rate = crtc_state->plane_data_rate[plane_id];
-		extra = min_t(u16, alloc_size,
-			      DIV64_U64_ROUND_UP(alloc_size * rate,
-						 total_data_rate));
+
+		if (dg2_need_min_ddb(dev_priv, crtc_state)) {
+			extra = 0;
+		} else {
+			extra = min_t(u16, alloc_size,
+				      DIV64_U64_ROUND_UP(alloc_size * rate,
+							 total_data_rate));
+		}
+
 		total[plane_id] = wm->wm[level].min_ddb_alloc + extra;
 		alloc_size -= extra;
 		total_data_rate -= rate;
@@ -5224,14 +5236,22 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
 			break;
 
 		rate = crtc_state->uv_plane_data_rate[plane_id];
-		extra = min_t(u16, alloc_size,
-			      DIV64_U64_ROUND_UP(alloc_size * rate,
-						 total_data_rate));
+
+		if (dg2_need_min_ddb(dev_priv, crtc_state)) {
+			extra = 0;
+		} else {
+			extra = min_t(u16, alloc_size,
+				      DIV64_U64_ROUND_UP(alloc_size * rate,
+							 total_data_rate));
+		}
+
 		uv_total[plane_id] = wm->uv_wm[level].min_ddb_alloc + extra;
 		alloc_size -= extra;
 		total_data_rate -= rate;
 	}
-	drm_WARN_ON(&dev_priv->drm, alloc_size != 0 || total_data_rate != 0);
+
+	if (!dg2_need_min_ddb(dev_priv, crtc_state))
+		drm_WARN_ON(&dev_priv->drm, alloc_size != 0 || total_data_rate != 0);
 
 	/* Set the actual DDB start/end points for each plane */
 	start = alloc->start;
-- 
2.24.1.485.gad05a3d8e5

