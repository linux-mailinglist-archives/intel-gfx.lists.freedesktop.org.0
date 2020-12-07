Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 873002D0DB0
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 11:02:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1ACC89E7C;
	Mon,  7 Dec 2020 10:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91BAC89E7C
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 10:02:08 +0000 (UTC)
IronPort-SDR: t7+6CeT+Se1UVDW68Jtst1GSyAeSJhgrp4fU4yQQpbWqTxfKYi3mRB86nVdpFZZOyl4f9st1d3
 25NhFgZ39z4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="173783543"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="173783543"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 02:02:07 -0800
IronPort-SDR: Vad5aTEOKNTRHXa/JOWtMQd90uRA086YriOiq9nsxwoH0ehMTr7ED5QNXH2pVEUhDEC4B0Aayw
 Gr9KJvC9+LuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="407070714"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 07 Dec 2020 02:02:07 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 7 Dec 2020 02:02:07 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 7 Dec 2020 02:02:07 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 7 Dec 2020 02:02:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TNtj++4E9yQrm9+Y2gWpKv1IC8bGYOBSfGkxZCpMX/F957j/hED32VoY/hMcRW71r4nBGihbekQmnpI4eV3iKEsiWRxjvhkB4fxgqBBnWmwnFwZkMH04FjcoLzz1Za1laTXYj64zqgGUYw6MKLIB9QgVlaVrROY6s4FWwscVGaL0VWChOiBPUMGm32EA5vMLMpZdAwM/DOV+klbkwXnI57nEXmROOjT2HHK+GxsMZtGEo3RLK/IX6uP9XBzRmwBAvdW13LKRwNECHeb2pIYn6/OXftJjjZeNX2Sq/Xo/EW7I6hmoCXJqMSwbr0Pu/S5RAxc4M7CDLdk4PyH52lcN/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/FSqX/Dg4H8ACvX337xZP4QURmalvgFEekye1jNXf9I=;
 b=GMXIb/uvIgYNg+ZwWnCNixW+8ipmPaaGN9A6CnbRvxkkm9zxtmISsmHqJJ6TEbJ4OfqNUdkxyS0MEOJmI4XAmuzybs/Khbi8PsVM6GjJ13YsaLXSk2b6kv6lWwfu+0ddLIAajXAeqp2QUD2toUJSdJ+9apUKe0R0iaIShNVZs3AgHrnIXhCmt3+x1DXKSY+rmgt9zR7XlViZNxm/Ue2jI/rGCQ2bZJ3bIloDKgIoeCEGA9UairDanQQ2N4WIG7YFWovNsrhtH4z0m0uFvEijpscRo3c2FoA2YCtBBFmankOP8JaXzCWd/LWD8Ir9u5s4bqro47ox+S79oPpini3U/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/FSqX/Dg4H8ACvX337xZP4QURmalvgFEekye1jNXf9I=;
 b=DFzKHWQ7e23ILLss9Gk3gtwZNQbJz+sUecrs+pohmZ3SIQs/pt9Y+QouJtbjAp139tobcA7FwgH3D0vx9PaNqWk5CZR+3yox9TGoY3rXr2i6rdSehDSPdjG0PjxZp1GA0u5w9GUqICav/XCByanoS66MAQhSLvU03s01cyzqZmA=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB2640.namprd11.prod.outlook.com (2603:10b6:805:56::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Mon, 7 Dec
 2020 10:02:06 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::153b:8e85:c2b0:c2ce]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::153b:8e85:c2b0:c2ce%3]) with mapi id 15.20.3632.023; Mon, 7 Dec 2020
 10:02:06 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Kattamanchi, JaswanthX" <jaswanthx.kattamanchi@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, "Pandey, Hariom" <hariom.pandey@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
 protection
Thread-Index: AQHWxxhY7kXRSdZumE6Pi/Mqo5s7Hqngo56AgAAcjYCAAAT1gIAEAXoAgAB0HYCAAXmu0IAEvRtw
Date: Mon, 7 Dec 2020 10:02:06 +0000
Message-ID: <SN6PR11MB3421922524D8B1EAD8996B8BDFCE0@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20201130124855.319226-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <160674128376.8815.15501065474758980770@build.alporthouse.com>
 <SN6PR11MB342108C9577A99EF4D3BBC87DFF50@SN6PR11MB3421.namprd11.prod.outlook.com>
 <160674847963.9850.14014681039747149826@build.alporthouse.com>
 <SN6PR11MB34210126D6425BBDD80F6258DFF20@SN6PR11MB3421.namprd11.prod.outlook.com>
 <SN6PR11MB342113B3B07EFA7D7E6656AADFF20@SN6PR11MB3421.namprd11.prod.outlook.com>
 <DM6PR11MB3355DDA42F41463D267737AEEEF10@DM6PR11MB3355.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB3355DDA42F41463D267737AEEEF10@DM6PR11MB3355.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.249.233.238]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 27fd4b01-45c3-43d9-9635-08d89a972777
