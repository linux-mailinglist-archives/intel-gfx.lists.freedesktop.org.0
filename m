Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E202E55C089
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 13:04:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3C0D10EDE2;
	Tue, 28 Jun 2022 11:04:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E3C710E0E3;
 Tue, 28 Jun 2022 11:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656414273; x=1687950273;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u26f8E6TpNfK/rqXpKl2SvKd22EU8PN7Ord6IQEYsZc=;
 b=CKZaPdQPh91CbAcAjpznA0CA6ZPn2YtWmiH8zo+aCZVmNIjrZ8tggBgI
 ZpOggcxRgbMGh71+E8euyHh6deylG69ssWLaEhm6z1U8igYKD5E1KWeCd
 W1TPb0ArsbgqtFw+z23IAYnvYbR8NVMDpTf+nMYo5/LXLsoU5+HUCcr1b
 fKBgJOy8ypfz1rtFA0YtbFBVgOBmX3KQjlUHsld2eh3K8FLxYDM2K3QtA
 HAumr0lyXlLdDsqdFe4WTzsXLni91lL98fWuP5nUSofw+YWO5z5aaeHOW
 oGmZJa2BfjPvEiTQwanfnNE9L6m3VeMQIZZY0wTidbpTK0b1NxqrR4fdS A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="280470369"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="280470369"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 04:04:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="693065215"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga002.fm.intel.com with ESMTP; 28 Jun 2022 04:04:30 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue, 28 Jun 2022 16:34:09 +0530
Message-Id: <20220628110409.768308-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/kms_big_fb: trigger async flip
 with a dummy flip
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In oder to trigger the async flip, a dummy flip is required after sync
flip so as to update the watermarks for async in KMD which happens as
part of this dummy flip. Thereafter async memory update will act as a
trigger register.
Capturing the CRC is done after the async flip as async flip at some
times can consume fairly a vblank period time.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 tests/i915/kms_big_fb.c | 29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/tests/i915/kms_big_fb.c b/tests/i915/kms_big_fb.c
index d50fde45..6caf3c31 100644
--- a/tests/i915/kms_big_fb.c
+++ b/tests/i915/kms_big_fb.c
@@ -465,7 +465,7 @@ static bool test_pipe(data_t *data)
 static bool
 max_hw_stride_async_flip_test(data_t *data)
 {
-	uint32_t ret, startframe;
+	uint32_t ret, frame;
 	const uint32_t w = data->output->config.default_mode.hdisplay,
 		       h = data->output->config.default_mode.vdisplay;
 	igt_plane_t *primary;
@@ -519,7 +519,19 @@ max_hw_stride_async_flip_test(data_t *data)
 					  DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);
 
 		igt_wait_for_vblank(data->drm_fd, data->display.pipes[primary->pipe->pipe].crtc_offset);
-		startframe = kmstest_get_vblank(data->drm_fd, data->pipe, 0) + 1;
+		/*
+		 * In older platforms (<= Gen10), async address update bit is double buffered.
+		 * So flip timestamp can be verified only from the second flip.
+		 * The first async flip just enables the async address update.
+		 * In platforms greater than DISPLAY13 the first async flip will be discarded
+		 * in order to change the watermark levels as per the optimization. Hence the
+		 * subsequent async flips will actually do the asynchronous flips.
+		 */
+		ret = drmModePageFlip(data->drm_fd, data->output->config.crtc->crtc_id,
+						      data->big_fb_flip[i].fb_id,
+						      DRM_MODE_PAGE_FLIP_ASYNC, NULL);
+		igt_wait_for_vblank(data->drm_fd, data->display.pipes[primary->pipe->pipe].crtc_offset);
+		frame = kmstest_get_vblank(data->drm_fd, data->pipe, 0) + 1;
 
 		for (int j = 0; j < 2; j++) {
 			do {
@@ -528,23 +540,20 @@ max_hw_stride_async_flip_test(data_t *data)
 						      DRM_MODE_PAGE_FLIP_ASYNC, NULL);
 			} while (ret == -EBUSY);
 			igt_assert(ret == 0);
+			igt_pipe_crc_get_for_frame(data->drm_fd, data->pipe_crc,
+					   frame, &compare_crc);
 
+			frame = kmstest_get_vblank(data->drm_fd, data->pipe, 0) + 1;
 			do {
 				ret = drmModePageFlip(data->drm_fd, data->output->config.crtc->crtc_id,
 						      data->big_fb.fb_id,
 						      DRM_MODE_PAGE_FLIP_ASYNC, NULL);
 			} while (ret == -EBUSY);
 			igt_assert(ret == 0);
+			igt_pipe_crc_get_for_frame(data->drm_fd, data->pipe_crc,
+					   frame, &async_crc);
 		}
 
-		igt_pipe_crc_get_for_frame(data->drm_fd, data->pipe_crc,
-					   startframe, &compare_crc);
-		igt_pipe_crc_get_for_frame(data->drm_fd, data->pipe_crc,
-					   startframe + 1, &async_crc);
-
-		igt_assert_f(kmstest_get_vblank(data->drm_fd, data->pipe, 0) -
-			     startframe == 1, "lost frames\n");
-
 		igt_assert_f(igt_check_crc_equal(&compare_crc, &async_crc)^(i^1),
 			     "CRC failure with async flip, crc %s match for checked round\n",
 			     i?"should":"shouldn't");
-- 
2.25.1

