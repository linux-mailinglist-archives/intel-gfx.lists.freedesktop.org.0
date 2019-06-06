Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 897E5377D6
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 17:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01A9489804;
	Thu,  6 Jun 2019 15:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com
 [IPv6:2607:f8b0:4864:20::842])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02727897F6;
 Thu,  6 Jun 2019 15:28:48 +0000 (UTC)
Received: by mail-qt1-x842.google.com with SMTP id s57so3114575qte.8;
 Thu, 06 Jun 2019 08:28:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=y34ls3tqwDyg4BQbEJoosa8cS6/PvpAjRqSiMU/sUTw=;
 b=KcVfTqWuTK5B+VTGgWIZy9OT5wcKFNF5KdoKlVc7mk0K/c3YQJsiRWwJ7ODmM0H++d
 vIFpTJ3/A1ILmAgx3vbbH7zF1NrEMw3LUA93kL6EKTDnLp68U15B0Olu4YrajenZdPuD
 i/Rcqp+SH++JaNWE4RiLkGBddhb7cPeNs2MJy3fqAYe22DSA7HOOv7rRIHQNh6OWIfVf
 fBb0+guGxHHZCAPJLVjWDMKVq1PhtvCdEEg8nLk3WRpFMW4lHCM8HURvbaFh20NxNCv0
 FVCfyMqqQbKz/PZ4ZBXQszHX3p1MnyEbSdmqh4MgQb/btUoJ3LxwXdh/3mMsreicDmye
 ny5A==
X-Gm-Message-State: APjAAAVoY7KgytR1OJGUROfOzWaP1gMbDg/jcRIUeew2Ba26JpALtxAB
 vYrZKgRzbWYjjAVQYdEhfI0=
X-Google-Smtp-Source: APXvYqyuBGEjUbRTjZcI1oJf3gSNxZUjqwg61YZtxr7yqTePDw1dLgfzWLb7A3J4lAkwizjIf7jE/w==
X-Received: by 2002:a0c:add8:: with SMTP id x24mr40136234qvc.167.1559834928003; 
 Thu, 06 Jun 2019 08:28:48 -0700 (PDT)
Received: from smtp.gmail.com ([187.121.151.146])
 by smtp.gmail.com with ESMTPSA id r2sm1078490qtp.8.2019.06.06.08.28.44
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 08:28:47 -0700 (PDT)
Date: Thu, 6 Jun 2019 12:28:43 -0300
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: "Ser, Simon" <simon.ser@intel.com>
Message-ID: <20190606152843.ufyaksklmi5fmv7n@smtp.gmail.com>
References: <20190605023053.h7q2ei2b7gf2k5pn@smtp.gmail.com>
 <d6c1ad8d4c2e0b0710d005efb5bb7b18258736c3.camel@intel.com>
MIME-Version: 1.0
In-Reply-To: <d6c1ad8d4c2e0b0710d005efb5bb7b18258736c3.camel@intel.com>
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=y34ls3tqwDyg4BQbEJoosa8cS6/PvpAjRqSiMU/sUTw=;
 b=pAH3yP/fgSqyxVHLJ41r+Fa/c/I+vTMGyvBx0GCkzc57TxbGv3F6aUy2YpR2ZZD1AB
 5h+BB8xeyfGrvkSQgkOZzP2q6bkZEMiJVYPP329UdatPQmpJKOxcoX/DSbkCZOzafdRf
 7vJDnl8rGho46RXWOAtixWJBqKFvqHgYq3Vwzan8cPjmBT/DLksXceR9JOmDxvLKiL4v
 7wGmobE0HdKCI6KYB1vZr/y+mdZhIsRTdf6cBwDPk/IcFXHEA3GbVVvhBwUE5c9q66ga
 oppObEVqS6Jc8aI1CycmmJBi1eLnUtj8Rgt9hewYGbShGUuy8XI+xs6SRXpyMKpyrT/s
 x7Gg==
Subject: Re: [Intel-gfx] [PATCH V8 i-g-t] tests/kms_flip: Skip VBlank tests
 in modules without VBlank
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
Cc: "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1153051967=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1153051967==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zxwpitsvg7vn45jz"
Content-Disposition: inline


