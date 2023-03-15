Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1CC6BABA8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 10:08:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64E1010E968;
	Wed, 15 Mar 2023 09:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 739BB10E968
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Mar 2023 09:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678871307; x=1710407307;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=P3UdF3Qk4GKOfOcoqOYlHEblEe0A3gVAwatHJvivJx8=;
 b=YHqfL0XKoa/IYE+lXZH5MAKAduY6X3os7+6LA7lcJylF8xaxcJmxbv1X
 jdscu2BKoRhKdgy+CsTjNowF9MILYVCUoXI8X2BjFV+2j7ZW1tK7rElhY
 Q51q2uJeOlnOeMY83xht48mvyNBtsiYk43BT5iN7V3/wfL9Mtsu6lxmJT
 8n5sm3m6GFzs0IMgCKeYRQr6KBEBksE7fw95xSfkRi+pveWpUhoVklji5
 BGwBuGGD9qlfjyy1e0Fj6+mlczSSgQOnJ7At8zQfJbkIGR0UlPjhv7fQr
 B5ovC6/BB5KIpifaMCPnwzMo1SCy3F7HKKiEjrNeUMlkY3AHvLLiwqkQO A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="321492775"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="321492775"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 02:08:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="711850266"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="711850266"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 15 Mar 2023 02:08:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 15 Mar 2023 02:08:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 15 Mar 2023 02:08:26 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 15 Mar 2023 02:08:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YyrwkGw5N6HFqha86qO1JebzS3V5qIE+VZOeFRMAy+bBHvU6J7Rp1S3X0j/o+fG/+R6rMjYtV/TFBV+6AUr5O2ufKrRLFsMVNV9qLw821T9h5Q3wfc+4jzHgSgHbenvQpCxi2nKuGvsU9jw0YB2z16aBRxN5+uAer/8hqOYbuXVF62E6Z1eTsl2f9brOt64hQNxCyvJuybAGEEL81M58EndaUzTgf+Vv+j2Fz2v9RHF8G8Jqsa4IBXmFKQoCkzdLR6PrQ9KMXM46VhxHZ372/zPO+T9kCRJBu4uKdUaY/rh3ssfNfqpOWi1xEK4AmkW3HlDsqzBJxhXOQlTiOZ6riA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P3UdF3Qk4GKOfOcoqOYlHEblEe0A3gVAwatHJvivJx8=;
 b=nu7rqEDRgdlOBKp76sbiI+Hutvlc7yv/aBnRSY3K2N4zsvKA2SN0tOh7Q66Itr9ezMfe9+TWAmLq4tUtbWCnqc7DRXn45fes8PnPR6rtFIZpAwWsOUtJKB9NU5bL9Mj+Sjqj1YVlS7yL1Fyh42haO2+PWjEOr725FSxtK5fNXkRsUmosiCLo5u9HjxpCQDJcNNKh0Liz7SGXxMqc5JyU16/tJL/QYM84xhZilOgzsh0wI81kQXuzP3kOy8ECm5eLv0IRcgFriPt6tt33rLKfOf+xCGAs/0UnpFH+AMmt2atMkjyE8TkepPApg5UOvSaA0awctUEuDMr0Wu/upw6ZVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by SA2PR11MB4794.namprd11.prod.outlook.com (2603:10b6:806:f9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Wed, 15 Mar
 2023 09:08:24 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8%7]) with mapi id 15.20.6156.029; Wed, 15 Mar 2023
 09:08:24 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [PATCH] drm/i915: Power management SAGV/QGV calculation rounding
 fix
Thread-Index: AQHZU15Jg8ZjaeQo906b7iPhUF7uVa76B6yAgAF4P4CAABS6AA==
Date: Wed, 15 Mar 2023 09:08:24 +0000
Message-ID: <d45f615eb0b522985d56ae285d17ae7db876f2a8.camel@intel.com>
References: <20230310144035.30754-1-stanislav.lisovskiy@intel.com>
 <7ddeaf24abf10e7e2728150310e154f4366a076c.camel@intel.com>
 <ZBF5o7lRodJy23y4@intel.com>
