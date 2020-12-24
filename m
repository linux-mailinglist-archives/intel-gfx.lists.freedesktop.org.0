Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EB82E2440
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 06:05:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD8F389F92;
	Thu, 24 Dec 2020 05:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F51089F92
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 05:05:45 +0000 (UTC)
IronPort-SDR: h3X18gKxyxTaIlyV89i6ZgT2W6cksYsIFIUYuy5d9WTuvzlXovTd051CmgCmtkRsqq5Ox5SmN9
 PEtwQKnhlAVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="175334269"
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; 
 d="asc'?scan'208";a="175334269"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 21:05:44 -0800
IronPort-SDR: TeNQPd8HJcixG7kINLiReNqqi9K03hTiUKMabUhDpnBqsFK9lB1AIGSBAZk7IpphJQj+WcrPfs
 ULVQ/n0X/GFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,444,1599548400"; 
 d="asc'?scan'208";a="390856156"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
 by fmsmga004.fm.intel.com with ESMTP; 23 Dec 2020 21:05:43 -0800
Date: Thu, 24 Dec 2020 12:49:50 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: "Zhang, Xiong Y" <xiong.y.zhang@intel.com>
Message-ID: <20201224044950.GE16939@zhen-hp.sh.intel.com>
References: <160793037629.28163.3135436538881981223@emeril.freedesktop.org>
 <20201218090531.23241-1-xiong.y.zhang@intel.com>
 <87im8soq2w.fsf@intel.com>
 <DM6PR11MB334085330EFDA917B59BDE2FBBDD0@DM6PR11MB3340.namprd11.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB334085330EFDA917B59BDE2FBBDD0@DM6PR11MB3340.namprd11.prod.outlook.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Content-Type: multipart/mixed; boundary="===============0084096754=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--===============0084096754==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="4vgOdmpzXGVCiUly"
Content-Disposition: inline


