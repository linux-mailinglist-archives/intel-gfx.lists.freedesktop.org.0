Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C85E822C3D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 12:37:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CAB810E26E;
	Wed,  3 Jan 2024 11:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D872110E255
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 11:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704281833; x=1735817833;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=O88K59iMYV6x6xPhZU9HFM0AzCHxKEcsVzu1PqVpURU=;
 b=Xx+bKt9yLLRmFJW8jOmTXUqlD2MjJK78uGXovnsG3yi+yIf91HIdTL1u
 nr8QaR17lc3r83pT06GUR/xQu8SuGYbibap3D2/RBUoYvR9HAiv65pbmi
 oiXtXhXltiAzYjy11xtibrUcfAHcej4jQIQt9gWTEP013MlyA/9RNAoGg
 RJYHukKzOZ7/v8gj4maCOoAuC1an+mjAULRHpmj4tkMA3t6FnGDZG+CO6
 kNELCL6wR9uYPmIRDUlYyh/MIlu3jKZyuBZtGysPevE7EkZreDmTY4hwr
 R8mnqzqOD/MFyGGR7YDrlP1DTi2NuT9o3hBy2sodaTkO7kI4QlVAxrqhT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="10603060"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="10603060"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 03:37:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="898854671"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="898854671"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2024 03:37:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 03:37:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 03:37:10 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Jan 2024 03:37:10 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Jan 2024 03:37:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BDXx5Ufx2K0H/tvyAePpz4WJx2WEWF0/0bHgaRKMkXqKPop1KK6VR8qYj54cqL0ZYMJy0juleYO8CRNRCVOj985WuNymBN/gDDXYQUc6fh9aPnDLFbozcCQJ/GN36oLJpGSjtDL/ypp0/nmFkDDQ+b+V+Iq1I6qELu+MR8yOvy1cX2Fuv98QMKfbyA8dPGR1Pyhcr1QEsOC8pS0NzL2TQJATCM7l3TAv7v/Bbaf0oiSq9vkUiRAGXj+vb8DoED30rhgbUarcSzEpqkFzjT/llQBCvPIH/MLsmMX4qD3IgknGlAogB0vEyMst0E1lcgwA9iq/NCuc6ReDW+/vhMR4Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O88K59iMYV6x6xPhZU9HFM0AzCHxKEcsVzu1PqVpURU=;
 b=P5Z/yA4mil3ffmEf8m/adZrlCQVkO06d1SWFeWtYXw+IPKI3TD5dequ87haIRG7QDgP6mgW4vehIfnibnZTsiPFM4Z4v456FRoGMUfAHOUmNAU+RNRWFAsshhFenfSZ6cqY9y9lQg41HyWK5buiYq4/jO0hsMAhIve1DSCXBSXdhCl1sCjP+OujNF94PmEk1qc3DAgXI/imbmkcqbv9KC/1foe3xeMouySTfbxYY/2uVQ4tnmXX8wjiQYFijOoAvyWw09Tf303YRkQhWs3L37VsfurDWqm/okOQj7hnifdPvN8M+RFTQHiaxDVnHM6LdF7xYy1KTXwBgKnK9bTmf0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB4830.namprd11.prod.outlook.com (2603:10b6:a03:2d7::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.13; Wed, 3 Jan 2024 11:37:08 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7135.023; Wed, 3 Jan 2024
 11:37:08 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/dp: Fix the PSR debugfs entries wrt. MST
 connectors
Thread-Topic: [PATCH] drm/i915/dp: Fix the PSR debugfs entries wrt. MST
 connectors
Thread-Index: AQHaPjQi0w812XLjtkCHy0lr/oonxbDH7dYAgAADV4CAAATFAA==
Date: Wed, 3 Jan 2024 11:37:08 +0000
Message-ID: <769a9b24f6c938abb5131f4036e59c6fdce6739c.camel@intel.com>
References: <20240103110029.2408342-1-imre.deak@intel.com>
 <8c206b5963fa88890a62db33a5d4a34513025a1f.camel@intel.com>
 <ZZVC4XwaAbSGnpqF@ideak-desk.fi.intel.com>
In-Reply-To: <ZZVC4XwaAbSGnpqF@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB4830:EE_
x-ms-office365-filtering-correlation-id: 3477e153-7772-46f1-fc4b-08dc0c505152
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: beGmXP7r48IlNVkzN/4ucGSi32KrXayetVzXrVjOM1q6CYwhywlcYMXRv2otJ2GISOagUPEWhpQHaZPBxPdtaSUA5GrSOZzXAbPp5Bw2g9aaT37RQNZ1fH5phLsmQQVEHAyVhX+/ygcg+TBAIaVF1aN9DHoYY+lTCe+xVm0xgyWzLkiLliDo66FDXKTv6CKuMNKvGeilm7fULYRbVorknnSpDAvfETISS5mdcaZ/ggL/vKWQqOQlif7MY4dWivL2LlfC+/nh72iLoa8bp3JgZSIqD3UGvRNU2rf6p3xsXQ7tPVxvQhPbwzdAcucKnxO/3LCSLjeKUAvBnsHorwDTSu5ccD/RIhQP3+1wx3uyIWH3Pu2qYdH6yD5dlfg+NgYLLNDQJ6CvYQKETkfo8XFfwjc1mvRwJpjQWD7Df6Pm0zqkPc4ejyYG1TZjXxulqXbeAt8iCvZfUnaEkl8dCziLVY27oMm5HKu+bZ8JfxS/YsfD7mOPftWp4YbUz6xyyHP2VGhlCRRytJ+iIrGoBbBjG/3lUQqAkO1VTFJXg9japXgPJg0FG5uViLUgoXZtCheQBy7DZkFAlO/h/p4a/gjpw8JVCyejTZFFSMDdTbgKTWk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(376002)(396003)(346002)(39850400004)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(4326008)(6862004)(83380400001)(6486002)(54906003)(37006003)(316002)(76116006)(91956017)(66476007)(66446008)(66556008)(64756008)(66946007)(6636002)(2616005)(26005)(8676002)(71200400001)(478600001)(966005)(6512007)(6506007)(8936002)(86362001)(36756003)(38070700009)(41300700001)(38100700002)(5660300002)(82960400001)(122000001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UEpFdzA5Ym1wSnp2S0VwUEFuREJrajQ5K0t1bU9rRnFISE9zUDFyd1FwVk1O?=
 =?utf-8?B?N0JralpaVmZtZmI4eElBUUNUOVdsM2d6cDM1SmJTQTdXNGF1Ymw2T29ZSWN6?=
 =?utf-8?B?OEZxcURRS25Hc2F2TEtOcmhib2RWNXhLdUJwWlBPSHlhbi81R2doLzRwZ3Ru?=
 =?utf-8?B?eExGOGRNU0E5c2V6eThuUnZQN0hiUU9xTTk2a00xd0dhQnJaZmVJMDdFcDh3?=
 =?utf-8?B?R2dwU3d4aitZN1ZxSTJtdm9BcmFod29xeUxaSkhJcUNldW9oaUpxU285Skla?=
 =?utf-8?B?RGdyK1hsS0ptNHBKT1VsVnBKNEVoY3htNmlzVjNzWVJVS0N4Vk9LVjNVTFZ1?=
 =?utf-8?B?bWEzT0J6cjdXb1RrUXRyaHdRVXZ6UHdkK0ZWdVBSSFRuUjRRaFY5VXBKRlFM?=
 =?utf-8?B?WmNSL2c0ajZQMTQvTUQ2Q1hTN3JaSWZ0V25qK1pLSG5QM1N3cFUrenpnTmc4?=
 =?utf-8?B?cS9wOEM4T0lqcXpUT2ZDemFZb3lTazNmVktMekFZZ21VUjBPYnd2a0V2UmdW?=
 =?utf-8?B?RUZvVi91d0drMjBKNTA5YnNkSW1tbXJxbDNkcmpYZE9DTWQvWDFZWGIrQitq?=
 =?utf-8?B?NGF0UTFPOVhLTmgyM2Y2bk1iRHBPWEgvYXlsakhOQWo4QjhCVGprMFErNnZK?=
 =?utf-8?B?MURlYzRsZ2xjcU8yWjdXbjZCT0hkeS9LSlQ1Q3MraFgzc20wZWZURFVpRm1D?=
 =?utf-8?B?VDdzVFhBcDBHbG90WWNsSEgvRmFNUW1pa09rMGJWZWNTRnZCcGMxeE9xcmFS?=
 =?utf-8?B?akM1TkU2eEtucW5FRXkvdFlPM01jVlVDekJnL0wrZTJWWDlLdDlPUHdvMnJu?=
 =?utf-8?B?aE5OalJYV3dleVhKQ1JPcWw2MmN6Q3lBZDk3UzIzYnhxVXI1eDVocktOd0NG?=
 =?utf-8?B?Y2hEeFppd0pja0pNOWVYQ29XOGc5ZzdJMWJ2MGdoZ2VpZ202WWVWQ2JydDhr?=
 =?utf-8?B?UVRLUmF3ZHhtSUVUNkUrOE5DcWptU0Z3NXpMSTZnZnErVWNqR1ZXS04rMlRZ?=
 =?utf-8?B?Z1ByNVlLRSs4QU9YSFo1Wkd5ZlRCdVdGNzBBbjViYzZHUCtPQUkxOHNHbUx5?=
 =?utf-8?B?OURyTlNHc1lVZjhYTVFqaEJMMWdyNEdvM3JtN0NtTitPV0NOaFJDYWg4NGRC?=
 =?utf-8?B?bWVhWXZsaE50azQ4ckNHd3MxZnRHK2ZhWUdIY2p4N3ZRRHhFLzB4bit1OHVC?=
 =?utf-8?B?cU1zeS9rWGMvTlNrZlk1QithK1RSd2RNRGUwMHFnTTdGTktkN1Vjdzd3VUhs?=
 =?utf-8?B?VkQrVkNVRU1MUDdkN3F1TnhVNW1kVUg3Y3lOQUNXb0JGRGNTanhRd0J5MGpI?=
 =?utf-8?B?WmovT05iWGlGMTR3YnBFR0wvOWlFcHlCUXovZzU4bllWYkRPZit3UWd6Z2Ns?=
 =?utf-8?B?QzNiWVFoaDlJZHlMTVNuYkh5V3hrSXRoemFZbmxrV2hBS2dvQjhRbmsydURP?=
 =?utf-8?B?dWltS3oza3Vud3FURXdmWTlxQ3NwN0VtcHVRaVpuQng1UEFVMkpEZiswSlM2?=
 =?utf-8?B?K1VLYmVnUXlHWFVyZEdCem1RdVpjU2U0NTdYRG44TU15dExueTBUZS9KdzJD?=
 =?utf-8?B?Z0lxazkvdDJybzlnZ01YTzc2YitkQzA5OWVHS2QxdzBQNm9CSGhyd2tzYStl?=
 =?utf-8?B?aUZGYU9KQnBKWnFWeGFrVEV6RHI5OXJMdG5zNW9scmhOOWllMW4yVFZQZGc5?=
 =?utf-8?B?MVpmR0tldGd0WmUvSUdjR0djOVJlZFNJd21pZ1RoZG42MXRFY291WWdOb056?=
 =?utf-8?B?SE5EMjVac3hlazNLSFovcE0rY3l4NkxlRFBKTlNVWTFkM09DRTFQNXVVNkVl?=
 =?utf-8?B?VnFIVmZXdnVtTlA1bTA4VTNPSkZXb09MeGtydXoyK0hKZ25mdS8wa0VCaXlw?=
 =?utf-8?B?RHBtUEFLYWZMV1BwaXlyREJtdHp0eTZoM1VmZkd3aTZzYTREQmZFbWRBNlIv?=
 =?utf-8?B?blVLNXZUaUhrWW1YL2FDdTk3dnJqUklhanE3YURJVTZpbDdRU0EzVHgwR3ph?=
 =?utf-8?B?blVBRVgvRVdTbFQzUU5ESkVvNWV4R3B5TE1ZdnZIVEVIVitCeFk4THUycno4?=
 =?utf-8?B?WGFyaXdVNHdOZWNBVW50b1ZzdGFZRllhcG02MWhGRTFWN29kMmY3a05RbXEz?=
 =?utf-8?B?M2lqTzZSTzlSQmpGNDkxOEJDb2dVamk3a2FFM0xSVzhyWjh1Z2tQL0I2Ujh2?=
 =?utf-8?B?cHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D6E1B0BB1ABC4842905336D24E6CFA7D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3477e153-7772-46f1-fc4b-08dc0c505152
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2024 11:37:08.0868 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HsfNKN8lULeo3biUOgXaIonR7iG1i2ZUpv3y+ebu67Yd+nLSemFbLVwQMlNQq/iSkHFcL+WaZGUsqxHrvE/nCP2xrc7X05N8gmxP0B5FbyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4830
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDI0LTAxLTAzIGF0IDEzOjIwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFdlZCwgSmFuIDAzLCAyMDI0IGF0IDAxOjA4OjA1UE0gKzAyMDAsIEhvZ2FuZGVyLCBKb3VuaSB3
cm90ZToNCj4gPiBPbiBXZWQsIDIwMjQtMDEtMDMgYXQgMTM6MDAgKzAyMDAsIEltcmUgRGVhayB3
cm90ZToNCj4gPiA+IE1TVCBjb25uZWN0b3JzIGRvbid0IGhhdmUgYSBzdGF0aWMgYXR0YWNoZWQg
ZW5jb2RlciwgYXMgdGhlaXINCj4gPiA+IGVuY29kZXINCj4gPiA+IGNhbiBjaGFuZ2UgZGVwZW5k
aW5nIG9uIHRoZSBwaXBlIHRoZXkgdXNlOyBzbyB0aGUgZW5jb2RlciBmb3IgYW4NCj4gPiA+IE1T
VA0KPiA+ID4gY29ubmVjdG9yIGNhbid0IGJlIHJldHJpZXZlZCB1c2luZyBpbnRlbF9kcF9hdHRh
Y2hlZF9lbmNvZGVyKCkNCj4gPiA+ICh3aGljaA0KPiA+ID4gbWF5IHJldHVybiBOVUxMIGZvciBN
U1QpLiBNb3N0IG9mIHRoZSBQU1IgZGVidWdmcyBlbnRyaWVzIGRlcGVuZA0KPiA+ID4gb24gYQ0K
PiA+ID4gc3RhdGljIGNvbm5lY3RvciAtPiBlbmNvZGVyIG1hcHBpbmcgd2hpY2ggaXMgb25seSB0
cnVlIGZvciBlRFANCj4gPiA+IGFuZA0KPiA+ID4gU1NUDQo+ID4gPiBEUCBjb25uZWN0b3JzIGFu
ZCBub3QgZm9yIE1TVC4gVGhlc2UgZGVidWdmcyBlbnRyaWVzIHdlcmUgZW5hYmxlZA0KPiA+ID4g
Zm9yDQo+ID4gPiBNU1QgY29ubmVjdG9ycyBhcyB3ZWxsIHJlY2VudGx5IHRvIHByb3ZpZGUgUFIg
aW5mb3JtYXRpb24gZm9yDQo+ID4gPiB0aGVtLA0KPiA+ID4gYnV0DQo+ID4gPiBoYW5kbGluZyBN
U1QgY29ubmVjdG9ycyBuZWVkcyBtb3JlIGNoYW5nZXMuIEZpeCB0aGlzIGJ5IHJlLQ0KPiA+ID4g
ZGlzYWJsaW5nDQo+ID4gPiBmb3INCj4gPiA+IG5vdyB0aGUgUFNSIGVudHJpZXMgb24gTVNUIGNv
bm5lY3RvcnMuDQo+ID4gPiANCj4gPiA+IEZpeGVzOiBlZjc1YzI1ZThmZWQgKCJkcm0vaTkxNS9w
YW5lbHJlcGxheTogRGVidWdmcyBzdXBwb3J0IGZvcg0KPiA+ID4gcGFuZWwNCj4gPiA+IHJlcGxh
eSIpDQo+ID4gPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50
ZWwvLS9pc3N1ZXMvOTg1MA0KPiA+ID4gQ2M6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFA
aW50ZWwuY29tPg0KPiA+ID4gQ2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwu
Y29tPg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMgfCA3ICsrLS0tLS0NCj4gPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgNSBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gaW5kZXggNDk0ZDA4ODE3ZDcxZS4uYjVi
OTM0MGU1MDVlMyAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiA+IEBAIC0zMzEwLDExICszMzEwLDggQEAgdm9pZA0KPiA+ID4gaW50
ZWxfcHNyX2Nvbm5lY3Rvcl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QNCj4gPiA+IGludGVsX2Nvbm5lY3Rv
ciAqY29ubmVjdG9yKQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSB0b19pOTE1KGNvbm5lY3Rvci0NCj4gPiA+ID5iYXNlLmRldik7DQo+ID4gPiDC
oMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZGVudHJ5ICpyb290ID0gY29ubmVjdG9yLT5iYXNlLmRlYnVn
ZnNfZW50cnk7DQo+ID4gPiANCj4gPiA+IC3CoMKgwqDCoMKgwqAgaWYgKGNvbm5lY3Rvci0+YmFz
ZS5jb25uZWN0b3JfdHlwZSAhPQ0KPiA+ID4gRFJNX01PREVfQ09OTkVDVE9SX2VEUCkNCj4gPiA+
IHsNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICghKEhBU19EUDIwKGk5
MTUpICYmDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
b25uZWN0b3ItPmJhc2UuY29ubmVjdG9yX3R5cGUgPT0NCj4gPiA+IERSTV9NT0RFX0NPTk5FQ1RP
Ul9EaXNwbGF5UG9ydCkpDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmV0dXJuOw0KPiA+ID4gLcKgwqDCoMKgwqDCoCB9DQo+ID4gPiArwqDCoMKg
wqDCoMKgIGlmIChjb25uZWN0b3ItPmJhc2UuY29ubmVjdG9yX3R5cGUgIT0NCj4gPiA+IERSTV9N
T0RFX0NPTk5FQ1RPUl9lRFApDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZXR1cm47DQo+ID4gDQo+ID4gV291bGQgaXQgYmUgcG9zc2libGUgdG8gZGlzYWJsZSBpdCBvbmx5
IGZvciBNU1QgY29ubmVjdG9yPyBJIHRoaW5rDQo+ID4gdGhpcw0KPiA+IGlzIGRpc2FibGluZyBp
dCBhbHNvIGZvciBEUCBTU1QsIG5vPw0KPiANCj4gWWVzLCBpdCBrZWVwcyBpdCBlbmFibGVkIG9u
bHkgZm9yIGVEUC4gSXQgY291bGQgYmUgZW5hYmxlZCBmb3IgU1NUIGFzDQo+IHdlbGwgeWVzLCBi
dXQgSSB0aG91Z2h0IGFzIGEgZml4IHRoZSBhYm92ZSBpcyBiZXR0ZXIsIGFkZGluZyBzdXBwb3J0
DQo+IGZvcg0KPiBvdGhlciBjb25uZWN0b3IgdHlwZXMgYXMgYSBmb2xsb3cgdXAuDQoNCmlmIChj
b25uZWN0b3ItPm1zdF9wb3J0IHx8ICEoSEFTX0RQMjAoaTkxNSkgJiYNCmNvbm5lY3RvcmJhc2Uu
Y29ubmVjdG9yX3R5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX0Rpc3BsYXlQb3J0KSkNCiAgICBy
ZXR1cm47DQoNCklzIGl0IHBvc3NpYmxlIHRvIHVzZSB0aGlzIGluc3RlYWQ/DQoNCkJSLA0KDQpK
b3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gPiBCUiwNCj4gPiANCj4gPiBKb3VuaSBIw7ZnYW5kZXIN
Cj4gPiA+IA0KPiA+ID4gwqDCoMKgwqDCoMKgwqAgZGVidWdmc19jcmVhdGVfZmlsZSgiaTkxNV9w
c3Jfc2lua19zdGF0dXMiLCAwNDQ0LCByb290LA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbm5lY3RvciwNCj4gPiA+ICZpOTE1
X3Bzcl9zaW5rX3N0YXR1c19mb3BzKTsNCj4gPiANCg0K
