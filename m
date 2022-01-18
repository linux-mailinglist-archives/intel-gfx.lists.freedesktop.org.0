Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EC0492419
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 11:48:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2745112A52;
	Tue, 18 Jan 2022 10:48:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5DBB112A52
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 10:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642502930; x=1674038930;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vYZUxVVmlUM45u/kIQtH+DCvqtwfsB0b+KqC1JCAKrI=;
 b=X31PlTXnmxHM2j0pG0ro/BxaScnWmKyIivQ7zYjX+npBiCUY8vbtPcQ+
 HrI3HFbDwFy9GItvNhsK8R/SxtdFJOIt5piaISZUQMeZn326rlJukaFSf
 cJFEsvlARUMJUe8cZriKZgsVHRytZabsqHmsjoJ1nY80uk0PJr5U4gn//
 VaPqRsadyXbRPBoaqBu0A32YFGzigofsrRLOh4pIHVZmOJ9nXsCFgV/cb
 UvaXE4f12Jo9HasvmRlnZW8+P9QKk5r3urXnkyoJfIg6gMM4j+pnNdEl9
 io5j1oO4+Lk4+WbhrDdMVdGxL6aTr2i09AyGH+RklBRs/Vtp5VijYDlkj Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="244745353"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="244745353"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 02:48:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="531736742"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga008.jf.intel.com with ESMTP; 18 Jan 2022 02:48:48 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 12:48:39 +0200
Message-Id: <20220118104839.6654-5-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220118104839.6654-1-stanislav.lisovskiy@intel.com>
References: <20220118104839.6654-1-stanislav.lisovskiy@intel.com>
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
index 5d350ddc447f..4922c9108f08 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -5118,6 +5118,12 @@ static bool icl_need_wm1_wa(struct drm_i915_private *i915,
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
@@ -5226,9 +5232,15 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
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
@@ -5237,14 +5249,22 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
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

