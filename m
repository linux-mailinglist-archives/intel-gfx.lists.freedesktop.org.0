Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12FAA43233
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 04:19:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DC5089296;
	Thu, 13 Jun 2019 02:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8443891AC;
 Thu, 13 Jun 2019 02:19:08 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id z25so28778287edq.9;
 Wed, 12 Jun 2019 19:19:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cllX64Dw/hhsJxsGolxrZB/NK6wL+pKC8OwL/popBDg=;
 b=amYGgptFW3ZkFx+ONyFSMz6BI9u7/rpoyQT8fWQlufkMvAyPPRhidcl9aq9L26QpBN
 peiuzPNhS/dugOu1zsRZfFwHjIKHV3Yg03GJhJf8DENSdaaJd7R/nklQMg7/4uxQLzzE
 pb8j8rFQgpAGou7cdInfFVEofV4JlwpKY7H6ZA/8bZaV45b6LRLI6UM9IQkiCJ40ftrw
 8BOJPSRlHXb27sYAxDbXvZM+ra9QLSEfcTuc7jPehUkznUIp0viGbjTJjhq3y36d9mKA
 DZcFBpkIUpF/hscGVdm3jXRj8imTtOmpSG1VAre/5Y1K9hXi1XXNUA/fu13Ex0UGzZOE
 0Tgw==
X-Gm-Message-State: APjAAAVZcA82qnHH4jAZnK5ReON5me8XPtAHLaac7aiX9NpU6Su6WF9r
 843DrQj3sCAZXEIT3WBlXWJuU9y7bvY=
X-Google-Smtp-Source: APXvYqwkh7fTXUX7EguW0zgc5hIJDyb7jQiS2JvgIheDce9Dsfdue7tp1j816Rdy8L4Jp/Sm1Gy1sA==
X-Received: by 2002:a50:b3d0:: with SMTP id t16mr22876994edd.158.1560392347369; 
 Wed, 12 Jun 2019 19:19:07 -0700 (PDT)
Received: from smtp.gmail.com ([187.121.151.146])
 by smtp.gmail.com with ESMTPSA id s11sm270611ejo.51.2019.06.12.19.19.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 19:19:06 -0700 (PDT)
From: Brian Starkey <rodrigosiqueiramelo@gmail.com>
X-Google-Original-From: Brian Starkey <brian.starkey@arm.com>
Date: Wed, 12 Jun 2019 23:19:01 -0300
To: Brian Starkey <Brian.Starkey@arm.com>, Liviu Dudau <Liviu.Dudau@arm.com>,
 Petri Latvala <petri.latvala@intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
Message-ID: <454e4369191d599d038196429af4a242f4f0e5fb.1560374714.git.rodrigosiqueiramelo@gmail.com>
References: <cover.1560374714.git.rodrigosiqueiramelo@gmail.com>
MIME-Version: 1.0
In-Reply-To: <cover.1560374714.git.rodrigosiqueiramelo@gmail.com>
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cllX64Dw/hhsJxsGolxrZB/NK6wL+pKC8OwL/popBDg=;
 b=CFS9TcjTapFrv7T3VuvLMYioyrrr+OHnu9iOt2u9fIWSbkLHDYStFqjzm6JNl98DRP
 hFK7r8aSPxp4W88BCMkFYa3i0XoUycvhgiiDcbazRi+2XOiRXU768Zk8d9b8IXG2/WXC
 qO/IHmtVTvoNQwKb5uW1V/qdHCaVu/omk+h+aXnMZEaJBJJZxkuvwL0meuoZYWNn3eot
 PA+pLrLfoazvb3lbJNXO6oJ6M6BadSb+agnJbyZs1MazkvAzEGug5vaxFk0ONBeOmNO4
 IXPHbq42VPVIhcbM9b1b0TID9FwcRGcUR5WvjXMZvQy8eHpWbXP4gdL8BljKBTYu6/K+
 mkew==
Subject: [Intel-gfx] [PATCH V6 i-g-t 6/6] kms_writeback: Add tests using a
 cloned output
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
Content-Type: multipart/mixed; boundary="===============0650274070=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0650274070==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bfu7rleetth4ub25"
Content-Disposition: inline


--bfu7rleetth4ub25
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Update the connector search to also optionally attempt to find a
non-writeback connector to clone to.

Add a subtest which is the same as writeback-check-output, but also
clones to the second connector.

Signed-off-by: Brian Starkey <brian.starkey@arm.com>
[rebased and addressed comments by Maarten]
Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
---
 tests/kms_writeback.c | 64 +++++++++++++++++++++++++++++++++++++++----
 1 file changed, 59 insertions(+), 5 deletions(-)

diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
index 0f20dadd..ae536bbf 100644
--- a/tests/kms_writeback.c
+++ b/tests/kms_writeback.c
@@ -51,7 +51,8 @@ static drmModePropertyBlobRes *get_writeback_formats_blob=
(igt_output_t *output)
 	return blob;
 }
