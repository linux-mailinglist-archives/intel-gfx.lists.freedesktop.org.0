Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD414B2D7E
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 20:24:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E00C810EAF1;
	Fri, 11 Feb 2022 19:24:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A0F510EAF1
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 19:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644607492; x=1676143492;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dd/zVA71MvBFcuoHWmO6NXeqJ7VpFJeb5EPgkcX4CII=;
 b=R/Uuk6rJiR0ge+ONqGqbaJ0PBwrhiW6Uml75U6ibmQLaAFQUgzRf52rz
 YJkGQfrPAdB3Ch3DXFaxpMH8pvl3J/6/JQ/nc5FGMjFhEjOqrGPzft+jn
 fI4nb9eFPhhlLb+0qw1gVAkVAHqpcYma7faiLmOnkFHw0NRa8gjlIC82+
 g1cpcYAP0boAkFCw1wa8BDgtKnhUrJ/IuXBiYbs01Y6xBc1WrTnpb9sGw
 KkySgLWGhlu98aap29j1vjG6LILvbKCApT3foxv+P1UyAZF/dyUwSUPYk
 xqRjeohwr3DXbrhpVabDBJ6yFGn07WfIl0h/0CB3EE+54K7nXepgy/fW4 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10255"; a="310532628"
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="310532628"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 11:24:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="634189507"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 11 Feb 2022 11:24:47 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 11 Feb 2022 11:24:47 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 11 Feb 2022 11:24:47 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 11 Feb 2022 11:24:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LUxB/gMsLH73sQuQiXXhOJzTnpKx+Cn2pW33yD5BaxGIH35QjPW8j3+RykALYTjgXIJ+njsHlRJK03gdBtouoDlmSf66xGw3kKfMctsc7OMDz7wk/8kjnsAfLrxwlhF4I0nXJeTOfljCa+/spRE6kzHja93BDK8tRrJCXGnJq2rSsXfLj3E/6+ihIcW/LjXV7THJwz2Wr5iTzWP7aUJPJ/lySK/FME/eS/sjuRVdb40YrB95On/dbL7HaIuev+y4g6aueiijuEB9OcMPWxa8xFd+ecCrdL6MZ+83NyEaVXYjmV+ka4Xl2B1BBxGRz1zgTDb0yj1VAPz49uDTjmU3vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dd/zVA71MvBFcuoHWmO6NXeqJ7VpFJeb5EPgkcX4CII=;
 b=OSGM/rcGyDWAJtvCatrQCnU9J3H7X9hsdqUbYU72rkulSPaQS1NeoXOfnaZJ01Ds1k8TxCP57+hOFSqyZrP0+oFD4zwn1iI7IZjRM3zsXFfyK/6bdGT4YURPtxbFL95u8NHgJTslk6oCxQrouCnbQQ4jAkJMdCJ9EGECftgn5Exy4WZU+hSNQ35m3mXbxIFOpXA0ZZw9/afv3enEjQ3Q9TWkIJYpitDzAE4npt/2LiLFmeKm3T2EPmGGU1FS+0mmsZppLyWYhp/+4WCMPWllz+OKz49Y6V2G80gcSMQid69R6KvHXF9hlWZgaN7Cd775ORwLTflgFXzPUrQVJE5Vcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by SA2PR11MB4923.namprd11.prod.outlook.com (2603:10b6:806:fa::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Fri, 11 Feb
 2022 19:24:45 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4951.019; Fri, 11 Feb 2022
 19:24:45 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 03/10] drm/i915/guc: Add DG2 registers for
 GuC error state capture.
Thread-Index: AQHYEqH5DLFoTEAjVEWV8AVfWROF36yEOgmAgAqbUgA=
Date: Fri, 11 Feb 2022 19:24:45 +0000
Message-ID: <512dba370be94c57d0b4610252660a4f2b1d1d1d.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-4-alan.previn.teres.alexis@intel.com>
 <20220205012817.GB10302@unerlige-ril-10.165.21.154>
