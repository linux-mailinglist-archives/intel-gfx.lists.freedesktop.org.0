Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF2A4C542
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 04:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 442AE6E437;
	Thu, 20 Jun 2019 02:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEFCE6E437
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 02:17:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 19:17:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,395,1557212400"; 
 d="asc'?scan'208";a="358802563"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.13.116])
 by fmsmga006.fm.intel.com with ESMTP; 19 Jun 2019 19:17:42 -0700
Date: Thu, 20 Jun 2019 10:15:35 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20190620021535.GA6970@zhen-hp.sh.intel.com>
References: <20190620010021.20637-1-daniele.ceraolospurio@intel.com>
 <20190620010021.20637-7-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
In-Reply-To: <20190620010021.20637-7-daniele.ceraolospurio@intel.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
Subject: Re: [Intel-gfx] [PATCH v2 6/6] drm/i915/gvt: decouple check_vgpu()
 from uncore_init()
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
Content-Type: multipart/mixed; boundary="===============1051377797=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============1051377797==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="HcAYCG3uE/tztfnV"
Content-Disposition: inline


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019.06.19 18:00:21 -0700, Daniele Ceraolo Spurio wrote:
> With multiple uncore to initialize (GT vs Display), it makes little
> sense to have the vgpu_check inside uncore_init(). We also have
> a catch-22 scenario where the uncore is required to read the vgpu
> capabilities while the vgpu capabilities are required to decide if
> we need to initialize forcewake support. To remove this circular
> dependency, we can perform the required MMIO access by mmapping just
> the vgtif shared page in mmio space and use raw accessors.
>=20
> v2: rename check_vgpu to detect_vgpu (Chris)
>=20
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>

Looks good to me.

