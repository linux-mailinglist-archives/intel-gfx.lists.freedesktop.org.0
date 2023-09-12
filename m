Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F420C79C4D5
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:48:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D49AD10E360;
	Tue, 12 Sep 2023 04:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3951010E350;
 Tue, 12 Sep 2023 04:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494113; x=1726030113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sRyPIMGdtTYp1oy5LA9o1x1tWOpTYsEkisatQU/wDZk=;
 b=JFYq9k2MrYwrbd/1TpL26YUxgMTrg+CYANpLEhjWDDo9gS4HRvKQpsjS
 MbKq7+a4YK6PXTO0IbkUxQWxUddJUwdRVBLLeeGy00e/tToQ8viR38i0c
 2sWhfWVDvB9eudHLjfZ8yiae/3S+nxByFd2iKSrgTGgeZnTbGoTcS+D4o
 fteeY2biqxFW/rBLChEan9g4q+OgQbZKM1ya3SA3hRA8mR3yW99+avwwE
 LsBu08AFYIQ2Lk9VsenvQVxliaKjju3nuJBL935FlZ6xt6qC0jpoCFtnS
 5CXMs9wzTXwE6dxsjKqkJShNLXS3XDzQfTQZ4LFdmv/UnSfZogMBBGZ8G g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182315"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182315"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419929"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419929"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:15 -0700
Message-Id: <20230912044837.1672060-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 07/29] drm/i915/xe2lpd: Treat cursor plane as
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
 Matt Roper <matthew.d.roper@intel.com>
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

