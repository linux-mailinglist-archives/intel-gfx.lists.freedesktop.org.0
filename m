Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7AB2F5A70
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 06:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A64F89E86;
	Thu, 14 Jan 2021 05:30:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 825DF89E86
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 05:30:58 +0000 (UTC)
IronPort-SDR: jc9iqhLibPXoOSpKm2KH0UpvvLp2pro7/8x+SpatQ+WTt24APNeNMNi2KK5eN/ehkRR/sEPOjt
 y/OfoprevoRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="177533468"
X-IronPort-AV: E=Sophos;i="5.79,346,1602572400"; 
 d="asc'?scan'208";a="177533468"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 21:30:51 -0800
IronPort-SDR: il3UdsO/yIbbo0aFlrbJr/u/dD7Ztd+BzuMQ94RKy0d+SHVnTtm6DZIbhrPoYA6n0aw2kdIYRy
 QHxGSHgkVF0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,346,1602572400"; 
 d="asc'?scan'208";a="405054605"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jan 2021 21:30:50 -0800
Date: Thu, 14 Jan 2021 13:14:10 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Xiong Zhang <xiong.y.zhang@intel.com>
Message-ID: <20210114051410.GU15982@zhen-hp.sh.intel.com>
References: <87im8soq2w.fsf@intel.com>
 <20210114005819.4290-1-xiong.y.zhang@intel.com>
MIME-Version: 1.0
In-Reply-To: <20210114005819.4290-1-xiong.y.zhang@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915: Try to guess PCH type even
 without ISA bridge
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Content-Type: multipart/mixed; boundary="===============0452206139=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0452206139==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="8P1HSweYDcXXzwPJ"
Content-Disposition: inline


--8P1HSweYDcXXzwPJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2021.01.14 08:58:19 +0800, Xiong Zhang wrote:
> From: Zhenyu Wang <zhenyuw@linux.intel.com>
>=20
> Some vmm like hyperv and crosvm don't supply any ISA bridge to their gues=
t,
> when igd passthrough is equipped on these vmm, guest i915 display may
> couldn't work as guest i915 detects PCH_NONE pch type.
>=20
> When i915 runs as guest, this patch guess pch type through gpu type even
> without ISA bridge.
>=20
> v2: Fix CI warning
> v3: Add HAS_DISPLAY()=3D true condition beforce guessing virt pch, then
>     refactori.
> v4: Fix CI warning
>=20
> Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>
> Signed-off-by: Xiong Zhang <xiong.y.zhang@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h  |  7 +++++-
>  drivers/gpu/drm/i915/intel_pch.c | 39 ++++++++++++++++++--------------
>  2 files changed, 28 insertions(+), 18 deletions(-)
>