=20
-static bool check_writeback_config(igt_display_t *display, igt_output_t *o=
utput)
+static bool check_writeback_config(igt_display_t *display, igt_output_t *o=
utput,
+				   int pipe, igt_output_t **clone)
 {
 	igt_fb_t input_fb, output_fb;
 	igt_plane_t *plane;
@@ -91,6 +92,30 @@ static bool check_writeback_config(igt_display_t *displa=
y, igt_output_t *output)
=20
 	ret =3D igt_display_try_commit_atomic(display, DRM_MODE_ATOMIC_TEST_ONLY |
 					    DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);
+	if (!ret && clone) {
+		/* Try and find a clone */
+		int i, newret;
+		*clone =3D NULL;
+
+		for (i =3D 0; i < display->n_outputs; i++) {
+			igt_output_t *second_output =3D &display->outputs[i];
+			if (output !=3D second_output &&
+			    igt_pipe_connector_valid(pipe, second_output)) {
+
+				igt_output_clone_pipe(second_output, pipe);
+				igt_output_override_mode(output, &override_mode);
+				newret =3D igt_display_try_commit_atomic(display, DRM_MODE_ATOMIC_TEST=
_ONLY |
+								       DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);
+				igt_output_set_pipe(second_output, PIPE_NONE);
+				igt_debug("try_commit_atomic clone returned %d\n", newret);
+				if (!newret) {
+					*clone =3D second_output;
+					igt_debug("Selected clone %s\n", (*clone)->name);
+					break;
+				}
+			}
+		}
+	}
 	igt_plane_set_fb(plane, NULL);
 	igt_remove_fb(display->drm_fd, &input_fb);
 	igt_remove_fb(display->drm_fd, &output_fb);
@@ -98,7 +123,8 @@ static bool check_writeback_config(igt_display_t *displa=
y, igt_output_t *output)
 	return !ret;
 }
=20
-static igt_output_t *kms_writeback_get_output(igt_display_t *display)
+static igt_output_t *kms_writeback_get_output(igt_display_t *display, enum=
 pipe *pipe,
+					      igt_output_t **clone)
 {
 	int i;
=20
@@ -114,10 +140,16 @@ static igt_output_t *kms_writeback_get_output(igt_dis=
play_t *display)
 		for (j =3D 0; j < igt_display_get_n_pipes(display); j++) {
 			igt_output_set_pipe(output, j);
=20
-			if (check_writeback_config(display, output)) {
+			if (check_writeback_config(display, output, j, clone)) {
 				igt_debug("Using connector %u:%s on pipe %d\n",
 					  output->config.connector->connector_id,
 					  output->name, j);
+				if (clone && *clone)
+					igt_debug("Cloning to connector %u:%s\n",
+						  (*clone)->config.connector->connector_id,
+						  (*clone)->name);
+				if (pipe)
+					*pipe =3D j;
 				return output;
 			}
 		}
@@ -335,10 +367,11 @@ static void writeback_check_output(igt_output_t *outp=
ut, igt_plane_t *plane,
 igt_main
 {
 	igt_display_t display;
-	igt_output_t *output;
+	igt_output_t *output, *clone;
 	igt_plane_t *plane;
 	igt_fb_t input_fb;
 	drmModeModeInfo mode;
+	enum pipe pipe;
 	int ret;
=20
 	memset(&display, 0, sizeof(display));
@@ -353,7 +386,7 @@ igt_main
=20
 		igt_require(display.is_atomic);
=20
-		output =3D kms_writeback_get_output(&display);
+		output =3D kms_writeback_get_output(&display, &pipe, &clone);
 		igt_require(output);
=20
 		if (output->use_override_mode)
@@ -431,6 +464,27 @@ igt_main
 		igt_remove_fb(display.drm_fd, &output_fb);
 	}
=20
+	igt_subtest("writeback-check-output-clone") {
+		igt_fb_t output_fb;
+
+		igt_require(clone);
+
+		ret =3D igt_create_fb(display.drm_fd, mode.hdisplay, mode.vdisplay,
+				    DRM_FORMAT_XRGB8888,
+				    igt_fb_mod_to_tiling(0),
+				    &output_fb);
+		igt_require(ret > 0);
+
+		igt_output_clone_pipe(clone, pipe);
+		igt_output_override_mode(clone, &mode);
+
+		writeback_check_output(output, plane, &input_fb, &output_fb);
+
+		igt_output_set_pipe(clone, PIPE_NONE);
+
+		igt_remove_fb(display.drm_fd, &output_fb);
+	}
+
 	igt_fixture {
 		igt_remove_fb(display.drm_fd, &input_fb);
 		igt_display_fini(&display);
--=20
2.21.0


--bfu7rleetth4ub25
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl0BspQACgkQWJzP/com
vP9T4g//Ro2NtAwqtfFghWibAdiM26gbDHRD3cYMuXm3M29Zh1VEjCZXNLrbygHL
RlB8kbUf1ZcaHr94+3rZgke53C0Aq8xMvm8mF3aqQk6b4oJmNHwVzY3RnB3iXpuQ
KCMl8z1tMJv3b8CAa9hvJfxCAcej23EDUYirw+AtvfZjwp3OO3vmi7E5CR2Mpe7g
VBnPqkWWC3HOzK0+HurUbfEzEqXKrUBHHquWYQU4ltrc0wWRq3If+ZIOM3JUfetJ
gjTOrX8OIFyjvyui4xe7qw8GC2G9HrgECLb5XxGZmJ+EJUlzIqZPdrLNqlVdNVpR
rimfaMnSLjKexyviiAwr2TuOsxWcLPWUzd55SD6xu6lw2XYE6oAGD/MXyA4HmDMk
mBmGnLin/UgKTm9vGWFtkshduoBJiOyFXK185x4nT6adFI8zb6LhAIuYDHA/EGZ9
HFCqTPOoF+MXoHf8sgdbTMFVwTDvxmcc50nKK/Y7nI2ml1waq8QspxHWHZN/p+nH
2uZAfRtlevM0L6fi89u38QkLQlM198Yr0fkVQ8L8HYaENG64KKQ8SbC5nNiUcpT7
DTXbJSrX9PZzCMSUdeJDPFdjabLYXKTtYU6MwqWMTt+tRtMKFgphha+XVDfR7xcC
f50GSJVvkcvQQJu8tbfBD67kXdUUS99ZRKEHMKy6+9Mc9O/l2z0=
=aU7V
-----END PGP SIGNATURE-----

--bfu7rleetth4ub25--

--===============0650274070==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0650274070==--
