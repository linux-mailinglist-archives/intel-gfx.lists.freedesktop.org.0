Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8088D1B318E
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 23:07:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0D0C6E332;
	Tue, 21 Apr 2020 21:07:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com
 [IPv6:2607:f8b0:4864:20::843])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A36B86E332;
 Tue, 21 Apr 2020 21:07:10 +0000 (UTC)
Received: by mail-qt1-x843.google.com with SMTP id k12so2421488qtm.4;
 Tue, 21 Apr 2020 14:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iHB8mBEMx+vgU223QYSEc33/yIIIqvJhokhOdbdSZIo=;
 b=mf9hBtvjOYjbEAUXWSXxvPDuy5I/ZrvYhyisk8VR7D30+vY0orPMbQspvKMDzB6sMq
 JiC2TZIAP4cnRJ9OTA5CZg8QD6NHiLPq+ePe2Kad6cds+llSVoMBJg4eYk7MHwLEAd0+
 we25R7UZCCxscaFHaQyuH+3domh0wkKQSketQ9a7iFJ3jo21bbONe0FtWw3QBidWJ0Ov
 vkG/Rx+M257SGWVQmZ0jd7rmTxaAXIWK8wQ++L2jvv2+lbK8SAg+sWHjG/uKqojkgokZ
 gtl8Zm20uYER/iwhRm4ozvXgM+Qt88CgZqFVgu/0xX0pRsSc7D8LeUbK/nYHDU7hPDV1
 KhVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iHB8mBEMx+vgU223QYSEc33/yIIIqvJhokhOdbdSZIo=;
 b=GY1/ygsESG6917scQVmYsU/8iFB5FlEG7tOI5Bo6G9Dxdg4vb42Ds1gXZ5vc2SeoQd
 6IYIcYc7s9rr0wU0Th8aXUtIFhnuIWR1PYxqS+sWz+s42iK3ZS3ECk7KMYGDkMoZxo/D
 j6NiDltgdDHfCzO0fzbWpkfpMusxOcPnKJwGaihr5/YSD8ckIQoziv3SPMI99m5zg2W3
 mFJlY7ItaVPSMhA7GxY6SdzfM5q7afQe9yJ7Ky2ZGnSfSRC59G+sWpgkLQI8RMqKQEfP
 imYT4JL16+T8QH10mMKs7fev9GoF/tuqdiXNZT6SEKP2ZLYaalcsrJqyWHZZMnpAwPZ/
 lC2Q==
X-Gm-Message-State: AGi0PubZq/e/YtStrLD8Um/87YEyOF6Kwd31H8523QsJ7ROxZ3pkVtxF
 wjOsTnQMAlmrmX3u0vAenwE=
X-Google-Smtp-Source: APiQypJRgKcVeT27dFA/A0japvirJVlrnzFTFs0eCotCtmPKtDHHa7lTXu/WQ9tDqv0p+hS24G9XAA==
X-Received: by 2002:ac8:71c7:: with SMTP id i7mr23881380qtp.159.1587503229682; 
 Tue, 21 Apr 2020 14:07:09 -0700 (PDT)
Received: from smtp.gmail.com ([2607:fea8:56a0:11a1::2])
 by smtp.gmail.com with ESMTPSA id d4sm2543744qtc.48.2020.04.21.14.07.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 14:07:08 -0700 (PDT)
Date: Tue, 21 Apr 2020 17:07:05 -0400
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: Maxime Ripard <maxime@cerno.tech>
Message-ID: <20200421210705.igifp4zckhxxmlll@smtp.gmail.com>
References: <20191022010032.pgqop52v4gz5omlc@smtp.gmail.com>
 <20200415094533.teqmhp7hoz5hbllw@gilmour.lan>
MIME-Version: 1.0
In-Reply-To: <20200415094533.teqmhp7hoz5hbllw@gilmour.lan>
Subject: Re: [Intel-gfx] [PATCH v7 i-g-t 4/4] kms_writeback: Add
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
Cc: Simon Ser <contact@emersion.fr>, intel-gfx@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org, nd <nd@arm.com>
Content-Type: multipart/mixed; boundary="===============1660620943=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1660620943==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o426swedp6k7oyhk"
Content-Disposition: inline


