Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BD2449E46
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 22:32:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B00CE6E28B;
	Mon,  8 Nov 2021 21:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82E8F6E28B
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Nov 2021 21:32:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="229790200"
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="229790200"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 13:31:44 -0800
X-IronPort-AV: E=Sophos;i="5.87,218,1631602800"; d="scan'208";a="451631795"
Received: from varramre-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.213.169.186])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 13:31:44 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Nov 2021 13:38:07 -0800
Message-Id: <20211108213807.39865-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Fix PSR2 handling of multiplanar
 format
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

When a plane with a multiplanar format is added to the state by
drm_atomic_add_affected_planes(), only the UV plane is
added, so a intel_atomic_get_new_plane_state() call to get the Y
plane state can return a null pointer.
To fix this, intel_atomic_get_plane_state() should be called and
the return needs to be checked for errors, as it could return a EAGAIN
as other atomic state could be holding the lock for the Y plane.

Other issue with the patch being fixed is that the Y plane is not
being committed to hardware because the corresponded plane bit is not
set in update_planes when UV and Y planes are added to the state by
drm_atomic_add_affected_planes().

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Fixes: 3809991ff5f4 ("drm/i915/display: Add initial selective fetch support for biplanar formats")
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9d589d471e335..a1a663f362e7d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1732,13 +1732,17 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		 * same area for Y plane as well.
 		 */
 		if (linked) {
-			struct intel_plane_state *linked_new_plane_state =
-			  intel_atomic_get_new_plane_state(state, linked);
-			struct drm_rect *linked_sel_fetch_area =
-			  &linked_new_plane_state->psr2_sel_fetch_area;
+			struct intel_plane_state *linked_new_plane_state;
+			struct drm_rect *linked_sel_fetch_area;
 
+			linked_new_plane_state = intel_atomic_get_plane_state(state, linked);
+			if (IS_ERR(linked_new_plane_state))
+				return PTR_ERR(linked_new_plane_state);
+
+			linked_sel_fetch_area = &linked_new_plane_state->psr2_sel_fetch_area;
 			linked_sel_fetch_area->y1 = sel_fetch_area->y1;
 			linked_sel_fetch_area->y2 = sel_fetch_area->y2;
+			crtc_state->update_planes |= BIT(linked->id);
 		}
 	}
 
-- 
2.33.1

