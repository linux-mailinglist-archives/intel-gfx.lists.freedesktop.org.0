Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EECF130B6D5
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 06:24:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E703A6E879;
	Tue,  2 Feb 2021 05:24:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B25486E879
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 05:24:51 +0000 (UTC)
IronPort-SDR: xBpSYh5buOZihW5h61MwIVw6FJSLFyLfcry5zVI6lLmo0WEt02UbGTlTRKbQU1p7fhcLyDxrGk
 Ej8frGrPRGbw==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="167906602"
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; 
 d="asc'?scan'208";a="167906602"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 21:24:50 -0800
IronPort-SDR: nMdx5nQTel/xTpka9MyYBqml3XQXA1DPhNOFbbK9Y7veUyqRKQusUxesUyk71QT0frRvOqC1sw
 UX3lp9OT06VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; 
 d="asc'?scan'208";a="406021960"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by fmsmga004.fm.intel.com with ESMTP; 01 Feb 2021 21:24:48 -0800
Date: Tue, 2 Feb 2021 13:09:39 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Alex Williamson <alex.williamson@redhat.com>
Message-ID: <20210202050939.GD1538@zhen-hp.sh.intel.com>
References: <20201202171249.17083-1-fred.gao@intel.com>
 <20210118123834.5991-1-fred.gao@intel.com>
 <20210121133318.3f0824e8@omen.home.shazbot.org>
MIME-Version: 1.0
In-Reply-To: <20210121133318.3f0824e8@omen.home.shazbot.org>
Subject: Re: [Intel-gfx] [PATCH v2] vfio/pci: Add support for opregion v2.0+
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
Cc: Fred Gao <fred.gao@intel.com>, intel-gfx@lists.freedesktop.org,
 Swee Yee Fonn <swee.yee.fonn@intel.com>, kvm@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0672440201=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0672440201==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="lkTb+7nhmha7W+c3"
Content-Disposition: inline


