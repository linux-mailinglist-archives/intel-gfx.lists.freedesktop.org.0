Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE4A256F94
	for <lists+intel-gfx@lfdr.de>; Sun, 30 Aug 2020 19:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 722D86E0EC;
	Sun, 30 Aug 2020 17:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com
 [IPv6:2607:f8b0:4864:20::742])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4F946E0EC;
 Sun, 30 Aug 2020 17:45:26 +0000 (UTC)
Received: by mail-qk1-x742.google.com with SMTP id d20so1462824qka.5;
 Sun, 30 Aug 2020 10:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TWKfk6TyMGUJprXCU281A1XBtSXXty7ZC0YTVE+qYNk=;
 b=M/FIK39I42Shv3VKMYUkc/S4pKMPHjf3hOyQuyWA+fwzN/imME2LNewECwaJay2KfQ
 DGcc5Q768akH8+6bwGo+MMym4U7Wv7T5nUs7GGH5rJbr5pxWuKJ7+YhbRpb/lGYHTbFO
 5WwLGz+rye8SUV8T1ppBn2+mqTG4hV0uGqZEuRqu7UtzBwo7mTYNo6mBEKAJ8WB16fU3
 MgzHrAORN+a7/RMEbJAZbt2Og2l3L8GHpfO28k1URu/zU/oxU8Oke1uNWJP89gPypW3l
 L3WKf8ePmWaf/licfGZwajWzlyGxD4wEu0wXz007Mb8JpLMHOojprOZx5Lx97SHhbeDD
 CE3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TWKfk6TyMGUJprXCU281A1XBtSXXty7ZC0YTVE+qYNk=;
 b=J8HCYCJiT6p9aaEP9Y+7xwjSVB/wl85njPdzVbDST+DAkFC7bNj/sHC6pMJa/1jD1+
 YkHXZvPYvV4y4QuqtjOiuE5EJAbdRCRbiPcApZ6HpBgteYwugF7dkEhKLbhubN80fnIC
 Ac+Cg2Ff2cqGuB7cE75mk4wPcyEp4Bg5CO4Znacd4OZhcCEN04uZVP4ZRdKwRcgsDpfa
 n29LldKHA8VLSWqEZ25JQzCdeOYOAaLOGCUVLvy4q1IvuZILYHWIMGVkj9Tf3l8Qrnx4
 qAfsm8rxbDl/mUiPYuOYDJAUdh9QUiIOazxfIdiSH/0onx9O0Bt6VxZh5pDkAf0thQiZ
 uXPA==
X-Gm-Message-State: AOAM532O0bJ6YIyiRS2r6BkTXPaNChLak1UsY46bcP9hXyFe0TWAJ51I
 SoasAM6mf/abiVFmYU8hERs3G5g/8wHT1w==
X-Google-Smtp-Source: ABdhPJzDDpRHo4dPZ61Us3pe8d1uX23SbKfSH1el0c3FxjenoHfwiqgwwY+cs+qn6ccdJscb4G2brg==
X-Received: by 2002:ae9:c007:: with SMTP id u7mr4426125qkk.450.1598809525634; 
 Sun, 30 Aug 2020 10:45:25 -0700 (PDT)
Received: from atma2.hitronhub.home ([2607:fea8:56e0:6d60::2db6])
 by smtp.gmail.com with ESMTPSA id l1sm6797662qtp.96.2020.08.30.10.45.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 30 Aug 2020 10:45:25 -0700 (PDT)
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nd <nd@arm.com>
Date: Sun, 30 Aug 2020 13:44:10 -0400
Message-Id: <20200830174410.256533-5-rodrigosiqueiramelo@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200830174410.256533-1-rodrigosiqueiramelo@gmail.com>
References: <20200830174410.256533-1-rodrigosiqueiramelo@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v9 4/4] kms_writeback: Add
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
 Simon Ser <contact@emersion.fr>, melissa.srw@gmail.com,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Brian Starkey <rodrigosiqueiramelo@gmail.com>

Add a test which makes commits using the writeback connector, and
checks the output buffer hash to make sure it is/isn't written as
appropriate.

Changes since V8 (Arkadiusz Hiler):
* Add short description

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
 tests/kms_writeback.c | 134 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 134 insertions(+)

diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
index f8025538..60dbda2a 100644
--- a/tests/kms_writeback.c
+++ b/tests/kms_writeback.c
@@ -30,6 +30,14 @@
 #include "igt.h"
 #include "igt_core.h"
 #include "igt_fb.h"
+#include "sw_sync.h"
+
+IGT_TEST_DESCRIPTION(
+   "This test validates the expected behavior of the writeback connectors "
+   "feature by checking if the target device support writeback; it validates "
+   "bad and good combination, check color format, and check the output result "
+   "by using CRC."
+);
 
 static drmModePropertyBlobRes *get_writeback_formats_blob(igt_output_t *output)
 {
@@ -217,6 +225,118 @@ static void writeback_fb_id(igt_output_t *output, igt_fb_t *valid_fb, igt_fb_t *
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
@@ -309,6 +429,20 @@ igt_main
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
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
