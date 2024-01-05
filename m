Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFB6825381
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 13:54:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11FB410E5F7;
	Fri,  5 Jan 2024 12:54:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52E7510E5F7
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jan 2024 12:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704459251; x=1735995251;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=YxEiDetNxwTeQ8LvGJ+zA3/K+8DV9e2WvqGhlF5p+94=;
 b=BCazicp563mw3LbDf72YG+p1zL9Rh/+gHkaMMHoiRxAhRdCN26o5TaxT
 MVYGX3XB80t67270b442bPOqMdISdShZZ7Rbo5MOgulFZtzmpTo51GE36
 p7ExaC6iB5He/npyJ0nI+kjuleFp45qcLwNbCPPzvNHOvfWxYCXsgcgxD
 8ZjvHCnlcWQgGXyqS+DqFcXHBZoF6nhLcG4YAfQ9lM7izoj8qStIFiCRZ
 sbvxskeT7bS0A8hsqXcVS20xnBx12LmwBdjhtooDUXXzHGKB96DyOyJmQ
 7pSg7aTHOLzlU1hB+WVStvu4m63KkZP8qbg1YP+ca9qOl1X0iBxSigLUj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="4868819"
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; 
   d="scan'208";a="4868819"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2024 04:54:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,333,1695711600"; d="scan'208";a="22490340"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jan 2024 04:54:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 04:54:09 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Jan 2024 04:54:09 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Jan 2024 04:54:09 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Jan 2024 04:54:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KHkHBEgVOWYqI/4esQgh+Y6TNvkC9zOE6zWcWPuwPNrPe88M3elDEZ18Y/x8dHTQWaXG7x7y98k7wMl80Xv97tx9QcVk00pxpv12M3iUIo7e3btkOGYpl2cg3m7bOUb1PDnSqYMLF9NYerUmOxj3nCUsua1j+EXiaBaJ29aQlp+DhmKKCjH/Wf5yjKjDUnGAQCH3ovATvci16BiIM2GpK5Du5qJxZRr+Fzrxq3bMKDphfshZGnyMuLPym30ZfbMGe5wtSXfZuHSH8dMsLWRu/+kafhDCYVYpdWuQdypez8F5IRU/IXlnlhL3dQr7VP4yYxzT92aZAhpaFXDkZySfzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YxEiDetNxwTeQ8LvGJ+zA3/K+8DV9e2WvqGhlF5p+94=;
 b=hJinM0C94wZjY+HpBP8tYEboWZkNn6mFhHSeMnZCDij1EmX9gBL3Fd809Bqjy5TyuhSlYy62nDPLKdUc8bf3M+ebVcHl5p7LFnbb5zPaOHgFmGXtJufMqWKvj48EXkm9/O0jVStCqdrUzaKurWYWrwJTmh4t84Hgxof6gZT+3SaGEV/URmQVXCYcL3Df7hDexAEwyX/doECnUAHNRahUORHVnQD1CckuenkUYX0Lpa/YLUgMI1LI7hgLBi5WGLxbRS9X+gL4PagWneRXn2aMVQQ251qoiCfceb8F8jQiZoqCx2npMb0rB3Z+MYak3XOCZFzhAKWhOPz8QCFW+NBFQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB8283.namprd11.prod.outlook.com (2603:10b6:806:26c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.15; Fri, 5 Jan
 2024 12:54:07 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7159.015; Fri, 5 Jan 2024
 12:54:06 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 01/12] drm/i915: Init DRM connector polled field early
