Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3EE20707E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 11:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F8766EAC3;
	Wed, 24 Jun 2020 09:55:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DB586EAC3
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 09:55:19 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id g18so1651339wrm.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 02:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=U4DZoayHZYnhvsYk7fezp6YCuHYsHnASBIZEteByd50=;
 b=ZRHs+jd5OazZcgRaz0uu32pXphRxFwAnmbaIcQj2ZreJzD5siQ+JaorCXzfR+5n6T6
 y+pIH046R5yY3Z0ejHnjd3AgXNwDsfHihoAATVUjTzF3xRm97P2Qaj9ATnFqbSqa6Wrd
 X/QGxJcpCBmSLfJRZjbro15p7t7NnJTNTWJ6ik9lPP5isqyx8Muh6UbhSfP2OiMZCEiX
 JeMyv7HZ2SRQmzVmNyvpTfw52fX46BNQ8kJCyFi0xS0kBlXIkn2hBWWyHw6UBvOs6WnX
 1YWug4T8rJQGaLzdzYcPnoJRbQgm6a18t1QVruDysoEV7wKSaIDJv1tJdN2MiuqEp7Lk
 FcHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=U4DZoayHZYnhvsYk7fezp6YCuHYsHnASBIZEteByd50=;
 b=APFWoP9x568N8RvkEm1taFsqCJUBfFoEiqedDCuXJB2k2djYES0O4oEhy29tZkthoo
 Ir++d9JlwrwfXFjaIg2GPOY1OP+69KWJcbBBtJqWgzuCq/8dM4+6nLMZ6TXvgxlz2jn3
 0LJh+qX+kAyjMA7Eoac4ILsnoQkuXJNtaPhTd/s8Rea6whWKqMbGX+zFy1aOS4Fd0IEU
 ud4pXqy+Bfgqiw9h+DZt9vQhppD1pP95enW3fXFk+zk6AKA/f9pSjD1u/FcBJaiRSxZH
 +Syy6vUqGvDyQUeOHftbIWMQKX5H8eydrkda4TlydyCNSBks8WVK5hJ36l2q9m+P61M3
 a6UQ==
X-Gm-Message-State: AOAM5310cOmFVBFcQ3nxNdk47xINshkHMqdaNLns9Rtkcplhr5jVBuMi
 nsCqlOUoV3Ivc/gTivvYZCym4vKS
X-Google-Smtp-Source: ABdhPJxdf34KXx+/L4zqI/dWJPtfAWL/V5rYpeoEKlGeGhoXgv1kSj4lRmp8QlLXkOVeCIg46eWrbA==
X-Received: by 2002:adf:ecc8:: with SMTP id s8mr30628614wro.317.1592992517488; 
 Wed, 24 Jun 2020 02:55:17 -0700 (PDT)
Received: from smtp.gmail.com ([2001:818:e238:a000:a4ba:2182:c4c1:3b20])
 by smtp.gmail.com with ESMTPSA id x13sm27488755wre.83.2020.06.24.02.55.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 02:55:17 -0700 (PDT)
Date: Wed, 24 Jun 2020 06:55:10 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <e1b9c469820c9625b0723680b76784f312564b4e.1592991729.git.melissa.srw@gmail.com>
References: <cover.1592991729.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1592991729.git.melissa.srw@gmail.com>
Subject: [Intel-gfx] [PATCH i-g-t 2/2] test/kms_cursor_crc: update subtests
 descriptions and some comments
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
Cc: rodrigosiqueiramelo@gmail.com, Rodrigo.Siqueira@amd.com,
 kernel-usp@googlegroups.com, aurabindo.pillai@amd.com,
 nicholas.kazlauskas@amd.com, twoerner@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add descriptions for some subtests and detail a little more the comments in
test_cursor_alpha.

Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
---
 tests/kms_cursor_crc.c | 38 ++++++++++++++++++++++++++++----------
 1 file changed, 28 insertions(+), 10 deletions(-)

diff --git a/tests/kms_cursor_crc.c b/tests/kms_cursor_crc.c
index f105e295..4dba1471 100644
--- a/tests/kms_cursor_crc.c
+++ b/tests/kms_cursor_crc.c
@@ -31,12 +31,13 @@
 
 
 IGT_TEST_DESCRIPTION(
-   "Use the display CRC support to validate cursor plane functionality. "
-   "The test will position the cursor plane either fully onscreen, "
-   "partially onscreen, or fully offscreen, using either a fully opaque "
-   "or fully transparent surface. In each case it then reads the PF CRC "
-   "and compares it with the CRC value obtained when the cursor plane "
-   "was disabled.");
+   "Use the display CRC support to validate cursor plane functionality. "\
+   "The test will position the cursor plane either fully onscreen, "\
+   "partially onscreen, or fully offscreen, using either a fully opaque "\
+   "or fully transparent surface. In each case, it enables the cursor plane "\
+   "and then reads the PF CRC (hardware test) and compares it with the CRC "\
+   "value obtained when the cursor plane was disabled and its drawing is "
+   "directly inserted on the PF by software.");
 
 #ifndef DRM_CAP_CURSOR_WIDTH
 #define DRM_CAP_CURSOR_WIDTH 0x8