x-ms-traffictypediagnostic: SN6PR11MB2640:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB26406A74F0A363A9BF1DCF85DFCE0@SN6PR11MB2640.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6dAuu0+O59WGwjbl+vHo97ZHA0Lqjxk5/pofW4bB+zs+2V8orbqnC61WuTtCKoOG2qDoyHbXiFFsMMv1Tse6hXjiMeO8y3hkO8rYerDjNqHB3gorrKeU4Yt2MHK1hkGGiAFP50v18hPi9KO7QU1Rc9Bbgzuzu49ABcTRH5VmgKtomab8UzR2O/Dpw02yW/q/Ku9Rk2kns6EL7dUWTpy0sjEvBXELMYkMXSdEr4AVk/0fS9VutYSuxD+xh4aMzAguilH7R6pnjY8qe11ckZqu3La7KmufI5ngQ/iL8Ke9rbGMiu1/AN9IydiwlcvmB17bPyffCygHpSO1lUBE00Ygz62SnocBBetmc60zEizmIho=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(396003)(376002)(346002)(136003)(2906002)(110136005)(7696005)(316002)(71200400001)(66946007)(64756008)(107886003)(8676002)(66476007)(186003)(66446008)(66556008)(76116006)(55016002)(8936002)(6506007)(5660300002)(33656002)(53546011)(26005)(4001150100001)(86362001)(52536014)(478600001)(9686003)(966005)(83380400001)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?Nk5XV0dRd1huc0ZGcU9rQVlWeHBvb3lLZldNUWJyR1ZXeFhER0c0ak1JRDJI?=
 =?utf-8?B?UmF0dENUME9oSUNyeUxYWkJ5OEpPa1oyUEM5RXVEUkkySFU5dmplWDZOTnJK?=
 =?utf-8?B?aWNMbS9YTUg2TE9ScjNiQ3FlWkFtZ2I4eW1kY3RiZWpLSlBvSGhWZ21GQzh4?=
 =?utf-8?B?QTRzNWpRdzdsMVRvdGNwcVNHTEM2WGZybDEvTndCaVV3R0tkTWlHdUdaNlFs?=
 =?utf-8?B?QmZrZkhnZko2VTMreXprb1hCakExQ2NsVzhpaXB5SUhvY0dOT2VLWU5lOEhZ?=
 =?utf-8?B?TWh4a3FrU3BGc2EyK2svNHltK3NWeXFYaW1kTWN0ck9GWGhMZjZXTHZuTXBZ?=
 =?utf-8?B?VHpOaDRMRE51MEY0OVNLa1loYkZveDFlOWExVVBQeFNQWFVXczJlcGZsdEc3?=
 =?utf-8?B?RGJPdkVZUzRRamxrRm1NMWtRTGsrcXBYUXNWYmtsbTlqQS9HeEJHTHdKVkw5?=
 =?utf-8?B?R2tUTEtIbE03QTlkS2xReXM0aDZNK3VxRXNEMi9LeXRHZ1NDc29XVGkvNDJ5?=
 =?utf-8?B?ZXFZci9TZy8zbW9JRk4wSVhBbkpyeTQxMG9HMGFXcVZRcU9Wd1NaYzB3SG1s?=
 =?utf-8?B?VzVrTTRUWklHYTAwTC83RVhRcDNFTTZWR0wwRktQclFuVzJiOTNrSnVyRUZK?=
 =?utf-8?B?blN1TWFjeFdReHdWOU9wVlk3S2VFTlRZblF3SE5mclh4S3N4alpZbWplVGph?=
 =?utf-8?B?MmpyVXd5MDZPbU5DNWc0ZkNuZUF2c1hxUWRpTTFQWmU0YlNvSS9iaEQxVXNM?=
 =?utf-8?B?Yi9GVkhObHVUSDFLTGFmZTdzWXFra0lYTUorVDcvd240bnFJVCtPb2h3Mklo?=
 =?utf-8?B?bjd6TXBRQWxzak8yeURqTlB0elcxRzc5T0tEZGhKSzBkdElTU3MrS2hWUTZB?=
 =?utf-8?B?Y1Nnei82L05QZzZUSGlkUEJ4aTNVRUlRd3ZYcWZOakpnZHUwL0xjTm01UENp?=
 =?utf-8?B?SHpWRFB4dkQxY08xdUo0RTNwMUY1V3E3eDBOcEN1N0h3N0QvMGdteDlIRXlM?=
 =?utf-8?B?ek1sWnRyQ2xsY0U0YjRGN1owbk5Xbnh0dGh6OXh5N0t2cTlESWtwVktUczlk?=
 =?utf-8?B?Qm84U0ZnNFd6alA3dDVIZ3lWTGFzMWJiUWZTK3RmRkpDZXRKd29ZMlV0Zm1H?=
 =?utf-8?B?R09mQlJoT241dVAvTEJyUnVhS0hXV0M5R2pOcG5ZejJNNDlUQ091RS8xR3NB?=
 =?utf-8?B?RVdtRkg5VGVnYlFMMUhTVDJDZXUySlNycGhtbUtzVEJSOVN6MS9LY1NBVWVu?=
 =?utf-8?B?a0lnbjRpaGpxU3ZRVHhYM1FPazBWS0dRVjJqY2RYejdtRFo5STVISER5emww?=
 =?utf-8?Q?5OS9IVVwuNsnI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27fd4b01-45c3-43d9-9635-08d89a972777
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2020 10:02:06.4573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OMZHisS/i+wqW4/2VeHU1hO+7d0kHVcCaj34v4lgL0ztOgjCJqlcmmrLP2HNl9W3gGNZeow7R9Sd0YGoRP7fBmNFmzisO7MRpEuOz4ksuUbUWbQC1rtx0MZnTx3g5qVRPbVVsPgAkc8diKmUeoSCTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2640
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

