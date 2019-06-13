Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E82D44322F
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 04:18:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33622891C7;
	Thu, 13 Jun 2019 02:17:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C202A891AC;
 Thu, 13 Jun 2019 02:17:57 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id g13so28764794edu.5;
 Wed, 12 Jun 2019 19:17:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Gug75hIH0ZhFtBga5UuBgX8YCo0+zu4rEPYsZ6NirMw=;
 b=OKznpAg39BjUPWhmWFJVNeFXZxz+Kp9Rlf678Ftzw77Iy14HnqpH0zml6qg+7Sb4Pi
 riZ42njE+V8wDH8shXctg5S1W5dseqK0GMm4nueDnjmlQvenDhnASSa8urUnIqnr+5Fi
 1y4+S5i98gQft4FWuG5qoFtWUYpN0kn4+TIM5Kq/aI1ZGCG2rWKfWKMkTl7wGoRyZY8Z
 o9TYWGGWFbaQsOaOXsypORQgATaJv7Shpv6K0YVtSOiTg1/joTdPF52Ttp0ZAIHbS1xZ
 WLmQOB69vU7yp1pO5vdJmbxhTg1UbKtidlOXpfdbhpk77ZEXDrhMihyREJmlVOoF75pu
 MbEQ==
X-Gm-Message-State: APjAAAWt5IuR6xvYOXknLMSi8ZoDLr0DHwtFTDaLyKhRjA9dXm+IdXZw
 UbPOhg+WPuDBuHQGjxdjO5wTg4jZB+Q=
X-Google-Smtp-Source: APXvYqxJktR4JBLopWJKzFZPSxAIzh3dY7F1eE76Jx98Bc00DjepR2KJlMKk2i2KFB+dONBLpfvpaA==
X-Received: by 2002:a17:906:37c2:: with SMTP id
 o2mr45282460ejc.209.1560392276398; 
 Wed, 12 Jun 2019 19:17:56 -0700 (PDT)
Received: from smtp.gmail.com ([187.121.151.146])
 by smtp.gmail.com with ESMTPSA id n14sm278774ejb.14.2019.06.12.19.17.52
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 19:17:55 -0700 (PDT)
From: Brian Starkey <rodrigosiqueiramelo@gmail.com>
X-Google-Original-From: Brian Starkey <brian.starkey@arm.com>
Date: Wed, 12 Jun 2019 23:17:50 -0300
To: Brian Starkey <Brian.Starkey@arm.com>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Petri Latvala <petri.latvala@intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
Message-ID: <dd44be927bff3b0b38aa4e7c31b639a5d28a5213.1560374714.git.rodrigosiqueiramelo@gmail.com>
References: <cover.1560374714.git.rodrigosiqueiramelo@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1560374714.git.rodrigosiqueiramelo@gmail.com>
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Gug75hIH0ZhFtBga5UuBgX8YCo0+zu4rEPYsZ6NirMw=;
 b=Aj2gzLYreFpo7BA851WQ/C5dCQTvbLwEIzLOGUEWgMETWzlKKjiu2wWKsJ9xaLFcih
 NjYYwXhZ0eSBJLkpCqpSVnOs5bykWZZmtkMoi2JkB9RkgsLtSzYrjNveM5LWy4fq9L3W
 XfUGX7RHu9K3635xarAe7UADjULpn8yWJMFGppf4bYUyoHSn2CB2iS8FYt9Y9PVLoIbk
 fR/9IFml4o5q3VA2u/TWFaZTO9Ztch/IdNAtKOHckoZK4EiuYnsMvYSVC6idVI2/X1RU
 IG+9Cu0WCYJ3KdH5Hpk0JBByxsygUztNM0H3aRcqY8cUi3d2Chm+/E/hCSrmKwc3KBVq
 cjMg==
Subject: [Intel-gfx] [PATCH V6 i-g-t 4/6] kms_writeback: Add
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
Content-Type: multipart/mixed; boundary="===============2042002893=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============2042002893==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7ffjduoveexmepwm"
Content-Disposition: inline


--7ffjduoveexmepwm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Add a test which makes commits using the writeback connector, and
checks the output buffer hash to make sure it is/isn't written as
appropriate.

Signed-off-by: Brian Starkey <brian.starkey@arm.com>
---
 tests/kms_writeback.c | 124 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 124 insertions(+)

diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
index 66ef48a6..0f20dadd 100644
--- a/tests/kms_writeback.c
+++ b/tests/kms_writeback.c
@@ -30,6 +30,7 @@
 #include "igt.h"
 #include "igt_core.h"
 #include "igt_fb.h"
