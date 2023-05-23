Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F15A70DCA1
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 14:32:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C230310E427;
	Tue, 23 May 2023 12:32:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3A3310E427
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 12:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684845149; x=1716381149;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JjzpfsbzEvL5PJlqKAO8ULCdMMXyWqorid8vRix+2Jw=;
 b=YJiRJ/4smhYh7IxSfasXBALJumHf1ZlKXz0QSre1HT7VgOunPAX+t6Ge
 114BIeWY8g486WCel8H88RKgfWGWlOXWo/bppiTgLNz7u8pcjxCT6s+Ch
 WontpAeoDvCehmHqiORN77DhCNmwexEGeHB91SJ3Dg1zj3N9Ppm6V3OF2
 RTkFi+79SdSVFmm2eVFUDndtAs8EfLV7yWyuB/9gy2vlChaIgQdjzA5ZR
 8eAk8f+8+lfmg0SqiS9K9gJA8WE2OBFhk0Oxi8cFJRj9jL6oge2F8ydHr
 LAlxZkX5AtlpoXhfQTbhabKsdw1s01kA/sVSeTVoTzu2Gb694is+Ha7ap Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="333584437"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="333584437"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 05:32:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="950524490"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="950524490"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 23 May 2023 05:32:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 23 May 2023 05:32:29 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 23 May 2023 05:32:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 23 May 2023 05:32:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 23 May 2023 05:32:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BCIHrB5z2qYlyMAAeeGUvpCIr+Kcb1MlbYTey1mbq6+jYzn7UZhcNYRs7cVcgniiiw6YtaKAW/95PMAqy7ci9b5KWZK+UB2Hz6eqZIMMoWAGJF2i00ldCTuZoUOYzdCr+BnhVixoXqSRrHVMOOwvjgO/HQg3CeTWVugnJN/rbX9L2miCuNciwlbhKQL1uczqRiJPzniVSI8AXLVWOAXKKz/KFNm8FiVlpej1EW+6SwDt3CLh/Uu68teyDrnV1qrLzbujb2C2X+sFAH3/f6H8d+Tyg5HuKhzkOrTrYs3NmFijFjpB4xscxwdnTt3DTe/+QpTOD2HshYKtqzjQtXqXzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JjzpfsbzEvL5PJlqKAO8ULCdMMXyWqorid8vRix+2Jw=;
 b=HyYg/QKZkFfPjFu4QNBFYGtfpb2QDTPzRFaRRssfpQREBtJVqMAbcHcawaGOXJggd0wOaPwuT9a+boV1wu5PEjAiGOwqLdl8b+aAtSgMPzNCmkfxSPK64Wkm5NKD6lJ2zy4Dy7tHJqkTw58/bjw5ISH4kXkAtW4FQeV51NqLbIx83lhiwrxo0F1+1SLzwfIjgmN4JbbjHbQsRhq37edau7NblZ7CDczD+PZti5kkgJEAphJk7IgP3pUHw7xEBPWzuqSZnGyMQSh8TCfEXT/5se+HAB4PCMiR660d1hyP/3StrAlEoTRgPQ34dqUMPZM7apTvB82gRUUgrC5XcrmREA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by CH0PR11MB5345.namprd11.prod.outlook.com (2603:10b6:610:b8::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.28; Tue, 23 May
 2023 12:32:25 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::79ad:e9c0:80ea:201e]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::79ad:e9c0:80ea:201e%7]) with mapi id 15.20.6411.028; Tue, 23 May 2023
 12:32:24 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6 2/7] drm/i915: update the QGV point
 frequency calculations
Thread-Index: AQHZjQJiIA5DxwXwnk2g+EGam8wPWK9nkGIAgAA61wA=
Date: Tue, 23 May 2023 12:32:24 +0000
Message-ID: <c752c626934552a0b57850dc6b3c7697d143de05.camel@intel.com>
References: <20230522230759.153112-1-vinod.govindapillai@intel.com>
 <20230522230759.153112-3-vinod.govindapillai@intel.com>
 <87fs7nmnet.fsf@intel.com>
