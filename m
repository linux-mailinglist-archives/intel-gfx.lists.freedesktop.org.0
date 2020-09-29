Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F69D27C087
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 11:09:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C84FA89C53;
	Tue, 29 Sep 2020 09:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEC8989C56
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 09:09:31 +0000 (UTC)
IronPort-SDR: bhNKdJsT6AkVrmNxQKLP2aeM5C9nxZUnsCaGgeHYh1apgJInfVt38zqKxOmuzkzkym5aszKQFh
 4Qa+m7I9Lpcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9758"; a="223738168"
X-IronPort-AV: E=Sophos;i="5.77,317,1596524400"; 
 d="asc'?scan'208";a="223738168"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 02:09:29 -0700
IronPort-SDR: V8B+5zTyvtgoVu447vuHYdkRQH8Z5TJxy2UP8i/0hZHyPQeN3SxAY9LP/badVJ3iuMTYBodH4Q
 Fl7WEtaA/4LA==
X-IronPort-AV: E=Sophos;i="5.77,317,1596524400"; 
 d="asc'?scan'208";a="489399476"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 02:09:26 -0700
Date: Tue, 29 Sep 2020 16:49:26 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Fred Gao <fred.gao@intel.com>
Message-ID: <20200929084926.GH27141@zhen-hp.sh.intel.com>
References: <20200929161038.15465-1-fred.gao@intel.com>
MIME-Version: 1.0
In-Reply-To: <20200929161038.15465-1-fred.gao@intel.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH v2] vfio/pci: Refine Intel IGD OpRegion
 support
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
Cc: Hang Yuan <hang.yuan@linux.intel.com>, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: multipart/mixed; boundary="===============0481955914=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0481955914==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="HlL+5n6rz5pIUxbD"
Content-Disposition: inline


--HlL+5n6rz5pIUxbD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


On 2020.09.30 00:10:38 +0800, Fred Gao wrote:
> Bypass the IGD initialization for Intel's dgfx devices with own expansion
> ROM and the host/LPC bridge config space are no longer accessed.
>=20
> v2: simply test if discrete or integrated gfx device
>     with root bus. (Alex Williamson)
>

Patch title is somehow misleading that better change to what this one does
that skip VFIO IGD setup for Intel discrete graphics card.

With that,

Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>

> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> Cc: Xiong Zhang <xiong.y.zhang@intel.com>
> Cc: Hang Yuan <hang.yuan@linux.intel.com>
> Cc: Stuart Summers <stuart.summers@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Fred Gao <fred.gao@intel.com>
> ---
>  drivers/vfio/pci/vfio_pci.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/vfio/pci/vfio_pci.c b/drivers/vfio/pci/vfio_pci.c
> index f634c81998bb..9258ccfadb79 100644
> --- a/drivers/vfio/pci/vfio_pci.c
> +++ b/drivers/vfio/pci/vfio_pci.c
> @@ -336,10 +336,11 @@ static int vfio_pci_enable(struct vfio_pci_device *=
vdev)
>  	if (!vfio_vga_disabled() && vfio_pci_is_vga(pdev))
>  		vdev->has_vga =3D true;
> =20
> -
> +	/* Intel's dgfx should not appear on root bus */
>  	if (vfio_pci_is_vga(pdev) &&
>  	    pdev->vendor =3D=3D PCI_VENDOR_ID_INTEL &&
> -	    IS_ENABLED(CONFIG_VFIO_PCI_IGD)) {
> +	    IS_ENABLED(CONFIG_VFIO_PCI_IGD) &&
> +	    pci_is_root_bus(pdev->bus)) {
>  		ret =3D vfio_pci_igd_init(vdev);
>  		if (ret) {
>  			pci_warn(pdev, "Failed to setup Intel IGD regions\n");
> --=20
> 2.24.1.1.gb6d4d82bd5
>=20

--=20

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--HlL+5n6rz5pIUxbD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCX3L1FQAKCRCxBBozTXgY
J0HhAJ4zPRLTzVpVZIG1lz/KPtRhS21HnwCeN0l7hSLjgzmKH81NVxD5ObtDDfU=
=fdQd
-----END PGP SIGNATURE-----

--HlL+5n6rz5pIUxbD--

--===============0481955914==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0481955914==--