--zxwpitsvg7vn45jz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 06/06, Ser, Simon wrote:
> On Tue, 2019-06-04 at 23:30 -0300, Rodrigo Siqueira wrote:
> > The kms_flip test relies on VBlank support, and this situation may
> > exclude some virtual drivers to take advantage of this set of tests.
> > This commit adds a mechanism that checks if a module has VBlank. If the
> > target module has VBlank support, kms_flip will run all the VBlank
> > tests; otherwise, the VBlank tests will be skipped. Additionally, this
> > commit improves the test coverage by checks if the function
> > drmWaitVBlank() returns EOPNOTSUPP (i.e., no VBlank support).
> >=20
> > V7: Changes since V6
> >  - Skip TEST_DPMS with TEST_MODESET and TEST_EBUSY if the device does
> >    not support vblank
>=20
> Hmm, I'm not sure I understand this line. If I'm reading this correctly
> it refers to this line:
>=20
>     if (!(o->flags & (TEST_DPMS | TEST_MODESET | TEST_NO_VBLANK)))
>=20
> So the check was previously skipped on TEST_DPMS and TEST_MODESET. It's
> now skipped on TEST_NO_VBLANK too. So I'm a little confused with the
> changelog line: should it say "skip seq number checking it the device
> doesn't support vblank"?
>=20
> Am I missing something?
>=20
> Apart from this, the patch itself looks good to me.

Hi Simon,

Thank you for your review.

About the changelog message, I'll update it to:

  Skip seq number checking and busy flip if the device doesn't support vbla=
nk

Can I add your Reviewed-by before applying this patch?
=20
> > V6: Set errno to zero before call drmWaitVBlank() (Chris Wilson)
> >=20
> > V5: Drop the DRM_VBLANK_NEXTONMISS (Chris Wilson)
> >=20
> > V4: Replace DRM_VBLANK_ABSOLUTE by DRM_VBLANK_RELATIVE and
> > DRM_VBLANK_NEXTONMISS
> >=20
> > V3: Add documentation (Daniel Vetter)
> >=20
> > V2: Add new branch coverage to check if VBlank is enabled or not and
> > update commit message
> >=20
> > V1: Chris Wilson
> >   - Change function name from igt_there_is_vblank to kms_has_vblank
> >   - Move vblank function check from igt_aux to igt_kms
> >   - Utilizes memset in dummy_vbl variable
> >   - Directly return the result of drmWaitVBlank()
> >=20
> > Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
> > ---
> >  lib/igt_kms.c    | 21 +++++++++++++++++++++
> >  lib/igt_kms.h    |  2 ++
> >  tests/kms_flip.c | 24 +++++++++++++++++++++++-
> >  3 files changed, 46 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/lib/igt_kms.c b/lib/igt_kms.c
> > index d7d711a7..8a465f67 100644
> > --- a/lib/igt_kms.c
> > +++ b/lib/igt_kms.c
> > @@ -1673,6 +1673,27 @@ void igt_assert_plane_visible(int fd, enum pipe =
pipe, int plane_index, bool visi
> >  	igt_assert_eq(visible, visibility);
> >  }
> > =20
> > +/**
> > + * kms_has_vblank:
> > + * @fd: DRM fd
> > + *
> > + * Get the VBlank errno after an attempt to call drmWaitVBlank(). This
> > + * function is useful for checking if a driver has support or not for =
VBlank.
> > + *
> > + * Returns: true if target driver has VBlank support, otherwise return=
 false.
> > + */
> > +bool kms_has_vblank(int fd)
> > +{
> > +	drmVBlank dummy_vbl;
> > +
> > +	memset(&dummy_vbl, 0, sizeof(drmVBlank));
> > +	dummy_vbl.request.type =3D DRM_VBLANK_RELATIVE;
> > +
> > +	errno =3D 0;
> > +	drmWaitVBlank(fd, &dummy_vbl);
> > +	return (errno !=3D EOPNOTSUPP);
> > +}
> > +
> >  /*
> >   * A small modeset API
> >   */
> > diff --git a/lib/igt_kms.h b/lib/igt_kms.h
> > index 4ac28131..5b5cf274 100644
> > --- a/lib/igt_kms.h
> > +++ b/lib/igt_kms.h
> > @@ -229,6 +229,8 @@ void kmstest_wait_for_pageflip(int fd);
> >  unsigned int kmstest_get_vblank(int fd, int pipe, unsigned int flags);
> >  void igt_assert_plane_visible(int fd, enum pipe pipe, int plane_index,=
 bool visibility);
