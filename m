Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FC02CEB1B
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 10:41:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEC056E139;
	Fri,  4 Dec 2020 09:41:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EA2F6E139
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 09:41:22 +0000 (UTC)
IronPort-SDR: kucvdcT1bv0YtxCqpK61/V/lP4bAr/ROwMfTkTIIHR0C+cQZdVMSeH+vMhc1Rwf3aksc7Hw1Q7
 4XtjTtg9SLwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="234958588"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="234958588"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 01:41:19 -0800
IronPort-SDR: y5x6YABJ7ZFo0HigRvacdLHbj2A12Avqinkhq5UF+nwtNJt9bbyPO4ylCzIxDaFOG539sD3Pec
 AksV1bfy+1hQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="374298355"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Dec 2020 01:41:19 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 4 Dec 2020 01:41:18 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 4 Dec 2020 01:41:18 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 4 Dec 2020 01:41:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WOyTtBRPAzqJOFn3HXkQg28gWo1pQpBVbJBLSBiVLWBKeQzXVzT+HLYKaaOdRNTdDa45rDK74IL07o24eRp20BCf/M5nCxNRALl859V+KyWII5AEU78rakypIeCVrAbUPfxdm7ZUhEjTZ54aAh2PFY12I7pVbnuNPOySEn09waR3LI0zNVZ659GrIQh21vXImFB4FM3+fg7H11R735uF5/6oE2x4ddX2Q1WuD0aQPIh8cswxM7XpJ4o6pM53niZXTjbOUq5pNMDRsUct7DfqZJCg7x+HzJWRg3te0PO/zGXUYYYnepcgT3Yv9dMT2vcr8fOeP7gnxp3E3q61AZDZKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A00HcJijtGYjJk/19/utRok/LqHKG2+yUlyqGUvhteM=;
 b=BcDxpZFTXqNXX22JgQaxFy4aQULka3HyFRRjFrxYZFyNAFdih7SP8BgU0z5xQ+yBetiE/uIokU3LusFI328k1y0WHj2jMSB6+h1ohj4euwcJZXVI8oq3bgHY+EzGfNITaY5U+/ZZsOdMrRKY/jAoEVDNKjql5yYMA+RIDmhauJpqgndmV59hiwzq5ceGmXHKRsEtLiSQmc61XwfcDLkIGQqDT4wn7jm0s+U8Jn8ufTzMXHF41pMmZrOi3dCcuC0WDKWiwXWvKXkuDPw6A1P3lrwVJM0x09kTnoNY/46O8b7CxvRr7tAPu0QgTm1ia1uwy68hs2wOdGdVR/7eS6fj+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A00HcJijtGYjJk/19/utRok/LqHKG2+yUlyqGUvhteM=;
 b=oa/USqeG7rtr8zZqg+gI3rDgcclluxRomXsP6lrY1/oqSM9G+MMGhx5z6GhWOA5j7+Xj3vK/CUWOWud3KQu2sNpCE3AP6LKP339botGblsUeIWQqn6oEJxyw6DbN0l8JWktwf3HCPMIAVYX8T5tZtjxD1LddlZvwx7Ef8c2P+bA=
Received: from DM6PR11MB3355.namprd11.prod.outlook.com (2603:10b6:5:5d::21) by
 DM5PR11MB2010.namprd11.prod.outlook.com (2603:10b6:3:12::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.21; Fri, 4 Dec 2020 09:41:17 +0000
Received: from DM6PR11MB3355.namprd11.prod.outlook.com
 ([fe80::5cfd:cde:efd1:faeb]) by DM6PR11MB3355.namprd11.prod.outlook.com
 ([fe80::5cfd:cde:efd1:faeb%7]) with mapi id 15.20.3632.018; Fri, 4 Dec 2020
 09:41:17 +0000
From: "Kattamanchi, JaswanthX" <jaswanthx.kattamanchi@intel.com>
To: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, "Pandey, Hariom" <hariom.pandey@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
 protection
Thread-Index: AQHWxxhY7kXRSdZumE6Pi/Mqo5s7Hqngo56AgAAcjYCAAAT1gIAEAXoAgAB0HYCAAXmu0A==
Date: Fri, 4 Dec 2020 09:41:17 +0000
Message-ID: <DM6PR11MB3355DDA42F41463D267737AEEEF10@DM6PR11MB3355.namprd11.prod.outlook.com>
References: <20201130124855.319226-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <160674128376.8815.15501065474758980770@build.alporthouse.com>
 <SN6PR11MB342108C9577A99EF4D3BBC87DFF50@SN6PR11MB3421.namprd11.prod.outlook.com>
 <160674847963.9850.14014681039747149826@build.alporthouse.com>
 <SN6PR11MB34210126D6425BBDD80F6258DFF20@SN6PR11MB3421.namprd11.prod.outlook.com>
 <SN6PR11MB342113B3B07EFA7D7E6656AADFF20@SN6PR11MB3421.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB342113B3B07EFA7D7E6656AADFF20@SN6PR11MB3421.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.79.108]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6dc3f80d-eedb-4c37-4a95-08d89838bfd9
