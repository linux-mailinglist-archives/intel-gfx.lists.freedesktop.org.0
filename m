Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BBA1B5B0A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 14:05:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D097F6E4F8;
	Thu, 23 Apr 2020 12:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com
 [IPv6:2607:f8b0:4864:20::742])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62AC06E444;
 Thu, 23 Apr 2020 12:04:59 +0000 (UTC)
Received: by mail-qk1-x742.google.com with SMTP id n143so6042457qkn.8;
 Thu, 23 Apr 2020 05:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JjyvfwEaE/EAmxo9ycwHlt/QlC0EfB7RdLM/DcRnzFE=;
 b=QLr6aJr859iRnJBNQglDufkdzdX0pt4OqckfIxfhcSQkdC6fJLmugCE3Xc5h9opUjJ
 ULPaCq3rBMapviwBuHqUplVAI0Eg6flsmH1qW01wK7LKDX6G8JpoJTWomOgUOcAyXxHJ
 3IJEClWG+GZhKSunJ1BobbXvh3syQn91qtRz6rB+gSam+0TfPz8WAI76Sf2DiyyoZMnB
 G0tRFmJpF6NhIdVt+170o2n3W413eejZ9HVpezzhCyYrAyTbdhKx+EM7y3Mt80QSYxNY
 FdDaEaQ3MkFQnDeyg3R/92A39CAyybRQD9iChq1MURRQNNyG47Z6pZ88YAvjNvzD2rfP
 ldFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JjyvfwEaE/EAmxo9ycwHlt/QlC0EfB7RdLM/DcRnzFE=;
 b=As7o+s5HvpX3Ukdp5M8cpceYF+Y5hDLXSCrbeVeWsorjEceyRJEa3NWR9K7BNLNKRc
 EU6+g31XsFMAza27jn46LK3vH71dnHfokdxIIXIqMATIVagEaVfiYvmj99dfDz6PtABi
 LJ3mt6RHf/CVna4eKCNyz940aIDOEIRTESw+xZm5UdgemYyUSu7L1CwT4pZD/TvnBrtH
 4r2dQNTPPx20RARPOtrIaI+VEYOuZLXDk0bMWkfmBl2R3v/uW52i0Nn76N5bVZiUduPg
 +sd7n40YgTa/9ekwkJw7CisvkuK+hvmviksXHADCu6dBj7YO7TWdea1EVG1ymyLoLX7R
 M8vA==
X-Gm-Message-State: AGi0PuaJvMaLh8W/p/zbz9Zv7leRm+8crXgSExi7OGRKJnzxe7uRYnoA
 hFOtkU4PcwXlWiVCd7p9FBU=
X-Google-Smtp-Source: APiQypJZrm72l7Tjf1BTDRf+0BsxvKSMkGzM7YMqUwUxlJ4STMpjMRs45ovVD5zUGuKkBqIC0r2lKw==
X-Received: by 2002:a37:a841:: with SMTP id r62mr3110033qke.135.1587643496929; 
 Thu, 23 Apr 2020 05:04:56 -0700 (PDT)
Received: from smtp.gmail.com ([2607:fea8:56a0:11a1::2])
 by smtp.gmail.com with ESMTPSA id o43sm1584974qtf.46.2020.04.23.05.04.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 05:04:55 -0700 (PDT)
Date: Thu, 23 Apr 2020 08:04:51 -0400
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: Maxime Ripard <maxime@cerno.tech>
Message-ID: <20200423120451.7sd2qkszjtbjfjoh@smtp.gmail.com>
References: <20191022010032.pgqop52v4gz5omlc@smtp.gmail.com>
 <20200415094533.teqmhp7hoz5hbllw@gilmour.lan>
 <20200421210705.igifp4zckhxxmlll@smtp.gmail.com>
 <20200422180301.kvvrbhq4j33q6mb6@gilmour.lan>
MIME-Version: 1.0
In-Reply-To: <20200422180301.kvvrbhq4j33q6mb6@gilmour.lan>
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
Content-Type: multipart/mixed; boundary="===============1594701200=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1594701200==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lpivh4e5kdpcvdcu"
Content-Disposition: inline


