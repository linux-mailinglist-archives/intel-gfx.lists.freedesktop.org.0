Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BE64C0AAF
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 04:48:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 760B310E248;
	Wed, 23 Feb 2022 03:48:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F42F10E248
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 03:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645588103; x=1677124103;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=6xr0XZlc7cVi+Cf2sOsm8PRMmN1LtsKCDQJ6VuRav68=;
 b=FZR5+M2i4MC4kY/HrGWfMLEdKBnU17I9IdVgKlVZhWU1YNC/xgaa+hfI
 /3yU9lhkJnhpyd0NJAzg1pENPajwQDL2aEKKZ0ysEtPHtEqKc12k0BUyB
 KxTRm0UIyb7lAfahl2Vvpp4AivHtTw0/SQRHcLXxMJmpbw5hRJJC5pEoB
 dfIC78AS8pdBUdKAMIWTxRKK9yhf2R4d73GuCOfpmOnUONVBiKzH22ACZ
 z45rKyw34ITLCO0g8gyZJGraVodRvVqnzDdtdeTTDjCnqH2TBQ2qFLlz3
 F+LaTCtO9HW6hlnj4a44eQW00wRJENANw6qVx6uGABhCG0bSHX1vIEP3G g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="338313121"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; 
 d="asc'?scan'208";a="338313121"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 19:48:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; 
 d="asc'?scan'208";a="591554954"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.59])
 by fmsmga008.fm.intel.com with ESMTP; 22 Feb 2022 19:48:21 -0800
Date: Wed, 23 Feb 2022 11:28:46 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220223032846.GE1100@zhen-hp.sh.intel.com>
References: <20220222141424.35165-1-jose.souza@intel.com>
 <6c43bb44-e38b-572e-0f8b-2559a7f0514f@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature"; boundary="AzNpbZlgThVzWita"
Content-Disposition: inline
In-Reply-To: <6c43bb44-e38b-572e-0f8b-2559a7f0514f@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Simply subplatform
 detection
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
Cc: Fred Gao <fred.gao@intel.com>, intel-gfx@lists.freedesktop.org, "He,
 Yu" <yu.he@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--AzNpbZlgThVzWita
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2022.02.22 14:21:33 +0000, Tvrtko Ursulin wrote:
>=20
> On 22/02/2022 14:14, Jos?? Roberto de Souza wrote:
> > In the past we had a need to differentiate TGL U and TGL Y, there
> > was a different voltage swing table for each subplatform and some PCI
> > ids of this subplatforms are shared but it turned out that it was a
> > specification mistake and the voltage swing table was indeed the same
> > but we went ahead with that patch because we needed to differentiate
> > TGL U and Y from TGL H and by that time TGL H was embargoed so that
> > was the perfect way to land it upstream.
> >=20
> > Now the embargo for TGL H is long past and now we even have
> > INTEL_TGL_12_GT1_IDS with all TGL H ids, so we can drop this PCI root
> > check and only rely in the PCI ids to differentiate TGL U and Y from
> > TGL H that actually has code differences.
> >=20
> > Besides the simplification this will fix issues in virtualization
> > environments where the PCI root is virtualized and don't have the same
> > id as actual hardware.
> >=20
> > v2:
> > - add and set INTEL_SUBPLATFORM_UY
>=20
> LGTM, thanks for the tweak!
>=20
> Looks mechanical enough so:
>=20
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>=20

Add Yu, who has been testing this under GPU passthrough case as well,
which now release our effort for root pci device info passthrough issue.

Thanks!

