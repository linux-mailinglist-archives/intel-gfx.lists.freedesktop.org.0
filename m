Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C4F435EC1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 12:11:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E5006E3EC;
	Thu, 21 Oct 2021 10:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 135406E3EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Oct 2021 10:11:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="315200648"
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="315200648"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 03:10:56 -0700
X-IronPort-AV: E=Sophos;i="5.87,169,1631602800"; d="scan'208";a="495065042"
Received: from hdelagas-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.44.189])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 03:10:54 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jose.souza@intel.com,
	mika.kahola@intel.com,
	wan-gyeong.mun@intel.com
Date: Thu, 21 Oct 2021 13:10:23 +0300
Message-Id: <20211021101024.13112-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211021101024.13112-1-jouni.hogander@intel.com>
References: <20211021101024.13112-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: Add initial selective
 fetch support for biplanar formats
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

Biplanar formats are using two planes (Y and UV). This patch adds handling
of Y selective fetch area by utilizing existing linked plane mechanism.
Also UV plane Y offset configuration is modified according to Bspec.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 30 +++++++++++++++++++++---
 1 file changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 49c2dfbd4055..469bf95178f3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1467,10 +1467,19 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
 	val |= plane_state->uapi.dst.x1;
 	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_POS(pipe, plane->id), val);
 
-	/* TODO: consider auxiliary surfaces */
-	x = plane_state->uapi.src.x1 >> 16;
-	y = (plane_state->uapi.src.y1 >> 16) + clip->y1;
+	x = plane_state->view.color_plane[color_plane].x;
+
+	/*
+	 * From Bspec: UV surface Start Y Position = half of Y plane Y
+	 * start position.
+	 */
+	if (!color_plane)
+		y = plane_state->view.color_plane[color_plane].y + clip->y1;
+	else
+		y = plane_state->view.color_plane[color_plane].y + clip->y1 / 2;
+
 	val = y << 16 | x;
+
 	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_OFFSET(pipe, plane->id),
 			  val);
 
@@ -1700,6 +1709,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
 					     new_plane_state, i) {
 		struct drm_rect *sel_fetch_area, inter;
+		struct intel_plane *linked = new_plane_state->planar_linked_plane;
 
 		if (new_plane_state->uapi.crtc != crtc_state->uapi.crtc ||
 		    !new_plane_state->uapi.visible)
@@ -1718,6 +1728,20 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		sel_fetch_area->y1 = inter.y1 - new_plane_state->uapi.dst.y1;
 		sel_fetch_area->y2 = inter.y2 - new_plane_state->uapi.dst.y1;
 		crtc_state->update_planes |= BIT(plane->id);
+
+		/*
+		 * Sel_fetch_area is calculated for UV plane. Use
+		 * same area for Y plane as well.
+		 */
+		if (linked) {
+			struct intel_plane_state *linked_new_plane_state =
+			  intel_atomic_get_new_plane_state(state, linked);
+			struct drm_rect *linked_sel_fetch_area =
+			  &linked_new_plane_state->psr2_sel_fetch_area;
+
+			linked_sel_fetch_area->y1 = sel_fetch_area->y1;
+			linked_sel_fetch_area->y2 = sel_fetch_area->y2;
+		}
 	}
 
 skip_sel_fetch_set_loop:
-- 
2.25.1