In-Reply-To: <20220205012817.GB10302@unerlige-ril-10.165.21.154>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20028ba5-d564-4799-936d-08d9ed942969
x-ms-traffictypediagnostic: SA2PR11MB4923:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SA2PR11MB49231BDA81E53256CFD46A848A309@SA2PR11MB4923.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PRy8G2WU3vS0EOEHJ1zpL3IHQiMOH/wHGJ/Tqs/PniTfZQEbl/kuiz7RDRR9S0ZH/khP3G6ETyDHwmj1J++uipSqlF2CsNHAdO0UD3NdGRNgLRK116m2utwmGnA+h9uSitc0ynb8TTHbZQjOi1SwMNr/A+nCUGPYLUYD4dYU89RxKyzi8MKj13p0UIc98iOyvq1qlSaF9/wjjqLgWaAujrRbkw5+yQV4ecxQ/9efpcBC43CxmJKt75Vce3W53oxiL0gERjxITblYyMQ7zluSDb8abek/xMszdJ713l8AcDOXXngtV/ideWKc4f1yghbK8QZPa3bqrqJrkaqmmJ3REBX3j39vPSox+jJbx6gXIb8B1yOJf4Gti5TDxQg0IN2EPV7CSJdQBcBPYObB0UxDnNW9LnZ7VVxHnO0cBaTBHi0aWNCfopPDSkacEV2znRkvsi5ZfpmavdT7tGBtWkviOtwfpai1uYN50BpsIv76S3aLq346vI4991htZdFbOHg8/LKKRbgwPA9n5YdI0HmBNWJh9RfH1AkS3kFHsV+uLupdyNTmx2eRFNyaps8zDdzyTp0yzbY+cvfYoNXqpM62M42Z5aUMr8tYdiCNNBQ42rZ5KYBwYP3hjdqI56x2ABurVoZV66Xei/4Yqv/M1eSzfj/yKFyGd/mJtX3ARywwA5WYki8M116NnhXnOuiiWTr4Zp0ZH4dpeHtu6tdUCeDX5w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6636002)(38070700005)(4744005)(5660300002)(6506007)(8936002)(76116006)(37006003)(8676002)(122000001)(6862004)(4326008)(38100700002)(66946007)(316002)(64756008)(66446008)(66476007)(66556008)(71200400001)(86362001)(82960400001)(2616005)(508600001)(6486002)(186003)(26005)(36756003)(6512007)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SGlBcmorUm55bDVQTU9rRWRQa1owdkpPTjhtWWpxNm5mcjN6c2Nwdk9aK0hn?=
 =?utf-8?B?dVJKSTJlSjFhNlJrQVpQR0xSZzRxc1V5ZmwySmNGTWx5QkIxa0lGQWU1QkJm?=
 =?utf-8?B?RVByZmlFQlRJbEZGam5VTVRNYWEwSWdaSTN4M3NYOVczYlJYZnZXcGRLUHFU?=
 =?utf-8?B?aTJRNFJFTlZqMWtpUDJvelNpZUo1cUFXRlpCa1B0S0EzQW92QWNhZ1lrZWdL?=
 =?utf-8?B?RVkyYVZ3RWVBTFhJKzdJK0RDV1NCa1NJWWFrN1NrOGxiVmVLR0I0c3JqenBx?=
 =?utf-8?B?V2txM1JGV3RtY25MMysvS2hFUGN1cUdvdVhhbEN4YmJLN281dStXd1pzNkJh?=
 =?utf-8?B?NllaRERBZ0JjOEZwZEJTLzBKYjNzdEFmWTZRQW01SzBoM1kzVXRSTjZrdVRo?=
 =?utf-8?B?cHYvZVZVMXU3Z3NUcWZFcXRPU1krN01McDRJVXdQa1dRNUVTTnRRVm5laWhN?=
 =?utf-8?B?cWNIL1lvNlhpMndCVGNCdkc4QmNVQTl4TVVtNU1wdklzQmk5UFcvNU5ZbVZu?=
 =?utf-8?B?R1hISHVINkFDMnpodHptNGxySW50ZStNNC9mYVlQRjNtYWpIckx0ejJkclNx?=
 =?utf-8?B?eUVEQmV1V0xqWnpiRDFZeGlUTTNaK1phSUQzSTZXNjJORVdnYm5IVzVpeUdh?=
 =?utf-8?B?NDlpeFh6WFpsS2dEVkhSZkU1YXdDTDNKb2xVNDE5b0ZrMEFnc3ZDYThOZFIy?=
 =?utf-8?B?c0d1RFRNdWhRSElTQmlXSnhCVkE0ZHBwQ2N6QU81R3NlbTVLd1RlRVZGS0Nn?=
 =?utf-8?B?UzhzNk94UDg5VTYzNmswUnB2dnRoYWRrT3RwcHI1UnU2aDBsaFBpaHlNei85?=
 =?utf-8?B?WjVRcWhIMVB2eDU0dVppeUh2NmJzd0hhU0dTbkZ3RjJyekwwT0JrWDV5N1BN?=
 =?utf-8?B?YmI2dlZXQ3RqTENyby9YSG9BR2VqOHRNSCt5TVllTzg4NkZJMmRURm5wVENw?=
 =?utf-8?B?M2dHTTZUdEl4elBGY3JyMHBBd0tvRzkxcjJlQVhzamFpbldxbTZwZkROeXVD?=
 =?utf-8?B?MlU2bmI2RjJmWTRXZlVBdzZaUDdVTDJpU2ZCNkIzYWVna2dHdnZCcmY4ZytR?=
 =?utf-8?B?d2tLZE1VdmFHY3JMWTN0ai82RG1CbmpDeFRRdWtVN0ErUE1IZHRCYU9nczM0?=
 =?utf-8?B?eHhOMklQSnRUK1ZQcFQ2T2x5NXZFYmZ4QS8zcUhSQzViMXFPVEZLNzUwMzVu?=
 =?utf-8?B?d0lpTzUxcTZKeThlTEFqMWZHcGNpY3VsMytZNCtacERWQWE2WW9kMW9kNmMz?=
 =?utf-8?B?TXJoeThHQXI4ZVBoRWxoV1pSVFhheVhWVDBnSUJnV2hvc040RmFmdzdIY1pj?=
 =?utf-8?B?Nlc3SkJWY0tVMVVRcVc0djhoaE9UVml2ZVpEejdGd3lqRHdxbjZsaFJ4NWJ4?=
 =?utf-8?B?SENLekNvVjJKa1hFd09FQWJBZHdnSWNxcHNwQm1GUW1PaTdVM2JhVTMxWUhU?=
 =?utf-8?B?UjdPRDZMMnlCME9rMFNkZU1vV1NkR2dwcDFrTXlkcHFpeHhKR1VMZEtlQjRQ?=
 =?utf-8?B?dzhjdFVudmhtVFVXTVZ2VGRDazR0YytzanRUdk90N1hqcEN0Q0tJbzNBdWdG?=
 =?utf-8?B?Rk9uZkJIK3ZQNDJWVExGcm1EWS9Cd2tSdDNZVFQwczZ5LzlVK1pEU2dLMWcw?=
 =?utf-8?B?RVFDVGpBUjMzNjBweTVRdXl1QXZvSDdPTld6NEVDQlpnd0xhWEFIVE9XaFR1?=
 =?utf-8?B?VFpGNzZMaFN3ZmlHYVN1dlN0cG85OG5FRjdsMTYrTzNrMnhSWmRUMG4zYyty?=
 =?utf-8?B?UDU5YUVjSzlGRzN1Z2dTUUdVTzJSQXgyaDM5TjFocENnaGs4SzQ3VTlOMHp3?=
 =?utf-8?B?WWxzSXdZY1hURGNyZVBIYVF0U1dMb3QvSTl3QVlBRUxNRWdPVEZCR1hzTTlL?=
 =?utf-8?B?ZzQxeThjbk03Z1E5N09ibmhqM0l4dlJnSE9ZN28zTEdNeUZNOXBZY05QaEZP?=
 =?utf-8?B?UElXc2hwRWFEdlQzNmZnaFNaOG1mU2ZaUXVjNmRXdGdiL011TFB2MWtHRHN0?=
 =?utf-8?B?Q3A5SGM1anJ2RU5tQ042VHhlLzZPQk5rQ2psUmxkZzY0MWNHeW1aTEhMVHZv?=
 =?utf-8?B?bEdTcVBXbWh1K3E5a3ZIOWZVdUs5c1JJWE9xOFhOZHl1QVJlcTZQSUxMcVUr?=
 =?utf-8?B?VnZ5c0NCNXA0Q0pYb0FRbWwvMWE5REpsOVArZUxpVUY2bzhiSm0vSkpXRHcw?=
 =?utf-8?B?ZDZQbFplV0R6RUVqMElGNFlndTJtTUx0S2hsb2dJTjlPSy9zdWV1ZU8vYVJl?=
 =?utf-8?B?UGJnT0lJQXVybExuakRsNXR2dDM0MjUzM0RSblZmbEJVSVJkdmVMa1BTcjJT?=
 =?utf-8?B?eXh0RUpiOTl1YVVhUUs4Y1ZyL1FDWER1MDZ1bnlDVWhJa21HZU9Wdz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6B445F7C5490D74C86DC2C326D209619@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20028ba5-d564-4799-936d-08d9ed942969
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2022 19:24:45.4425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y3PkqpDhcUApp/FqSufHN9CWrdzJu/iOANcjOBq6oOKZ072A1s5iyDGq+V7f12/lpKVlWIYG9ALPO2c9GdiA1bKKV/hWVfelLE6BeXZ0naTJLF6O3yB1dWnJ/7Qsuqoo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4923
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 03/10] drm/i915/guc: Add DG2 registers
 for GuC error state capture.
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