Hi Chris,

Are below results satisfying?

Thanks,
Tejas

> -----Original Message-----
> From: Kattamanchi, JaswanthX <jaswanthx.kattamanchi@intel.com>
> Sent: 04 December 2020 15:11
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>; Chris Wilson
> <chris@chris-wilson.co.uk>; Pandey, Hariom <hariom.pandey@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: Naramasetti, LaxminarayanaX <laxminarayanax.naramasetti@intel.com>
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
> protection
> 
> Hi Tejas,
> 
> As per your request triggered resume run on RKL CI machine, the testcases
> which chris mentioned were passing with this run, Please find the below logs
> for your reference
> 
> Git ID : https://gitlab.freedesktop.org/drm/intel/-/issues/2743
> 
> igt@gem_exec_schedule@pi-ringfull@vcs0 : https://intel-gfx-
> ci.01.org/tree/drm-tip/CI_DRM_9432/re-rkl-1/igt@gem_exec_schedule@pi-
> ringfull@vcs0.html
> 
> igt@gem_exec_schedule@pi-common@vcs0 : https://intel-gfx-
> ci.01.org/tree/drm-tip/CI_DRM_9432/re-rkl-1/igt@gem_exec_schedule@pi-
> common@vcs0.html
> 
> Regards,
> Jaswanth Kattamanchi
> 
> -----Original Message-----
> From: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Sent: Thursday, December 3, 2020 4:38 PM
> To: Chris Wilson <chris@chris-wilson.co.uk>; Pandey, Hariom
> <hariom.pandey@intel.com>; intel-gfx@lists.freedesktop.org; Kattamanchi,
> JaswanthX <jaswanthx.kattamanchi@intel.com>
> Cc: Naramasetti, LaxminarayanaX <laxminarayanax.naramasetti@intel.com>
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
> protection
> 
> + Jaswant
> 
> > -----Original Message-----
> > From: Surendrakumar Upadhyay, TejaskumarX
> > Sent: 03 December 2020 09:44
> > To: Chris Wilson <chris@chris-wilson.co.uk>; Pandey, Hariom
> > <hariom.pandey@intel.com>; intel-gfx@lists.freedesktop.org
> > Subject: RE: [Intel-gfx] [PATCH] drm/i915/rkl: Remove
> > require_force_probe protection
> >
> > Hi Jaswant,
> >
> > Can you please re-run resume run on CI as well as local setup and
> > share results here? If it passes in full resume run in either of setup
> > we are good go with.
> >
> > Thanks,
> > Tejas
> >
> > > -----Original Message-----
> > > From: Chris Wilson <chris@chris-wilson.co.uk>
> > > Sent: 30 November 2020 20:31
> > > To: Pandey, Hariom <hariom.pandey@intel.com>; Surendrakumar
> > Upadhyay,
> > > TejaskumarX <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
> > > gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915/rkl: Remove
> > > require_force_probe protection
> > >
> > > Quoting Surendrakumar Upadhyay, TejaskumarX (2020-11-30 14:45:14)
> > > > Hi Chris,
> > > >
> > > > The failing test was not part of BAT run, it ran in CI resume run
> > > > and failed
> > > there, however on manual run the same test got passed. Please find
> > > attached results.
> > >
> > > One pass versus a major failure is not satisfactory.
> > >
> > > We can not say we are happy with the hardware/driver until it is
> > > reliable, and forcewake is of fundamental importance for mmio
> > > access, as well as execution.
> > > -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