--4vgOdmpzXGVCiUly
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2020.12.24 02:54:18 +0000, Zhang, Xiong Y wrote:
> > On Fri, 18 Dec 2020, Xiong Zhang <xiong.y.zhang@intel.com> wrote:
> > > From: Zhenyu Wang <zhenyuw@linux.intel.com>
> > >
> > > Some vmm like hyperv and crosvm don't supply any ISA bridge to their
> > > guest, when igd passthrough is equipped on these vmm, guest i915
> > > display may couldn't work as guest i915 detects PCH_NONE pch type.
> > >
> > > When i915 runs as guest, this patch guess pch type through gpu type
> > > even without ISA bridge.
> > >
> > > v2: Fix CI warning
> > >
> > > Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_drv.h  |  7 +++++-
> > > drivers/gpu/drm/i915/intel_pch.c | 38 ++++++++++++++++++++++----------
> > >  2 files changed, 32 insertions(+), 13 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > > b/drivers/gpu/drm/i915/i915_drv.h index 5a7df5621aa3..df0b8f9268b2
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -1758,6 +1758,11 @@ tgl_revids_get(struct drm_i915_private
> > > *dev_priv)  #define INTEL_DISPLAY_ENABLED(dev_priv) \
> > >  	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)),
> > > !(dev_priv)->params.disable_display)
> > >
> > > +static inline bool run_as_guest(void) {
> > > +	return !hypervisor_is_type(X86_HYPER_NATIVE);
> > > +}
> > > +
> > >  static inline bool intel_vtd_active(void)  {  #ifdef
> > > CONFIG_INTEL_IOMMU @@ -1766,7 +1771,7 @@ static inline bool
> > > intel_vtd_active(void)  #endif
> > >
> > >  	/* Running as a guest, we assume the host is enforcing VT'd */
> > > -	return !hypervisor_is_type(X86_HYPER_NATIVE);
> > > +	return run_as_guest();
> > >  }
> > >
> > >  static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private
> > > *dev_priv) diff --git a/drivers/gpu/drm/i915/intel_pch.c
> > > b/drivers/gpu/drm/i915/intel_pch.c
> > > index f31c0dabd0cc..a73c60bf349e 100644
> > > --- a/drivers/gpu/drm/i915/intel_pch.c
> > > +++ b/drivers/gpu/drm/i915/intel_pch.c
> > > @@ -184,6 +184,23 @@ intel_virt_detect_pch(const struct
> > drm_i915_private *dev_priv)
> > >  	return id;
> > >  }
> > >
> > > +static void intel_detect_pch_virt(struct drm_i915_private *dev_priv)
> > > +{
> > > +	unsigned short id;
> > > +	enum intel_pch pch_type;
> > > +
> > > +	id =3D intel_virt_detect_pch(dev_priv);
> >=20
> > intel_detect_pch_virt() calls intel_virt_detect_pch()... the naming sho=
uld be
> > clarified to make some difference.
>  [Zhang, Xiong Y] Indeed the naming is confusing. How about deleting this=
 new added function, then move intel_pch_type() calling into original intel=
_virt_detect_pch(), and let intel_virt_detect_pch() return id and pch_type,=
  finally assign id and pch_type  in intel_detect_pch().
>=20

May just put those in intel_virt_detect_pch() for all virt cases.

> >=20
> > > +	pch_type =3D intel_pch_type(dev_priv, id);
> > > +
> > > +	/* Sanity check virtual PCH id */
> > > +	if (drm_WARN_ON(&dev_priv->drm,
> > > +			id && pch_type =3D=3D PCH_NONE))
> > > +		id =3D 0;
> > > +
> > > +	dev_priv->pch_type =3D pch_type;
> > > +	dev_priv->pch_id =3D id;
> >=20
> > Previously the pch type and id assignments were all done in
> > intel_detect_pch(), so moving this to a separate function in *some* but=
 not
> > all cases reduces clarity too.
> >=20
> > BR,
> > Jani.
> >=20
> > > +}
> > > +
> > >  void intel_detect_pch(struct drm_i915_private *dev_priv)  {
> > >  	struct pci_dev *pch =3D NULL;
> > > @@ -221,16 +238,7 @@ void intel_detect_pch(struct drm_i915_private
> > *dev_priv)
> > >  			break;
> > >  		} else if (intel_is_virt_pch(id, pch->subsystem_vendor,
> > >  					     pch->subsystem_device)) {
> > > -			id =3D intel_virt_detect_pch(dev_priv);
> > > -			pch_type =3D intel_pch_type(dev_priv, id);
> > > -
> > > -			/* Sanity check virtual PCH id */
> > > -			if (drm_WARN_ON(&dev_priv->drm,
> > > -					id && pch_type =3D=3D PCH_NONE))
> > > -				id =3D 0;
> > > -
> > > -			dev_priv->pch_type =3D pch_type;
> > > -			dev_priv->pch_id =3D id;
> > > +			intel_detect_pch_virt(dev_priv);
> > >  			break;
> > >  		}
> > >  	}
> > > @@ -246,8 +254,14 @@ void intel_detect_pch(struct drm_i915_private
> > *dev_priv)
> > >  		dev_priv->pch_id =3D 0;
> > >  	}
> > >
> > > -	if (!pch)
> > > -		drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
> > > +	if (!pch) {
> > > +		if (run_as_guest()) {
> > > +			drm_dbg_kms(&dev_priv->drm, "No PCH found in
> > vm, try guess..\n");
> > > +			intel_detect_pch_virt(dev_priv);
> > > +		} else {
> > > +			drm_dbg_kms(&dev_priv->drm, "No PCH found.\n");
> > > +		}
> > > +	}
> > >
> > >  	pci_dev_put(pch);
> > >  }
> >=20
> > --
> > Jani Nikula, Intel Open Source Graphics Center

--=20

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--4vgOdmpzXGVCiUly
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCX+Qd6QAKCRCxBBozTXgY
J1F7AJ9ZOJGSG8dCsNgpp+sVvRXmPZz9sQCaA9LFc0efXB6IoT2lk1zFzGK6nMk=
=gMYd
-----END PGP SIGNATURE-----

--4vgOdmpzXGVCiUly--

--===============0084096754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0084096754==--
