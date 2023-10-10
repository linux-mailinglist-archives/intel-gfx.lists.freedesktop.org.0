Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B95E7BF316
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 08:31:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01D8510E19C;
	Tue, 10 Oct 2023 06:31:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18EDE10E19C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 06:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696919490; x=1728455490;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sUP0tP78goF7+JmIT10EB7EsvmwZBaRqUnD1pJhDKKg=;
 b=XcTa2H0Mz2rV3ASKmzB8z/G8auTTskFVHZykwE23jErtD5y5oMldcRuu
 rx5SJf3bnYlu9H/grefdsXHPbXURSCY2rul+TP6WGAw0DZp4oveAmQBSC
 Ma2IIb/2G9Dgru+pYWPveSSq3+9LMZKTbbdDW7GsmXQwwEXaKa5SW5Yo+
 j/HPwqgFgUHCU0m2gfl/Nw4JPe0oXACUALVqmCGPDnTCTJ4uAqSnPRTak
 eY8eMavdQw712BncZDUge2p6UEB8J0TIBxyKSNQlQz8QLlo6M9BsnOUAy
 FPqQdKc9Ynwybt4NZf6zy8aZKOd2M3xQ0Xy6+Oaq4De+1NKRqY3qrJh1q g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="5877688"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; 
   d="scan'208";a="5877688"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 23:31:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="897045919"
X-IronPort-AV: E=Sophos;i="6.03,211,1694761200"; d="scan'208";a="897045919"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 23:29:45 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 23:31:27 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 23:31:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 23:31:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 23:31:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hAzaPg/x//M6u1NvUCJPI5A5n7MPwMbjY79xWiDiSS35ZE9hazvmZFRTLJcV/BzWmVh0NaJz5jxvJMg+GQvi30a59dMvSixhliFrXAv0cxkA4huCjNEx0gREanJJ7OkIs9PvXUwC5qtrY8PdFUb+bgnOIsFwd3Hlde2RIE55WbiNOMWMNOBVKELFAON6vS9xAc4q72BELsVCcZmRysPW4Al0AAK70alodhj0ieEEPZc8E3HXFZ6dP+bzy/PGGCY4c3CbFR8wu3dbMbsvFe3EMP2ValFHKlQd5+kMmiv8SpQLaMtkynBUNdekO6I8d0vN6AWYvv7sCAN+75+2VinCCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sUP0tP78goF7+JmIT10EB7EsvmwZBaRqUnD1pJhDKKg=;
 b=X6n0H/i4nfSZ1Z9hc15kJXAaMLh2V0yX7hKQ1tD8STaxEjmSJYJW4pf4nvDlf4h61NCOqZCWpnr9w8TLXI+A6HaQaztqvm76eO2cYiRN9lXEkaegktLf2CO10BUa5mQT501xtZyPUTc4txeuFMF+JU9kSUz1P1m2dmJjpAw/+2VwGgZT9i4f1WarMcY1hD6uPoW5jd8rJL8/wicY1ccQ5KTVMje2lrO1SOFd/15QKyYsrzMXTLk6hXhen1PpqtAjk7qiS8PLWyKeH1CrgX43kOzebLm6Z/3QXCZwETvAKb3t127bKviYVMmSCX4OnuiTBfOGufCdD4SmEnaSacGEEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CO1PR11MB5153.namprd11.prod.outlook.com (2603:10b6:303:95::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 06:31:19 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca79:c6d4:e6bb:aaaf]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca79:c6d4:e6bb:aaaf%6]) with mapi id 15.20.6838.039; Tue, 10 Oct 2023
 06:31:19 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2] drm/i915/lnl: Remove watchdog timers for PSR
Thread-Index: AQHZ+ruS15NnxxbPSEOtMqf+WBu9OLBBjGUAgAEElqA=
Date: Tue, 10 Oct 2023 06:31:18 +0000
Message-ID: <MW4PR11MB7054E48EF230A6D27AB10C3EEFCDA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231009141303.577061-1-mika.kahola@intel.com>
 <ZSQU3Dbc_C3hLmZX@intel.com>