Thread-Topic: [PATCH 01/12] drm/i915: Init DRM connector polled field early
Thread-Index: AQHaPuhJ/t1+AZY5yU+wjohF4/hJCbDLLrIA
Date: Fri, 5 Jan 2024 12:54:06 +0000
Message-ID: <9ac27342f4402fe90c1233b88ed92c89580e206e.camel@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <20240104083008.2715733-2-imre.deak@intel.com>
In-Reply-To: <20240104083008.2715733-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB8283:EE_
x-ms-office365-filtering-correlation-id: f652f94e-cbaa-44c1-875d-08dc0ded6714
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4sG9c1+kp+bRoZQuyqxjg/112ATqnasB8ALx2sUYeQnHxh0l9KqHBeDVtvgYgblCk8PDgX0NR3ekRU1CG2ea8ZdXpy3Yyz8/UL7AmEDJgeeHilbfhZtGT3Iaj4ezrpYCkzUvjgc6kJUdyCPztoABwpJarGItcxOo7k7H7FELhl4nuNEz7ovJEtd9S8DoVdKu4PJyhQQTmSZwTiHr1JkS2qSmsHYcZ/xHW7mLxLlkXgcL7OzAC5u89nV4pDlZj35PYh2bFgog4o0yl0RLYqKRG/mBGB6SulymH3wkmuVxznMeqVb0gXVk3FNrjyLQGui2k6Q98ZPDEulb7tbiNL2DTb8miCK99Tfx2WMRbOsICvDJJ6SGqr5aQX3vDfCRx8syNuR5w8FS1h7TLw6VvZyAmZxgBfGGVfGTG5AUIJPzuub/p1yQ5YCZ5Q3fsdeKhuK6iOUGgJ1GISODWUdpiCbhQDShIWdhzKtUf8OX39ur5GuxsYQBlXfYnvMMm8Kx8I8LTMJRlHVfdBNFdI4Vl79NXRykvNw7srdFj7RHDkp41LtBbXzK1veCmlA2ZGJMEb991TcziaxUXSe9u2zsYxZmPo9jrYIeMKqmLxoghlrroEc8OwNmbBPzUExwB+8yAhJp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(39860400002)(136003)(346002)(366004)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(38100700002)(122000001)(82960400001)(36756003)(38070700009)(86362001)(26005)(83380400001)(2616005)(91956017)(316002)(110136005)(76116006)(71200400001)(478600001)(6506007)(8936002)(8676002)(6512007)(64756008)(66946007)(66446008)(66476007)(6486002)(66556008)(6636002)(66574015)(2906002)(41300700001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VFBhZ2dkRVZQellHbmZ1OWRWdHNaUktmS3kxVzhPeDBEOVhURzQ0VHBYOWJl?=
 =?utf-8?B?ZHZNNDlRemM2aVJybkwzRVVRQ2RYa2hHZGhZZWRxTVdWVlEyRmhhVEt6MW5k?=
 =?utf-8?B?clgzQ3V3VXA3cFp4YXdhRGw3WVplbWNDZXdKSDF2UTB6Q1pabGVjVExkSlVU?=
 =?utf-8?B?UDBHZW5XUlBZUFdzSjNGdURmTW1TM2RDdFowV3RXSXFoN00xQ25icHVXLzBi?=
 =?utf-8?B?U3hQeC9ERVVGQXhFQ2ZTNjZHeEpOSjVVRVE2SCswSDF2V0FBdXlZMHdOOE5Z?=
 =?utf-8?B?Z2hKTC9TNDg4ZVJPYmhyZjhicmhlVGhGYVBVSXo3SWdOZ05adld0Smh3S1Zt?=
 =?utf-8?B?amtaQzk5OXhoWjBnZGwxaTVnTkhPM1Y0Z29PaXkrYjhFSVV1cmVpRDdEUExN?=
 =?utf-8?B?ZExuUEVHTzRXTm1XazBScHBuSXJ4dDdiNVJmNjY4MnZKS3QxQjF5anlyY0lU?=
 =?utf-8?B?U0ljazgzVHJkSXVHVUozNS83QnlrekNiM2QwUjVuNVNLUjNNTDdrd241a3N2?=
 =?utf-8?B?c005ejVDVk82Q0VnckZDTndiZ25rVXd4VnRVQjdZZzdwTkRITDBOcUk2b0tQ?=
 =?utf-8?B?R3g3OCtLM1lPbHRTYTNVVk04WGF6RitIc0lrNWRwNjcxZGhZbE5Zc25UY1VG?=
 =?utf-8?B?NjR1cFg0QVFHZzg1Zkcrbk5yclM2Wmt5VXFHNTkwYzN6MDJGUkQ5cEVaeHVK?=
 =?utf-8?B?bXBNcmpNeVlaN2UwUk9QSXIrWWNQemlVbW11OE1UN1BqaEVyQXN1Y3czTldr?=
 =?utf-8?B?czQrWDgyYmxOMkVRT1VwaUh6N3RZMWdaVERLTFhDZ01QQ3JPU0pwVzFoSVRV?=
 =?utf-8?B?RUU3S2dHUEVsZkNiOVNDVWVydGhtbGtOYWZNaUt3MG0veDh3SncxaFF2ZVIr?=
 =?utf-8?B?aUNyclFrcFJUVUVIdXVsKy82L3RVMkdYUzJnTXVETTV3M2Nid0FKb1g4T1hl?=
 =?utf-8?B?QjZZbkY2bjg5N0pIUW9rbDJKRFJiZGIwV1JxaStsd0tDNmtmT3hWZ0VlckNJ?=
 =?utf-8?B?d0QxLzlWZmtHblM3UTNlM1YzN3d2aWdmejV1bDB5WWtZc25SY0tHMVlLclNQ?=
 =?utf-8?B?YlF1ZHU2cXNhTTYxV3dTM2puZ0p5MFpqR3d0cFpMZkxFYXUwVHlEaCtzSHJi?=
 =?utf-8?B?T25seWljZTYyQ1AxaE91YmFkQzlNRHRwNDU3Q0Q5c2tHRHI5TndrSG81c055?=
 =?utf-8?B?UUNsVmJicnFvdXF1L1EySzAwS0RsUnpBVGVRUE1UbTFmampDRSs2bjNLRity?=
 =?utf-8?B?bjU5ZFM2d2tNZ1lxZlZRTmtVUlhSZEFjOWNzZkNnUkNTZzlQNDhGd3Arb1hy?=
 =?utf-8?B?WDlsVTZWRG0veVg4NFhiZUdYTnZlTitGVE1Ya2VRM0lNVlJZRW1NSVVVd0hT?=
 =?utf-8?B?a0hlN1NSbnVsKzdYa0VwajhpSXRTOFl2WXN2WTRJRUFHYnZiVUZWQXo3akQw?=
 =?utf-8?B?WkZJSFBCbzBTQXNibG1TV1FHcDA2bGkxdDlEVGZIbU1EYzB6VThUNXVIbWNL?=
 =?utf-8?B?MVNmdDZwU1E1Qk5jYzhVdFVCUkxPUEFUUGZPWUxkRU9uQnEzcWpNTDBzYVNh?=
 =?utf-8?B?UmNIZjZNZTY5d1g3Y1RHSjRhMk9FYmlzSDZ5bGNYYzZlaFFybG9QeGJtd3pN?=
 =?utf-8?B?UG5KTmRtU2dJRzU4Q2lyU3BCa09EcVZJeXJMQ3FZd0k3clNyUUQvS0ViZEF6?=
 =?utf-8?B?eG9SZXhpM0hxbUl3dFh4Q3RWa0NqOTdzZnZCblIrcEpKQXNrMy9ybUxuSHN4?=
 =?utf-8?B?NlcxQkpQd1VTRWJpOXVEeDFqeE9PNUVHVWg4N1kwdnI2TkduUk45U2grU2N4?=
 =?utf-8?B?eHFRdk10VGFUcFJUdmJxWnF5Y0hpQU9mcDd5NGZIeW9oMEkvU0xTT3ZPUDkx?=
 =?utf-8?B?SFRsUDk5SUxVb2ZTVjJuekhDZ0l5aXdyYzBMblFSdG04SVBpOW9EODduWUND?=
 =?utf-8?B?K3U5d1VxV3N6SUZpR01tYWlkZ1VUS3NvZVIrR1VqQlNoYjhrMFA2eXRndEYr?=
 =?utf-8?B?WnF0bDJ4dy9LaDJDUnRFTGZ4S0pjbzFtR0hOV1dkVFhQbW5JN3pTZ1gyaEE0?=
 =?utf-8?B?eSttUVIzV1V6ZDdrWkJqdEdKQXlnMmNFcERPVUtPUVB5WmYvSVV0SmZZRUZt?=
 =?utf-8?B?Vy9ORlVIa0NRQlN2aXl2Q0lrMWx4b1RFdnUxd0I2Mmc0TTdQSUcyQUJOeFZS?=
 =?utf-8?B?dFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <89A55F4F7FF6794C9DB7233949BC2546@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f652f94e-cbaa-44c1-875d-08dc0ded6714
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2024 12:54:06.6977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7ZbogJmHvJ/0isZEJnGtMgkWAHyP9wmwMnYkZ3OoT7ybWo1poA8XfBnh809SJ5OFJySYmc+5YzIn64UEBFDI9G/erPo2PA5L4IUjmP21SNQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8283
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

T24gVGh1LCAyMDI0LTAxLTA0IGF0IDEwOjI5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFm
dGVyIGFuIEhQRCBJUlEgc3Rvcm0gb24gYSBjb25uZWN0b3IgaW50ZWxfaHBkX2lycV9zdG9ybV9k
ZXRlY3QoKQ0KPiB3aWxsDQo+IHNldCB0aGUgY29ubmVjdG9yJ3MgSFBEIHBpbiBzdGF0ZSB0byBI
UERfTUFSS19ESVNBQkxFRCBhbmQgdGhlIElSUQ0KPiBnZXRzDQo+IGRpc2FibGVkLiBTdWJzZXF1
ZW50bHkgaW50ZWxfaHBkX2lycV9zdG9ybV9zd2l0Y2hfdG9fcG9sbGluZygpIHdpbGwNCj4gZW5h
YmxlIHBvbGxpbmcgZm9yIHRoZXNlIGNvbm5lY3RvcnMsIHNldHRpbmcgdGhlIHBpbiBzdGF0ZSB0
bw0KPiBIUERfRElTQUJMRUQsIGJ1dCBvbmx5IGlmIHRoZSBjb25uZWN0b3IncyBiYXNlLnBvbGxl
ZCBmaWVsZCBpcyBzZXQgdG8NCj4gRFJNX0NPTk5FQ1RPUl9QT0xMX0hQRC4gaW50ZWxfaHBkX2ly
cV9zdG9ybV9yZWVuYWJsZV93b3JrKCkgd2lsbA0KPiByZWVuYWJsZSB0aGUgSVJRIC0gYWZ0ZXIg
MiBtaW51dGVzIC3CoCBpZiB0aGUgcGluIHN0YXRlIGlzDQo+IEhQRF9ESVNBQkxFRC4NCj4gDQo+
IFRoZSBjb25uZWN0b3JzIHdpbGwgYmUgY3JlYXRlZCB3aXRoIHRoZWlyIGJhc2UucG9sbGVkIGZp
ZWxkIHNldCB0byAwLA0KPiB3aGljaCBnZXRzIGluaXRpYWxpemVkIG9ubHkgbGF0ZXIgaW4gaTkx
NV9ocGRfcG9sbF9pbml0X3dvcmsoKSAodXNpbmcNCj4gaW50ZWxfY29ubmVjdG9yOjpwb2xsZWQp
LiBJZiBhIHN0b3JtIGlzIGRldGVjdGVkIG9uIGEgY29ubmVjdG9yIGFmdGVyDQo+IGl0J3MgY3Jl
YXRlZCBhbmQgSVJRcyBhcmUgZW5hYmxlZCBvbiBpdCAtIGJ5IGludGVsX2hwZF9pbml0KCkgLSBh
bmQNCj4gYmVmb3JlIGl0cyBiZWFzZS5wb2xsZWQgZmllbGQgaXMgaW5pdGlhbGl6ZWQgaW4gdGhl
IGFib3ZlIHdvcmssIHRoZQ0KPiBjb25uZWN0b3IncyBIUEQgcGluIHdpbGwgc3RheSBpbiB0aGUg
SFBEX01BUktfRElTQUJMRUQgc3RhdGUgLQ0KPiBsZWF2aW5nDQo+IHRoZSBJUlEgZGlzYWJsZWQg
aW5kZWZpbml0ZWx5IC0gYW5kIHBvbGxpbmcgd2lsbCBub3QgZ2V0IGVuYWJsZWQgb24NCj4gaXQg
YXMNCj4gaW50ZW5kZWQuDQo+IA0KPiBJIGNhbid0IHNlZSBhIHJlYXNvbiBmb3IgaW5pdGlhbGl6
aW5nIGJhc2UucG9sbGVkIGluIGEgZGVsYXllZA0KPiBtYW5uZXIsDQo+IHNvIGRvIHRoaXMgYWxy
ZWFkeSB3aGVuIGNyZWF0aW5nIHRoZSBjb25uZWN0b3IsIHRvIHByZXZlbnQgdGhlIGFib3ZlDQo+
IHJhY2UgY29uZGl0aW9uLg0KDQpUbyBtZSBpdCBsb29rcyBsaWtlIGludGVsX2Nvbm5lY3Rvcjo6
cG9sbGVkIGlzIHVzZWQganVzdCB0byBzdG9yZQ0Kb3JpZ2luYWwgZHJtX2Nvbm5lY3Rvcjo6cG9s
bGVkIHZhbHVlIGFuZCByZXN0b3JlIGl0IGluIA0KaW50ZWxfaHBkX2lycV9zdG9ybV9yZWVuYWJs
ZV93b3JrOg0KDQoJaWYgKGNvbm5lY3Rvci0+YmFzZS5wb2xsZWQgIT0gY29ubmVjdG9yLT5wb2xs
ZWQpDQoJCQlkcm1fZGJnKCZkZXZfcHJpdi0+ZHJtLA0KCQkJCSJSZWVuYWJsaW5nIEhQRCBvbiBj
b25uZWN0b3IgJXNcbiIsDQoJCQkJY29ubmVjdG9yLT5iYXNlLm5hbWUpOw0KCQljb25uZWN0b3It
PmJhc2UucG9sbGVkID0gY29ubmVjdG9yLT5wb2xsZWQ7DQoNCkZyb20gdGhpcyBwZXJzcGVjdGl2
ZSBpdCBpcyByaWdodCB0aGluZyB0byBkbyB0byBpbml0aWFsaXplICBjb25uZWN0b3ItDQo+YmFz
ZS5wb2xsZWQgYXMgeW91IGFyZSBkb2luZyBpbiB0aGlzIHBhdGNoLg0KDQpSZXZpZXdlZC1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuY8KgIHwgMSArDQo+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jwqDCoCB8IDEgKw0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHZvLmPCoCB8IDEgKw0KPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgMSArDQo+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMgfCAyICsrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF90di5jwqDCoCB8IDEgKw0KPiDCoDYgZmlsZXMgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jcnQuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3J0LmMNCj4gaW5kZXggYWJhYWNlYTVjMmNjNC4uYjMzMDMzN2I4NDJhNCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydC5jDQo+IEBAIC0xMDY5LDYgKzEwNjks
NyBAQCB2b2lkIGludGVsX2NydF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZf
cHJpdikNCj4gwqDCoMKgwqDCoMKgwqDCoH0gZWxzZSB7DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgaW50ZWxfY29ubmVjdG9yLT5wb2xsZWQgPSBEUk1fQ09OTkVDVE9SX1BPTExf
Q09OTkVDVDsNCj4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfY29u
bmVjdG9yLT5iYXNlLnBvbGxlZCA9IGludGVsX2Nvbm5lY3Rvci0+cG9sbGVkOw0KPiDCoA0KPiDC
oMKgwqDCoMKgwqDCoMKgaWYgKEhBU19EREkoZGV2X3ByaXYpKSB7DQo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgYXNzZXJ0X3BvcnRfdmFsaWQoZGV2X3ByaXYsIFBPUlRfRSk7DQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggOWZmMGNi
ZDljMGRmNS4uZmVkNjQ5YWY4ZmM4NSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYw0KPiBAQCAtNjQ2OSw2ICs2NDY5LDcgQEAgaW50ZWxfZHBfaW5pdF9jb25u
ZWN0b3Ioc3RydWN0DQo+IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsDQo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29ubmVjdG9yLT5pbnRlcmxhY2VfYWxsb3dlZCA9IHRy
dWU7DQo+IMKgDQo+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9jb25uZWN0b3ItPnBvbGxlZCA9IERS
TV9DT05ORUNUT1JfUE9MTF9IUEQ7DQo+ICvCoMKgwqDCoMKgwqDCoGludGVsX2Nvbm5lY3Rvci0+
YmFzZS5wb2xsZWQgPSBpbnRlbF9jb25uZWN0b3ItPnBvbGxlZDsNCj4gwqANCj4gwqDCoMKgwqDC
oMKgwqDCoGludGVsX2Nvbm5lY3Rvcl9hdHRhY2hfZW5jb2RlcihpbnRlbF9jb25uZWN0b3IsDQo+
IGludGVsX2VuY29kZXIpOw0KPiDCoA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kdm8uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHZvLmMNCj4gaW5kZXggOTExMWU5ZDQ2NDg2ZC4uODM4OThiYTQ5M2QxNiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kdm8uYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2R2by5jDQo+IEBAIC01MzYsNiAr
NTM2LDcgQEAgdm9pZCBpbnRlbF9kdm9faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAq
aTkxNSkNCj4gwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kdm8tPmRldi50eXBlID09IElOVEVM
X0RWT19DSElQX1RNRFMpDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29ubmVj
dG9yLT5wb2xsZWQgPSBEUk1fQ09OTkVDVE9SX1BPTExfQ09OTkVDVCB8DQo+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoERSTV9DT05ORUNUT1JfUE9MTF9E
SVNDT05ORUNUOw0KPiArwqDCoMKgwqDCoMKgwqBjb25uZWN0b3ItPmJhc2UucG9sbGVkID0gY29u
bmVjdG9yLT5wb2xsZWQ7DQo+IMKgDQo+IMKgwqDCoMKgwqDCoMKgwqBkcm1fY29ubmVjdG9yX2lu
aXRfd2l0aF9kZGMoJmk5MTUtPmRybSwgJmNvbm5lY3Rvci0+YmFzZSwNCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAmaW50ZWxfZHZvX2Nvbm5lY3Rvcl9mdW5jcywNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4gaW5kZXggZWVkZWY4MTIxZmY3Yy4uNTUwNDhjNTZiYzUy
NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1p
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4g
QEAgLTMwMTcsNiArMzAxNyw3IEBAIHZvaWQgaW50ZWxfaGRtaV9pbml0X2Nvbm5lY3RvcihzdHJ1
Y3QNCj4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwNCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBjb25uZWN0b3ItPnljYmNyXzQyMF9hbGxvd2VkID0gdHJ1ZTsNCj4gwqAN
Cj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2Nvbm5lY3Rvci0+cG9sbGVkID0gRFJNX0NPTk5FQ1RP
Ul9QT0xMX0hQRDsNCj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfY29ubmVjdG9yLT5iYXNlLnBvbGxl
ZCA9IGludGVsX2Nvbm5lY3Rvci0+cG9sbGVkOw0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgaWYg
KEhBU19EREkoZGV2X3ByaXYpKQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlu
dGVsX2Nvbm5lY3Rvci0+Z2V0X2h3X3N0YXRlID0NCj4gaW50ZWxfZGRpX2Nvbm5lY3Rvcl9nZXRf
aHdfc3RhdGU7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Nkdm8uYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5j
DQo+IGluZGV4IDkyMTgwNDc0OTVmYjQuLjRlNGE4N2Y4NDE3ODcgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jDQo+IEBAIC0yODA1LDYgKzI4MDUsNyBA
QCBpbnRlbF9zZHZvX2R2aV9pbml0KHN0cnVjdCBpbnRlbF9zZHZvDQo+ICppbnRlbF9zZHZvLCB1
MTYgdHlwZSkNCj4gwqDCoMKgwqDCoMKgwqDCoH0gZWxzZSB7DQo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgaW50ZWxfY29ubmVjdG9yLT5wb2xsZWQgPSBEUk1fQ09OTkVDVE9SX1BP
TExfQ09OTkVDVA0KPiB8IERSTV9DT05ORUNUT1JfUE9MTF9ESVNDT05ORUNUOw0KPiDCoMKgwqDC
oMKgwqDCoMKgfQ0KPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9jb25uZWN0b3ItPmJhc2UucG9sbGVk
ID0gaW50ZWxfY29ubmVjdG9yLT5wb2xsZWQ7DQo+IMKgwqDCoMKgwqDCoMKgwqBlbmNvZGVyLT5l
bmNvZGVyX3R5cGUgPSBEUk1fTU9ERV9FTkNPREVSX1RNRFM7DQo+IMKgwqDCoMKgwqDCoMKgwqBj
b25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID0gRFJNX01PREVfQ09OTkVDVE9SX0RWSUQ7DQo+IMKg
DQo+IEBAIC0yODgwLDYgKzI4ODEsNyBAQCBpbnRlbF9zZHZvX2FuYWxvZ19pbml0KHN0cnVjdCBp
bnRlbF9zZHZvDQo+ICppbnRlbF9zZHZvLCB1MTYgdHlwZSkNCj4gwqDCoMKgwqDCoMKgwqDCoGlu
dGVsX2Nvbm5lY3RvciA9ICZpbnRlbF9zZHZvX2Nvbm5lY3Rvci0+YmFzZTsNCj4gwqDCoMKgwqDC
oMKgwqDCoGNvbm5lY3RvciA9ICZpbnRlbF9jb25uZWN0b3ItPmJhc2U7DQo+IMKgwqDCoMKgwqDC
oMKgwqBpbnRlbF9jb25uZWN0b3ItPnBvbGxlZCA9IERSTV9DT05ORUNUT1JfUE9MTF9DT05ORUNU
Ow0KPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9jb25uZWN0b3ItPmJhc2UucG9sbGVkID0gaW50ZWxf
Y29ubmVjdG9yLT5wb2xsZWQ7DQo+IMKgwqDCoMKgwqDCoMKgwqBlbmNvZGVyLT5lbmNvZGVyX3R5
cGUgPSBEUk1fTU9ERV9FTkNPREVSX0RBQzsNCj4gwqDCoMKgwqDCoMKgwqDCoGNvbm5lY3Rvci0+
Y29ubmVjdG9yX3R5cGUgPSBEUk1fTU9ERV9DT05ORUNUT1JfVkdBOw0KPiDCoA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90di5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90di5jDQo+IGluZGV4IGQ0Mzg2Y2IzNTY5ZTAu
LmYzNTk4ZmUzOWZkYTUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdHYuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3R2LmMNCj4gQEAgLTE5OTAsNiArMTk5MCw3IEBAIGludGVsX3R2X2luaXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUNCj4gKmRldl9wcml2KQ0KPiDCoMKgwqDCoMKgwqDCoMKgICogTW9yZSByZWNl
bnQgY2hpcHNldHMgZmF2b3VyIEhETUkgcmF0aGVyIHRoYW4gaW50ZWdyYXRlZCBTLQ0KPiBWaWRl
by4NCj4gwqDCoMKgwqDCoMKgwqDCoCAqLw0KPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfY29ubmVj
dG9yLT5wb2xsZWQgPSBEUk1fQ09OTkVDVE9SX1BPTExfQ09OTkVDVDsNCj4gK8KgwqDCoMKgwqDC
oMKgaW50ZWxfY29ubmVjdG9yLT5iYXNlLnBvbGxlZCA9IGludGVsX2Nvbm5lY3Rvci0+cG9sbGVk
Ow0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgZHJtX2Nvbm5lY3Rvcl9pbml0KCZkZXZfcHJpdi0+
ZHJtLCBjb25uZWN0b3IsDQo+ICZpbnRlbF90dl9jb25uZWN0b3JfZnVuY3MsDQo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFJNX01PREVfQ09O
TkVDVE9SX1NWSURFTyk7DQoNCg==
