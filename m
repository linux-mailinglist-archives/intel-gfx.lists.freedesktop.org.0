Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E8F7FE1A3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 22:17:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3FB810E67C;
	Wed, 29 Nov 2023 21:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E19ED10E679;
 Wed, 29 Nov 2023 21:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701292650; x=1732828650;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Fld0yCLJwEsV6vcBHHK+Zx55OZZqUbMbgtoi5LMupBU=;
 b=k1b+6uKATnjIc6jhPq44uPNa9kHAIzWuZto90JL132wqIGi/HtvlzMp5
 o8bC8yPikewVFWe5Lta0qwqa+6XFHcBXU6PahGh2QFFd9lzT20DvUREzq
 LaDhe1HA5HUv+Hc9KTKUr4SngeyXy5IOTKvFKseDE1uEvQo/zjEsNq7dj
 QGe0ly+W3kt51p1azRiFZUAzpFNozSlAoFAStI+SPAdkmb4BfIl/yFldP
 c7xm8D9hwUem/mJ1P1J1kzHnIv636AmMmqZD8vQrjzkKU4l5rWPXZty0E
 AglOwT80VuDo/V/7VhmwywKv86Br3YPGlzTr63dAJarwQBlLdtcAg71y2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="390386917"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="390386917"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 13:17:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="17143975"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 13:17:30 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 13:17:29 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 13:17:29 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 13:17:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jz8g/0jrxk+udWO+ic8dg5xk6uZwRSqCIZJP7gUKLoKlTldOz7TJpAHiCk2abWNEMA1PtfEd1GvbRu75NOcfpjzr74eRY/wVwKMJuEb6DGpRNOAlA3nJ1nDp24v3QJOBykGq71S63mYQAGQZhcW2BnzKkLDx7pzB4OEFJzTFy2ctkUTCCwMJgMjJjnfFxKPMcfl3aU0r7VAsT0PYQUlmFFXknb5QJ0ESXbHuPd56U8mHpBmkOxszRibsnsc0XNjaAMuHHBR/S+G3mcjwiVrGFzNJaL04M0SILhJvwmMLlYOwZQ+vbXZ0OE99N2Lmpo3P2o8+07Og08bLumvDJDeiTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fld0yCLJwEsV6vcBHHK+Zx55OZZqUbMbgtoi5LMupBU=;
 b=h+djdtvPiyyqb1snDmdvejMbMi1pHsqWfk8NSku2Z4HTJirnlLe8xX9FDM8h5FGe1mIuK/GqADDEx5NQEx7WD4x0fbC6ychlIOHrVJZHAHD0S97y2ZZEypG3GcvJswr7awCKPe07yzAmmXKKnP14bTJNWqtaKLLAk/DGcpP95gh9Kwnwcg2K5KHnwldjEFbU1oo/WZ8emQA4EUrgOAxZVjeFsl5sW2Ccnjw2l7u4Nj8K0rBt1PFljxfcXil0GZIKJ5J/XpEzN8J635T0sM50hpdV0wqWfz87ktUm/070DuDrvnKCQS7wXnFJknInpmaRESmxcvq6+SR63c4GQL7DEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by CY5PR11MB6533.namprd11.prod.outlook.com (2603:10b6:930:43::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Wed, 29 Nov
 2023 21:17:26 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::b043:8f67:3566:67ee%5]) with mapi id 15.20.7025.022; Wed, 29 Nov 2023
 21:17:26 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: handle uncore
 spinlock when not available
Thread-Index: AQHaIu4OdAAvXvFn4kaB7DtsSgu8nbCRvkGAgAAC2ICAAAvvAA==
Date: Wed, 29 Nov 2023 21:17:26 +0000
Message-ID: <12d8ab171261b626de463649f79516d92b10d9e0.camel@intel.com>
References: <20231129091728.1272876-1-luciano.coelho@intel.com>
 <ZWd8aYses2mJmBqD@intel.com>
 <54d7d0a3c53c61191aa811784c9671688722aeba.camel@intel.com>
 <ZWegYaFb1yKYqNoy@intel.com>
