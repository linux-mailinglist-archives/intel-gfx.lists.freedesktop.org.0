Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C702E05C8
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 06:31:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0902C6E0D2;
	Tue, 22 Dec 2020 05:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 687BE6E0D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Dec 2020 05:31:03 +0000 (UTC)
IronPort-SDR: BoFu29PMDZ3bJadgPH70WBRXqKbnhRVcGfQlqGobphVHeo00hKA6YZmUtstC6qW59lrhW/TuAL
 7oP8cVwNGa8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="237385614"
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; 
 d="asc'?scan'208";a="237385614"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 21:31:02 -0800
IronPort-SDR: NCoBf3vanKEdn4gqGZq/zRDxJBUMPVsF1dNJpxcmbEOHktxm7wgMTNOPo6hn72tRHZ1Fa7CfEG
 SZyJuQHosPqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; 
 d="asc'?scan'208";a="396843339"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Dec 2020 21:31:01 -0800
Date: Tue, 22 Dec 2020 13:15:13 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Xiong Zhang <xiong.y.zhang@intel.com>
Message-ID: <20201222051513.GY16939@zhen-hp.sh.intel.com>
References: <160793037629.28163.3135436538881981223@emeril.freedesktop.org>
 <20201218090531.23241-1-xiong.y.zhang@intel.com>
MIME-Version: 1.0
In-Reply-To: <20201218090531.23241-1-xiong.y.zhang@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Try to guess PCH type even
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
Content-Type: multipart/mixed; boundary="===============0425190782=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0425190782==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="h85LGMdA0M9ASxa6"
Content-Disposition: inline


--h85LGMdA0M9ASxa6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020.12.18 17:05:31 +0800, Xiong Zhang wrote:
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
>=20
> Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>

Need to add yourself in sob.

> ---
>  drivers/gpu/drm/i915/i915_drv.h  |  7 +++++-
>  drivers/gpu/drm/i915/intel_pch.c | 38 ++++++++++++++++++++++----------
>  2 files changed, 32 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 5a7df5621aa3..df0b8f9268b2 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1758,6 +1758,11 @@ tgl_revids_get(struct drm_i915_private *dev_priv)
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
> @@ -1766,7 +1771,7 @@ static inline bool intel_vtd_active(void)
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
> index f31c0dabd0cc..a73c60bf349e 100644
> --- a/drivers/gpu/drm/i915/intel_pch.c
> +++ b/drivers/gpu/drm/i915/intel_pch.c
> @@ -184,6 +184,23 @@ intel_virt_detect_pch(const struct drm_i915_private =
*dev_priv)
>  	return id;
>  }
> =20
> +static void intel_detect_pch_virt(struct drm_i915_private *dev_priv)
> +{
> +	unsigned short id;
> +	enum intel_pch pch_type;
> +
> +	id =3D intel_virt_detect_pch(dev_priv);
> +	pch_type =3D intel_pch_type(dev_priv, id);
> +
> +	/* Sanity check virtual PCH id */
> +	if (drm_WARN_ON(&dev_priv->drm,
> +			id && pch_type =3D=3D PCH_NONE))
> +		id =3D 0;
> +
> +	dev_priv->pch_type =3D pch_type;
> +	dev_priv->pch_id =3D id;
> +}
> +
>  void intel_detect_pch(struct drm_i915_private *dev_priv)
>  {
>  	struct pci_dev *pch =3D NULL;
> @@ -221,16 +238,7 @@ void intel_detect_pch(struct drm_i915_private *dev_p=
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
> -			dev_priv->pch_type =3D pch_type;
> -			dev_priv->pch_id =3D id;
> +			intel_detect_pch_virt(dev_priv);
>  			break;
>  		}
>  	}
> @@ -246,8 +254,14 @@ void intel_detect_pch(struct drm_i915_private *dev_p=
riv)
>  		dev_priv->pch_id =3D 0;
>  	}
> =20
> -	if (!pch)
> -		drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
> +	if (!pch) {

Require HAS_DISPLAY() here?

> +		if (run_as_guest()) {
> +			drm_dbg_kms(&dev_priv->drm, "No PCH found in vm, try guess..\n");
> +			intel_detect_pch_virt(dev_priv);
> +		} else {
> +			drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
> +		}
> +	}
> =20
>  	pci_dev_put(pch);
>  }
> --=20
> 2.17.1
>=20

--=20

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--h85LGMdA0M9ASxa6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCX+GA2wAKCRCxBBozTXgY
J68PAJ9TRCTN0B9sVUJRjdesiv5UI2vsuACcCJ1LZbNCMjgE3Po2bZ43MiX07PM=
=o+2A
-----END PGP SIGNATURE-----

--h85LGMdA0M9ASxa6--

--===============0425190782==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0425190782==--