--lpivh4e5kdpcvdcu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 04/22, Maxime Ripard wrote:
> Hi!
>=20
> On Tue, Apr 21, 2020 at 05:07:05PM -0400, Rodrigo Siqueira wrote:
> > On 04/15, Maxime Ripard wrote:
> > > On Mon, Oct 21, 2019 at 10:00:39PM -0300, Brian Starkey wrote:
> > > > Add a test which makes commits using the writeback connector, and
> > > > checks the output buffer hash to make sure it is/isn't written as
> > > > appropriate.
> > > >
> > > > V6: Simon Ser
> > > >  - Add igt documentation with igt_describe
> > > >  - Replace int ret by unsigned int fd_id when calling igt_create_fb
> > > >  - Add a descriptive error message if sync_fence_wait fail
> > > >  - Replace color_idx variable by i
> > > >  - Use in_fb instead of out_fb for getting the expected CRC
> > > >  - Drop unnecessary parentheses
> > > >  - Replace igt_fb_mod_to_tiling to DRM_FORMAT_MOD_LINEAR
> > > >
> > > > Signed-off-by: Brian Starkey <brian.starkey@arm.com>
> > > > [rebased and updated the patch to address feedback]
> > > > Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
> > > > ---
> > > >  tests/kms_writeback.c | 123 ++++++++++++++++++++++++++++++++++++++=
++++
> > > >  1 file changed, 123 insertions(+)
> > > >
> > > > diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
> > > > index a373ec4d..068595b9 100644
> > > > --- a/tests/kms_writeback.c
> > > > +++ b/tests/kms_writeback.c
> > > > @@ -30,6 +30,7 @@
> > > >  #include "igt.h"
> > > >  #include "igt_core.h"
> > > >  #include "igt_fb.h"
> > > > +#include "sw_sync.h"
> > > >
> > > >  IGT_TEST_DESCRIPTION("Exercise writeback feature.");
> > > >
> > > > @@ -196,6 +197,115 @@ static void writeback_test_fb(igt_output_t *o=
utput, igt_fb_t *valid_fb, igt_fb_t
> > > >  	igt_assert(ret =3D=3D -EINVAL);
> > > >  }
> > > >
> > > > +static void fill_fb(igt_fb_t *fb, double color[3])
> > > > +{
> > > > +	cairo_t *cr =3D igt_get_cairo_ctx(fb->fd, fb);
> > > > +	igt_assert(cr);
> > > > +
> > > > +	igt_paint_color(cr, 0, 0, fb->width, fb->height,
> > > > +			color[0], color[1], color[2]);
> > > > +}
> > > > +
> > >=20
> > > On which platform did you test this? On Arm (but I would assume
> > > anything !i915), this will fire up an assert.
> > >=20
> > > I've replaced this with a igt_fb_map_buffer/memset, and it works as
> > > expected.
> >
> > Could you share your fix for this issue? Since you already have a
> > solution that you know that works on ARM, I can just use it for avoiding
> > an unnecessary round of review in the next version.
>=20
> Sure, you'll find it attached

Thanks!

I'm going to submit a new version today.

Best Regards
=20
> Maxime

