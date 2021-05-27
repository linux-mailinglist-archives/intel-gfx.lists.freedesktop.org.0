Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BF439327D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 17:32:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDA846F419;
	Thu, 27 May 2021 15:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0358B6F419;
 Thu, 27 May 2021 15:32:26 +0000 (UTC)
IronPort-SDR: ZZw2od4cYVYeLb6nKmJR0s619TS5L+BYvS/gYyE+mZYlC8NfSMOSWorSDgzrW3XOeJiVoez2a5
 kFpjtmHupw+w==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="288351028"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="288351028"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 08:32:25 -0700
IronPort-SDR: f+yh9DCoXXhW/LE+goDCG1Gtk3Vvobgz3Bi4zY8ancLdUO+sQB+O6x8Tnxk+gaNSWUdiTY5bdM
 uCRAA1bG4SyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="480632452"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by fmsmga002.fm.intel.com with ESMTP; 27 May 2021 08:32:24 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Thu, 27 May 2021 20:53:31 +0530
Message-Id: <1622129011-6728-1-git-send-email-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <20210527150924.18726-1-vidya.srinivas@intel.com>
References: <20210527150924.18726-1-vidya.srinivas@intel.com>
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

Change-Id: I3bec931aa901130997e693ac1cacf389e2a8100f
Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 tests/kms_big_fb.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c
index b2027b6b9d1b..7d78ff829d41 100644
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
