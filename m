Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 601E66B36B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 03:33:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DBB36E1D8;
	Wed, 17 Jul 2019 01:33:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com
 [IPv6:2607:f8b0:4864:20::742])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6DE66E1CF;
 Wed, 17 Jul 2019 01:33:14 +0000 (UTC)
Received: by mail-qk1-x742.google.com with SMTP id m14so16152625qka.10;
 Tue, 16 Jul 2019 18:33:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pRba4ypTNj7G5JCLvYUciIsduVvk5EZhkGt9BvqVIuo=;
 b=PCcaVw5LnqdGSLxTM9xYL8sLKMkYU1nJLV2aTFG/+qcvscbXxIjr2F8jCXHc4B6LFZ
 xF5fUk+SvQaMgC3tLedppFV+Lq5CxHYqjxoqPSTvHmIm+j/b+lTy/FGOi8NmA1BogAnm
 xJCC+lq5xoO1xuaeESwZME7hvOErK9XDIrygBKuNPs5izr3nXpWKhYyiNwVb/8aEiEpO
 vqfF4O4z1UwMqMGXPrzsdvNlRmvGIrfryKkQLOuRydaAr6INQvieCTwrbA92X1/wdoWp
 qiPOTRmyJpB7vKFUKoVTC1Syj1n6EawX/a5HYGI7bJqZ11u1C1zgNNz3h8gpd6BWCA2g
 mSWA==
X-Gm-Message-State: APjAAAU6CSuRzkEGEwWj1GaZ5V3DydAco73KLn+vuy2vnY+JqUFxIy01
 jsxiCGNcLRasCghPonKqJFk=
X-Google-Smtp-Source: APXvYqxg5GEU9Ga47pmTZdlfWBNsJuLdBLnON7jvHIJKHTB0fCYKip1uuqpeUjJxuZ+FiO7fnBEdqA==
X-Received: by 2002:ae9:de81:: with SMTP id
 s123mr23847297qkf.339.1563326728531; 
 Tue, 16 Jul 2019 18:25:28 -0700 (PDT)
Received: from smtp.gmail.com ([187.121.151.22])
 by smtp.gmail.com with ESMTPSA id a135sm10274098qkg.72.2019.07.16.18.25.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 18:25:27 -0700 (PDT)
Date: Tue, 16 Jul 2019 22:25:18 -0300
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: "Ser, Simon" <simon.ser@intel.com>
Message-ID: <20190717012518.qvx5lvznxsl2m3vw@smtp.gmail.com>
References: <cover.1560374714.git.rodrigosiqueiramelo@gmail.com>
 <539f9b55a8269d3eb20d7d211f701d1a301d5b9d.1560374714.git.rodrigosiqueiramelo@gmail.com>
 <cb41813cb605db17faee193acfa3f1bbd5b2a039.camel@intel.com>
 <e54ac9aed7325a0b7735251199dcb3dba8cbdcec.camel@intel.com>
 <20190712024941.4asntpe6s23x66q4@smtp.gmail.com>
 <89a0e0508c989289690ecea001bb9ae51da9ac07.camel@intel.com>
MIME-Version: 1.0
In-Reply-To: <89a0e0508c989289690ecea001bb9ae51da9ac07.camel@intel.com>
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pRba4ypTNj7G5JCLvYUciIsduVvk5EZhkGt9BvqVIuo=;
 b=qPKhyQ+dw0jyzt8kfCwMPEJQtVRCXyBlarQw27YKbtoE+8ItIMRLb8LM2cByzBlEd6
 pDq+uxnqCtcy4CzYVTZ/959BEAKtlp9CsvJ/h8lImT40hU/zwOEOe0Tas+zuFGkcJLqN
 1bhIwul2PUUhkScIjOSEa7q7qsrgGSXX/K5O1H97h0H6KmZVN6DV83g2KkQv0pIdrb0l
 GsfalWOuGmJ/M8JjIsdZHbQTiyPc2YZh5l5/stCDiCxqz/ue61LGIB6qkQx8KMlwPX2+
 B9k35KFqub+oh4vV8OU41Cf7ZYLz5UCswL1O+bPury5aukEH6X+l3v9KvK+Qhs6F5IOP
 YFxA==
Subject: Re: [Intel-gfx] [igt-dev] [PATCH V6 i-g-t 3/6] lib: Add function to
 hash a framebuffer
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "nd@arm.com" <nd@arm.com>
Content-Type: multipart/mixed; boundary="===============0485948005=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0485948005==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zhpnofc2xan2alvp"
Content-Disposition: inline