Acked-by: Zhenyu Wang <zhenyuw@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.c     |  2 ++
>  drivers/gpu/drm/i915/i915_pvinfo.h  |  5 +++--
>  drivers/gpu/drm/i915/i915_vgpu.c    | 35 ++++++++++++++++++++++-------
>  drivers/gpu/drm/i915/i915_vgpu.h    |  2 +-
>  drivers/gpu/drm/i915/intel_uncore.c |  2 --
>  5 files changed, 33 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 00b6512cdee6..8f84ed26e972 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -1899,6 +1899,8 @@ int i915_driver_load(struct pci_dev *pdev, const st=
ruct pci_device_id *ent)
> =20
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> =20
> +	i915_detect_vgpu(dev_priv);
> +
>  	ret =3D i915_driver_init_mmio(dev_priv);
>  	if (ret < 0)
>  		goto out_runtime_pm_put;
> diff --git a/drivers/gpu/drm/i915/i915_pvinfo.h b/drivers/gpu/drm/i915/i9=
15_pvinfo.h
> index 969e514916ab..ca4661e98f79 100644
> --- a/drivers/gpu/drm/i915/i915_pvinfo.h
> +++ b/drivers/gpu/drm/i915/i915_pvinfo.h
> @@ -110,8 +110,9 @@ struct vgt_if {
>  	u32  rsv7[0x200 - 24];    /* pad to one page */
>  } __packed;
> =20
> -#define vgtif_reg(x) \
> -	_MMIO((VGT_PVINFO_PAGE + offsetof(struct vgt_if, x)))
> +#define vgtif_offset(x) (offsetof(struct vgt_if, x))
> +
> +#define vgtif_reg(x) _MMIO(VGT_PVINFO_PAGE + vgtif_offset(x))
> =20
>  /* vGPU display status to be used by the host side */
>  #define VGT_DRV_DISPLAY_NOT_READY 0
> diff --git a/drivers/gpu/drm/i915/i915_vgpu.c b/drivers/gpu/drm/i915/i915=
_vgpu.c
> index 94d3992b599d..1a8f7c731126 100644
> --- a/drivers/gpu/drm/i915/i915_vgpu.c
> +++ b/drivers/gpu/drm/i915/i915_vgpu.c
> @@ -52,34 +52,53 @@
>   */
> =20
>  /**
> - * i915_check_vgpu - detect virtual GPU
> + * i915_detect_vgpu - detect virtual GPU
>   * @dev_priv: i915 device private
>   *
>   * This function is called at the initialization stage, to detect whether
>   * running on a vGPU.
>   */
> -void i915_check_vgpu(struct drm_i915_private *dev_priv)
> +void i915_detect_vgpu(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_uncore *uncore =3D &dev_priv->uncore;
> +	struct pci_dev *pdev =3D dev_priv->drm.pdev;
>  	u64 magic;
>  	u16 version_major;
> +	void __iomem *shared_area;
> =20
>  	BUILD_BUG_ON(sizeof(struct vgt_if) !=3D VGT_PVINFO_SIZE);
> =20
> -	magic =3D __raw_uncore_read64(uncore, vgtif_reg(magic));
> -	if (magic !=3D VGT_MAGIC)
> +	/*
> +	 * This is called before we setup the main MMIO BAR mappings used via
> +	 * the uncore structure, so we need to access the BAR directly. Since
> +	 * we do not support VGT on older gens, return early so we don't have
> +	 * to consider differently numbered or sized MMIO bars
> +	 */
> +	if (INTEL_GEN(dev_priv) < 6)
> +		return;
> +
> +	shared_area =3D pci_iomap_range(pdev, 0, VGT_PVINFO_PAGE, VGT_PVINFO_SI=
ZE);
> +	if (!shared_area) {
> +		DRM_ERROR("failed to map MMIO bar to check for VGT\n");
>  		return;
> +	}
> +
> +	magic =3D readq(shared_area + vgtif_offset(magic));
> +	if (magic !=3D VGT_MAGIC)
> +		goto out;
> =20
> -	version_major =3D __raw_uncore_read16(uncore, vgtif_reg(version_major));
> +	version_major =3D readw(shared_area + vgtif_offset(version_major));
>  	if (version_major < VGT_VERSION_MAJOR) {
>  		DRM_INFO("VGT interface version mismatch!\n");
> -		return;
> +		goto out;
>  	}
> =20
> -	dev_priv->vgpu.caps =3D __raw_uncore_read32(uncore, vgtif_reg(vgt_caps)=
);
> +	dev_priv->vgpu.caps =3D readl(shared_area + vgtif_offset(vgt_caps));
> =20
>  	dev_priv->vgpu.active =3D true;
>  	DRM_INFO("Virtual GPU for Intel GVT-g detected.\n");
> +
> +out:
> +	pci_iounmap(pdev, shared_area);
>  }
> =20
>  bool intel_vgpu_has_full_ppgtt(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/i915_vgpu.h b/drivers/gpu/drm/i915/i915=
_vgpu.h
> index ebe1b7bced98..a919735fb6ce 100644
> --- a/drivers/gpu/drm/i915/i915_vgpu.h
> +++ b/drivers/gpu/drm/i915/i915_vgpu.h
> @@ -26,7 +26,7 @@
> =20
>  #include "i915_pvinfo.h"
> =20
> -void i915_check_vgpu(struct drm_i915_private *dev_priv);
> +void i915_detect_vgpu(struct drm_i915_private *dev_priv);
> =20
>  bool intel_vgpu_has_full_ppgtt(struct drm_i915_private *dev_priv);
> =20
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/i=
ntel_uncore.c
> index 2bd602a41bb7..68d54e126d79 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1650,8 +1650,6 @@ int intel_uncore_init_mmio(struct intel_uncore *unc=
ore)
>  	if (ret)
>  		return ret;
> =20
> -	i915_check_vgpu(i915);
> -
>  	if (INTEL_GEN(i915) > 5 && !intel_vgpu_active(i915))
>  		uncore->flags |=3D UNCORE_HAS_FORCEWAKE;
> =20
> --=20
> 2.20.1
>=20

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--HcAYCG3uE/tztfnV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iFwEARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXQrsRwAKCRCxBBozTXgY
J9DZAJ4mSm4VrlncOEMHm2sabvqJYcmmfgCUCnw7uPWjWHYxSqXb/yeLtmPPkw==
=n/UN
-----END PGP SIGNATURE-----

--HcAYCG3uE/tztfnV--

--===============1051377797==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1051377797==--