T24gdGhpcyBzcGVjaWZpYyBxdWVzdGlvbi4NCg0KT24gRnJpLCAyMDIyLTAyLTA0IGF0IDE3OjI4
IC0wODAwLCBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgd3JvdGU6DQo+IE9uIFdlZCwgSmFuIDI2LCAy
MDIyIGF0IDAyOjQ4OjE1QU0gLTA4MDAsIEFsYW4gUHJldmluIHdyb3RlOg0KPiA+IEFkZCBhZGRp
dGlvbmFsIERHMiByZWdpc3RlcnMgZm9yIEd1QyBlcnJvciBzdGF0ZSBjYXB0dXJlLg0KPiA+IA0K
PiA+ICsJbnVtX3N0ZWVyX3JlZ3MgPSBBUlJBWV9TSVpFKHhlbHBkX2V4dHJlZ3MpOw0KPiA+ICsJ
aWYgKGlwdmVyID49IElQX1ZFUigxMiwgNTUpKQ0KPiANCj4gDQo+IFdoYXQgZG9lcyB0aGlzIGFj
dHVhbGx5IG1lYW4/IDEyIDU1IGhhcyBib3RoIGxwZCBhbmQgaHBnIHJlZ3M/DQpZZXMgLSBhdCBs
ZWFzdCBmb3IgdGhlIGN1cnJlbnQgcGxhdGZvcm1zIHdlIGFyZSBhZGRyZXNzaW5nIGluDQp0aGlz
IGZ1bmN0aW9uIC0gYnV0IGkgd2lsbCBzcGxpdCB0aGVtIHNvIHRoZXNlIGNoZWNrcyB3b3VsZCBi
ZQ0KcmVtb3ZlZCBmcm9tIGhlcmUgDQoNCj4gDQo+IFlvdSBjb3VsZCAoaWYgcG9zc2libGUpIHVz
ZSBoYXNfbHBkX3JlZ3MvaGFzX2hwZ19yZWdzIGluIGk5MTVfcGNpLmMgdG8gDQo+IHNpbXBsaWZ5
IHRoZSBwbGF0Zm9ybSBzcGVjaWZpYyBsb2dpYy4NCj4gDQpJIHdpbGwgY2hlY2sgdGhvc2UgaWYg
aWYgd2UgY2FuIGJlIGJlIHVzZWQgaGVyZS4NCg0KPiA+IA0KDQo=
