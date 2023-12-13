Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78535810E66
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 11:26:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1D0510E12E;
	Wed, 13 Dec 2023 10:26:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1871C10E12E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 10:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702463167; x=1733999167;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SiU3DFzIBvPR59siJ2tZRmzgBashWi7tLiu7LOWgLa0=;
 b=BBndndLvYHp26yBBoRFx2ozmkDzRe4aNal8FlJDO0b7tqiJWn5ZbyDUg
 iqQ3WY60spXInNIu4MFLkMVrT1SGncVlyP4gZwNQB7AGypxJHis65X3Yh
 4elFl3VN0p9j3PIiMhV1CqcaQSGq4GrrgUw+DEMmgnFM89bfsXqtffEAN
 mjfLFs+2MdKQB4u7etMGJCoLsGtPb8w38FR998eDphmvubZLrMwPWT2tt
 4Gku6rswOXg9N9mfTjQtx0yPKdF6deH7k/FxFDv7ApeY744NW4qkUUrya
 mIA23sUSMq+sOWCi/MFHxVUmERN8nUhElEKVVAS1nUIb9NvtGyW26CDuI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="393816112"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="393816112"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 02:25:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767161664"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="767161664"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 02:25:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 12:25:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 9/9] Revert "drm/i915/xe2lpd: Treat cursor plane as regular
 plane for DDB allocation"
Date: Wed, 13 Dec 2023 12:25:19 +0200
Message-ID: <20231213102519.13500-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

This reverts commit cfeff354f70bb1d0deb0279506e3f7989bc16e28.

A core design consideration with legacy cursor updates is that the
cursor must not touch any other plane, even if we were to force it
to take the slow path. That is the real reason why the cursor uses
a fixed ddb allocation, not because bspec says so.

Treating cursors as any other plane during ddb allocation
violates that, which means we can now pull other planes into
fully unsynced legacy cursor mailbox commits. That is
definitely not something we've ever considered when designing
the rest of the code. The noarm+arm register write split in
particular makes that dangerous as previous updates can get
disarmed pretty much at any random time, and not necessarily
in an order that is actually safe (eg. against ddb overlaps).

So if we were to do this then:
- someone needs to expend the appropriate amount of brain
  cells thinking through all the tricky details
- we should do it for all skl+ platforms since all
  of those have double buffered wm/ddb registers. The current
  arbitrary mtl+ cutoff doesn't really make sense

For the moment just go back to the original behaviour where
the cursor's ddb alloation does not change outside of
modeset/fastset. As of now anything else isn't safe.

Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c    |  6 +++---
 drivers/gpu/drm/i915/display/skl_watermark.c     | 16 +++++++---------
 2 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 06c2455bdd78..76d77d5a0409 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -217,6 +217,9 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 	int width, height;
 	unsigned int rel_data_rate;
 
+	if (plane->id == PLANE_CURSOR)
+		return 0;
+
 	if (!plane_state->uapi.visible)
 		return 0;
 
@@ -244,9 +247,6 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
 
 	rel_data_rate = width * height * fb->format->cpp[color_plane];
 
-	if (plane->id == PLANE_CURSOR)
-		return rel_data_rate;
-
 	return intel_adjusted_rate(&plane_state->uapi.src,
 				   &plane_state->uapi.dst,
 				   rel_data_rate);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 56588d6e24ae..051a02ac01a4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1367,7 +1367,7 @@ skl_total_relative_data_rate(const struct intel_crtc_state *crtc_state)
 	u64 data_rate = 0;
 
 	for_each_plane_id_on_crtc(crtc, plane_id) {
-		if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20)
+		if (plane_id == PLANE_CURSOR)
 			continue;
 
 		data_rate += crtc_state->rel_data_rate[plane_id];
@@ -1514,12 +1514,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		return 0;
 
 	/* Allocate fixed number of blocks for cursor. */
-	if (DISPLAY_VER(i915) < 20) {
-		cursor_size = skl_cursor_allocation(crtc_state, num_active);
-		iter.size -= cursor_size;
-		skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
-				   alloc->end - cursor_size, alloc->end);
-	}
+	cursor_size = skl_cursor_allocation(crtc_state, num_active);
+	iter.size -= cursor_size;
+	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
+			   alloc->end - cursor_size, alloc->end);
 
 	iter.data_rate = skl_total_relative_data_rate(crtc_state);
 
@@ -1533,7 +1531,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 			const struct skl_plane_wm *wm =
 				&crtc_state->wm.skl.optimal.planes[plane_id];
 
-			if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20) {
+			if (plane_id == PLANE_CURSOR) {
 				const struct skl_ddb_entry *ddb =
 					&crtc_state->wm.skl.plane_ddb[plane_id];
 
@@ -1581,7 +1579,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
 		const struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
 
-		if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20)
+		if (plane_id == PLANE_CURSOR)
 			continue;
 
 		if (DISPLAY_VER(i915) < 11 &&
-- 
2.41.0

