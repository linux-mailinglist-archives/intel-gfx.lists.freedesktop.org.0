Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B2D2295D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 01:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D75CF890BE;
	Sun, 19 May 2019 23:00:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com
 [IPv6:2607:f8b0:4864:20::844])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F24E3890BE;
 Sun, 19 May 2019 23:00:41 +0000 (UTC)
Received: by mail-qt1-x844.google.com with SMTP id l3so3490851qtj.5;
 Sun, 19 May 2019 16:00:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ZIT4fwQjjK6qI/XuogwbTky+pffRZp+CADD76bcdk4I=;
 b=HS74P4uO6AXeY/9N6HXR1yB7rwi6asul6ZxJNGBqbB5DcEp35I67rRUiRB+wIHDZfV
 WNIkj23+i1wQrOFi1MZBYSPoRglzqyHYfYFi/6SEspYuUpRynpP2rcEeK8kmc0sSRkBW
 rmmXuNXvx7/NF7FxKUKgY3Yz2AEB99C2Cu80tbG+5RutTtaqQidXUeBQvGN6Tl2H2hdy
 mJLzrhPj9ix9yK903dDLtyu3flYjTC6zph+C3Qw/Fdf4XWeJS4HN4UNwbhCs2drz6lVo
 Ur/XROWuCvh6qkAduxq3j2sPqJLQVOel2BEFbyXphyH+upz8MoYeBfmHjZYPKCaDYGbY
 ptDw==
X-Gm-Message-State: APjAAAVf6dTpv/WCoS4i6qCkBmNWThLvfi0YFuuN05XKwsYcyZKlwcpU
 KbaZ01f3RXlPyoEHAgFQAEQ=
X-Google-Smtp-Source: APXvYqye8ncGF0C5EUh0J4nXqEy4bzhLpeV9HUpRAzYG0qk8SoXDVDxsh6v2SqoSyntRtJBAAg+wUQ==
X-Received: by 2002:ac8:2e84:: with SMTP id h4mr12503720qta.267.1558306840946; 
 Sun, 19 May 2019 16:00:40 -0700 (PDT)
Received: from smtp.gmail.com ([187.121.151.151])
 by smtp.gmail.com with ESMTPSA id n22sm9452510qtb.56.2019.05.19.16.00.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 19 May 2019 16:00:40 -0700 (PDT)
Date: Sun, 19 May 2019 20:00:36 -0300
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: Petri Latvala <petri.latvala@intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190519230036.y73fer7uq4i7lpat@smtp.gmail.com>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=ZIT4fwQjjK6qI/XuogwbTky+pffRZp+CADD76bcdk4I=;
 b=egpuAQErrkjOz6GRJrQc2JuGj3eGvoQlSSBeS7IveVF13TjWuE/y8Foy1YWgIhnZFH
 HHbZXwFVkp38C+4ec/QQbRUQX+HfwwBHQFyi6zPVwjeJ+jnn5kuJ7xJZdLAlpO2LjUGN
 erwxdTGiBOS/K32WdBwShO3DCbm1OCYDQr2XghMLUUxHlaKc+fP0s29TW0IpPtnCTUrc
 OJei6nCs6Cwz2PW6YoeydIWfNVpZbbdsJ8ZoUHqxFicMaa1uSmVAQcBu2nCoeGSxLRFi
 pyyXQbpivvgQrGgDf/b21TtC93EhVEwOLE0QQekTSnb4kYzUXcprW/eBntq5TP/jLF7L
 5klA==
Subject: [Intel-gfx] [PATCH V2 i-g-t] lib: Drop __kms_addfb() wrapper
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1181370717=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1181370717==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dlulvy3vwqzgcvoq"
Content-Disposition: inline


--dlulvy3vwqzgcvoq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The function __kms_addfb() and drmModeAddFB2WithModifiers() have a
similar code. Due to this similarity, this commit replaces all the
occurrences of  __kms_addfb() by drmModeAddFB2WithModifiers() and adds
the required adaptations.

