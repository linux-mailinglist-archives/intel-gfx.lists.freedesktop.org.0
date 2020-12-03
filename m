Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D388E2CCDCF
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 05:14:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CA8F6EB4B;
	Thu,  3 Dec 2020 04:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F19B6EB4B
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 04:14:01 +0000 (UTC)
IronPort-SDR: sJ0jWRvbxWJ9dRYriiGhqhXuCIKv4NXipbxz2wxShptEFga6jUZtzk+lAnvjmmx9AbLzug1KjZ
 Kh6htULUk69Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="191355971"
X-IronPort-AV: E=Sophos;i="5.78,388,1599548400"; d="scan'208";a="191355971"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2020 20:14:00 -0800
IronPort-SDR: LnYYYBfkghy+xN9qkmcDf7ILWuk48vrVk9VDrGDJWh5ucU5xr1iWU0uovZnY/VZuonHdshY40k
 Z55js8+psLFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,388,1599548400"; d="scan'208";a="539955915"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 02 Dec 2020 20:14:00 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 2 Dec 2020 20:14:00 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 2 Dec 2020 20:14:00 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 2 Dec 2020 20:14:00 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 2 Dec 2020 20:13:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FG12DB7qxxRSzItTPIR3OB9nXthy1V1CYjUob1pJ8uIk4qtspbYi0gLrTIctMc0vTt+3K9FJzXIOxx4+orV4y/V2Beh407b3crCIrPoYxPc0CTPwBBoNNfnbN2cF9SRYsyscmruA5KR1w8KxO1Ly1fZmu/994vHdGWaZ9frJ1MWf86rny7oRFStjrH7oS5icz8lROv4xkF7e4D3w3SN2rZMqg3mlIvzocYKTjBbmVw9vXCbjDyS9igjP9AqzdvBq6p/go3/WCOF+C3EiuXClL6hXj6rK7wcEG+GEbxUh4Yhs2x0NyoaRoBku7qzzRnYIO03JgscPXQOSrAVOq2LPLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1/N9qoKsWUubK7FChA+MALYHEgj6MG6VmuFWnDBjPmc=;
 b=oTeR56xK2fEtNc8dmywN+4kigWWQeBzjx3wX4Gu7VqJD2FkDeYCEW8MB7tWywFmOJKtCY9p4yfinjLIs6XbUrjxek/czHVB0/GDBIj/WwAovVIqz8VGGS6WHyJmLDUEZ0/+bTPln5yVvvHUxdccn6sa/kE99M/YNEIX8Sj1Eyu6wlYpkPyXMCxfAkI5mf2BzFLY1vlNECJqrvR+JMMgv9iy/Y5klEjYXwW1YvDOiAuTBgQMZnpjStJppkhpN5ZR78qcncEMiTFeWcckntHJSWQR7sh3qLpXXRHdnn3ombY9d8TBTJsa1M+6EkNvUWZknKWrFc1ZPPpJIeg5UXftvWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1/N9qoKsWUubK7FChA+MALYHEgj6MG6VmuFWnDBjPmc=;
 b=ckw13qfNUXli9Nag4MGUJt67kUZBl04cIPzRpnAuJqQgH9s28NAHfIb4o6T2ijfLaZrOmJ4jy4aERzhHivyfxHm5UBedPcbyN81Jj629qxh+UfKfFNnB2jpbujPVV9p1cmKcqYdrLqfwXeVefiU8uk99wUBAmncUXyVOMJ9Q37E=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB2829.namprd11.prod.outlook.com (2603:10b6:805:62::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Thu, 3 Dec
 2020 04:13:57 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::a975:345b:8dcc:50ff]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::a975:345b:8dcc:50ff%6]) with mapi id 15.20.3611.025; Thu, 3 Dec 2020
 04:13:57 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Pandey, Hariom"
 <hariom.pandey@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
 protection
Thread-Index: AQHWxxhY7kXRSdZumE6Pi/Mqo5s7Hqngo56AgAAcjYCAAAT1gIAEAXoA
Date: Thu, 3 Dec 2020 04:13:57 +0000
Message-ID: <SN6PR11MB34210126D6425BBDD80F6258DFF20@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20201130124855.319226-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <160674128376.8815.15501065474758980770@build.alporthouse.com>
 <SN6PR11MB342108C9577A99EF4D3BBC87DFF50@SN6PR11MB3421.namprd11.prod.outlook.com>
 <160674847963.9850.14014681039747149826@build.alporthouse.com>
