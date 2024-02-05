Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC5B849C20
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 14:44:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A54B10F9DB;
	Mon,  5 Feb 2024 13:44:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hXwhYpIf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5126310F9DB
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 13:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707140642; x=1738676642;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=E70jP1X7vfwCuoVGhR4ADEyY4VovHPqyzb8an7PgpR0=;
 b=hXwhYpIf0hIkyMwTy2l8z0bilHIVqwXiG6yRtzyP6WO95URkgxtNgSSD
 cWPzcmvurALShj91tYjLOsBrjAhZRW3hseBLFVpGAz9D2NJYoMZWPcgZr
 eEdLC0YUfmVJvFzHVMdOCgSuWbO26CNWge+xglb1i6MuLEMRm5CWK6d0X
 kfLni+uXuvtWbJQJLOXOXoB9CrNPvfEaVXyZAXxPq66SrgCZobw+BU3Jq
 /NyzNei8rxxn6zAE/GGjFU53nXiZHHT+IuAQSx4j2I/lwqaH74V+fJ+wZ
 QREoQ8EFgHYiGxlxthbDUtsilD3paXDQ5c3t4c+1ABaCp0LD0iFs4tsMG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="436719"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="436719"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 05:44:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="697411"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2024 05:44:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 5 Feb 2024 05:43:59 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 5 Feb 2024 05:43:59 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 5 Feb 2024 05:43:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OfHA4EFMnCp3Jcgyj5M0/x0v02dhSLz/swzaumfUywNQteVYfS7kr8mgvoM0heEQjN2Q5vxk3bkTkzNYeerSAG8siBUTscT43KX6EpD656ARrGQ6abfeLV5iUCL0Juvr8Qn0J84Zb5t4nAwqFsjJGKWjfk7Pgnyv1TULANalBs058D95QlXsIR/DJQOkfu/BPKNSXudGmprgIg1AgYePH2aTDUjXV4aJCOvx9L9c5JP12NrOw7qfb/AltPXcDW3+QueF4/SiG3oEzmJvx3obdreeHBH1ueI8+B6cS6kd9dotMUEs+QsAKTNu0zF6I+OvEYOcyhse+ySHYon47iyM/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E70jP1X7vfwCuoVGhR4ADEyY4VovHPqyzb8an7PgpR0=;
 b=iVFGERWRHpcFbHkEzOSnVqr+TkOe0YlFG8SObkAFZbhpurdw1NFrDNgFaQaEnQfZdqFaVPOWrxSaDx+KLkAYwcbW5kzAG27nocNzUuYKrMQg4PuNAsQGC4hwqKVNP02cHddzantyO+eUJ3ruOV3Lp+AWNXehv6sfj7Gfcsk+3faRVnlwWA0kbALborD3RX0bOTDSp+Oss+E0pyP0+FaUnIqnt5lATLuLbCO7jMNpRLOntG8XT8spWEt91h1geiyQOYxGcGGOVnIREbTpuKHUvj9LBIl4K5HQWq4oUA2tHiooRaF6hnX+chxYXldcShicHS4mZukasAwsaJixALD2pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7135.namprd11.prod.outlook.com (2603:10b6:930:61::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.34; Mon, 5 Feb 2024 13:43:56 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7249.035; Mon, 5 Feb 2024
 13:43:56 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 11/21] drm/i915/psr: Modify VSC SDP calculation to
 support panel replay + su
Thread-Topic: [PATCH v3 11/21] drm/i915/psr: Modify VSC SDP calculation to
 support panel replay + su
Thread-Index: AQHaSr/UXGXljTwhlU6BMdZwV2nvbLD3KkQAgASy9YA=
Date: Mon, 5 Feb 2024 13:43:56 +0000
Message-ID: <46e990fd6f743b203355ce6ce8465067af91072a.camel@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-12-jouni.hogander@intel.com>
 <PH7PR11MB59816E27ACC780CA328DCAF2F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59816E27ACC780CA328DCAF2F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7135:EE_