--zhpnofc2xan2alvp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 07/12, Ser, Simon wrote:
> On Thu, 2019-07-11 at 23:49 -0300, Rodrigo Siqueira wrote:
> > On 07/10, Ser, Simon wrote:
> > > On Wed, 2019-07-10 at 15:30 +0000, Ser, Simon wrote:
> > > > Mostly LGTM, here are a few nits.
> > > >=20
> > > > On Wed, 2019-06-12 at 23:17 -0300, Brian Starkey wrote:
> > > > > To use writeback buffers as a CRC source, we need to be able to h=
ash
> > > > > them. Implement a simple FVA-1a hashing routine for this purpose.
> > > > >=20
> > > > > Doing a bytewise hash on the framebuffer directly can be very slo=
w if
> > > > > the memory is noncached. By making a copy of each line in the FB =
first
> > > > > (which can take advantage of word-access speedup), we can do the =
hash
> > > > > on a cached copy, which is much faster (10x speedup on my platfor=
m).
> > > > >=20
> > > > > v6: use igt_memcpy_from_wc() instead of plain memcpy, as suggeste=
d by
> > > > >     Chris Wilson
> > > > >=20
> > > > > Signed-off-by: Brian Starkey <brian.starkey@arm.com>
> > > > > [rebased and updated to the most recent API]
> > > > > Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
> > > > > ---
> > > > >  lib/igt_fb.c | 66 ++++++++++++++++++++++++++++++++++++++++++++++=
++++++
> > > > >  lib/igt_fb.h |  3 +++
> > > > >  2 files changed, 69 insertions(+)
> > > > >=20
> > > > > diff --git a/lib/igt_fb.c b/lib/igt_fb.c
> > > > > index 9d4f905e..d07dae39 100644
> > > > > --- a/lib/igt_fb.c
> > > > > +++ b/lib/igt_fb.c
> > > > > @@ -3256,6 +3256,72 @@ bool igt_fb_supported_format(uint32_t drm_=
format)
> > > > >  	return false;
> > > > >  }
> > > > > =20
> > > > > +/*
> > > > > + * This implements the FNV-1a hashing algorithm instead of CRC, =
for
> > > > > + * simplicity
> > > > > + * http://www.isthe.com/chongo/tech/comp/fnv/index.html
> > > > > + *
> > > > > + * hash =3D offset_basis
> > > > > + * for each octet_of_data to be hashed
> > > > > + *         hash =3D hash xor octet_of_data
> > > > > + *         hash =3D hash * FNV_prime
> > > > > + * return hash
> > > > > + *
> > > > > + * 32 bit offset_basis =3D 2166136261
> > > > > + * 32 bit FNV_prime =3D 224 + 28 + 0x93 =3D 16777619
> > > > > + */
> > > > > +int igt_fb_get_crc(struct igt_fb *fb, igt_crc_t *crc)
> > > > > +{
> > > > > +#define FNV1a_OFFSET_BIAS 2166136261
> > > > > +#define FNV1a_PRIME 16777619
> > > >=20
> > > > I'd just use plain uint32_t variables for those, but no big deal.
> > > >=20
> > > > > +	uint32_t hash;
> > > > > +	void *map;
> > > > > +	char *ptr, *line =3D NULL;
> > > > > +	int x, y, cpp =3D igt_drm_format_to_bpp(fb->drm_format) / 8;
> > > > > +	uint32_t stride =3D calc_plane_stride(fb, 0);
> > > >=20
> > > > We could return -EINVAL in case fb->num_planes !=3D 1.
> > >=20
> > > Let's not waste cycles. With this ^ fixed, this patch is:
> > >=20
> > > Reviewed-by: Simon Ser <simon.ser@intel.com>
> > >=20
> > > Other nits are optional.
> >=20
> > I agreed with all your suggestions, and I already applied all of them.
> > Should I wait for the other patches review, or should I resend the new
> > version?
>=20
> I'm fine with waiting for the full review before a new version of the
> whole patchset, but you can also send an updated version of a single
> patch with:
>=20
>     git send-email --in-reply-to=3D"<cover.1560374714.git.rodrigosiqueira=
melo@gmail.com>" -1 <commit hash>
>=20
> where In-Reply-To is the Message-Id of the patch you want to update. I
> agree it's a little tedious since you need to extract the Message-Id
> from the message header.

Thanks for the tip with git-send-mail. Since I already applied most of
your suggestions, I'll send a full version soon.
=20
> > Thanks for all the feedback
>=20
> :)
>=20
> > Best Regards
> > =20
> > > > > +	if (fb->is_dumb)
> > > > > +		map =3D kmstest_dumb_map_buffer(fb->fd, fb->gem_handle, fb->si=
ze,
> > > > > +					      PROT_READ);
> > > > > +	else
> > > > > +		map =3D gem_mmap__gtt(fb->fd, fb->gem_handle, fb->size,
> > > > > +				    PROT_READ);
> > > > > +	ptr =3D map;
> > > >=20
> > > > Nit: no need for this, can assign the result of mmap directly to pt=
r.
> > > >=20
> > > > > +
> > > > > +	/*
> > > > > +	 * Framebuffers are often uncached, which can make byte-wise ac=
cesses
> > > > > +	 * very slow. We copy each line of the FB into a local buffer t=
o speed
> > > > > +	 * up the hashing.
> > > > > +	 */
> > > > > +	line =3D malloc(stride);
> > > > > +	if (!line) {
> > > > > +		munmap(map, fb->size);
> > > > > +		return -ENOMEM;
> > > > > +	}
> > > > > +
> > > > > +	hash =3D FNV1a_OFFSET_BIAS;
> > > > > +
> > > > > +	for (y =3D 0; y < fb->height; y++, ptr +=3D stride) {
> > > > > +
> > > > > +		igt_memcpy_from_wc(line, ptr, stride);
> > > >=20
> > > > Nit: no need to copy the whole stride actually, we can just copy
> > > > fb->width * cpp since we're only going to read that.
> > > >=20
> > > > > +
> > > > > +		for (x =3D 0; x < fb->width * cpp; x++) {
> > > > > +			hash ^=3D line[x];
> > > > > +			hash *=3D FNV1a_PRIME;
> > > > > +		}
> > > > > +	}
> > > > > +
> > > > > +	crc->n_words =3D 1;
> > > > > +	crc->crc[0] =3D hash;
> > > > > +
> > > > > +	free(line);
> > > > > +	munmap(map, fb->size);
> > > > > +
> > > > > +	return 0;
> > > > > +#undef FNV1a_OFFSET_BIAS
> > > > > +#undef FNV1a_PRIME
> > > > > +}
> > > > > +
> > > > >  /**
> > > > >   * igt_format_is_yuv:
> > > > >   * @drm_format: drm fourcc
> > > > > diff --git a/lib/igt_fb.h b/lib/igt_fb.h
> > > > > index adefebe1..a2741c05 100644
> > > > > --- a/lib/igt_fb.h
> > > > > +++ b/lib/igt_fb.h
> > > > > @@ -37,6 +37,7 @@
> > > > >  #include <i915_drm.h>
> > > > > =20
> > > > >  #include "igt_color_encoding.h"
> > > > > +#include "igt_debugfs.h"
> > > > > =20
> > > > >  /*
> > > > >   * Internal format to denote a buffer compatible with pixman's
> > > > > @@ -194,5 +195,7 @@ int igt_format_plane_bpp(uint32_t drm_format,=
 int plane);
> > > > >  void igt_format_array_fill(uint32_t **formats_array, unsigned in=
t *count,
> > > > >  			   bool allow_yuv);
> > > > > =20
> > > > > +int igt_fb_get_crc(struct igt_fb *fb, igt_crc_t *crc);
> > > > > +
> > > > >  #endif /* __IGT_FB_H__ */
> > > > > =20
> > > > > _______________________________________________
> > > > > igt-dev mailing list
> > > > > igt-dev@lists.freedesktop.org
> > > > > https://lists.freedesktop.org/mailman/listinfo/igt-dev
> > > > _______________________________________________
> > > > igt-dev mailing list
> > > > igt-dev@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/igt-dev