--o426swedp6k7oyhk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 04/15, Maxime Ripard wrote:
> Hi!
>=20
> On Mon, Oct 21, 2019 at 10:00:39PM -0300, Brian Starkey wrote:
> > Add a test which makes commits using the writeback connector, and
> > checks the output buffer hash to make sure it is/isn't written as
> > appropriate.
> >
> > V6: Simon Ser
> >  - Add igt documentation with igt_describe
> >  - Replace int ret by unsigned int fd_id when calling igt_create_fb
> >  - Add a descriptive error message if sync_fence_wait fail
> >  - Replace color_idx variable by i
> >  - Use in_fb instead of out_fb for getting the expected CRC
> >  - Drop unnecessary parentheses
> >  - Replace igt_fb_mod_to_tiling to DRM_FORMAT_MOD_LINEAR
> >
> > Signed-off-by: Brian Starkey <brian.starkey@arm.com>
> > [rebased and updated the patch to address feedback]
> > Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
> > ---
> >  tests/kms_writeback.c | 123 ++++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 123 insertions(+)
> >
> > diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
> > index a373ec4d..068595b9 100644
> > --- a/tests/kms_writeback.c
> > +++ b/tests/kms_writeback.c
> > @@ -30,6 +30,7 @@
> >  #include "igt.h"
> >  #include "igt_core.h"
> >  #include "igt_fb.h"
> > +#include "sw_sync.h"
> >
> >  IGT_TEST_DESCRIPTION("Exercise writeback feature.");
> >
> > @@ -196,6 +197,115 @@ static void writeback_test_fb(igt_output_t *outpu=
t, igt_fb_t *valid_fb, igt_fb_t
> >  	igt_assert(ret =3D=3D -EINVAL);
> >  }
> >
> > +static void fill_fb(igt_fb_t *fb, double color[3])
> > +{
> > +	cairo_t *cr =3D igt_get_cairo_ctx(fb->fd, fb);
> > +	igt_assert(cr);
> > +
> > +	igt_paint_color(cr, 0, 0, fb->width, fb->height,
> > +			color[0], color[1], color[2]);
> > +}
> > +
>=20
> On which platform did you test this? On Arm (but I would assume
> anything !i915), this will fire up an assert.
>=20
> I've replaced this with a igt_fb_map_buffer/memset, and it works as
> expected.

Hi,

Could you share your fix for this issue? Since you already have a
solution that you know that works on ARM, I can just use it for avoiding
an unnecessary round of review in the next version.

Thanks
=20
> Maxime



--=20
Rodrigo Siqueira
https://siqueira.tech

--o426swedp6k7oyhk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl6fYHQACgkQWJzP/com
vP/RMg/+Pvcqn5tBfcF9zZGAs0ytSXqZWo/06QYONUM3naapkl9g1SIPFTVR87dD
CzUr0flJY1SyDbGVEiCZ52cYRd2eSZO1iQL6sNN90VGiPtvUJWS2MPxteVTanmhk
SzCTI69PPf3IgUpc4s6cZIGxEGI0rl8oQIcLhGa+2L/bqSWim54sdD4qdLRZL6Z2
QdFy5o10+s4Zu2J34LWw96vFVF4ihy9ARG2jZsLj9tyKPJRQxWkba9URdK5oysKK
tneBCtJk+tNrUira4+gXlVJHbtHWqlCYyPWQ8ysCnQxIpBCFB1aRfmK+y/aIcas9
8tnS1mBCRREEKZmmRwFKGp6ltkA0m4Ax9bFgq+yPfP4AnnQo4SbcHyW8yYJjgCxe
Os8iUAYSypmSgnjcS0i/oo3Sqab5qZzlqf355mrZrM6u0oDF8K8A7RGobiVUY9Cy
ke/BXyvnNe4tr4L/xdAd/jdtHSyk1R3iEvj3xHWZbaMtSQI3fAUQN5XNIUAjn2RR
WdozGMPydruFdE8271GN6FkKk7+7+kaz7G+An5BNJTUuK+r+I6X3wwJmuBYw5cF2
qdmGZAz14SFDSy+qtyOZBt58MnHuw/6xgHoLAldfjQrSbhpKKSisppasZluz0hp/
KIf8Xwom1ngpY7X1wjNwhtpO5rikNIuk+O3mhbp98W1kQcl6exE=
=xqLB
-----END PGP SIGNATURE-----

--o426swedp6k7oyhk--

--===============1660620943==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1660620943==--