--lkTb+7nhmha7W+c3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2021.01.21 13:33:18 -0700, Alex Williamson wrote:
> On Mon, 18 Jan 2021 20:38:34 +0800
> Fred Gao <fred.gao@intel.com> wrote:
>=20
> > Before opregion version 2.0 VBT data is stored in opregion mailbox #4,
> > However, When VBT data exceeds 6KB size and cannot be within mailbox #4
> > starting from opregion v2.0+, Extended VBT region, next to opregion, is
> > used to hold the VBT data, so the total size will be opregion size plus
> > extended VBT region size.
> >=20
> > Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> > Signed-off-by: Swee Yee Fonn <swee.yee.fonn@intel.com>
> > Signed-off-by: Fred Gao <fred.gao@intel.com>
> > ---
> >  drivers/vfio/pci/vfio_pci_igd.c | 59 +++++++++++++++++++++++++++++++++
> >  1 file changed, 59 insertions(+)
> >=20
> > diff --git a/drivers/vfio/pci/vfio_pci_igd.c b/drivers/vfio/pci/vfio_pc=
i_igd.c
> > index 53d97f459252..fc470278a492 100644
> > --- a/drivers/vfio/pci/vfio_pci_igd.c
> > +++ b/drivers/vfio/pci/vfio_pci_igd.c
> > @@ -21,6 +21,10 @@
> >  #define OPREGION_SIZE		(8 * 1024)
> >  #define OPREGION_PCI_ADDR	0xfc
> > =20
> > +#define OPREGION_RVDA		0x3ba
> > +#define OPREGION_RVDS		0x3c2
> > +#define OPREGION_VERSION	0x16
> > +
> >  static size_t vfio_pci_igd_rw(struct vfio_pci_device *vdev, char __use=
r *buf,
> >  			      size_t count, loff_t *ppos, bool iswrite)
> >  {
> > @@ -58,6 +62,7 @@ static int vfio_pci_igd_opregion_init(struct vfio_pci=
_device *vdev)
> >  	u32 addr, size;
> >  	void *base;
> >  	int ret;
> > +	u16 version;
> > =20
> >  	ret =3D pci_read_config_dword(vdev->pdev, OPREGION_PCI_ADDR, &addr);
> >  	if (ret)
> > @@ -83,6 +88,60 @@ static int vfio_pci_igd_opregion_init(struct vfio_pc=
i_device *vdev)
> > =20
> >  	size *=3D 1024; /* In KB */
> > =20
> > +	/*
> > +	 * Support opregion v2.0+
> > +	 * When VBT data exceeds 6KB size and cannot be within mailbox #4
> > +	 * Extended VBT region, next to opregion, is used to hold the VBT dat=
a.
> > +	 * RVDA (Relative Address of VBT Data from Opregion Base) and RVDS
> > +	 * (VBT Data Size) from opregion structure member are used to hold the
> > +	 * address from region base and size of VBT data while RVDA/RVDS
> > +	 * are not defined before opregion 2.0.
> > +	 *
> > +	 * opregion 2.0: rvda is the physical VBT address.
> > +	 *
> > +	 * opregion 2.1+: rvda is unsigned, relative offset from
> > +	 * opregion base, and should never point within opregion.
> > +	 */
> > +	version =3D le16_to_cpu(*(__le16 *)(base + OPREGION_VERSION));
> > +	if (version >=3D 0x0200) {
> > +		u64 rvda;
> > +		u32 rvds;
> > +
> > +		rvda =3D le64_to_cpu(*(__le64 *)(base + OPREGION_RVDA));
> > +		rvds =3D le32_to_cpu(*(__le32 *)(base + OPREGION_RVDS));
> > +		if (rvda && rvds) {
> > +			u32 offset;
> > +
> > +			if (version =3D=3D 0x0200)
> > +				offset =3D rvda - (u64)addr;
> > +			else
> > +				offset =3D rvda;
> > +
> > +			if (offset !=3D size) {
> > +				pci_err(vdev->pdev,
> > +				"Extended VBT does not follow opregion !\n"
> > +				"opregion version 0x%x:offset 0x%x\n", version, offset);
> > +				return -EINVAL;
> > +			}
> > +
> > +			/*
> > +			 * the only difference between opregion 2.0 and 2.1 is
> > +			 * rvda addressing mode. since rvda is physical host
> > +			 * VBT address and cannot be directly used in guest,
> > +			 * faked into opregion 2.1's relative offset.
> > +			 */
> > +			if (version =3D=3D 0x0200) {
> > +				*(__le16 *)(base + OPREGION_VERSION) =3D
> > +					cpu_to_le16(0x0201);
> > +				(*(__le64 *)(base + OPREGION_RVDA)) =3D
> > +					cpu_to_le64((rvda - (u64)addr));
> > +			}
>=20
> There's a much better description of the fields and logic here, thanks
> for that.  I also see we've closed the gap to require the extended
> region to immediately follow the opregion table.  The code
> immediately above still makes me nervous as even if this is the only
> difference between the specs, code might make some differentiation
> based on the spec version, which we're changing in host memory for all
> subsequent drivers until the host is rebooted.  Could we use a pci_dbg()
> in this branch to flag that event in dmesg for debugging?  Thanks,
>=20

Alex, that's really valid concern, even we thought it should be no problem,
we asked firmware team again, it looks for opregion 2.0 with VBT >6k case (=
RVDA !=3D 0)
is not practically available for end user. So I think we may just not suppo=
rt
for that. For opregion 2.1+, just extend the size properly.

Thanks

>=20
> > +
> > +			/* region size for opregion v2.0+: opregion and VBT size */
> > +			size =3D offset + rvds;
> > +		}
> > +	}
> > +
> >  	if (size !=3D OPREGION_SIZE) {
> >  		memunmap(base);
> >  		base =3D memremap(addr, size, MEMREMAP_WB);
>=20

--lkTb+7nhmha7W+c3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCYBjejgAKCRCxBBozTXgY
J2M0AJ9P1PoH/IpW7HS2Kb1rXdl+ORz+jgCgjzzU8c7Rf2MGh5g+ZAGiuE4UNMU=
=9+SP
-----END PGP SIGNATURE-----

--lkTb+7nhmha7W+c3--

--===============0672440201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0672440201==--
