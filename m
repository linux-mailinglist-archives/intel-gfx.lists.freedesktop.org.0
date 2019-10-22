Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCADDF9F9
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 02:59:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE9026E2E9;
	Tue, 22 Oct 2019 00:59:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com
 [IPv6:2607:f8b0:4864:20::744])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F33096E2E8;
 Tue, 22 Oct 2019 00:59:20 +0000 (UTC)
Received: by mail-qk1-x744.google.com with SMTP id u184so14710520qkd.4;
 Mon, 21 Oct 2019 17:59:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Jg95iJtxIZa7HU3v5x1RmN327X39QOODMIohn40TUIE=;
 b=NElHb5phCG6O+Sm6Dh9BHYEecTrnxw0mtW0F+x1QvLXx/w1loRB3RG4XyD/gCefIBK
 bf9lmQm97vIeWGlfs0vPM/nuGvHncpkBzC/h/61K0qM4MUW0hbuzdg777anYNphrYmr9
 jm6/eCquQj1FNGXcXSYnoI95LM0lORQytL2m2Sb1Jiearr1dnhGQ/Fv4xieJpNxxhv9J
 DzAo146IuVf9Zc8NKCGnPNvcAbcEuIxTniSU0eCpYTBvgmdy496QyNu2lZRsZjupvhel
 HY9ZUS58kFKdwLG9/21BRp5JyggH9nIPCzT9e95b4+kGrNPKsmnPleh/c4IiGGMcIiNV
 sb+g==
X-Gm-Message-State: APjAAAW26xv5KsR9YLeSnWAivCEqPMy1ma/mT+Pj99QZUj7dWthj/KQN
 4tVQiMQb/jHDRq1806gXpLU=
X-Google-Smtp-Source: APXvYqz5c23GYItohCnt25aZBk2khTcNou3BdigyxHNkFdegQZA4JF7gLJgtKU9F6RtyPo1kQFjOrA==
X-Received: by 2002:a37:aa07:: with SMTP id t7mr653574qke.414.1571705959728;
 Mon, 21 Oct 2019 17:59:19 -0700 (PDT)
Received: from smtp.gmail.com (toroon12-3096782342.sdsl.bell.ca.
 [184.149.38.6])
 by smtp.gmail.com with ESMTPSA id n17sm9703117qke.103.2019.10.21.17.59.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 17:59:19 -0700 (PDT)
From: Brian Starkey <rodrigosiqueiramelo@gmail.com>
X-Google-Original-From: Brian Starkey <brian.starkey@arm.com>
Date: Mon, 21 Oct 2019 21:59:17 -0300
To: Simon Ser <contact@emersion.fr>, Brian Starkey <Brian.Starkey@arm.com>,
 Liviu Dudau <Liviu.Dudau@arm.com>, Petri Latvala <petri.latvala@intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20191022005910.siuiwfikmr76qpg3@smtp.gmail.com>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=Jg95iJtxIZa7HU3v5x1RmN327X39QOODMIohn40TUIE=;
 b=AWebNrzdkYOP/ntW0OvEFU7h96H7ThDsKHRm2sRcFP5F8l0exqhM5Zr2CP76A4CtiO
 H4yOPllBTM6xPg3a/d27ggzC9xsRKLojO/bEjTWpvjbW7iiYMiRo9YZ7pQq7MHBKG37E
 iAvL6vJSY0SH8kWH4RfrX95yZrXRJahvUwQ+zFscDOKV240Q0+ugdA6muPToN90VLv7J
 fdE3XJdYb1lni08uteweJxQ8e/dLKnAdX2ZC9BciPiemWf6mgU9zsnC6pe7mW6CuPPU4
 UBWOQsyDX7cx9pLbj/f+4nHMyQA1BZO/BDEVAQelBo9oFfW/taw2haRtcRg64NxS6UUx
 hFFw==
