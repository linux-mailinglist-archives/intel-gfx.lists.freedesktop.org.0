Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E5274D81C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 15:47:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B4610E0EF;
	Mon, 10 Jul 2023 13:47:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5829E10E0EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 13:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688996866; x=1720532866;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yRzAqVFtqpugn4UMeeXUM0OqMw6EmU9yZr0fexZW7gc=;
 b=gncfStK0tw5mmdjo9luLE3z1etyG+N9/PbEIc1uO13L6NI3Jr4xtMdKS
 BhprLKcrPvESaRvrJ/b9b+SpDaekCqusZRWStBBQ8nevxBM2zT70ChdAJ
 /Mw81izvra3HSo9A/unR7cLwXWCzLP9+v/VNUb85NpH+FEgbWEyQU0Fah
 AaoYuiT/v5IVDn+0XdTm3lm8QB9cqQA52qY9Lkecx2flD/4JwO4NDPw6w
 kCSCf9itxlmYMrnhcPFeJ93F2/3+wROqGeW4HoGD8U9/tU/c8UU9rzpYk
 PuTmWBH+YuHNjfqvlo/9kh8YLolt4a5pVzetLFb17i761fU0R2Vwk8qva g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="343940219"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="343940219"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 06:47:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="844875943"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="844875943"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 10 Jul 2023 06:47:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 06:47:45 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 06:47:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 06:47:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 06:47:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RgVRtN66g1E9h5E2baqZgw4a8I42yBT6X6KMZuLdMJ8cs80fHdTDpqqU1AZZvFy2wgtNrIrnQUqH47+s9EKiqNiTK9mQ1m2p2sM71fIeXHEiC2CHuX/GtSoELS7FnslmmjKtiNmCFYmZgTzMKjz1iod7sQ/s3t2dz9DK/+vKuCWDXCUnfdVwazKDGWyq0PuNg6QscWCa5JmeaW0F+eapuPE8WvpaJUAspJWh6qQWnALM/dke1LDOQsgWs5RlPJn3tP27RI3tAlwu6QCgostOZzdbaq1Kpyy4eyByvvOuhPNsGR7QqYg7fkh9EDC10mo8w0Hba79CI09jn45/XHMLeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MG50Yb9jF09HNfi8vPzSn1YYLz9wrbSO3P1CMpFbkjM=;
 b=mOCtBsCBe3Kq4GmdZOvJ5D1jmMxOQViMW01Vwd0K1ujrKsh9W4fENEb+FElpJtq68ucxA2kAA9JWVz6snIdbnn63q0o1KHDYRDxiOeROUj/Ot6HX1d3RdRJ7zjMu19gGnoN52JMnX+jwSN6pvGWIvR/w2jgPAdAUQgtLWaXKaprqkctYEw06CMCEcdVnFG7JdiTqTwjf+qKTOqnem/JNO8mdPncEup3tjPwHgAI2LUHiIbSBwDUXAk8H8G6DT75KIU7QIpUhs9PwEHfpQlFejmqx0HY9OVALhC+EXhJ0Y/Sf7zlzu72qkqWQ24wpwJhRyrywjM1p/W6dWwYyPCKGJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 SA1PR11MB5948.namprd11.prod.outlook.com (2603:10b6:806:23c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.17; Mon, 10 Jul
 2023 13:47:42 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::40b2:8e65:948d:2bc7]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::40b2:8e65:948d:2bc7%6]) with mapi id 15.20.6565.028; Mon, 10 Jul 2023
 13:47:42 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/color: For MTL convert 24 bit
 lut values to 16 bit
Thread-Index: AQHZp/Lnr83MrKagw0WJPKNI3hyCcK+dAh0AgBYX6/A=
Date: Mon, 10 Jul 2023 13:47:42 +0000
Message-ID: <DM4PR11MB61411209BEFF85DFC7A38AF4B930A@DM4PR11MB6141.namprd11.prod.outlook.com>
References: <20230626055444.1113796-1-chaitanya.kumar.borah@intel.com>
 <20230626055444.1113796-3-chaitanya.kumar.borah@intel.com>
 <87jzvqv2dd.fsf@intel.com>