In-Reply-To: <ZSQU3Dbc_C3hLmZX@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CO1PR11MB5153:EE_
x-ms-office365-filtering-correlation-id: d4daf09b-b16a-4d11-a4f8-08dbc95a8355
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ot/NFWhgLvLpCnv+AQtmGmVqLDaDhGSzs5Ghg2J/ut6NH2XeHBxRgjwxtm+oiUQ/UBFH6MrcI4MsmP2tC2UIVlQ9LuNKT+taOr6kiiBgSR6x8eDEfyxMezRsHFa184gYtCmAB7ZBGDK3LLj0/bArMLNk+wy4VNXdENmCvtKNUD4tkOf7jhedyOIexF/sLV07S1B97r3uccQA0UqXCx28pwSl6ie2tzk8rTNRkgMamO0Uk+KQAJpbbh7gfmHzFFlJCD3gVWOJB6WBRkpB/p+KwQPGxXSULCxHHTNenPfaLY4cItjKtkgLNjkPbbKY3EtAyye54qRXfmhCoODosENDB++HF86FPIeP0Dq6p29ECWAuIXBj2p0iBJiknNSq2KyZM8iZhbYQtOJmpz50bvf3ISrD7ziY19gyyvrXzdvLVWZwsYhnidQYHlFiplqrYrdN71p95C/rR1UhkNzgdek47t/X4B4iQFZHvvi66x6PyXavoz1ESoDWzsAGla084z1xK0fxCwdNVjvLviGuL0MRrhDlxaXoBpXj8CvR8H7AtTCmSHtq+l/DL3HsymC0ujiwKMi34+gq+/N2q7/EmRt+HoOVyjVHcY7JpUqskHb0ksFhlnp58zq+WIZZn5Qo0s8F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(136003)(396003)(366004)(39860400002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(55016003)(71200400001)(478600001)(82960400001)(66574015)(26005)(83380400001)(38070700005)(122000001)(9686003)(7696005)(53546011)(6506007)(86362001)(33656002)(2906002)(38100700002)(41300700001)(5660300002)(66946007)(66556008)(66446008)(66476007)(316002)(64756008)(6916009)(54906003)(76116006)(52536014)(4326008)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmpUdnBlQy96OUd6YjA1TmdTdW55R0xHOUYvN0g0dzdUbkVtWFliNGtxWVRP?=
 =?utf-8?B?K2kvK3RGZUw0RWJIZnNRVmVwMlZyaXR2KzcrOVMxVXpTdDNHQkdPQ1RlYUln?=
 =?utf-8?B?MjU4M0V5UzQzbW12T2tMYzNvcHZ6akpCSHFlc1BQdk0vNmNNWHR0V05veHNk?=
 =?utf-8?B?YXVqMldMR21SWk11UlowTE5KWlhKdVM4MDFOTjlBa3BqNStBaFhVdGplV3d0?=
 =?utf-8?B?TjRudXVFbGM5cWZRbm03UkdKaktSUkxxdCsxVjRCSHNqbFlCREpGdFhwd3c1?=
 =?utf-8?B?VFBpUEFzc3o0ZEZaVXJVMXdzU0I2dUF4Yk9PK2NYRUs5YTRrQzRVMVE2NER1?=
 =?utf-8?B?SUNZc3YwemxRVU5hSFBGYVVWN3NCSE5ENGRJUHl2SW5tYkJ3NEZxSkgrZThu?=
 =?utf-8?B?YUxyUTJCODBya2VnSnFSbmRZZ3B3MlpoMzRBREpRZUw1YXIvdU1MZ25YeEZW?=
 =?utf-8?B?Uy9OUkpSUi9ydHU1S2gwbjNTVlVWY3FxSUFrZTRKUkRCNEZKZTdvUGVDeUhp?=
 =?utf-8?B?QklGWlRkcHg3dDk0RVQyVEdvUDFNSGRBL3pjcjlpYTZ1SjBtMHRpamxMZkVr?=
 =?utf-8?B?cFQwbEJzWVVnai94VVE1blNEZFFUVzRVZi9OcU54dWxVWXdJSENyZzlGWGdt?=
 =?utf-8?B?RHNkMUxoK0plTEJKd1JhdTV1cjF6dmxjdGhQRnFGNHNPVW9KVDV2QmErS3h2?=
 =?utf-8?B?N0d4MFdLRG5vdWwyS1AxKzZXOWZ6TEQ2Ty9hQkJod1V4VC9rM3Q4K0dMYUJC?=
 =?utf-8?B?cmNodEs5OW1PdXhWYkRDZDZET3FUek1vRGM1MXlnVTJCQXFPOGVZTWZCNE9o?=
 =?utf-8?B?L0pOSlNsT3lNaUZ2bUtCMlZRSERlY0ZCNG9ja1hSWEhIOEtpTTBIWVJxSzRo?=
 =?utf-8?B?T3Y2Mm0vYXhYYU5idGgxdGc1WEprc3BuR0tLTGFCM2QwMXZPWkVKTHBTMlA2?=
 =?utf-8?B?eFM3eEEzN0NZUDZsQjBOMkcvb0F3dVpqc2haWmVWQWF1YUVpSXVNRm1wdDU0?=
 =?utf-8?B?QnVndVdOYnNNdEo4N3FON3lHc1NmdFdtamtEdkJrd2JWUWxHaVNsbG9zSVVt?=
 =?utf-8?B?TmM1WWticGthZlcxZjhDUkVUQXI3OEpjcm50RThvaUdEWGhGRGJsZEZSbmpq?=
 =?utf-8?B?bDFtb1kyWjdxMHAyYStmdFdEMU8zQjVvTDZaRjZQa3dwTU9KR2FlREtmQ1NB?=
 =?utf-8?B?cW5ZSGcyQ1hORTJ6YkxnK0FYQnhNUlhBZXJqdjB0WUJPUUp2cUt3SUJzUUpa?=
 =?utf-8?B?UCtIV1RXR0dNd3RSclpJckZONDZFL2R5Q01Md2d4NjkxN2hBZUVUL285cFQ2?=
 =?utf-8?B?cVZEd1AxSXBpS2Y1aE93U0k2V09QOUZYOTVTQ25VU0ZpTWpvRU9TbFRTSy96?=
 =?utf-8?B?L3VlMDh0bVdhWHIwbXk2QytuNFczMkxqMlgxSTlEV0E2WVZqUVRWQlkwL2s5?=
 =?utf-8?B?aEZDVzNhZEpNQ2UzYTdNZ2daOGxSZHhYOG92NzdlMk4rM1VFamh2VWEzRXp1?=
 =?utf-8?B?RW9sOGJNYUtlTkJCOWxlWHYwQU05ejkxOUFnSjMvVzdiZDllSE1DY1RBNHh2?=
 =?utf-8?B?eDZabjlOaTJOWVEzcFJpNHB4M0hnbysvRVkzUDBuNW5TSVgyOEZmbUQ2SzZn?=
 =?utf-8?B?Y2MyK29VTWo2VExObVd5OXloeGJOL3Z1dWVoMWliYUpRK08yL2hvaExTdG5Z?=
 =?utf-8?B?RmQrYkdmVEN1Rkt4YkljTnJ4aTl4Z1ZuQTlxWWtQRmFvajd4RU9hRWxWV0Zt?=
 =?utf-8?B?NVJzOFVSZE5xb2xZU1FwSmhBQUsrNzh0b21ZT3pySWlieWRkOG1aWXBDN1dO?=
 =?utf-8?B?Yzh4UFFNVTNaZjBmeVlkc0FhVGFTWmlrd0xpOWpodjlWMXcvcEwrVjdEZWdw?=
 =?utf-8?B?Y1JPRG5DWjMrcjJqSzNNUEFUOStsTG5QMFFuenlhOFNQVFg3RHlVUndDRHJU?=
 =?utf-8?B?Y3hnNlU1SXdiVHVYbG9GNU5XenpneEZPRDN6TmdUczB5aGRaN2EvSEI3c0ZL?=
 =?utf-8?B?SWJnYjlwWHJVZ3BMZVlHMEw1L0laOTNIbnJUNHoweDR1bEErZjZHRTcybFhk?=
 =?utf-8?B?M09WVTdvZ3FmaTdEUzVRaS9YZHV0Y2RBZTNDWU9FMVdvU1JmbXI4Qi9qdEdO?=
 =?utf-8?Q?Qu+XfSqoVnxknsQ0uAdkOaGbp?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4daf09b-b16a-4d11-a4f8-08dbc95a8355
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 06:31:19.0322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iGtyM0vr53FE3Q5K2AHpdod0hjjV1FVkuQfWGawtlGglW0S7KyXJgMG4TvAPH1QUU23accELF6Mn8NUEb5JRQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5153
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/lnl: Remove watchdog timers for
 PSR
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIE9jdG9iZXIgOSwg
MjAyMyA1OjU4IFBNDQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4N
Cj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IEhvZ2FuZGVyLCBKb3VuaSA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHYyXSBkcm0v
aTkxNS9sbmw6IFJlbW92ZSB3YXRjaGRvZyB0aW1lcnMgZm9yIFBTUg0KPiANCj4gT24gTW9uLCBP
Y3QgMDksIDIwMjMgYXQgMDU6MTM6MDNQTSArMDMwMCwgTWlrYSBLYWhvbGEgd3JvdGU6DQo+ID4g
Q3VycmVudGx5IHdlIGFyZSBub3QgdXNpbmcgd2F0Y2hkb2cgdGltZXJzIGZvciBQU1IvUFNSMiB3
aXRoDQo+ID4gTHVuYXJsYWtlLiBUaGUgcGF0Y2ggcmVtb3ZlcyB0aGUgdXNlIG9mIHRoZXNlIHRp
bWVycyBmcm9tIHRoZSBkcml2ZXINCj4gPiBjb2RlLg0KPiANCj4gVGhhdCBzdGlsbCBkb2Vzbid0
IHNlZW0gdG8gc2F5IHRoYXQgdGhlIHRpbWVycyB3ZXJlIHJlbW92ZWQgZnJvbSB0aGUgaGFyZHdh
cmUuIE9yIGF0IGxlYXN0IEkgY2FuJ3QgcGFyc2UgaXQgdGhhdCB3YXkuDQpPaywgSSB3aWxsIG1h
a2UgYW5vdGhlciBwYXNzIG9uIGNvbW1pdCBtZXNzYWdlIGFuZCBkcm9wIHRoZSBIUEQgbWFzayBh
cyBpdCByZWFsbHkgaXNuJ3QgcGFydCBvZiB0aGlzIHBhdGNoLg0KDQpUaGFua3MhDQoNCj4gDQo+
ID4NCj4gPiBCU3BlYzogNjk4OTUNCj4gPg0KPiA+IHYyOiBSZXdvcmQgY29tbWl0IG1lc3NhZ2Ug
KFZpbGxlKQ0KPiA+ICAgICBEcm9wIEhQRCBtYXNrIGZyb20gTE5MIChWaWxsZSkNCj4gDQo+IFRo
YXQgc2hvdWxkIHByb2JhYmx5IGJlIGEgc2VwYXJhdGUgcGF0Y2ggc2luY2UgaXQgaGFzIG5vdGhp
bmcgdG8gZG8gd2l0aCB3aGF0IHRoZSBjb21taXQgbWVzc2FnZSBpcyBzYXlpbmcuDQo+IA0KPiA+
ICAgICBSZXZpc2UgbWFza2luZyBsb2dpYyAoSm91bmkpDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5
OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTIgKysrKysrKystLS0tDQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+ID4N
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGlu
ZGV4IDg1MGIxMWYyMDI4NS4uYWJkYWZkMDRkOGUzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTY3Niw3ICs2NzYsOSBAQCBzdGF0
aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMShzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAp
DQo+ID4NCj4gPiAgCXZhbCB8PSBFRFBfUFNSX0lETEVfRlJBTUVTKHBzcl9jb21wdXRlX2lkbGVf
ZnJhbWVzKGludGVsX2RwKSk7DQo+ID4NCj4gPiAtCXZhbCB8PSBFRFBfUFNSX01BWF9TTEVFUF9U
SU1FKG1heF9zbGVlcF90aW1lKTsNCj4gPiArCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAy
MCkNCj4gPiArCQl2YWwgfD0gRURQX1BTUl9NQVhfU0xFRVBfVElNRShtYXhfc2xlZXBfdGltZSk7
DQo+ID4gKw0KPiA+ICAJaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpKQ0KPiA+ICAJCXZhbCB8PSBF
RFBfUFNSX01JTl9MSU5LX0VOVFJZX1RJTUVfOF9MSU5FUzsNCj4gPg0KPiA+IEBAIC0xMzk5LDkg
KzE0MDEsMTEgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9zb3VyY2Uoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gPiAgCSAqIGNhbiByZWx5IG9uIGZyb250YnVmZmVyIHRyYWNr
aW5nLg0KPiA+ICAJICovDQo+ID4gIAltYXNrID0gRURQX1BTUl9ERUJVR19NQVNLX01FTVVQIHwN
Cj4gPiAtCSAgICAgICBFRFBfUFNSX0RFQlVHX01BU0tfSFBEIHwNCj4gPiAtCSAgICAgICBFRFBf
UFNSX0RFQlVHX01BU0tfTFBTUCB8DQo+ID4gLQkgICAgICAgRURQX1BTUl9ERUJVR19NQVNLX01B
WF9TTEVFUDsNCj4gPiArCSAgICAgICBFRFBfUFNSX0RFQlVHX01BU0tfTFBTUDsNCj4gPiArDQo+
ID4gKwlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMjApDQo+ID4gKwkJbWFzayB8PSBFRFBf
UFNSX0RFQlVHX01BU0tfSFBEIHwNCj4gPiArCQkJRURQX1BTUl9ERUJVR19NQVNLX01BWF9TTEVF
UDsNCj4gPg0KPiA+ICAJLyoNCj4gPiAgCSAqIE5vIHNlcGFyYXRlIHBpcGUgcmVnIHdyaXRlIG1h
c2sgb24gaHN3L2Jkdywgc28gaGF2ZSB0byB1bm1hc2sgYWxsDQo+ID4gLS0NCj4gPiAyLjM0LjEN
Cj4gDQo+IC0tDQo+IFZpbGxlIFN5cmrDpGzDpA0KPiBJbnRlbA0K
