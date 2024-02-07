Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E54984CBDE
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 14:45:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D36F10E7B3;
	Wed,  7 Feb 2024 13:45:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GipUutrX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 412B410ED84
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 13:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707313520; x=1738849520;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=NYgdIHJ1SMWQeuVQgkeGnu/w+GFudJ2Jc1uw3U8GKXA=;
 b=GipUutrXwtp9KgVQolbMpvyqjTaj7EfdiisUHbVKjzuvlCyS8klCM2YY
 8IS+BtU7xZ1hQUE9jOcon7yyeOYQjbGri3m0vUIrms2fCpSLOpvlMkvIq
 ttSe7kMbBkNWquCAnrZjKHAbOef+0TAXb9JOuTf5T7fnOvGxQlfqEhmVs
 IAsMZfBC5xOx8OgTffEGFf4tBKojNk8jvFO577nWxyzbb5ireJrvnA6bn
 KyasRBxMbKXM8il/VkxdGxggdK9djbQUa1bvVrQuyLipJZC0cDcea2d6N
 x5X/SjsNz60fbWB3IR6krVsoyK+Pc6TJc70Yf/xPaqhvY/NeF9+W3e1LC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="18501886"
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; d="scan'208";a="18501886"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 05:45:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,251,1701158400"; 
   d="scan'208";a="1643136"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2024 05:45:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 7 Feb 2024 05:45:18 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 7 Feb 2024 05:45:18 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 7 Feb 2024 05:45:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cdh8gQLYCawRpAJvVpulNXBsiPkMwFd9DFdxQs0ejrb2+YYzm7XNlb8JUwzQPmBxv7Dp0mzsDD/L07/On/4lKn4BKaI/V7AWvgnk/GeVad0gUItnEij9BPapwftEM6NSzrfSvT8+kS9R/i7dTXW9XkoXi/pAhdnIFTtp+DYRnA6apHi/elbyZ2YZ3u0bZaj+I6Lnf9lmrFtWGjQX+QFPmj1kDa7EUyDTNoU1HOfbe+9VZshVDeycp2Eq7ZpKk1m1jlhYXU1vGWuyndD9Q4dEfMscx7FidG9/5Mlk59Ox7DwArVVWsybXeD8bFv2x0SNiaslSVZWF1ewxvJFYj85HdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NYgdIHJ1SMWQeuVQgkeGnu/w+GFudJ2Jc1uw3U8GKXA=;
 b=MXjA6M9ku126XMA3who0hIm8Z00WIZnmEsxDpxcWkJy0HhwXQ/k/C3yDqwUNIVkvZn1k2GMxOsGYrqkseHeeYZBWmlUdvqDJuABKFPKiOC1eR5VoaKSOiJE74weg1M3UJ2drw4YmnrkEgC6Uo7YA/D/yaV4hRbo3ae+/prJkHAV8evLPCtOXq1fHe/eTdLianVo4VEhlPe7Qqv5KKIq8lAD5LhWClVleifjxo+ka8MH2/kaPdOPeRpXUV/dE2UZAuz2X6oRPjHJX9BBKBjKGzBNE1HjjnlrbDYmMF9vxBa15WO1RSQHW64i9GnmjFk61Jo2Np/w6O2FqofwiR049sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ2PR11MB7574.namprd11.prod.outlook.com (2603:10b6:a03:4ca::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Wed, 7 Feb
 2024 13:45:15 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7249.037; Wed, 7 Feb 2024
 13:45:15 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 1/2] drm/i915: Prevent HW access during init from SDVO TV
 get_modes hook
Thread-Topic: [PATCH 1/2] drm/i915: Prevent HW access during init from SDVO TV
 get_modes hook
Thread-Index: AQHaWRKwjV0b7aKvkEOcrObXXnc/m7D+4GWAgAAFNgA=
Date: Wed, 7 Feb 2024 13:45:15 +0000
Message-ID: <236599ca2b3982045a2515d4eaef16a2f23cefd5.camel@intel.com>
References: <20240206153910.1758057-1-imre.deak@intel.com>
 <20240206153910.1758057-2-imre.deak@intel.com>
 <47fac05618fb85725f9c0cfa694fb601c82b2a7f.camel@intel.com>
