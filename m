Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BFB34E441
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Mar 2021 11:25:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFC876E887;
	Tue, 30 Mar 2021 09:25:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 699DB6E887
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Mar 2021 09:25:46 +0000 (UTC)
IronPort-SDR: N36yEY4BoprWiaa8RrRx/l5FNf5Nqk239HESfeFQgqJ08ldw6VHtUo0H2UrKMdFy8QEUBSkPZr
 vK4qzOvPXpRg==
X-IronPort-AV: E=McAfee;i="6000,8403,9938"; a="276897253"
X-IronPort-AV: E=Sophos;i="5.81,290,1610438400"; 
 d="asc'?scan'208";a="276897253"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 02:25:45 -0700
IronPort-SDR: l+QCd94oY5/e9k1noc0scK7J8fCi0R+JAoZ4CRp5aNvZHvzeuRznn9angGqC2ujepaYDLgGKPn
 FBCtKVjs1y9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,290,1610438400"; 
 d="asc'?scan'208";a="445032237"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by fmsmga002.fm.intel.com with ESMTP; 30 Mar 2021 02:25:44 -0700
Date: Tue, 30 Mar 2021 17:08:28 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Alex Williamson <alex.williamson@redhat.com>
Message-ID: <20210330090828.GL1551@zhen-hp.sh.intel.com>
References: <20210302130220.9349-1-fred.gao@intel.com>
 <20210325170953.24549-1-fred.gao@intel.com>
MIME-Version: 1.0
In-Reply-To: <20210325170953.24549-1-fred.gao@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5] vfio/pci: Add support for opregion v2.1+
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
Cc: intel-gfx@lists.freedesktop.org, Swee Yee Fonn <swee.yee.fonn@intel.com>,
 kvm@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1475673302=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1475673302==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cGfB/trNgB3WtPHu"
Content-Disposition: inline


--cGfB/trNgB3WtPHu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2021.03.26 01:09:53 +0800, Fred Gao wrote:
> Before opregion version 2.0 VBT data is stored in opregion mailbox #4,
> but when VBT data exceeds 6KB size and cannot be within mailbox #4
> then from opregion v2.0+, Extended VBT region, next to opregion is
> used to hold the VBT data, so the total size will be opregion size plus
> extended VBT region size.
>=20
> Since opregion v2.0 with physical host VBT address would not be
> practically available for end user and guest can not directly access
> host physical address, so it is not supported.
>=20
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> Signed-off-by: Swee Yee Fonn <swee.yee.fonn@intel.com>
> Signed-off-by: Fred Gao <fred.gao@intel.com>
> ---

Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>

Hi, Alex, pls let us know if you have other concern to merge this one.

Thanks!

>  drivers/vfio/pci/vfio_pci_igd.c | 53 +++++++++++++++++++++++++++++++++
>  1 file changed, 53 insertions(+)
>=20
> diff --git a/drivers/vfio/pci/vfio_pci_igd.c b/drivers/vfio/pci/vfio_pci_=
igd.c
> index e66dfb0178ed..228df565e9bc 100644
> --- a/drivers/vfio/pci/vfio_pci_igd.c
> +++ b/drivers/vfio/pci/vfio_pci_igd.c
> @@ -21,6 +21,10 @@
>  #define OPREGION_SIZE		(8 * 1024)
>  #define OPREGION_PCI_ADDR	0xfc
> =20
> +#define OPREGION_RVDA		0x3ba
> +#define OPREGION_RVDS		0x3c2
> +#define OPREGION_VERSION	0x16
> +
>  static size_t vfio_pci_igd_rw(struct vfio_pci_device *vdev, char __user =
*buf,
>  			      size_t count, loff_t *ppos, bool iswrite)
>  {
> @@ -58,6 +62,7 @@ static int vfio_pci_igd_opregion_init(struct vfio_pci_d=
evice *vdev)
>  	u32 addr, size;
>  	void *base;
>  	int ret;
> +	u16 version;
> =20
>  	ret =3D pci_read_config_dword(vdev->pdev, OPREGION_PCI_ADDR, &addr);
>  	if (ret)
> @@ -83,6 +88,54 @@ static int vfio_pci_igd_opregion_init(struct vfio_pci_=
device *vdev)
> =20
>  	size *=3D 1024; /* In KB */
> =20
> +	/*
> +	 * Support opregion v2.1+
> +	 * When VBT data exceeds 6KB size and cannot be within mailbox #4, then
> +	 * the Extended VBT region next to opregion is used to hold the VBT dat=
a.
> +	 * RVDA (Relative Address of VBT Data from Opregion Base) and RVDS
> +	 * (Raw VBT Data Size) from opregion structure member are used to hold =
the
> +	 * address from region base and size of VBT data. RVDA/RVDS are not
> +	 * defined before opregion 2.0.
> +	 *
> +	 * opregion 2.1+: RVDA is unsigned, relative offset from
> +	 * opregion base, and should point to the end of opregion.
> +	 * otherwise, exposing to userspace to allow read access to everything =
between
> +	 * the OpRegion and VBT is not safe.
> +	 * RVDS is defined as size in bytes.
> +	 *
> +	 * opregion 2.0: rvda is the physical VBT address.
> +	 * Since rvda is HPA it cannot be directly used in guest.
> +	 * And it should not be practically available for end user,so it is not=
 supported.
> +	 */
> +	version =3D le16_to_cpu(*(__le16 *)(base + OPREGION_VERSION));
> +	if (version >=3D 0x0200) {
> +		u64 rvda;
> +		u32 rvds;
> +
> +		rvda =3D le64_to_cpu(*(__le64 *)(base + OPREGION_RVDA));
> +		rvds =3D le32_to_cpu(*(__le32 *)(base + OPREGION_RVDS));
> +		if (rvda && rvds) {
> +			/* no support for opregion v2.0 with physical VBT address */
> +			if (version =3D=3D 0x0200) {
> +				memunmap(base);
> +				pci_err(vdev->pdev,
> +					"IGD assignment does not support opregion v2.0 with an extended VBT=
 region\n");
> +				return -EINVAL;
> +			}
> +
> +			if (rvda !=3D size) {
> +				memunmap(base);
> +				pci_err(vdev->pdev,
> +					"Extended VBT does not follow opregion on version 0x%04x\n",
> +					version);
> +				return -EINVAL;
> +			}
> +
> +			/* region size for opregion v2.0+: opregion and VBT size. */
> +			size +=3D rvds;
> +		}
> +	}
> +
>  	if (size !=3D OPREGION_SIZE) {
>  		memunmap(base);
>  		base =3D memremap(addr, size, MEMREMAP_WB);
> --=20
> 2.24.1.1.gb6d4d82bd5
>=20

--cGfB/trNgB3WtPHu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCYGLqiAAKCRCxBBozTXgY
Jw4XAJkB32OoMxlYMVx5y6A1F3RW81GUkACeIdlFGwuDP1XG/QeFTVv4ZiDvySc=
=KHHI
-----END PGP SIGNATURE-----

--cGfB/trNgB3WtPHu--

--===============1475673302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1475673302==--
