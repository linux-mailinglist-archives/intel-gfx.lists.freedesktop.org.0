Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A5939EF72
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 09:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC906EACD;
	Tue,  8 Jun 2021 07:21:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90BDC6EAD0;
 Tue,  8 Jun 2021 07:21:24 +0000 (UTC)
IronPort-SDR: NYJ8B85xq38Ba8RS7yG+PoVaj9wNfdY3MhB4ELynyGN15Kat+1VMl31c0kZB7xpXTIUt4vYJb9
 zhU4uhtDKgTA==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="191897763"
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="191897763"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 00:21:24 -0700
IronPort-SDR: 3UbDQnEfGKCiTrct/qP2POfj7g9v8Ue/JFvg3QmzcL127A6os64PWi1pLdlBhKWC4BhhaVVqvj
 j0U9gU47KJjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,257,1616482800"; d="scan'208";a="476500812"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Jun 2021 00:21:20 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Tue,  8 Jun 2021 12:42:01 +0530
Message-Id: <1623136321-16514-3-git-send-email-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1623136321-16514-1-git-send-email-vidya.srinivas@intel.com>
References: <1622812262-16592-1-git-send-email-vidya.srinivas@intel.com>
 <1623136321-16514-1-git-send-email-vidya.srinivas@intel.com>
Subject: [Intel-gfx] [PATCH i-g-t 2/2] tests/kms_color_chamelium: Disable
 gamma in degamma tests
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