> > =20
> > +bool kms_has_vblank(int fd);
> > +
> >  /*
> >   * A small modeset API
> >   */
> > diff --git a/tests/kms_flip.c b/tests/kms_flip.c
> > index d7c1f9cf..2a158d97 100755
> > --- a/tests/kms_flip.c
> > +++ b/tests/kms_flip.c
> > @@ -71,6 +71,7 @@
> >  #define TEST_SUSPEND		(1 << 26)
> >  #define TEST_BO_TOOBIG		(1 << 28)
> > =20
> > +#define TEST_NO_VBLANK		(1 << 29)
> >  #define TEST_BASIC		(1 << 30)
> > =20
> >  #define EVENT_FLIP		(1 << 0)
> > @@ -126,6 +127,18 @@ struct event_state {
> >  	int seq_step;
> >  };
> > =20
> > +static bool vblank_dependence(int flags)
> > +{
> > +	int vblank_flags =3D TEST_VBLANK | TEST_VBLANK_BLOCK |
> > +			   TEST_VBLANK_ABSOLUTE | TEST_VBLANK_EXPIRED_SEQ |
> > +			   TEST_CHECK_TS | TEST_VBLANK_RACE | TEST_EBUSY;
> > +
> > +	if (flags & vblank_flags)
> > +		return true;
> > +
> > +	return false;
> > +}
> > +
> >  static float timeval_float(const struct timeval *tv)
> >  {
> >  	return tv->tv_sec + tv->tv_usec / 1000000.0f;
> > @@ -494,7 +507,7 @@ static void check_state(const struct test_output *o=
, const struct event_state *e
> >  	/* check only valid if no modeset happens in between, that increments=
 by
> >  	 * (1 << 23) on each step. This bounding matches the one in
> >  	 * DRM_IOCTL_WAIT_VBLANK. */
> > -	if (!(o->flags & (TEST_DPMS | TEST_MODESET)))
> > +	if (!(o->flags & (TEST_DPMS | TEST_MODESET | TEST_NO_VBLANK)))
> >  		igt_assert_f(es->current_seq - (es->last_seq + o->seq_step) <=3D 1UL=
 << 23,
> >  			     "unexpected %s seq %u, should be >=3D %u\n",
> >  			     es->name, es->current_seq, es->last_seq + o->seq_step);
> > @@ -1176,6 +1189,7 @@ static void run_test_on_crtc_set(struct test_outp=
ut *o, int *crtc_idxs,
> >  	unsigned bo_size =3D 0;
> >  	uint64_t tiling;
> >  	int i;
> > +	bool vblank =3D true;
> > =20
> >  	switch (crtc_count) {
> >  	case RUN_TEST:
> > @@ -1259,6 +1273,14 @@ static void run_test_on_crtc_set(struct test_out=
put *o, int *crtc_idxs,
> >  	}
> >  	igt_assert(fb_is_bound(o, o->fb_ids[0]));
> > =20
> > +	vblank =3D kms_has_vblank(drm_fd);
> > +	if (!vblank) {
> > +		if (vblank_dependence(o->flags))
> > +			igt_require_f(vblank, "There is no VBlank\n");
> > +		else
> > +			o->flags |=3D TEST_NO_VBLANK;
> > +	}
> > +
> >  	/* quiescent the hw a bit so ensure we don't miss a single frame */
> >  	if (o->flags & TEST_CHECK_TS)
> >  		calibrate_ts(o, crtc_idxs[0]);

--=20
Rodrigo Siqueira
https://siqueira.tech

--zxwpitsvg7vn45jz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAlz5MSoACgkQWJzP/com
vP+Gmg//YpjPTOS4SaZdrz63So1B3c7rZfC+YA+36UJMh/E2ST/222TvRAlpfTEb
Wf6rQ/nhkSbeC0VUuLoYd/KGH+ateiW1gOAwlCacBqofzCdtRwDpL14//efoltPz
7mXbVTkcOODWnyleaVtbubz5JaF7UOEB7ZsijbszJFlVdT/82DwNFWNoV4vjLXuW
+jWiVVY8/lZ8XAC65g6JGl5jXq0kbnPYzPMqc8rzRTqkx2KNENBqFd4fTfemFgWF
DJgNr8AbFf1oVWJ+T5fOnM5N5soXwEvHDkDP4OqRrh7g0/R/JpF1ZGa922AbWa+f
oT8vqacptgpY3DMt82mVfeIjaOXO+adcwHgDrlCpDFAQeYzcKkxdzfTkxZj8G0vX
K/SIjicIHZ/kajLkTbQIwUGY3ybQyzGhbiCxaWjHTJpp4kLDaHs/HIgyAQhn4nhv
vUc27c39OQordHVDSkm/N6aP0QRYW6HCoFRyo3YM0veXh/q9CWiTQpi/FXjMo2ra
N7qF8n3kA+qkIS/DtKecl88AwEiNSyXbkA349bWe3nTtEdAwbx5i9tkSqHD2JAZY
YuVZBrKT/FRhbv3/S5mJeyYx7NCPGX9zscUX1s33GkILWMAql3z0d8RsjDyWvkMT
YAjIym6+ddfr6AgFrpxs/nkmAxQvZHO2nLAFMECAl0z+xzY133c=
=PKgO
-----END PGP SIGNATURE-----

--zxwpitsvg7vn45jz--

--===============1153051967==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1153051967==--
