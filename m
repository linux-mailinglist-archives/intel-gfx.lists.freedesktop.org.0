Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F335A5EED58
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 07:47:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5727210E75A;
	Thu, 29 Sep 2022 05:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E060E10E75A
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 05:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664430394; x=1695966394;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=StZ3lqBbk4Bc2YXmnfnVKki00Pc+G8B1LDU+5x++YDw=;
 b=SjgL8CfQOmaZHWeK1C5WP+KjGM7rJdFouwpGc9S40lk689EQ3/NtbEqx
 s0pv32Bc/jzDTuhwOWcPiLvSETVC4GGNlX4sdMJJujA89c+K3PkZ4mykU
 i9VydCqm5yEqmeCVwkN07E6RHc74PfylaoNTgrdIrob+BR7b1S/OJ73/M
 tkE1820qVT+A4x/3oCFIUFY+yuiSZlwwVy+djfQD8/J0pxvYcEi/rA+6q
 ioW/+hthSRJ6Trl+qiYBM52TwUlOxhYpylYu8InGyRXKzGzoEFMPRMVuJ
 7MsUrwUdWiGUC8zyNbfyQQMU1MDhvLQZsBESLaq+AR/8LeSo3vTqC6fkB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="365847708"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="365847708"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 22:46:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="690682754"
X-IronPort-AV: E=Sophos;i="5.93,354,1654585200"; d="scan'208";a="690682754"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 28 Sep 2022 22:46:33 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 22:46:32 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 22:46:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 28 Sep 2022 22:46:32 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 28 Sep 2022 22:46:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e7rNfxAjw70leHm38pgigbzw9l7kDBXU0o2tnDZgHKMhM8uWN7bBB4V+gxVuWj70LPTZ9vcuMuLC0cQVncyVJaXYH2RjblG1kHCMYTGwL5aNGluwodISKG/lHtK6QO8+G0Yy5GOTlhFBNl4g0jxl1X894djr3OLUWaO7s7e8JUAsYvQ790d0CcJHXEVePAerMt47JircxHdoStukFgSRFM+OcDQ2VO+U14MuMyKAL5HSfT3NioAomSf7edsrAB9HPa1+JUlJFGdEy+fWCagxEhBu9oc9o/bHyFksenh6j0geMpiILGg1aF3yd2MhW7wfVlzr5Kl5KcdXUzsI1kY2Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=StZ3lqBbk4Bc2YXmnfnVKki00Pc+G8B1LDU+5x++YDw=;
 b=navLAHL3++62/Affn8yMhaIMRQlk1t84QSzFjCRwHoxTG4ZVUC/gd7dCtmQseyYjNTjh4kwfg6Of8DuGopxe8U3v+hWjGIOiDxMefw8JjIGjBXVM1lx0R+vnY23uECf2e59qSvsj4onHSDJGszXjoLzb7ZDbp1VTZqm3YcXOhSKb7vB2SIM4ikZccU9fmk37tvqWmp5oeFQ3qWg44e2ud1Nsc02rVp5KQeEGmRC6wIFbJAeFfY5JEEFzDA434YB8ZukBOg5n65zThLSh1jkOCnbhgIhrmbSmqamBu1gYye2EBGrpsAZNCGrUulG2imlOwoJDw/kf7Cr7y8UmvZApXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SA0PR11MB4592.namprd11.prod.outlook.com (2603:10b6:806:98::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.20; Thu, 29 Sep
 2022 05:46:09 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::3755:4837:1896:43f3]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::3755:4837:1896:43f3%2]) with mapi id 15.20.5676.017; Thu, 29 Sep 2022
 05:46:09 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Tauro, Riana" <riana.tauro@intel.com>, "Belgaumkar, Vinay"
 <vinay.belgaumkar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 3/3] drm/i915/guc/slpc: Add SLPC selftest live_slpc_power
Thread-Index: AQHYzzvPtNKXtjAo4UussceMs6zdKq3x5POAgAE/yhCAATsfgIABjqSQ
Date: Thu, 29 Sep 2022 05:46:08 +0000
Message-ID: <CY5PR11MB621139469C07A1AC8B97CFE295579@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220923110043.789178-1-riana.tauro@intel.com>
 <20220923110043.789178-4-riana.tauro@intel.com>
 <52445825-138d-f2f8-25d9-c13ff25dee12@intel.com>
 <CY5PR11MB6211F84E31B356A627ABBE6795559@CY5PR11MB6211.namprd11.prod.outlook.com>
 <68a95796-9e7f-c919-9d5c-6c418f088334@intel.com>
