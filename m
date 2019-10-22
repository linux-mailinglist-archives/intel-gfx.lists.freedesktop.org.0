Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 338DADFA00
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 03:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70CA76E2ED;
	Tue, 22 Oct 2019 01:00:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com
 [IPv6:2607:f8b0:4864:20::842])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE876E2EC;
 Tue, 22 Oct 2019 01:00:42 +0000 (UTC)
Received: by mail-qt1-x842.google.com with SMTP id d17so9618199qto.3;
 Mon, 21 Oct 2019 18:00:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=hPZfHaMMDlb1wqPqvBr8Gx2HzSXsopXZIOCoxineNIc=;
 b=K0Gm0j+hHbuwEV35Xil/3loa05qv5HXkVG2xqhf9AvJbDK4pG4jXORs13OXEEaEMjj
 BSnIMv4FSzgLmMbdHoSWf3FErbg/GiSM7m2LmwWuqYcCe4DmK2CYxLtc0QF1mv3PMKdA
 i9Iv6y0ITa93ydzsRFT7YDyWmjW8tVY6jP0LWHT//k+00BM4ofw1ftR19Gu4Q+NYm73F
 I/KI23c5/qkWzykwpffHYJ0YY41fBlG0LI/sRiWogXiT5+s8XZnDq2Y/utc43jVNVugk
 AuOOZp57bYALE1KfjBIY946AHac7moPa9P06GCp+GjFGjC7n9dG0QILcSdG8tL06S2Yo
 izcg==
X-Gm-Message-State: APjAAAX6eABKAnd1BuV/ON04LQZSEXHf196uFcz1UxRVXENXcMaPFpH7
 hT3rSBoKhOgH0lMdnrojddo=
X-Google-Smtp-Source: APXvYqxJxfIoUqxBFVukWHpSkYW2/n52tQXQkXozHb1l2hdfpgiF6w0uZvv7wDq60XoLwh90N7X+MA==
X-Received: by 2002:a0c:d2b4:: with SMTP id q49mr562940qvh.135.1571706041277; 
 Mon, 21 Oct 2019 18:00:41 -0700 (PDT)
Received: from smtp.gmail.com (toroon12-3096782342.sdsl.bell.ca.
 [184.149.38.6])
 by smtp.gmail.com with ESMTPSA id h23sm8209043qkk.128.2019.10.21.18.00.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 18:00:40 -0700 (PDT)
From: Brian Starkey <rodrigosiqueiramelo@gmail.com>
X-Google-Original-From: Brian Starkey <brian.starkey@arm.com>
Date: Mon, 21 Oct 2019 22:00:39 -0300
To: Simon Ser <contact@emersion.fr>, Brian Starkey <Brian.Starkey@arm.com>,
 Liviu Dudau <Liviu.Dudau@arm.com>, Petri Latvala <petri.latvala@intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20191022010032.pgqop52v4gz5omlc@smtp.gmail.com>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=hPZfHaMMDlb1wqPqvBr8Gx2HzSXsopXZIOCoxineNIc=;
 b=qPBxSY+8l19D9UfmcLnePlMiCZJJu+/reFOTJekk26sVVtleqlLkEwxjg72hzoFLbI
 ReVGPaFGycslI6SmTkCJNwPVXPjaJb6jUAeBPpyJbF1NCbTqh69Uo/nlF4XokSAvyNVy
 q+QCC9qJrcpvXC5URiIp7NvNrbR+PPDeixQ1DlL29L+G5favKb7llxZ/yTjl0EPpodPG
 s9XDP5xd5bzU/l3nDaNJ+SmLXsGzYHXcMBVTYkaKj6ix0/bYKJ304DllmHKtu2goDX3k
 uOs9oWMC7ikAxsjgFnGarjkMR/ckVxVyC/nUoC2loESuyjG8tsHWNQap9JL4CyovoqT0
 74Tg==