> diff --git a/lib/igt_fb.c b/lib/igt_fb.c
> index 97a656c8..be825220 100644
> --- a/lib/igt_fb.c
> +++ b/lib/igt_fb.c
> @@ -3812,12 +3812,9 @@ int igt_fb_get_crc(struct igt_fb *fb, igt_crc_t *c=
rc)
>  	if (fb->num_planes !=3D 1)
>  		return -EINVAL;
> =20
> -	if (fb->is_dumb)
> -		ptr =3D kmstest_dumb_map_buffer(fb->fd, fb->gem_handle, fb->size,
> -					      PROT_READ);
> -	else
> -		ptr =3D gem_mmap__gtt(fb->fd, fb->gem_handle, fb->size,
> -				    PROT_READ);
> +	ptr =3D igt_fb_map_buffer(fb->fd, fb);
> +	igt_assert(ptr);
> +	map =3D ptr;
> =20
>  	/*
>  	 * Framebuffers are often uncached, which can make byte-wise accesses
> @@ -3846,7 +3843,7 @@ int igt_fb_get_crc(struct igt_fb *fb, igt_crc_t *cr=
c)
>  	crc->crc[0] =3D hash;
> =20
>  	free(line);
> -	munmap(map, fb->size);
> +	igt_fb_unmap_buffer(fb, map);
> =20
>  	return 0;
>  #undef FNV1a_OFFSET_BIAS
> diff --git a/tests/kms_writeback.c b/tests/kms_writeback.c
> index 068595b9..c2ee05dd 100644
> --- a/tests/kms_writeback.c
> +++ b/tests/kms_writeback.c
> @@ -149,7 +149,7 @@ static int do_writeback_test(igt_output_t *output, ui=
nt32_t fb_id,
> =20
>  	igt_output_set_prop_value(output, IGT_CONNECTOR_CRTC_ID, config->crtc->=
crtc_id);
>  	igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_FB_ID, fb_id);
> -	igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR=
, (uint64_t)out_fence_ptr);
> +	igt_output_set_prop_value(output, IGT_CONNECTOR_WRITEBACK_OUT_FENCE_PTR=
, (uint64_t)(uintptr_t)out_fence_ptr);
> =20
>  	if (ptr_valid)
>  		*out_fence_ptr =3D 0;
> @@ -197,13 +197,18 @@ static void writeback_test_fb(igt_output_t *output,=
 igt_fb_t *valid_fb, igt_fb_t
>  	igt_assert(ret =3D=3D -EINVAL);
>  }
> =20
> -static void fill_fb(igt_fb_t *fb, double color[3])
> +static void fill_fb(igt_fb_t *fb, uint32_t pixel)
>  {
> -	cairo_t *cr =3D igt_get_cairo_ctx(fb->fd, fb);
> -	igt_assert(cr);
> +	void *ptr;
> =20
> -	igt_paint_color(cr, 0, 0, fb->width, fb->height,
> -			color[0], color[1], color[2]);
> +	igt_assert(fb->drm_format =3D=3D DRM_FORMAT_XRGB8888);
> +
> +	ptr =3D igt_fb_map_buffer(fb->fd, fb);
> +	igt_assert(ptr);
> +
> +	memset(ptr, pixel, fb->strides[0] * fb->height);=20
> +
> +	igt_fb_unmap_buffer(fb, ptr);
>  }
> =20
>  static void get_and_wait_out_fence(igt_output_t *output)
> @@ -222,11 +227,8 @@ static void writeback_sequence(igt_output_t *output,=
 igt_plane_t *plane,
>  				igt_fb_t *in_fb, igt_fb_t *out_fbs[], int n_commits)
>  {
>  	int i;
> -	double in_fb_colors[2][3] =3D {
> -		{ 1.0, 0.0, 0.0 },
> -		{ 0.0, 1.0, 0.0 },
> -	};
> -	double clear_color[3] =3D { 1.0, 1.0, 1.0 };
> +	uint32_t in_fb_colors[2] =3D { 0xffff0000, 0xff00ff00 };
> +	uint32_t clear_color =3D 0xffffffff;
>  	igt_crc_t cleared_crc, out_expected;
> =20
>  	for (i =3D 0; i < n_commits; i++) {


--=20
Rodrigo Siqueira
https://siqueira.tech

--lpivh4e5kdpcvdcu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl6hhF4ACgkQWJzP/com
vP8Lpg//bh1himKlDOnRdazQPimguB2ElLyW8jICEfkDeshSW+6FCZthKgaajGJj
88zxKTJECjGbsNp6Mw4LGZplKwxUMMWS5LGfPc9cDiB5C/bpRTAZgV+wfRV6usKB
ywf+t8LNPtDlUcr0FvPo27G9pBcK86pWRyKxFMybjnTiwrFwKkYWENlZdC5VJIMj
Yc8xjKQ/uV79oBFntHR74ZxAYwbFbC39oLSNU3RjSUWKZQ7gZ/5zWxPR8MJrdedA
0dUpEesc77M5yqEZg+r9zp3MP7bWekc2FQ10EiFV9vYAaO9HFC8kZaAVZExHCJ3/
g2fS2CanIlQL58u5xftfxZRgSLmKUBcEX+s8/qVn2pO0LWJMvE7moYN9LLqlKZr/
PwIIqcbai07PaH796TQpStCXXt7o4nf/ldZe8IYLADQgf46mpLQNKoh5B8aPqCCt
dNRfRzis+F8vpfYT8xhY08CAEoTbcu8nBBAI9tln79je4uaL6Ha/tzmeoapCKjQW
YYrVjtTt7HcsjepMRkVjaXQeX27D1/FKgM2MLKO+7p23oRvsrTihE51eRCoCRwa8
3KMpq2v/X/CZXBCvyXpnNlI7EfU4nbjllYOi6IDfr8Ios6J2EkQUAyx7DR/hmw5k
a3uajxrbBz5QManqTatvbfu+7n9byu+SRlHUZAbJPtd+Ln8/QXY=
=6QNw
-----END PGP SIGNATURE-----

--lpivh4e5kdpcvdcu--

--===============1594701200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1594701200==--
