Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F30271986DA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 23:55:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B695A89A94;
	Mon, 30 Mar 2020 21:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A40DD89A94
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 21:55:41 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id r16so438572wmg.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 14:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=PulOaJA4RZ772djxOeLm/xbfzJMrQCR8ALXcfgymM5w=;
 b=Zudrvs/bavXyuGwAXVkbDcylfZmlRKJc4mUGkPcL1YASS5iKRfsHaa+3fdCVskdWmF
 62XmVIEJsHErsnzVAGMFFJ2Pl2DAAfSqyH+LxQqXUnWalmi257hU/9VSVnZtK6cevw1D
 0r2UKAksHVbCk+V5EnA1crDbpxfnDXwFR8h1mlPScJLDpztp+rqc2KPkDHuyCBfQ7voF
 NqC/Suaxp23zT5Z0T3mZez0jtwzHo9vSXpkyYFrbWcoDeMWzGqdKjBRzL2+wOvCdTfyv
 Py7MaiNrzZEoFq1jFVKZ7SVWqMEVzcY9Gt7IOzP+pqdOSTr+lXrlvtMqFeccDW9Jm6dn
 CZnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=PulOaJA4RZ772djxOeLm/xbfzJMrQCR8ALXcfgymM5w=;
 b=K/6oQf7mcNw59uBtUEL0nBqKz7TXURDF8oPteix4DcGwbSlS4BbrFMYoYj841zACBA
 PgiRUXeoPt74PTu5S/QEULySfZnYfy5BVkOWsHeEqHLTIbbI5nAuobAcDpk03vVouIM4
 d5OrtAYBzXMqEE/b674VM6rpCgtMXNGyvvFdipufCI+ZpKpbGX9te5fD8cBVoswe/yuZ
 eanjJ8Soeh9fI2NeFuw940rPfxvzZI89yJNwofMlJp8+c+WaBGO0EKWi5xn+3N6kR+Ex
 Y+rEZSjJfvW/duYVWiF+1GOxK83YAJC1A3cXXcugP9gOxzZt5Rpg7ehuQkuJJ6YKoATz
 UNFg==
X-Gm-Message-State: ANhLgQ3Vrv19cOD1BqBqSFNXDhoSBAh78N+cRUbbEx9xd3GPLLDNuBN9
 tSPRuuy9ML3A6G0+W46OGi2LrEnbwf0=
X-Google-Smtp-Source: ADFU+vsKIz2m32lYJ3L5ZO17ZJK2LNVdEhcwCRLI6MUlmLcbZb83zHA84rB9VRYVLpmqIf1J2+1mxA==
X-Received: by 2002:a1c:2484:: with SMTP id k126mr203299wmk.52.1585605339901; 
 Mon, 30 Mar 2020 14:55:39 -0700 (PDT)
Received: from smtp.gmail.com ([2001:818:e238:a000:51c6:2c09:a768:9c37])
 by smtp.gmail.com with ESMTPSA id o145sm1056480wme.42.2020.03.30.14.55.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 14:55:39 -0700 (PDT)
Date: Mon, 30 Mar 2020 18:55:32 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: intel-gfx@lists.freedesktop.org, kernel-usp@googlegroups.com
Message-ID: <2a7dba6ade737e179e812bb9fd1a5c3ab8c3a35f.1585604921.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [PATCH i-g-t] tests/kms_plane_alpha_blend: Correct typo
 in the name and comments of a subtest
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Typo found in word transparent.
Correct the word transparant, replacing the last letter -a- with -e-
(transpar-a-nt to transpar-e-nt).

Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
---
 tests/kms_plane_alpha_blend.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/tests/kms_plane_alpha_blend.c b/tests/kms_plane_alpha_blend.c
index 085099f8..ca7a6fa9 100644
--- a/tests/kms_plane_alpha_blend.c
+++ b/tests/kms_plane_alpha_blend.c
@@ -247,14 +247,14 @@ static void basic_alpha(data_t *data, enum pipe pipe, igt_plane_t *plane)
 	igt_crc_t ref_crc, crc;
 	int i;
 
-	/* Testcase 1: alpha = 0.0, plane should be transparant. */
+	/* Testcase 1: alpha = 0.0, plane should be transparent. */
 	igt_display_commit2(display, COMMIT_ATOMIC);
 	igt_pipe_crc_start(data->pipe_crc);
 	igt_pipe_crc_get_single(data->pipe_crc, &ref_crc);
 
 	igt_plane_set_fb(plane, &data->argb_fb_0);
 
-	/* transparant fb should be transparant, no matter what.. */
+	/* transparent fb should be transparent, no matter what.. */
 	for (i = 7; i < 256; i += 8) {
 		igt_plane_set_prop_value(plane, IGT_PLANE_ALPHA, i | (i << 8));
 		igt_display_commit2(display, COMMIT_ATOMIC);
@@ -290,12 +290,12 @@ static void argb_opaque(data_t *data, enum pipe pipe, igt_plane_t *plane)
 	igt_assert_crc_equal(&ref_crc, &crc);
 }
 
-static void argb_transparant(data_t *data, enum pipe pipe, igt_plane_t *plane)
+static void argb_transparent(data_t *data, enum pipe pipe, igt_plane_t *plane)
 {
 	igt_display_t *display = &data->display;
 	igt_crc_t ref_crc, crc;
 
-	/* alpha = 1.0, plane should be fully opaque, test with a transparant fb */
+	/* alpha = 1.0, plane should be fully opaque, test with a transparent fb */
 	igt_plane_set_fb(plane, NULL);
 	igt_display_commit2(display, COMMIT_ATOMIC);
 	igt_pipe_crc_collect_crc(data->pipe_crc, &ref_crc);
@@ -543,8 +543,8 @@ static void run_subtests(data_t *data, enum pipe pipe)
 	igt_subtest_f("pipe-%s-coverage-vs-premult-vs-constant", kmstest_pipe_name(pipe))
 		run_test_on_pipe_planes(data, pipe, true, false, coverage_premult_constant);
 
-	igt_subtest_f("pipe-%s-alpha-transparant-fb", kmstest_pipe_name(pipe))
-		run_test_on_pipe_planes(data, pipe, false, false, argb_transparant);
+	igt_subtest_f("pipe-%s-alpha-transparent-fb", kmstest_pipe_name(pipe))
+		run_test_on_pipe_planes(data, pipe, false, false, argb_transparent);
 
 	igt_subtest_f("pipe-%s-alpha-opaque-fb", kmstest_pipe_name(pipe))
 		run_test_on_pipe_planes(data, pipe, false, false, argb_opaque);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
