Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BCD84A089
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 18:22:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DCF710FB06;
	Mon,  5 Feb 2024 17:22:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P0/LDxB2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 614BB10FB06
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 17:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707153759; x=1738689759;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BRCSh7uM4c8ULLEgJhkAF1XjvjSc2VwVtySyjkRbZzE=;
 b=P0/LDxB2Xm4WoUSjiR28Awp+D0ENCB2if/yvLsSL7VOmMWpPcCLoZ1L4
 pS2ezTlBo9EB+yJnehlljJ2bEuy/wFIyJEzziEv1Hw8KY6zi35M7ezVsJ
 TO1rE9dM3DM1tikApCOnELJ6imHitYUICpIBWAaikXZq7POQF0qna+S8n
 95b375iJduwG9Ku30ofmSMedtrSt1iynbGthjbtmEGfm7M6c+68KYNAzF
 IitHMOZYyTLMlAPzXNwkUR7EUS08JvtD8XG+ec+GN9iODcXr/2mq93sN/
 /9wWOFx13WOGnr6rmnKWEk4gFmy7wDDaohaP/kYOq3klhzhgATQNyiA1U w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="716536"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="716536"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 09:22:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="982455"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2024 09:22:34 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 5 Feb 2024 09:22:33 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 5 Feb 2024 09:22:33 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 5 Feb 2024 09:22:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hps+WNcV1F8E2P5wwOk4D0fG6po3RKoRe6TXKZUmWqLIp2c1INlMBTG20bYELgGcbCDJS0oYI1NUUkVM2HeQXaVwQ4uh+c0PTu1ckI+khTJ2fIKlwafClxjN7ImKjkTn4HHrv4i5Ak3vzlqAf22qtzcNeOhHzxzUeA+BP8i5Z4HtEjYxws+AmELbUdKVY///qpW3ZWynd0CXnik5IjjFDc24p/4towZSG9AlxNsoimfzJrcJ4LcdvAXYumiZn0bDcz4qTI+j7Txi3JX601f1JeMA5Q4xpf1WyelQJpEwipjvDes9XzLiWnxcdy+xtrrT6F91McvHgbjAMP2v/A4/bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yZVLRHWTnZ2l8IPaE/wzND4+0R8TjgK3nBHGcosAYkw=;
 b=EXQ6S1HTvi9UI+oNVnp0gfVFIZkU+T6P8F/p6t3edbALnsziNZFNVuC3K0cW1Q0XtAotBRIGcWVHld2jmN6kspaETI/puq9of3PmVbAO7W5otEDSErAm6fveQ8093/ESN/kzE9vC8iuwUqbtT3oYjvClzNUf9rb/Waa96RHhx0JWGo19hB7/6d0IGlbuqGtNujhm4l2ZgarjOfC6YwXAco6T60bLWcwXqHN3m87SDhQfx5s/mmGaF5AWTcBWmzFLeARY+LX5hwe4KQv4Q8BQ+2l5bYL6YGnMjLs2wRozQb9IjxgvxDBE5pUf9s7GsUKb3Lp+1jAvaHl+orDF1NUj+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Mon, 5 Feb
 2024 17:22:31 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::f1c4:e34a:54f7:233e]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::f1c4:e34a:54f7:233e%7]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 17:22:31 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/lnl: Program PKGC_LATENCY register
Thread-Topic: [PATCH 2/2] drm/i915/lnl: Program PKGC_LATENCY register
Thread-Index: AQHaVOxbdSQlzibU60a60I32MUQGmLD7aTAAgAAmdgCAAHM2sA==
Date: Mon, 5 Feb 2024 17:22:30 +0000
Message-ID: <SN7PR11MB675090C2560FBDD0C8D50714E3472@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240201085158.1000285-3-suraj.kandpal@intel.com>
 <20240205080126.1159496-1-suraj.kandpal@intel.com> <87le7zdxid.fsf@intel.com>