--=20
Rodrigo Siqueira
https://siqueira.tech

--zhpnofc2xan2alvp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl0ueP0ACgkQWJzP/com
vP89cA//UGVW7rR7jD+sKZPRNqzcckCPtmBJPpJnrLNZak7E1qkKFm/WEfay8icv
GfZ/sQPw4Sm+uyobEOAV5Z8s8p5nQDEX4nPtm0ivZN2mzaJp2J680l5tGZnRP4e3
bNQOBbmVA7TPsc69gxUIkmx58XfVPGd2QjCyLUAdUqZ7ooKjLNJ4j8X3LFdneSfN
AWfERAAW3b55tLq2uPdtO1icD8IyfDcgQIRrqQDG4kWfcEqgwm9KoGUVzMFh+bx5
DO9eFa65ESCknTukh6DbBxfu0NWH+8xvVXDG4uEs38DbSPoroiOUqEd3iVg3aw6E
0oztgh7GikEx8nMnYADKmYX/433LO5t8kD1acJBe8/ReKBmssoJqekkxkgMZ/2ie
Jn9Am0o+avY5dztSZDfLzl8R1tmSPDZMgO0CiRy3fSrFVwXzxsrXle0KhbLP6uOk
PKiOrpWQBWaCBeTRWm8RJUNwYVk0w8tngVz1UteC6Z96UJn1KNjc0b1wINzOubYG
Mg2Ppx6c7V1hf5q2LMYyUVaMJ/pq0rIVRrJnXWgi7qRPx05jfEdsBiIXFc4X7U46
Cqgi0Fk7nClmZ3l85AC5etc74407Cf0LKUuryEhlYl82JeXWt2MpdVexAAjG5Rqg
gO/1Cy6pWi+aSwXdPc6KSsDy/4GrCgljKZBBMKN0Cxll13SS6UQ=
=IQk9
-----END PGP SIGNATURE-----

--zhpnofc2xan2alvp--

--===============0485948005==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0485948005==--