V1: Arkadiusz Hiler
 - Fix array initialization
 - Drop __kms_addfb()

Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
---
 lib/igt_fb.c                    | 14 +++++++++-----
 lib/ioctl_wrappers.c            | 33 ---------------------------------
 lib/ioctl_wrappers.h            | 11 -----------
 tests/kms_available_modes_crc.c | 14 +++++++++-----
 tests/kms_draw_crc.c            | 10 ++++++----
 tests/prime_vgem.c              | 14 ++++++++------
 6 files changed, 32 insertions(+), 64 deletions(-)

diff --git a/lib/igt_fb.c b/lib/igt_fb.c
index d4929019..bac3b21c 100644
--- a/lib/igt_fb.c
+++ b/lib/igt_fb.c
@@ -1235,6 +1235,9 @@ igt_create_fb_with_bo_size(int fd, int width, int hei=
ght,
 			   struct igt_fb *fb, uint64_t bo_size,
 			   unsigned bo_stride)
 {
+	uint32_t handles[4] =3D {};
+	uint64_t modifiers[4] =3D {};
+
 	/* FIXME allow the caller to pass these in */
 	enum igt_color_encoding color_encoding =3D IGT_COLOR_YCBCR_BT709;
 	enum igt_color_range color_range =3D IGT_COLOR_YCBCR_LIMITED_RANGE;
@@ -1262,11 +1265,12 @@ igt_create_fb_with_bo_size(int fd, int width, int h=
eight,
 	if (fb->modifier || igt_has_fb_modifiers(fd))
 		flags =3D LOCAL_DRM_MODE_FB_MODIFIERS;
=20
-	do_or_die(__kms_addfb(fb->fd, fb->gem_handle,
-			      fb->width, fb->height,
-			      fb->drm_format, fb->modifier,
-			      fb->strides, fb->offsets, fb->num_planes, flags,
-			      &fb->fb_id));
+	memset(handles, fb->gem_handle, fb->num_planes);
+	memset(modifiers, modifier, fb->num_planes);
+	do_or_die(drmModeAddFB2WithModifiers(fb->fd, fb->width, fb->height,
+					     fb->drm_format, handles,
+					     fb->strides, fb->offsets,
+					     modifiers, &fb->fb_id, flags));
=20
 	return fb->fb_id;
 }
diff --git a/lib/ioctl_wrappers.c b/lib/ioctl_wrappers.c
index 280fdd62..0f00971d 100644
--- a/lib/ioctl_wrappers.c
+++ b/lib/ioctl_wrappers.c
@@ -1453,36 +1453,3 @@ void igt_require_fb_modifiers(int fd)
 {
 	igt_require(igt_has_fb_modifiers(fd));
 }
-
-int __kms_addfb(int fd, uint32_t handle,
-		uint32_t width, uint32_t height,
-		uint32_t pixel_format, uint64_t modifier,
-		uint32_t strides[4], uint32_t offsets[4],
-		int num_planes, uint32_t flags, uint32_t *buf_id)
-{
-	struct drm_mode_fb_cmd2 f;
-	int ret, i;
-
-	if (flags & DRM_MODE_FB_MODIFIERS)
-		igt_require_fb_modifiers(fd);
-
-	memset(&f, 0, sizeof(f));
-
-	f.width  =3D width;
-	f.height =3D height;
-	f.pixel_format =3D pixel_format;
-	f.flags =3D flags;
-
-	for (i =3D 0; i < num_planes; i++) {
-		f.handles[i] =3D handle;
-		f.modifier[i] =3D modifier;
-		f.pitches[i] =3D strides[i];
-		f.offsets[i] =3D offsets[i];
-	}
-
-	ret =3D igt_ioctl(fd, DRM_IOCTL_MODE_ADDFB2, &f);
-
-	*buf_id =3D f.fb_id;
-
-	return ret < 0 ? -errno : ret;
-}
diff --git a/lib/ioctl_wrappers.h b/lib/ioctl_wrappers.h
index 03211c97..4afc3e09 100644
--- a/lib/ioctl_wrappers.h
+++ b/lib/ioctl_wrappers.h
@@ -209,17 +209,6 @@ struct local_drm_mode_fb_cmd2 {
 bool igt_has_fb_modifiers(int fd);
 void igt_require_fb_modifiers(int fd);
=20
-/**
- * __kms_addfb:
- *
- * Creates a framebuffer object.
- */
-int __kms_addfb(int fd, uint32_t handle,
-		uint32_t width, uint32_t height,
-		uint32_t pixel_format, uint64_t modifier,
-		uint32_t strides[4], uint32_t offsets[4],
-		int num_planes, uint32_t flags, uint32_t *buf_id);
-
 /**
  * to_user_pointer:
  *
diff --git a/tests/kms_available_modes_crc.c b/tests/kms_available_modes_cr=
c.c
index 50b5522a..9e5f1fd5 100644
--- a/tests/kms_available_modes_crc.c
+++ b/tests/kms_available_modes_crc.c
@@ -172,9 +172,10 @@ static bool setup_fb(data_t *data, igt_output_t *outpu=
t, igt_plane_t *plane,
 {
 	drmModeModeInfo *mode;
 	uint64_t w, h;
+	uint32_t handles[4] =3D {};
+	uint64_t modifiers[4] =3D {};
 	signed ret, gemsize =3D 0;
 	unsigned tile_width, tile_height;
-	int num_planes =3D 1;
 	uint64_t tiling;
 	int bpp =3D 0;
 	int i;
@@ -225,10 +226,13 @@ static bool setup_fb(data_t *data, igt_output_t *outp=
ut, igt_plane_t *plane,
=20
 	igt_assert_eq(ret, 0);
=20
-	ret =3D __kms_addfb(data->gfx_fd, data->gem_handle, w, h,
-			  format, tiling, data->fb.strides, data->fb.offsets,
-			  num_planes, LOCAL_DRM_MODE_FB_MODIFIERS,
-			  &data->fb.fb_id);
+	memset(handles, data->gem_handle, 1);
+	memset(modifiers, tiling, 1);
+	ret =3D drmModeAddFB2WithModifiers(data->gfx_fd, w, h, format,
+					 handles, data->fb.strides,
+					 data->fb.offsets, modifiers,
+					 &data->fb.fb_id,
+					 LOCAL_DRM_MODE_FB_MODIFIERS);
=20
 	if(ret < 0) {
 		igt_info("Creating fb for format %s failed, return code %d\n",
diff --git a/tests/kms_draw_crc.c b/tests/kms_draw_crc.c
index ea14db9a..507e6a7c 100644
--- a/tests/kms_draw_crc.c
+++ b/tests/kms_draw_crc.c
@@ -155,17 +155,19 @@ static void get_method_crc(enum igt_draw_method metho=
d, uint32_t drm_format,
=20
 static bool format_is_supported(uint32_t format, uint64_t modifier)
 {
-	uint32_t gem_handle, fb_id;
+	uint32_t gem_handle, fb_id, handles[4] =3D {};
 	unsigned int offsets[4] =3D {};
 	unsigned int strides[4] =3D {};
+	uint64_t modifiers[4] =3D {};
 	int ret;
=20
 	gem_handle =3D igt_create_bo_with_dimensions(drm_fd, 64, 64,
 						   format, modifier,
 						   0, NULL, &strides[0], NULL);
-	ret =3D  __kms_addfb(drm_fd, gem_handle, 64, 64,
-			   format, modifier, strides, offsets, 1,
-			   LOCAL_DRM_MODE_FB_MODIFIERS, &fb_id);
+	memset(handles, gem_handle, 1);
+	ret =3D drmModeAddFB2WithModifiers(drm_fd, 64, 64, format, handles,
+					 strides, offsets, modifiers, &fb_id,
+					 LOCAL_DRM_MODE_FB_MODIFIERS);
 	drmModeRmFB(drm_fd, fb_id);
 	gem_close(drm_fd, gem_handle);
=20
diff --git a/tests/prime_vgem.c b/tests/prime_vgem.c
index 09e3373b..286957e8 100644
--- a/tests/prime_vgem.c
+++ b/tests/prime_vgem.c
@@ -761,6 +761,7 @@ static void test_flip(int i915, int vgem, unsigned hang)
 	for (int i =3D 0; i < 2; i++) {
 		uint32_t strides[4] =3D {};
 		uint32_t offsets[4] =3D {};
+		uint32_t handles[4] =3D {};
 		int fd;
=20
 		bo[i].width =3D mode->hdisplay;
@@ -776,12 +777,13 @@ static void test_flip(int i915, int vgem, unsigned ha=
ng)
 		strides[0] =3D bo[i].pitch;
=20
 		/* May skip if i915 has no displays */
-		igt_require(__kms_addfb(i915, handle[i],
-					bo[i].width, bo[i].height,
-					DRM_FORMAT_XRGB8888, I915_TILING_NONE,
-					strides, offsets, 1,
-					LOCAL_DRM_MODE_FB_MODIFIERS,
-					&fb_id[i]) =3D=3D 0);
+		memset(handles, handle[i],1);
+		igt_require(drmModeAddFB2WithModifiers(i915, bo[i].width, bo[i].height,
+						       DRM_FORMAT_XRGB8888,
+						       handles, strides, offsets,
+						       I915_TILING_NONE, &fb_id[i],
+						       LOCAL_DRM_MODE_FB_MODIFIERS) =3D=3D 0);
+
 		igt_assert(fb_id[i]);
 	}
=20
--=20
2.21.0

--dlulvy3vwqzgcvoq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAlzh4BMACgkQWJzP/com
vP/iZRAArqgDnM2Q2Gm2Ep9b9aFS431U3ifNQWTewmXzZK4c1Yh8k1BL8eGYcXyz
qwEUGq9idQIFSyYV9aMKGKf5gMBQWeqjfrHnL021xZn94K3dkXIb+dAlG3/OsAl1
HC5XO/z9X2Mf+VeE6q0IuGJY0QSsl7PL8q0mpRv4a9oumJjpfpQ/SlJXI2STUiCh
d7ZeFc+HBr312IgAw5hc3XPNk6sUbxdN67TcosHb25WjhJ2Il0Mby4idLnW7Secg
BOZKr/FOVu0zkbuoCy4TYnE+4ZZJ95/ryRsQbqxXETGuDO2D+q/CyAHbDr1qw3p3
j5PRIbSEdBOdE9BkDctuz5by26QD5ca1iSura9h0cBM1T42GFnxMnlFzcRkhme9e
SuhJP0SHb81lm+4xU6d6ysGY1sny01ZTuDrKKd785NwVNM13N0vxZMU9Str6AT6U
yRAC21B1o76PG4mxzqecLufSqjPM2TUu7OTenxtCXLaY6Q7t+HptLrBjozJbB5G4
B9QZ3gCZ7/LhHI0foegtFJpSu30xlIUGRx/BxUhrc+2Bi+cKV/HIBVtMCuRnS+Va
5qR9QZXaH45NEBvSg16SMD9eeDU6mfHB/355WqdavXOFSW7zTR6FFmjAhHNfcRvL
BrurZ2xqFFkloLK9fMDG6XgujLV0VF7M/4AGrdhWSJo36vMt2V8=
=d3Ag
-----END PGP SIGNATURE-----

--dlulvy3vwqzgcvoq--

--===============1181370717==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1181370717==--
