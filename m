Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DECE46E5DD4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 11:47:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9598A10E71A;
	Tue, 18 Apr 2023 09:47:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FBB710E71A
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 09:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681811258; x=1713347258;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=9M6J69SD+ZtyBgL2whMqnHQIhSOYQ7Gkn/EgOJSdRqQ=;
 b=MDcHc+rCQ6Lim3pqixzZ5gJMdXuVJ/m90xwNzcK4XblPNQMv0W4yL/CL
 oeEWK+8/W+XHRNYQyGL/W9bVQtzY5zBzqtQjzTHqgCgag9LSNTI8JgWa4
 WEIHrMKpoIrAOC9D7R3mvGj+VHEF5rNuEMqHGApgX1j3p/DZOmxYwW8Qe
 tpn4YUwU+NsYCUdQKQsD4zfaMuna0R1zSRAMLUt8elnAt+uRxnmIrWqfy
 4wHpTIjmUcB0+0WSV6g8RUHNXL6yDHvYWUV5MQH6GOJefxDp/RFMzuTXA
 +UCdXH26UC52+qfarYYS3TKGOJiBx9jmU8fK7ranIeBpJ5TQPXX8HRWgE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="431410992"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="431410992"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 02:47:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="668453765"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="668453765"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 18 Apr 2023 02:47:37 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 02:47:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 02:47:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 02:47:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hrIOyOzcdIo+PVLbq+UjzD4nSGNJomw481va49LA5E/+GYp11X+F9+w6QS06Pl18DLmzU4XosnnTuZhYqPH+csFA5oClGsFUXgZHxOFwIs7Nn0nDueKBkVQe4Z65S9Z777siEmapXyRfFfE8WWARZYwzgkTfwhyjWNeF0yxVHuAh0TyJ5q291iKmzsrU7oGzniFhEqHp8qkMO7dgfMNe+m3G2vEqw5RUztaGBBhlNrNu5QXcL4aoD2enEifemXvZrbfDwIk9Se6Uow8LPK5D6UPortA/J4f87AxmlOBpj5LHHDaspMNJRRvp/YJpwP9uaqzLztx+rLfVVo82mJ9aGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9M6J69SD+ZtyBgL2whMqnHQIhSOYQ7Gkn/EgOJSdRqQ=;
 b=HokmDgF0fj6+q0TkmqVOFZvxJNL14n2LoljbUp9sPPybU9cHqGnNN4MbgKz4wsHEh3dDnPEJcDw+OWsVRhrGIMhg6UzZ1x1WiEFEPRwvAR1/VLaJvAUGcMvfgUcqwT0VKrnsCJLKtN1os5X6XfpI5Rjwnf1wkbqDKppQHrW4zxz5N4H/DtD6H2yl3w7PjEes0ExaLBviH+2ZHzT8lvHxt8z0Z4kKX7byRDYw1JLQNZ8krZk7bfbiPiaHYruBmKhTjInT3pa0F0uWDpb7z3ZEHImRzwpBtJbazJlbBBLEeme8nWG1nYQKRh6f8uITOZWR8GYeF8QPv9CyMQw1EvaE9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by IA0PR11MB7752.namprd11.prod.outlook.com (2603:10b6:208:442::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Tue, 18 Apr
 2023 09:47:33 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::7fc4:d6bc:d221:261]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::7fc4:d6bc:d221:261%6]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 09:47:33 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [PATCH v1 2/4] drm/i915: update the QGV point frequency
 calculations
Thread-Index: AQHZcde1C9DRsWSiMkKvg9y6NotFt68w0eUA
Date: Tue, 18 Apr 2023 09:47:33 +0000
Message-ID: <80a85782de098549f583051c86f01801add8564a.camel@intel.com>
References: <20230416155417.174418-1-vinod.govindapillai@intel.com>
 <20230416155417.174418-3-vinod.govindapillai@intel.com>
 <ZD5h7NSuDBQICMAx@intel.com>
