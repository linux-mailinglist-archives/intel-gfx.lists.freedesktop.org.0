Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4866039EF56
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 09:16:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A432E6EAC7;
	Tue,  8 Jun 2021 07:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8D1B6EACB;
 Tue,  8 Jun 2021 07:16:04 +0000 (UTC)
IronPort-SDR: uP8vbFFHYcJAO/QsAG1gqNeCCo7ozqgmsfNMn0wHx+Vy9Xu0gPQboOcTaRJx7XiZzAKIFtOKwe
 UH7TtspZo1Jg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="268641146"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="268641146"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:16:04 -0700
IronPort-SDR: wWY+HWKdpdbOrAxLQbLYiCaXEiyFTCnZBfOPnEilsV9VA/lStZoOTKor4QAYxWrNd/cBGjmPER
 mE/Phn+5NQQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="552175206"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by fmsmga001.fm.intel.com with ESMTP; 08 Jun 2021 00:16:01 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Tue,  8 Jun 2021 12:36:46 +0530
Message-Id: <1623136006-14276-2-git-send-email-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1623136006-14276-1-git-send-email-vidya.srinivas@intel.com>
References: <1623136006-14276-1-git-send-email-vidya.srinivas@intel.com>
Subject: [Intel-gfx] [PATCH i-g-t] tests/kms_color_chamelium: Disable gamma
 in degamma tests
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

This patch disables gamma in degamma subtest which is missing.
It compares CRC between (linear degamma + solid colors) and (max
degamma + gradient colors). Patch also cleans up degamma before
exiting degamma test and cleans up gamma before exiting gamma
test.

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
---
 tests/kms_color_chamelium.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/tests/kms_color_chamelium.c b/tests/kms_color_chamelium.c
index 30b38b82e306..11e5286912d7 100644
--- a/tests/kms_color_chamelium.c
+++ b/tests/kms_color_chamelium.c
@@ -36,7 +36,6 @@ static void test_pipe_degamma(data_t *data,
 {
 	igt_output_t *output;
 	gamma_lut_t *degamma_linear, *degamma_full;
-	gamma_lut_t *gamma_linear;
 	color_t red_green_blue[] = {
 		{ 1.0, 0.0, 0.0 },
 		{ 0.0, 1.0, 0.0 },
@@ -57,8 +56,6 @@ static void test_pipe_degamma(data_t *data,
 	degamma_linear = generate_table(data->degamma_lut_size, 1.0);
 	degamma_full = generate_table_max(data->degamma_lut_size);
 
-	gamma_linear = generate_table(data->gamma_lut_size, 1.0);
-
 	for_each_valid_output_on_pipe(&data->display,
 				      primary->pipe->pipe,
 				      output) {
@@ -109,11 +106,11 @@ static void test_pipe_degamma(data_t *data,
 
 		igt_plane_set_fb(primary, &fb_modeset);
 		disable_ctm(primary->pipe);
-		disable_degamma(primary->pipe);
-		set_gamma(data, primary->pipe, gamma_linear);
+		disable_gamma(primary->pipe);
+		set_degamma(data, primary->pipe, degamma_linear);
 		igt_display_commit(&data->display);
 
-		/* Draw solid colors with no degamma transformation. */
+		/* Draw solid colors with linear degamma transformation. */
 		paint_rectangles(data, mode, red_green_blue, &fbref);
 
 		/* Draw a gradient with degamma LUT to remap all
@@ -135,13 +132,14 @@ static void test_pipe_degamma(data_t *data,
 					      frame_fullcolors, &fbref,
 					      CHAMELIUM_CHECK_ANALOG);
 
+		disable_degamma(primary->pipe);
 		igt_plane_set_fb(primary, NULL);
 		igt_output_set_pipe(output, PIPE_NONE);
+		igt_display_commit(&data->display);
 	}
 
 	free_lut(degamma_linear);
 	free_lut(degamma_full);
-	free_lut(gamma_linear);
 }
 
 /*
@@ -247,8 +245,10 @@ static void test_pipe_gamma(data_t *data,
 					      frame_fullcolors, &fbref,
 					      CHAMELIUM_CHECK_ANALOG);
 
+		disable_gamma(primary->pipe);
 		igt_plane_set_fb(primary, NULL);
 		igt_output_set_pipe(output, PIPE_NONE);
+		igt_display_commit(&data->display);
 	}
 
 	free_lut(gamma_full);
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
