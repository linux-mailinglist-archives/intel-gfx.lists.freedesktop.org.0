Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D84C139B9B5
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 15:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B1146E3D8;
	Fri,  4 Jun 2021 13:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E3D96E3D8;
 Fri,  4 Jun 2021 13:20:11 +0000 (UTC)
IronPort-SDR: dgjHuMzTzYHmPqqE5RS1wb7Sof7gv03BGKxaxR9szx8ia5iieXPnyLEfUjY0U3pP/z/20bPOdR
 98lRXzjhy26w==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="183969607"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="183969607"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 06:20:10 -0700
IronPort-SDR: NkKqZga4abMwGN8wYJ+9wtdVvY9ooJG2ZCByZCAD9rOYV6nzDd4yIp4nYt1jKVFBgFOw9YjkUY
 nk7RQhE67K3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="468317078"
Received: from vsrini4-xps-8920.iind.intel.com (HELO localhost.localdomain)
 ([10.223.163.28])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jun 2021 06:20:08 -0700
From: Vidya Srinivas <vidya.srinivas@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Fri,  4 Jun 2021 18:41:02 +0530
Message-Id: <1622812262-16592-1-git-send-email-vidya.srinivas@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1622176543-12759-1-git-send-email-vidya.srinivas@intel.com>
References: <1622176543-12759-1-git-send-email-vidya.srinivas@intel.com>
Subject: [Intel-gfx] [PATCH] tests/kms_color: Disable gamma in degamma tests
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
degamma + gradient colors).

v2 - Addressed review comments from Bhanuprakash Modem

Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
Change-Id: Ibdb91b603e2e4024d170727d24c6a5425441e2e1
---
 tests/kms_color.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/tests/kms_color.c b/tests/kms_color.c
index 3a42532a5c27..41720dcdd90f 100644
--- a/tests/kms_color.c
+++ b/tests/kms_color.c
@@ -32,7 +32,6 @@ static void test_pipe_degamma(data_t *data,
 	igt_output_t *output;
 	igt_display_t *display = &data->display;
 	gamma_lut_t *degamma_linear, *degamma_full;
-	gamma_lut_t *gamma_linear;
 	color_t red_green_blue[] = {
 		{ 1.0, 0.0, 0.0 },
 		{ 0.0, 1.0, 0.0 },
@@ -45,8 +44,6 @@ static void test_pipe_degamma(data_t *data,
 	degamma_linear = generate_table(data->degamma_lut_size, 1.0);
 	degamma_full = generate_table_max(data->degamma_lut_size);
 
-	gamma_linear = generate_table(data->gamma_lut_size, 1.0);
-
 	for_each_valid_output_on_pipe(&data->display, primary->pipe->pipe, output) {
 		drmModeModeInfo *mode;
 		struct igt_fb fb_modeset, fb;
@@ -75,8 +72,8 @@ static void test_pipe_degamma(data_t *data,
 
 		igt_plane_set_fb(primary, &fb_modeset);
 		disable_ctm(primary->pipe);
-		disable_degamma(primary->pipe);
-		set_gamma(data, primary->pipe, gamma_linear);
+		disable_gamma(primary->pipe);
+		set_degamma(data, primary->pipe, degamma_linear);
 		igt_display_commit(&data->display);
 
 		/* Draw solid colors with no degamma transformation. */
@@ -103,15 +100,17 @@ static void test_pipe_degamma(data_t *data,
 		 */
 		igt_assert_crc_equal(&crc_fullgamma, &crc_fullcolors);
 
+		disable_degamma(primary->pipe);
 		igt_plane_set_fb(primary, NULL);
 		igt_output_set_pipe(output, PIPE_NONE);
+		igt_display_commit2(&data->display, data->display.is_atomic ?
+							COMMIT_ATOMIC : COMMIT_LEGACY);
 		igt_remove_fb(data->drm_fd, &fb);
 		igt_remove_fb(data->drm_fd, &fb_modeset);
 	}
 
 	free_lut(degamma_linear);
 	free_lut(degamma_full);
-	free_lut(gamma_linear);
 }
 
 /*
@@ -189,8 +188,11 @@ static void test_pipe_gamma(data_t *data,
 		 */
 		igt_assert_crc_equal(&crc_fullgamma, &crc_fullcolors);
 
+		disable_gamma(primary->pipe);
 		igt_plane_set_fb(primary, NULL);
 		igt_output_set_pipe(output, PIPE_NONE);
+		igt_display_commit2(&data->display, data->display.is_atomic ?
+							COMMIT_ATOMIC : COMMIT_LEGACY);
 		igt_remove_fb(data->drm_fd, &fb);
 		igt_remove_fb(data->drm_fd, &fb_modeset);
 	}
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
