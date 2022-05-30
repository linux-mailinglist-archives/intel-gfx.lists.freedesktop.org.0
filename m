Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F31FD537424
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 06:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CB0310E101;
	Mon, 30 May 2022 04:44:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2071B10E839
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 04:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653885881; x=1685421881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hku5S29/oKfYWMH6qo+Oy5SKHMe6Ezb8TzaPDHc9jj0=;
 b=nmz7c8pikWyd6sDttit4PXNjTcymIGF02SNgksr9BDQcZv2keNVbjgiI
 AT8S0nTCFN76BOKOrQ7c+FFLwCG+gLFaEtk0Nxw85dRo048sPStfehfD7
 gau3bpcwZnnjdnvPoUf6f5dlf9y2e1/EzReuFYE+bx8+R6F0IAK5IQ1WF
 OpZqD00uZYnbVJKXvJG4c1O98TjVQ5+2hoG3Dj9ngy3jLXqKA2jUJ8tdN
 9YsVPYHjWCfP2ZAcZZGNRSGaBmmvtjIQZAjb7Nqn0NN8cv+I9BU/qIPPZ
 BFJio4rpfsEUTZOT4aJlEBLNVYIk6grsp3Fp5Qrwp4g+I4KseuiVFHiU7 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="262508556"
X-IronPort-AV: E=Sophos;i="5.91,261,1647327600"; d="scan'208";a="262508556"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2022 21:44:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,261,1647327600"; d="scan'208";a="705995270"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 29 May 2022 21:44:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 29 May 2022 21:44:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 29 May 2022 21:44:39 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2308.027;
 Sun, 29 May 2022 21:44:39 -0700
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [PATCH 3/7] drm/i915/dg2: DG2 MBD config
Thread-Index: AQHYarg/c9jrXjH9c0+i2Od1sFFkU60mZRAAgBCC4yA=
Date: Mon, 30 May 2022 04:44:38 +0000
Message-ID: <4299ea60a4c74ea0806d78b09de0b6c6@intel.com>
References: <20220518130716.10936-1-anshuman.gupta@intel.com>
 <20220518130716.10936-4-anshuman.gupta@intel.com> <87h75ldg9t.fsf@intel.com>
In-Reply-To: <87h75ldg9t.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/dg2: DG2 MBD config
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
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, May 19, 2022 2:57 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Nilawar, Badal <badal.nilawar@intel.com>; Ewins, Jon
> <jon.ewins@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>; Deak, Imre
> <imre.deak@intel.com>; Gupta, Anshuman <anshuman.gupta@intel.com>
> Subject: Re: [PATCH 3/7] drm/i915/dg2: DG2 MBD config
>=20
> On Wed, 18 May 2022, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> > Add DG2 Motherboard Down Config check support.
> >
> > BSpec: 44477
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_opregion.c | 2 ++
> >  drivers/gpu/drm/i915/i915_drv.h               | 9 +++++++++
> >  2 files changed, 11 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c
> > b/drivers/gpu/drm/i915/display/intel_opregion.c
> > index 3dcd54517b89..dec7628522c5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> > +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> > @@ -1271,6 +1271,8 @@ intel_opregion_vram_sr_required(struct
> > drm_i915_private *i915)
> >
> >  	if (IS_DG1(i915))
> >  		return intel_opregion_dg1_mbd_config(i915);
> > +	else if (IS_DG2_MBD(i915))
> > +		return true;
> >
> >  	return false;
> >  }
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index 10f273800645..c5ecc490dced
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1071,6 +1071,15 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
> >  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
> #define
> > IS_DG2_G12(dev_priv) \
> >  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G12)
> > +/*
> > + * FIXME: Need to define a new SUBPLATFORM
> INTEL_SUBPLATFORM_DG2_MBD
> > + * for PCI id range 5690..5695, but G10, G11 SUBPLATFROM conflicts
> > + * with those pci id range.
> > + */
> > +#define DG2_MBD_CONFIG_MASK	GENMASK(7, 4)
> > +#define DG2_MBD_CONFIG_VAL
> 	FIELD_PREP(DG2_MBD_CONFIG_MASK, 9)
> > +#define IS_DG2_MBD(dev_priv) (IS_DG2(dev_priv) && \
> > +			      (INTEL_DEVID(dev_priv) &
> DG2_MBD_CONFIG_MASK) =3D=3D
> > +DG2_MBD_CONFIG_VAL)
>=20
> No. Please don't do *any* magic masking or comparison of PCI ID bits or
> bitfields.
Hi Matt,
We need to distinguish between DG2 NB MBD and rest such that i915 can figur=
e out opregion vram_sr is requires for the DG2 platform.  Could you please =
suggestion on that.
Thanks,
Anshuman Gupta.
>=20
> BR,
> Jani.
>=20
> >  #define IS_ADLS_RPLS(dev_priv) \
> >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S,
> INTEL_SUBPLATFORM_RPL)
> > #define IS_ADLP_N(dev_priv) \
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