In-Reply-To: <87le7zdxid.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY5PR11MB6139:EE_
x-ms-office365-filtering-correlation-id: b1c7c707-be3c-44d1-f488-08dc266f08c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: abPPNgNketGZgH2KO9MWvdngcTb7pJwGmtnM+cc1cIeMyvG1gro/LWg7zMXOEtenDQp7v/Rkt0mlqELD2bWBHpSvn/jWT0tTuZb5ZeK7Ze8grwsdalRZXBfSHQSLvWruYPqDeaul75c1uYBHfPHK4iBnB0qUypvmluZpgU+eL7O24dSqiOmSeUM/EifcDDDscvOqa98j3fKAsWcNPv/Kwe21Xq4KoZcpc/BVeyqVsJ0KeWbuToNVdC+IKBG1tY3SI+HbT1cRcLqwhGv2UQTU+jSOyEkKoWIlcpbct2gu+pHsBBZksnkhhIVi55/GvKtrZJVIQnAJXCtiH8xAhXjr55YV6d77QpY6NscdWpDNyn0Fw1WsoE2zAEnt8+Rgc9fs2BCNzNGsYBgpylD2GYb+kGwD0swLrdInVYm8Mllg/25fuw5A3LbpfHcUXV6gKEP6AsSpfnLSveF8eDD0tO/Waiyx/ZrgSWlDjpChkMr9bGqoJxEecvWpjTzktLIp+QZKf997MDpmmEr9LIDl4MVHT83O/I5rrHovTHe9kuSQDvxA6ou988Comr6HJfsYLESnYIEJRHicPnb/KfbEGM6HYH7uAq3E1Lx76lZQ9PYoDoS8nrCrxvl3bvhwTj15nM51
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(366004)(136003)(396003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(38100700002)(82960400001)(33656002)(7696005)(6506007)(122000001)(55016003)(83380400001)(26005)(86362001)(41300700001)(4326008)(8676002)(8936002)(52536014)(9686003)(71200400001)(478600001)(2906002)(5660300002)(316002)(76116006)(66556008)(66446008)(66946007)(66476007)(64756008)(38070700009)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?izsbu0QT0JFYShuis62Ud3SHMv5NCzFOdWyoOC8p+4UFgscMLOjdl5RQ2eFL?=
 =?us-ascii?Q?rC6AEJvpKSjLD71WV356Qm+TkL03Epbew9BW1Ddebj6zTFtDgLohPPzYZcId?=
 =?us-ascii?Q?sA65o1q6T7T+h4EilR7iPamR1IOlebvlIo0rpm4gvAITf1AMdhKzoZ5SgMuK?=
 =?us-ascii?Q?a2PbUBAev8su/Ozafs7DKtwcvhmCpqIyJHejEX6lxqe1xZqZO0HHMhmIDaoU?=
 =?us-ascii?Q?sJfhvZDqIf2RdNPkYOQs36ETQ0k5R7ur677lqhCaH4SO1M9opkjUnipAo4Au?=
 =?us-ascii?Q?WxK4FRYkngjo+Yvm8YKyP6UgzLJq66Z1Tu7K01z+KfnDb7HXRwxZgGQRe7I1?=
 =?us-ascii?Q?j1qacQuBFx11UKOZBHOeFRfWiYrvzuKxl9itiHbXNAd1I/MxCOa2V5CvXabD?=
 =?us-ascii?Q?TGkE116SMlmdG9z5nDxa6RB2TPybTeY3dVH8+zj4Em5LblnXC9Sieo0gb7KF?=
 =?us-ascii?Q?WtqEYEbEy5Rz6SabdKW3YLf82d+Uk1wEsIaE5XWniQkXocTxYePILxVEbE+b?=
 =?us-ascii?Q?u1eylKji8SD4VLEhxbobPOPYbkvoON8XWQrLQdxrOmD0KsNaQ3JihDz+v+Nh?=
 =?us-ascii?Q?GOSb83nrcO+Yq/LoiqVPgZGPEEByk6hZY/oOfax5FxaUOpN66OEml6S+63e7?=
 =?us-ascii?Q?Wd8g/RxCCo7/fT3itdZx/894KqSBHfyJUqeyWNjlTn2xo0HDJuPsVUSHpW7S?=
 =?us-ascii?Q?Y7EBP1J1fT8LSm2ULyo1DVXsFkAXQ3G9apLU6Yi4pEL/plK01ovkiOrnmY3s?=
 =?us-ascii?Q?GSzA6t/7H6vf+bGOki34/i9tjRnjs0UZIrHnTeGHoR2EG8jWF4IwYb4TDk+y?=
 =?us-ascii?Q?9x/t4rY1aGcx8LQcIOMw9MJfZLAwsgiyGtcNCZHnDWECym/s05fqQCel1Oin?=
 =?us-ascii?Q?ZHxgIAtDd0GlyYp1NOWUk3RoWIkyKbIU/u5BqOG0yYDjOIPQIKt6RMaZntaM?=
 =?us-ascii?Q?1cA4Nab/3fccdoTTNtyNw9gX7nxwmRI87LjX20mN+Sd4lrfK0PVmXFJ1puaL?=
 =?us-ascii?Q?F3DRNBtt4C21z5a1DfztVCMrJ++D1F2RM5gHXjYKyucVD1JJ0xt2vg7uLp4Y?=
 =?us-ascii?Q?MCZbRdOUi+7A6oR1frCaWEm7cUrLQNLWRa8trg2AeHKnjAVt5zVh3/CgfpGB?=
 =?us-ascii?Q?Yyr4TIkaeJQ7q7wOnZWsLYM7QMCT0BdzzZrvzSy3zi2zpTQvsx/pDpZi2rSu?=
 =?us-ascii?Q?BPoNRaXpatD3AVit3Dsf9bV2cfI3EAA/d//sELsvALLJSGwZCCebkStg+I7u?=
 =?us-ascii?Q?1vaJldgaj+7ObCVt5ZRKGLvwEPtXLZqQ1vv6SCIW0IbB31uVL4vaf2g9q335?=
 =?us-ascii?Q?naxYciD5YxFW3eKH78OFNgA0+XBA17WUtQfcHevjD/Tn/m9jj7yqMmnZg+0+?=
 =?us-ascii?Q?YnM72lk5z2m/V+5bVGVgxtn1v5PETov+Xlw7MvxvpvrSBtFx/tqOPnq/1myo?=
 =?us-ascii?Q?8T+dvjqSirXN+ZGinbPwwXf+h4w9002hvoze681W3lFQmwyJBW/0Swr5QZTp?=
 =?us-ascii?Q?tfFXVgv2rKvXAkKPxdYtLYTmbe7NMz5bnnLQdOfdgE5cWCUanHs5sdHutPkj?=
 =?us-ascii?Q?bbPYVBOZAlvF3LdxI34sBGX+MDIvVCql0XFtzNeU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1c7c707-be3c-44d1-f488-08dc266f08c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2024 17:22:31.0032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Qh2UkE1DdXmnUMrFv8cWyQZDSCwHooX42Ad8nHdjJDcyvPGhD8XYgzCz3nhYtXCfa+wQukt88KvqrPAv/NDBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6139
X-OriginatorOrg: intel.com
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

> Subject: Re: [PATCH 2/2] drm/i915/lnl: Program PKGC_LATENCY register
>=20
> On Mon, 05 Feb 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Program the PKGC_LATENCY register with the highest latency from level
> > 1 and above LP registers else program with all 1's.
> > This is used to improve package C residency by sending the highest
> > latency tolerance requirement (LTR) when the planes are done with the
> > frame until the next frame programming window (set context latency,
> > window 2) starts.
> > Bspec: 68986
> >
> > --v2
> > -Fix indentation [Chaitanya]
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 31
> > ++++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 051a02ac01a4..1ce4b33a407a 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -3394,6 +3394,34 @@ static void skl_read_wm_latency(struct
> drm_i915_private *i915, u16 wm[])
> >  	adjust_wm_latency(i915, wm, num_levels, read_latency);  }
> >
> > +/*
> > + * Program PKG_C_LATENCY Pkg C with highest valid latency from
> > + * watermark level1 and up and above. If watermark level 1 is
> > + * invalid program it with all 1's.
> > + * Program PKG_C_LATENCY Added Wake Time =3D 0.
> > + */
> > +static void intel_program_pkgc_latency(struct drm_i915_private *i915,
> > +				       u16 wm_latency[])
> > +{
> > +	u16 max_value =3D 0;
> > +	u32 clear =3D 0, val =3D 0;
> > +	int max_level =3D i915->display.wm.num_levels, i;
>=20
> max_level seems useless, only used once.

Sure will fix this.

>=20
> > +
> > +	for (i =3D 1; i <=3D max_level; i++) {
>=20
> Array access goes out of bounds. Boom.
>=20

Will fix this

> > +		if (wm_latency[i] =3D=3D 0)
> > +			break;
> > +		else if (wm_latency[i] > max_value)
> > +			max_value =3D wm_latency[i];
> > +	}
> > +
> > +	if (max_value =3D=3D 0)
> > +		max_value =3D ~0 & LNL_PKG_C_LATENCY_MASK;
>=20
> What does "~0 &" gain you here?
>=20

So max value is 0 for all bits except 0-12 as we need to set them as all 1'=
s to disable deep pkgc State

> > +
> > +	clear |=3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
> > +	val |=3D max_value;
>=20
> If you have fields defined for the register, why not use it for setting m=
ax value
> too?

Sorry I didn't get you here .

>=20
> > +	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val); }
> > +
> >  static void skl_setup_wm_latency(struct drm_i915_private *i915)  {
> >  	if (HAS_HW_SAGV_WM(i915))
> > @@ -3407,6 +3435,9 @@ static void skl_setup_wm_latency(struct
> drm_i915_private *i915)
> >  		skl_read_wm_latency(i915, i915->display.wm.skl_latency);
> >
> >  	intel_print_wm_latency(i915, "Gen9 Plane",
> > i915->display.wm.skl_latency);
> > +
> > +	if (DISPLAY_VER(i915) >=3D 20)
> > +		intel_program_pkgc_latency(i915, i915-
> >display.wm.skl_latency);
>=20
> Before this, nothing in the skl_wm_init() path actually writes any regist=
ers, it's
> all readout. Is this the right place to be doing this?
>=20

Yes since all latency values are all ready and available for use which we c=
an program in the deep pkgc register.

Regards,
Suraj Kandpal
> >  }
> >
> >  static const struct intel_wm_funcs skl_wm_funcs =3D {
>=20
> --
> Jani Nikula, Intel
