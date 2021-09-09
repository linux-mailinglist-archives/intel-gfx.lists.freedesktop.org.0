Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EC3405FD4
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 01:02:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F68E6E948;
	Thu,  9 Sep 2021 23:02:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A0FC6E943
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 23:02:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="243251444"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="243251444"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 16:02:08 -0700
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="466798526"
Received: from rsalmerx-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.209.166.193])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 16:02:08 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Thu,  9 Sep 2021 16:07:25 -0700
Message-Id: <20210909230725.33735-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210909230725.33735-1-jose.souza@intel.com>
References: <20210909230725.33735-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/display: Workaround cursor left
 overs with PSR2 selective fetch enabled
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

Not sure why but when moving the cursor fast it causes some artifacts
of the cursor to be left in the cursor path, adding some pixels above
the cursor to the damaged area fixes the issue, so leaving this as a
workaround until proper fix is found.

This is reproducile on TGL and ADL-P.

Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 25 ++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 670b0ceba110f..18e721dde22e2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1565,6 +1565,28 @@ static void intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_state *c
 		drm_warn(&dev_priv->drm, "Missing PSR2 sel fetch alignment with DSC\n");
 }
 
+/*
+ * FIXME: Not sure why but when moving the cursor fast it causes some artifacts
+ * of the cursor to be left in the cursor path, adding some pixels above the
+ * cursor to the damaged area fixes the issue.
+ */
+static void cursor_area_workaround(const struct intel_plane_state *new_plane_state,
+				   struct drm_rect *damaged_area,
+				   struct drm_rect *pipe_clip)
+{
+	const struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
+	int height;
+
+	if (plane->id != PLANE_CURSOR)
+		return;
+
+	height = drm_rect_height(&new_plane_state->uapi.dst) / 2;
+	damaged_area->y1 -=  height;
+	damaged_area->y1 = max(damaged_area->y1, 0);
+
+	clip_area_update(pipe_clip, damaged_area);
+}
+
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc)
 {
@@ -1627,6 +1649,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				damaged_area.y2 = new_plane_state->uapi.dst.y2;
 				clip_area_update(&pipe_clip, &damaged_area);
 			}
+
+			cursor_area_workaround(new_plane_state, &damaged_area,
+					       &pipe_clip);
 			continue;
 		} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha) {
 			/* If alpha changed mark the whole plane area as damaged */
-- 
2.33.0