In-Reply-To: <ZD5h7NSuDBQICMAx@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|IA0PR11MB7752:EE_
x-ms-office365-filtering-correlation-id: ad3e57d9-02e5-4d15-09ec-08db3ff1ef2d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hz4Dvr0fORBL11bWetHzBP7HnC0Eb4tGOIEoNcHw6TyynRWFKAbyceLN4yFo0JOkXAtzPjcJqh/B1dWyNRnnR1nJQX5vn3EvGsMyb0JvblSuDDXiXI6/0/gReQgvrROutNRjrWhI+5pUqp9TzGqIAal4Sxv4kqp8GK5MNBSDTLwRDQ4zLNf3K6vHREO/inkthORFkr2d7ZUg+4KUnK9Gu/p/qGPj9Kpww8OkiVSrmmDjPPUgRGEtsCH+FVCvzDx/OmBx/g9E1thDJ8VKmdAkIcPIxQlWcLMM92RA1Nh/t0ZrN8vzh2jcdsjwzuLPazmF4n+DS4I1wki3hXBOd1or45hmh8DG9jssZ8GksXAuJAyLiDz4JMV2Ba1JoLCTHpONlvE6Zl/b825txnFgKIAnjkoLPmGrmW+6jnGXTHsCmmbTT6OsMkcdTu5iKNUJT0Aq4crmrOFBl2ObUBPrOxiNGdBWhz4d3j01xWRdWJctIaklzAVndHrN8rgTWwqOnHoTJp4MrrTPFr/jgF6ovxmKRze8T2ah66Qx/GcmFv+rBtRW0W6tsXdhBh6Iadab7IsC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(396003)(39860400002)(346002)(376002)(451199021)(71200400001)(54906003)(6506007)(2616005)(91956017)(6636002)(966005)(186003)(83380400001)(6486002)(478600001)(37006003)(26005)(6512007)(107886003)(64756008)(316002)(122000001)(15650500001)(76116006)(38100700002)(2906002)(36756003)(5660300002)(8676002)(38070700005)(66556008)(66476007)(66446008)(4326008)(41300700001)(82960400001)(66946007)(6862004)(8936002)(86362001)(66899021);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d054cm5xcjQ1UE9uYWJqMW5RM3p6M1lpUC9LT3hscWptd2RyWTJ4bmo2M08x?=
 =?utf-8?B?dWZYNEVNMVhHenNXTHNCOEJqVWtoa3kyZysvL0hvUTR0cmF3RmhvTUx1cHYz?=
 =?utf-8?B?L0E0REY5Y1JRaFJzeDFhU01ZWEhQdU9YYk9ReERENW9HaDNRY0crV0ZjaTlm?=
 =?utf-8?B?VHJ0d0VlYmdRM2RHMm9HQTgzQTdtdUVHY0N3akpiY0g1eUF0Y21qOE4yTkkr?=
 =?utf-8?B?VU1sY0wwUk9PeHB3ZHgrc21pM01XQzJYRWMrTmk2QUduL2wyWWRTU1JPT21F?=
 =?utf-8?B?b3JJZS90MnN2YmpQSTVtRnNPQitIeVVwRWQvM0ZEVnFHWlNRNzladGRpMGdl?=
 =?utf-8?B?UEN5NVNJNmtndUpjYk95cml5bnBCcHBvOWt2VzhUc2tXeHVPYjBwaDBZd3Nj?=
 =?utf-8?B?Vm41NmNuRE1DSVo3dmdqU0tacy81V05GMktFUXUvVjRTODd6blpLeHdaVStu?=
 =?utf-8?B?dmRFRm13ek1mVDdJZFJFc1pkYXRwbWJ2NkZOOHN2MU5PSGY2Wk5wdm53WStK?=
 =?utf-8?B?cWwrUlhBRyttTnhlc211U2g2aUMzOVJMZXZ5S0tNR0Z2MEtoSXZYVC8xSEJw?=
 =?utf-8?B?eFhuVGNncFdVYWVlQzNQZXlXYUNLWkhXOFVyeWY0UG5GS050SEFncmZJZUNu?=
 =?utf-8?B?clZIc3Ywc2tuYisyUVBGOUZZRVhFb09RZFhIREFVS2FtRnltV1lySzJpRTEw?=
 =?utf-8?B?SVprN3VxQlVaekRxeWxKa0pLTUJJSWl4cjVtdk1HaWxyM0w3NVcrcEJlcHFq?=
 =?utf-8?B?bFdaWk9hYmg2SDNvTmFBeXZNWEtja2U1SU5BT2FBVGp4VVlXQ0d5WVVnMkd0?=
 =?utf-8?B?VXNqVDcySlZxZDVYZGY3MGU5cXU1NXBGUmJ4RUhUOSt1elVyRlJ3SzdhNlhi?=
 =?utf-8?B?T1g1OXFOVU04aUhnVlRySnVvRmIrUWJyeS90QmZRRDh2RWtNekpwM2cxelFG?=
 =?utf-8?B?QXpjMDM1aWt4NklFWEEvaGtWdDhORHJmL21mYmZobXlDZWdTS2NKeDE1Nys4?=
 =?utf-8?B?WDRKdTl2SDRsd2NkODVtZjcyRWdERjlkUG5HMk9YaG5oaXVZeCt3c09sYUtB?=
 =?utf-8?B?UkhicjNJV0Z6WVlYMlMrb3Rla2t6aGtod1hkUkM5Si9rUnFLaEJoalNyblhn?=
 =?utf-8?B?bVVhUk9kZmhuNXpzQWpuOUlqODJyblN6bG5JZzdtMjJqWjhQRGhsOFJnN0lZ?=
 =?utf-8?B?VUdubWx0b0FuWDdDZFdvSW5UYmM5dU5wZjhOOEZyNnhaL1JTSFFQYnlJd1Mx?=
 =?utf-8?B?eU5HZGdqd1dRTnJ2alo1NDFibVduRXIzVjd1ZDNWSFJoSEs1MHBXQm9UdG1Y?=
 =?utf-8?B?VUh2NW9XUjRvZkYyVnBTdy9kakg4MlFQbDVLSkNjTzM5aER2eWEyZHBUdGhF?=
 =?utf-8?B?cGxXSlRMWXlHVmhWMmhDS3RmUVUzSmRMdWZKaFJmelFjTTZLR2pMTlpudUVV?=
 =?utf-8?B?NkhjQ0U4NE9hNlBqUWZweHlnMEFGRzVuMmhyMDVnR0crNjZjVHB3aGQ3N1cx?=
 =?utf-8?B?RDlKZ0ozb0JXbDFzYVlXclNVOWltYjZ5dnp0R0VQUHdNMGs3T2FjQU45UXdU?=
 =?utf-8?B?TU5vd1lIcUh6UFNQSzhkNE95NlBROG80R3p0ZDRRMTluUjNqWjFCTGhnWng5?=
 =?utf-8?B?TXRGR1dtV3VsL2JWcWc0SHd3TEtwV005TkxMNVM0bkRHOGdJcTAvRTJOZXRX?=
 =?utf-8?B?cFZxYnY1Yk9FUE5VdGJCdGVoZ09EekFuVitYKzQ2eEh2clhySi9LSzhlVlhn?=
 =?utf-8?B?WlVWVFFZZGE0L1lTeVBoRi8rN21VYjVjWkpwNWVpaEFPZWNhMnczWk9rNEoy?=
 =?utf-8?B?eU9jQVVKeEFoclM5V3Vwei9wbnJuUmNmVzV1K0FnNENEUW5zd0pFeE45RVhN?=
 =?utf-8?B?VEdscUdjOGdWTmFTY1Z3OXN5UWIzSUVoN3ZFMS9heTdham9QdUJ5bmRGTzhM?=
 =?utf-8?B?RitBNW9Deno1Z2tEZll2dStBK2lTVENkOGtuejhxV25VRnBZR0k1eUdzNExj?=
 =?utf-8?B?QTQrazhWRW5MWWZYKzMzYSs4OERmblBpR3ZacFZZcU5hV1NLTlp5dmh2YndO?=
 =?utf-8?B?RDFQSCtyOWpSYnNJQ3plU1Q4UDJDUlBsd3NsSHJKcmpNTE5IMWRHcXdqcEsx?=
 =?utf-8?B?WTQxVUdDRnVYelBVRHczUi9BU3pHMjVsY2lRRlUvWnhoekhuMmJwM0tCQmNI?=
 =?utf-8?Q?wzYGoYVk5rmpcmt7CK+gfDg=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6D0EF1C9D73EBB46A84A650A978D37B5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad3e57d9-02e5-4d15-09ec-08db3ff1ef2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2023 09:47:33.4814 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WdEirF/2/Zyg4IQV3PpvU65ZXCO87FG9JP4i1QsBcc2QpO5Mc3K0LKdKBtFwoOu16m/4B7KgJHPddGCDpkvvh2yTwoBp8GM3kD0eg3p3hZs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7752
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 2/4] drm/i915: update the QGV point
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTA0LTE4IGF0IDEyOjI1ICswMzAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gU3VuLCBBcHIgMTYsIDIwMjMgYXQgMDY6NTQ6MTVQTSArMDMwMCwgVmlub2Qg
R292aW5kYXBpbGxhaSB3cm90ZToNCj4gPiBGcm9tIE1UTCBvbnd3YXJkcywgcGNvZGUgbG9ja3Mg
dGhlIFFHViBwb2ludCBiYXNlZCBvbiBwZWFrIEJXIG9mDQo+ID4gdGhlIGludGVuZGVkIFFHViBw
b2ludCBwYXNzZWQgYnkgdGhlIGRyaXZlci4gU28gdGhlIHBlYWsgQlcNCj4gPiBjYWxjdWxhdGlv
biBtdXN0IG1hdGNoIHRoZSB2YWx1ZSBleHBlY3RlZCBieSB0aGUgcGNvZGUuIFVwZGF0ZQ0KPiA+
IHRoZSBjYWxjdWxhdGlvbnMgYXMgcGVyIHRoZSBCc3BlYy4NCj4gPiANCj4gPiBCc3BlYzogNjQ2
MzYNCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5n
b3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYncuYyB8IDIgKy0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2J3LmMNCj4gPiBpbmRleCA1ZmE1OTliMDRjYTUuLjU3ZjgyMDQxNjJkZCAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gPiBA
QCAtMTc5LDcgKzE3OSw3IEBAIHN0YXRpYyBpbnQgbXRsX3JlYWRfcWd2X3BvaW50X2luZm8oc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+IMKgwqDCoMKgwqDCoMKgwqB2YWwy
ID0gaW50ZWxfdW5jb3JlX3JlYWQoJmRldl9wcml2LT51bmNvcmUsDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBNVExf
TUVNX1NTX0lORk9fUUdWX1BPSU5UX0hJR0gocG9pbnQpKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
ZGNsayA9IFJFR19GSUVMRF9HRVQoTVRMX0RDTEtfTUFTSywgdmFsKTsNCj4gPiAtwqDCoMKgwqDC
oMKgwqBzcC0+ZGNsayA9IERJVl9ST1VORF9VUCgoMTY2NjcgKiBkY2xrKSwgMTAwMCk7DQo+ID4g
K8KgwqDCoMKgwqDCoMKgc3AtPmRjbGsgPSAoMTY2NjcgKiBkY2xrICsgNTAwKSAvIDEwMDA7DQo+
IA0KPiBIbW0sIHdvbmRlciBkb2VzIGl0IGF0IGxlYXN0IHBhcnRseSBub3cgaW50ZXJzZWN0cyB3
aXRoIHdoYXQgSSdtIGRvaW5nIGluIA0KPiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvc2VyaWVzLzExNDk4Mi8NCj4gDQo+IEkgcmVtZW1iZXIgd2Ugd2VyZSBkaXNjdXNzaW5nIGlm
IHRoaXMgIis1MDAiIGlzIGFjdHVhbGx5IGFsc28gcm91bmRpbmcgdXANCj4gaXRzZWxmLg0KPiAN
Cj4gVGhlIHRoaW5nIGlzIHRoYXQgdGhlIHdheSBob3cgcm91bmRpbmcgdXAgaXMgZG9uZSBmb3Ig
aW5zdGFuY2UgaW4gRElWX1JPVU5EX1VQDQo+IGFsc28sIGlmIHlvdSBjaGVjaywgaWYgeW91IGxl
dHMgc2F5IHdhbnQgdG8gZGl2aWRlIG4gYnkgZCwgaG93ZXZlciB5b3Ugd2FudCB0byByb3VuZA0K
PiB1cCB0aGUgcmVzdWx0LCB5b3UgYWRkIG4gPSBuICsgKGQgLSAxKSBhbmQgdGhlbiBkaXZpZGUg
YnkgZC4gVGhpcyBpcyBob3cgRElWX1JPVU5EX1VQIHdvcmtzLg0KPiBUaGF0IGVmZmVjdGl2ZWx5
IG1lYW5zIHRoYXQgaWYgbiB3b3VsZCBiZSBhbnl0aGluZyBtb3JlIHRoYW4gbSpkLCByZXN1bHQg
d291bGQgYmUgbm90IG0sDQo+IGJ1dCBtICsgMShub3RlIGZsb29yaW5nIHdvdWxkIGdpdmUgbSkN
Cj4gDQo+IEFkZGluZyA1MDAsIHdoZW4gZGl2aWRpbmcgYnkgMTAwMCBpcyBhbHNvIHJvdWRpbmcg
dXAsIGhvd2V2ZXIgaXQgaXMgYSBiaXQgd2Vha2VyLg0KPiBJbiBleGFtcGxlIGFib3ZlIHRoYXQg
d291bGQgbWVhbiwgaWYgd2Ugd2FudCB0byBkaXZpZGUgbiBieSBkLCB3ZSBmaXJzdCBhZGQgbiA9
IG4gKyBkIC8gMg0KPiBhbmQgdGhlbiBkaXZpZGUgYnkgZC4NCj4gVGhhdCBlZmZlY3RpdmVseSBt
ZWFucyB0aGF0IGlmIG4gd291bGQgYmUgYW55dGhpbmcgbW9yZSB0aGFuIG0qZCArIDUwMCwgcmVz
dWx0IHdvdWxkIG5vdCBtLA0KPiBidXQgYWdhaW4gbSArIDEoYWdhaW4gbm90ZSwgdGhhdCB0cnVl
IGZsb29laW5nIHdvdWxkIGhhdmUgZ2l2ZW4gbSwgbm90IG0gKyAxKQ0KPiANCj4gU28gaXQgaXMg
c3RpbGwgcm91bmRpbmcgdXAsIGJ1dCBqdXN0IGJlaW5nIHdlYWtlci9sZXNzIHByZWNpc2UgdGhv
dWdoLg0KPiANCj4gSWYgd2Ugd291bGQgd2FudCB0byB0cnVseSBmbG9vciB0aGF0IGRpdmlzaW9u
LCB3ZSB3b3VsZCB3YW50IHRvIGdldCBtLCBidXQgbm90IG0gKyAxIGZyb20NCj4gYWJvdmUgZXhh
bXBsZXMsIHdoaWNoIG1lYW5zIHRoYXQgd2Ugc2hvdWxkIGp1c3QgZGl2aWRlIG4gLyBkLCB3aXRo
b3V0IGFkZGluZyBhbnl0aGluZy4NCj4gU28gaW4gbXkgb3BpbmlvbiwgaWYgd2Ugd2FudCB0byBm
bG9vciAoMTY2NjcgKiBkY2xrIC8gMTAwMCkgcmVzdWx0IC0gaXQgc2hvdWxkIG5vdCBoYXZlDQo+
IGJvdGggIkRJVl9ST1VORF9VUCIgYW5kICIgKyA1MDAiIHRoaW5ncyAtIHRoYXRzIHdoYXQgSSd2
ZSBkb25lIGluIHNlcmllcyB3aGljaCBhbHNvIHdhcyB0b3VjaGluZw0KPiB0aGlzIGNvZGUgYXMg
d2VsbC4NCj4gDQo+IEkgdGhpbmsgaXQgd291bGQgYmUgbmljZSB0byByYWlzZSBpc3N1ZSBhbmQg
Y2xhcmlmeSBmcm9tIEhXIHRlYW0sIGlmIGl0IHdhcyBpbml0aWFsIGludGVudGlvbiwNCj4gYmVj
YXVzZSBhZGRpbmcgKyA1MDAgaXMgY2xlYXJseSBkb2luZyByb3VuZGluZyB1cCBhcyB3ZWxsLCBi
dXQgaXQgaXMganVzdCBub3cgb24gKy01MDAoZC8yKQ0KPiBncmFudWxhcml0eSBub3csDQo+IHdo
aWxlIERJVl9ST1VORF9VUCB3b3JrZWQgd2l0aCArLTEgZ3JhbnVsYXJpdHkuIEhvd2V2ZXIgYm90
aCB0aGluZ3MgYXJlIGVzc2VudGlhbGx5ICJyb3VuZGluZyB1cCIuDQo+IFNvIGluIHRoYXQgY2Fz
ZSBJIHdvdWxkIHJlYWxseSB3YW50IHRvIGNoYWxsZW5nZSBvciBjbGFyaWZ5LCB3aGF0IGlzIHdy
aXR0ZW4gaW4gQlNwZWMuDQo+IA0KPiBTdGFuDQoNClllcy4gTm90IG11Y2ggZXhwbGFuYXRpb24g
YWJvdXQgdGhlIGFkZGl0aW9uIG9mIDUwMC4gSSBqdXN0IGJsaW5kbHkgZm9sbG93ZWQgd2hhdCB3
YXMgaW4gdGhhdCBCc3BlYy4NClllcyBpZGVhbGx5IGRpdiByb3VuZF91cCBpcyAobiArIGQgLTEp
IC8gZC4gU28gd2hhdCBpcyB0aGUgcG9pbnQgb2YgaGF2aW5nIDUwMCBpZiB0aGUgcHVycG9zZSBp
cyBhDQpyb3VuZGluZyB1cCB1bmxlc3MgaXQgaXMgYWNjb3VudGluZyBmb3Igc29tZSAib3RoZXIi
IGZhY3Rvci4gQW55d2F5IGl0IGlzIG5pY2UgdG8gZ2V0IHRoZQ0KY2xhcmlmaWNhdGlvbi4NCg0K
U28gdGhlICJvdGhlciIgZmFjdG9yIEkgYXNzdW1lIGlzIHRoYXQgcGNvZGUgaXMgdXNpbmcgdGhp
cyBmb3JtdWxhIHRvIGNhbGN1bGF0ZSBRR1YgcG9pbnQgcGVhayBCVy4NClNvIGluIE1UTCBhcyB3
ZSBwYXNzIHRoaXMgcGVhayBCVyB0byBwY29kZSBmb3IgY29tcGFyZSBhbmQgc2VsZWN0IHRoZSBR
R1YgcG9pbnQsIGRyaXZlciBhbmQgcGNvZGUNCmNhbGN1bGF0aW9ucyBuZWVkIHRvIG1hdGNoLiAN
Cg0KQlINClZpbm9kDQo+IA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzcC0+dF9ycCA9IFJFR19GSUVM
RF9HRVQoTVRMX1RSUF9NQVNLLCB2YWwpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzcC0+dF9yY2Qg
PSBSRUdfRklFTERfR0VUKE1UTF9UUkNEX01BU0ssIHZhbCk7DQo+ID4gwqANCj4gPiAtLSANCj4g
PiAyLjM0LjENCj4gPiANCg0K
