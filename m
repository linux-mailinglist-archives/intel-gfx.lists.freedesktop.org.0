Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B021E209C99
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 12:13:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92F3B6E053;
	Thu, 25 Jun 2020 10:13:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0746C6E053
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 10:13:56 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id l17so4996839wmj.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 03:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=fPF4pGnKZ3l8k/AXT/Zz2iCIK/5KuIquBtXDzpJyzkE=;
 b=GBt9pspx9Q6L230CxzMRl/KOz0UrgBx8Cu7iH0exhgNY8kcfT4s5kjaU8qdkWNw+au
 IsBeVsKH/dx+SWvQDMMrhZrvv9LkzVNbwfLL5oInTlPZV7XNeRMS27VZB1iOwo4Hc3Ho
 0yJ16iPUB2eItVM4Zd3YIhp1tJfXpNnHZHUAVPEbgK0ylVOPwB6aNVskP7D95MlVLrrr
 eYhfhkUTbeRjDqJflF/U7SA6QQIqQUc5U5ILChJsp49UKQQCFyQrI7kQhWeNhzPIenpt
 p4qPh7sKtmHFl4tLnSLHqnvYc2krzah8FmAOrD9xk80jRYM6mkOy1TMesiZCnK8mScaQ
 SwRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=fPF4pGnKZ3l8k/AXT/Zz2iCIK/5KuIquBtXDzpJyzkE=;
 b=WnPrlunvyGtwb+X9QEFKRcsehoLIcYeNcPUoeeSkxrphfINwuo/1DsZZO8SMmM1qlb
 oQ1QU6GyP3NFaWEsKQU8PxoZ6oLbTK3/9Rdgr2KhdfP/R8KGoVh91ehR3aTZx3u6wLLH
 DOb71cmrURbPJgLtlB6adwB1i4fjTTRkLW8OZhWDh5UZOc6fWyYz73e77QEGnXelsVSI
 9zXef8CdZPDthWH+GDcMRQmkqsamzCbBLRFtaomgdTbi+FbAweMr+rmcZkqlm/fWCFy4
 JLwmb5/AyoxFqWp2j4eChtsL5OT4Lz303Dw2eFPsDxInTIJYnAytnRuwMbSJnIIEHh3e
 0p4Q==
X-Gm-Message-State: AOAM530qBdI/W+e7G5RQr99FaWtAdJ+nmfUOexJEfbgj4tolXbQGEYZl
 SzHMWihKgj8wxwmncpaXiVCfcQF0
X-Google-Smtp-Source: ABdhPJxgBQnME6ny1cOmOaaXhuDHKZvO4YrXQ38QpAxziK2mcS0Bf4ZplpPkS0jheRx8RF1HTIlRDw==
X-Received: by 2002:a05:600c:d5:: with SMTP id
 u21mr2491842wmm.156.1593080033777; 
 Thu, 25 Jun 2020 03:13:53 -0700 (PDT)
Received: from smtp.gmail.com ([2001:818:e238:a000:a4ba:2182:c4c1:3b20])
 by smtp.gmail.com with ESMTPSA id e5sm29534097wrs.33.2020.06.25.03.13.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 03:13:53 -0700 (PDT)
Date: Thu, 25 Jun 2020 07:13:46 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200625101346.xxm3hjepjj4gsedn@smtp.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [RFC PATCH i-g-t] lib/igt_fb: remove extra parameters
 from igt_put_caito_ctx
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
Cc: rodrigosiqueiramelo@gmail.com, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 kernel-usp@googlegroups.com, twoerner@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The function igt_put_caito_ctx has three parameters, but it looks like only
one of them is actually used. If I'm not wrong about the unnecessary
parameters, removing them makes the function more readable and simpler to
understand. Since the function is used in many tests, this change is a little
noisy.

Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
---
 lib/igt_fb.c                      | 18 ++++++++----------
 lib/igt_fb.h                      |  2 +-
 tests/amdgpu/amd_color.c          |  4 ++--
 tests/i915/i915_pm_dc.c           |  2 +-
 tests/kms_atomic.c                |  6 +++---
 tests/kms_available_modes_crc.c   |  4 ++--
 tests/kms_ccs.c                   |  2 +-
 tests/kms_color_helper.c          |  4 ++--
 tests/kms_concurrent.c            |  2 +-
 tests/kms_crtc_background_color.c |  2 +-
 tests/kms_cursor_crc.c            | 22 ++++++++++------------
 tests/kms_cursor_edge_walk.c      |  2 +-
 tests/kms_flip.c                  |  2 +-
 tests/kms_hdr.c                   |  2 +-
 tests/kms_mmap_write_crc.c        |  4 ++--
 tests/kms_plane.c                 |  8 ++++----
 tests/kms_plane_alpha_blend.c     | 10 +++++-----
 tests/kms_plane_cursor.c          |  4 ++--
 tests/kms_plane_lowres.c          |  2 +-
 tests/kms_plane_multiple.c        |  2 +-
 tests/kms_psr.c                   |  2 +-
 tests/kms_psr2_su.c               |  4 ++--
 tests/kms_rotation_crc.c          |  2 +-
 tests/kms_setmode.c               |  2 +-
 tests/kms_vrr.c                   |  2 +-
 tests/testdisplay.c               |  4 ++--
 26 files changed, 58 insertions(+), 62 deletions(-)