>=20
> > Cc: Fred Gao <fred.gao@intel.com>
> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > Signed-off-by: Jos?? Roberto de Souza <jose.souza@intel.com>
> > ---
> >   .../drm/i915/display/intel_ddi_buf_trans.c    |  2 +-
> >   drivers/gpu/drm/i915/i915_drv.h               | 11 +++-----
> >   drivers/gpu/drm/i915/i915_reg.h               |  6 -----
> >   drivers/gpu/drm/i915/intel_device_info.c      | 26 +++++--------------
> >   drivers/gpu/drm/i915/intel_device_info.h      |  3 +++
> >   drivers/gpu/drm/i915/intel_step.c             |  2 +-
> >   6 files changed, 16 insertions(+), 34 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drive=
rs/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > index 0c32210bf5031..934a9f9e7dabb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
> > @@ -1321,7 +1321,7 @@ tgl_get_combo_buf_trans_dp(struct intel_encoder *=
encoder,
> >   	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> >   	if (crtc_state->port_clock > 270000) {
> > -		if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
> > +		if (IS_TGL_UY(dev_priv)) {
> >   			return intel_get_buf_trans(&tgl_uy_combo_phy_trans_dp_hbr2,
> >   						   n_entries);
> >   		} else {
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i91=
5_drv.h
> > index 1c2f4ae4ebf98..51417e9b740f4 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1147,11 +1147,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i9=
15,
> >   #define IS_ICL_WITH_PORT_F(dev_priv) \
> >   	IS_SUBPLATFORM(dev_priv, INTEL_ICELAKE, INTEL_SUBPLATFORM_PORTF)
> > -#define IS_TGL_U(dev_priv) \
> > -	IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_ULT)
> > -
> > -#define IS_TGL_Y(dev_priv) \
> > -	IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_ULX)
> > +#define IS_TGL_UY(dev_priv) \
> > +	IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
> >   #define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GR=
APHICS_STEP(p, since, until))
> > @@ -1170,11 +1167,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i=
915,
> >   	 IS_DISPLAY_STEP(__i915, since, until))
> >   #define IS_TGL_UY_GRAPHICS_STEP(__i915, since, until) \
> > -	((IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
> > +	(IS_TGL_UY(__i915) && \
> >   	 IS_GRAPHICS_STEP(__i915, since, until))
> >   #define IS_TGL_GRAPHICS_STEP(__i915, since, until) \
> > -	(IS_TIGERLAKE(__i915) && !(IS_TGL_U(__i915) || IS_TGL_Y(__i915)) && \
> > +	(IS_TIGERLAKE(__i915) && !IS_TGL_UY(__i915)) && \
> >   	 IS_GRAPHICS_STEP(__i915, since, until))
> >   #define IS_RKL_DISPLAY_STEP(p, since, until) \
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
> > index 2b8a3086ed35a..30aa1d99f2244 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -8823,12 +8823,6 @@ enum skl_power_gate {
> >   #define   DSB_ENABLE			(1 << 31)
> >   #define   DSB_STATUS			(1 << 0)
> > -#define TGL_ROOT_DEVICE_ID		0x9A00
> > -#define TGL_ROOT_DEVICE_MASK		0xFF00
> > -#define TGL_ROOT_DEVICE_SKU_MASK	0xF
> > -#define TGL_ROOT_DEVICE_SKU_ULX		0x2
> > -#define TGL_ROOT_DEVICE_SKU_ULT		0x4
> > -
> >   #define CLKREQ_POLICY			_MMIO(0x101038)
> >   #define  CLKREQ_POLICY_MEM_UP_OVRD	REG_BIT(1)
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm=
/i915/intel_device_info.c
> > index ae13bc3c7970e..d03de76147912 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -170,6 +170,10 @@ static const u16 subplatform_portf_ids[] =3D {
> >   	INTEL_ICL_PORT_F_IDS(0),
> >   };
> > +static const u16 subplatform_uy_ids[] =3D {
> > +	INTEL_TGL_12_GT2_IDS(0),
> > +};
> > +
> >   static const u16 subplatform_n_ids[] =3D {
> >   	INTEL_ADLN_IDS(0),
> >   };
> > @@ -226,6 +230,9 @@ void intel_device_info_subplatform_init(struct drm_=
i915_private *i915)
> >   	} else if (find_devid(devid, subplatform_portf_ids,
> >   			      ARRAY_SIZE(subplatform_portf_ids))) {
> >   		mask =3D BIT(INTEL_SUBPLATFORM_PORTF);
> > +	} else if (find_devid(devid, subplatform_uy_ids,
> > +			      ARRAY_SIZE(subplatform_uy_ids))) {
> > +		mask =3D BIT(INTEL_SUBPLATFORM_UY);
> >   	} else if (find_devid(devid, subplatform_n_ids,
> >   				ARRAY_SIZE(subplatform_n_ids))) {
> >   		mask =3D BIT(INTEL_SUBPLATFORM_N);
> > @@ -243,25 +250,6 @@ void intel_device_info_subplatform_init(struct drm=
_i915_private *i915)
> >   		mask =3D BIT(INTEL_SUBPLATFORM_G12);
> >   	}
> > -	if (IS_TIGERLAKE(i915)) {
> > -		struct pci_dev *root, *pdev =3D to_pci_dev(i915->drm.dev);
> > -
> > -		root =3D list_first_entry(&pdev->bus->devices, typeof(*root), bus_li=
st);
> > -
> > -		drm_WARN_ON(&i915->drm, mask);
> > -		drm_WARN_ON(&i915->drm, (root->device & TGL_ROOT_DEVICE_MASK) !=3D
> > -			    TGL_ROOT_DEVICE_ID);
> > -
> > -		switch (root->device & TGL_ROOT_DEVICE_SKU_MASK) {
> > -		case TGL_ROOT_DEVICE_SKU_ULX:
> > -			mask =3D BIT(INTEL_SUBPLATFORM_ULX);
> > -			break;
> > -		case TGL_ROOT_DEVICE_SKU_ULT:
> > -			mask =3D BIT(INTEL_SUBPLATFORM_ULT);
> > -			break;
> > -		}
> > -	}
> > -
> >   	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
> >   	RUNTIME_INFO(i915)->platform_mask[pi] |=3D mask;
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm=
/i915/intel_device_info.h
> > index 2508a47fb3f5e..291215d9da282 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > @@ -106,6 +106,9 @@ enum intel_platform {
> >   /* ICL */
> >   #define INTEL_SUBPLATFORM_PORTF	(0)
> > +/* TGL */
> > +#define INTEL_SUBPLATFORM_UY	(0)
> > +
> >   /* DG2 */
> >   #define INTEL_SUBPLATFORM_G10	0
> >   #define INTEL_SUBPLATFORM_G11	1
> > diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/i=
ntel_step.c
> > index ac1a796b28084..4fd69ecd14811 100644
> > --- a/drivers/gpu/drm/i915/intel_step.c
> > +++ b/drivers/gpu/drm/i915/intel_step.c
> > @@ -165,7 +165,7 @@ void intel_step_init(struct drm_i915_private *i915)
> >   	} else if (IS_ROCKETLAKE(i915)) {
> >   		revids =3D rkl_revids;
> >   		size =3D ARRAY_SIZE(rkl_revids);
> > -	} else if (IS_TGL_U(i915) || IS_TGL_Y(i915)) {
> > +	} else if (IS_TGL_UY(i915)) {
> >   		revids =3D tgl_uy_revids;
> >   		size =3D ARRAY_SIZE(tgl_uy_revids);
> >   	} else if (IS_TIGERLAKE(i915)) {

--AzNpbZlgThVzWita
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCYhWp4wAKCRCxBBozTXgY
J6xAAJ9Hen7IFj1PGEkOB7H6BLpp93qYZACgl4vfYUZce6lTSgWvekNcjrLarMs=
=sBW/
-----END PGP SIGNATURE-----

--AzNpbZlgThVzWita--