In-Reply-To: <68a95796-9e7f-c919-9d5c-6c418f088334@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SA0PR11MB4592:EE_
x-ms-office365-filtering-correlation-id: ae7f42c9-153b-48d8-8544-08daa1dde8a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HmXGIzws1hc8wRqV1evSFAndX8biE/5Hu4KaHSfzOfBZv5oMz1QQWHakkodHU3gEzqd5LKSB3oeqZCGkLXcpvpvNAzVaL/YdP9T8k7XRS/ZAypbSnMDSozlCXB9FNSkOc9eRrbbMUebX7pKXqKXtC0dFKj1ik1z+ccCBP2LP0TVtzPLiSz9utWaXEF1ay3pTdr7YDe/NPTVg9FoUsuRzYPQUwu1CFirS+yo1Wutu0u1aOBINbwmkuCxR9PKk0gKeMjKZ8oOhJQHXTM/hoH+ZaLIsI3wmHUvsjAwLWO26hoppK2ANrwG4+w06Sunhv/UE5ET2f6W1RxKbt7Q0R5eV/VdtKV07WM6MgeZGLJZ+H125UY9LLRZJ2ZA3fjLYY5vb7tjBI3MGY04JhWWkZByir046KwfSOjl8tclmFFmobjahR/nPrVyUAfQkCxBP0gWaRD32Ys+ykXLfWWBWbVMoqrKPvigzZTJkY/R4JwnW2FOWhjVtxib5jfCrtzaVYQmk1euIQSrc0f5+AJVNGlriutV36U6TXvAHlch5Uhv6MM6IWxSVjaKWZHXoUTQThUbwOcbVvPRCNMhu3hIwefGTEK3NAqd/ukMVxQ51zx3URV0/3MHevqlMEru0aT42u6dXiXxR+Y/54CtDCPb/sSOwLvXUqYKb6I3YTLCG7rEdnufeVUSfrXzXrTC79B3qO6etcbnqLRFxwRd/qgEhVgoGEAIBfbiv/6tOjo53+es15EtaYrAgqr7vwLKfyjtmiW3JgK/O4f0ZMdY7nBl0L5EiGw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(366004)(39860400002)(376002)(136003)(451199015)(86362001)(33656002)(38070700005)(55016003)(122000001)(38100700002)(82960400001)(316002)(54906003)(71200400001)(76116006)(52536014)(8936002)(5660300002)(66476007)(66446008)(64756008)(8676002)(4326008)(66556008)(41300700001)(66946007)(2906002)(83380400001)(110136005)(186003)(107886003)(6506007)(478600001)(7696005)(55236004)(53546011)(26005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NE5ySEprUTNpbStXYVA3QWZGOWxlQXljZ1djVGZXNmNBemRKTkw3ZHI4bkpI?=
 =?utf-8?B?MjFWR2NyVGhkbm9mdU9TVUM1YnoxQkg5M3F0TU5mU2pzOFdxNGVpQ1dSbktX?=
 =?utf-8?B?aWtqVURUUFdiTGdPcXUyUkNyeUJ6V2JNOUVCakV6bnZoT1Z1ZENLK1dvb3RQ?=
 =?utf-8?B?OGd3VUdJc3VROWo1NVh4bi9LSHVtNkgweFZzbklVdFNhYWpuSFJZbFlNWjYx?=
 =?utf-8?B?MVBEYXBUY05YZU9lQ24xaG1mK25kZStYS0hvcjRERU1Jam9qMzBjbWQyOUNS?=
 =?utf-8?B?TUFwZEhTTGFwazQzR2w0U2tMaGxFaTUzUFY0bzUrTFUzd2FKSTJYeU1mUlNI?=
 =?utf-8?B?ZklOdTY1YzZUVGV1cDBHZzBHbVFxelZ4aWhqTlhUb0pHT3locW5Dd0pJVDZL?=
 =?utf-8?B?N3pxaXZtSGlHY3h0V3JPMFpBbTlMWGFZM2V4OFBwWnBPRWVMdFVOdXJyd3BN?=
 =?utf-8?B?eUZpdEYweXVDaHhkZzdDMzlTL3BoWjlhcFlOODVEMWRodFh3WG1wdDcvSXln?=
 =?utf-8?B?cjZxNm1tb0JDNEttSjNMczFDL1VzNUNKNEVTTXN4azlwOXdJa29jL3dleTVa?=
 =?utf-8?B?bDJGRGZvMlh6U3N0S2ZqWCtyNG1MZlNmcFFkMlZPOUErb1l1dWtLUlR3aTJ3?=
 =?utf-8?B?a3JnWkdTS2xWY0FNbE9RVVd5a3ovU0VrQmc5VktpV2JMWVRyNkZ1cno4QlVT?=
 =?utf-8?B?ai9DOWdmTE0wNmFEZHBWM0ErRUFoTW1ycGUzR0d5UWgybStSMlRzSGx0QlVy?=
 =?utf-8?B?REN6dGlPREhaaE05MFNxL2dNTU5VQUM4R2VucFA3ZmFmZWVoOGhqYmZYbTlE?=
 =?utf-8?B?VTZaanFkb1BmbUlGczhseFVTSmNQTmVXNGVKREJZU0JRWjFRandweVRIR24v?=
 =?utf-8?B?VXVLQ296WDdvd0w2a1RVUXdDZFIwTXBjcUVYQWtYSERoTERkYklkeGhIQWhD?=
 =?utf-8?B?Ukp3eDdIUkV5WStrS2RaREcyQzFUWnNyNTRZNk00eW9WU29YZjhHaGh4bGh2?=
 =?utf-8?B?MDd5WlZLemFCY2FlUHh0OVhRNVlCanZReWN6b3hPSkhxcnBQbUVWY2V5MU9R?=
 =?utf-8?B?dFZibFllM1BCa2lGS3BTL0JkS3lkanBkNWg0c241YmFRV3NhMlVpOFkxMGF0?=
 =?utf-8?B?U3ltRm9ZL0c3MkFjUlBEdDQ1QlNCeDA5bWVEcmVSTzNpVFhpQXhaaDZsZEh6?=
 =?utf-8?B?a3RpZkdBaGd3Q2JYcVNqazJCZDZYWTl6K2tjNStSb3hCbW9aQW84dFJBdnhu?=
 =?utf-8?B?dXdaR0k1cVB3NnU1bmExa2FHaGFWWkZiVTBnQXF3NDNOYW9RUmRwSWlTcW5y?=
 =?utf-8?B?U3FlZFpUMkRYUmN5anFBaVBkZlFYWXg0VTdzKytqMkJjdE1leW9RakxTemd3?=
 =?utf-8?B?aEoyMmtYNHRjdVNyRW1ZOENZMVE2TjdBZzhnTUsxOUE5dmprc1VYbXJlM21o?=
 =?utf-8?B?ajk2Q3Z1b0RqdUNCL05TZTgweitHYzFPVnJzTnBRekMrL0JLSW5HQlpXaDNw?=
 =?utf-8?B?eEVkaWg1MlNGenNtRERHSnhvK3VoUC9FS1AyTjBxN1JLT3lPdUNPOHRraTNx?=
 =?utf-8?B?MjdhaU4vOFVCNTN4dWJ5ZHlNa2owaEhaaTl6T0huVk5MemwrbGZRZWQ1V04r?=
 =?utf-8?B?b0JadEZLNk8xdGVXUjBnYis0RXQ5aVhJNk5aVVNMSkwzbUo0RllCdlNTZENW?=
 =?utf-8?B?cUQ1a1lqT1NwSE80V0phdlpSMUZqRE8wSkZOQndabStvSExmWmJCbVpkV0l0?=
 =?utf-8?B?dWlMNFg5djNrYlB4SWhaUUs3VjFEZGlheFoxOCs0N3g0SzJXZnowYWJsN2NX?=
 =?utf-8?B?YmhLYis2ZjdWOVA2S3ZPcHQxQWlOSmU1RkhZSDNZd2JQMFNqVStXRW9abHVu?=
 =?utf-8?B?alB6THd3QS9LTktWQmRXK0V1Tno0ai9nak5qY2xNalJqY2QrdXUreTFCdzBZ?=
 =?utf-8?B?OE5FK0Y1Mm9pYWozM2tlek1qZG1XU2NBbkhLcksxMUZ5SEF2L0Jmckx2UVlN?=
 =?utf-8?B?VGJ2U1hLRVlTTnJWd1J3S2NENXBjdzJjZGlici9qSHlNb0pwZW1vVFNPOGNO?=
 =?utf-8?B?bEdQM293Ry8vcjJrYlBuSDlqQnJxNksvbkpSUkJqVllwOGdyUDJpMW95WXBY?=
 =?utf-8?Q?nHklFq8dNOJhaEmKaHK4YTb+m?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae7f42c9-153b-48d8-8544-08daa1dde8a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Sep 2022 05:46:08.9130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VPgnKevfRBTQkDBYCVEy+ikacYwFBXuyDELpV0Vpia4ev/C81KxecAMLBkpeNwOGWp7RsMbjZCZJWPz0+sO2Oyw6ACoaeWlUFtOizMEk2co=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4592
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/guc/slpc: Add SLPC selftest
 live_slpc_power
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVGF1cm8sIFJpYW5hIDxy
aWFuYS50YXVyb0BpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgU2VwdGVtYmVyIDI4LCAy
MDIyIDExOjI3IEFNDQo+IFRvOiBHdXB0YSwgQW5zaHVtYW4gPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT47IEJlbGdhdW1rYXIsIFZpbmF5DQo+IDx2aW5heS5iZWxnYXVta2FyQGludGVsLmNvbT47
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IERpeGl0LCBBc2h1dG9zaCA8
YXNodXRvc2guZGl4aXRAaW50ZWwuY29tPjsgTmlsYXdhciwgQmFkYWwNCj4gPGJhZGFsLm5pbGF3
YXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDMvM10gZHJtL2k5MTUvZ3VjL3Ns
cGM6IEFkZCBTTFBDIHNlbGZ0ZXN0DQo+IGxpdmVfc2xwY19wb3dlcg0KPiANCj4gDQo+IA0KPiBP
biA5LzI3LzIwMjIgNDo0MiBQTSwgR3VwdGEsIEFuc2h1bWFuIHdyb3RlOg0KPiA+DQo+ID4NCj4g
Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogQmVsZ2F1bWthciwgVmlu
YXkgPHZpbmF5LmJlbGdhdW1rYXJAaW50ZWwuY29tPg0KPiA+PiBTZW50OiBNb25kYXksIFNlcHRl
bWJlciAyNiwgMjAyMiA5OjM1IFBNDQo+ID4+IFRvOiBUYXVybywgUmlhbmEgPHJpYW5hLnRhdXJv
QGludGVsLmNvbT47DQo+ID4+IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPj4g
Q2M6IEd1cHRhLCBBbnNodW1hbiA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPjsgRGl4aXQsIEFz
aHV0b3NoDQo+ID4+IDxhc2h1dG9zaC5kaXhpdEBpbnRlbC5jb20+DQo+ID4+IFN1YmplY3Q6IFJl
OiBbUEFUQ0ggMy8zXSBkcm0vaTkxNS9ndWMvc2xwYzogQWRkIFNMUEMgc2VsZnRlc3QNCj4gPj4g
bGl2ZV9zbHBjX3Bvd2VyDQo+ID4+DQo+ID4+DQo+ID4+IE9uIDkvMjMvMjAyMiA0OjAwIEFNLCBS
aWFuYSBUYXVybyB3cm90ZToNCj4gPj4+IEEgZnVuZGFtZW50YWwgYXNzdW1wdGlvbiBpcyB0aGF0
IGF0IGxvd2VyIGZyZXF1ZW5jaWVzLCBub3Qgb25seSBkbw0KPiA+Pj4gd2UgcnVuIHNsb3dlciwg
YnV0IHdlIHNhdmUgcG93ZXIgY29tcGFyZWQgdG8gaGlnaGVyIGZyZXF1ZW5jaWVzLg0KPiA+Pj4g
bGl2ZV9zbHBjX3Bvd2VyIGNoZWNrcyBpZiBydW5uaW5nIGF0IGxvdyBmcmVxdWVuY3kgc2F2ZXMg
cG93ZXINCj4gPj4+DQo+ID4+PiB2MjogcmUtdXNlIGNvZGUgdG8gbWVhc3VyZSBwb3dlcg0KPiA+
Pj4gICAgICAgZml4ZWQgY29zbWV0aWMgcmV2aWV3IGNvbW1lbnRzIChWaW5heSkNCj4gPj4+DQo+
ID4+PiBTaWduZWQtb2ZmLWJ5OiBSaWFuYSBUYXVybyA8cmlhbmEudGF1cm9AaW50ZWwuY29tPg0K
PiA+Pg0KPiA+PiBMR1RNLA0KPiA+Pg0KPiA+PiBSZXZpZXdlZC1ieTogVmluYXkgQmVsZ2F1bWth
ciA8dmluYXkuYmVsZ2F1bWthckBpbnRlbC5jb20+DQo+ID4+DQo+ID4+PiAtLS0NCj4gPj4+ICAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3NscGMuYyB8IDEyNw0KPiArKysrKysr
KysrKysrKysrKysrKysrLS0NCj4gPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAxMTggaW5zZXJ0aW9u
cygrKSwgOSBkZWxldGlvbnMoLSkNCj4gPj4+DQo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfc2xwYy5jDQo+ID4+PiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X3NscGMuYw0KPiA+Pj4gaW5kZXggOTI4Zjc0NzE4ODgxLi40YzZlOTI1
N2U1OTMgMTAwNjQ0DQo+ID4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF9zbHBjLmMNCj4gPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Ns
cGMuYw0KPiA+Pj4gQEAgLTExLDcgKzExLDggQEANCj4gPj4+ICAgIGVudW0gdGVzdF90eXBlIHsN
Cj4gPj4+ICAgIAlWQVJZX01JTiwNCj4gPj4+ICAgIAlWQVJZX01BWCwNCj4gPj4+IC0JTUFYX0dS
QU5URUQNCj4gPj4+ICsJTUFYX0dSQU5URUQsDQo+ID4+PiArCVNMUENfUE9XRVIsDQo+ID4+PiAg
ICB9Ow0KPiA+Pj4NCj4gPj4+ICAgIHN0YXRpYyBpbnQgc2xwY19zZXRfbWluX2ZyZXEoc3RydWN0
IGludGVsX2d1Y19zbHBjICpzbHBjLCB1MzINCj4gPj4+IGZyZXEpIEBAIC00MSw2ICs0MiwzOSBA
QCBzdGF0aWMgaW50IHNscGNfc2V0X21heF9mcmVxKHN0cnVjdA0KPiA+Pj4gaW50ZWxfZ3VjX3Ns
cGMgKnNscGMsDQo+ID4+IHUzMiBmcmVxKQ0KPiA+Pj4gICAgCXJldHVybiByZXQ7DQo+ID4+PiAg
ICB9DQo+ID4+Pg0KPiA+Pj4gK3N0YXRpYyBpbnQgc2xwY19zZXRfZnJlcShzdHJ1Y3QgaW50ZWxf
Z3QgKmd0LCB1MzIgZnJlcSkgew0KPiA+Pj4gKwlpbnQgZXJyOw0KPiA+Pj4gKwlzdHJ1Y3QgaW50
ZWxfZ3VjX3NscGMgKnNscGMgPSAmZ3QtPnVjLmd1Yy5zbHBjOw0KPiA+Pj4gKw0KPiA+Pj4gKwll
cnIgPSBzbHBjX3NldF9tYXhfZnJlcShzbHBjLCBmcmVxKTsNCj4gPj4+ICsJaWYgKGVycikgew0K
PiA+Pj4gKwkJcHJfZXJyKCJVbmFibGUgdG8gdXBkYXRlIG1heCBmcmVxIik7DQo+ID4+PiArCQly
ZXR1cm4gZXJyOw0KPiA+Pj4gKwl9DQo+ID4+PiArDQo+ID4+PiArCWVyciA9IHNscGNfc2V0X21p
bl9mcmVxKHNscGMsIGZyZXEpOw0KPiA+Pj4gKwlpZiAoZXJyKSB7DQo+ID4+PiArCQlwcl9lcnIo
IlVuYWJsZSB0byB1cGRhdGUgbWluIGZyZXEiKTsNCj4gPj4+ICsJCXJldHVybiBlcnI7DQo+ID4+
PiArCX0NCj4gPj4+ICsNCj4gPj4+ICsJcmV0dXJuIGVycjsNCj4gPj4+ICt9DQo+ID4+PiArDQo+
ID4+PiArc3RhdGljIHU2NCBtZWFzdXJlX3Bvd2VyX2F0X2ZyZXEoc3RydWN0IGludGVsX2d0ICpn
dCwgaW50ICpmcmVxLA0KPiA+Pj4gK3U2NA0KPiA+Pj4gKypwb3dlcikgew0KPiA+Pj4gKwlpbnQg
ZXJyID0gMDsNCj4gPj4+ICsNCj4gPj4+ICsJZXJyID0gc2xwY19zZXRfZnJlcShndCwgKmZyZXEp
Ow0KPiA+Pj4gKwlpZiAoZXJyKQ0KPiA+Pj4gKwkJcmV0dXJuIGVycjsNCj4gPj4+ICsJKmZyZXEg
PSBpbnRlbF9ycHNfcmVhZF9hY3R1YWxfZnJlcXVlbmN5KCZndC0+cnBzKTsNCj4gPj4+ICsJKnBv
d2VyID0gbWVhc3VyZV9wb3dlcigmZ3QtPnJwcywgZnJlcSk7DQo+ID4+PiArDQo+ID4+PiArCXJl
dHVybiBlcnI7DQo+ID4+PiArfQ0KPiA+Pj4gKw0KPiA+Pj4gICAgc3RhdGljIGludCB2YXJ5X21h
eF9mcmVxKHN0cnVjdCBpbnRlbF9ndWNfc2xwYyAqc2xwYywgc3RydWN0IGludGVsX3Jwcw0KPiAq
cnBzLA0KPiA+Pj4gICAgCQkJIHUzMiAqbWF4X2FjdF9mcmVxKQ0KPiA+Pj4gICAgew0KPiA+Pj4g
QEAgLTExMyw2ICsxNDcsNTggQEAgc3RhdGljIGludCB2YXJ5X21pbl9mcmVxKHN0cnVjdCBpbnRl
bF9ndWNfc2xwYw0KPiA+Pj4gKnNscGMsDQo+ID4+IHN0cnVjdCBpbnRlbF9ycHMgKnJwcywNCj4g
Pj4+ICAgIAlyZXR1cm4gZXJyOw0KPiA+Pj4gICAgfQ0KPiA+Pj4NCj4gPj4+ICtzdGF0aWMgaW50
IHNscGNfcG93ZXIoc3RydWN0IGludGVsX2d0ICpndCwgc3RydWN0IGludGVsX2VuZ2luZV9jcw0K
PiA+Pj4gKyplbmdpbmUpIHsNCj4gPj4+ICsJc3RydWN0IGludGVsX2d1Y19zbHBjICpzbHBjID0g
Jmd0LT51Yy5ndWMuc2xwYzsNCj4gPj4+ICsJc3RydWN0IHsNCj4gPj4+ICsJCXU2NCBwb3dlcjsN
Cj4gPj4+ICsJCWludCBmcmVxOw0KPiA+Pj4gKwl9IG1pbiwgbWF4Ow0KPiA+Pj4gKwlpbnQgZXJy
ID0gMDsNCj4gPj4+ICsNCj4gPj4+ICsJLyoNCj4gPj4+ICsJICogT3VyIGZ1bmRhbWVudGFsIGFz
c3VtcHRpb24gaXMgdGhhdCBydW5uaW5nIGF0IGxvd2VyIGZyZXF1ZW5jeQ0KPiA+Pj4gKwkgKiBh
Y3R1YWxseSBzYXZlcyBwb3dlci4gTGV0J3Mgc2VlIGlmIG91ciBSQVBMIG1lYXN1cmVtZW50IHN1
cHBvcnRzDQo+ID4+PiArCSAqIHRoYXQgdGhlb3J5Lg0KPiA+Pj4gKwkgKi8NCj4gPj4+ICsJaWYg
KCFsaWJyYXBsX3N1cHBvcnRlZChndC0+aTkxNSkpDQo+ID4+PiArCQlyZXR1cm4gMDsNCj4gPiAJ
VGhpcyBzZWVtcyBhIHdyb25nIGFic3RyYWN0aW9uLCB0aGlzIHNob3VsZCBhIGdlbmVyaWMgY2Fs
bCBzaG91bGQNCj4gY2hlY2sgYm90aCBod21vbiByZWdpc3RyYXRpb24gZm9yIGRnZnggYW5kIHJh
cGwgZm9yIGlnZnguDQo+ID4gCUJyLA0KPiA+IAlBbnNodW1hbiBHdXB0YS4NCj4gVGhlIGN1cnJl
bnQgbGlicmFwbF9zdXBwb3J0ZWQgaGFzIG9ubHkgcmFwbCByZWxhdGVkIGNoYW5nZXMuIFRoZSBo
d21vbg0KPiBlbmVyZ3kgaXMgeWV0IHRvIGJlIGFkZGVkLg0KPiANCj4gV2lsbCBjaGFuZ2UgdGhl
IG5hbWUgd2l0aCB0aGUgaHdtb24gcGF0Y2gNCkhXTU9OIHNlcmllcyBpcyBhbHJlYWR5IHJldmll
d2VkIGFuZCByZWFkeSB0byBtZXJnZSBqdXN0IHdhaXRpbmcgZm9yIENJIHJlc3VsdHMuDQpJIHRo
aW5rIHdlIGNhbiBtZXJnZSB0aGlzIGFmdGVyIGh3bW9tLg0KQnIsDQpBbnNodW1hbiBHdXB0YS4N
Cj4gDQo+IFRoYW5rcw0KPiBSaWFuYSBUYXVybw0KPiANCj4gPj4+ICsNCj4gPj4+ICsJbWluLmZy
ZXEgPSBzbHBjLT5taW5fZnJlcTsNCj4gPj4+ICsJZXJyID0gbWVhc3VyZV9wb3dlcl9hdF9mcmVx
KGd0LCAmbWluLmZyZXEsICZtaW4ucG93ZXIpOw0KPiA+Pj4gKw0KPiA+Pj4gKwlpZiAoZXJyKQ0K
PiA+Pj4gKwkJcmV0dXJuIGVycjsNCj4gPj4+ICsNCj4gPj4+ICsJbWF4LmZyZXEgPSBzbHBjLT5y
cDBfZnJlcTsNCj4gPj4+ICsJZXJyID0gbWVhc3VyZV9wb3dlcl9hdF9mcmVxKGd0LCAmbWF4LmZy
ZXEsICZtYXgucG93ZXIpOw0KPiA+Pj4gKw0KPiA+Pj4gKwlpZiAoZXJyKQ0KPiA+Pj4gKwkJcmV0
dXJuIGVycjsNCj4gPj4+ICsNCj4gPj4+ICsJcHJfaW5mbygiJXM6IG1pbjolbGx1bVcgQCAldU1I
eiwgbWF4OiVsbHVtVyBAICV1TUh6XG4iLA0KPiA+Pj4gKwkJZW5naW5lLT5uYW1lLA0KPiA+Pj4g
KwkJbWluLnBvd2VyLCBtaW4uZnJlcSwNCj4gPj4+ICsJCW1heC5wb3dlciwgbWF4LmZyZXEpOw0K
PiA+Pj4gKw0KPiA+Pj4gKwlpZiAoMTAgKiBtaW4uZnJlcSA+PSA5ICogbWF4LmZyZXEpIHsNCj4g
Pj4+ICsJCXByX25vdGljZSgiQ291bGQgbm90IGNvbnRyb2wgZnJlcXVlbmN5LCByYW4gYXQgWyV1
TUh6LA0KPiA+PiAldU1oel1cbiIsDQo+ID4+PiArCQkJICBtaW4uZnJlcSwgbWF4LmZyZXEpOw0K
PiA+Pj4gKwl9DQo+ID4+PiArDQo+ID4+PiArCWlmICgxMSAqIG1pbi5wb3dlciA+IDEwICogbWF4
LnBvd2VyKSB7DQo+ID4+PiArCQlwcl9lcnIoIiVzOiBkaWQgbm90IGNvbnNlcnZlIHBvd2VyIHdo
ZW4gc2V0dGluZyBsb3dlcg0KPiA+PiBmcmVxdWVuY3khXG4iLA0KPiA+Pj4gKwkJICAgICAgIGVu
Z2luZS0+bmFtZSk7DQo+ID4+PiArCQllcnIgPSAtRUlOVkFMOw0KPiA+Pj4gKwl9DQo+ID4+PiAr
DQo+ID4+PiArCS8qIFJlc3RvcmUgbWluL21heCBmcmVxdWVuY2llcyAqLw0KPiA+Pj4gKwlzbHBj
X3NldF9tYXhfZnJlcShzbHBjLCBzbHBjLT5ycDBfZnJlcSk7DQo+ID4+PiArCXNscGNfc2V0X21p
bl9mcmVxKHNscGMsIHNscGMtPm1pbl9mcmVxKTsNCj4gPj4+ICsNCj4gPj4+ICsJcmV0dXJuIGVy
cjsNCj4gPj4+ICt9DQo+ID4+PiArDQo+ID4+PiAgICBzdGF0aWMgaW50IG1heF9ncmFudGVkX2Zy
ZXEoc3RydWN0IGludGVsX2d1Y19zbHBjICpzbHBjLCBzdHJ1Y3QNCj4gPj4+IGludGVsX3JwcyAq
cnBzLA0KPiA+PiB1MzIgKm1heF9hY3RfZnJlcSkNCj4gPj4+ICAgIHsNCj4gPj4+ICAgIAlzdHJ1
Y3QgaW50ZWxfZ3QgKmd0ID0gcnBzX3RvX2d0KHJwcyk7IEBAIC0yMzMsMTcgKzMxOSwyMyBAQA0K
PiA+Pj4gc3RhdGljIGludCBydW5fdGVzdChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBpbnQgdGVzdF90
eXBlKQ0KPiA+Pj4NCj4gPj4+ICAgIAkJCWVyciA9IG1heF9ncmFudGVkX2ZyZXEoc2xwYywgcnBz
LCAmbWF4X2FjdF9mcmVxKTsNCj4gPj4+ICAgIAkJCWJyZWFrOw0KPiA+Pj4gKw0KPiA+Pj4gKwkJ
Y2FzZSBTTFBDX1BPV0VSOg0KPiA+Pj4gKwkJCWVyciA9IHNscGNfcG93ZXIoZ3QsIGVuZ2luZSk7
DQo+ID4+PiArCQkJYnJlYWs7DQo+ID4+PiAgICAJCX0NCj4gPj4+DQo+ID4+PiAtCQlwcl9pbmZv
KCJNYXggYWN0dWFsIGZyZXF1ZW5jeSBmb3IgJXMgd2FzICVkXG4iLA0KPiA+Pj4gLQkJCWVuZ2lu
ZS0+bmFtZSwgbWF4X2FjdF9mcmVxKTsNCj4gPj4+ICsJCWlmICh0ZXN0X3R5cGUgIT0gU0xQQ19Q
T1dFUikgew0KPiA+Pj4gKwkJCXByX2luZm8oIk1heCBhY3R1YWwgZnJlcXVlbmN5IGZvciAlcyB3
YXMgJWRcbiIsDQo+ID4+PiArCQkJCWVuZ2luZS0+bmFtZSwgbWF4X2FjdF9mcmVxKTsNCj4gPj4+
DQo+ID4+PiAtCQkvKiBBY3R1YWwgZnJlcXVlbmN5IHNob3VsZCByaXNlIGFib3ZlIG1pbiAqLw0K
PiA+Pj4gLQkJaWYgKG1heF9hY3RfZnJlcSA8PSBzbHBjX21pbl9mcmVxKSB7DQo+ID4+PiAtCQkJ
cHJfZXJyKCJBY3R1YWwgZnJlcSBkaWQgbm90IHJpc2UgYWJvdmUgbWluXG4iKTsNCj4gPj4+IC0J
CQlwcl9lcnIoIlBlcmYgTGltaXQgUmVhc29uczogMHgleFxuIiwNCj4gPj4+IC0JCQkgICAgICAg
aW50ZWxfdW5jb3JlX3JlYWQoZ3QtPnVuY29yZSwNCj4gPj4gR1QwX1BFUkZfTElNSVRfUkVBU09O
UykpOw0KPiA+Pj4gLQkJCWVyciA9IC1FSU5WQUw7DQo+ID4+PiArCQkJLyogQWN0dWFsIGZyZXF1
ZW5jeSBzaG91bGQgcmlzZSBhYm92ZSBtaW4gKi8NCj4gPj4+ICsJCQlpZiAobWF4X2FjdF9mcmVx
IDw9IHNscGNfbWluX2ZyZXEpIHsNCj4gPj4+ICsJCQkJcHJfZXJyKCJBY3R1YWwgZnJlcSBkaWQg
bm90IHJpc2UgYWJvdmUNCj4gbWluXG4iKTsNCj4gPj4+ICsJCQkJcHJfZXJyKCJQZXJmIExpbWl0
IFJlYXNvbnM6IDB4JXhcbiIsDQo+ID4+PiArCQkJCSAgICAgICBpbnRlbF91bmNvcmVfcmVhZChn
dC0+dW5jb3JlLA0KPiA+PiBHVDBfUEVSRl9MSU1JVF9SRUFTT05TKSk7DQo+ID4+PiArCQkJCWVy
ciA9IC1FSU5WQUw7DQo+ID4+PiArCQkJfQ0KPiA+Pj4gICAgCQl9DQo+ID4+Pg0KPiA+Pj4gICAg
CQlpZ3Rfc3Bpbm5lcl9lbmQoJnNwaW4pOw0KPiA+Pj4gQEAgLTMxNiwxMiArNDA4LDI5IEBAIHN0
YXRpYyBpbnQgbGl2ZV9zbHBjX21heF9ncmFudGVkKHZvaWQgKmFyZykNCj4gPj4+ICAgIAlyZXR1
cm4gcmV0Ow0KPiA+Pj4gICAgfQ0KPiA+Pj4NCj4gPj4+ICtzdGF0aWMgaW50IGxpdmVfc2xwY19w
b3dlcih2b2lkICphcmcpIHsNCj4gPj4+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBhcmc7DQo+ID4+PiArCXN0cnVjdCBpbnRlbF9ndCAqZ3Q7DQo+ID4+PiArCXVuc2lnbmVkIGlu
dCBpOw0KPiA+Pj4gKwlpbnQgcmV0Ow0KPiA+Pj4gKw0KPiA+Pj4gKwlmb3JfZWFjaF9ndChndCwg
aTkxNSwgaSkgew0KPiA+Pj4gKwkJcmV0ID0gcnVuX3Rlc3QoZ3QsIFNMUENfUE9XRVIpOw0KPiA+
Pj4gKwkJaWYgKHJldCkNCj4gPj4+ICsJCQlyZXR1cm4gcmV0Ow0KPiA+Pj4gKwl9DQo+ID4+PiAr
DQo+ID4+PiArCXJldHVybiByZXQ7DQo+ID4+PiArfQ0KPiA+Pj4gKw0KPiA+Pj4gICAgaW50IGlu
dGVsX3NscGNfbGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+
ID4+PiAgICB7DQo+ID4+PiAgICAJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVz
dHNbXSA9IHsNCj4gPj4+ICAgIAkJU1VCVEVTVChsaXZlX3NscGNfdmFyeV9tYXgpLA0KPiA+Pj4g
ICAgCQlTVUJURVNUKGxpdmVfc2xwY192YXJ5X21pbiksDQo+ID4+PiAgICAJCVNVQlRFU1QobGl2
ZV9zbHBjX21heF9ncmFudGVkKSwNCj4gPj4+ICsJCVNVQlRFU1QobGl2ZV9zbHBjX3Bvd2VyKSwN
Cj4gPj4+ICAgIAl9Ow0KPiA+Pj4NCj4gPj4+ICAgIAlzdHJ1Y3QgaW50ZWxfZ3QgKmd0Ow0K
