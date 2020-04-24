Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A091B6ACA
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 03:27:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A0DC6EA70;
	Fri, 24 Apr 2020 01:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com
 [IPv6:2607:f8b0:4864:20::841])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D06656EA6C;
 Fri, 24 Apr 2020 01:26:59 +0000 (UTC)
Received: by mail-qt1-x841.google.com with SMTP id k12so6716576qtm.4;
 Thu, 23 Apr 2020 18:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=idYIPddSRYaX7ZUu4Ro7ePoHBfw2dwCqkLfCNbKbI9g=;
 b=KLSBJ1RcuLAErWeCUVx/PtG74zK1FpuhZOeQc+bMY8UiT+4ci/rfCLAfpEbXjQdEEQ
 zYuRSPdVdKZG9dXdkvVJCsJiid/D2phpFUTtJW3xN7/S9vKGR7aC/joXE6bPoZLjpGOL
 0RjC42SynXG9mbQzmSNF2QjuZ2DMM6+47mJ6IDcZ7t8BF531IQC3mDp9gAOYF3vEkYRK
 5QwyLluLJkYt9JQf4FWw6Wj4Tk9alpmCR2q7SJeYyJzoCoVHavMizP71KaUw+cDQ1dwX
 l3ycDWOjyrJx3T1/L3d4BdasVIqpk1qmVr45k/roveGrIQ2o6CsDJP0bca8VVJE4QHfw
 cXiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=idYIPddSRYaX7ZUu4Ro7ePoHBfw2dwCqkLfCNbKbI9g=;
 b=HJ+AykY1+R7Ph58yS7FLlybo7Zuz6oSEJ8Ym96liPe1XTw7aRb5szs8WTKzBMOjf5l
 yxkEsIuyPcvjMpoAX+yXx8odX7z2yfdlD8GyRLzDxugKAiRaRibUjJGAouFMm58ZTURh
 A8nMi+bmt35HCYQoZtOOnQ0iyhGhnRB3iABwDh9raazpWes2G4cizmHKcNxdLs+Fn4aV
 MO2b0WvYAdofRQYT/YH7rjvUKBVPjC4xjqasYWzUjCFJvPf9uM3xOSZdPIfmHYserXdh
 phrVJJSRNULLrkGX3R6z+L1NP76AvUjIPiFibzbpU2pHVrXsy8VjxoKdB3TWLjHuos2x
 gsGw==
X-Gm-Message-State: AGi0PuZwI9Tpcxeg7ZcmBcJsrPGu3YqgCJVb8/9AU3pstgg/tR3pRF8p
 4wA3cUx9OKz4NlTLdEpJAZO4HBl6FDQ=
X-Google-Smtp-Source: APiQypIxx0sxHzVYja6jIc8Fw+ApXOd+O2RcQWcbA+0/owgVEoh3YCBPXxmlR3D5GCF1ks/MN3vRHA==
X-Received: by 2002:ac8:5304:: with SMTP id t4mr7089706qtn.250.1587691618468; 
 Thu, 23 Apr 2020 18:26:58 -0700 (PDT)
Received: from atma2.hitronhub.home ([2607:fea8:56a0:11a1::2])
 by smtp.gmail.com with ESMTPSA id c41sm2997184qta.96.2020.04.23.18.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 18:26:58 -0700 (PDT)
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nd <nd@arm.com>
Date: Thu, 23 Apr 2020 21:26:05 -0400
Message-Id: <20200424012605.2279679-5-rodrigosiqueiramelo@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424012605.2279679-1-rodrigosiqueiramelo@gmail.com>
References: <20200424012605.2279679-1-rodrigosiqueiramelo@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v8 4/4] kms_writeback: Add
 writeback-check-output
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
Cc: Brian Starkey <rodrigosiqueiramelo@gmail.com>,
 Simon Ser <contact@emersion.fr>, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Brian Starkey <rodrigosiqueiramelo@gmail.com>

Add a test which makes commits using the writeback connector, and
checks the output buffer hash to make sure it is/isn't written as
appropriate.

Changes since V7 (Maxime Ripard):
* Make fb_fill cross-platform

Changes since v6 (Simon Ser):
* Add a descriptive error message if sync_fence_wait fail
* Drop color_idx variable
* Compute expected CRC based on input framebuffer in writeback_sequence
* Remove unnecessary parentheses
* Replace int variable for unsigned int

Signed-off-by: Brian Starkey <brian.starkey@arm.com>
[rebased and updated]
Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>
---
 tests/kms_writeback.c | 127 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 127 insertions(+)

diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
index e08eb611..bba1fb01 100644
--- a/tests/kms_writeback.c
+++ b/tests/kms_writeback.c
@@ -30,6 +30,7 @@
 #include "igt.h"
 #include "igt_core.h"
 #include "igt_fb.h"
