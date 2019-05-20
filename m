Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC0B2297A
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 02:10:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01B938918F;
	Mon, 20 May 2019 00:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com
 [IPv6:2607:f8b0:4864:20::841])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A60BA8916D;
 Mon, 20 May 2019 00:10:01 +0000 (UTC)
Received: by mail-qt1-x841.google.com with SMTP id t1so14326015qtc.12;
 Sun, 19 May 2019 17:10:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=61Vz32bBmwGoU/sz/BVn9XAegcRE1ezI3xKDaadgBzc=;
 b=YlRfcF7JoHcG8+7nbSXRLw5CUUKmEjsLe4sw0ClY4l3K0/5Z1s/nQCCE98GxcxWhCe
 VX9n7oT4VonNFTOS960KOG8rU+jlMWR1tYXIhd5ue+m7MUBEW2Qr5+Fnilp9wPQdn9yt
 GT9SDV2zXJS74z+Dh80ZH6GSu5rGYl1V8auJOX/nFSXwWX0nHuh6+Yt7n0puXZn7CfHs
 GSJhWfTnuFFoTazgRQ8ZUVyr96pVWh3GsBzOEUgGX8im1YCBASvK009SMSzuer9uR+il
 9DF2Y1dQuCAT3aWbInBdmgccA10tuiPFdyeWa3tJRg/VUtGPW4YZ0mL+2rHhLX34oyMr
 gNvw==
X-Gm-Message-State: APjAAAX+Yuf7ddnQ/W0KRM5/DDWixgiuxyWNUXwXUd8+pc1yPC6KyP/p
 2fxiwIfqzE6BzkDlHMRSh+s=
X-Google-Smtp-Source: APXvYqya7VypmabaGXRxKsfawbxqDkVGUwb1NZkVXWuudEPPximcja1incqcCrI9rwBgeu9c8fgbFg==
X-Received: by 2002:a0c:d96c:: with SMTP id t41mr46930385qvj.232.1558311000434; 
 Sun, 19 May 2019 17:10:00 -0700 (PDT)
Received: from smtp.gmail.com ([187.121.151.151])
 by smtp.gmail.com with ESMTPSA id f10sm2703514qkh.23.2019.05.19.17.09.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 19 May 2019 17:09:59 -0700 (PDT)
Date: Sun, 19 May 2019 21:09:55 -0300
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: Petri Latvala <petri.latvala@intel.com>,
 Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190520000955.qhgzmoianlvcuzgz@smtp.gmail.com>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent;
 bh=61Vz32bBmwGoU/sz/BVn9XAegcRE1ezI3xKDaadgBzc=;
 b=Zzp1h2tbl64plEpYZAObE7hKQ8PGi6lAL4hwuzaAhMqzz8ogRuE+uwMMsfkTUAXqNB
 a+Uq2QSn3bYNxuxj8BO3j2emR5g02q1YEJRJv8Srdxc82T9U5bI071CoIpMDhNmT1Kxi
 ntJDH6iPIM6mBA5DaCz/VJjzkEFPdv6yTYWVzoZgEx3E5L3WKvG9q6V/K418pzUi8jrq
 o4slyi4GMLm4NcGz5F4FM3aMQ3UYu2xy6IaYefW4pEwKDDwbx4gzjrrqxW+In711l9V7
 lWgTB6z2H/Gs2B6x233ChwhJFdrVYUcdZAiZT6gmjS1uQxX0sp0I89iO0qn/LsazwxKz
 Bydg==
Subject: [Intel-gfx] [RESEND PATCH V7 i-g-t] tests/kms_flip: Skip VBlank
 tests in modules without VBlank
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
Content-Type: multipart/mixed; boundary="===============1442204951=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1442204951==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f3eynezcf2sclown"
Content-Disposition: inline


--f3eynezcf2sclown
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The kms_flip test relies on VBlank support, and this situation may
exclude some virtual drivers to take advantage of this set of tests.
This commit adds a mechanism that checks if a module has VBlank. If the
target module has VBlank support, kms_flip will run all the VBlank
tests; otherwise, the VBlank tests will be skipped. Additionally, this
commit improves the test coverage by checks if the function
drmWaitVBlank() returns EOPNOTSUPP (i.e., no VBlank support).

V6: Set errno to zero before call drmWaitVBlank() (Chris Wilson)

V5: Drop the DRM_VBLANK_NEXTONMISS (Chris Wilson)

V4: Replace DRM_VBLANK_ABSOLUTE by DRM_VBLANK_RELATIVE and
DRM_VBLANK_NEXTONMISS

V3: Add documentation (Daniel Vetter)

V2: Add new branch coverage to check if VBlank is enabled or not and
update commit message

V1: Chris Wilson
  - Change function name from igt_there_is_vblank to kms_has_vblank
  - Move vblank function check from igt_aux to igt_kms
  - Utilizes memset in dummy_vbl variable
  - Directly return the result of drmWaitVBlank()

Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
---
 lib/igt_kms.c    | 21 +++++++++++++++++++++
 lib/igt_kms.h    |  2 ++
 tests/kms_flip.c | 22 ++++++++++++++++++++++
 3 files changed, 45 insertions(+)

diff --git a/lib/igt_kms.c b/lib/igt_kms.c
index df9aafd2..ca3073a0 100644
--- a/lib/igt_kms.c
+++ b/lib/igt_kms.c
@@ -1656,6 +1656,27 @@ void igt_assert_plane_visible(int fd, enum pipe pipe=
, int plane_index, bool visi
 	igt_assert_eq(visible, visibility);
 }