@@ -485,7 +486,7 @@ static void test_cursor_alpha(data_t *data, double a)
 	int curw = data->curw;
 	int curh = data->curh;
 
-	/*alpha cursor fb*/
+	/*Alpha cursor fb with white color*/
 	fb_id = igt_create_fb(data->drm_fd, curw, curh,
 				    DRM_FORMAT_ARGB8888,
 				    LOCAL_DRM_FORMAT_MOD_NONE,
@@ -495,22 +496,24 @@ static void test_cursor_alpha(data_t *data, double a)
 	igt_paint_color_alpha(cr, 0, 0, curw, curh, 1.0, 1.0, 1.0, a);
 	igt_put_cairo_ctx(data->drm_fd, &data->fb, cr);
 
-	/*Hardware Test*/
+	/*Hardware Test - enable cursor and get PF CRC*/
 	cursor_enable(data);
 	igt_display_commit(display);
 	igt_wait_for_vblank(data->drm_fd, data->pipe);
 	igt_pipe_crc_get_current(data->drm_fd, pipe_crc, &crc);
+
 	cursor_disable(data);
 	igt_remove_fb(data->drm_fd, &data->fb);
 
-	/*Software Test*/
+	/*Software Test - render cursor in software, drawn it directly on PF*/
 	cr = igt_get_cairo_ctx(data->drm_fd, &data->primary_fb[FRONTBUFFER]);
 	igt_paint_color_alpha(cr, 0, 0, curw, curh, 1.0, 1.0, 1.0, a);
 	igt_put_cairo_ctx(data->drm_fd, &data->primary_fb[FRONTBUFFER], cr);
-
 	igt_display_commit(display);
 	igt_wait_for_vblank(data->drm_fd, data->pipe);
 	igt_pipe_crc_get_current(data->drm_fd, pipe_crc, &ref_crc);
+
+	/*Compare CRC from Hardware/Software tests*/
 	igt_assert_crc_equal(&crc, &ref_crc);
 
 	/*Clear Screen*/
@@ -688,13 +691,19 @@ static void run_tests_on_pipe(data_t *data, enum pipe pipe)
 		igt_require(data->output);
 	}
 
+        igt_describe("Create a maximum size cursor, then change the size in "\
+        "flight to smaller ones to see that the size is applied correctly.");
 	igt_subtest_f("pipe-%s-cursor-size-change", kmstest_pipe_name(pipe))
 		run_test(data, test_cursor_size,
 			 data->cursor_max_w, data->cursor_max_h);
 
+	igt_describe("Validates the composition of a fully opaque cursor "\
+	"plane, i.e., alpha channel equal to 1.0.");
 	igt_subtest_f("pipe-%s-cursor-alpha-opaque", kmstest_pipe_name(pipe))
 		run_test(data, test_cursor_opaque, data->cursor_max_w, data->cursor_max_h);
 
+	igt_describe("Validates the composition of a fully transparent cursor "\
+	"plane, i.e., alpha channel equal to 0.0.");
 	igt_subtest_f("pipe-%s-cursor-alpha-transparent", kmstest_pipe_name(pipe))
 		run_test(data, test_cursor_transparent, data->cursor_max_w, data->cursor_max_h);
 
@@ -728,15 +737,24 @@ static void run_tests_on_pipe(data_t *data, enum pipe pipe)
 		}
 
 		/* Using created cursor FBs to test cursor support */
+		igt_describe("Check if a given-size cursor is well-positioned inside the screen.");
 		igt_subtest_f("pipe-%s-cursor-%dx%d-onscreen", kmstest_pipe_name(pipe), w, h)
 			run_test(data, test_crc_onscreen, w, h);
+
+		igt_describe("Check if a given-size cursor is well-positioned outside the screen.");
 		igt_subtest_f("pipe-%s-cursor-%dx%d-offscreen", kmstest_pipe_name(pipe), w, h)
 			run_test(data, test_crc_offscreen, w, h);
+
+		igt_describe("Check the smooth and pixel-by-pixel given-size cursor movements on"\
+		"horizontal, vertical and diagonal.");
 		igt_subtest_f("pipe-%s-cursor-%dx%d-sliding", kmstest_pipe_name(pipe), w, h)
 			run_test(data, test_crc_sliding, w, h);
+
+		igt_describe("Check random placement of a cursor with given size.");
 		igt_subtest_f("pipe-%s-cursor-%dx%d-random", kmstest_pipe_name(pipe), w, h)
 			run_test(data, test_crc_random, w, h);
 
+		igt_describe("Check the rapid update of given-size cursor movements.");
 		igt_subtest_f("pipe-%s-cursor-%dx%d-rapid-movement", kmstest_pipe_name(pipe), w, h) {
 			run_test(data, test_rapid_movement, w, h);
 		}
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