x-ms-office365-filtering-correlation-id: c5af4bb7-9569-4b8b-0516-08dc26507fab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wa3TYlk0fRALB+r5g2rC3vQv1ONipyvZhbCFnopA/JAJfWnTEVlKNVkpbPgKfNq564hfUSlt4+ToGRVpvaCPN7WntYXsFWvQ5Jy0pd7Wamdkf9fZ1yADJydOgdnyN6mb3aRLVF07qGwSbveuYjXWOSJWGV9Atr2ms2J89nxq+2H4b9RudJ5HgUGGYbY6IU4ztLd7I9/40QgrnxABG8TfvGg8LKwZICn/4acnxwtFMFvSXzo2WgVvktZ1Q8bfZb/FwSuVhD0LLpBzP5KgRpd96JyQ2Awys7Zz6TLgI43OplTpXO9F6gR45D67DkO0xVgNXQea3hvKcbsBxIbrmahY7Q/ZQOtHhCK+6TLH6rnt7/6dtVnjWhbzMPUP8FtmQnpYxdLHtmz6cYigcsOxxZ6Z/DI1bbTD4idEV3l4/043FGMjjvSRFPKoLIOpLqFfBX6Rn7WaW0oCOp1zPCqrhmda0CwuTUnI0jAYE197sC5XyBcMFnXEsmJNE+ugmlyT2fTlF4WNIio1A5Xi4CKN3sij6urcc/9EncoojUAUxd3ML2iBprG8xPWXoiDW1Sj7njOccVwMCnRbpW/+rNrptvDjRBmBJIgvTpy0x6LUcJnoDfgjyyDSYQlPdsJiYydFhV+r
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(366004)(376002)(346002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(41300700001)(26005)(53546011)(6512007)(6506007)(66574015)(66476007)(66946007)(8676002)(64756008)(66556008)(8936002)(76116006)(478600001)(5660300002)(6486002)(2906002)(2616005)(83380400001)(110136005)(316002)(82960400001)(38100700002)(122000001)(66446008)(86362001)(71200400001)(36756003)(38070700009);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VGt1Y0ZGWld3QmlybDB4MzVFVXZpV2FPSTN1TnlkcXFsMkJTbGpWcHZtdWFX?=
 =?utf-8?B?eDZSSTY5RmNpdjlUc3I2SjUzaFJwWWloeGFJQ3FjMUVJd3R1MnVaQVlvamZR?=
 =?utf-8?B?bGV6ajFaemt4WVVqRTF6cUp4OUVVTmFRanV2ZjJuUnMyTVUzUk5CT2FNTXk4?=
 =?utf-8?B?Ry9qOWxkTi9wNDhHcUptTW1qd0ROcklvbmNXT292QUk3dDRITmNOd1hiTHBa?=
 =?utf-8?B?QXZ2d1lrTjNTdHY5WDB4aW8ybFp0bzE2VWNMdWFOZlFySjUvZ2d0TkNUVHpl?=
 =?utf-8?B?MjdxU016QUhsYUVhMFR2UGtwYS9MV2EzQjMzN21VcURIdGZpUDdCTFQvekM0?=
 =?utf-8?B?SU5CTlpWVTZmYnBNcmViN0JtV3RZZ2krREE1YmUxMDN6SmUwOHo3QlBYTHNV?=
 =?utf-8?B?K3NwQTlXRWI1YzkxSWFUTUU3TjNFZHRVZ1RTUE96ekh3MnQ0WkRGdi9oWkp3?=
 =?utf-8?B?SFlRaldVblRKeE8vcU5aMTRXM0QxVkV2bS94WW91a3EyNzliWVJRbzN2WXRV?=
 =?utf-8?B?RHRib1ZjRXRSZDNvWWU1TGlNVGV2SHRPUTFyV3dZL1Y1L0FSeVlpYzJnQ1ZU?=
 =?utf-8?B?dm9lOFdLSXpKQ3dMZTBRbEg1elA1dkxISEVYblBXSnNBZU9MUHFLeE1IYndP?=
 =?utf-8?B?Ym56cFVTNWJRODR4YkZtV1NJT3hWVGZTWXNHaEY5N29OTldmZTZWcEduU2M0?=
 =?utf-8?B?TCs5NVNkNDR2QnFBMFdCeUQ3TzQ2UFZ5NGZ4RmlaT214TWxES2ErenpyK0Vv?=
 =?utf-8?B?bVdHTER6NHFiOXRHYm54bDVRdkNacjlMYzhtQzBIMDB0SndtYmF1Y0I4ckpP?=
 =?utf-8?B?Rk4xWXd6cEpjYkt6cUlSSlA1M0JObWhCRGo1MSs2OFBhemFNcWxXdEsvVWlr?=
 =?utf-8?B?MkFOUFFJZzZmazR3dHlma3JEU05RcHFETGZaLzU3VE5nQzdmcXhzYkxaWUZi?=
 =?utf-8?B?VjltcVZQSUJBUVRhVzRQUnNRSm5tWXBxNDNSaFJZeFl6aGF6Ty9NRVUrOUVp?=
 =?utf-8?B?MGZwaXRZVWZ5U2dEYlJqdEdBRXpnb2ZFUWw3bmRqUm5LK3l3THhsWFpTSncw?=
 =?utf-8?B?NnhjNzJJMGc4c0ppS2dreXI0cHA3aHZqemZROHE5dlZDakp3M25wZnA3OHpn?=
 =?utf-8?B?RUxPR052WFFPNmJSaWxXS1AyaG5tSUFvMEVwci9VU3ozUENnQlBMcGVkRHBM?=
 =?utf-8?B?aGp6TVpXVmY5QVM1QXpkWmthNWFseFZPaDdHYXRwcDd1UjBlVUFybTJET2U1?=
 =?utf-8?B?dWNDY01sOVZNRzgrSjNFUWs5TmM1NHRCZllFenF0UWdvcWFFdm5Pc05CeUdB?=
 =?utf-8?B?WlpjT1RyeXRMcXZGc3hMWS80U3JFWDhPd1VPekxmNkJRQ3MxSHY1RWpmN0lO?=
 =?utf-8?B?b2xwTjJ4TEJSZi9hbVJNUGdPOXExd0V4S0lETERQN2tGV2NDSkdPMitOLzRz?=
 =?utf-8?B?dmZ4UnNIbzlPUHhGSTkxWlYvcFQ2T2NwL2RRaUFjRVdXQU1YdnhaYU9RZkYy?=
 =?utf-8?B?OFZrMEFZVzVrVkxJeVZDOUJ6bGhoblNENS93cFVoNm14UWVVQkxGaHVvREc4?=
 =?utf-8?B?UTBkZjF0UCtzenVoNkM4OW9nL0hUV3dydCtIekxDTjlCWHVBcGZWaXZrdkU3?=
 =?utf-8?B?NUpHRFAzOE13bVN2SHV4YnliQTZBcWFIREFxSEhVQ0ZGbktWQzA4dGhvR05D?=
 =?utf-8?B?V1JwS2xzUndMNGpHc25rTCtjK1NGSWY1VmxIQXE5alRoSUVwOHFTeE04OUhz?=
 =?utf-8?B?TWZtUnpJS2YxMTIzTElWd1lTUWUrWmdXb3B3eEZzeGJFTlBWRDRndDFHbWh6?=
 =?utf-8?B?RXFCZWRheFJLV1BvNk1UNUM1MlZYOTZqSDhIOUVuVnV4L0NiWkVmSk5XVjl2?=
 =?utf-8?B?UEkrbk4rZ3ZFNFB1ZmtMbjFKUWlNYVYrOFBsV3pBTHdpT0hOM3pPeVNuZjZH?=
 =?utf-8?B?dTFnNGtqWlZFQ2VaSlRaTE5ENHVJU01ETzZ6TytJaDBwS01jUWNvZW5QWnFi?=
 =?utf-8?B?Uyt1UEZsNE1vNlBRbUhNQWFqZTJwMkIxMzg5emx1Zk10eVBKSkxLT0U5c2wx?=
 =?utf-8?B?WkZtTm1XOXhRRFJEMis3SExCYTVLQ2w5Q29kZncxbjBxYk1ta0hjUGExTzFv?=
 =?utf-8?B?a2JzYTltOW1oVUJ5SmVIZ0J5TkEzekdHNFNRYXRNd01DQ2dXYmErS0EwaXgx?=
 =?utf-8?B?Tnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B6C71E1A8681DF4B9468141952925A12@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c5af4bb7-9569-4b8b-0516-08dc26507fab
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2024 13:43:56.0846 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wj2VA3ROh25XJ0Sn5hOxuAV69KxNu/NIJyaFCIuWM8R6HhqAJ1rvGj19z+zFZ/xm1n0fp00VWm7BgF5jy7mT16PdKdqWV0MgW03wSExXpIw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7135
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

T24gRnJpLCAyMDI0LTAyLTAyIGF0IDEzOjU4ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToK
PiAKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBIb2dhbmRlciwg
Sm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IFNlbnQ6IEZyaWRheSwgSmFudWFy
eSAxOSwgMjAyNCAzOjQwIFBNCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zwo+ID4gQ2M6IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEhvZ2Fu
ZGVyLCBKb3VuaQo+ID4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IFN1YmplY3Q6IFtQ
QVRDSCB2MyAxMS8yMV0gZHJtL2k5MTUvcHNyOiBNb2RpZnkgVlNDIFNEUCBjYWxjdWxhdGlvbgo+
ID4gdG8KPiA+IHN1cHBvcnQgcGFuZWwgcmVwbGF5ICsgc3UKPiA+IAo+ID4gQ3VycmVudCBWU0Mg
U0RQIGNhbGN1bGF0aW9uIGRvZXNuJ3Qgc3VwcG9ydCBwYW5lbCByZXBsYXkgKyBzdS4KPiA+IENo
YW5nZSBpdCB0bwo+ID4gc3VwcG9ydCB0aGlzIGNvbWJpbmF0aW9uIGFzIHdlbGwuCj4gPiAKPiA+
IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pgo+ID4gLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8
IDE2ICsrKysrKysrLS0tLS0tLS0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KSwgOCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMKPiA+IGluZGV4IDRlMDExODI2NjJmZi4uYWUzNjhkOTk5OWI0IDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiA+IEBAIC0yNjMzLDE0
ICsyNjMzLDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfY29tcHV0ZV92c2Nfc2RwKHN0cnVjdAo+
ID4gaW50ZWxfZHAgKmludGVsX2RwLAo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcF9u
ZWVkc192c2Nfc2RwKGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpKSB7Cj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwX2NvbXB1dGVfdnNjX2NvbG9yaW1ldHJ5KGNydGNf
c3RhdGUsCj4gPiBjb25uX3N0YXRlLAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHZzYyk7Cj4gPiAtwqDCoMKgwqDCoMKgwqB9IGVsc2UgaWYgKGNydGNfc3RhdGUt
Pmhhc19wc3IgJiYgY3J0Y19zdGF0ZS0KPiA+ID5oYXNfc2VsX3VwZGF0ZSkgewo+ID4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICogW1BTUjIgd2l0aG91dCBjb2xvcmltZXRyeV0KPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgKiBQcmVwYXJlIFZTQyBIZWFkZXIgZm9yIFNVIGFzIHBlciBlRFAgMS40
IHNwZWMsCj4gPiBUYWJsZSA2LTExCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICogM0Qgc3RlcmVvICsgUFNSL1BTUjIgKyBZLWNvb3JkaW5hdGUuCj4gPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICovCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
dnNjLT5yZXZpc2lvbiA9IDB4NDsKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2
c2MtPmxlbmd0aCA9IDB4ZTsKPiA+IMKgwqDCoMKgwqDCoMKgwqB9IGVsc2UgaWYgKGNydGNfc3Rh
dGUtPmhhc19wYW5lbF9yZXBsYXkpIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgLyoKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogW1BhbmVsIFJlcGxh
eSB3aXRob3V0IGNvbG9yaW1ldHJ5IGluZm9dIEBAIC0KPiA+IDI2NDksNgo+ID4gKzI2NDEsMTQg
QEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfY29tcHV0ZV92c2Nfc2RwKHN0cnVjdCBpbnRlbF9kcAo+
ID4gKmludGVsX2RwLAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdnNjLT5yZXZpc2lvbiA9IDB4NjsKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdnNjLT5sZW5ndGggPSAweDEwOwo+ID4g
K8KgwqDCoMKgwqDCoMKgfSBlbHNlIGlmIChjcnRjX3N0YXRlLT5oYXNfc2VsX3VwZGF0ZSkgewo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICogW1BTUjIgd2l0aG91dCBjb2xvcmltZXRyeV0KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBQcmVwYXJlIFZTQyBIZWFkZXIgZm9yIFNVIGFzIHBl
ciBlRFAgMS40IHNwZWMsCj4gPiBUYWJsZSA2LTExCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICogM0Qgc3RlcmVvICsgUFNSL1BTUjIgKyBZLWNvb3JkaW5hdGUuCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4gCj4gVGhlIGFib3ZlIGNvZGUgY29tbWVu
dHMgbmVlZCB0byBiZSBtb2RpZmllZCBmb3IgcGFuZWwgcmVwbGF5IGFzIHdlbGwuCj4gSG93IHBz
cjIrc2VsZWN0aXZlX3VwZGF0ZSBhbmQgcHIrc2VsZWN0aXZlX3VwZGF0ZSB3aWxsIGJlIG1hbmFn
ZWQKPiB3aXRoIHRoZSBzYW1lIGludGVsX2RwX2NvbXB1dGVfdnNjX3NkcCgpIGdvb2QgdG8gYWRk
IHNvbWUgZnVuY3Rpb24KPiBkZXNjcmlwdGlvbi4KClBsZWFzZSBub3RlIHRoYXQgZWxzZSBpZiAo
Y3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSkgeyIgaXMgdXNlZCBmb3IKYm90aCBQYW5lbCBS
ZXBsYXkgZnVsbCBmcmFtZSB1cGRhdGUgYW5kIFBhbmVsIFJlcGxheSBTVS4KCkJSLAoKSm91bmkg
SMO2Z2FuZGVyCgo+IAo+IFJlZ2FyZHMsCj4gQW5pbWVzaCAKPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqB2c2MtPnJldmlzaW9uID0gMHg0Owo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHZzYy0+bGVuZ3RoID0gMHhlOwo+ID4gwqDCoMKgwqDCoMKgwqDCoH0gZWxz
ZSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIFtQU1IxXQo+ID4gLS0KPiA+IDIuMzQuMQo+IAoK
