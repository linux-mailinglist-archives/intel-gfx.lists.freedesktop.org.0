Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BA047890D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 11:37:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F9710FF8A;
	Fri, 17 Dec 2021 10:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A29810FF8A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639737453; x=1671273453;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YI7PIPY93qkKTaiRKH13iWiH/x6uU60DYedeC0oI1R0=;
 b=HHR+FlS/SJFkx/8Dj4/wBGMTYNyOzi/CiHBDIRr7TJpX6lmP+pIPL1sp
 BmED+KFOm07L5/nq+Ivn1nYlJOHEb6opRUDK1O07T5ogcuyShBmATE6rK
 PZ/Jv6jSTLs8HN3LA+5L3xs5WcDTYUMPTcRVkQb4vFvYnWcefrIfZcmfw
 oSGKvFjqu3WZI8AOTOiaR2sB0Vu8/Z2RK/f9SPH0b4Gv5sp/q6amgw+qo
 OaVfEoHV8tXH6Vh5kXS/zDdg4EQccaSmkk/8EPC3FXVn6XnQQMTZlVc/y
 49sDdvcP6Roy+anJL5vIm/q25C0Y86LQAznZrKOepuxY7ixp9hE3wYyWd Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10200"; a="239679508"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="239679508"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 02:37:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="605861717"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Dec 2021 02:37:31 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 17 Dec 2021 02:37:31 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 17 Dec 2021 02:37:31 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2308.020;
 Fri, 17 Dec 2021 02:37:31 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH V3] drm/i915/adl-n: Enable ADL-N platform
Thread-Index: AQHX7YYYSS3mB8Mvw02cq2dcHqm0T6w1k1UAgAD1nYA=
Date: Fri, 17 Dec 2021 10:37:30 +0000
Message-ID: <0a31f30e5b314955b651482c22527c22@intel.com>
References: <20211210051802.4063958-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <877dc44v9j.fsf@intel.com>
In-Reply-To: <877dc44v9j.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/adl-n: Enable ADL-N platform
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, December 16, 2021 5:28 PM
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/adl-n: Enable ADL-N platform
>=20
> On Fri, 10 Dec 2021, Tejas Upadhyay
> <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
> > Adding PCI device ids and enabling ADL-N platform.
> > ADL-N from i915 point of view is subplatform of ADL-P.
> >
> > BSpec: 68397
> >
> > Changes since V2:
> > 	- Added version log history
> > Changes since V1:
> > 	- replace IS_ALDERLAKE_N with IS_ADLP_N - Jani Nikula
> >
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Checked the changes with Bspec,
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

