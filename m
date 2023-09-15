Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9592D7A2513
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 19:47:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43D1A10E669;
	Fri, 15 Sep 2023 17:46:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7127B10E664;
 Fri, 15 Sep 2023 17:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800011; x=1726336011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sRyPIMGdtTYp1oy5LA9o1x1tWOpTYsEkisatQU/wDZk=;
 b=c9rtww0tCdPswqn2Nnosk1XO00el7pwc/V79vHqTXsHihPrCRAL2GOTH
 tjuGmFVusnXPa33tVan1bXyxbOQZsRnSteaLEdQ3r06S1ezbEI3fUiBqs
 tHFMsT84hI2aOeEP3CVZ1m0gJbtT0qRZ0zMkx2uSJ4zJZsfkPz2CDtVNg
 i9K3LrhYsx66aRiTJhaBt/ebSKGV2Ur6D58mTA4oNvLqn15qdEagg/j0X
 d7mVY6SXTIDPyT4XivjJhanYmwPlHPRUrZrcUlk+Vmex6ZvvKZECS1T0r
 QKiNF5tL4Adp7nMWny1Fkkjn3oLyFD67Jl7U/2vREm1vk6MkvEXmeJFpJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="445779266"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="445779266"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="868818249"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="868818249"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 10:46:49 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 10:46:28 -0700
Message-Id: <20230915174651.1928176-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230915174651.1928176-1-lucas.demarchi@intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 07/30] drm/i915/xe2lpd: Treat cursor plane as
 regular plane for DDB allocation
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

We now start calculating relative plane data rate for cursor plane as
well, as instructed by BSpec and also treat cursor plane same way as
other planes, when doing allocation, i.e not using fixed allocation for
cursor anymore.

Bspec: 68907
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c    |  6 +++---
 drivers/gpu/drm/i915/display/skl_watermark.c     | 16 +++++++++-------
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 60a492e186ab..d7a0bd686e49 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -214,9 +214,6 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 	int width, height;
 	unsigned int rel_data_rate;
 
-	if (plane->id == PLANE_CURSOR)
-		return 0;
-
 	if (!plane_state->uapi.visible)
 		return 0;
 
@@ -244,6 +241,9 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 
 	rel_data_rate = width * height * fb->format->cpp[color_plane];
 
+	if (plane->id == PLANE_CURSOR)
+		return rel_data_rate;
+
 	return intel_adjusted_rate(&plane_state->uapi.src,
 				   &plane_state->uapi.dst,
 				   rel_data_rate);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 063929a42a42..64a122d3c9c0 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1367,7 +1367,7 @@ skl_total_relative_data_rate(const struct intel_crtc_state *crtc_state)
 	u64 data_rate = 0;
 
 	for_each_plane_id_on_crtc(crtc, plane_id) {
-		if (plane_id == PLANE_CURSOR)
+		if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20)
 			continue;
 
 		data_rate += crtc_state->rel_data_rate[plane_id];
@@ -1514,10 +1514,12 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		return 0;
 
 	/* Allocate fixed number of blocks for cursor. */
-	cursor_size = skl_cursor_allocation(crtc_state, num_active);
-	iter.size -= cursor_size;
-	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
-			   alloc->end - cursor_size, alloc->end);
+	if (DISPLAY_VER(i915) < 20) {
+		cursor_size = skl_cursor_allocation(crtc_state, num_active);
+		iter.size -= cursor_size;
+		skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
+				   alloc->end - cursor_size, alloc->end);
+	}
 
 	iter.data_rate = skl_total_relative_data_rate(crtc_state);
 
@@ -1531,7 +1533,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			const struct skl_plane_wm *wm =
 				&crtc_state->wm.skl.optimal.planes[plane_id];
 
-			if (plane_id == PLANE_CURSOR) {
+			if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20) {
 				const struct skl_ddb_entry *ddb =
 					&crtc_state->wm.skl.plane_ddb[plane_id];
 
@@ -1579,7 +1581,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		const struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
 
-		if (plane_id == PLANE_CURSOR)
+		if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20)
 			continue;
 
 		if (DISPLAY_VER(i915) < 11 &&
-- 
2.40.1