=20
+/**
+ * kms_has_vblank:
+ * @fd: DRM fd
+ *
+ * Get the VBlank errno after an attempt to call drmWaitVBlank(). This
+ * function is useful for checking if a driver has support or not for VBla=
nk.
+ *
+ * Returns: true if target driver has VBlank support, otherwise return fal=
se.
+ */
+bool kms_has_vblank(int fd)
+{
+	drmVBlank dummy_vbl;
+
+	memset(&dummy_vbl, 0, sizeof(drmVBlank));
+	dummy_vbl.request.type =3D DRM_VBLANK_RELATIVE;
+
+	errno =3D 0;
+	drmWaitVBlank(fd, &dummy_vbl);
+	return (errno !=3D EOPNOTSUPP);
+}
+
 /*
  * A small modeset API
  */
diff --git a/lib/igt_kms.h b/lib/igt_kms.h
index 38bdc08f..b0ff79ab 100644
--- a/lib/igt_kms.h
+++ b/lib/igt_kms.h
@@ -230,6 +230,8 @@ void kmstest_wait_for_pageflip(int fd);
 unsigned int kmstest_get_vblank(int fd, int pipe, unsigned int flags);
 void igt_assert_plane_visible(int fd, enum pipe pipe, int plane_index, boo=
l visibility);
=20
+bool kms_has_vblank(int fd);
+
 /*
  * A small modeset API
  */
diff --git a/tests/kms_flip.c b/tests/kms_flip.c
index 8c17c8da..4d1bf69b 100755
--- a/tests/kms_flip.c
+++ b/tests/kms_flip.c
@@ -71,6 +71,7 @@
 #define TEST_SUSPEND		(1 << 26)
 #define TEST_BO_TOOBIG		(1 << 28)
=20
+#define TEST_NO_VBLANK		(1 << 29)
 #define TEST_BASIC		(1 << 30)
=20
 #define EVENT_FLIP		(1 << 0)
@@ -126,6 +127,18 @@ struct event_state {
 	int seq_step;
 };
=20
+static bool vblank_dependence(int flags)
+{
+	int vblank_flags =3D TEST_VBLANK | TEST_VBLANK_BLOCK |
+			   TEST_VBLANK_ABSOLUTE | TEST_VBLANK_EXPIRED_SEQ |
+			   TEST_CHECK_TS | TEST_VBLANK_RACE;
+
+	if (flags & vblank_flags)
+		return true;
+
+	return false;
+}
+
 static float timeval_float(const struct timeval *tv)
 {
 	return tv->tv_sec + tv->tv_usec / 1000000.0f;
@@ -1176,6 +1189,7 @@ static void run_test_on_crtc_set(struct test_output *=
o, int *crtc_idxs,
 	unsigned bo_size =3D 0;
 	uint64_t tiling;
 	int i;
+	bool vblank =3D true;
=20
 	switch (crtc_count) {
 	case RUN_TEST:
@@ -1259,6 +1273,14 @@ static void run_test_on_crtc_set(struct test_output =
*o, int *crtc_idxs,
 	}
 	igt_assert(fb_is_bound(o, o->fb_ids[0]));
=20
+	vblank =3D kms_has_vblank(drm_fd);
+	if (!vblank) {
+		if (vblank_dependence(o->flags))
+			igt_require_f(vblank, "There is no VBlank\n");
+		else
+			o->flags |=3D TEST_NO_VBLANK;
+	}
+
 	/* quiescent the hw a bit so ensure we don't miss a single frame */
 	if (o->flags & TEST_CHECK_TS)
 		calibrate_ts(o, crtc_idxs[0]);
--=20
2.21.0

--f3eynezcf2sclown
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAlzh8FIACgkQWJzP/com
vP9WgxAAgs2+C0r/DU27JUw+Gz39dlC3VwSgg9u9gv7+Dswii+lxF3LCvTU/EO3+
+avOVI4Lj0xMw6fdxgOeq+l/1XOtiGL/F0Rnt9ilNW57C712hldx1nUuwgB7Mom6
MOnrXk8boY26aaMGIpv0jOvBL0/FzXb5morWruFkALsE6+b6ziUJPaL1NlX0Xpj1
WLuNRp5f9R5IN+Yl8oouo2o5O5MRbDO8yRPt/8cm6GS24vgIqRXqWhMJ3JB2Lnjy
hGP5RcEFGD9vd3q2sdgILccSIxGElqRk0+BVsUGoSAU+4Iw1d+9kX7HLpIPIIEfi
1oCAtxwoYnS0Z9lxYZ6s/3RqT0nbb1XCyy86OS3tRhYIkMPLEw7zuCHTkCX8Nbwb
08T29zxYG8dbZ+czgsV+x7cPl4qEcOAqYYnRj3CU2AdCVG79mjnJM4XO6milMuwM
9i1/fRZApQt/8rC6fZD2bnxrxL91fTQ5hgueUuI+tvTurU/r3fHLG3Q0ig1gtYzI
gtCZ5ipm8UJmcjoB9zPIel7PeWKLkJLpsHYfrSEkFx0GDqBN/+ol0Wqa1GI+M0Uo
90pU4PLSGZ5RRUOikkwi6+ypt7gcfLoU0v0zgBU6t3wb5tg6xSH3CZTUD9ZaSLyD
gKyBD7Us3djEYV8uEhRUCseNKZYTi12aDC70efUZkrigWih8Hf8=
=Pey5
-----END PGP SIGNATURE-----

--f3eynezcf2sclown--

--===============1442204951==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1442204951==--
