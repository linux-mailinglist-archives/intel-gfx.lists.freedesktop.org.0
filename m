Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2A2393121
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 16:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DFFE6EA84;
	Thu, 27 May 2021 14:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B2616E8DC;
 Thu, 27 May 2021 14:41:33 +0000 (UTC)
IronPort-SDR: y0+0CB/gHSu2A/aL78SqpPM2k27295b1V2IV7WAMlyKboaT7dCTEe8K9qDh1Ki9x0DT3cZliku
 iWy0HNEJ05NQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="202754885"
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="202754885"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 07:41:32 -0700
IronPort-SDR: DiTTJxtcARgUwgwHUioAo5zfKWuDgUQtA2s79O601Lup25R/MrGuUMNl+zEmHD+9esqTtx+6tH
 jOb+E1vQelrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,334,1613462400"; d="scan'208";a="409764113"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by fmsmga007.fm.intel.com with ESMTP; 27 May 2021 07:41:29 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Thu, 27 May 2021 20:02:37 +0530
Message-Id: <20210527143237.25612-1-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] [RFC] tests/kms_color: Fix pipe degamma
 subtests
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

We need to collect CRC with no degamma transformation
and after drawing gradient with degamma LUT.
This patch makes subtest pipe degamma code
similar to pipe gamma is written.

Change-Id: Iee70f01c0ae25ee873e5dc6a327a28b6ac1ea13a
Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 tests/kms_color.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/tests/kms_color.c b/tests/kms_color.c
index 3a42532a5c27..2d55f2611e72 100644
--- a/tests/kms_color.c
+++ b/tests/kms_color.c
@@ -31,8 +31,7 @@ static void test_pipe_degamma(data_t *data,
 {
 	igt_output_t *output;
 	igt_display_t *display = &data->display;
-	gamma_lut_t *degamma_linear, *degamma_full;
-	gamma_lut_t *gamma_linear;
+	gamma_lut_t *degamma_full;
 	color_t red_green_blue[] = {
 		{ 1.0, 0.0, 0.0 },
 		{ 0.0, 1.0, 0.0 },
@@ -42,11 +41,8 @@ static void test_pipe_degamma(data_t *data,
 	igt_require(igt_pipe_obj_has_prop(primary->pipe, IGT_CRTC_DEGAMMA_LUT));
 	igt_require(igt_pipe_obj_has_prop(primary->pipe, IGT_CRTC_GAMMA_LUT));
 
-	degamma_linear = generate_table(data->degamma_lut_size, 1.0);
 	degamma_full = generate_table_max(data->degamma_lut_size);
 
-	gamma_linear = generate_table(data->gamma_lut_size, 1.0);
-
 	for_each_valid_output_on_pipe(&data->display, primary->pipe->pipe, output) {
 		drmModeModeInfo *mode;
 		struct igt_fb fb_modeset, fb;
@@ -75,8 +71,7 @@ static void test_pipe_degamma(data_t *data,
 
 		igt_plane_set_fb(primary, &fb_modeset);
 		disable_ctm(primary->pipe);
-		disable_degamma(primary->pipe);
-		set_gamma(data, primary->pipe, gamma_linear);
+		set_degamma(data, primary->pipe, degamma_full);
 		igt_display_commit(&data->display);
 
 		/* Draw solid colors with no degamma transformation. */
@@ -92,7 +87,6 @@ static void test_pipe_degamma(data_t *data,
 		 */
 		paint_gradient_rectangles(data, mode, red_green_blue, &fb);
 		igt_plane_set_fb(primary, &fb);
-		set_degamma(data, primary->pipe, degamma_full);
 		igt_display_commit(&data->display);
 		igt_wait_for_vblank(data->drm_fd,
 				display->pipes[primary->pipe->pipe].crtc_offset);
@@ -109,9 +103,7 @@ static void test_pipe_degamma(data_t *data,
 		igt_remove_fb(data->drm_fd, &fb_modeset);
 	}
 
-	free_lut(degamma_linear);
 	free_lut(degamma_full);
-	free_lut(gamma_linear);
 }
 
 /*
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
