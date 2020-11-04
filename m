Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAA02A5D71
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 05:56:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E5A96E937;
	Wed,  4 Nov 2020 04:56:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C16646E937
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 04:56:24 +0000 (UTC)
IronPort-SDR: FsWRSd7LLFBFbsneNFgAhbOREW3XE8UUNchdtd9w+qFTYHf2LAQgL+hTsjOjhpHdDvcafomnzF
 aVD6bPtOh0Qg==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="149017067"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; 
 d="asc'?scan'208";a="149017067"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 20:56:24 -0800
IronPort-SDR: yvLSFPH9CRX//6Va2fLDfmgS7ygfdbCzFgsp80MdQmeW0uC3KVFBIZRiCD3dNtWxTDk4fLK+wA
 oL0MIf2X1UCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; 
 d="asc'?scan'208";a="320676868"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by orsmga003.jf.intel.com with ESMTP; 03 Nov 2020 20:56:23 -0800
Date: Wed, 4 Nov 2020 12:35:02 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201104043502.GL27141@zhen-hp.sh.intel.com>
References: <20201103204307.15723-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
In-Reply-To: <20201103204307.15723-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: Remove incorrect kerneldoc
 marking
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
Reply-To: Zhenyu Wang <zhenyuw@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0589590974=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0589590974==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="oqiVxqbeHx5cy56u"
Content-Disposition: inline


--oqiVxqbeHx5cy56u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020.11.03 20:43:07 +0000, Chris Wilson wrote:
> Just a normal comment, not a kerneldoc function description.
>=20
> drivers/gpu/drm/i915/gvt/handlers.c:1666: warning: Function parameter or =
member 'vgpu' not described in 'bxt_ppat_low_write'
> drivers/gpu/drm/i915/gvt/handlers.c:1666: warning: Function parameter or =
member 'offset' not described in 'bxt_ppat_low_write'
> drivers/gpu/drm/i915/gvt/handlers.c:1666: warning: Function parameter or =
member 'p_data' not described in 'bxt_ppat_low_write'
> drivers/gpu/drm/i915/gvt/handlers.c:1666: warning: Function parameter or =
member 'bytes' not described in 'bxt_ppat_low_write'
>=20
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gvt/handlers.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/g=
vt/handlers.c
> index ce93079cf933..4ddc9c847470 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -1651,7 +1651,7 @@ static int edp_psr_imr_iir_write(struct intel_vgpu =
*vgpu,
>  	return 0;
>  }
> =20
> -/**
> +/*
>   * FixMe:
>   * If guest fills non-priv batch buffer on ApolloLake/Broxton as Mesa i9=
65 did:
>   * 717e7539124d (i965: Use a WC map and memcpy for the batch instead of =
pwrite.)
> --=20
> 2.20.1
>

I'd need to run more checks...btw, please also include intel-gvt-dev list
for any gvt changes. Thanks

Acked-by: Zhenyu Wang <zhenyuw@linux.intel.com>

--=20

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--oqiVxqbeHx5cy56u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCX6IvdgAKCRCxBBozTXgY
J2liAKCCQm43G6OqMK6FZfpr7BYtAvvTOgCeP3vrdbRC+j9FW4zOoC/waCkxztk=
=CP2W
-----END PGP SIGNATURE-----

--oqiVxqbeHx5cy56u--

--===============0589590974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0589590974==--