diff --git a/lib/igt_fb.c b/lib/igt_fb.c
index 5ed586e7..fd33907b 100644
--- a/lib/igt_fb.c
+++ b/lib/igt_fb.c
@@ -1697,7 +1697,7 @@ unsigned int igt_create_color_fb(int fd, int width, int height,
 
 	cr = igt_get_cairo_ctx(fd, fb);
 	igt_paint_color(cr, 0, 0, width, height, r, g, b);
-	igt_put_cairo_ctx(fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 
 	return fb_id;
 }
@@ -1734,7 +1734,7 @@ unsigned int igt_create_pattern_fb(int fd, int width, int height,
 
 	cr = igt_get_cairo_ctx(fd, fb);
 	igt_paint_test_pattern(cr, width, height);
-	igt_put_cairo_ctx(fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 
 	return fb_id;
 }
@@ -1777,7 +1777,7 @@ unsigned int igt_create_color_pattern_fb(int fd, int width, int height,
 	cr = igt_get_cairo_ctx(fd, fb);
 	igt_paint_color(cr, 0, 0, width, height, r, g, b);
 	igt_paint_test_pattern(cr, width, height);
-	igt_put_cairo_ctx(fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 
 	return fb_id;
 }
@@ -1820,7 +1820,7 @@ unsigned int igt_create_image_fb(int fd, int width, int height,
 
 	cr = igt_get_cairo_ctx(fd, fb);
 	igt_paint_image(cr, filename, 0, 0, width, height);
-	igt_put_cairo_ctx(fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 
 	return fb_id;
 }
@@ -1920,7 +1920,7 @@ unsigned int igt_create_stereo_fb(int drm_fd, drmModeModeInfo *mode,
 			layout.right.x, layout.right.y,
 			layout.right.width, layout.right.height);
 
-	igt_put_cairo_ctx(drm_fd, &fb, cr);
+	igt_put_cairo_ctx(cr);
 
 	return fb_id;
 }
@@ -3578,15 +3578,13 @@ cairo_t *igt_get_cairo_ctx(int fd, struct igt_fb *fb)
 
 /**
  * igt_put_cairo_ctx:
- * @fd: open i915 drm file descriptor
- * @fb: pointer to an #igt_fb structure
  * @cr: the cairo context returned by igt_get_cairo_ctx.
  *
  * This releases the cairo surface @cr returned by igt_get_cairo_ctx()
- * for @fb, and writes the changes out to the framebuffer if cairo doesn't
+ * for fb, and writes the changes out to the framebuffer if cairo doesn't
  * have native support for the format.
  */
-void igt_put_cairo_ctx(int fd, struct igt_fb *fb, cairo_t *cr)
+void igt_put_cairo_ctx(cairo_t *cr)
 {
 	cairo_status_t ret = cairo_status(cr);
 	igt_assert_f(ret == CAIRO_STATUS_SUCCESS, "Cairo failed to draw with %s\n", cairo_status_to_string(ret));
@@ -3657,7 +3655,7 @@ unsigned int igt_fb_convert_with_stride(struct igt_fb *dst, struct igt_fb *src,
 	cr = igt_get_cairo_ctx(dst->fd, dst);
 	cairo_set_source_surface(cr, surf, 0, 0);
 	cairo_paint(cr);
-	igt_put_cairo_ctx(dst->fd, dst, cr);
+	igt_put_cairo_ctx(cr);
 
 	cairo_surface_destroy(surf);
 
diff --git a/lib/igt_fb.h b/lib/igt_fb.h
index 587f7a44..5ec906b7 100644
--- a/lib/igt_fb.h
+++ b/lib/igt_fb.h
@@ -178,7 +178,7 @@ int igt_fb_ccs_to_main_plane(const struct igt_fb *fb, int ccs_plane);
 cairo_surface_t *igt_get_cairo_surface(int fd, struct igt_fb *fb);
 cairo_surface_t *igt_cairo_image_surface_create_from_png(const char *filename);
 cairo_t *igt_get_cairo_ctx(int fd, struct igt_fb *fb);
-void igt_put_cairo_ctx(int fd, struct igt_fb *fb, cairo_t *cr);
+void igt_put_cairo_ctx(cairo_t *cr);
 void igt_paint_color(cairo_t *cr, int x, int y, int w, int h,
 			 double r, double g, double b);
 void igt_paint_color_alpha(cairo_t *cr, int x, int y, int w, int h,
diff --git a/tests/amdgpu/amd_color.c b/tests/amdgpu/amd_color.c
index 0bbee43d..6d313bae 100644
--- a/tests/amdgpu/amd_color.c
+++ b/tests/amdgpu/amd_color.c
@@ -134,7 +134,7 @@ static void draw_color(igt_fb_t *fb, double r, double g, double b)
 
 	cairo_set_operator(cr, CAIRO_OPERATOR_SOURCE);
 	igt_paint_color(cr, 0, 0, fb->width, fb->height, r, g, b);
-	igt_put_cairo_ctx(fb->fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 /* Generates the gamma test pattern. */
@@ -148,7 +148,7 @@ static void draw_gamma_test(igt_fb_t *fb)
 	igt_paint_color_gradient(cr, 0, gh * 2, fb->width, gh, 0, 1, 0);
 	igt_paint_color_gradient(cr, 0, gh * 3, fb->width, gh, 0, 0, 1);
 
-	igt_put_cairo_ctx(fb->fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 /* Sets the degamma LUT. */
diff --git a/tests/i915/i915_pm_dc.c b/tests/i915/i915_pm_dc.c
index 3a302729..84bcf568 100644
--- a/tests/i915/i915_pm_dc.c
+++ b/tests/i915/i915_pm_dc.c
@@ -131,7 +131,7 @@ static void paint_rectangles(data_t *data,
 				colors[i - 1].r, colors[i - 1].g,
 				colors[i - 1].b);
 
-	igt_put_cairo_ctx(data->drm_fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static void setup_primary(data_t *data)
diff --git a/tests/kms_atomic.c b/tests/kms_atomic.c
index f672f554..fa6190c9 100644
--- a/tests/kms_atomic.c
+++ b/tests/kms_atomic.c
@@ -309,7 +309,7 @@ plane_primary_overlay_mutable_zpos(igt_pipe_t *pipe, igt_output_t *output,
 			      w_overlay / 2, h_overlay / 2,
 			      0.0, 0.0, 0.0, 0.0);
 	cairo_set_operator(cr, CAIRO_OPERATOR_OVER);
-	igt_put_cairo_ctx(pipe->display->drm_fd, &fb_overlay, cr);
+	igt_put_cairo_ctx(cr);
 
 	igt_plane_set_fb(primary, &fb_primary);
 	igt_plane_set_fb(overlay, &fb_overlay);
@@ -343,7 +343,7 @@ plane_primary_overlay_mutable_zpos(igt_pipe_t *pipe, igt_output_t *output,
 			      w_overlay, h_overlay,
 			      0.0, 0.0, 0.0, 0.5);
 	cairo_set_operator(cr, CAIRO_OPERATOR_OVER);
-	igt_put_cairo_ctx(pipe->display->drm_fd, &fb_primary, cr);
+	igt_put_cairo_ctx(cr);
 
 	igt_info("Committing with a hole in the primary through "\
 		 "which the underlay should be seen\n");
@@ -398,7 +398,7 @@ plane_immutable_zpos(igt_display_t *display, igt_pipe_t *pipe,
 	igt_assert(cairo_status(cr) == 0);
 	igt_paint_color(cr, 0, 0, w_lower, h_lower, 0.0, 0.0, 1.0);
 	igt_paint_color(cr, w_upper / 2, h_upper / 2, w_upper, h_upper, 1.0, 1.0, 0.0);
-	igt_put_cairo_ctx(display->drm_fd, &fb_ref, cr);
+	igt_put_cairo_ctx(cr);
 	igt_plane_set_fb(primary, &fb_ref);
 	igt_display_commit2(display, COMMIT_ATOMIC);
 
diff --git a/tests/kms_available_modes_crc.c b/tests/kms_available_modes_crc.c
index ed43d1fb..23d035f7 100644
--- a/tests/kms_available_modes_crc.c
+++ b/tests/kms_available_modes_crc.c
@@ -96,7 +96,7 @@ static void generate_comparison_crc_list(data_t *data, igt_output_t *output)
 			    0.0, 0.0, 0.0);
 	igt_paint_color(cr, 0, 0, w, h, 1.0, 1.0, 1.0);
 	igt_assert(cairo_status(cr) == 0);
-	igt_put_cairo_ctx(data->gfx_fd, &data->primary_fb, cr);
+	igt_put_cairo_ctx(cr);
 
 	primary = igt_output_get_plane_type(output, DRM_PLANE_TYPE_PRIMARY);
 	igt_plane_set_fb(primary, &data->primary_fb);
@@ -108,7 +108,7 @@ static void generate_comparison_crc_list(data_t *data, igt_output_t *output)
 
 	cr = igt_get_cairo_ctx(data->gfx_fd, &data->primary_fb);
 	igt_paint_color(cr, 0, 0, mode->hdisplay, mode->vdisplay, 1.0, 1.0, 1.0);
-	igt_put_cairo_ctx(data->gfx_fd, &data->primary_fb, cr);
+	igt_put_cairo_ctx(cr);
 
 	igt_plane_set_fb(primary, &data->primary_fb);
 	igt_display_commit2(&data->display, data->commit);
diff --git a/tests/kms_ccs.c b/tests/kms_ccs.c
index bc34aec5..b60e4908 100644
--- a/tests/kms_ccs.c
+++ b/tests/kms_ccs.c
@@ -246,7 +246,7 @@ static void generate_fb(data_t *data, struct igt_fb *fb,
 		cr = igt_get_cairo_ctx(data->drm_fd, fb);
 		igt_paint_color(cr, 0, 0, width, height,
 				colors[c].r, colors[c].g, colors[c].b);
-		igt_put_cairo_ctx(data->drm_fd, fb, cr);
+		igt_put_cairo_ctx(cr);
 	}
 
 	ret = drmIoctl(data->drm_fd, LOCAL_DRM_IOCTL_MODE_ADDFB2, &f);
diff --git a/tests/kms_color_helper.c b/tests/kms_color_helper.c
index 9cb740f2..2605146a 100644
--- a/tests/kms_color_helper.c
+++ b/tests/kms_color_helper.c
@@ -57,7 +57,7 @@ void paint_gradient_rectangles(data_t *data,
 					       colors[i-1].g,
 					       colors[i-1].b);
 
-	igt_put_cairo_ctx(data->drm_fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 void paint_rectangles(data_t *data,
@@ -79,7 +79,7 @@ void paint_rectangles(data_t *data,
 		igt_paint_color(cr, i * l, 0, rows_remaining, mode->vdisplay,
 				colors[i-1].r, colors[i-1].g, colors[i-1].b);
 
-	igt_put_cairo_ctx(data->drm_fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 gamma_lut_t *alloc_lut(int lut_size)
diff --git a/tests/kms_concurrent.c b/tests/kms_concurrent.c
index 89016563..9a4dab24 100644
--- a/tests/kms_concurrent.c
+++ b/tests/kms_concurrent.c
@@ -126,7 +126,7 @@ create_fb_for_mode_position(data_t *data, drmModeModeInfo *mode,
 				rect_w[i], rect_h[i], 0.0, 0.0, 0.0);
 	}
 
-	igt_put_cairo_ctx(data->drm_fd, &data->fb[primary->index], cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static void
diff --git a/tests/kms_crtc_background_color.c b/tests/kms_crtc_background_color.c
index aca7ac3e..b4141b0d 100644
--- a/tests/kms_crtc_background_color.c
+++ b/tests/kms_crtc_background_color.c
@@ -69,7 +69,7 @@ paint_background(data_t *data, struct igt_fb *fb, drmModeModeInfo *mode,
 	b = (double) ((background & 0xFF0000) >> 16) / 255.0;
 	igt_paint_color_alpha(cr, 0, 0, w, h, r, g, b, alpha);
 
-	igt_put_cairo_ctx(data->gfx_fd, &data->fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static void prepare_crtc(data_t *data, igt_output_t *output, enum pipe pipe,
diff --git a/tests/kms_cursor_crc.c b/tests/kms_cursor_crc.c
index f105e295..7e6b24cc 100644
--- a/tests/kms_cursor_crc.c
+++ b/tests/kms_cursor_crc.c
@@ -167,8 +167,7 @@ static void restore_image(data_t *data)
 		cairo_set_source_surface(cr, data->surface, 0, 0);
 		cairo_rectangle(cr, 0, 0, data->screenw, data->screenh);
 		cairo_fill(cr);
-		igt_put_cairo_ctx(data->drm_fd,
-				  &data->primary_fb[FRONTBUFFER], cr);
+		igt_put_cairo_ctx(cr);
 	}
 	igt_dirty_fb(data->drm_fd, &data->primary_fb[FRONTBUFFER]);
 }
@@ -235,7 +234,7 @@ static void do_single_test(data_t *data, int x, int y)
 	/* Now render the same in software and collect crc */
 	cr = igt_get_cairo_ctx(data->drm_fd, &data->primary_fb[FRONTBUFFER]);
 	draw_cursor(cr, x, y, data->curw, data->curh, 1.0);
-	igt_put_cairo_ctx(data->drm_fd, &data->primary_fb[FRONTBUFFER], cr);
+	igt_put_cairo_ctx(cr);
 	igt_display_commit(display);
 	igt_dirty_fb(data->drm_fd, &data->primary_fb[FRONTBUFFER]);
 	/* Extra vblank wait is because nonblocking cursor ioctl */
@@ -451,8 +450,7 @@ static void prepare_crtc(data_t *data, igt_output_t *output,
 		                       &data->primary_fb[RESTOREBUFFER]);
 		cairo_set_operator(cr, CAIRO_OPERATOR_SOURCE);
 		igt_paint_test_pattern(cr, data->screenw, data->screenh);
-		igt_put_cairo_ctx(data->drm_fd,
-				  &data->primary_fb[RESTOREBUFFER], cr);
+		igt_put_cairo_ctx(cr);
 
 		data->drmibo[FRONTBUFFER] = gem_handle_to_libdrm_bo(data->bufmgr,
 								    data->drm_fd,
@@ -493,7 +491,7 @@ static void test_cursor_alpha(data_t *data, double a)
 	igt_assert(fb_id);
 	cr = igt_get_cairo_ctx(data->drm_fd, &data->fb);
 	igt_paint_color_alpha(cr, 0, 0, curw, curh, 1.0, 1.0, 1.0, a);
-	igt_put_cairo_ctx(data->drm_fd, &data->fb, cr);
+	igt_put_cairo_ctx(cr);
 
 	/*Hardware Test*/
 	cursor_enable(data);
@@ -506,7 +504,7 @@ static void test_cursor_alpha(data_t *data, double a)
 	/*Software Test*/
 	cr = igt_get_cairo_ctx(data->drm_fd, &data->primary_fb[FRONTBUFFER]);
 	igt_paint_color_alpha(cr, 0, 0, curw, curh, 1.0, 1.0, 1.0, a);
-	igt_put_cairo_ctx(data->drm_fd, &data->primary_fb[FRONTBUFFER], cr);
+	igt_put_cairo_ctx(cr);
 
 	igt_display_commit(display);
 	igt_wait_for_vblank(data->drm_fd, data->pipe);
@@ -517,7 +515,7 @@ static void test_cursor_alpha(data_t *data, double a)
 	cr = igt_get_cairo_ctx(data->drm_fd, &data->primary_fb[FRONTBUFFER]);
 	igt_paint_color(cr, 0, 0, data->screenw, data->screenh,
 			0.0, 0.0, 0.0);
-	igt_put_cairo_ctx(data->drm_fd, &data->primary_fb[FRONTBUFFER], cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static void test_cursor_transparent(data_t *data)
@@ -559,7 +557,7 @@ static void create_cursor_fb(data_t *data, int cur_w, int cur_h)
 
 	cr = igt_get_cairo_ctx(data->drm_fd, &data->fb);
 	draw_cursor(cr, 0, 0, cur_w, cur_h, 1.0);
-	igt_put_cairo_ctx(data->drm_fd, &data->fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static bool has_nonsquare_cursors(data_t *data)
@@ -605,7 +603,7 @@ static void test_cursor_size(data_t *data)
 	/* Use a solid white rectangle as the cursor */
 	cr = igt_get_cairo_ctx(data->drm_fd, &data->fb);
 	igt_paint_color_alpha(cr, 0, 0, cursor_max_size, cursor_max_size, 1.0, 1.0, 1.0, 1.0);
-	igt_put_cairo_ctx(data->drm_fd, &data->fb, cr);
+	igt_put_cairo_ctx(cr);
 
 	/* Hardware test loop */
 	cursor_enable(data);
@@ -625,7 +623,7 @@ static void test_cursor_size(data_t *data)
 		/* Now render the same in software and collect crc */
 		cr = igt_get_cairo_ctx(data->drm_fd, &data->primary_fb[FRONTBUFFER]);
 		igt_paint_color_alpha(cr, 0, 0, size, size, 1.0, 1.0, 1.0, 1.0);
-		igt_put_cairo_ctx(data->drm_fd, &data->primary_fb[FRONTBUFFER], cr);
+		igt_put_cairo_ctx(cr);
 
 		igt_display_commit(display);
 		igt_wait_for_vblank(data->drm_fd, data->pipe);
@@ -634,7 +632,7 @@ static void test_cursor_size(data_t *data)
 		cr = igt_get_cairo_ctx(data->drm_fd, &data->primary_fb[FRONTBUFFER]);
 		igt_paint_color(cr, 0, 0, data->screenw, data->screenh,
 				0.0, 0.0, 0.0);
-		igt_put_cairo_ctx(data->drm_fd, &data->primary_fb[FRONTBUFFER], cr);
+		igt_put_cairo_ctx(cr);
 		igt_assert_crc_equal(&crc[i], &ref_crc);
 	}
 }
diff --git a/tests/kms_cursor_edge_walk.c b/tests/kms_cursor_edge_walk.c
index 6feb32a8..96a78792 100644
--- a/tests/kms_cursor_edge_walk.c
+++ b/tests/kms_cursor_edge_walk.c
@@ -78,7 +78,7 @@ static void create_cursor_fb(data_t *data, int cur_w, int cur_h)
 	else
 		igt_paint_color_alpha(cr, 0, 0, data->fb.width, data->fb.height,
 				      0.0, 0.0, 0.0, 0.0);
-	igt_put_cairo_ctx(data->drm_fd, &data->fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static void cursor_move(data_t *data, int x, int y, int i)
diff --git a/tests/kms_flip.c b/tests/kms_flip.c
index b7b42f85..adf72740 100755
--- a/tests/kms_flip.c
+++ b/tests/kms_flip.c
@@ -973,7 +973,7 @@ static void paint_flip_mode(struct igt_fb *fb, bool odd_frame)
 	cairo_set_source_rgb(cr, 1, 1, 1);
 	cairo_fill(cr);
 
-	igt_put_cairo_ctx(drm_fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static bool fb_is_bound(struct test_output *o, int fb)
diff --git a/tests/kms_hdr.c b/tests/kms_hdr.c
index 71372556..0574d5ff 100644
--- a/tests/kms_hdr.c
+++ b/tests/kms_hdr.c
@@ -141,7 +141,7 @@ static void draw_hdr_pattern(igt_fb_t *fb)
 	igt_paint_color(cr, 0, 0, fb->width, fb->height, 1.0, 1.0, 1.0);
 	igt_paint_test_pattern(cr, fb->width, fb->height);
 
-	igt_put_cairo_ctx(fb->fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 /* Prepare test data. */
diff --git a/tests/kms_mmap_write_crc.c b/tests/kms_mmap_write_crc.c
index 56e0c4d7..46013808 100644
--- a/tests/kms_mmap_write_crc.c
+++ b/tests/kms_mmap_write_crc.c
@@ -92,7 +92,7 @@ static void test(data_t *data)
 
 	cr = igt_get_cairo_ctx(data->drm_fd, fb);
 	igt_paint_test_pattern(cr, fb->width, fb->height);
-	igt_put_cairo_ctx(data->drm_fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 
 	/* flip to it to make it UC/WC and fully flushed */
 	igt_plane_set_fb(data->primary, fb);
@@ -135,7 +135,7 @@ static void test(data_t *data)
 	 * fully flushed */
 	cr = igt_get_cairo_ctx(data->drm_fd, fb);
 	igt_paint_test_pattern(cr, fb->width, fb->height);
-	igt_put_cairo_ctx(data->drm_fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 
 	igt_plane_set_fb(data->primary, fb);
 	igt_display_commit(display);
diff --git a/tests/kms_plane.c b/tests/kms_plane.c
index c6ead813..e75c045b 100644
--- a/tests/kms_plane.c
+++ b/tests/kms_plane.c
@@ -149,7 +149,7 @@ create_fb_for_mode__position(data_t *data, drmModeModeInfo *mode,
 	igt_paint_color(cr, 0, 0, mode->hdisplay, mode->vdisplay,
 			    0.0, 1.0, 0.0);
 	igt_paint_color(cr, rect_x, rect_y, rect_w, rect_h, 0.0, 0.0, 0.0);
-	igt_put_cairo_ctx(data->drm_fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 enum {
@@ -284,7 +284,7 @@ create_fb_for_mode__panning(data_t *data, drmModeModeInfo *mode,
 			mode->hdisplay, mode->vdisplay,
 			0.0, 0.0, 1.0);
 
-	igt_put_cairo_ctx(data->drm_fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 enum {
@@ -460,7 +460,7 @@ static void prepare_format_color(data_t *data, enum pipe pipe,
 		igt_paint_color(cr, 0, 0, width, height,
 				c->red, c->green, c->blue);
 
-		igt_put_cairo_ctx(data->drm_fd, fb, cr);
+		igt_put_cairo_ctx(cr);
 	} else {
 		igt_create_fb_with_bo_size(data->drm_fd,
 					   width + data->crop * 2,
@@ -485,7 +485,7 @@ static void prepare_format_color(data_t *data, enum pipe pipe,
 				width, height,
 				c->red, c->green, c->blue);
 
-		igt_put_cairo_ctx(data->drm_fd, fb, cr);
+		igt_put_cairo_ctx(cr);
 	}
 
 	igt_plane_set_fb(plane, fb);
diff --git a/tests/kms_plane_alpha_blend.c b/tests/kms_plane_alpha_blend.c
index ca7a6fa9..dd162546 100644
--- a/tests/kms_plane_alpha_blend.c
+++ b/tests/kms_plane_alpha_blend.c
@@ -60,7 +60,7 @@ static void draw_gradient(struct igt_fb *fb, int w, int h, double a)
 
 	__draw_gradient(fb, w, h, a, cr);
 
-	igt_put_cairo_ctx(fb->fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static void draw_gradient_coverage(struct igt_fb *fb, int w, int h, uint8_t a)
@@ -76,7 +76,7 @@ static void draw_gradient_coverage(struct igt_fb *fb, int w, int h, uint8_t a)
 		for (i = 0; i < w; i++)
 			data[i * 4 + 3] = a;
 
-	igt_put_cairo_ctx(fb->fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static void draw_squares(struct igt_fb *fb, int w, int h, double a)
@@ -90,7 +90,7 @@ static void draw_squares(struct igt_fb *fb, int w, int h, double a)
 	igt_paint_color_alpha(cr, w / 2, h / 2, w / 4, h / 2, 1., 1., 1., a);
 	igt_paint_color_alpha(cr, 3 * w / 4, h / 2, w / 4, h / 2, 0., 0., 0., a);
 
-	igt_put_cairo_ctx(fb->fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static void draw_squares_coverage(struct igt_fb *fb, int w, int h, uint8_t as)
@@ -120,7 +120,7 @@ static void draw_squares_coverage(struct igt_fb *fb, int w, int h, uint8_t as)
 			data[j * stride + i] = a;
 	}
 
-	igt_put_cairo_ctx(fb->fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static void reset_alpha(igt_display_t *display, enum pipe pipe)
@@ -200,7 +200,7 @@ static void prepare_crtc(data_t *data, igt_output_t *output, enum pipe pipe)
 		cr = igt_get_cairo_ctx(data->gfx_fd, &data->argb_fb_0);
 		cairo_set_operator(cr, CAIRO_OPERATOR_SOURCE);
 		igt_paint_color_alpha(cr, 0, 0, w, h, 0., 0., 0., 0.0);
-		igt_put_cairo_ctx(data->gfx_fd, &data->argb_fb_0, cr);
+		igt_put_cairo_ctx(cr);
 
 		igt_create_fb(data->gfx_fd, w, h,
 			      DRM_FORMAT_ARGB8888, LOCAL_DRM_FORMAT_MOD_NONE,
diff --git a/tests/kms_plane_cursor.c b/tests/kms_plane_cursor.c
index adcdf5e8..f7d50484 100644
--- a/tests/kms_plane_cursor.c
+++ b/tests/kms_plane_cursor.c
@@ -102,7 +102,7 @@ static void draw_color(igt_fb_t *fb, double r, double g, double b)
 
 	cairo_set_operator(cr, CAIRO_OPERATOR_SOURCE);
 	igt_paint_color(cr, 0, 0, fb->width, fb->height, r, g, b);
-	igt_put_cairo_ctx(fb->fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 /*
@@ -129,7 +129,7 @@ static void test_cursor_pos(data_t *data, igt_fb_t *pfb, igt_fb_t *ofb,
 		igt_paint_color(cr, or->x, or->y, or->w, or->h, 0.5, 0.5, 0.5);
 
 	igt_paint_color(cr, x, y, cw, ch, 1.0, 0.0, 1.0);
-	igt_put_cairo_ctx(pfb->fd, pfb, cr);
+	igt_put_cairo_ctx(cr);
 
 	igt_plane_set_fb(data->overlay, NULL);
 	igt_plane_set_fb(data->cursor, NULL);
diff --git a/tests/kms_plane_lowres.c b/tests/kms_plane_lowres.c
index 012b25e3..94b18df6 100644
--- a/tests/kms_plane_lowres.c
+++ b/tests/kms_plane_lowres.c
@@ -158,7 +158,7 @@ static void create_ref_fb(data_t *data, uint64_t modifier,
 	cr = igt_get_cairo_ctx(data->drm_fd, fb);
 	blit(data, cr, &data->fb_primary, 0, 0);
 	blit(data, cr, &data->fb_plane[0], data->x, data->y);
-	igt_put_cairo_ctx(data->drm_fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static unsigned
diff --git a/tests/kms_plane_multiple.c b/tests/kms_plane_multiple.c
index 6cf060b3..29b6397b 100644
--- a/tests/kms_plane_multiple.c
+++ b/tests/kms_plane_multiple.c
@@ -159,7 +159,7 @@ create_fb_for_mode_position(data_t *data, igt_output_t *output, drmModeModeInfo
 				rect_w[i], rect_h[i], 0.0, 0.0, 0.0);
 		}
 
-	igt_put_cairo_ctx(data->drm_fd, &data->fb[primary->index], cr);
+	igt_put_cairo_ctx(cr);
 }
 
 
diff --git a/tests/kms_psr.c b/tests/kms_psr.c
index f40902fb..49ea446a 100644
--- a/tests/kms_psr.c
+++ b/tests/kms_psr.c
@@ -88,7 +88,7 @@ static void create_cursor_fb(data_t *data)
 
 	cr = igt_get_cairo_ctx(data->drm_fd, &data->fb_white);
 	igt_paint_color_alpha(cr, 0, 0, 64, 64, 1.0, 1.0, 1.0, 1.0);
-	igt_put_cairo_ctx(data->drm_fd, &data->fb_white, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static void setup_output(data_t *data)
diff --git a/tests/kms_psr2_su.c b/tests/kms_psr2_su.c
index 0ee02fc8..d549d9a3 100644
--- a/tests/kms_psr2_su.c
+++ b/tests/kms_psr2_su.c
@@ -132,7 +132,7 @@ static void prepare(data_t *data)
 		/* paint a white square */
 		igt_paint_color_alpha(cr, 0, 0, SQUARE_SIZE, SQUARE_SIZE,
 				      1.0, 1.0, 1.0, 1.0);
-		igt_put_cairo_ctx(data->drm_fd,  &data->fb[1], cr);
+		igt_put_cairo_ctx(cr);
 	} else if (data->op == FRONTBUFFER) {
 		data->cr = igt_get_cairo_ctx(data->drm_fd, &data->fb[0]);
 	}
@@ -226,7 +226,7 @@ static void cleanup(data_t *data)
 	if (data->op == PAGE_FLIP)
 		igt_remove_fb(data->drm_fd, &data->fb[1]);
 	else if (data->op == FRONTBUFFER)
-		igt_put_cairo_ctx(data->drm_fd, &data->fb[0], data->cr);
+		igt_put_cairo_ctx(data->cr);
 
 	igt_remove_fb(data->drm_fd, &data->fb[0]);
 }
diff --git a/tests/kms_rotation_crc.c b/tests/kms_rotation_crc.c
index 164eade8..ffcc2cc2 100644
--- a/tests/kms_rotation_crc.c
+++ b/tests/kms_rotation_crc.c
@@ -148,7 +148,7 @@ paint_squares(data_t *data, igt_rotation_t rotation,
 	igt_paint_color(cr, 0, h / 2, w / 2, h / 2, RGB_COLOR(bl));
 	igt_paint_color(cr, w / 2, h / 2, w / 2, h / 2, RGB_COLOR(br));
 
-	igt_put_cairo_ctx(data->gfx_fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static void remove_fbs(data_t *data)
diff --git a/tests/kms_setmode.c b/tests/kms_setmode.c
index 802a9c3d..92f3ead2 100644
--- a/tests/kms_setmode.c
+++ b/tests/kms_setmode.c
@@ -161,7 +161,7 @@ static int paint_fb(struct igt_fb *fb, const char *test_name,
 					  crtc_str[i]);
 	}
 
-	igt_put_cairo_ctx(drm_fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 
 	return 0;
 }
diff --git a/tests/kms_vrr.c b/tests/kms_vrr.c
index 73115fef..559ef203 100644
--- a/tests/kms_vrr.c
+++ b/tests/kms_vrr.c
@@ -186,7 +186,7 @@ static void prepare_test(data_t *data, igt_output_t *output, enum pipe pipe)
 	igt_paint_color(cr, 0, 0, mode.hdisplay / 10, mode.vdisplay / 10,
 			1.00, 0.00, 0.00);
 
-	igt_put_cairo_ctx(data->drm_fd, &data->fb0, cr);
+	igt_put_cairo_ctx(cr);
 
 	/* Take care of any required modesetting before the test begins. */
 	primary = igt_output_get_plane_type(output, DRM_PLANE_TYPE_PRIMARY);
diff --git a/tests/testdisplay.c b/tests/testdisplay.c
index 5e2c4598..ef033dc6 100644
--- a/tests/testdisplay.c
+++ b/tests/testdisplay.c
@@ -232,7 +232,7 @@ paint_color_key(struct igt_fb *fb_info)
 	cairo_set_source_rgb(cr, .8, .8, .8);
 	cairo_fill(cr);
 
-	igt_put_cairo_ctx(drm_fd, fb_info, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static void paint_image(cairo_t *cr, const char *file)
@@ -317,7 +317,7 @@ static void paint_output_info(struct connector *c, struct igt_fb *fb)
 	if (qr_code)
 		paint_image(cr, "pass.png");
 
-	igt_put_cairo_ctx(drm_fd, fb, cr);
+	igt_put_cairo_ctx(cr);
 }
 
 static void sighandler(int signo)
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
