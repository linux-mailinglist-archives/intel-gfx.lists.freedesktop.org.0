Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E03A715CEF
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 13:20:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE0E910E13C;
	Tue, 30 May 2023 11:20:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B830C10E13C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 11:20:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685445645; x=1716981645;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WBOyV6PBdytUTzncD5PdlTchzTVJAE9i5AIzpTkMte8=;
 b=ezQCIT7y5VlCNTg94PVoj1J23CjHBGja3Jdr9PaqoyPy5M02QBc60fXD
 V+EXoJdk+8qakOGqUI4TI4DRPxWDJ8mO/N/YlFo7AgoypkfLLrxx22YhF
 iYrlblxNjEirS0569ibQg7pE6wEJ9XdDa8yfSOtepi86258ebA3yrbhT1
 n/I9EbsmchQKXRu1Wlod210vX+X/wldTnnjXBYVU8Qi1Jx5JLmMypk5B0
 RD4rxs+URQDJfrgJBwLXtIWOFhtkBxmCmb+ZKqgJsFbipLPd/U3YiLa+m
 tyiyF3jpnCmKbSVqow0pgl8FweAn1VgCCagxB4hKf8QWb6C1iXdoLsY1+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="352387551"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="352387551"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 04:20:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="739491400"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="739491400"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 30 May 2023 04:20:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 04:20:44 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 04:20:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 04:20:43 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 04:20:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BfKxpXOzVMrMSDcnki4EhLVRUx36tDoHH1dbKd1IitUjL87bQtIGCFmTRSHVI/jyA/jVVDMFU20SLYqJTOqbaHJ8UoetoSun/4+b1IJbzvtbKorCGmbfiKh8KBNzVf01UMUfeEdM8ST/hHnpdpNCCekySSxyjrRblgGQN1lJ6NAvF8Bp+7GOUtzBtJkYIAC6ykU+omaZx60cevXPFep7KDkNo8FHj8oskaOhKZCGaF4c07+r8XEBkHvycB0KPfE1Uc+PD5pbFup3dk2EFKGnI71B5vGjs/qFxKKYciy2JTMihBwhcu0NLfsHd3xFDjniXnPyYF5EFiJQqCqw2jXapA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WBOyV6PBdytUTzncD5PdlTchzTVJAE9i5AIzpTkMte8=;
 b=K1SypkON7cnns2umy8XrRdDgRRgHMjQCk37RNFuy2uI87Mzx6zC/TUJVVkPL6epVqstQskj5l6/9edogXL7XWA3kIWkZuYMht0A4KQLR86FFsIk9WLzr3zOnBsM1KY283b0scsCaF8qER3+UQE3uVsME6N3rwe2ik4WrfOKsawOnWvaXrJVeUMRctaXkCwfqtysYPEhC+ELKJcZ5UmHRN1oWjw8r+o85SG8W7COOSBx+A+ygf4xBga9F0GJ68wwkjisb0yzA7wCpDWdaE2zB9KFxrgM67Q7mZWl0wIl0DmVeOCZFXV4utLxTA9sQaiekN2+hfojcL1pPPjuZJ1MGNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA1PR11MB8246.namprd11.prod.outlook.com (2603:10b6:208:445::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Tue, 30 May
 2023 11:20:41 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::c845:cafb:c99b:c889]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::c845:cafb:c99b:c889%6]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 11:20:41 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Luca Coelho <luca@coelho.fi>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Reset only one lane in case of
 MFD
Thread-Index: AQHZjlGAUkCkzuAsiU6gXdH1TrR34K9yh4iAgAAJ/pCAAA8VAIAAE79Q
Date: Tue, 30 May 2023 11:20:41 +0000
Message-ID: <MW4PR11MB7054F7C548CC0B5AD1018C6FEF4B9@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230524150152.136371-1-mika.kahola@intel.com>
 <5fbdf7f3e973cafbe6ca1228612493fa06a5d464.camel@coelho.fi>
 <MW4PR11MB705407904B6084AC3657A97CEF4B9@MW4PR11MB7054.namprd11.prod.outlook.com>
 <0a30260b0e084bd5a3dc518cebe0d30eb057df18.camel@coelho.fi>