Subject: [Intel-gfx] [PATCH v7 i-g-t 4/4] kms_writeback: Add
 writeback-check-output
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nd <nd@arm.com>
Content-Type: multipart/mixed; boundary="===============2088116916=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============2088116916==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="djxf3u7nx2yfw33z"
Content-Disposition: inline


--djxf3u7nx2yfw33z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Add a test which makes commits using the writeback connector, and
checks the output buffer hash to make sure it is/isn't written as
appropriate.

V6: Simon Ser
 - Add igt documentation with igt_describe
 - Replace int ret by unsigned int fd_id when calling igt_create_fb
 - Add a descriptive error message if sync_fence_wait fail
 - Replace color_idx variable by i
 - Use in_fb instead of out_fb for getting the expected CRC
 - Drop unnecessary parentheses
 - Replace igt_fb_mod_to_tiling to DRM_FORMAT_MOD_LINEAR

Signed-off-by: Brian Starkey <brian.starkey@arm.com>
[rebased and updated the patch to address feedback]
Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
---
 tests/kms_writeback.c | 123 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 123 insertions(+)

diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
index a373ec4d..068595b9 100644
--- a/tests/kms_writeback.c
+++ b/tests/kms_writeback.c
@@ -30,6 +30,7 @@
 #include "igt.h"
 #include "igt_core.h"
 #include "igt_fb.h"
+#include "sw_sync.h"
=20
 IGT_TEST_DESCRIPTION("Exercise writeback feature.");
=20
@@ -196,6 +197,115 @@ static void writeback_test_fb(igt_output_t *output, i=
gt_fb_t *valid_fb, igt_fb_t
 	igt_assert(ret =3D=3D -EINVAL);
 }