Subject: [Intel-gfx] [PATCH v7 i-g-t 2/4] kms_writeback: Add initial
 writeback tests
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
Content-Type: multipart/mixed; boundary="===============1024685421=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1024685421==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gh727jzbvj2puo25"
Content-Disposition: inline


--gh727jzbvj2puo25
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Add tests for the WRITEBACK_PIXEL_FORMATS, WRITEBACK_OUT_FENCE_PTR and
WRITEBACK_FB_ID properties on writeback connectors, ensuring their
behaviour is correct.

V6: Simon Ser
 - Add igt documentation with igt_describe and IGT_TEST_DESCRIPTION
 - Drop kmstest_force_connector with FORCE_CONNECTOR_ON in
kms_writeback_get_output since userspace won't do this operation
 - Add an igt_debug statement in case we don't use writeback output
 - Drop flags parameter from do_writeback_test
 - Remove do_writeback_test "igt_assert(*out_fence_ptr =3D=3D -1)" after
igt_display_try_commit_atomic
 - Rename writeback_fb_id to writeback_test_fb
 - Rework writeback_test_fb for checking buffer
 - Move some tests from invalid_out_fence to writeback_test_fb
 - Replace ret !=3D 0 checking by ret =3D=3D -EINVAL after invoke
do_writeback_test
 - Assert on igt_output_get_plane_type()
 - Replace igt_fb_mod_to_tiling to DRM_FORMAT_MOD_LINEAR
 - Rename tests
 - Replace int ret by unsigned int fd_id when calling igt_create_fb

Signed-off-by: Brian Starkey <brian.starkey@arm.com>
[rebased and updated do_writeback_test() function to address feedback]
Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
[rebased and updated the patch to address feedback]
Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
---
 tests/Makefile.sources |   1 +
 tests/kms_writeback.c  | 290 +++++++++++++++++++++++++++++++++++++++++
 tests/meson.build      |   1 +
 3 files changed, 292 insertions(+)
 create mode 100644 tests/kms_writeback.c

diff --git a/tests/Makefile.sources b/tests/Makefile.sources
index 343be050..331270ae 100644
--- a/tests/Makefile.sources
+++ b/tests/Makefile.sources
@@ -81,6 +81,7 @@ TESTS_progs =3D \
 	kms_universal_plane \
 	kms_vblank \
 	kms_vrr \
+	kms_writeback \
 	meta_test \
 	perf \
 	perf_pmu \
diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
new file mode 100644
index 00000000..a373ec4d
--- /dev/null
+++ b/tests/kms_writeback.c
@@ -0,0 +1,290 @@
+/*
+ * (C) COPYRIGHT 2017 ARM Limited. All rights reserved.
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software=
"),
+ * to deal in the Software without restriction, including without limitati=
on
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice (including the ne=
xt
+ * paragraph) shall be included in all copies or substantial portions of t=
he
+ * Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS=
 OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OT=
HER
+ * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEA=
LINGS
+ * IN THE SOFTWARE.
+ *
+ */
+
+#include <errno.h>
+#include <stdbool.h>
+#include <stdio.h>
+#include <string.h>
+
+#include "igt.h"
+#include "igt_core.h"
+#include "igt_fb.h"
+
+IGT_TEST_DESCRIPTION("Exercise writeback feature.");
+
+static drmModePropertyBlobRes *get_writeback_formats_blob(igt_output_t *ou=
tput)
+{
+	drmModePropertyBlobRes *blob =3D NULL;
+	uint64_t blob_id;
+	int ret;
+
+	ret =3D kmstest_get_property(output->display->drm_fd,
+				   output->config.connector->connector_id,
+				   DRM_MODE_OBJECT_CONNECTOR,
+				   igt_connector_prop_names[IGT_CONNECTOR_WRITEBACK_PIXEL_FORMATS],
+				   NULL, &blob_id, NULL);
+	if (ret)
+		blob =3D drmModeGetPropertyBlob(output->display->drm_fd, blob_id);
+
+	igt_assert(blob);
+
+	return blob;
+}
+
+static bool check_writeback_config(igt_display_t *display, igt_output_t *o=
utput)
+{
+	igt_fb_t input_fb, output_fb;
+	igt_plane_t *plane;
+	uint32_t writeback_format =3D DRM_FORMAT_XRGB8888;
+	int width, height, ret;
+	unsigned int fb_id;
+	drmModeModeInfo override_mode =3D {
+		.clock =3D 25175,
+		.hdisplay =3D 640,
+		.hsync_start =3D 656,
+		.hsync_end =3D 752,
+		.htotal =3D 800,
+		.hskew =3D 0,
+		.vdisplay =3D 480,
+		.vsync_start =3D 490,
+		.vsync_end =3D 492,
+		.vtotal =3D 525,
+		.vscan =3D 0,
+		.vrefresh =3D 60,
+		.flags =3D DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+		.name =3D {"640x480-60"},
+	};
+	igt_output_override_mode(output, &override_mode);
+
+	width =3D override_mode.hdisplay;
+	height =3D override_mode.vdisplay;
+
+	fb_id =3D igt_create_fb(display->drm_fd, width, height, DRM_FORMAT_XRGB88=
88, DRM_FORMAT_MOD_LINEAR, &input_fb);
+	igt_assert(fb_id >=3D 0);
+
+	fb_id =3D igt_create_fb(display->drm_fd, width, height, writeback_format,=
 DRM_FORMAT_MOD_LINEAR, &output_fb);
+	igt_assert(fb_id >=3D 0);
+
+	plane =3D igt_output_get_plane_type(output, DRM_PLANE_TYPE_PRIMARY);
+	igt_plane_set_fb(plane, &input_fb);
+	igt_output_set_writeback_fb(output, &output_fb);
+
+	ret =3D igt_display_try_commit_atomic(display, DRM_MODE_ATOMIC_TEST_ONLY |
+					    DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);
+	igt_plane_set_fb(plane, NULL);
+	igt_remove_fb(display->drm_fd, &input_fb);
+	igt_remove_fb(display->drm_fd, &output_fb);
+
+	return !ret;
+}
+
+static igt_output_t *kms_writeback_get_output(igt_display_t *display)
+{
+	int i;
+
+	for (i =3D 0; i < display->n_outputs; i++) {
+		igt_output_t *output =3D &display->outputs[i];
+		int j;
+
+		if (output->config.connector->connector_type !=3D DRM_MODE_CONNECTOR_WRI=
TEBACK)
+			continue;
+
+		for (j =3D 0; j < igt_display_get_n_pipes(display); j++) {
+			igt_output_set_pipe(output, j);
+
+			if (check_writeback_config(display, output)) {
+				igt_debug("Using connector %u:%s on pipe %d\n",
+					  output->config.connector->connector_id,
+					  output->name, j);
+				return output;
+			}
+		}
+
+		/* Restore any connectors we don't use, so we don't trip on them later */
+		kmstest_force_connector(display->drm_fd, output->config.connector, FORCE=
_CONNECTOR_UNSPECIFIED);
+	}
+
+	igt_debug("The device does not enable writeback\n");
+
+	return NULL;
+}
+
+static void check_writeback_fb_id(igt_output_t *output)
+{
+	uint64_t check_fb_id;
+
+	check_fb_id =3D igt_output_get_prop(output, IGT_CONNECTOR_WRITEBACK_FB_ID=
);
+	igt_assert(check_fb_id =3D=3D 0);
+}
+
+static int do_writeback_test(igt_output_t *output, uint32_t fb_id,
+			      int32_t *out_fence_ptr, bool ptr_valid)
+{
+	int ret;
+	int flags =3D DRM_MODE_ATOMIC_ALLOW_MODESET;
+	igt_display_t *display =3D output->display;
+	struct kmstest_connector_config *config =3D &output->config;
+
+	igt_output_set_prop_value(output, IGT_CONNECTOR_CRTC_ID, config->crtc->cr=
tc_id);
+	igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_FB_ID, fb_id);
+	igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR, =
(uint64_t)out_fence_ptr);
+
+	if (ptr_valid)
+		*out_fence_ptr =3D 0;
+
+	ret =3D igt_display_try_commit_atomic(display, flags, NULL);
+
+	/* WRITEBACK_FB_ID must always read as zero */
+	check_writeback_fb_id(output);
+
+	return ret;
+}
+
+static void invalid_output_fence(igt_output_t *output, igt_fb_t *valid_fb)
+{
+	int ret;
+
+	ret =3D do_writeback_test(output,	valid_fb->fb_id, (int32_t *)0x8, false);
+	igt_assert(ret =3D=3D -EFAULT);
+}
+
+static void writeback_test_fb(igt_output_t *output, igt_fb_t *valid_fb, ig=
t_fb_t *invalid_fb)
+{
+
+	int ret;
+	int32_t out_fence;
+
+	/* Valid output buffer */
+	ret =3D do_writeback_test(output, valid_fb->fb_id, NULL, false);
+	igt_assert(ret =3D=3D 0);
+
+	/* Invalid object for WRITEBACK_FB_ID */
+	ret =3D do_writeback_test(output, output->id, NULL, false);
+	igt_assert(ret =3D=3D -EINVAL);
+
+	/* Zero WRITEBACK_FB_ID */
+	ret =3D do_writeback_test(output, 0, NULL, false);
+	igt_assert(ret =3D=3D 0);
+
+	/* No output buffer, but the WRITEBACK_OUT_FENCE_PTR set. */
+	ret =3D do_writeback_test(output, 0, &out_fence, true);
+	igt_assert(ret =3D=3D -EINVAL);
+
+	/* Invalid output buffer. */
+	ret =3D do_writeback_test(output, invalid_fb->fb_id, &out_fence, true);
+	igt_assert(ret =3D=3D -EINVAL);
+}
+
+igt_main
+{
+	igt_display_t display;
+	igt_output_t *output;
+	igt_plane_t *plane;
+	igt_fb_t input_fb;
+	drmModeModeInfo mode;
+	unsigned int fb_id;
+
+	memset(&display, 0, sizeof(display));
+
+	igt_fixture {
+		display.drm_fd =3D drm_open_driver_master(DRIVER_ANY);
+		igt_display_require(&display, display.drm_fd);
+
+		kmstest_set_vt_graphics_mode();
+
+		igt_display_require(&display, display.drm_fd);
+
+		igt_require(display.is_atomic);
+
+		output =3D kms_writeback_get_output(&display);
+		igt_require(output);
+
+		if (output->use_override_mode)
+			memcpy(&mode, &output->override_mode, sizeof(mode));
+		else
+			memcpy(&mode, &output->config.default_mode, sizeof(mode));
+
+		plane =3D igt_output_get_plane_type(output, DRM_PLANE_TYPE_PRIMARY);
+		igt_assert(plane);
+
+		fb_id =3D igt_create_fb(display.drm_fd, mode.hdisplay,
+				      mode.vdisplay,
+				      DRM_FORMAT_XRGB8888,
+				      DRM_FORMAT_MOD_LINEAR,
+				      &input_fb);
+		igt_assert(fb_id >=3D 0);
+		igt_plane_set_fb(plane, &input_fb);
+	}
+
+	igt_describe("Check writeback formats");
+	igt_subtest("pixel-formats") {
+		drmModePropertyBlobRes *formats_blob =3D get_writeback_formats_blob(outp=
ut);
+		const char *valid_chars =3D "0123456 ABCGNRUVXY";
+		unsigned int i;
+		char *c;
+
+		/*
+		 * We don't have a comprehensive list of formats, so just check
+		 * that the blob length is sensible and that it doesn't contain
+		 * any outlandish characters
+		 */
+		igt_assert(!(formats_blob->length % 4));
+		c =3D formats_blob->data;
+		for (i =3D 0; i < formats_blob->length; i++)
+			igt_assert_f(strchr(valid_chars, c[i]),
+				     "Unexpected character %c\n", c[i]);
+	}
+
+	igt_describe("This test validates if the writeback core identify an "
+		     "invalid output");
+	igt_subtest("invalid-output-fb") {
+		invalid_output_fence(output, &input_fb);
+	}
+
+	igt_describe("Test writeback with valid and invalid framebuffer");
+	igt_subtest("writeback-test-framebuffer") {
+		igt_fb_t output_fb, invalid_fb;
+		fb_id =3D igt_create_fb(display.drm_fd, mode.hdisplay,
+				      mode.vdisplay, DRM_FORMAT_XRGB8888,
+				      DRM_FORMAT_MOD_LINEAR, &output_fb);
+		igt_require(fb_id > 0);
+
+		fb_id =3D igt_create_fb(display.drm_fd, mode.hdisplay / 2,
+				      mode.vdisplay / 2,
+				      DRM_FORMAT_XRGB8888,
+				      DRM_FORMAT_MOD_LINEAR,
+				      &invalid_fb);
+		igt_require(fb_id > 0);
+
+		writeback_test_fb(output, &output_fb, &invalid_fb);
+
+		igt_remove_fb(display.drm_fd, &output_fb);
+		igt_remove_fb(display.drm_fd, &invalid_fb);
+	}
+
+	igt_fixture {
+		igt_remove_fb(display.drm_fd, &input_fb);
+		igt_display_fini(&display);
+	}
+}
diff --git a/tests/meson.build b/tests/meson.build
index 7e3f9e0a..af601725 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -66,6 +66,7 @@ test_progs =3D [
 	'kms_universal_plane',
 	'kms_vblank',
 	'kms_vrr',
+	'kms_writeback',
 	'meta_test',
 	'panfrost_get_param',
 	'panfrost_gem_new',
--=20
2.23.0

--gh727jzbvj2puo25
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl2uVF4ACgkQWJzP/com
vP/t4g//aCR5DvHfzGm4gKl+u1BQzBcMyqw8Y8O+eji3WBLpV1al9zIa1Q1Bmgp8
Uo/M1c061IEpLi0spi2Mc4FLXMKATP4fI1L0x+ywsrAU9lcDM1kGy+/wzee1hke/
NhJ3U6Aj2c2eytlWu6BY6QqQ6a7ZlP75qc0/oLWgr/mHZ3FSDNDSZEC21Ik4R2CI
kGpIZ3MciENURhLxDI99V3zgFyOK+bptULbRXyF52FO0u6Y15qMcg2LXkdXNAQxx
ifTuT1CphM/N0e55qkCcSt3yxPM8PEgc17MXt8VsSXohvlYy/4qXXteMdNM1lxEo
XO2tO1geAd6m+rXvolPwkm8FtNnMXfAhLL0lyEUXXKLPpZfxZ+sRp+4vzSdG9Sdo
3ngwaT8vuYTYmqw/NyfqkXdTl6yXWJVXEJ+CHwZ8d33jadzSKxxbVhOylD9tuGtN
uzan0DImMgl11BqvdyQuDe0059gyabWqHe+YKuE00E1F+FziEAHRH7bygVguSD73
RCV391p56iXFvf/Bol3wpxDoEgKuJAMGV1gi2bW2o+4MbEGLPqJ4s5YpF6bXt5KW
oE6cL7RJ1ONxR4bT/COzaOb9lcz2iCuSeSZZEtYaHxBpVoWjurewNk9+ZON+7s9c
qQ1nHw+jzOKcgE5DU/PITNS9/0cbheUaEjCC1Bp9aempnn+jL6k=
=2Bb5
-----END PGP SIGNATURE-----

--gh727jzbvj2puo25--

--===============1024685421==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1024685421==--
