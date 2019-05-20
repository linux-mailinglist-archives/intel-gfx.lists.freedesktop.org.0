Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F00FA22A1C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 04:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA9458919F;
	Mon, 20 May 2019 02:59:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 885F68919F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 02:59:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 May 2019 19:52:22 -0700
X-ExtLoop1: 1
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by fmsmga005.fm.intel.com with ESMTP; 19 May 2019 19:52:22 -0700
Date: Mon, 20 May 2019 10:51:24 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190520025124.GA12913@zhen-hp.sh.intel.com>
References: <20190517102225.3069-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
In-Reply-To: <20190517102225.3069-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gvt: Set return value for
 ppgtt_populate error path
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
Reply-To: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============1928326100=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1928326100==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="KldKAdupQSLqpq2E"
Content-Disposition: inline


--KldKAdupQSLqpq2E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019.05.17 11:22:23 +0100, Chris Wilson wrote:
> Caught by smatch:
> drivers/gpu/drm/i915//gvt/gtt.c:1106 ppgtt_populate_spt_by_guest_entry() =
error: uninitialized symbol 'ret'.
>=20
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gvt/gtt.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gvt/gtt.c b/drivers/gpu/drm/i915/gvt/gt=
t.c
> index 08c74e65836b..244ad1729764 100644
> --- a/drivers/gpu/drm/i915/gvt/gtt.c
> +++ b/drivers/gpu/drm/i915/gvt/gtt.c
> @@ -1076,8 +1076,10 @@ static struct intel_vgpu_ppgtt_spt *ppgtt_populate=
_spt_by_guest_entry(
>  	} else {
>  		int type =3D get_next_pt_type(we->type);
> =20
> -		if (!gtt_type_is_pt(type))
> +		if (!gtt_type_is_pt(type)) {
> +			ret =3D -EINVAL;
>  			goto err;
> +		}
> =20
>  		spt =3D ppgtt_alloc_spt_gfn(vgpu, type, ops->get_pfn(we), ips);
>  		if (IS_ERR(spt)) {
> --=20

I've already merged Dan's patch for this, I was out for some days of
last week, so haven't sent pull yet. Will include this in next pull.

Thanks

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--KldKAdupQSLqpq2E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXOIWLAAKCRCxBBozTXgY
J8BuAJ9KUqTRn4tL5+Avs7eQ1rNhBRoYuwCeI6/R0OX98gmAHp23waN9q6iBwFs=
=x5+0
-----END PGP SIGNATURE-----

--KldKAdupQSLqpq2E--

--===============1928326100==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1928326100==--