x-ms-traffictypediagnostic: DM5PR11MB2010:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB2010E3F058C682B90FCEF659EEF10@DM5PR11MB2010.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AczaJUeZWtHITMqB0u3BXOkYI8MGgOXLDu6DCLLQ52m9hJJ7lBUsCZLq6Or8hulekic/ARpq+GRD8CTU3Y4f48FTpWz0dfxINRqbWm5A04BOnEKodrocpaRJt9bht+Z3oriLbOaJP9orcpfq7lMKGUIsh2NEWs7rwTXPosrL9I027+lrnXF9DkKDxPm5z7TxAC3xqhhk8vDKuA2Y8NkbwPlVcfWZt+DINHpgNjOu7fW1rF4UMWfbXlMFf5Ksgb4YMQg2vWHpa15AcervoLfutbixLz8wTV9QIvA6ivnSJEXn63rzQonEqyJY26IK6bxG6lpeM0VyTF69bukppONCplZrtu+tlSZ5tXuYcYXEKx2uqpnbBn8ES4KWY8UbOQHgD7arboJj8VyEGkSl0qlvgQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3355.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39860400002)(366004)(346002)(136003)(396003)(7696005)(4001150100001)(4326008)(9686003)(33656002)(64756008)(66556008)(5660300002)(478600001)(66946007)(66446008)(76116006)(110136005)(66476007)(2906002)(8676002)(107886003)(966005)(186003)(55016002)(316002)(8936002)(71200400001)(86362001)(83380400001)(52536014)(53546011)(6506007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?aDVHYTBiSXNHUmZNN0I1S0Q2cytuVllLRTFUNytBdGUrVkpaOVFuUFAxcy9s?=
 =?utf-8?B?VlM4UWw0R2xCYXJVWDNuelFKQnZBdkpRVGdxdU9ja0ZIcyt0WnpWbHovT2Zj?=
 =?utf-8?B?RnBLT3NubGc1KzZIMjBNUmN5UlVYaFZlV0ZHNTZscm1YeG45R05naERiNUVk?=
 =?utf-8?B?TUF1L216Q3dXNHBrZEtCVzdSNUxEdWtITm1TWGJnSVFidHoyazQ5QUN0aVBm?=
 =?utf-8?B?cWtzbjVZd0RnTi9UdytKRm1uV2UvT2owUGttWFZNcW90T1RwM3ZMYTM3Ritn?=
 =?utf-8?B?Nmg2Nis0bHF5QWRHZGNzbDRrb1NkV05taWZ4emFMNTcvTXp3MFE5TUMxQ3NE?=
 =?utf-8?B?SGZXcTR4S2tmZ0NoeWJOdFJ6VktrUFQvQkN2R0JjRXdFYWliTUFSUm5VSTBM?=
 =?utf-8?B?Zk53S01zamVzbWJZMys0U0MyeGkwczZUQmlvVlVXc21ldGYveE9qUTNRSldG?=
 =?utf-8?B?S09JeXdqaFJUeEtidnNLTWsrT3Q0Q0hyOGZYRjBReGpMQjVlSGhVOVpNMkts?=
 =?utf-8?B?VkYvRm0yYVN3WjJ0Uld3bWxYb01nRTB5NFI4Tm5WaGNQRzlLUGF2M2p2ZHJH?=
 =?utf-8?B?bnRwRnhqbm5iYUxVdDRPYlNkMXE4WjdJQzFKbFVYN3UrQWtrWnp5WS9UVjU1?=
 =?utf-8?B?TEZMci9mUDhwSjRISWNjQnA3U0Vucy9FeVo4WWJVVFVtM2VDQnpoakE1N09j?=
 =?utf-8?B?VDdXbVJEcmlkaEtrS0RiQ2FqUzFCUjRNNER4dHdBNktkT0E4V1hlSzArckUr?=
 =?utf-8?B?Qm1wWHJZMy9EeWQ3aTFpYzdySHNyaVZYa252TlN2aFlHK0w2aHVxMHMzS01p?=
 =?utf-8?B?VHJaQW1DZTFOZTc3SWpSWitXREJ0b2o3TnJtajdqMm8rZ0xoalpGczM3djBJ?=
 =?utf-8?B?cGkwZDc2MzNBQVMzbDhrdTZtY2wyUnlnN09yWHM4WVA3ZFlyY3ZDcGVsZitN?=
 =?utf-8?B?c1NSWWcvVnUvQXJEYU1DNFVIczg1MzhmTVl5dWJxWGp5c3Nld0Jydlk3NWww?=
 =?utf-8?B?cWJDMDdjZ0N6TXNvQldCa0lLci95RnJyQ01aZk14bGY0VjlVMnJsc1dRUXFv?=
 =?utf-8?B?RWxpTC80cVlHL1FEd0xjdTVxdGRrWWY0d083MmtBbGVaVnpPanRqUFREL2xs?=
 =?utf-8?B?V3RYcDkwdGFxS1QxQnJQVkljQUo0OExFK1oxbGtQS3pCeHNaL1pQQWdXQmhE?=
 =?utf-8?B?MWIvdS9TUHpyUTdBcUl0YjBwcVZmSzBVTjk3cjVxTzN2RDBKZncwVGg2TUQ0?=
 =?utf-8?B?dUFUUkRiWGN6TmtzR08yWTVCc3RlTVh5RE85b1l2OE1oWGlPNnpFaDFYUTg4?=
 =?utf-8?Q?Q4fSuQi11J84c=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3355.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dc3f80d-eedb-4c37-4a95-08d89838bfd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2020 09:41:17.5735 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /+qgdxhig847+xaR8We5EU6sW37MNBJjMycJ9VEOyxjktgOYe6SBJYvLfWpVSTPvGhruyS4V1/7DndynfcObSe1nfFobWp9UHfTL1j6+3CY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2010
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
 protection
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
Cc: "Naramasetti, LaxminarayanaX" <laxminarayanax.naramasetti@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

As per your request triggered resume run on RKL CI machine, the testcases which chris mentioned were passing with this run, Please find the below logs for your reference 

Git ID : https://gitlab.freedesktop.org/drm/intel/-/issues/2743

igt@gem_exec_schedule@pi-ringfull@vcs0 : https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9432/re-rkl-1/igt@gem_exec_schedule@pi-ringfull@vcs0.html

igt@gem_exec_schedule@pi-common@vcs0 : https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9432/re-rkl-1/igt@gem_exec_schedule@pi-common@vcs0.html

Regards,
Jaswanth Kattamanchi

-----Original Message-----
From: Surendrakumar Upadhyay, TejaskumarX <tejaskumarx.surendrakumar.upadhyay@intel.com> 
Sent: Thursday, December 3, 2020 4:38 PM
To: Chris Wilson <chris@chris-wilson.co.uk>; Pandey, Hariom <hariom.pandey@intel.com>; intel-gfx@lists.freedesktop.org; Kattamanchi, JaswanthX <jaswanthx.kattamanchi@intel.com>
Cc: Naramasetti, LaxminarayanaX <laxminarayanax.naramasetti@intel.com>
Subject: RE: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe protection

+ Jaswant

> -----Original Message-----
> From: Surendrakumar Upadhyay, TejaskumarX
> Sent: 03 December 2020 09:44
> To: Chris Wilson <chris@chris-wilson.co.uk>; Pandey, Hariom 
> <hariom.pandey@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/rkl: Remove 
> require_force_probe protection
> 
> Hi Jaswant,
> 
> Can you please re-run resume run on CI as well as local setup and 
> share results here? If it passes in full resume run in either of setup 
> we are good go with.
> 
> Thanks,
> Tejas
> 
> > -----Original Message-----
> > From: Chris Wilson <chris@chris-wilson.co.uk>
> > Sent: 30 November 2020 20:31
> > To: Pandey, Hariom <hariom.pandey@intel.com>; Surendrakumar
> Upadhyay,
> > TejaskumarX <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel- 
> > gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/rkl: Remove 
> > require_force_probe protection
> >
> > Quoting Surendrakumar Upadhyay, TejaskumarX (2020-11-30 14:45:14)
> > > Hi Chris,
> > >
> > > The failing test was not part of BAT run, it ran in CI resume run 
> > > and failed
> > there, however on manual run the same test got passed. Please find 
> > attached results.
> >
> > One pass versus a major failure is not satisfactory.
> >
> > We can not say we are happy with the hardware/driver until it is 
> > reliable, and forcewake is of fundamental importance for mmio 
> > access, as well as execution.
> > -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