+#include "sw_sync.h"
=20
 static drmModePropertyBlobRes *get_writeback_formats_blob(igt_output_t *ou=
tput)
 {
@@ -221,6 +222,116 @@ static void writeback_fb_id(igt_output_t *output, igt=
_fb_t *valid_fb, igt_fb_t *
 	igt_assert(ret =3D=3D 0);
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
+	igt_assert(ret =3D=3D 0);
+	close(output->writeback_out_fence_fd);
+	output->writeback_out_fence_fd =3D -1;
+}
+
+static void writeback_sequence(igt_output_t *output, igt_plane_t *plane,
+				igt_fb_t *in_fb, igt_fb_t *out_fbs[], int n_commits)
+{
+	int i, color_idx =3D 0;
+	double in_fb_colors[2][3] =3D {
+		{ 1.0, 0.0, 0.0 },
+		{ 0.0, 1.0, 0.0 },
+	};
+	double clear_color[3] =3D { 1.0, 1.0, 1.0 };
+	igt_crc_t cleared_crc, out_expected;
+
+	for (i =3D 0; i < n_commits; i++, color_idx++) {
+		/* Change the input color each time */
+		fill_fb(in_fb, in_fb_colors[color_idx % 2]);
+
+		if (out_fbs[i]) {
+			igt_crc_t out_before;
+
+			/* Get the expected CRC */
+			fill_fb(out_fbs[i], in_fb_colors[color_idx % 2]);
+			igt_fb_get_crc(out_fbs[i], &out_expected);
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
+		if (i > 0 && out_fbs[i - 1] && (out_fbs[i] !=3D out_fbs[i - 1])) {
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
+	int ret;
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
+	ret =3D igt_create_fb(output_fb->fd, output_fb->width, output_fb->height,
+			    DRM_FORMAT_XRGB8888,
+			    igt_fb_mod_to_tiling(0),
+			    &second_out_fb);
+	igt_require(ret > 0);
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
@@ -307,6 +418,19 @@ igt_main
 		igt_remove_fb(display.drm_fd, &output_fb);
 	}
=20
+	igt_subtest("writeback-check-output") {
+		igt_fb_t output_fb;
+		ret =3D igt_create_fb(display.drm_fd, mode.hdisplay, mode.vdisplay,
+				    DRM_FORMAT_XRGB8888,
+				    igt_fb_mod_to_tiling(0),
+				    &output_fb);
+		igt_require(ret > 0);
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
2.21.0

--7ffjduoveexmepwm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl0Bsk4ACgkQWJzP/com
vP9YbQ/8CkadxKCRGthoySFWX5n5IFGacC3RWLce3LY6dkGpQFaBcI72sdUbHilE
wtCJYQ+Ymp9dvV8a5qqKFDCCgG/DSOJhBx68d2eOS7D+9Uiroih/ok7SRWHlJ8AM
ttvnZQlCzxGZrNZ/vpvWzfo8oLLANjuVuytQnVzgwRJe7W0RQmx43aICG+OCOPoh
H4Wkt3IXUYDc1+x22f5X91vZbvgO4u54Y09QE2nbrPkZchePrMQXxAHgceSwaHAq
fQkby74yTWJ/y+2wKHJbbS2CfBpENageFuympdNhdxjmZ7p2YP8IHj/xjhu+5edo
OKKUaJBUuuvqrucJc/mHWFK3yg8DHpCEbiyw//pgEvQKi33cBdcGRi+oEuF5NDHa
4Rks3pZsRWOEuxJDhNxRhU8PZiRT7isCKgmkEXtBA3ZSls0eUFveeT7FlADASTkE
RbJU6YFWxQNxj4/k7U7iQf9cumKVbdB591YYnnjruFk1gnQKCbUJINFv1VdGnwg4
bKYLHlRXm69TOHyz0dWn2qpBrH4luhwQqFuD4grpGtsYyPe2SXZtd5VxvEwO/4Xg
4zLElj4fGwmo6lBpV8vstSMtF6hPSoNMj3t5iyNln7IzRJ5ZNFvdvzx2MtGPDCPO
nEEgqmR0FNPv447AQnfHb0A4urpUhVMqNnKt22zOYiMuW9G3WEk=
=K9hN
-----END PGP SIGNATURE-----

--7ffjduoveexmepwm--

--===============2042002893==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============2042002893==--