In-Reply-To: <47fac05618fb85725f9c0cfa694fb601c82b2a7f.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ2PR11MB7574:EE_
x-ms-office365-filtering-correlation-id: d9d8c997-1335-4b64-e52a-08dc27e303de
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5rt12G0bf2mXKpqkyAclIMavagqc0x+RvFIhDOOTIEfJ7o/2KqsfMeBlyleH3825HmbZKlSVMrpSONwUNu8037696VTh+++zGjYhZQEKVIX1KnW1f71plgOAf/eEYnGxiVjsv2Psvo10vDK4HLZTHL8S4Ko2SVBRMIQQc1c9Zky9ya5SkR+uK6989kerNftzM0sme2m39L75uoJOWz+TaO49v6zi+Y6d6XW/u/m0TYqWIhgTFUoTtJi8nH1Pdakshj1FT0eeFHW2yhSy5EZjLsNngjeCOT7dAcJ5axju5+MV60pvS+rL/d+XMM7yoIsCfRIhn5YL5PG4fLpZXqDKKJKe5JnyPn3CQS9gPo+oMxWc3HkkONbdmSmCD9qcAckyVZLObWbLh9W9saztjHMA6vmOjOm7MV+gv0WN/O1qSSEm9ehLkBcSEGKYgDkli4aI4keujUU4rxqGwQOgIlNqNnX4hqe0n2cONvJQaCqwrmSsbsDGCsgLwRMPYq+sfAC68syWSYz0yKgVMxPe4a4FV2V3jBzMjFPyiztEDOC64olVhvy7CIRo2YM6zi5aXDm8Y86/mJhunuGrMz+nyzyg/xclpGI0ngGggQjynDsldFmjMoOB6O+ZoIpzTOGnmPZQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(346002)(39860400002)(396003)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(110136005)(6512007)(478600001)(6506007)(66476007)(66946007)(66556008)(66446008)(6486002)(71200400001)(76116006)(26005)(2616005)(83380400001)(66574015)(64756008)(41300700001)(5660300002)(6636002)(316002)(8936002)(2906002)(8676002)(86362001)(36756003)(38070700009)(82960400001)(122000001)(38100700002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bmhRcE83QmNkNnZwNVlUajZBT0YvM1pyRzVrOXBOS1l4RnMvbFl4V2wweUFw?=
 =?utf-8?B?Y0pBWVo3bTNMWTFYaE5BWUFVeWkzNmJIME9NaTFpdDNhMzhRTllPdGZ4Z0dY?=
 =?utf-8?B?RS91eE1tSTZOWGdhWE1UQjNDYk5nWERDRDZuQ3owU0k3YlEzVktCVDlFU3NJ?=
 =?utf-8?B?N0p1WklrZnR3VTBMUWJaNVNNUWhYc1ZjeDdNaE9LaE9NeFl2NUdtNG4veGts?=
 =?utf-8?B?UXV4Sk1IZjZXRjlsUTJDa2tMdUc1TWdqZ1ZNU2s2d1h0YUVVaGtCOWhOY1RK?=
 =?utf-8?B?ZHZ4SVR5RVlxTXExZnFBUVoxUXhtbUIxMkFkUWhSMG5qOEd0Y0xZUEdZTjlT?=
 =?utf-8?B?cTcrUE5TNGdOTHRRWnY2K2l2TjhhZThETzlMQTVQU1BEMCtraS9VTVl5Z2ZQ?=
 =?utf-8?B?WndSc2Mrd3NjSmMwWVBmb0VxSFBZUDI5dExsdlduSWZzSWtzVHlmTG1QVU90?=
 =?utf-8?B?dGtIeTNJQXAyVXRHRWVDYldQSkoyZStvdDQyaW85ejFuR0FtaGZNQ1drM0FQ?=
 =?utf-8?B?ejd6TnhBVzBPUC9XSEpVU2hTVWw2eUIzVU9iODN1em5ZSWdzYkc0dHRnV09o?=
 =?utf-8?B?UFV6M3ZwSkt5M291bzdwaEhqODY2ZkF3RXVreTVXM1gyNmlFV05Seno2SGRz?=
 =?utf-8?B?eEZZMzg0NVdLV0t5Q2VLRWx4R2tRVTFscXNta2Noc2hPNnR1R0pwK2M5eFhC?=
 =?utf-8?B?a0VBYjltM1JoTnB6Q3dQRVcvbzJIY2JhSU5LN3c4RTB6bTZqV2l3Umg1VURT?=
 =?utf-8?B?WDA0VUc0ZXdOWHpDR00rR0FqSmZEZ08vYzB1bzY0YW42bkMvNWNubGZIekJy?=
 =?utf-8?B?Q3Y5dUQ4bUhJS3ZIeDFQSDAwNDFiZXRXNXlPNThmRUk5b0VxTXQxaWZuL05v?=
 =?utf-8?B?YTJIWDBMTUlxNUhTeFI1N2MvM0lYbGNaa3gyUExhWTFYY2E5TzBYT1hIN2dU?=
 =?utf-8?B?UWRuaDRwTGlLSldzQXd2MlJGZ1BjV1FLNTd4ZHR1czArR2JLNWVwb29jWUJC?=
 =?utf-8?B?Y0dTTHpuTm1sbGdkbHVCWVVjNlNsalJBMldHd0VUWDZXd2h6N01GMkpWMjdR?=
 =?utf-8?B?YUw3bDRIRkR1dHNlL3BHWk1nY2FnNFR4Sk5kT0J2UEN5Si9pSkpOdGR2YXdO?=
 =?utf-8?B?VXRMeSs3cFJNTGhjMkFVU2E2T0ZZR1UzT2JEckMvRmsxQ2g4WUp1NFU0UEVn?=
 =?utf-8?B?VDRyQWtMV2ZvOG15VkhxVCtSRDY3UkE3aFNFd1ZVZW5rd0JpcVRueVMzZkd5?=
 =?utf-8?B?TlkrcjY4Nm1FUHpDRjFIR3Y2U1d3UW0xWlB4NVlDSlJUM1JyNkFHalRsUFlm?=
 =?utf-8?B?NXMyejQwbDJuRlJZcUdrdXNtY0lKaGpzRW8xdWFNa1Z6K1lBSFRSQUdhR2RP?=
 =?utf-8?B?cmJNNGcvcFdtOE9CdXY1UUF1cmYva0FCWVlqMCtSOHB4QjhaOEpBbExGQzRu?=
 =?utf-8?B?UFNTcDNSUGtWNzRqZ2hrMDVESWZucXdSTDNNVmhOeTdKNDNtNktOUXlKbndL?=
 =?utf-8?B?bjVSeitBSHprYXJEZXE2WUxDSXpMaEVWaklYUzloM2pxYjJMRW9QOExwek5F?=
 =?utf-8?B?eFFESFh2TUQ3N25jZlY4T05maXI0anozN0gvMzUxaVNPUnZjWXNoblJ3ajB3?=
 =?utf-8?B?UWw1Z2hYdXA4dlgybkwvM0xVVnNwNER1UHEvOHh6OTZHa2pndHovc3o1Mmw0?=
 =?utf-8?B?UG90Y3d1N3Vabkw4SU50blY2RERjOHk2VGJkMkQyWnVRS3RodmdOdkxFRVQ3?=
 =?utf-8?B?V1JXRmNKay9sTGZVaStpdDZ6SnpLd2xtR3hXZFlNbm9VVUdaMXVMdDdIbDRi?=
 =?utf-8?B?WHlQRWdueW1jeGI3NGhuejFZTjA3WHpCellaUmdUMm9xVnd5dWdFMUQxV0Er?=
 =?utf-8?B?Rll2NmdWZ0VFSnVKNi92ZlRCR01pYUUzNjNGK08xalUxZm9mZ1N1TnJNSVhL?=
 =?utf-8?B?YVk2VEhFU09HVVR6NXI3ajBEbjhKSk9oaDNPT1BqcUVodGd4cFRtZGdEeVp1?=
 =?utf-8?B?d045RFg4dk5ZdnR1YjVLMXNUMnBPdEY2ZjZSUUkvQTVpRUdyVW9WNnRhbDJh?=
 =?utf-8?B?aU1uUVRiaERJSjJmZ0JNcnNOak1aWVN4bVVzajIreE1yUFYxRjB1VnZJUGFJ?=
 =?utf-8?B?RjJHM0FIcTF6bWtTRlpZUkt5ejVMTUV4aXAxNDcxWXJld2U2R3czd2JTQ1Jn?=
 =?utf-8?B?SlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E3774C8C87BB2448939FFD964B0D3750@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9d8c997-1335-4b64-e52a-08dc27e303de
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2024 13:45:15.5405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: f1zWjytvBTQF31P0b9ItqqC3IW9p7ksWKY4dIu2/C3fJ9+oehKT3MJkRecxoA5ugTH0ejBN8FtbRFa85TO4Pirwm1ADDgJkbB/a3jJoRaMk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7574
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

T24gV2VkLCAyMDI0LTAyLTA3IGF0IDE1OjI2ICswMjAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFR1ZSwgMjAyNC0wMi0wNiBhdCAxNzozOSArMDIwMCwgSW1yZSBEZWFrIHdyb3RlOg0K
PiA+IFByZXZlbnQgYWNjZXNzaW5nIHRoZSBIVyBmcm9tIHRoZSBTRFZPL1RWIGdldF9tb2RlcyBj
b25uZWN0b3IgaG9vay4NCj4gPiBSZXR1cm5pbmcgMCBmcm9tIHRoZSBob29rIHdpbGwgbWFrZSB0
aGUgY2FsbGVyIC0NCj4gPiBkcm1faGVscGVyX3Byb2JlX3NpbmdsZV9jb25uZWN0b3JfbW9kZXMo
KSAtIGtlZXAgdGhlIHByZXZpb3VzbHkNCj4gPiBkZXRlY3RlZA0KPiA+IG1vZGUgbGlzdCBvZiB0
aGUgY29ubmVjdG9yLg0KPiANCj4gSSBkb24ndCBzZWUgd2hlcmUgdGhpcyBpcyBkb25lPyBOb3Qg
c3VyZSBpZiBsb29raW5nIGF0IHdyb25nIHBsYWNlLA0KPiBidXQNCj4gSSBzZWUgaXQgdHJpZXMg
dXNpbmcgc29tZSBvdmVycmlkZSBlZGlkIGFuZCBpbiBjYXNlIHRoYXQgZmFpbHMgYXMNCj4gd2Vs
bA0KPiB1c2VzIGRybV9hZGRfbW9kZXNfbm9lZGlkPw0KPiANCj4gPiANCj4gPiBTaWduZWQtb2Zm
LWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYyB8IDQgKysrKw0KPiA+IMKgMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMNCj4gPiBpbmRleCAyNTcxZWY1YTFiMjExLi5j
Y2VhMGVmYmQxMzZmIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfc2R2by5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9zZHZvLmMNCj4gPiBAQCAtMjI4Nyw2ICsyMjg3LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBkcm1fZGlzcGxheV9tb2RlDQo+ID4gc2R2b190dl9tb2Rlc1tdID0gew0KPiA+IMKgc3RhdGlj
IGludCBpbnRlbF9zZHZvX2dldF90dl9tb2RlcyhzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcg0KPiA+ICpj
b25uZWN0b3IpDQo+IA0KPiBJIHNlZSBpbnRlbF9zZHZvX2dldF90dl9tb2RlcyBpcyBjYWxsZWQg
ZnJvbSBpbnRlbF9zZHZvX2dldF9tb2Rlcy4NCj4gV2h5DQo+IHRoZXJlIGlzIG5vIG5lZWQgdG8g
ZG8gdGhlIHNhbWUgaW4gaW50ZWxfc2R2b19nZXRfbHZkc19tb2RlcyBhbmQNCj4gaW50ZWxfc2R2
b19nZXRfZGRjX21vZGVzIGFzIHdlbGw/DQoNCkl0IHNlZW1zIHlvdSBhcmUgdGFraW5nIGNhcmUg
b2YgaW50ZWxfc3Zkb19nZXRfZGRjX21vZGVzIGluIG5leHQgcGF0Y2guDQpJbnRlbF9zdmRvX2dl
dF9sdmRzX21vZGVzIGRvZXNuJ3QgdG91Y2ggdGhlIGh3IC0+IG5vdGhpbmcgdG8gZG8gdGhlcmUu
DQoNCj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+IMKgew0KPiA+IMKg
wqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfc2R2byAqaW50ZWxfc2R2byA9DQo+ID4gaW50ZWxf
YXR0YWNoZWRfc2R2byh0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKSk7DQo+ID4gK8KgwqDC
oMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGludGVsX3Nk
dm8tDQo+ID4gPiBiYXNlLmJhc2UuZGV2KTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGlu
dGVsX3Nkdm9fY29ubmVjdG9yICppbnRlbF9zZHZvX2Nvbm5lY3RvciA9DQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0b19pbnRlbF9zZHZvX2Nvbm5lY3Rvcihjb25uZWN0b3Ip
Ow0KPiA+IMKgwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAq
Y29ubl9zdGF0ZSA9IGNvbm5lY3Rvci0NCj4gPiA+IHN0YXRlOw0KPiA+IEBAIC0yMjk4LDYgKzIy
OTksOSBAQCBzdGF0aWMgaW50IGludGVsX3Nkdm9fZ2V0X3R2X21vZGVzKHN0cnVjdA0KPiA+IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3RvcikNCj4gPiDCoMKgwqDCoMKgwqDCoMKgRFJNX0RFQlVHX0tN
UygiW0NPTk5FQ1RPUjolZDolc11cbiIsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGNvbm5lY3Rvci0+YmFzZS5pZCwgY29ubmVjdG9yLT5uYW1lKTsNCj4g
PiDCoA0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghaW50ZWxfZGlzcGxheV9kcml2ZXJfY2hlY2tf
YWNjZXNzKGk5MTUpKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4g
MDsNCj4gPiArDQo+ID4gwqDCoMKgwqDCoMKgwqDCoC8qDQo+ID4gwqDCoMKgwqDCoMKgwqDCoCAq
IFJlYWQgdGhlIGxpc3Qgb2Ygc3VwcG9ydGVkIGlucHV0IHJlc29sdXRpb25zIGZvciB0aGUNCj4g
PiBzZWxlY3RlZCBUVg0KPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBmb3JtYXQuDQo+IA0KDQo=