=20
+static void fill_fb(igt_fb_t *fb, double color[3])
+{
+	cairo_t *cr =3D igt_get_cairo_ctx(fb->fd, fb);
+	igt_assert(cr);
+
+	igt_paint_color(cr, 0, 0, fb->width, fb->height,
+			color[0], color[1], color[2]);
+}
+
+static void get_and_wait_out_fence(igt_output_t *output)
+{
+	int ret;
+
+	igt_assert(output->writeback_out_fence_fd >=3D 0);
+
+	ret =3D sync_fence_wait(output->writeback_out_fence_fd, 1000);
+	igt_assert_f(ret =3D=3D 0, "sync_fence_wait failed: %s\n", strerror(-ret)=
);
+	close(output->writeback_out_fence_fd);
+	output->writeback_out_fence_fd =3D -1;
+}
+
+static void writeback_sequence(igt_output_t *output, igt_plane_t *plane,
+				igt_fb_t *in_fb, igt_fb_t *out_fbs[], int n_commits)
+{
+	int i;
+	double in_fb_colors[2][3] =3D {
+		{ 1.0, 0.0, 0.0 },
+		{ 0.0, 1.0, 0.0 },
+	};
+	double clear_color[3] =3D { 1.0, 1.0, 1.0 };
+	igt_crc_t cleared_crc, out_expected;
+
+	for (i =3D 0; i < n_commits; i++) {
+		/* Change the input color each time */
+		fill_fb(in_fb, in_fb_colors[i % 2]);
+
+		if (out_fbs[i]) {
+			igt_crc_t out_before;
+
+			/* Get the expected CRC */
+			igt_fb_get_crc(in_fb, &out_expected);
+
+			fill_fb(out_fbs[i], clear_color);
+			if (i =3D=3D 0)
+				igt_fb_get_crc(out_fbs[i], &cleared_crc);
+			igt_fb_get_crc(out_fbs[i], &out_before);
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
+		if (i > 0 && out_fbs[i - 1] && out_fbs[i] !=3D out_fbs[i - 1]) {
+			igt_crc_t out_prev;
+			igt_fb_get_crc(out_fbs[i - 1], &out_prev);
+			igt_assert_crc_equal(&cleared_crc, &out_prev);
+		}
+
+		/* Make sure this output buffer is written */
+		if (out_fbs[i]) {
+			igt_crc_t out_after;
+			igt_fb_get_crc(out_fbs[i], &out_after);
+			igt_assert_crc_equal(&out_expected, &out_after);
+
+			/* And clear it, for the next time */
+			fill_fb(out_fbs[i], clear_color);
+		}
+	}
+}
+
+static void writeback_check_output(igt_output_t *output, igt_plane_t *plan=
e,
+				   igt_fb_t *input_fb, igt_fb_t *output_fb)
+{
+	igt_fb_t *out_fbs[2] =3D { 0 };
+	igt_fb_t second_out_fb;
+	unsigned int fb_id;
+
+	/* One commit, with a writeback. */
+	writeback_sequence(output, plane, input_fb, &output_fb, 1);
+
+	/* Two commits, the second with no writeback */
+	out_fbs[0] =3D output_fb;
+	writeback_sequence(output, plane, input_fb, out_fbs, 2);
+
+	/* Two commits, both with writeback */
+	out_fbs[1] =3D output_fb;
+	writeback_sequence(output, plane, input_fb, out_fbs, 2);
+
+	fb_id =3D igt_create_fb(output_fb->fd,
+			      output_fb->width, output_fb->height,
+			      DRM_FORMAT_XRGB8888,
+			      DRM_FORMAT_MOD_LINEAR, &second_out_fb);
+	igt_require(fb_id > 0);
+
+	/* Two commits, with different writeback buffers */
+	out_fbs[1] =3D &second_out_fb;
+	writeback_sequence(output, plane, input_fb, out_fbs, 2);
+
+	igt_remove_fb(output_fb->fd, &second_out_fb);
+}
+
 igt_main
 {
 	igt_display_t display;
@@ -283,6 +393,19 @@ igt_main
 		igt_remove_fb(display.drm_fd, &invalid_fb);
 	}
=20
+	igt_describe("Check writeback output with CRC validation");
+	igt_subtest("writeback-check-output") {
+		igt_fb_t output_fb;
+		fb_id =3D igt_create_fb(display.drm_fd, mode.hdisplay,
+				      mode.vdisplay, DRM_FORMAT_XRGB8888,
+				      DRM_FORMAT_MOD_LINEAR, &output_fb);
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
--=20
2.23.0

--djxf3u7nx2yfw33z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl2uVLAACgkQWJzP/com
vP+9IQ//adu1lutL5PTf3kcv3DQ4FmiXzSOd0AfghS0/P4aWebpd+bHFohw5U1JI
6KUP0pAEu1FmcqdiXgNAWWpNymoowfO8rKgpPzjHaNvcFnJ2YpgLUa8dtnx2Gyys
qvrX/3puV4Fpx0eqlad1kGuJRhyeiff4zCk9fb/6uPn4xBA98d+RIGwy+CBUpINJ
OX97fo91Bzx0BMELgjsyIMBMU5yxtkDcFyJLFjpVkAtC9mpmo0CX+cImClmG+rXC
EAQNo+rtei+JMip0Zz3LJupUrFcEeWlS/G1Pma2d0X6tSvc4sq12oq2mT6PXOU2J
53nyqoaJ34qK7Vsyhq8ZP+H02nPE+p+p/tLnANxcoDmhfX4/JaWLEOQJMF2kj3cx
zdWcn1JUD7Ggg9Go0GUdb0GamLmA83UVdZLyGefoU8jD31hl50A5wtxjfVANV5Ut
D0KjeC0RzlKtkFXXHbPDKx+zOkcYfMT9ctDTB5fAj+peVI0uvn1+whN9nqXOvfat
CmKWSG+QgVubcrCJEEtSbNEcWZOJhSDFl/Z/4dMw8o3dwiigngJZ6BFIL9lT8tc2
U+USaYiy7XxALVGI6z10+c51H6B/wrCcVFKgkHQauAZ/yKZJr6FkP3lbG7ynInVf
BL8Swtawhv0IaykP3To4lJk8iitbjmExU09UffGtvHpFsItRH3A=
=dQMi
-----END PGP SIGNATURE-----

--djxf3u7nx2yfw33z--

--===============2088116916==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============2088116916==--