In-Reply-To: <160674847963.9850.14014681039747149826@build.alporthouse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [43.250.165.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5746ef8c-7d75-4abc-975a-08d89741db2a
x-ms-traffictypediagnostic: SN6PR11MB2829:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB28297A61082560F921304D37DFF20@SN6PR11MB2829.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5cNwmSJnxv+ZHEXRE60ZT2ok/PKf6VU1/sfKAetYTQl1W/GypVjDgujokfwbrgKwRgeV+L0npfFugDRK2TQT1n2ZjSGW9jir4dlc4lWmAOcGKbAnBG1ScwQ+87JxFhNIw2oqAn2IukZ/EH5kCZ30lX/iLSawwLkOrtaM8rSCZxlxpTUBl0Zxweg31mZnR8wELRaA8V3YlnkKlWQ+0AOqFGa4ERtxSwmdPMOel5F7KSdSUar6V9zNwYklXBCNH1POrz+bZk/uP3zz5LjSQq2dNhLVKDRjxZuhULMGW5SgXvPB23TzDaqVYNMUUbv78vmntiEYMcWKoX5YnO3iKiYIXw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(346002)(396003)(366004)(376002)(6506007)(53546011)(186003)(83380400001)(64756008)(55016002)(71200400001)(33656002)(26005)(7696005)(316002)(86362001)(110136005)(478600001)(76116006)(8936002)(66476007)(66556008)(66946007)(8676002)(5660300002)(9686003)(4744005)(4001150100001)(2906002)(66446008)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?RXVuQ21ocEI1TGZ3MitRdzNSbTFkdVZWdUQzVkdRREQxOURCSm9NR3lUcDJZ?=
 =?utf-8?B?d0RZZTRGM2tYL29vb1FlbitkR2Jtb1krOU5MRUVVT3ZUMWlnMUlTK2I5UXFy?=
 =?utf-8?B?SkMwYUxSSm9YWWRBanV2a2kxNklXSW0zMmcreFR0NGd1SDJyb1lFU0p2c25o?=
 =?utf-8?B?bXlGT2QxODZBdFRzL2ppSkh1THNCeXRuL00veENvRUU2VVRjd091cXdaem95?=
 =?utf-8?B?R3AxeGlHWXBVMlpwa21TTjB0dG9kMzc1MElVNU1hUjhLajJxYkxNR0tHK2NK?=
 =?utf-8?B?V3RjVVlMaU1ESjZ3SW92cDZWcVg5SHVldExpRDRHdTgyODZ5SjhDRW9Bc0Zo?=
 =?utf-8?B?MUhzZmxTY2cwTHBuZ3l2UmhPRzNXTXJ2L3F4KzI3c0pJcW5UcE5qRkp1WWoy?=
 =?utf-8?B?N29DOFFDaGF1cEJKM3B4OVg1Uzc4M1FObDRzSVl3NWQ5TEY0SVRiWmJWYmJQ?=
 =?utf-8?B?SCt1RTlYaGVuSDhlOWpmMi9rM2MrVVhPak4ycVNUYi9hZWVTUzVjL0ZUUnM3?=
 =?utf-8?B?K2cyNWluQnlWRXhEK09nbi9kZnQwclczOEgvNW84azI5a0VCNDlvUXNKdGo5?=
 =?utf-8?B?SE9iODZPQnp3NTBKUEFxNTYvdUlvbGtuUjdlQWVYeis3Q3MzWU1lOU9PajJy?=
 =?utf-8?B?emJwaW5TM0d5SmwwaHoxVFozd1dGNGhzb3hLSy9uTEl4Z2Z4cXdMV3VNZ09K?=
 =?utf-8?B?bGJmaVVWS3FmbW5FWWNBdGNReUhnNExkUytTMFVVTG1CQ1dPSE1ZZjBabC82?=
 =?utf-8?B?aWM1aUZGQkt2Mmd6Zkxjdm5QZDBHZUJrTkIzZ3UzM2FRbnJhSEh2Q2QwUWJ0?=
 =?utf-8?B?akJLN3NsOTBtVU0xNkFzcHYzQ25jZlVtY2laS3NBVE9KU1lhV0JUQzRQanp2?=
 =?utf-8?B?Z0NqZ01pVkNoV1luM21VNXlEWm1FREE2MVNSREo5Tno1bndsL2VFTGVWdVdK?=
 =?utf-8?B?MXFYcGFEQit1RndTMkJKQzUwUWtmTlRwdEpGSDF6QTJUVXFDMjdtMUl5KzZV?=
 =?utf-8?B?KytOMUZlM2haVFY4b1lidlNVeGwvMmFrdnNSY1FyTTQ5Y21UKzhGT245N2Rp?=
 =?utf-8?B?L3F4aEVUZGxsMDFwdHFrditxcjRMTS9EcW9EUVhMRlNGbzVodmVnTmNiSm54?=
 =?utf-8?B?N3VuNGEyajVsdzFKZ3ZiSk0rOHRQNXN0eG8rTUFST0NQQy9lL0doSWZRRmpy?=
 =?utf-8?B?L2U5eFltT2FCUGl1a2hmbVZzd3pRazVUbGF5akljTzZxYm9oK3VkOUd2djkx?=
 =?utf-8?B?Z1NXR0xqWmlhazU3Wk5YN1FDYU1TVGRKcjdMZEUzZmNWbDVyVVNlWmk3VVha?=
 =?utf-8?Q?qCqH6xTgVA+rs=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5746ef8c-7d75-4abc-975a-08d89741db2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2020 04:13:57.7595 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ykXwQnxDaqLOlsQcWPYH1c+zyiQSLEatPLVCDYDoHi+pR6yTnW95uHiZr04SQFb5uc4HCNuIlDjf/TwCuF+1YRyeaHaI9ry7bzTDIGANkXrM+rXpADGV6i1/bKMH+waihRnykksgrSMoFby6zaQWEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2829
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jaswant,

Can you please re-run resume run on CI as well as local setup and share results here? If it passes in full resume run in either of setup we are good go with. 

Thanks,
Tejas

> -----Original Message-----
> From: Chris Wilson <chris@chris-wilson.co.uk>
> Sent: 30 November 2020 20:31
> To: Pandey, Hariom <hariom.pandey@intel.com>; Surendrakumar
> Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/rkl: Remove require_force_probe
> protection
> 
> Quoting Surendrakumar Upadhyay, TejaskumarX (2020-11-30 14:45:14)
> > Hi Chris,
> >
> > The failing test was not part of BAT run, it ran in CI resume run and failed
> there, however on manual run the same test got passed. Please find
> attached results.
> 
> One pass versus a major failure is not satisfactory.
> 
> We can not say we are happy with the hardware/driver until it is reliable,
> and forcewake is of fundamental importance for mmio access, as well as
> execution.
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
