Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 740D24322C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 04:16:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B91A089272;
	Thu, 13 Jun 2019 02:16:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D6C891C7;
 Thu, 13 Jun 2019 02:16:44 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id k8so14127306eds.7;
 Wed, 12 Jun 2019 19:16:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mcXXuANyx3jnZr4FekSkrPEn6XOrEpHFvt3VfwGmwrk=;
 b=uV7KpmsjBvPmWfuIFVgq6rKrfHdckG3w4VJEaGxlHPS/D2m8cWIwAOOKd9kpG4CGHg
 tBZtCq60y1PttAC5Wp7/+mTeEAUUPluCciUSskmCS05nCLiH+dnVXFOKVW7ARxfep3jM
 cui2LtDz2/aoRl6t8RuVni7UX3Uq0k0/tjAquTbSmw+4k+O0fQsLFGQyGqm0BhkryIq8
 nr1u7EN8cqvxVOMuaDTAv5HUFyXNT8SKwLya8TWsSOFEBTpWxWZ1xnHsJ34JWLszr8n1
 kKMhCkKo57Cify+7nZPg921+jcxxciA0Ts2jcVEf+5i1CIwryUGxEaMncnF2IRaHhTnd
 rUQg==
X-Gm-Message-State: APjAAAV8Dr00Lk7HGRLIh2WImYWSWKaPk+XibpYwcPS1PdFkcHKLXYra
 fa7lo2XLiwVuO94D0U8I1Xc=
X-Google-Smtp-Source: APXvYqwFMg6/aDo4H/DNHdgjXRcVV6Zk3RIPYMRdS4G1LvhS3UHaNOQqUUq+TSdAQVmUJP8rYkOVGA==
X-Received: by 2002:a50:cbc4:: with SMTP id l4mr58515454edi.264.1560392202225; 
 Wed, 12 Jun 2019 19:16:42 -0700 (PDT)
Received: from smtp.gmail.com ([187.121.151.146])
 by smtp.gmail.com with ESMTPSA id s57sm458392edd.54.2019.06.12.19.16.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 19:16:41 -0700 (PDT)
From: Brian Starkey <rodrigosiqueiramelo@gmail.com>
X-Google-Original-From: Brian Starkey <brian.starkey@arm.com>
Date: Wed, 12 Jun 2019 23:16:35 -0300
To: Brian Starkey <Brian.Starkey@arm.com>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Petri Latvala <petri.latvala@intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
Message-ID: <296f249138cb4f55466294b07a7aba25801ff146.1560374714.git.rodrigosiqueiramelo@gmail.com>
References: <cover.1560374714.git.rodrigosiqueiramelo@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1560374714.git.rodrigosiqueiramelo@gmail.com>
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mcXXuANyx3jnZr4FekSkrPEn6XOrEpHFvt3VfwGmwrk=;
 b=SntovYtCv84xk+o4lyCyHrpUNT1xM+gep/hEo89hBsUjBsXFOK78e3b3XVjH3jCKeZ
 +myDF6gBM9wtmLahh0wiHHWwFaS5/ZTrk9dBQ7+TgRix8vV2BfBeIFxi0fGx01CoE9pN
 lLPkCFCWbdxKcI4XoQmbAFU195ahtRDgzx6J2zqB6Se5NBAh7IdGT6WznfGX6OMpZ1We
 MjrcP5rThPAtGHbOBlDyYqPcYUTIYA8J6ZhX0pUQgKkyzEwpHJRHlWIe6HLQUJoy23Hh
 7x/OpVEdz6CSTAp55qgtL7OGPfQolgBYsFdTvmUqi5gI5BxiFbKqpQHU9OZmjWP3e9g0
 108g==
Subject: [Intel-gfx] [PATCH V6 i-g-t 2/6] kms_writeback: Add initial
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
Content-Type: multipart/mixed; boundary="===============1749728481=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1749728481==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ygq55dmvtcxzjymf"
Content-Disposition: inline


--ygq55dmvtcxzjymf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Add tests for the WRITEBACK_PIXEL_FORMATS, WRITEBACK_OUT_FENCE_PTR and
WRITEBACK_FB_ID properties on writeback connectors, ensuring their
behaviour is correct.

