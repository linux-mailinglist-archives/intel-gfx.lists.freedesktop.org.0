Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B25466492
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 14:39:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AB776FAD2;
	Thu,  2 Dec 2021 13:39:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1A56FAD2
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 13:39:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="322956192"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="322956192"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 05:39:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="513197652"
Received: from mastan-system-product-name.iind.intel.com ([10.145.169.54])
 by orsmga008.jf.intel.com with ESMTP; 02 Dec 2021 05:39:06 -0800
From: Mastan Katragadda <mastanx.katragadda@intel.com>
To: intel-gfx@lists.freedesktop.org,
 tejaskumarx.surendrakumar.upadhyay@intel.com
Date: Thu,  2 Dec 2021 19:10:05 +0530
Message-Id: <20211202134005.1163539-1-mastanx.katragadda@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm: get rid of DRM_DEBUG_* log calls in drm
 core, files drm_a*.c
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
Cc: mastanx.katragadda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Claudio Suarez <cssk@net-c.es>

igt_check_plane_state test crashes in drm_atomic_helper_check_plane_state
when trying to de-reference drm_plane_state->plane->dev
due to the lack of a struct drm_plane in the mock struct drm_plane_state.
Since drm_plane_state always should contain a plane, the mock also
needs a plane to be the test more robust and realistic. Add it.

fails when the drm_device
cannot be found in the parameter plane_state->crtc.
Fix it using plane_state->plane.

[788.441343] [IGT] kms_selftest: starting dynamic subtest check_plane_state
[788.450045] BUG: kernel NULL pointer dereference, address: 0000000000000010
[788.450068] #PF: supervisor read access in kernel mode
[788.450077] #PF: error_code(0x0000) - not-present page
[788.450085] PGD 0 P4D 0
[788.450094] Oops: 0000 [#1] PREEMPT SMP NOPTI
[788.450103] CPU: 2 PID: 1529 Comm: kms_selftest Not tainted 5.16.0-rc2-CI-CI_DRM_10934+ #1
[788.450116] Hardware name:  /NUC6CAYB, BIOS AYAPLCEL.86A.0049.2018.0508.1356 05/08/2018
[788.450128] RIP: 0010:drm_atomic_helper_check_plane_state+0x1a3/0x2e0 [drm_kms_helper]
[788.450178] Code: 80 00 00 00 01 75 6b 80 7c 24 08 00 75 64 8b 44 24 18 41 39 46 70 75 0e
8b 44 24 20 41 39 46 78 0f 84 c8 00 00 00 49 8b 46 08 <48> 8b 38 48 85 ff 74 04 48 8b 7f 08 48
c7 c2 08 cf 12 a0 be 04 00
[788.450202] RSP: 0018:ffffc90000cd3970 EFLAGS: 00010287
[788.450213] RAX: 0000000000000010 RBX: ffffc90000cd3a38 RCX: 0000000000000001
[788.450223] RDX: 0000000008000000 RSI: 0000000008000000 RDI: ffffc90000cd3a38
[788.450234] RBP: ffffc90000cd3a48 R08: ffffc90000cd3a48 R09: ffffc90000cd3a38
[788.450244] R10: ffffc90000cd3988 R11: 0000000000000418 R12: 0000000000010000
[788.450254] R13: 0000000000010000 R14: ffffc90000cd39d8 R15: ffffc90000cd3a70
[788.450267] FS:  00007f46e1479c00(0000) GS:ffff888277900000(0000) knlGS:0000000000000000
[788.450280] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[788.450289] CR2: 0000000000000010 CR3: 00000001086ba000 CR4: 00000000003506e0
[788.450299] Call Trace:
[788.450306]  <TASK>
[788.450314]  ? 0xffffffffa0612000
[788.450323]  igt_check_plane_state+0x236/0x730 [test_drm_modeset]
[788.450357]  test_drm_modeset_init+0x7c/0x1000 [test_drm_modeset]

Link : https://gitlab.freedesktop.org/drm/intel/-/issues/4663

Signed-off-by: Claudio Suarez <cssk@net-c.es>
Signed-off-by: Mastan Katragadda <mastanx.katragadda@intel.com>
---
 drivers/gpu/drm/drm_atomic_helper.c               | 12 ++++++------
 drivers/gpu/drm/selftests/test-drm_plane_helper.c |  6 ++++++
 2 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index aef2fbd676e5..a7a05e1e26bb 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -828,8 +828,8 @@ int drm_atomic_helper_check_plane_state(struct drm_plane_state *plane_state,
 	}
 
 	if (!crtc_state->enable && !can_update_disabled) {
-		drm_dbg_kms(plane_state->crtc->dev,
-			       "Cannot update plane of a disabled CRTC.\n");
+		drm_dbg_kms(plane_state->plane->dev,
+			    "Cannot update plane of a disabled CRTC.\n");
 		return -EINVAL;
 	}
 
@@ -839,8 +839,8 @@ int drm_atomic_helper_check_plane_state(struct drm_plane_state *plane_state,
 	hscale = drm_rect_calc_hscale(src, dst, min_scale, max_scale);
 	vscale = drm_rect_calc_vscale(src, dst, min_scale, max_scale);
 	if (hscale < 0 || vscale < 0) {
-		drm_dbg_kms(plane_state->crtc->dev,
-			       "Invalid scaling of plane\n");
+		drm_dbg_kms(plane_state->plane->dev,
+			    "Invalid scaling of plane\n");
 		drm_rect_debug_print("src: ", &plane_state->src, true);
 		drm_rect_debug_print("dst: ", &plane_state->dst, false);
 		return -ERANGE;
@@ -864,8 +864,8 @@ int drm_atomic_helper_check_plane_state(struct drm_plane_state *plane_state,
 		return 0;
 
 	if (!can_position && !drm_rect_equals(dst, &clip)) {
-		drm_dbg_kms(plane_state->crtc->dev,
-			       "Plane must cover entire CRTC\n");
+		drm_dbg_kms(plane_state->plane->dev,
+			    "Plane must cover entire CRTC\n");
 		drm_rect_debug_print("dst: ", dst, false);
 		drm_rect_debug_print("clip: ", &clip, false);
 		return -EINVAL;
diff --git a/drivers/gpu/drm/selftests/test-drm_plane_helper.c b/drivers/gpu/drm/selftests/test-drm_plane_helper.c
index 0a9553f51796..e865563be7d0 100644
--- a/drivers/gpu/drm/selftests/test-drm_plane_helper.c
+++ b/drivers/gpu/drm/selftests/test-drm_plane_helper.c
@@ -87,11 +87,17 @@ int igt_check_plane_state(void *ignored)
 				DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC)
 		},
 	};
+
+	struct drm_plane plane = {
+		.dev = NULL
+	};
+
 	struct drm_framebuffer fb = {
 		.width = 2048,
 		.height = 2048
 	};
 	struct drm_plane_state plane_state = {
+		.plane = &plane,
 		.crtc = ZERO_SIZE_PTR,
 		.fb = &fb,
 		.rotation = DRM_MODE_ROTATE_0
-- 
2.25.1