In-Reply-To: <87fs7nmnet.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|CH0PR11MB5345:EE_
x-ms-office365-filtering-correlation-id: 4b5df9ef-086f-4586-133c-08db5b89c35c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QqX4YXHKy/0t11Lo/G6qlLc7nq+JpUesY+7f4qybhDFxxzQ6fDjecoVGQjhHpSt2uAsWPv8ZjIPe9dStKjH9M3a+oHXUZwWsIXQY0YJor50iIG4KjLBrIDvylcjlw4H70lM0nyMWP8r5JRF+ROPfFfo4OkQ12iJVka4C8PWt2up/m/mJaoAlmHuEyGa7IzOcA8aAGn8JYo7Pj9UFkClwAH+hnJQxmLp9j80CB1NZREuUKLpQp89rb+1t3x5w/IK+GiU+o/Hr4vKXlkb7yWySrKQub1QKXfwUzU8qUHqG7YM4Kjzn3y1y+hHalId73p9vZ5HO1L7GCIw26SLIWW8IAlQK+TKZq3LFAZDtH6qr7fmF/bysAV3dyW4G6HTIQddPmI3lLNs8FLO2zwfqdBirgRa8KoRrtuf/g0/vxKMfkMSbZIrIzGsgZDG1HmORpuKSdT+sOVAmrIQbvEKE9WIPxTG/I/8mcFvvholTyuQ86jkGwJ7wB8De8usK0UrutBxdv9eXojm2OgZbeHXVhhVbCx9nNb2IDMNEXJ6VkyWnG6hMp7WInHLx9I104LWwB5FDfWFSEcpqg+taBmaoh9XntmXub5z7VD4SjAyRg1SfsGbQ8lH3HQvNY9ddGZmZ7S7t
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(39860400002)(136003)(376002)(366004)(451199021)(186003)(6506007)(6512007)(26005)(122000001)(15650500001)(82960400001)(38100700002)(2616005)(36756003)(83380400001)(2906002)(316002)(71200400001)(66556008)(76116006)(66946007)(64756008)(4326008)(91956017)(66446008)(66476007)(41300700001)(6486002)(86362001)(110136005)(478600001)(38070700005)(8676002)(8936002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VExiYjQ3RDNyRnhOZHVFdmtkVGZNUWd3amNVRkViS2QyZ1RXUFlUVC8ya2s5?=
 =?utf-8?B?em5IdURzQjlqSmtWcWNDSXJFVGdHbmhCME9NUGkrUlhCTHZZKzhacm5TemtY?=
 =?utf-8?B?S2U4by93NXNHTGxZeFZJTWN4VzRSR1M4Y29uSXNTS3d6UVIvTTQ4aWJ6TVRt?=
 =?utf-8?B?SGoyaUI2UjQ0WkVhRzcycHdjMzJ1cEFTWXBDUHNLQm9HdXFOWFNQOUQ2WW1r?=
 =?utf-8?B?VGJsS2VGWndBZmN2ZFJLV2Q1b3IxcTY2L2o5Q01uUUgxbFVwdytaZmVMbTZD?=
 =?utf-8?B?dkFpVzFOdGRnVThlL2tWdk9IOFJWM3FaR3huRlRSQnQ4MWhyUEd5UEhGTWVP?=
 =?utf-8?B?dDdIT3ZLenkvVy9MRTFGZE9vQXR5ejZ5YmR5STdjYzhzWmlvcTRhbXVzNGUz?=
 =?utf-8?B?M0JtOUpoRVI1amFCR1dmK0s3akJ1bDF0VXMzMzA3ZjVkdzJZTm9NTDlPRGtG?=
 =?utf-8?B?Um1IUEtBUW5rOGJnTXlVZ1VIWFBabWhXSkhlZDdBVFlhRzNCbVE2a2ZlbmVi?=
 =?utf-8?B?Nm5Oay9PdmhBSk01VGFLRzNQM0RqWFQ4MXNRWmV3NjJRTFJvRmtvSlAvaitp?=
 =?utf-8?B?dVllcUJhOFpycTBLZVBIczc1UFdpaHRsMkh0NzRjSXI2cXBWbzhDUzkwa1Z0?=
 =?utf-8?B?YW8zcWpMY2pzdjBiNmtqYTJpcVo2OHhNMTA4ZHFUdjFBUVhZTC95Mk9taGp3?=
 =?utf-8?B?WkNaWUZvc0wwREFRclZTSURnUEhRWWp2dEpDQWc0YUFMbzBoMUNiUDRzZXVH?=
 =?utf-8?B?eXIrSUxxMCttbkZHWnZnTEVuSEtPUXdpeWs0dVcxT1NDUjFIS3BFcmJRUng0?=
 =?utf-8?B?K2s5QmUzczZnQ2tzdWRjOWV0RGp0dXlYVXk3aXgxNmkwczdkS0pvTEE0TlFk?=
 =?utf-8?B?ZlltU1hWQXp2WVRrZzRac3k1NDJ2bFEwNnBlOXFQSjM4NjZCamRPd2R2L0hj?=
 =?utf-8?B?WEk1R29FQVJ2WUw3eGZ5aG1MRHB3UnAveC90ZjMxM0lEYXFNNDE0VG9OMUZs?=
 =?utf-8?B?SW1BZUJRZlp4MDhsOXBUOE85N3ZZN0l3Y1Viay9SNDRFQW94UU5xdXhmUmU4?=
 =?utf-8?B?UVVoMm15RGdWUGMwcHRsQUJacWJjb1pLZFdEc1lxd2JFanJkVk9BNUFWQUtK?=
 =?utf-8?B?SjZoNS9wVlNUc1I1b3BtbHFVYy94b0I5VTIrclB4VnFzUTgrQmhIbGFLMU9Q?=
 =?utf-8?B?aWJoNW9JSm1GaGdNMUFsNEthbVY3Qlp5NUhFNUQ4UEkxeXBpaXc5R3dlVVRl?=
 =?utf-8?B?bGM4ekN4U0t5Y25KR0JDRTYxZEFicnkwRWIzREZ1aTdLMGppdE9oWmsyZ3Qx?=
 =?utf-8?B?Qk9OUEFkcDhjNDRBRmpIWWxqMUt5djdPVCtxTTJvOEJCWTlXN3RicDQ3MG1s?=
 =?utf-8?B?UXJBRFpJTnVDc1c0R1ZQM0xBdkx2a1JOUVV6WjRwN1Z2emdVWW10NG9xbHlW?=
 =?utf-8?B?TEtNRnhzd1dRcGFzWjNSR3dRc1kvZFhuK0Y3U3RJY1UwUWlCNEdTNW45ZnpS?=
 =?utf-8?B?VTV2b1NpT1VKUFdXdG4vd2lpMk1DVzVzbHNEVUhqRGVIb0hBdjVQemRJa3Vt?=
 =?utf-8?B?OUNVQnc3N0ttYUN0UXBaVUdCOG5LVHRQUGlad0xsb2taNER2U3FPTXNxN3FO?=
 =?utf-8?B?UFhYUHc5MzM1VkFCZ1NNUXBtZVdxb3I1OHZVMEdHZ0xEemNVZWpDU1diS1BQ?=
 =?utf-8?B?cU9qWUlPMit6Vm9ha1NmWUhpUTJjY0RxNVFBVUgzN3V3d3JoZUVvSGFoMWIy?=
 =?utf-8?B?WFpCaVhiTEJqaGhtZE1YS3pBYmRTZVhVQW1MQ2t0dGE3UHZyYm4vSDBWWWJI?=
 =?utf-8?B?YmtnUmxXbnNrRUhmTFJCb1FSR0ZPT2Vtbmh1V3dCQWoyaEdTSkFlOUNBNHRq?=
 =?utf-8?B?NTZScCtKNjl6OFF5U3RqcHJGRERicVJ4dDh0d1RIL09udnd0TUhOMzhuK3Bh?=
 =?utf-8?B?ZlFKZGNGbmdhMkVPNkdhbmM1K3dLUjZNK3BkVXJoMXMvU2M1VzZPdHFFWkVR?=
 =?utf-8?B?NWtLM25tcGtDSGxTQXNDZ2FmN3I4Rkhuclg3VElNeHZqZzBEUzdJSFpoa3Rn?=
 =?utf-8?B?MmR3NFl1aUlWZ002VDNVcDhSaUFkZnUzYUVKbnNPK3JISTNOUU5NT2pHVEw1?=
 =?utf-8?B?dGJMbzZYVzRwQ1lUYldXRVpMZy9ZU3dLTmNiV1dJaUM0VTBTUjg4ek1vV0dm?=
 =?utf-8?Q?JtG+ENObDodUt55AtKYIAKk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <065A937A0354F0458536AD337D03E818@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b5df9ef-086f-4586-133c-08db5b89c35c
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2023 12:32:24.9043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gKff6HdlT4JVgyi9rrMkDBS2AiX4Hd+d3uk+4AY5sEKS5WHV4kv43Rg8zVmZRdjB2BsDYb+yzEkhRkJJaTGXzNrAx9MLn5SeQBKC1rCPleA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5345
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 2/7] drm/i915: update the QGV point
 frequency calculations
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTA1LTIzIGF0IDEyOjAxICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAyMyBNYXkgMjAyMywgVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBp
bGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEZyb20gTVRMIG9ud3dhcmRzLCBwY29kZSBsb2Nr
cyB0aGUgUUdWIHBvaW50IGJhc2VkIG9uIHBlYWsgQlcgb2YNCj4gPiB0aGUgaW50ZW5kZWQgUUdW
IHBvaW50IHBhc3NlZCBieSB0aGUgZHJpdmVyLiBTbyB0aGUgcGVhayBCVw0KPiA+IGNhbGN1bGF0
aW9uIG11c3QgbWF0Y2ggdGhlIHZhbHVlIGV4cGVjdGVkIGJ5IHRoZSBwY29kZS4gVXBkYXRlDQo+
ID4gdGhlIGNhbGN1bGF0aW9ucyBhcyBwZXIgdGhlIEJzcGVjLg0KPiA+IA0KPiA+IHYyOiB1c2Ug
RElWX1JPVU5EXyogbWFjcm8gZm9yIHRoZSBjYWxjdWxhdGlvbnMgKFZpbGxlKQ0KPiA+IA0KPiA+
IEJzcGVjOiA2NDYzNg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFwaWxs
YWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBTdGFu
aXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gPiAtLS0N
Cj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyB8IDIgKy0NCj4g
PiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiBpbmRleCBhYjQw
NWM0OGNhM2EuLmM4MDc1YTM3YzNhYiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2J3LmMNCj4gPiBAQCAtMTgyLDcgKzE4Miw3IEBAIHN0YXRpYyBpbnQgbXRs
X3JlYWRfcWd2X3BvaW50X2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0K
PiA+IMKgwqDCoMKgwqDCoMKgwqB2YWwyID0gaW50ZWxfdW5jb3JlX3JlYWQoJmRldl9wcml2LT51
bmNvcmUsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBNVExfTUVNX1NTX0lORk9fUUdWX1BPSU5UX0hJR0gocG9pbnQp
KTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgZGNsayA9IFJFR19GSUVMRF9HRVQoTVRMX0RDTEtfTUFT
SywgdmFsKTsNCj4gPiAtwqDCoMKgwqDCoMKgwqBzcC0+ZGNsayA9IERJVl9ST1VORF9VUCgoMTY2
NjcgKiBkY2xrKSwgMTAwMCk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgc3AtPmRjbGsgPSBESVZfUk9V
TkRfQ0xPU0VTVCgxNjY2NyAqIGRjbGsgKyA1MDAsIDEwMDApOw0KPiANCj4gV2hhdCdzIHdpdGgg
dGhlICs1MDAgdGhlcmU/DQoNClRoaXMgaXMgd2hhdCBwY29kZSBleHBlY3RzLiBTb21laG93IHBj
b2RlIHVzZSB0aGlzIGZvcm11bGEgYW5kIHdlIGhhdmUgdG8gZXhhY3RseSBtYXRjaCB0aGlzLiBH
b3QNCnRoaXMgY29uZmlybWVkIGZyb20gQXJ0Lg0KDQpCUg0KVmlub2QNCg0KPiANCj4gQlIsDQo+
IEphbmkuDQo+IA0KPiANCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3AtPnRfcnAgPSBSRUdfRklFTERf
R0VUKE1UTF9UUlBfTUFTSywgdmFsKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3AtPnRfcmNkID0g
UkVHX0ZJRUxEX0dFVChNVExfVFJDRF9NQVNLLCB2YWwpOw0KPiANCg0K
