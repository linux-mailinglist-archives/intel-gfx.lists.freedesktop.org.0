Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD8A555054
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 17:55:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71B7510E9FA;
	Wed, 22 Jun 2022 15:55:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9776110E9FA
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 15:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655913299; x=1687449299;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8u4m0VUC9f+7OXJA9ewzS8P8aqI9McbEK+B9/qeSeMI=;
 b=eW18fnGl3lzLB7CyCYFCX7ka0Oa07o7izme7zckcVU6URbrf+DYcwAUR
 puwm5A9fDlCdC5qibCjH94N4d9VrQ5Le8m5aWrT4dzPyu/Dva2xyK9f7W
 CLq5pvkY5YBCSibQ40q1s7OWR3xbDtD9an42bL1MghXgP1zc7i+YxZIdC
 ZdMULQ9UXi2GOrSaT2tDm1t8CiaBjJ8+Wp6zlclpmj4OIzglLkeeiRnPY
 e8hW5FsBs4LuvjlPzGFV7CMs2quTYfllXDZ6/G+v8a5ReKu2JxvfbXgJq
 +/doy9VSOlr/nuAfKNwOOQbvEeRWJUL4oqY5Y59HrlR5MMsCRZcEfBApy g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="280504033"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="280504033"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 08:54:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="592251177"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga007.fm.intel.com with SMTP; 22 Jun 2022 08:54:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jun 2022 18:54:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 18:54:44 +0300
Message-Id: <20220622155452.32587-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/9] drm/i915: Split g4x_compute_pipe_wm()
 into two
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Split g4x_compute_pipe_wm() into two halves. The first half computes
the new raw watermarks, and the second half munges those up into real
watermarks for the particular pipe.

We can reuse the second half for watermark sanitation as well.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 54 +++++++++++++++++++--------------
 1 file changed, 31 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 9b7e93ca1ff9..395ed3c832d6 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -1376,34 +1376,14 @@ static bool g4x_compute_fbc_en(const struct g4x_wm_state *wm_state,
 	return true;
 }
 
-static int g4x_compute_pipe_wm(struct intel_atomic_state *state,
-			       struct intel_crtc *crtc)
+static int _g4x_compute_pipe_wm(struct intel_crtc_state *crtc_state)
 {
-	struct intel_crtc_state *crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct g4x_wm_state *wm_state = &crtc_state->wm.g4x.optimal;
 	u8 active_planes = crtc_state->active_planes & ~BIT(PLANE_CURSOR);
 	const struct g4x_pipe_wm *raw;
-	const struct intel_plane_state *old_plane_state;
-	const struct intel_plane_state *new_plane_state;
-	struct intel_plane *plane;
 	enum plane_id plane_id;
-	int i, level;
-	unsigned int dirty = 0;
-
-	for_each_oldnew_intel_plane_in_state(state, plane,
-					     old_plane_state,
-					     new_plane_state, i) {
-		if (new_plane_state->hw.crtc != &crtc->base &&
-		    old_plane_state->hw.crtc != &crtc->base)
-			continue;
-
-		if (g4x_raw_plane_wm_compute(crtc_state, new_plane_state))
-			dirty |= BIT(plane->id);
-	}
-
-	if (!dirty)
-		return 0;
+	int level;
 
 	level = G4X_WM_LEVEL_NORMAL;
 	if (!g4x_raw_crtc_wm_is_valid(crtc_state, level))
@@ -1456,6 +1436,34 @@ static int g4x_compute_pipe_wm(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int g4x_compute_pipe_wm(struct intel_atomic_state *state,
+			       struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_plane_state *old_plane_state;
+	const struct intel_plane_state *new_plane_state;
+	struct intel_plane *plane;
+	unsigned int dirty = 0;
+	int i;
+
+	for_each_oldnew_intel_plane_in_state(state, plane,
+					     old_plane_state,
+					     new_plane_state, i) {
+		if (new_plane_state->hw.crtc != &crtc->base &&
+		    old_plane_state->hw.crtc != &crtc->base)
+			continue;
+
+		if (g4x_raw_plane_wm_compute(crtc_state, new_plane_state))
+			dirty |= BIT(plane->id);
+	}
+
+	if (!dirty)
+		return 0;
+
+	return _g4x_compute_pipe_wm(crtc_state);
+}
+
 static int g4x_compute_intermediate_wm(struct intel_atomic_state *state,
 				       struct intel_crtc *crtc)
 {
-- 
2.35.1

