Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6196B37A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 03:47:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF5D56E1CF;
	Wed, 17 Jul 2019 01:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com
 [IPv6:2607:f8b0:4864:20::842])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BB316E1CF;
 Wed, 17 Jul 2019 01:47:36 +0000 (UTC)
Received: by mail-qt1-x842.google.com with SMTP id n11so21722758qtl.5;
 Tue, 16 Jul 2019 18:47:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pUEvqgKQGcczPnLR3qADtD3JfJe4jZ7cA7OUIQIqUHc=;
 b=NwtWPeBjb6bVlYlzxGPrvRIVORZwxVFFQ1pEvZvganG44/Bmtw12FGfSCnofM2jYoH
 1uGJqgzll6lH/0+qIhNg4MZB/AfEYCQyNyJJDtlLHylUJAb29JTmsUVjJPB8A3o+q8np
 JecoGsbmvdlZUQ8Iv8h0XJTq7CQ9pIDgRMED4H8O0xF5ZFdubRJE7A1hOPaTiuDzavh7
 2FQjpjvGL6nTE6sW5kNZIZ7SRJRyohZvCkj9JuOXIN7CWSj+iDzNJwFw+28g7ZS/Iluk
 IUWBm4gRP4f9KXBr2FLZMZVceO9Z8L6awZND0iGk2nICGbu+6RVR0hwQ3kZJlyqJHS5b
 S2oQ==
X-Gm-Message-State: APjAAAUZlr5FHjwLJDemJFyMcoCQnXzjJP7o7gjODiuTtzkwdGCNFXnS
 9GrfECmvL6+LXigRWm9eUVbrCFCFAGg=
X-Google-Smtp-Source: APXvYqysgoHRT9nJ4o3ivgj33cn+8PO1AktlNq1RhNsV1BWeQRfTticp0nqWTTLJICn8n6SSE2jubQ==
X-Received: by 2002:a0c:b999:: with SMTP id v25mr26863225qvf.36.1563328055128; 
 Tue, 16 Jul 2019 18:47:35 -0700 (PDT)
Received: from smtp.gmail.com ([187.121.151.22])
 by smtp.gmail.com with ESMTPSA id x8sm10681927qka.106.2019.07.16.18.47.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 18:47:34 -0700 (PDT)
Date: Tue, 16 Jul 2019 22:47:27 -0300
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: "Ser, Simon" <simon.ser@intel.com>
Message-ID: <20190717014727.ijkoikehrla5la2s@smtp.gmail.com>
References: <cover.1560374714.git.rodrigosiqueiramelo@gmail.com>
 <9f4a3f1d1c9df084ec2bf8e9b7475bbeda5f0985.1560374714.git.rodrigosiqueiramelo@gmail.com>
 <43c3d3c9150fbfd24e0fdf63747fc523b1890c75.camel@intel.com>
MIME-Version: 1.0
In-Reply-To: <43c3d3c9150fbfd24e0fdf63747fc523b1890c75.camel@intel.com>
User-Agent: NeoMutt/20180716
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pUEvqgKQGcczPnLR3qADtD3JfJe4jZ7cA7OUIQIqUHc=;
 b=LXLfteCWzdHMjnUWFV/kdYf3DqHzk0QtGFVkGgEK/lkqRoIXJKtUvpvLBKHTAnYQNM
 sdBbl7e4xRQkk/9KgySIyP4iSULEPG9r/4j0JB/VcpafEpTswD+T6mOsAe0F5MxHiLE0
 WYCl83DKnlkA57Rb6gIXJWo21RgQxC9Z0uE3M26F5/SMTFRDjNAXSJI/YF+C/PeFimxp
 QBDt2iBHfXVAUaQKKkXVMxiEc3bXXvPEg+pSI3en3UXiTd6ULLymXifaLuNegTqMYZTX
 Ft22A65cBUXSNgFoaA+Ln8mYmq7XdDfIyOlOVFs6AOxlk0REesoY0mw36KkPeKAa6IcA
 K2HQ==
