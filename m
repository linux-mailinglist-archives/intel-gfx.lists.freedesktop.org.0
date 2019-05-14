Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC831C382
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 08:57:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BD9F88FA8;
	Tue, 14 May 2019 06:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D361F88FA8;
 Tue, 14 May 2019 06:57:13 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 23:57:13 -0700
X-ExtLoop1: 1
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by orsmga001.jf.intel.com with ESMTP; 13 May 2019 23:57:10 -0700
Date: Tue, 14 May 2019 14:56:26 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20190514065626.GK12913@zhen-hp.sh.intel.com>
References: <20190513092244.GA12077@mwanda>
MIME-Version: 1.0
In-Reply-To: <20190513092244.GA12077@mwanda>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: Fix an error code in
 ppgtt_populate_spt_by_guest_entry()
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
Cc: David Airlie <airlied@linux.ie>,
 Aleksei Gimbitskii <aleksei.gimbitskii@intel.com>,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 intel-gvt-dev@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============2072028741=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============2072028741==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="/Q1T9Q8JmUrFqdou"
Content-Disposition: inline


--/Q1T9Q8JmUrFqdou
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019.05.13 12:22:44 +0300, Dan Carpenter wrote:
> "ret" is uninitialized on this path but it should be -EINVAL.
>=20
> Fixes: 930c8dfea4b8 ("drm/i915/gvt: Check if get_next_pt_type() always re=
turns a valid value")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
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

Applied this, thanks!

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--/Q1T9Q8JmUrFqdou
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXNpmmgAKCRCxBBozTXgY
J8PrAJ9hmMJUVJA/WcxFVYDp5dmrCIWThACfXEUodqTtaZAUTakJt7C3vBzTioI=
=FjA+
-----END PGP SIGNATURE-----

--/Q1T9Q8JmUrFqdou--

--===============2072028741==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============2072028741==--