In-Reply-To: <ZWegYaFb1yKYqNoy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|CY5PR11MB6533:EE_
x-ms-office365-filtering-correlation-id: df39ed2e-d56a-4514-355d-08dbf1209604
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nwoe7tMUstMOx14Mj4ySOiwnPJuGQE3kd0CeufycsGI/vgICqyKA2LAKnt1/EEL2LD2tr0pJwOcf5VOZAfGv22293mATbUctyT/XDgJP28AP1sWMwLugZL4so0CVc4r4g6LXo7IoGrh9MC+lWTuKyleRNY5dnlCjan6ADnTjFqs5zrbP0lWIU4O1jEbAhvmRYaCx0wFdV8+ampIpKPZks0cXzqeMVLFkVicsDm6BZmBXh47Gk+Z2sJL6NXVOHUGnWMo9pJv8amqWf9tVKAs5HPt6+CsTt7er4ru4BKbBAP3OxE2/5+Z9SemBk8hqXBAq6b9y/JT4Sc7kobmZoprGFazVpXhNFg8lg7JxKI60PRihctUip2gaqH0a9AfqVA9cIyEktyURsgx4jEDAcvODXOENS83qrxz28+XGADJpboWhUOmsAzqhjoH9U8ryOnQwjCaaCu/wVSdTQnwxLJEmYE5P3E9AP920Bn8FVEQTQrPYKRR1i0Z/PAOaHDSSNob+mIFR75TsmUF+kqcqzcE7GadtAHpOFSqbUwHPH8E8MfpWSFRalrmB19A5gX9O3iFg9U91xpCygMZRpzzgtybWMhiedjcK8JAq0DCz6r0eZwFi2P94KK5mrO/cPwOss0osjR3rFqKtUq/btyGk4i1luGnftX4DoygAxrs5OZtAcXA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(396003)(39860400002)(136003)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(8936002)(8676002)(450100002)(6862004)(4326008)(6512007)(71200400001)(6506007)(66946007)(54906003)(66556008)(37006003)(91956017)(6636002)(76116006)(6486002)(478600001)(64756008)(316002)(202311291699003)(122000001)(36756003)(41300700001)(38100700002)(38070700009)(4001150100001)(86362001)(2906002)(66476007)(2616005)(5660300002)(26005)(82960400001)(83380400001)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WW1BQm5ETUM3QzlMV0w4S0g2WTIyNlcrMW96RGdmWlpRcDRVaDlCNWRqc2Q0?=
 =?utf-8?B?V3E3NGN2QkRIdXdwNTVySlpxdEUwZkZLa29EWnpKYkVHMzRaOWFSbHpZZEJL?=
 =?utf-8?B?OUVycGQ3N2F5bXhkNnF5dEk0Z2hUWEY3dFB4cmo0ekxZQjg2VVZMd1RUZnhF?=
 =?utf-8?B?dVZuMDNwMGt6RUswQU1VMytaNThkaDhKRmtzcis1VGtWWGc1MDQrSytGcFNC?=
 =?utf-8?B?OXh4aS9CT0dHTWRXRWVpNGN5Mlc0akNMa1owK0NHVDlJMlh6Ny9QK2orS2VM?=
 =?utf-8?B?dXpEaGptM3AzaWZVMjl5OHRKVmRlaUVaU0QvTXkzdG05clRkNERIUFEyL1dp?=
 =?utf-8?B?WERSajB6WldtMENFUlQzU3psdUxRNjhoKzZ2SUVYU2U3VFNXVFVVU0Q1a0ZT?=
 =?utf-8?B?djR3NitSQUg1ajRvNDVnSU04aHdQVEhoTm8zYTJYOHd5L3liUHdEdi9kRkFM?=
 =?utf-8?B?YjM5UUZRMnRmS2pVYkZRY3RuWkh0UTVkcXdvbDZXVFptSXNRdDR3b2x3bUNo?=
 =?utf-8?B?ZndpR241UGQzZ1Ric3QzcWRsdjhoNjgxOVJoWEF5bGdxTnhhU1N4VXc3Z0ht?=
 =?utf-8?B?aHpzSktvdHpkYmlueW9FMmlJWUtSby9QVm9LTVpaajhPNUpYVUJwdldZRlVu?=
 =?utf-8?B?WU5ESERuSm5zUEduYldhM2o2aEI1QTg0eUlnMnRpZjZLajVrM2xxdXF4Ty9r?=
 =?utf-8?B?Nk0zdG96YTVNRWdDZW9ITnVsS1JMaDNQei9ITGg0ZDZqUE9vSTBsdHdOOHEw?=
 =?utf-8?B?cjdoRzJtTFFtcDlxZEJBZVJlR3NBRXFFSGpZeHVZeHFlRlc1QW55dXQ4SkVa?=
 =?utf-8?B?STVnYXM1S25xOTNDYlBzM3o4bXBIWFFmNit3eDFDcjJuWGtFQUFTaTEvVnNU?=
 =?utf-8?B?bWpiUXJlOThKQ1ZHQm8weWdjYWQ4TDk1R3NEMm1UM2VRUkV6ME5wS0FtdXFB?=
 =?utf-8?B?YlJPNmIvZDJHWnE2cTd4RTJRQm1LZUVCeDZUdHVTYk95WVdLTFRQai9tRkVn?=
 =?utf-8?B?OVdEWW5KQnQzb0FKQVlmQzVFdlJrQkdSRi9Zck8xMmMvUjBJSXR4MjJ4L0dP?=
 =?utf-8?B?SXcyLzZTNnZUYm04Y09VZGtCZG4ra1Fqd0FBNnZTUjdOSFQ4UE9QaU5lTVpy?=
 =?utf-8?B?VjVpT2wwWEEzU0c5UmpPQ3RjQnVhV2pSdzZ3WlJ2YUd1VVlCUGJqTGNrZ2RO?=
 =?utf-8?B?NDVLYkFQL21tYzUwemcwUUNNTFZWWFB6NTZOZXliby9xN3lSWCtaV0JMcTVY?=
 =?utf-8?B?ZnVONGZpcnJZSXcxOWxYZFJWQ0NzT2pvaGs2NFZkWndib21jOUcvQTI2bTN5?=
 =?utf-8?B?SzlUSWJPa1VBQm9hVXhPZlBSYUtIeTNBQ0JsYVFvNU41bTRYQlpzLysrZlJY?=
 =?utf-8?B?WUNTT2J4QzFIL0dSU3Q2NGo5SkxqWjVwQk5yM201dWY3b3ladEx3bVNHZ1Nh?=
 =?utf-8?B?M3U3dTZxdlZ3UURaOFV2OWpNMXNvRml4MGtwMWpNUDBwSTRwMFIxQWt1SjJU?=
 =?utf-8?B?enFDQmt2VTY2RE5mN3p4M3d0dGo5clBRbHJMRUdHcGlIS05nUWZGVzhXRVlS?=
 =?utf-8?B?M2dxSjQ4dkhidk9aUnlwMXQxSzZIWHhqVUFTL1JKMjNNOC9VeUV1eU1aM2F3?=
 =?utf-8?B?OU1wREcybE5MckRBWUtDNk83cTJLN2NDMEU4cElZeHMxT3NXc2p5NVZieUJW?=
 =?utf-8?B?T1Vwb3ZwbldpVkZGQ0hYTjVFMTZ4S1RpT252M2F1T1VQcm5rYURmajhXaVNw?=
 =?utf-8?B?RDNGbzhmZ1lZVzl6STlSNXcwNWtZeUl6YU9BUEpTeFJ1enNYdHVOUzd4b3pU?=
 =?utf-8?B?TjR6Q09oQnN1a0VEbmlTQWROWmZNZUJ1bFkvQUgrQ3FrTE9lZGRNRnlBMWhG?=
 =?utf-8?B?ZmtGUFZMZWtIQmtoakcyakNqbzduWEszRWE2U1A0VVl1cHZLK2JtREd5UnJv?=
 =?utf-8?B?ZWljc3Q1ZW5LbXBBYkZCSXFGREY4OTVpM0ZzN0dWK0hycVlocEhnL1R5VWpt?=
 =?utf-8?B?VnlsVk5xRjdRU3E3TnZoNDJUaHBsWldrNlJqQklQOCtSd1crYVdzbnZQMkR4?=
 =?utf-8?B?aUM3SEtZcmdxNncyWXluMTVtV0JFZjRuRHhiZWFaUXp5cFlsWEk0MjFPR0tj?=
 =?utf-8?B?MENGcytIamNtYnVHSWlPTEFNK3V1VVh4L1RyV3l2eEFmQWNPUjFKRk1kN1lM?=
 =?utf-8?B?ZUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5FF627A1031C644F978C69AFF74B9A4C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df39ed2e-d56a-4514-355d-08dbf1209604
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2023 21:17:26.0725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q2rF1J/alH1ufosbdIBvWxsSSJ07gQAbsgxf0wr50CEexP/kRW6oF6YCEl5aGXDHjNiL6cJTNA+kJJo4TwGiwiU+1TpX+6FDHMLKkjvPBwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6533
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: handle uncore
 spinlock when not available
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
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTExLTI5IGF0IDE1OjM0IC0wNTAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIFdlZCwgTm92IDI5LCAyMDIzIGF0IDAzOjI0OjMzUE0gLTA1MDAsIENvZWxobywgTHVjaWFu
byB3cm90ZToNCj4gPiBPbiBXZWQsIDIwMjMtMTEtMjkgYXQgMTM6MDEgLTA1MDAsIFJvZHJpZ28g
Vml2aSB3cm90ZToNCj4gPiA+IE9uIFdlZCwgTm92IDI5LCAyMDIzIGF0IDExOjE3OjI4QU0gKzAy
MDAsIEx1Y2EgQ29lbGhvIHdyb3RlOg0KPiA+ID4gPiBUaGUgdW5jb3JlIGNvZGUgbWF5IG5vdCBh
bHdheXMgYmUgYXZhaWxhYmxlIChlLmcuIHdoZW4gd2UgYnVpbGQgdGhlDQo+ID4gPiA+IGRpc3Bs
YXkgY29kZSB3aXRoIFhlKSwgc28gd2UgY2FuJ3QgYWx3YXlzIHJlbHkgb24gaGF2aW5nIHRoZSB1
bmNvcmUncw0KPiA+ID4gPiBzcGlubG9jay4NCj4gPiA+ID4gDQo+ID4gPiA+IFRvIGhhbmRsZSB0
aGlzLCBzcGxpdCB0aGUgc3Bpbl9sb2NrL3VubG9ja19pcnFzYXZlL3Jlc3RvcmUoKSBpbnRvDQo+
ID4gPiA+IHNwaW5fbG9jay91bmxvY2soKSBmb2xsb3dlZCBieSBhIGNhbGwgdG8gbG9jYWxfaXJx
X3NhdmUvcmVzdG9yZSgpIGFuZA0KPiA+ID4gPiBjcmVhdGUgd3JhcHBlciBmdW5jdGlvbnMgZm9y
IGxvY2tpbmcgYW5kIHVubG9ja2luZyB0aGUgdW5jb3JlJ3MNCj4gPiA+ID4gc3BpbmxvY2suICBJ
biB0aGVzZSBmdW5jdGlvbnMsIHdlIGhhdmUgYSBjb25kaXRpb24gY2hlY2sgYW5kIG9ubHkNCj4g
PiA+ID4gYWN0dWFsbHkgdHJ5IHRvIGxvY2svdW5sb2NrIHRoZSBzcGlubG9jayB3aGVuIEk5MTUg
aXMgZGVmaW5lZCwgYW5kDQo+ID4gPiA+IHRodXMgdW5jb3JlIGlzIGF2YWlsYWJsZS4NCj4gPiA+
ID4gDQo+ID4gPiA+IFRoaXMga2VlcHMgdGhlIGlmZGVmcyBjb250YWluZWQgaW4gdGhlc2UgbmV3
IGZ1bmN0aW9ucyBhbmQgYWxsIHN1Y2gNCj4gPiA+ID4gbG9naWMgaW5zaWRlIHRoZSBkaXNwbGF5
IGNvZGUuDQo+ID4gPiA+IA0KPiA+ID4gPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRvLnVyc3Vs
aW5AaW50ZWwuY29tPg0KPiA+ID4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4NCj4gPiA+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4N
Cj4gPiA+ID4gQ2M6IFZpbGxlIFN5cmo/bD8gPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhIENvZWxobyA8bHVjaWFuby5jb2VsaG9AaW50
ZWwuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gDQo+ID4gPiA+IEluIHYyOg0KPiA+ID4gPiAN
Cj4gPiA+ID4gICAgKiBSZW5hbWVkIHVuY29yZV9zcGluXyooKSB0byBpbnRlbF9zcGluXyooKQ0K
PiA+ID4gPiAgICAqIENvcnJlY3RlZCB0aGUgb3JkZXI6IHNhdmUsIGxvY2ssIHVubG9jaywgcmVz
dG9yZQ0KPiA+ID4gPiANCj4gPiA+ID4gSW4gdjM6DQo+ID4gPiA+IA0KPiA+ID4gPiAgICAqIFVu
ZGlkIHRoZSBjaGFuZ2UgdG8gcGFzcyBkcm1faTkxNV9wcml2YXRlIGluc3RlYWQgb2YgdGhlIGxv
Y2sNCj4gPiA+ID4gICAgICBpdHNlbGYsIHNpbmNlIHdlIHdvdWxkIGhhdmUgdG8gaW5jbHVkZSBp
OTE1X2Rydi5oIGFuZCB0aGF0IHB1bGxzDQo+ID4gPiA+ICAgICAgaW4gYSB0cnVja2xvYWQgb2Yg
b3RoZXIgaW5jbHVkZXMuDQo+ID4gPiA+IA0KPiA+ID4gPiBJbiB2NDoNCj4gPiA+ID4gDQo+ID4g
PiA+ICAgICogQWZ0ZXIgYSBicmllZiBhdHRlbXB0IHRvIHJlcGxhY2UgdGhpcyB3aXRoIGEgZGlm
ZmVyZW50IHBhdGNoLA0KPiA+ID4gPiAgICAgIHdlJ3JlIGJhY2sgdG8gdGhpcyBvbmU7DQo+ID4g
PiA+ICAgICogUGFzcyBkcm1faTE5NV9wcml2YXRlIGFnYWluLCBhbmQgbW92ZSB0aGUgZnVuY3Rp
b25zIHRvDQo+ID4gPiA+ICAgICAgaW50ZWxfdmJsYW5rLmMsIHNvIHdlIGRvbid0IG5lZWQgdG8g
aW5jbHVkZSBpOTE1X2Rydi5oIGluIGENCj4gPiA+ID4gICAgICBoZWFkZXIgZmlsZSBhbmQgaXQn
cyBhbHJlYWR5IGluY2x1ZGVkIGluIGludGVsX3ZibGFuay5jOw0KPiA+ID4gPiANCj4gPiA+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgIDEgKw0KPiA+
ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYyAgfCA0NSAr
KysrKysrKysrKysrKystLS0tLQ0KPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRp
b25zKCspLCAxMCBkZWxldGlvbnMoLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oDQo+ID4gPiA+IGluZGV4IDg1NDhmNDll
Mzk3Mi4uNWZmMjk5YmM0Yjg3IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiA+ID4gPiBAQCAtMjksNiArMjksNyBA
QA0KPiA+ID4gPiAgDQo+ID4gPiA+ICAjaW5jbHVkZSAiaTkxNV9yZWdfZGVmcy5oIg0KPiA+ID4g
PiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfbGltaXRzLmgiDQo+ID4gPiA+ICsjaW5jbHVkZSAi
aTkxNV9kcnYuaCINCj4gPiA+IA0KPiA+ID4gcGxlYXNlIG1vdmUgdGhpcyBpbmNsdWRlIHRvIGlu
dGVsX3ZibGFuay5jDQo+ID4gDQo+ID4gT29wcywgdGhpcyBpcyBhIGxlZnRvdmVyIG9mIHNvbWUg
dGVzdHMgSSB3YXMgbWFraW5nIHRvIHNlZSBqdXN0IGhvdw0KPiA+IG11Y2ggd29yc2UgdGhpbmdz
IHdvdWxkIGdldCBieSBhZGRpbmcgdGhpcyBoZXJlLg0KPiA+IA0KPiA+IEFjdHVhbGx5LCB3aHkg
ZG9uJ3Qgd2UgbW92ZSB0aGUgZHJtX2k5MTVfcHJpdmF0ZSBzdHJ1Y3R1cmUgKGFuZCBtYXliZQ0K
PiA+IG90aGVycz8pIHRvIGEgbGlnaHRlciBoZWFkZXIgZmlsZSB0aGFuIGk5MTVfZHJ2Lmg/IElN
SE8gaXQncyByZWFsbHkNCj4gPiBhbm5veWluZyB0byBoYXZlIHRoZSBmb3J3YXJkIGRlY2xhcmF0
aW9ucyBmb3IgaXQgaW4gbWFueSBwbGFjZXMganVzdA0KPiA+IGJlY2F1c2Ugd2UgZG9uJ3Qgd2Fu
dCB0byBpbmNsdWRlIHRoZSBhY3R1YWwgaGVhZGVyLiAgV2hlbiBJIHdhbnQgdG8NCj4gPiBmaW5k
IGl0cyBnbG9iYWwgZGVmaW5pdGlvbiwgY3Njb3BlIGFsd2F5cyByZXR1cm5zIHRlbnMgb2YgcmVz
dWx0cw0KPiA+IGJlY2F1c2Ugb2YgdGhlIGZvcndhcmQgZGVjbGFyYXRpb25zLi4uIFRoaXMgaXMg
b2J2aW91c2x5IG9ydGhvZ29uYWwgdG8NCj4gPiB0aGUgY3VycmVudCBwYXRjaC4NCj4gDQo+IHll
YWgsIEkga25vdy4gSXQgaXMgcmVhbGx5IGluY29udmVuaWVudCBzb21ldGltZXMuIEkgZ290IHVz
ZWQgdG8gcnVuDQo+IGNzY29wZSBhbmQgdGhlbiBzZWFyY2ggZm9yICJzdHJ1Y3Qgc29tZXRoaW5n
IHsiIHRvIGZpbmQgdGhlIHJpZ2h0IHBsYWNlLg0KDQpUaGF0J3Mgd2hhdCBJIGRvIGFzIHdlbGwu
ICBBY3R1YWxseSwganVzdCBzZWFyY2hpbmcgZm9yICIgeyIgaW4gdGhlDQpyZXN1bHRzIHVzdWFs
bHkgc3VmZmljZXMuICBCdXQgYW55d2F5IGluY29udmVuaWVudC4NCg0KDQo+IEJ1dCB0aGlzIGlu
Y29udmVuaWVuY2UgaXMgYWN0dWFsbHkgc21hbGxlciB3aGVuIGNvbXBhcmVkIHRvIHRoZSBjb21w
aWxhdGlvbg0KPiB0aW1lIHdoZW5ldmVyIGEgaGVhZGVyIGdldHMgbW9kaWZpZWQgYW5kIGluY2x1
ZGVkIGJ5IG90aGVyIGhlYWRlcnMuIElmIEkNCj4gcmVtZW1iZXIgY29ycmVjdGx5IEphbmkgZGlk
IHRoZSBpbml0aWFsIGFzc2Vzc21lbnQgb2YgY29tcGlsYXRpb24gdGltZXMNCj4gYW5kIHN0YXJ0
ZWQgdG8gbW92ZSBoZWFkZXJzIGluY2x1ZGluZyBvdXQgb2Ygb3RoZXIgaGVhZGVycy4gSGUgbWln
aHQNCj4gaGF2ZSBtb3JlIGRldGFpbHMvZGF0YSBvbiBoaXMgZmluZGluZ3MuDQoNCk9rYXksIEkn
bGwgdGFsayB0byBoaW0uICBCdXQgaXQncyBhbHdheXMgbmljZSB0byByYW50IGEgYml0IGluIHB1
YmxpYywNCnNvIG15IGJsdXJ0IHN0YW5kcy4gOkQNCg0KLS0NCkNoZWVycywNCkx1Y2EuDQo=