>=20
>=20
> > ---
> >  arch/x86/kernel/early-quirks.c           | 1 +
> >  drivers/gpu/drm/i915/i915_drv.h          | 2 ++
> >  drivers/gpu/drm/i915/i915_pci.c          | 1 +
> >  drivers/gpu/drm/i915/intel_device_info.c | 7 +++++++
> > drivers/gpu/drm/i915/intel_device_info.h | 3 +++
> >  include/drm/i915_pciids.h                | 6 ++++++
> >  6 files changed, 20 insertions(+)
> >
> > diff --git a/arch/x86/kernel/early-quirks.c
> > b/arch/x86/kernel/early-quirks.c index fd2d3ab38ebb..1ca3a56fdc2d
> > 100644
> > --- a/arch/x86/kernel/early-quirks.c
> > +++ b/arch/x86/kernel/early-quirks.c
> > @@ -554,6 +554,7 @@ static const struct pci_device_id intel_early_ids[]
> __initconst =3D {
> >  	INTEL_RKL_IDS(&gen11_early_ops),
> >  	INTEL_ADLS_IDS(&gen11_early_ops),
> >  	INTEL_ADLP_IDS(&gen11_early_ops),
> > +	INTEL_ADLN_IDS(&gen11_early_ops),
> >  	INTEL_RPLS_IDS(&gen11_early_ops),
> >  };
> >
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h index a0f54a69b11d..b2ec85a3e40a
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -1283,6 +1283,8 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
> >  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
> #define
> > IS_ADLS_RPLS(dev_priv) \
> >  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S,
> INTEL_SUBPLATFORM_RPL_S)
> > +#define IS_ADLP_N(dev_priv) \
> > +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P,
> INTEL_SUBPLATFORM_N)
> >  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
> >  				    (INTEL_DEVID(dev_priv) & 0xFF00) =3D=3D
> 0x0C00)  #define
> > IS_BDW_ULT(dev_priv) \ diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > b/drivers/gpu/drm/i915/i915_pci.c index 708a23415e9c..6a19e9da53cc
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -1132,6 +1132,7 @@ static const struct pci_device_id pciidlist[] =3D=
 {
> >  	INTEL_RKL_IDS(&rkl_info),
> >  	INTEL_ADLS_IDS(&adl_s_info),
> >  	INTEL_ADLP_IDS(&adl_p_info),
> > +	INTEL_ADLN_IDS(&adl_p_info),
> >  	INTEL_DG1_IDS(&dg1_info),
> >  	INTEL_RPLS_IDS(&adl_s_info),
> >  	{0, 0, 0}
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > b/drivers/gpu/drm/i915/intel_device_info.c
> > index a3446a2abcb2..54944d87cd3c 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -170,6 +170,10 @@ static const u16 subplatform_portf_ids[] =3D {
> >  	INTEL_ICL_PORT_F_IDS(0),
> >  };
> >
> > +static const u16 subplatform_n_ids[] =3D {
> > +	INTEL_ADLN_IDS(0),
> > +};
> > +
> >  static const u16 subplatform_rpls_ids[] =3D {
> >  	INTEL_RPLS_IDS(0),
> >  };
> > @@ -210,6 +214,9 @@ void intel_device_info_subplatform_init(struct
> drm_i915_private *i915)
> >  	} else if (find_devid(devid, subplatform_portf_ids,
> >  			      ARRAY_SIZE(subplatform_portf_ids))) {
> >  		mask =3D BIT(INTEL_SUBPLATFORM_PORTF);
> > +	} else if (find_devid(devid, subplatform_n_ids,
> > +				ARRAY_SIZE(subplatform_n_ids))) {
> > +		mask =3D BIT(INTEL_SUBPLATFORM_N);
> >  	} else if (find_devid(devid, subplatform_rpls_ids,
> >  			      ARRAY_SIZE(subplatform_rpls_ids))) {
> >  		mask =3D BIT(INTEL_SUBPLATFORM_RPL_S); diff --git
> > a/drivers/gpu/drm/i915/intel_device_info.h
> > b/drivers/gpu/drm/i915/intel_device_info.h
> > index 213ae2c07126..e341d90f28a2 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > @@ -113,6 +113,9 @@ enum intel_platform {
> >  /* ADL-S */
> >  #define INTEL_SUBPLATFORM_RPL_S	0
> >
> > +/* ADL-P */
> > +#define INTEL_SUBPLATFORM_N    0
> > +
> >  enum intel_ppgtt_type {
> >  	INTEL_PPGTT_NONE =3D I915_GEM_PPGTT_NONE,
> >  	INTEL_PPGTT_ALIASING =3D I915_GEM_PPGTT_ALIASING, diff --git
> > a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h index
> > baf3d1d3d566..533890dc9da1 100644
> > --- a/include/drm/i915_pciids.h
> > +++ b/include/drm/i915_pciids.h
> > @@ -666,6 +666,12 @@
> >  	INTEL_VGA_DEVICE(0x46C2, info), \
> >  	INTEL_VGA_DEVICE(0x46C3, info)
> >
> > +/* ADL-N */
> > +#define INTEL_ADLN_IDS(info) \
> > +	INTEL_VGA_DEVICE(0x46D0, info), \
> > +	INTEL_VGA_DEVICE(0x46D1, info), \
> > +	INTEL_VGA_DEVICE(0x46D2, info)
> > +
> >  /* RPL-S */
> >  #define INTEL_RPLS_IDS(info) \
> >  	INTEL_VGA_DEVICE(0xA780, info), \
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