Signed-off-by: Brian Starkey <brian.starkey@arm.com>
[rebased and updated do_writeback_test() function to address feedback]
Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
---
 tests/Makefile.sources |   1 +
 tests/kms_writeback.c  | 314 +++++++++++++++++++++++++++++++++++++++++
 tests/meson.build      |   1 +
 3 files changed, 316 insertions(+)
 create mode 100644 tests/kms_writeback.c

diff --git a/tests/Makefile.sources b/tests/Makefile.sources
index 027ed82f..03cc8efa 100644
--- a/tests/Makefile.sources
+++ b/tests/Makefile.sources
@@ -77,6 +77,7 @@ TESTS_progs =3D \
 	kms_universal_plane \
 	kms_vblank \
 	kms_vrr \
+	kms_writeback \
 	meta_test \
 	perf \
 	perf_pmu \
diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
new file mode 100644
index 00000000..66ef48a6
--- /dev/null
+++ b/tests/kms_writeback.c
@@ -0,0 +1,314 @@
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
+	uint64_t tiling =3D igt_fb_mod_to_tiling(0);
+	int width, height, ret;
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
+	ret =3D igt_create_fb(display->drm_fd, width, height, DRM_FORMAT_XRGB8888=
, tiling, &input_fb);
+	igt_assert(ret >=3D 0);
+
+	ret =3D igt_create_fb(display->drm_fd, width, height, writeback_format, t=
iling, &output_fb);
+	igt_assert(ret >=3D 0);
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
+		kmstest_force_connector(display->drm_fd, output->config.connector, FORCE=
_CONNECTOR_ON);
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
+static int do_writeback_test(igt_output_t *output, uint32_t flags,
+			      uint32_t fb_id, int32_t *out_fence_ptr,
+			      bool ptr_valid)
+{
+	int ret;
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
+	if (ptr_valid)
+		igt_assert(*out_fence_ptr =3D=3D -1);
+
+	/* WRITEBACK_FB_ID must always read as zero */
+	check_writeback_fb_id(output);
+
+	return ret;
+}
+
+static void invalid_out_fence(igt_output_t *output, igt_fb_t *valid_fb, ig=
t_fb_t *invalid_fb)
+{
+	int i, ret;
+	int32_t out_fence;
+	struct {
+		uint32_t fb_id;
+		bool ptr_valid;
+		int32_t *out_fence_ptr;
+	} invalid_tests[] =3D {
+		{
+			/* No output buffer, but the WRITEBACK_OUT_FENCE_PTR set. */
+			.fb_id =3D 0,
+			.ptr_valid =3D true,
+			.out_fence_ptr =3D &out_fence,
+		},
+		{
+			/* Invalid output buffer. */
+			.fb_id =3D invalid_fb->fb_id,
+			.ptr_valid =3D true,
+			.out_fence_ptr =3D &out_fence,
+		},
+		{
+			/* Invalid WRITEBACK_OUT_FENCE_PTR. */
+			.fb_id =3D valid_fb->fb_id,
+			.ptr_valid =3D false,
+			.out_fence_ptr =3D (int32_t *)0x8,
+		},
+	};
+
+	for (i =3D 0; i < ARRAY_SIZE(invalid_tests); i++) {
+		ret =3D do_writeback_test(output, DRM_MODE_ATOMIC_ALLOW_MODESET,
+					invalid_tests[i].fb_id,
+					invalid_tests[i].out_fence_ptr,
+					invalid_tests[i].ptr_valid);
+		igt_assert(ret !=3D 0);
+	}
+}
+
+static void writeback_fb_id(igt_output_t *output, igt_fb_t *valid_fb, igt_=
fb_t *invalid_fb)
+{
+
+	int ret;
+
+	/* Valid output buffer */
+	ret =3D do_writeback_test(output, DRM_MODE_ATOMIC_ALLOW_MODESET,
+				valid_fb->fb_id, NULL, false);
+	igt_assert(ret =3D=3D 0);
+
+	/* Invalid object for WRITEBACK_FB_ID */
+	ret =3D do_writeback_test(output, DRM_MODE_ATOMIC_ALLOW_MODESET,
+				output->id, NULL, false);
+	igt_assert(ret =3D=3D -EINVAL);
+
+	/* Zero WRITEBACK_FB_ID */
+	ret =3D do_writeback_test(output, DRM_MODE_ATOMIC_ALLOW_MODESET,
+				0, NULL, false);
+	igt_assert(ret =3D=3D 0);
+}
+
+igt_main
+{
+	igt_display_t display;
+	igt_output_t *output;
+	igt_plane_t *plane;
+	igt_fb_t input_fb;
+	drmModeModeInfo mode;
+	int ret;
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
+		igt_require(plane);
+
+		ret =3D igt_create_fb(display.drm_fd, mode.hdisplay,
+				    mode.vdisplay,
+				    DRM_FORMAT_XRGB8888,
+				    igt_fb_mod_to_tiling(0),
+				    &input_fb);
+		igt_assert(ret >=3D 0);
+		igt_plane_set_fb(plane, &input_fb);
+	}
+
+	igt_subtest("writeback-pixel-formats") {
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
+	igt_subtest("writeback-invalid-out-fence") {
+		igt_fb_t invalid_fb;
+		ret =3D igt_create_fb(display.drm_fd, mode.hdisplay / 2,
+				    mode.vdisplay / 2,
+				    DRM_FORMAT_XRGB8888,
+				    igt_fb_mod_to_tiling(0),
+				    &invalid_fb);
+		igt_require(ret > 0);
+
+		invalid_out_fence(output, &input_fb, &invalid_fb);
+
+		igt_remove_fb(display.drm_fd, &invalid_fb);
+	}
+
+	igt_subtest("writeback-fb-id") {
+		igt_fb_t output_fb;
+		ret =3D igt_create_fb(display.drm_fd, mode.hdisplay, mode.vdisplay,
+				    DRM_FORMAT_XRGB8888,
+				    igt_fb_mod_to_tiling(0),
+				    &output_fb);
+		igt_require(ret > 0);
+
+		writeback_fb_id(output, &input_fb, &output_fb);
+
+		igt_remove_fb(display.drm_fd, &output_fb);
+	}
+
+	igt_fixture {
+		igt_remove_fb(display.drm_fd, &input_fb);
+		igt_display_fini(&display);
+	}
+}
diff --git a/tests/meson.build b/tests/meson.build
index f168fbba..9c77cfcd 100644
--- a/tests/meson.build
+++ b/tests/meson.build
@@ -63,6 +63,7 @@ test_progs =3D [
 	'kms_universal_plane',
 	'kms_vblank',
 	'kms_vrr',
+	'kms_writeback',
 	'meta_test',
 	'panfrost_get_param',
 	'panfrost_gem_new',
--=20
2.21.0

--ygq55dmvtcxzjymf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl0BsgMACgkQWJzP/com
vP/5Sg/7Bgx/AOUWGv58n3AgXbkV0S39N53t4Gl6Xpm4fnV8IyMmosdC1BAWkcYH
opiVVTNkqMAOR3JiSDicVovSNEI8GOkdyMk+niZItu9OsKDx91ITZ+OzgmpJuvck
eiMq5tqHIz/ECYNNkqhxFmgxvKJ86v2bNu+5r23NAHruiZxuH3qXp8krgNttDm/u
qjtUJlExDIyD0N/4lhMqIvdm0g6XkuIrS8vhqTMJmFgKeH3JDa+Mw47UMSqKFNy6
rGOCpQmZIXXLLN1MSlNUgCWiVmeRmc1HkZN+sCIibRqIaSrizEgUKC0yWN2zzsNB
eQk4LbOHXuiKGW1mhnZvNG8CAoRzOv567+MS7Js2RgllGDmffZ4RHaWGHYKdgbOA
+KhKOrKPicCDNyYZvLwX7jGvHJvOkHrtRTRHsCAzMmxPsLu1t7fzap31ACaTkioo
NCOdQ/ZDXT1HnOx1PPW+h5nju5doaFrIVLu7xs2GuTeDDOlyLFpnYvD/0O26MkVV
9TxbwzAEY/9cHC9uosa4sYR6a5XxKB00gMv2JmxLcavOdbEBoDYCsRYYxfzM3mGH
z79xr3UdcD9XWNqhHpRBGcZwyRpa/4oanGZyx3mlxV5QY4lbnT+J+B/85ziqslqL
CGKiCBqRhuwJxS8D9xCg/wNsH7GkQG2Ta52GbfE+QQn6s864AJ0=
=LYgl
-----END PGP SIGNATURE-----

--ygq55dmvtcxzjymf--

--===============1749728481==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1749728481==--