In-Reply-To: <87jzvqv2dd.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6141:EE_|SA1PR11MB5948:EE_
x-ms-office365-filtering-correlation-id: 0590d41d-48d7-4dce-dca0-08db814c3bd7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G+1yk5TnntUhwkVRzmCvDS2g3eQD3ugLmveClIgrqwIXw9uMEvbkhJ1wmSpsClb45ECZmU9oca9/3Q5KRiHaMViXtgDHPkZt5vUzDfdvEYrhEad3X2mFkfBPvnoMkWXn4262XxKfrkEvz9Xaif0HFa0yig6uyvtl87mUBvbbdzFplYEJAEYL8NjjHP1G8DWKwcd84XiYNEK1AHUDqFjSJ8IPSotyDd8IlCzmHpKgB/MggoTKL46LRea8eBaheY2YbqUaiCMOaT316k+riD9WWYtfg0WDtuZX2P0e59j4xv3zhtITUZ6NkALHwepVovSCa1SLM+E2pYSHo/RuH4EHDxNtD80xVoAuoLQd8f7YFSPryyBf3tY10OiqPFSZjT4Z1nce1bT5kexfhgVAyrssmpBBiw85xH83k8BIsRFfFnLae6VbHtnQCzZjFUQNjXvtujG/Fv8i9EOO5X/aaz0olGL8x3Gdxxq+PNpuiQI3R3QEToVkon73csQhy89fzIWukmJMr8rzRbyn+UXGFrBbjrmE4Nl7fn3SOLCOUZ12CWwBPz9Yg1pOJFZdu5nAXbhF8aZsKSyV/yycjkS3ow3dT85PdzNgFH7FI+qvJnXYQMDBOc4Tamw3I0D8+GhyhNuN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(346002)(396003)(39860400002)(366004)(451199021)(9686003)(26005)(7696005)(71200400001)(110136005)(83380400001)(53546011)(6506007)(2906002)(186003)(478600001)(66476007)(52536014)(38100700002)(38070700005)(86362001)(122000001)(64756008)(8676002)(33656002)(55016003)(76116006)(316002)(66946007)(82960400001)(5660300002)(66556008)(66446008)(8936002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tLcQokj5YYKX7InOLkTLszmfdQf3pPD6/o40ycl936Of0llzeQn2fM/h4VaP?=
 =?us-ascii?Q?yd+NsBjB0Uw20fVHljVPnQ+Fer+aoTMZV8uRWZkXaK2PZsu3lLC/ZZ/sZ6NI?=
 =?us-ascii?Q?39je+Fqk/yFDiqwAvNqNoXbwkxM/gI6IJFdT/gWH/l0cnlw2wku/lckC4POq?=
 =?us-ascii?Q?UC3lX5+jK+73qLwKCxkrlig6QnEcXuncwordQlB/uzT/pX3CmAKywYnpSGDG?=
 =?us-ascii?Q?tmyy76a/BMPFUBW+gBycz9vi4VDFRl3cZO5aDovrx/aT6GpJTJo730DpMeaD?=
 =?us-ascii?Q?sNrNaQ/E2XqhBRRMTxRcxolfQ8AFsEO20hfLu8I6O+Kd2E30qlMWICXiGC7x?=
 =?us-ascii?Q?biMdW69eunw1EePrD0MEgEkuxm95mvU30mxrYNFufXDz29L1Brw8mZUX0YME?=
 =?us-ascii?Q?HWQoA26H0TBq/lZP/TwgWB5j9xYSMYbzH0+ZWO3YIB8pDa2+2tLd0qCt88LO?=
 =?us-ascii?Q?T6usnBTYnjwQ8hkM6TjYDxOhYHzwvHE61qeD+PP7LmFN3b6nWVZSxSNaIRS4?=
 =?us-ascii?Q?wyrgGho2JjfkYZwSiLXKNbNXGDSW5AUVxpneQZoBD8RFOiBp6h+s/8HLQLcl?=
 =?us-ascii?Q?cN1urIdpnmmId/OmEkKFqzRwP3Rv7qWM+cpcxJV9l1Z9zuhPzkYby5bT7YyY?=
 =?us-ascii?Q?zlXfFkCneFsL9SqXGyewrS25N3uvz5W5nLFs+9e4UxBSgypICIYii9NAascw?=
 =?us-ascii?Q?phTXMBvjn09Eyby/OZa6z4FyDrqC5wjCBMDEUA0Wo/PDtzYWniASTYf+YHTL?=
 =?us-ascii?Q?Q0mWkUlpulFv4DRpXjfWkf1yBFGkq4jidVUFkvE3YjRf4Ey3uAzd4qYgnZqC?=
 =?us-ascii?Q?4N5/ZYAlQDH5UfNW+fKE1xhvNGn6qe3IH5Fx0pYUZSI13Exdb1Ux4VWuc4Wh?=
 =?us-ascii?Q?qpihNv6PzhQjggFgUH/agyx34k/V+WSbERwacYiGIcOKd18VhUuEf2rz7wQq?=
 =?us-ascii?Q?YQ8DDxwp13FCUQa/Oi+S1a0mRKY/zwGGn1zCsdlhG7GtA8Yd42Y6l5QvRvTy?=
 =?us-ascii?Q?Rj671NyT7s71BOMNB5QdRDts33v3Nex7Dw8mowrVKPTSep2C03phz2ldnAw4?=
 =?us-ascii?Q?88Xg7G7mQQMBt8urTwW8EFruofQJgI9R7VGg/eODZnswUhTEDA1EGnQcP2LP?=
 =?us-ascii?Q?uWXyLcfnbecLPwY8VwrxaTV+vOKGDNbrwHS1liApZzhbW1mQ1PZef5EOW2I9?=
 =?us-ascii?Q?fZhMrbRTGkhdudi00T+YI7HrnuKTmFekItEnenLMCk0WmMtVluf2otw6wvdQ?=
 =?us-ascii?Q?Ww7u7wd3ucuGfBe/7JChEivIHytImP6A0yhF9BKTHezDiHdK3zFt+QOXYgLv?=
 =?us-ascii?Q?8BT5uStXYW3qffDuGUmCZWO68jUzSaw82NVlKRnaYuUseeJDFyejBXo6Woi/?=
 =?us-ascii?Q?EtmyfjLgWNGjLrr0fxPBSKI42rZf5NeLj9s4ldygAUJs8yTohaOO01OY/gnM?=
 =?us-ascii?Q?8VmtJkU01v5ZdJPqHV+wnfzX+njVsf3y4zfzv3IpVnXE2Z9PRF3GcYilU7mM?=
 =?us-ascii?Q?nlaickaXIagQtEI1psca6KvHNBGBDYaZe+awIXQvtmusXIUam9uuTLS/GroU?=
 =?us-ascii?Q?dc2jurLtuUPpzEGk8oo5dcq25gMuxtUKV8lkcFFB60bb+UqQ+ZMreHvlZ1ez?=
 =?us-ascii?Q?1g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0590d41d-48d7-4dce-dca0-08db814c3bd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2023 13:47:42.4313 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UJvgYS/pVRHXiCbPCi57KJNs225e1eI6sfixIk/R3xsVeCKtLq1cpECFLpDre9l1OU32nzGPIgL8wNBFBrd8A3SA+R9qRl4pyLgw8HvKcZM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5948
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/color: For MTL convert 24 bit
 lut values to 16 bit
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

Hello Jani,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, June 26, 2023 5:53 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/color: For MTL convert 24 b=
it lut
> values to 16 bit
>=20
> On Mon, 26 Jun 2023, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > For MTL and beyond, convert back the 24 bit lut values read from HW to
> > 16 bit values to maintain parity with userspace values. This way we
> > avoid pipe config mismatch for pre-csc lut values.
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > b/drivers/gpu/drm/i915/display/intel_color.c
> > index 25c73e2e6fa3..856191640e71 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -3477,6 +3477,14 @@ static struct drm_property_blob
> *glk_read_degamma_lut(struct intel_crtc *crtc)
> >  	for (i =3D 0; i < lut_size; i++) {
> >  		u32 val =3D intel_de_read_fw(dev_priv,
> PRE_CSC_GAMC_DATA(pipe));
> >
> > +		/*
> > +		 * For MTL and beyond, convert back the 24 bit lut values
> > +		 * read from HW to 16 bit values to maintain parity with
> > +		 * userspace values
> > +		 */
> > +		if (DISPLAY_VER(dev_priv) >=3D 14)
> > +			val =3D mul_u32_u32(val, (1 << 16)) / (1 << 24);
> > +
>=20
> Here too please add a small helper for the conversion.
>=20

Thank you for the comment.
I have sent a new version with a helper function. Please let me know if you=
 see any pitfalls with it.

Regards

Chaitanya.

> BR,
> Jani.
>=20
> >  		lut[i].red =3D val;
> >  		lut[i].green =3D val;
> >  		lut[i].blue =3D val;
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