In-Reply-To: <0a30260b0e084bd5a3dc518cebe0d30eb057df18.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA1PR11MB8246:EE_
x-ms-office365-filtering-correlation-id: e0763ad1-e65e-4315-cad8-08db60ffe6f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GnOzALe9r/+KzSCaGguIzhnXn+Nrxq9qlXwGyWHumiy8QT8fld5ZjKzVCq7oTranmK87CafICz31av/QWpyw7fTiFkVrBKJ1s74zqoqzArSvSy86L3fDCwxw0llUz/fl22tkcofq4kquDhj9jydUWr3pbDy1RRjn4S7R6NYe4FmJaMWKuxe5KxcIwokErTPf3YlChJS+kuJIC21ad4r/CDO6kzq5uPKWpl7cJs+FyAkh9dXO7MmafmQKlpczR+NS3/K84b5IhjAyHXtZd6jwglKu4mWyXV8nFtpS/h50aK0fCAgZ5zCODI6wQB4kzXkb34Z7vU45Nh4rozDgE4tb+w+9YBjXpeFS/dDqgPWEh4fFghcI84oqB0V2x8Uj3OPQ5UW499mAPduqjONGaoh3eOKQda8ZTcdzanY7vdxHLG55MGsJiLzuudyh8Im6R9oBBEY3aSub42mHmCUkzaDRzeeMmmvM4k31t3SFuEg/eq9hWzVaMRbPVXq+WRXdo6ByTs6DnpXnCuXgNHaStN9bRjMff4iRY+o69wDY1dAikzQvsNFlstYGQ845eTlwsKnJ3EVOHIi07TCkSQNGwpoXRpGGlgaU+dQkSVslCdxeYuDbcLhwwdDjhxQOZZFKzzob
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(366004)(39860400002)(136003)(376002)(451199021)(82960400001)(38100700002)(122000001)(478600001)(76116006)(66556008)(83380400001)(66476007)(64756008)(66446008)(38070700005)(66946007)(66899021)(110136005)(86362001)(33656002)(71200400001)(2906002)(6506007)(186003)(7696005)(53546011)(9686003)(26005)(316002)(41300700001)(5660300002)(52536014)(8676002)(8936002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VEw3UnhlNHhiRm5tK0JjYTNTbHcyTW1pNS8vOXE5Yk5HcThJTkFNWkJjRjVX?=
 =?utf-8?B?ZDhGRzV4VlYwMWVMYUVVYklYUHN3SDhJMXNJcGRHTFZGYytEZkF1M0FEd1BF?=
 =?utf-8?B?ekxGQmkzSmtDMUNBVzU0d0h6Q0ZCZlVrVU5ySW9XWndzQytUY2RqR1VDdjRq?=
 =?utf-8?B?OHd5bUFwK25pNTBnVUo4QjloUWhkd1RKNnhkMElSUUhpR05rV3hPYk1ENE1I?=
 =?utf-8?B?M1ArYm0yRTgxbTd6VWYyODBQelcwV3NZUnFQUTZpWFF3UThLNWxYMjBIcWFR?=
 =?utf-8?B?QmxjN0FtUWRrdkxKb1l1UlRJZVJmTW5YdkRzZUlmNjg4cEpHZ3crUFNueVFV?=
 =?utf-8?B?bHhjVU1pSk9UcXV5SlYvWmtKYU1mQTFYQm9JV2ZGdmJEejErZ0dndWMxV1U0?=
 =?utf-8?B?dGllUDBCTTJaaG9tZ3Z0d3dVRFNld05Yb3NaSGd1em1HcmI2OVFGMUs0b0dU?=
 =?utf-8?B?YXJCZUJnSWNabjcwSUdrOTU0QnhPc2pTRnZJU1dFNnBtS2h3Q1NYMTdWZWxn?=
 =?utf-8?B?ZHNWTnVFczdZVkNxMVFMN0Q2M3F1QXU0R2NVdmdqTUpFdVBlVGw3ajNSMmJS?=
 =?utf-8?B?UU5TQ29NbU5tTlZxai92TGxCTTYzTHI4R0ozdkppMlgyL3RqaGhkYm5ZWHBy?=
 =?utf-8?B?bkxFSVNTc0R5SWRkdmd4VmMwTnc5OVY4MHhwNjViaG9jMWJCRGpUSHlPYmZI?=
 =?utf-8?B?bk9YN2hkejc1ZjlqYjVNTmphbVdqNmo5c3F0eGQ4SzhqNm10RnhFN2Z4TEtk?=
 =?utf-8?B?dnNkWVYxT0R4Z2lGM2FJWkdpbVk1S1VtWC9BVkUxektRdFUxQlFJZWN6TU5F?=
 =?utf-8?B?VWdLM0xRRVN3ZXNLOG9vK0sveDU0RDkzSUxQWjdyYzNjZDJweVZxbDVrSU9j?=
 =?utf-8?B?aEpsZXhCZ1ZBMkdFdm1UTDM1Y2JZQjdQNnk5YkwybEZNcXF6UUZKUGxJQ3NJ?=
 =?utf-8?B?d3lkcFVya0t3Qkc0Y0R3b2RHQmhIT2U5SXdyM21rNkVrc09tajlaM1lQd1Z5?=
 =?utf-8?B?OFMrSlAxaWpSY0toZ3V1ZklSeGlZaG1udnZ0VG1iODlVNkhoUnRLUWtvd3lv?=
 =?utf-8?B?dDFEblU2cjFvSHJzWFRvR2g2UThJOElWUmFmcmRlOUhNR2Y2TVJ0UGN5NWsz?=
 =?utf-8?B?RXNidkRVUWRVWDg1R0ZSOVlyRHYvMjRIRmJNMlpwNWw2SS9kUFFrV1dQbmNP?=
 =?utf-8?B?SVpydWJMYWNJRjdRSkRlMER4Q014OW5GZStBaWFSWDA5RDFkU21WcWVFdHRn?=
 =?utf-8?B?dU9Ga2orMnhoMTZybER6aWxTc20yMlJzUWU2ZXNObDV3Z2pkd1NLUXZkUWpn?=
 =?utf-8?B?aWpnTXd3TVVhWUZLMm15b1Z2UVN3Nk5iVi9qdXFUcE1pcHJDRW40Q0VjYjFj?=
 =?utf-8?B?RmlxL1F6cjVFRk5uN3JPVld4RDNhTHE1L3lCZWJtemhzRW95Rk43OVhaeDNP?=
 =?utf-8?B?S0hjdEpldTdIejVidWcwNFNxSlgwbkE3Y1dWQ01mQXRQL25TY3hrc1dQZVFt?=
 =?utf-8?B?WC9IVU5xZzh4Y202cTlWOHhxVGVVbXVNa1lTMkk1b2NtMFFFZ095SjZpUFkr?=
 =?utf-8?B?clJ5WlBxb0FWWGFBZGYxUjc4MVlaTkE2b1FEOENrMVo5dXd3aGwwcUN1NWcz?=
 =?utf-8?B?YzEzNkRUa3FST2xra2R4c1hzZEN6ZzNyRGExQ3d1OVRHR3RpSnloNlZ2YjZr?=
 =?utf-8?B?Ri9MM3hRaFVqeWE1ekNGcFVKZllWUVNiUFVSbG9lYk9zYitjRXpXNURUZ1lW?=
 =?utf-8?B?QU4zbkFlQUI5cnA3WEFuaXNQRFBpaFlmWkpJdHIrMFVENno0akVsblhNT21E?=
 =?utf-8?B?bE5udDI2YjJXcTNmcXpLYmY2TXdhNWdGaXlnelhsdFA1K09JbzZyOHgxaHJ4?=
 =?utf-8?B?QjUxSEw0ZWdHc0dIZDZ6V3NkK0NnQ3NTSm5WTG1GZnBHblpaN0tuQ0srNk1T?=
 =?utf-8?B?VHhFdExJcVlnSEJNRXpWQTJySXRXRHZPUzFCTjAzYmExRnJqb2pzWUtWanBs?=
 =?utf-8?B?eGV2a3k1NEVENUFxKzZVVXdjMmYvWXl5aE5sTjY4N3V6Rk1wTjhCMHFHKzhU?=
 =?utf-8?B?emlGYnoxZmZBOWkvaGg0eEVpYlVXcWNBWHhoRzlyOS9GcitWUUJEalVkVjBD?=
 =?utf-8?Q?k9YSaOuYlLx+aGlkbp8dqTon5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0763ad1-e65e-4315-cad8-08db60ffe6f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 11:20:41.0287 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WJ1GLa6nyNpX4r0+AzSWMRxwUWxZYUqNgJGJnS1AeWM8VvG6DYmVQhYYAaPXSuy1yDUkxvK/HDcrdn95KWiQRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8246
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Reset only one lane in case
 of MFD
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBMdWNhIENvZWxobyA8bHVjYUBj
b2VsaG8uZmk+DQo+IFNlbnQ6IFR1ZXNkYXksIE1heSAzMCwgMjAyMyAxOjA4IFBNDQo+IFRvOiBL
YWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUv
bXRsOiBSZXNldCBvbmx5IG9uZSBsYW5lIGluIGNhc2Ugb2YgTUZEDQo+IA0KPiBPbiBUdWUsIDIw
MjMtMDUtMzAgYXQgMDk6MzAgKzAwMDAsIEthaG9sYSwgTWlrYSB3cm90ZToNCj4gPiA+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBMdWNhIENvZWxobyA8bHVjYUBjb2Vs
aG8uZmk+DQo+ID4gPiBTZW50OiBUdWVzZGF5LCBNYXkgMzAsIDIwMjMgMTE6MzggQU0NCj4gPiA+
IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLQ0KPiA+ID4g
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhd
IFtQQVRDSF0gZHJtL2k5MTUvbXRsOiBSZXNldCBvbmx5IG9uZSBsYW5lDQo+ID4gPiBpbiBjYXNl
IG9mIE1GRA0KPiA+ID4NCj4gPiA+IExvb2tzIGdvb2QsIEkgb25seSBoYXZlIHNvbWUgbml0cGlj
a3MuDQo+ID4gPg0KPiA+ID4gT24gV2VkLCAyMDIzLTA1LTI0IGF0IDE4OjAxICswMzAwLCBNaWth
IEthaG9sYSB3cm90ZToNCj4gPiA+ID4gSW4gY2FzZSB3aGVuIG9ubHkgdHdvIG9yIGxlc3MgbGFu
ZXMgYXJlIG93bmVkIHN1Y2ggYXMgTUZEIChEUC1hbHQNCj4gPiA+ID4gd2l0aA0KPiA+ID4gPiB4
MiBsYW5lcykgd2UgbmVlZCB0byByZXNldCBvbmx5IG9uZSBsYW5lIChsYW5lMCkuIFdpdGggb25s
eSB4Mg0KPiA+ID4gPiBsYW5lcyB3ZSBkb24ndCBuZWVkIHRvIHBvbGwgZm9yIHRoZSBwaHkgY3Vy
cmVudCBzdGF0dXMgb24gYm90aA0KPiA+ID4gPiBsYW5lcyBzaW5jZSBvbmx5IHRoZSBvd25lZCBs
YW5lIHdpbGwgcmVzcG9uZC4NCj4gPiA+DQo+ID4gPiBJdCB3b3VsZCBiZSBuaWNlIHRvIGV4cGxh
aW4gd2h5IGl0IGlzIHNvLg0KPiA+ID4NCj4gPiA+DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE1p
a2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jIHwgMzkNCj4gPiA+
ID4gKysrKysrKysrKysrLS0tLS0tLS0NCj4gPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMjMgaW5z
ZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pDQo+ID4gPiA+DQo+ID4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ID4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gPiA+IGlu
ZGV4IGVlNjkwMjExODg2MC4uYjhjODEyYzViMzNmIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ID4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ID4gPiBAQCAt
MjUyOCwxMyArMjUyOCwyMyBAQCBzdGF0aWMgdTMyDQo+ID4gPiA+IGludGVsX2N4MF9nZXRfcGNs
a19yZWZjbGtfYWNrKHU4IGxhbmVfbWFzaykNCj4gPiA+ID4gwqAJcmV0dXJuIHZhbDsNCj4gPiA+
ID4gwqB9DQo+ID4gPiA+DQo+ID4gPiA+IC0vKiBGSVhNRTogU29tZSBUeXBlLUMgY2FzZXMgbmVl
ZCBub3QgcmVzZXQgYm90aCB0aGUgbGFuZXMuDQo+ID4gPiA+IEhhbmRsZQ0KPiA+ID4gPiB0aG9z
ZSBjYXNlcy4gKi8gLXN0YXRpYyB2b2lkIGludGVsX2N4MF9waHlfbGFuZV9yZXNldChzdHJ1Y3QN
Cj4gPiA+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgZW51bSBwb3J0IHBvcnQsDQo+ID4gPiA+
ICtzdGF0aWMgdm9pZCBpbnRlbF9jeDBfcGh5X2xhbmVfcmVzZXQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUNCj4gPiA+ID4gKmk5MTUsDQo+ID4gPiA+ICsJCQkJICAgICBzdHJ1Y3QgaW50ZWxfZW5j
b2Rlcg0KPiA+ID4gPiAqZW5jb2RlciwNCj4gPiA+ID4gwqAJCQkJICAgICBib29sIGxhbmVfcmV2
ZXJzYWwpDQo+ID4gPiA+IMKgew0KPiA+ID4gPiArCWVudW0gcG9ydCBwb3J0ID0gZW5jb2Rlci0+
cG9ydDsNCj4gPiA+ID4gwqAJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoaTkxNSwg
cG9ydCk7DQo+ID4gPiA+ICsJdTggZmlhX21heCA9DQo+ID4gPiA+ICtpbnRlbF90Y19wb3J0X2Zp
YV9tYXhfbGFuZV9jb3VudChlbmNfdG9fZGlnX3BvcnQoZW5jb2RlcikpOw0KPiA+ID4NCj4gPiA+
IExvZ2ljYWxseSwgd2UgZG9uJ3QgY2FyZSBhYm91dCAiZmlhX21heCIgaW4gdGhpcyBmdW5jdGlv
biwgd2Ugb25seQ0KPiA+ID4gY2FyZSB3aGV0aGVyIG9uZSBvciB0d28gbGFuZXMgc2hvdWxkIGJl
IGhhbmRsZWQuICBJbiBhbGwgcGxhY2VzIHdlDQo+ID4gPiB1c2UgZmlhX21heCwgd2Ugb25seSBj
aGVjayBpZiBpdCBpcyA+IDIuICBTbyBJIHRoaW5rIGl0IHdvdWxkIGJlDQo+ID4gPiBjbGVhcmVy
IHRvIGhhdmUgdGhlID4gMiBoZXJlIGFscmVhZHkgYW5kIGNhbGwgdGhlIHZhcmlhYmxlIHNvbWV0
aGluZw0KPiA+ID4gZWxzZS4NCj4gPiA+DQo+ID4gPiBBZGRpdGlvbmFsbHksICI+IDIiIGxvb2tz
IHNsaWdodGx5IG1hZ2ljICh3aXRob3V0IGtub3dpbmcgdGhlDQo+ID4gPiByZWFzb24sIGFzIHN0
YXRlZCBpbiBteSBmaXJzdCBjb21tZW50KS4gIElzIHRoZXJlIGFueSBtb3JlIHNlbGYtDQo+ID4g
PiBleHBsYW5hdG9yeSBzeW1ib2wgd2UgY291bGQgdXNlZD8NCj4gPiBJIGFkbWl0LCBpdCdzIG5v
dCB0aGF0IGNsZWFyIHdoZW4geW91IGxvb2sgYXQgaXQgZmlyc3QgdGltZS4gSXQgb25seQ0KPiA+
IG1lYW5zIHRoYXQgYWxsIGxhbmVzIGFyZSBpbiB1c2UgYW5kIHdlIHNob3VsZCBpbiB0aGF0IGNh
c2UgcmVzZXQgYWxsDQo+ID4gbGFuZXMuIE1heWJlIHN3aXRjaGluZyB0byBCb29sZWFuIGluc3Rl
YWQgc29tZXRoaW5nIGxpa2UgdGhpcw0KPiA+DQo+ID4gYm9vbCBhbGxfbGFuZXMgPQ0KPiA+IGlu
dGVsX3RjX3BvcnRfZmlhX21heF9sYW5lX2NvdW50KGVuY190b19kaWdfcG9ydChlbmNvZGVyKSkg
PiAyOw0KPiA+DQo+ID4gQW5kIGRvIHRoZSByZXNldCByb3V0aW5lcyBiYXNlZCBvbiB0aGlzPw0K
PiANCj4gU291bmRzIGdvb2QuDQo+IA0KPiANCj4gPiA+ID4gCXU4IGxhbmVfbWFzayA9IGxhbmVf
cmV2ZXJzYWwgPyBJTlRFTF9DWDBfTEFORTEgOg0KPiA+ID4gPiDCoAkJCQkgIElOVEVMX0NYMF9M
QU5FMDsNCj4gPiA+ID4gKwl1MzIgbGFuZV9waXBlX3Jlc2V0ID0gZmlhX21heCA+IDIgPw0KPiA+
ID4gPiArCQkJICAgICAgWEVMUERQX0xBTkVfUElQRV9SRVNFVCgwKSB8DQo+ID4gPiA+ICsJCQkg
ICAgICBYRUxQRFBfTEFORV9QSVBFX1JFU0VUKDEpIDoNCj4gPiA+ID4gKwkJCSAgICAgIFhFTFBE
UF9MQU5FX1BJUEVfUkVTRVQoMCk7DQo+ID4gPiA+ICsJdTMyIGxhbmVfcGh5X2N1cnJlbnRfc3Rh
dHVzID0gZmlhX21heCA+IDIgPw0KPiA+ID4gPiArDQo+ID4gPiA+IFhFTFBEUF9MQU5FX1BIWV9D
VVJSRU5UX1NUQVRVUygwKSB8DQo+ID4gPiA+ICsNCj4gPiA+ID4gWEVMUERQX0xBTkVfUEhZX0NV
UlJFTlRfU1RBVFVTKDEpIDoNCj4gPiA+ID4gKw0KPiA+ID4gPiBYRUxQRFBfTEFORV9QSFlfQ1VS
UkVOVF9TVEFUVVMoMCk7DQo+ID4gPg0KPiA+ID4gSXQgd2FzIGFscmVhZHkgbG9naWNhbGx5IGxp
a2UgdGhpcyBpbiB0aGUgY29kZSwgc28gbm90IGRpcmVjdGx5DQo+ID4gPiByZWxhdGVkIHRvIHRo
aXMgcGF0Y2gsIGJ1dCBpcyB0aGVyZSBhbnkgcmVhc29uIHdoeSB3ZSBkb24ndCBuZWVkIHRvDQo+
ID4gPiBpbmNsdWRlIG1vcmUgbGFuZXMgaW4gdGhlIHJlc2V0PyBJIG1lYW4sIHdlJ3JlIG9ubHkg
aGFuZGxpbmcgbGFuZXMNCj4gPiA+IDAgYW5kIDEuICBJZiB3ZSBoYXZlIDQgbGFuZXMsIHRoZSBv
dGhlciB0d28gbmV2ZXIgbmVlZCB0byBiZSByZXNldD8NCj4gPiBUaGVyZSBhcmUgbGFuZXMgYW5k
IHRoZW4gdGhlcmUgYXJlIGxhbmVzLiBGSUEgaGFzIDQgbWFpbiBsYW5lcyB3aXRoDQo+ID4gYXJl
IG11eGVkIGludG8gMiBkYXRhIGxhbmVzIGFuZCBoZXJlIHdlIG9ubHkgcmVzZXQgdGhlc2UgZGF0
YSBsYW5lcy4NCj4gPiBJdCdzIGNvbmZ1c2luZyBhcyB3ZSBoYXZlIGxhbmVzIGRlZmluZWQgZm9y
IHR3byBkaWZmZXJlbnQgbWVhbmluZ3MuDQo+IA0KPiBPa2F5LCB0aGF0IGNsYXJpZmllcyBpdCEg
V2Ugc2hvdWxkIHByb2JhYmx5IGhhdmUgYmVlbiBjYWxsaW5nIHRoZW0gZmlhX2xhbmVzIGFuZCBk
YXRhX2xhbmVzIHRvIGRpc3Rpbmd1aXNoLCBidXQgbWFrZSB0aGVzZQ0KPiBjaGFuZ2VzIG5vdy4N
Ckkgd2lsbCB0cnkgdG8gY2xhcmlmeSB0aGVzZSBuYW1pbmcgY29udmVudGlvbnMuIEkgc3BpbiBh
bm90aGVyIHJvdW5kIG9mIHRoaXMgcGF0Y2ggd2hpY2ggaG9wZWZ1bGx5IGlzIG1vcmUgc2VsZi1l
eHBsYW5hdG9yeS4gDQoNCi1NaWthLQ0KPiANCj4gVGhpcyBhbHNvIGNsYXJpZmllcyB3aHkgd2Ug
cmVzZXQgb25seSBvbmUgb3IgYm90aCBkYXRhIGxhbmVzLiAgQSBzbWFsbCBwYXJhZ3JhcGggZXhw
bGFpbmluZyB0aGlzIHdvdWxkIGJlIG5pY2UgaW4gdGhlIGNvbW1pdCBsb2cNCj4gYW5kL29yIGFz
IGEgY29tbWVudCBpbiB0aGUgZnVuY3Rpb24uDQo+IA0KPiANCj4gPiBUaGFua3MgZm9yIHRoZSBy
ZXZpZXcgYW5kIGNvbW1lbnRzIQ0KPiANCj4gWW91J3JlIHdlbGNvbWUhIFlvdSdyZSBoZWxwaW5n
IG1lIGxlYXJuLiDwn5iJDQo+IA0KPiAtLQ0KPiBDaGVlcnMsDQo+IEx1Y2EuDQo=