+#include "sw_sync.h"
 
 static drmModePropertyBlobRes *get_writeback_formats_blob(igt_output_t *output)
 {
@@ -217,6 +218,118 @@ static void writeback_fb_id(igt_output_t *output, igt_fb_t *valid_fb, igt_fb_t *
 	igt_assert(ret == 0);
 }
 
+static void fill_fb(igt_fb_t *fb, uint32_t pixel)
+{
+	void *ptr;
+
+	igt_assert(fb->drm_format == DRM_FORMAT_XRGB8888);
+
+	ptr = igt_fb_map_buffer(fb->fd, fb);
+	igt_assert(ptr);
+
+	memset(ptr, pixel, fb->strides[0] * fb->height);
+
+	igt_fb_unmap_buffer(fb, ptr);
+}
+
+static void get_and_wait_out_fence(igt_output_t *output)
+{
+	int ret;
+
+	igt_assert(output->writeback_out_fence_fd >= 0);
+
+	ret = sync_fence_wait(output->writeback_out_fence_fd, 1000);
+	igt_assert_f(ret == 0, "sync_fence_wait failed: %s\n", strerror(-ret));
+	close(output->writeback_out_fence_fd);
+	output->writeback_out_fence_fd = -1;
+}
+
+static void writeback_sequence(igt_output_t *output, igt_plane_t *plane,
+				igt_fb_t *in_fb, igt_fb_t *out_fbs[], int n_commits)
+{
+	int i = 0;
+	uint32_t in_fb_colors[2] = { 0xffff0000, 0xff00ff00 };
+	uint32_t clear_color = 0xffffffff;
+
+	igt_crc_t cleared_crc, out_expected;
+
+	for (i = 0; i < n_commits; i++) {
+		/* Change the input color each time */
+		fill_fb(in_fb, in_fb_colors[i % 2]);
+
+		if (out_fbs[i]) {
+			igt_crc_t out_before;
+
+			/* Get the expected CRC */
+			igt_fb_get_fnv1a_crc(in_fb, &out_expected);
+			fill_fb(out_fbs[i], clear_color);
+
+			if (i == 0)
+				igt_fb_get_fnv1a_crc(out_fbs[i], &cleared_crc);
+			igt_fb_get_fnv1a_crc(out_fbs[i], &out_before);
+			igt_assert_crc_equal(&cleared_crc, &out_before);
+		}
+
+		/* Commit */
+		igt_plane_set_fb(plane, in_fb);
+		igt_output_set_writeback_fb(output, out_fbs[i]);
+
+		igt_display_commit_atomic(output->display,
+					  DRM_MODE_ATOMIC_ALLOW_MODESET,
+					  NULL);
+		if (out_fbs[i])
+			get_and_wait_out_fence(output);
+
+		/* Make sure the old output buffer is untouched */
+		if (i > 0 && out_fbs[i - 1] && out_fbs[i] != out_fbs[i - 1]) {
+			igt_crc_t out_prev;
+			igt_fb_get_fnv1a_crc(out_fbs[i - 1], &out_prev);
+			igt_assert_crc_equal(&cleared_crc, &out_prev);
+		}
+
+		/* Make sure this output buffer is written */
+		if (out_fbs[i]) {
+			igt_crc_t out_after;
+			igt_fb_get_fnv1a_crc(out_fbs[i], &out_after);
+			igt_assert_crc_equal(&out_expected, &out_after);
+
+			/* And clear it, for the next time */
+			fill_fb(out_fbs[i], clear_color);
+		}
+	}
+}
+
+static void writeback_check_output(igt_output_t *output, igt_plane_t *plane,
+				   igt_fb_t *input_fb, igt_fb_t *output_fb)
+{
+	igt_fb_t *out_fbs[2] = { 0 };
+	igt_fb_t second_out_fb;
+	unsigned int fb_id;
+
+	/* One commit, with a writeback. */
+	writeback_sequence(output, plane, input_fb, &output_fb, 1);
+
+	/* Two commits, the second with no writeback */
+	out_fbs[0] = output_fb;
+	writeback_sequence(output, plane, input_fb, out_fbs, 2);
+
+	/* Two commits, both with writeback */
+	out_fbs[1] = output_fb;
+	writeback_sequence(output, plane, input_fb, out_fbs, 2);
+
+	fb_id = igt_create_fb(output_fb->fd, output_fb->width, output_fb->height,
+			      DRM_FORMAT_XRGB8888,
+			      igt_fb_mod_to_tiling(0),
+			      &second_out_fb);
+	igt_require(fb_id > 0);
+
+	/* Two commits, with different writeback buffers */
+	out_fbs[1] = &second_out_fb;
+	writeback_sequence(output, plane, input_fb, out_fbs, 2);
+
+	igt_remove_fb(output_fb->fd, &second_out_fb);
+}
+
 igt_main
 {
 	igt_display_t display;
@@ -309,6 +422,20 @@ igt_main
 		igt_remove_fb(display.drm_fd, &output_fb);
 	}
 
+	igt_describe("Check writeback output with CRC validation");
+	igt_subtest("writeback-check-output") {
+		igt_fb_t output_fb;
+		fb_id = igt_create_fb(display.drm_fd, mode.hdisplay, mode.vdisplay,
+				      DRM_FORMAT_XRGB8888,
+				      igt_fb_mod_to_tiling(0),
+				      &output_fb);
+		igt_require(fb_id > 0);
+
+		writeback_check_output(output, plane, &input_fb, &output_fb);
+
+		igt_remove_fb(display.drm_fd, &output_fb);
+	}
+
 	igt_fixture {
 		igt_remove_fb(display.drm_fd, &input_fb);
 		igt_display_fini(&display);
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
