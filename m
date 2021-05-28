Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 243AF393C77
	for <lists+intel-gfx@lfdr.de>; Fri, 28 May 2021 06:36:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BABC96E9A1;
	Fri, 28 May 2021 04:36:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4652B6E832;
 Fri, 28 May 2021 04:36:06 +0000 (UTC)
IronPort-SDR: QvP++jF6Hk0yg2lblrEHcW7FJVSk3vO1TCSy3wlinEybdmvscAyp1xxijWeuA7+GKYCczti3D8
 5GBv7R3XeNNw==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="224116784"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="224116784"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 21:36:01 -0700
IronPort-SDR: sLMkV7QxyEdtDBJNEAsPt38lkepklzhzLCWsLr0c2kKMt3efy3xp/MeThQGBwTKbPWhzGhMlrj
 y1O0SQMpKqrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="465749020"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by fmsmga004.fm.intel.com with ESMTP; 27 May 2021 21:35:59 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri, 28 May 2021 09:57:05 +0530
Message-Id: <1622176025-12499-1-git-send-email-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-gfx] [PATCH i-g-t] [RFC] tests/kms_big_fb: Wait for vblank
 before collecting CRC
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
Cc: markyacoub@chromium.org, charlton.lin@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Without wait for vblank, CRC mismatch is seen
between big and small CRC on few Gen11 systems.

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 tests/kms_big_fb.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c
index b35727a09bd0..f90363c3beb2 100644
--- a/tests/kms_big_fb.c
+++ b/tests/kms_big_fb.c
@@ -254,6 +254,7 @@ static void unset_lut(data_t *data)
 static bool test_plane(data_t *data)
 {
 	igt_plane_t *plane = data->plane;
+	igt_display_t *display = &data->display;
 	struct igt_fb *small_fb = &data->small_fb;
 	struct igt_fb *big_fb = &data->big_fb;
 	int w = data->big_fb_width - small_fb->width;
@@ -337,16 +338,17 @@ static bool test_plane(data_t *data)
 		igt_display_commit2(&data->display, data->display.is_atomic ?
 				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
 
-
+		igt_wait_for_vblank(data->drm_fd, display->pipes[data->pipe].crtc_offset);
 		igt_pipe_crc_collect_crc(data->pipe_crc, &small_crc);
 
 		igt_plane_set_fb(plane, big_fb);
 		igt_fb_set_position(big_fb, plane, x, y);
 		igt_fb_set_size(big_fb, plane, small_fb->width, small_fb->height);
+
 		igt_plane_set_size(plane, data->width, data->height);
 		igt_display_commit2(&data->display, data->display.is_atomic ?
 				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
-
+		igt_wait_for_vblank(data->drm_fd, display->pipes[data->pipe].crtc_offset);
 		igt_pipe_crc_collect_crc(data->pipe_crc, &big_crc);
 
 		igt_plane_set_fb(plane, NULL);
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