Subject: Re: [Intel-gfx] [igt-dev] [PATCH V6 i-g-t 5/6] lib/igt_kms: Add
 igt_output_clone_pipe for cloning
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
Content-Type: multipart/mixed; boundary="===============0153408555=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0153408555==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mutgwvowrsinxz2q"
Content-Disposition: inline


--mutgwvowrsinxz2q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 07/12, Ser, Simon wrote:
> So, to test these last two patches we'd need specific hardware right?
> Because VKMS doesn't support cloning yet (does it?).

hmmm... actually, VKMS successfully pass in this test. However, if you
compare "writeback-check-output" and "writeback-check-output-clone", you
will notice they are very similar. Maybe, this test does not correctly
validating cloning feature?

> What kind of hardware supports cloned writeback outputs? I have a
> Raspberry Pi which supports writeback via VC4, but I don't think it has
> writeback cloning. I'm also not willing to install any proprietary
> driver.
>=20
> I guess we could land the first part of the series, and wait for VKMS
> to support cloned outputs to land the last two patches.
>=20
> Any other ideas?

btw, I'm totally comfortable with the idea of focusing on the first part
of this series.

Thanks
=20
> On Wed, 2019-06-12 at 23:18 -0300, Brian Starkey wrote:
> > An output can be added as a clone of any other output(s) attached to a
> > pipe using igt_output_clone_pipe()
> >=20
> > v5: Drop field out_fence_requested from struct igt_pipe (Brian Starkey)
> >=20
> > Signed-off-by: Brian Starkey <brian.starkey@arm.com>
> > ---
> >  lib/igt_kms.c | 100 +++++++++++++++++++++++++++++++-------------------
> >  lib/igt_kms.h |   4 ++
> >  2 files changed, 66 insertions(+), 38 deletions(-)
> >=20
> > diff --git a/lib/igt_kms.c b/lib/igt_kms.c
> > index 140db346..b85a0404 100644
> > --- a/lib/igt_kms.c
> > +++ b/lib/igt_kms.c
> > @@ -1765,6 +1765,17 @@ static void igt_display_log_shift(igt_display_t =
*display, int shift)
> >  	igt_assert(display->log_shift >=3D 0);
> >  }
> > =20
> > +static int igt_output_idx(igt_output_t *output)
> > +{
> > +	int i;
> > +
> > +	for (i =3D 0; i < output->display->n_outputs; i++)
> > +		if (&output->display->outputs[i] =3D=3D output)
> > +			return i;
> > +
> > +	return -1;
> > +}
> > +
> >  static void igt_output_refresh(igt_output_t *output)
> >  {
> >  	igt_display_t *display =3D output->display;
> > @@ -2317,42 +2328,6 @@ void igt_display_fini(igt_display_t *display)
> >  	display->planes =3D NULL;
> >  }
> > =20
> > -static void igt_display_refresh(igt_display_t *display)
> > -{
> > -	igt_output_t *output;
> > -	int i;
> > -
> > -	unsigned long pipes_in_use =3D 0;
> > -
> > -       /* Check that two outputs aren't trying to use the same pipe */
> > -	for (i =3D 0; i < display->n_outputs; i++) {
> > -		output =3D &display->outputs[i];
> > -
> > -		if (output->pending_pipe !=3D PIPE_NONE) {
> > -			if (pipes_in_use & (1 << output->pending_pipe))
> > -				goto report_dup;
> > -
> > -			pipes_in_use |=3D 1 << output->pending_pipe;
> > -		}
> > -
> > -		if (output->force_reprobe)
> > -			igt_output_refresh(output);
> > -	}
> > -
> > -	return;
> > -
> > -report_dup:
> > -	for (; i > 0; i--) {
> > -		igt_output_t *b =3D &display->outputs[i - 1];
> > -
> > -		igt_assert_f(output->pending_pipe !=3D
> > -			     b->pending_pipe,
> > -			     "%s and %s are both trying to use pipe %s\n",
> > -			     igt_output_name(output), igt_output_name(b),
> > -			     kmstest_pipe_name(output->pending_pipe));
> > -	}
> > -}
> > -
> >  static igt_pipe_t *igt_output_get_driving_pipe(igt_output_t *output)
> >  {
> >  	igt_display_t *display =3D output->display;
> > @@ -2376,6 +2351,40 @@ static igt_pipe_t *igt_output_get_driving_pipe(i=
gt_output_t *output)
> >  	return &display->pipes[pipe];
> >  }
> > =20
> > +static void igt_display_refresh(igt_display_t *display)
> > +{
> > +	igt_output_t *output;
> > +	igt_pipe_t *pipe;
> > +	int i;
> > +
> > +	unsigned long pipes_in_use =3D 0;
> > +	unsigned long pending_crtc_idx_mask;
> > +
> > +	/* Check that outputs and pipes agree wrt. cloning */
> > +	for (i =3D 0; i < display->n_outputs; i++) {
> > +		output =3D &display->outputs[i];
> > +		pending_crtc_idx_mask =3D 1 << output->pending_pipe;
> > +
> > +		pipe =3D igt_output_get_driving_pipe(output);
> > +		if (pipe) {
> > +			igt_assert_f(pipe->outputs & (1 << igt_output_idx(output)),
> > +				     "Output %s not expected to be using pipe %s\n",
> > +				     igt_output_name(output),
> > +				     kmstest_pipe_name(pipe->pipe));
> > +
> > +			if (pipes_in_use & pending_crtc_idx_mask)
> > +				LOG(display, "Output %s clones pipe %s\n",
> > +				    igt_output_name(output),
> > +				    kmstest_pipe_name(pipe->pipe));
> > +		}
> > +
> > +		pipes_in_use |=3D pending_crtc_idx_mask;
> > +
> > +		if (output->force_reprobe)
> > +			igt_output_refresh(output);
> > +	}
> > +}
> > +
> >  static igt_plane_t *igt_pipe_get_plane(igt_pipe_t *pipe, int plane_idx)
> >  {
> >  	igt_require_f(plane_idx >=3D 0 && plane_idx < pipe->n_planes,
> > @@ -3766,6 +3775,7 @@ void igt_output_override_mode(igt_output_t *outpu=
t, const drmModeModeInfo *mode)
> >  	output->use_override_mode =3D !!mode;
> > =20
> >  	if (pipe) {
> > +		igt_debug("overriding pipe mode in %s way\n", output->display->is_at=
omic ? "atomic" : "legacy");
> >  		if (output->display->is_atomic)
> >  			igt_pipe_obj_replace_prop_blob(pipe, IGT_CRTC_MODE_ID, igt_output_g=
et_mode(output), sizeof(*mode));
> >  		else
> > @@ -3773,6 +3783,16 @@ void igt_output_override_mode(igt_output_t *outp=
ut, const drmModeModeInfo *mode)
> >  	}
> >  }
> > =20
> > +void igt_output_clone_pipe(igt_output_t *output, enum pipe pipe)
> > +{
> > +	igt_display_t *display =3D output->display;
> > +	uint32_t current_clones =3D display->pipes[pipe].outputs;
> > +
> > +	igt_output_set_pipe(output, pipe);
> > +
> > +	display->pipes[pipe].outputs |=3D current_clones;
> > +}
> > +
> >  /*
> >   * igt_output_set_pipe:
> >   * @output: Target output for which the pipe is being set to
> > @@ -3789,11 +3809,15 @@ void igt_output_set_pipe(igt_output_t *output, =
enum pipe pipe)
> > =20
> >  	igt_assert(output->name);
> > =20
> > -	if (output->pending_pipe !=3D PIPE_NONE)
> > +	if (output->pending_pipe !=3D PIPE_NONE) {
> >  		old_pipe =3D igt_output_get_driving_pipe(output);
> > +		old_pipe->outputs &=3D ~(1 << igt_output_idx(output));
> > +	}
> > =20
> > -	if (pipe !=3D PIPE_NONE)
> > +	if (pipe !=3D PIPE_NONE) {
> >  		pipe_obj =3D &display->pipes[pipe];
> > +		pipe_obj->outputs =3D (1 << igt_output_idx(output));
> > +	}
> > =20
> >  	LOG(display, "%s: set_pipe(%s)\n", igt_output_name(output),
> >  	    kmstest_pipe_name(pipe));
> > diff --git a/lib/igt_kms.h b/lib/igt_kms.h
> > index cacc6b90..676839bb 100644
> > --- a/lib/igt_kms.h
> > +++ b/lib/igt_kms.h
> > @@ -354,6 +354,8 @@ struct igt_pipe {
> >  	uint32_t crtc_id;
> > =20
> >  	int32_t out_fence_fd;
> > +
> > +	uint32_t outputs;
> >  };
> > =20
> >  typedef struct {
> > @@ -411,6 +413,8 @@ const char *igt_output_name(igt_output_t *output);
> >  drmModeModeInfo *igt_output_get_mode(igt_output_t *output);
> >  void igt_output_override_mode(igt_output_t *output, const drmModeModeI=
nfo *mode);
> >  void igt_output_set_pipe(igt_output_t *output, enum pipe pipe);
> > +void igt_output_clone_pipe(igt_output_t *output, enum pipe pipe);
> > +
> >  igt_plane_t *igt_output_get_plane(igt_output_t *output, int plane_idx);
> >  igt_plane_t *igt_output_get_plane_type(igt_output_t *output, int plane=
_type);
> >  int igt_output_count_plane_type(igt_output_t *output, int plane_type);
> > _______________________________________________
> > igt-dev mailing list
> > igt-dev@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/igt-dev

--=20
Rodrigo Siqueira
https://siqueira.tech

--mutgwvowrsinxz2q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE4tZ+ii1mjMCMQbfkWJzP/comvP8FAl0ufi8ACgkQWJzP/com
vP/OKQ/+PyDepVRqtJlnBt4Ts43wrLs7MhZuA6HdSYSlZ9gv07HHPbRa6a12bNi1
0Q2LB2zUZke87lp9EvTA+6KrO4dOFtMCXi7ebpFOLzn4HN+QAmpbi9WnpWBpJqdL
5EWO5vx8UZtv2kc+xj6BgKXZYa+ZY1R1Tr9tzalbj/Veks6f80IizAsrybe1uw0B
QLgRUqwVQo428gkLfKdBL71p2va2KrwGtUHwSkT+hNvPAY8ojOSGZV5qPUacxvv/
gfruGWzaKLLrZ1DDO3Yf0p6yloMaMRUub/BAGdZwvH5tskdDMTrGam3lqNom2IR0
l395RLdMJc9v+4qQPhL11+rlhs8jwrIRNrE4Uo6p3VUctmGj519ZW7VgzqXcGnn3
QNw/O7MRpKNIIUGr1UHBGVNns2R4QIDGwR3/DPCG/zoUPHjAchwQWZxJyM5mYXxV
SQR3IaKDiHLRi/vk3CRDRyKkdvHmtwnj4GJL2y554pysQMr4VzIhPRGUIbwKXvui
SKOGA8ZndN5DVWR8LYdvunN86e0ux/sQ/39OA87yLWsCiBxPu2DPZhKv+cEcAcCg
eylTbE3PnCRKu7ymr3ZX9PuMNcgY2VnMP/OlHzD7rzXPqglrskKI4EmT+vkhLfnC
TuBdnUvcosrje5L/B+7dM0DmQ/k/lF5+YChuN6ELqSdMQ7v8Rf4=
=90Ts
-----END PGP SIGNATURE-----

--mutgwvowrsinxz2q--

--===============0153408555==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0153408555==--