Good to me, thanks! I think this should change author to you. :)

Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 2688f3e3e349..266dec627fa2 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1754,6 +1754,11 @@ tgl_revids_get(struct drm_i915_private *dev_priv)
>  #define INTEL_DISPLAY_ENABLED(dev_priv) \
>  	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->pa=
rams.disable_display)
> =20
> +static inline bool run_as_guest(void)
> +{
> +	return !hypervisor_is_type(X86_HYPER_NATIVE);
> +}
> +
>  static inline bool intel_vtd_active(void)
>  {
>  #ifdef CONFIG_INTEL_IOMMU
> @@ -1762,7 +1767,7 @@ static inline bool intel_vtd_active(void)
>  #endif
> =20
>  	/* Running as a guest, we assume the host is enforcing VT'd */
> -	return !hypervisor_is_type(X86_HYPER_NATIVE);
> +	return run_as_guest();
>  }
> =20
>  static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *d=
ev_priv)
> diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/inte=
l_pch.c
> index f31c0dabd0cc..ecaf314d60b6 100644
> --- a/drivers/gpu/drm/i915/intel_pch.c
> +++ b/drivers/gpu/drm/i915/intel_pch.c
> @@ -143,8 +143,9 @@ static bool intel_is_virt_pch(unsigned short id,
>  		 sdevice =3D=3D PCI_SUBDEVICE_ID_QEMU));
>  }
> =20
> -static unsigned short
> -intel_virt_detect_pch(const struct drm_i915_private *dev_priv)
> +static void
> +intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
> +		      unsigned short *pch_id, enum intel_pch *pch_type)
>  {
>  	unsigned short id =3D 0;
> =20
> @@ -181,12 +182,21 @@ intel_virt_detect_pch(const struct drm_i915_private=
 *dev_priv)
>  	else
>  		drm_dbg_kms(&dev_priv->drm, "Assuming no PCH\n");
> =20
> -	return id;
> +	*pch_type =3D intel_pch_type(dev_priv, id);
> +
> +	/* Sanity check virtual PCH id */
> +	if (drm_WARN_ON(&dev_priv->drm,
> +			id && *pch_type =3D=3D PCH_NONE))
> +		id =3D 0;
> +
> +	*pch_id =3D id;
>  }
> =20
>  void intel_detect_pch(struct drm_i915_private *dev_priv)
>  {
>  	struct pci_dev *pch =3D NULL;
> +	unsigned short id;
> +	enum intel_pch pch_type;
> =20
>  	/* DG1 has south engine display on the same PCI device */
>  	if (IS_DG1(dev_priv)) {
> @@ -206,9 +216,6 @@ void intel_detect_pch(struct drm_i915_private *dev_pr=
iv)
>  	 * of only checking the first one.
>  	 */
>  	while ((pch =3D pci_get_class(PCI_CLASS_BRIDGE_ISA << 8, pch))) {
> -		unsigned short id;
> -		enum intel_pch pch_type;
> -
>  		if (pch->vendor !=3D PCI_VENDOR_ID_INTEL)
>  			continue;
> =20
> @@ -221,14 +228,7 @@ void intel_detect_pch(struct drm_i915_private *dev_p=
riv)
>  			break;
>  		} else if (intel_is_virt_pch(id, pch->subsystem_vendor,
>  					     pch->subsystem_device)) {
> -			id =3D intel_virt_detect_pch(dev_priv);
> -			pch_type =3D intel_pch_type(dev_priv, id);
> -
> -			/* Sanity check virtual PCH id */
> -			if (drm_WARN_ON(&dev_priv->drm,
> -					id && pch_type =3D=3D PCH_NONE))
> -				id =3D 0;
> -
> +			intel_virt_detect_pch(dev_priv, &id, &pch_type);
>  			dev_priv->pch_type =3D pch_type;
>  			dev_priv->pch_id =3D id;
>  			break;
> @@ -244,10 +244,15 @@ void intel_detect_pch(struct drm_i915_private *dev_=
priv)
>  			    "Display disabled, reverting to NOP PCH\n");
>  		dev_priv->pch_type =3D PCH_NOP;
>  		dev_priv->pch_id =3D 0;
> +	} else if (!pch) {
> +		if (run_as_guest() && HAS_DISPLAY(dev_priv)) {
> +			intel_virt_detect_pch(dev_priv, &id, &pch_type);
> +			dev_priv->pch_type =3D pch_type;
> +			dev_priv->pch_id =3D id;
> +		} else {
> +			drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
> +		}
>  	}
> =20
> -	if (!pch)
> -		drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
> -
>  	pci_dev_put(pch);
>  }
> --=20
> 2.17.1
>=20

--8P1HSweYDcXXzwPJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCX//THQAKCRCxBBozTXgY
J0/HAJ97LViIsW5KyVFIlIb7xfOQGt44iQCeJPlm/fz530ErYS76sU+Lx4iNDIU=
=WxuG
-----END PGP SIGNATURE-----

--8P1HSweYDcXXzwPJ--

--===============0452206139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0452206139==--