In-Reply-To: <ZBF5o7lRodJy23y4@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|SA2PR11MB4794:EE_
x-ms-office365-filtering-correlation-id: 07ea2d83-e086-469b-ec06-08db2534d4c1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7/AHCNNHHS1EoqhPU1GxZtUVQsoPs0BP1wT4WiKtIM5KTx7Hjf7NcOiCNRiFSZbMaQNwxO1KTzIY43ZwXuIo9Z+SBJui5pbgp27QRZzedXa6LdGU8n9MWxB7JTMdnGqLLPIRq9w8M0daiCLdOvlsGlOBKRM72sP8I/E2CnUFosBksa4r1tege/9MpgrSWPg+gom2leP31tpVZaR9I6megW/X8Soljae7OIYW1yKRxEOjcYFY6BTFCT9aEzmgOuiD0Qq5trYgvYBuB+Dz67bHgnGcenlpE8dmyqIA6nY8jweh5bP1v0+aCJCaSCfDOvBOIzZ3lGuagic/5sFS6oi0jY6wRMS6l7Ps1myigBeJrviZCcnGIS17WC7slC5sZUEHH0nYhH0yNLuTh8IoaJ1oQjVBx6apLByY9Geg69KSX45vQXfr6xbyOI2XWkCYfyoNFJbbe12Ft0YndTXS6cYfF416adMqq8dxm5A6EyOJhinwMexpxx0f3ckSkZ9VvkmAffCpg6T3qsiawNxgsoRn364jkOusmvJb3pVamllaBJJAAbYyTkS3D4OzZMnrO2o/cZaFBiSj2kRCT4ADNS3fItjLnRNTnO4I0EP/O3D3KWuRRAiuKr3pVz+2q6KAmD0IFhC/FAznSvML9UKJr0AGSOaxVs51oogu4L1FaZaPbPkMcPQYf/58lg0IfEJYe1nLrWdrcg6LwMBfku52oROLZw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(376002)(136003)(366004)(39860400002)(396003)(451199018)(2906002)(83380400001)(5660300002)(6486002)(6512007)(36756003)(26005)(6506007)(6862004)(2616005)(38070700005)(316002)(186003)(86362001)(71200400001)(41300700001)(8936002)(54906003)(66446008)(66556008)(66946007)(64756008)(91956017)(38100700002)(82960400001)(478600001)(37006003)(4326008)(6636002)(8676002)(122000001)(66476007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NkVqNDZwUlZxQVpWYnkzdDY3bHNwRkNteTJHWnRBN25UcUNSUyt3MWsyaTEw?=
 =?utf-8?B?aXRtUGs1OWFHNEc0OTBJWW5Ob3YxWWFRUU43T0wxZmpwOVRUZWN6THVJU0Rh?=
 =?utf-8?B?YXpmaXFrY0FCbzZHeW13d3V2NTlRYm1Ycy9QZHIxUVduR0tSSStvRzdOQ2Ev?=
 =?utf-8?B?YWNJRFdzQXF2c2tBOGtCL2ovYjMwclFzSVhMcGRuc3B2SkRMNXlPbndDZjNr?=
 =?utf-8?B?M3JjL2hWc0tZOUpMZGo1YkoySXFBL25EY2ZJTHBjeDFIa2R5bTN2ZUZPTkdj?=
 =?utf-8?B?WUFWQXRXbHJFMG5UVEEzZFE3alhMOTBzVVRLRmtGL3hSamRuTVFPWXVQQUR4?=
 =?utf-8?B?eWNKeVJoWlJCMmJuMW9pa1JPM1Z5aVZuWGlVSlNmM2k2NG5OeUh0VzZJUThO?=
 =?utf-8?B?ckluNTdMQllwcHl3WllFc1RnckdDRTVzL004Rk45QXpneFB0aFhUeHdoUldp?=
 =?utf-8?B?ZEhBY21BUnUzZmdxTG0zL2M4UnJRcWRxSFFaelhtUVhGdHlDSjd2dkFNOHB5?=
 =?utf-8?B?RzJVWjdrY1J0NCtLdWRaVTlBaC93L2gzYnQxczJ6aGpEUzRNbXJOVjA3bUFk?=
 =?utf-8?B?MTlPaFZuRmhiRk9jVTI4TldpODdFL3I3cDVUMWhvNlM5YzBjRkptL25pMTUw?=
 =?utf-8?B?SVJUeEp4d3UxeFhBMmY4SkREaElFN3VubUIyYnFOOFRNNyt1UGxLL1YvbHg5?=
 =?utf-8?B?bmRTcStlaTFvVVdMVjJzZEZjVTBQdG9iR2pxZkdKeUZqdGlzMU92WDhoMk1G?=
 =?utf-8?B?eWxaZm1DRkRHT0lMdDF3dXJvWWJpb1poVGY4dXljdkcyU1B6NHp5SzljWk1z?=
 =?utf-8?B?bU9vUHRobnFwZ1Jlc0RrTDF2bDV0bSsySWFsOHpERzNzbVRjK2Rxd3NRRUcw?=
 =?utf-8?B?QzNlbW9xSTkwM2taNERXcjVKOWE3ZGRSY2NQZ29NWW5SVkdtU3ZJTU1lZjZP?=
 =?utf-8?B?SUdncDV3NE5zS2lUVUt3Z3c1UkxCSmdhNkJUZGhIUmRaV2VYMkhyZk5tdTFF?=
 =?utf-8?B?Q1Y2YzZEeWpFenBUYnlILzNiV3BLUXZUZE14cVdHK1NCTVIzYU5SWis0S0pq?=
 =?utf-8?B?WFEwL09TdnFjb2J2Vk9XT01TbXZiOTVyRzBid25qeFpkZmtJMG5TUlJaMGZG?=
 =?utf-8?B?OFB1NmJRR1RXMGJXMXgwOXhLWWZQQ3h4L2VDbEJDYXVNRlVKaGpxVlUvVVBu?=
 =?utf-8?B?QzRXYXp5ajdNMHhpUHNoV01rUE5iRHBGVEV5bTdzUlhyci9vemxOL29pUWNi?=
 =?utf-8?B?M2ltK0hQSHlqNVBIYmhQMnV1dnFMN1ZXcUt5WlVkRzNQZXUwOS9jeUd2MnlI?=
 =?utf-8?B?V1lxYXdLb1pnd0dvUFFJeUhubjJPemxCUk9jWVRzUVZSTkZkcnBBdWV5OTBT?=
 =?utf-8?B?UFhFNEdGcml1ak02OEZyQUY1YmE5SFg4dW9mdHFOYkRBbi9uSEEwdjAwYkVm?=
 =?utf-8?B?QUExQnFSQ1l3T1RzeVdzS1dNTDhJMzR3bG9hK3NiRWs5YVlud2NOaDg0dWF2?=
 =?utf-8?B?NjZvUTltQXlwbC9JS1RNajNwdHRqWGxJK1lkcXRpTGJMdVQvazBYajZYT29a?=
 =?utf-8?B?K3RnaEVGRWRFVlJPSWFTQVZGSkJCV2kzSGRJNGN3L2xYZ3dFZGQyVjBjTTI3?=
 =?utf-8?B?ak9DeU8wV2ZKZFpSdGJpdDFFS2kyM1lqUWkxcFRyS3orcGpYY0hiZDNibmdR?=
 =?utf-8?B?WE9xeE11VlZOVHRnNDNIMVFMN3Z2a01CN20wQk1jUTV4SUZWZ3pDQUR6RFdE?=
 =?utf-8?B?NjB3NmFWTkhSa3NNTlVUdDJlQ3JOTUtWNURiWS9DR3F4YTZmV21BOWRlRlkv?=
 =?utf-8?B?NDJCQ0Q3U1RHQSt4K3lYNnZDa3J5dWVCdG9ZOW1DT2pvVzRoYkZXalFmYW1t?=
 =?utf-8?B?b2ZVNFR3R00yOG9PbUlxMlJKM2FXQllKQitNS1A4RmRBZXlqMTlISXY0MW9K?=
 =?utf-8?B?Q01OMFB0ZGRHY0FmeEpEUXl6UVVtejlhaEpWSHlmdVlpSFFOT1JmeTh0bU5x?=
 =?utf-8?B?U2tpOW16UXZxRGtDSitUakE0TnNiZkpuZ1dWUUNVL1U1VFY0M1psVzNjNndG?=
 =?utf-8?B?bVIrdnJxM0ZIUFVLWWUxUG5uTGpQL0dRYkpaVldkRVZpY05oemdDTkczVDFs?=
 =?utf-8?B?bFNIcWlqd2pBY0FodENEUzlPektYc0ZnSjdLWjZKNG9ETkV4ejA4VERkQXhU?=
 =?utf-8?Q?0eR19XqKI5xs04+4kNRWK6I=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8242098F02736642BF7C474B812EDE78@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07ea2d83-e086-469b-ec06-08db2534d4c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2023 09:08:24.0906 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xfeSfeyskGlIKGV33gW6MsEDLa8ODWp4iAVhkl9mT43JeZFpx/9u3ld8oAVWtWTivMhEFvuIWcz3QT7z/2yapzIUXhs3JNfeeLPdTHyllIQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4794
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Power management SAGV/QGV
 calculation rounding fix
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgc3RhbgoKY29tYmluaW5nIHR3byB0aHJlYWRzLi4KCk9uIFR1ZSwgTWFyIDE0LCAyMDIzIGF0
IDExOjUwOjIwQU0gKzAyMDAsIEdvdmluZGFwaWxsYWksIFZpbm9kIHdyb3RlOgo+ID4gSGkgU3Rh
bgo+ID4gCj4gPiBGZXcgb3RoZXIgcGxhY2VzIGFsc28gZG8gbm90IGNlaWwgdGhlIHJlc3VsdCBh
cyBwZXIgdGhlIDY0NjMxCj4gPiAKPiA+IGRlaW50ZXJsZWF2ZSwgcGVha2J3LCBjbHBlcmNoZ3Jv
dXAgCj4gPiAKPiA+IFdlbGwhIEkgYW0gbm90IHN1cmUgaWYgdGhpcyBoYXMgYW55IHJlYWwgaW1w
YWN0LCBidXQgRllJCj4gCj4gQXMgcGVyIEJTcGVjIHdlIGFyZSBub3cgc3VwcG9zZWQgdG8gZmxv
b3IgYWxsIHRoZSBjYWxjdWxhdGlvbnMsIGJ1dAo+IG5vdCBjZWlsIC0gYncgZXN0aW1hdGlvbiBz
aG91bGQgYmUgcmF0aGVyIHBlc3NpbWlzdGljIHRoYW4gb3B0aW1pc3RpYy4KPiAKPiBTdGFuCgpZ
ZXMuIEJ1dCBvdXIgY29kZSB1c2UgRElWX1JPVU5EX1VQIGluIHRob3NlIGNhbGN1bGF0aW9ucyBm
b3IgLiBCZWNhdXNlIHlvdSByZW1vdmVkIHRoZSBvdGhlcgpyb3VuZF91cCBjYWxscywgaSBqdXN0
IHdhbnRlZCB0byBicmluZyB0byB5b3VyIGF0dGVudGlvbi4gQnV0IGFzIEkgbWVudGlvbmVkLCBp
dCBtaWdodCBub3QgaGF2ZSBtdWNoCnNpZ25pZmljYW5jZSBpbiByZWFsaXR5CgpPbiBXZWQsIDIw
MjMtMDMtMTUgYXQgMDk6NTQgKzAyMDAsIExpc292c2tpeSwgU3RhbmlzbGF2IHdyb3RlOgo+IE9u
IFR1ZSwgTWFyIDE0LCAyMDIzIGF0IDExOjI3OjM1QU0gKzAyMDAsIEdvdmluZGFwaWxsYWksIFZp
bm9kIHdyb3RlOgo+ID4gSGkgU3RhbiwKPiA+IAo+ID4gCj4gPiAKPiA+IE9uIEZyaSwgMjAyMy0w
My0xMCBhdCAxNjo0MCArMDIwMCwgU3RhbmlzbGF2IExpc292c2tpeSB3cm90ZToKPiA+ID4gQ3Vy
cmVudGx5IGluIG91ciBiYW5kd2lkdGggY2FsY3VsYXRpb25zIGZvciBRR1YKPiA+ID4gcG9pbnRz
IHdlIHJvdW5kIHVwIHRoZSBjYWxjdWxhdGlvbnMuCj4gPiA+IFJlY2VudGx5IHRoZXJlIHdhcyBh
biB1cGRhdGUgdG8gQlNwZWMsIHJlY29tbWVuZGluZwo+ID4gPiB0byBmbG9vciB0aG9zZSBjYWxj
dWxhdGlvbnMuCj4gPiA+IFRoZSByZWFzb25pbmcgYmVoaW5kIHRoaXMgd2FzIHRoYXQsIG92ZXJl
c3RpbWF0aW5nCj4gPiA+IEJXIGRlbWFuZCB3aXRoIHRoYXQgcm91bmRpbmcgY2FuIGNhdXNlIFNB
R1YgdG8gdXNlCj4gPiA+IG5leHQgUUdWIHBvaW50LCBldmVuIHRob3VnaCB0aGUgbGVzcyBkZW1h
bmRpbmcgY291bGQKPiA+ID4gYmUgdXNlZCwgdGh1cyByZXN1bHRpbmcgaW4gd2FzdGUgb2YgcG93
ZXIuCj4gPiA+IAo+ID4gPiBCU3BlYzogNjQ2MzYKPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6
IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgo+ID4g
PiAtLS0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgfCAx
MCArKysrKy0tLS0tCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmMKPiA+ID4gaW5kZXggMjAyMzIxZmZiZTJhLi44NzIzZGRkNGQ1NjggMTAwNjQ0Cj4gPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYwo+ID4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKPiA+ID4gQEAgLTUwLDcg
KzUwLDcgQEAgc3RhdGljIGludCBkZzFfbWNoYmFyX3JlYWRfcWd2X3BvaW50X2luZm8oc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGRjbGtfcmVmZXJlbmNlID0gNjsgLyogNiAqIDE2LjY2NiBNSHogPSAxMDAgTUh6
ICovCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBlbHNlCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZGNsa19yZWZlcmVuY2UgPSA4OyAvKiA4ICogMTYuNjY2IE1IeiA9IDEzMyBN
SHogKi8KPiA+ID4gLcKgwqDCoMKgwqDCoMKgc3AtPmRjbGsgPSBESVZfUk9VTkRfVVAoKDE2NjY3
ICogZGNsa19yYXRpbyAqIGRjbGtfcmVmZXJlbmNlKSArIDUwMCwgMTAwMCk7Cj4gPiA+ICvCoMKg
wqDCoMKgwqDCoHNwLT5kY2xrID0gKCgxNjY2NyAqIGRjbGtfcmF0aW8gKiBkY2xrX3JlZmVyZW5j
ZSkgKyA1MDApIC8gMTAwMDsKPiA+ID4gwqAKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHZhbCA9IGlu
dGVsX3VuY29yZV9yZWFkKCZkZXZfcHJpdi0+dW5jb3JlLCBTS0xfTUNfQklPU19EQVRBXzBfMF8w
X01DSEJBUl9QQ1UpOwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKHZhbCAmIERHMV9HRUFSX1RZ
UEUpCj4gPiA+IEBAIC04Nyw3ICs4Nyw3IEBAIHN0YXRpYyBpbnQgaWNsX3Bjb2RlX3JlYWRfcWd2
X3BvaW50X2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQ7Cj4gPiA+IMKgCj4gPiA+IMKg
wqDCoMKgwqDCoMKgwqBkY2xrID0gdmFsICYgMHhmZmZmOwo+ID4gPiAtwqDCoMKgwqDCoMKgwqBz
cC0+ZGNsayA9IERJVl9ST1VORF9VUCgoMTY2NjcgKiBkY2xrKSArIChESVNQTEFZX1ZFUihkZXZf
cHJpdikgPiAxMSA/IDUwMCA6IDApLAo+ID4gPiAxMDAwKTsKPiA+ID4gK8KgwqDCoMKgwqDCoMKg
c3AtPmRjbGsgPSAoKDE2NjY3ICogZGNsaykgKyAoRElTUExBWV9WRVIoZGV2X3ByaXYpID4gMTEg
PyA1MDAgOiAwKSkgLyAxMDAwOwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3AtPnRfcnAgPSAodmFs
ICYgMHhmZjAwMDApID4+IDE2Owo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3AtPnRfcmNkID0gKHZh
bCAmIDB4ZmYwMDAwMDApID4+IDI0Owo+ID4gPiDCoAo+ID4gPiBAQCAtMTc5LDcgKzE3OSw3IEBA
IHN0YXRpYyBpbnQgbXRsX3JlYWRfcWd2X3BvaW50X2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgdmFsMiA9IGludGVsX3VuY29yZV9y
ZWFkKCZkZXZfcHJpdi0+dW5jb3JlLAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIE1UTF9NRU1fU1NfSU5GT19RR1Zf
UE9JTlRfSElHSChwb2ludCkpOwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgZGNsayA9IFJFR19GSUVM
RF9HRVQoTVRMX0RDTEtfTUFTSywgdmFsKTsKPiA+ID4gLcKgwqDCoMKgwqDCoMKgc3AtPmRjbGsg
PSBESVZfUk9VTkRfVVAoKDE2NjY3ICogZGNsayksIDEwMDApOwo+ID4gPiArwqDCoMKgwqDCoMKg
wqBzcC0+ZGNsayA9ICgxNjY2NyAqIGRjbGspIC8gMTAwMDsKPiA+IAo+ID4gTm90IHJlbGF0ZWQg
dG8gdGhpcyBwYXRjaC4gQnV0IGFzIHBlciBCc3BlYyA2NDYzMSBhbmQgNjQ2MzYKPiA+IMKgIHNw
LT5kY2xrID0gKDE2NjY3ICogZGNsayArIDUwMCkgLyAxMDAwOwo+ID4gCj4gPiBEb2VzIHRoYXQg
bmVlZCB0byBiZSBjb3JyZWN0ZWQgYXMgd2VsbD8KPiAKPiBJdCBsb29rcyBsaWtlIGFnYWluIHJv
dW5kaW5nIHVwIHN0dWZmLCB3ZSBkaXZpZGUgYnkgMTAwMCwKPiBzbyB3ZSBvYnZpb3VzbHkgYWRk
IDUwMCBqdXN0IHRvIHJvdW5kIHVwIGJ5IG9uZSB0aGUgZW5kIHJlc3VsdC4KPiBCdXQgY29uc2lk
ZXJpbmcgdGhlIHJlY2VudCBpbnN0cnVjdGlvbnMsIHRoYXQgd2UgbXVzdCAiZmxvb3IvaW50Igo+
IGFsbCB0aGUgcmVzdWx0cywgSSB3b3VsZCBzYXkgdGhpcyBuZWVkcyB0byBiZSBjb3JyZWN0ZWQg
aW4gQlNwZWMsCj4gcmF0aGVyIHRoYW4gaGVyZSh3b25kZXJpbmcgd2h5IGl0IHdhcyBpbXBsZW1l
bnRlZCBpbml0aWFsbHkgdGhhdCB3YXkKPiBoZXJlLCBjb3VsZCBiZSB0aGF0IEJTcGVjIHdhcyBp
bml0aWFsbHkgbGlrZSB0aGlzIG9yIHRoZSBvbmUgZG9pbmcKPiB0aGF0IGhlcmUgd2FzIGFjdHVh
bGx5IHNtYXJ0ZXIgdGhhbiBCU3BlYyA6KSApCj4gCj4gU3RhbgoKSSBkb3VidCBpZiB0aGlzIGlz
IHJvdW5kLXVwLiBCZWNhdXNlIEJzcGVjIGNvdWxkIGFsd2F5cyB1c2UgY2VpbCgpIGFzIGl0IGhh
cyB1c2VkIGluIG90aGVyIHBsYWNlcy4KQnV0IHRoZXJlIGlzIG5vIGV4cGxhbmF0aW9uIGFib3V0
IHRoZSBtYWdpYyBmaWd1cmUgb2YgNTAwLiBBZ2FpbiBwcm9iYWJseSBjb25zaWRlcmluZyB0aGUK
Y2FsY3VsYXRpb24sICs1MDAgdGhlcmUgbWlnaHQgYmUgaW5zaWduaWZpY2FudCB0aGVyZS4gCgpC
dHcsIG5vdyBJIHdvbmRlciB3aGF0IHRoaXMgcGF0Y2ggZG8gaXMgYWdhaW5zdCB3aGF0IGlzIGNs
YWltZWQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLiBXaGF0IHlvdSBhcmUKb3B0aW1pemluZyBpcyB0
aGUgInN1cHBseSIgbm90ICJkZW1hbmQiLiBUaGVzZSBjaGFuZ2VzIGFyZSBpbiB0aGUgY2FsY3Vs
YXRpb25zIG9mIGF2YWlsYWJsZSBtZW1vcnkKYmFuZHdpZHRoLiBTbyBmbG9vcmluZyBvZiB0aGUg
YXZhaWxhYmxlIEJXIGFnYWluc3QgInJvdW5kX3VwIiBidyBkZW1hbmQgY291bGQgY2F1c2UgdGhl
IFNBR1YgdG8KY2hvb3NlIHRoZSBoaWdoZXIgKGxvd2VyIGluZGV4KSBwb2ludCBtb3JlLi4gY29y
cmVjdD8KCkJSClZpbm9kCj4gCj4gPiAKPiA+IEJSCj4gPiB2aW5vZAo+ID4gCj4gPiAKPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoHNwLT50X3JwID0gUkVHX0ZJRUxEX0dFVChNVExfVFJQX01BU0ssIHZh
bCk7Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBzcC0+dF9yY2QgPSBSRUdfRklFTERfR0VUKE1UTF9U
UkNEX01BU0ssIHZhbCk7Cj4gPiA+IMKgCj4gPiA+IEBAIC00MjUsNyArNDI1LDcgQEAgc3RhdGlj
IGludCBpY2xfZ2V0X2J3X2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBj
b25zdCBzdHJ1Y3QKPiA+ID4gaW50ZWwKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGN0ID0gbWF4X3QoaW50LCBzcC0+dF9yYywgc3AtPnRfcnAg
KyBzcC0+dF9yY2QgKwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoY2xwY2hncm91cCAtIDEpICogcWkudF9i
bCArIHNwLT50X3JkcHJlKTsKPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBidyA9IERJVl9ST1VORF9VUChzcC0+ZGNsayAqIGNscGNoZ3JvdXAgKiAz
MiAqIG51bV9jaGFubmVscywgY3QpOwo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGJ3ID0gKHNwLT5kY2xrICogY2xwY2hncm91cCAqIDMyICogbnVt
X2NoYW5uZWxzKSAvIGN0Owo+ID4gPiDCoAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBiaS0+ZGVyYXRlZGJ3W2pdID0gbWluKG1heGRlYncsCj4g
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJ3ICogKDEwMCAtIHNhLT5k
ZXJhdGluZykgLyAxMDApOwo+ID4gPiBAQCAtNTI3LDcgKzUyNyw3IEBAIHN0YXRpYyBpbnQgdGds
X2dldF9id19pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgY29uc3Qgc3Ry
dWN0Cj4gPiA+IGludGVsCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAqLwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBjdCA9IG1heF90KGludCwgc3AtPnRfcmMsIHNwLT50X3JwICsgc3AtPnRf
cmNkICsKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKGNscGNoZ3JvdXAgLSAxKSAqIHFpLnRfYmwgKyBzcC0+
dF9yZHByZSk7Cj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgYncgPSBESVZfUk9VTkRfVVAoc3AtPmRjbGsgKiBjbHBjaGdyb3VwICogMzIgKiBudW1f
Y2hhbm5lbHMsIGN0KTsKPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBidyA9IChzcC0+ZGNsayAqIGNscGNoZ3JvdXAgKiAzMiAqIG51bV9jaGFubmVs
cykgLyBjdDsKPiA+ID4gwqAKPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgYmktPmRlcmF0ZWRid1tqXSA9IG1pbihtYXhkZWJ3LAo+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBidyAqICgxMDAgLSBzYS0+ZGVyYXRpbmcp
IC8gMTAwKTsKPiA+IAoK
