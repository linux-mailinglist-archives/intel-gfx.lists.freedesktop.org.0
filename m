Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F4058393116
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 16:40:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F15726E8BB;
	Thu, 27 May 2021 14:40:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E84A6E8BB;
 Thu, 27 May 2021 14:40:36 +0000 (UTC)
IronPort-SDR: OH55nt/st7Ky2SmGIHV5drW+ZWqw8J09u+cql/E4InP0CGU1K22u9U2IMPsPNy0uIywsVjo0vq
 QxWOzNqFgfVQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="183084185"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="183084185"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 07:40:24 -0700
IronPort-SDR: sDmDNgANjfK8FXAr89EaVfU8vSvXX8xRKKcVFucfL+phqqOFeJxdwy6ly7eGqGIXEg0IRrAqTr
 v2+e6TNw7lkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="547640860"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by orsmga004.jf.intel.com with ESMTP; 27 May 2021 07:40:22 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Thu, 27 May 2021 20:01:28 +0530
Message-Id: <20210527143128.25366-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <1621570131-23943-1-git-send-email-vidya.srinivas@intel.com>
References: <1621570131-23943-1-git-send-email-vidya.srinivas@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] [RFC] tests/kms_big_fb: Wait for vblank
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Without wait for vblank, CRC mismatch is seen
between big and small CRC on some intel Gen11 platforms.

Change-Id: I3bec931aa901130997e693ac1cacf389e2a8100f
Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 tests/kms_big_fb.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/tests/kms_big_fb.c b/tests/kms_big_fb.c
index b2027b6b9d1b..da682593429b 100644
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
@@ -269,6 +270,7 @@ static bool test_plane(data_t *data)
 		{ w / 3, h * 3 / 4, },
 		{ w, h, },
 	};
+	bool check_platform_intel = is_i915_device(data->drm_fd);
 
 	if (!igt_plane_has_format_mod(plane, data->format, data->modifier))
 		return false;
@@ -336,17 +338,19 @@ static bool test_plane(data_t *data)
 
 		igt_display_commit2(&data->display, data->display.is_atomic ?
 				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
-
-
+		if (check_platform_intel)
+			igt_wait_for_vblank(data->drm_fd, display->pipes[data->pipe].crtc_offset);
 		igt_pipe_crc_collect_crc(data->pipe_crc, &small_crc);
 
 		igt_plane_set_fb(plane, big_fb);
 		igt_fb_set_position(big_fb, plane, x, y);
 		igt_fb_set_size(big_fb, plane, small_fb->width, small_fb->height);
+
 		igt_plane_set_size(plane, data->width, data->height);
 		igt_display_commit2(&data->display, data->display.is_atomic ?
 				    COMMIT_ATOMIC : COMMIT_UNIVERSAL);
-
+		if (check_platform_intel)
+			igt_wait_for_vblank(data->drm_fd, display->pipes[data->pipe].crtc_offset);
 		igt_pipe_crc_collect_crc(data->pipe_crc, &big_crc);
 
 		igt_plane_set_fb(plane, NULL);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
