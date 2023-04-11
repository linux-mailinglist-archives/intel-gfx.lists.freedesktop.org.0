Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C956DDBFF
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 15:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4216610E318;
	Tue, 11 Apr 2023 13:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E37810E310;
 Tue, 11 Apr 2023 13:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681219487; x=1712755487;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=gEzTAmY4SrAKViBUsHxXjzJLOhLLipF2aq+5e2sux2I=;
 b=XoNCtNx+ncnnlQCJsbugQ5lcuvR0FDTy/SC0RI4Cma2JEidQhpZwrpwD
 9iUZWXKlHufo6yTYUJxgzVCfGYgr/4j5DJg3TH//jx8AcotO4Pr22yPc4
 tVil9DNb5HTB1Cs0F+Oxvj+ktm5dp09NH+wOM6nPIWE2XcoeXfUuL1Cp6
 nnvpbPEtxEG8A7iZdcy85UlFgtr52Uk0uKRTNQrMkWkCru6csk9EVOxIe
 sh0wRI3yVwX5TQzQGbF5HNOIaMjbX5b4qu6LYw4iVHFjXN+ctx53fdVuC
 bQAkkeA6PkwZAknNzMsYDCrbJ5O0bGV0DE7BsDN/3dBbmR4NPs0foMcdX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="323975504"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="323975504"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 06:24:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="812561396"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="812561396"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 11 Apr 2023 06:24:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 11 Apr 2023 06:24:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 11 Apr 2023 06:24:46 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 11 Apr 2023 06:24:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HzJF/tauTEE02z/LRk4oz9LXAjVSZ44muGD0c5nf3pVq7rXHYPoOnzZsdP9uOpgkzpODilwVppdIaT0aCON7RJ4a9jZwnFXnOtU1ZUBVhXMwtGd5r3iHiT0rtloNWj1j64MxaC9GP0JUy9i8AmZLX+xoTUQMM/r2C0dk+UNXFF8lVwUer2Nbx0a8vpsGlzh4vBzbD7+sKm0KXPC+C7PHtgLGZeHoialnJIXSRSRbD7Y8T2xiN5BlHsOEyLIpi4J8I6QZlhvuyQWy/opjHlXPTLscr7C59GB7LV11JDWTkRr9U7mriOnbkvpCkYWUmpJoRovMSX8OQ57zDjc1l4DBQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gEzTAmY4SrAKViBUsHxXjzJLOhLLipF2aq+5e2sux2I=;
 b=ZFQSJGelJCIK2sOu9AswtI/NwzwtZtAPlXii1+GBbB1WCByWplQ0DRgxC2sII8i09dnFS/ZbjbL0cCYdgdSKuAhsni+twTDWtysPoWQiYpKkCFLk/r1vmx1PevsmIZ/xeD+Y4+MK3wkcYGX9oLCvIieZsA1AHGwt8BKM2a4m4a2hm5IzFqQnDkRCLJvGmqrd32BC0s0kmzJA0BZRU0Unal1bgAgWKu/mtsCh4matXIupPoaszbeDmQJWAKzLVaTXYxErAeWSiL/JgAyQeoNytRhrnbhUeQL8TIrPTnIOGqu/2JjjQl2bOlSBWMWYJkqx00fIM7L8sw3CqV3wwEZh+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by CH3PR11MB8237.namprd11.prod.outlook.com (2603:10b6:610:154::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.34; Tue, 11 Apr
 2023 13:24:43 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::3fa1:b97c:a5bb:651]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::3fa1:b97c:a5bb:651%3]) with mapi id 15.20.6277.038; Tue, 11 Apr 2023
 13:24:42 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-xe] [PATCH v3 1/6] drm/i915: Initialize dkl_phy spin lock
 from display code path
Thread-Index: AQHZa9rQThjstfeieUi3BPgnhtlhyq8lyI0AgAAAVgCAAFE3gA==
Date: Tue, 11 Apr 2023 13:24:42 +0000
Message-ID: <fed7611c0f981b9d68b13f204f08acd95f22bb18.camel@intel.com>
References: <20230410183219.191543-1-jose.souza@intel.com>
 <87edoqes4r.fsf@intel.com> <87bkjues2r.fsf@intel.com>
In-Reply-To: <87bkjues2r.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|CH3PR11MB8237:EE_
x-ms-office365-filtering-correlation-id: 34b28892-2ed7-4b71-3ba9-08db3a901c34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mSw0sSsgeZ8JSqoRSmGurNx/Gm25BI3XGvwhse6SPjPhIKwHsCVxwRpCPn3JPmqB05UUTxjchGv2mKwGcqd09BrPZSszZLGijcGaeILgqRRjvZsqPSdoVT1qO43Y0T3qtXLlD7WJ6JdYuH6r5RjnkWFYrmXrSUCRzswKJnzwsb1hqlGmZ+9Bfi/RdV1MWQtExco/NaTLVwo2sses9lo1uh9NBhSVjJFQ+fQQlFAkeg8z+6BPbR3vRXWWyXZAMNg+86OjnsNrrzAsRe68vMheBFLA+OC3Pj/C29q5vKdwFS3xNH89SCdUzPIQrEfJjsc0WFo5DqJ/VkVwovkiHg8l3vCZW11kO2wA/GsONHjGFwKhiHkoe9z77ufkH4aooLD4B0OVJPFanqQfapssjFPJup7hEWpayQsyBIyzaLANS7CCTr+h+wpi/2jCJ0MIkheMu5z+7jdJzVfHjcDYffwntq81yRTMO3y0DgAT1pLeLxD3H6VoLcoY0uqx9qComlr8YGqiLsTO+U6zt71nooR4aZ1jNrBh/9V45zdzgnL2J20M8FTQlDHvgXfpsGl36kmQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(376002)(396003)(39860400002)(136003)(451199021)(316002)(110136005)(38100700002)(38070700005)(54906003)(122000001)(82960400001)(66946007)(76116006)(91956017)(66446008)(66476007)(8676002)(64756008)(86362001)(66556008)(83380400001)(478600001)(4326008)(2616005)(186003)(26005)(41300700001)(36756003)(6512007)(6506007)(71200400001)(2906002)(4744005)(8936002)(5660300002)(6486002)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QTI3cU12U0Vxa25YZXRDTStXdncwL3VlY0lCa1h1UE9zNXdyMHNuUi9ZT1Uy?=
 =?utf-8?B?WmFId2d3R2xtU1B4YzNLSEdUdzhGa3ZDSjFQc1U0YjI4bGdwMm9tbmJEbDhH?=
 =?utf-8?B?NEt5VDBoVWE0dlVsdjc5MXE4SjFCZjFENTZ5VTM1SDZuNkwzeEhaeW5sL3J3?=
 =?utf-8?B?VkpqYVl6akVJWW5ueVdCaitKVmR2MlR5d3dVVEVlQWpLOWNJNldjUmhJMytj?=
 =?utf-8?B?ZFBPbDhZNWdLTUtQZlhVdVhKZHRUcUJ2TjBIRVB4UktIQUlkbE8yRTc2UGxG?=
 =?utf-8?B?WUgvSnZ5cm1ubU9CNlltY0dwNkthOFhDNGlLS08rbGdNd0tsU1N0Nmg4YzFa?=
 =?utf-8?B?Vi9xbnhkMHR3WnhJR3JoZEUzSEFaMEkxZ3BvMmV1a3FUZUVrb1B6c09PZXhn?=
 =?utf-8?B?KzhEN0NveVExb3JyU01DS2Joc0JYTDBTckRlelBtSjFYNmRVbUU0c3pHMlFB?=
 =?utf-8?B?SGlFTmh4R2haWEhsYnA0cUdwZmg2bHlIQktSZnZVcDBHZ1JpaWJ5bzZFMGZh?=
 =?utf-8?B?aWFQZHJSakpaMEQ0WVJsNVBrUE9GaTBVU3NzZEg1RE5vOWpPS01xNzJEdTZF?=
 =?utf-8?B?bmsxL0wrOTdjQmY2bm9lRnlVVXpVSTZEM3MxZkJLU3ZZQmt0SnErc2xoZm1B?=
 =?utf-8?B?L1l3ZzlVRFh0Z3hRSytoTCsyTUhKQi9DeVpiOFEvZGtacVhKRERXTDIxUHVN?=
 =?utf-8?B?elVkVkM4a2dJVzhZSDQ0UVROQWFrTXV1bHF5RjZlOGNhSWhlZ2dCUVlpeDZV?=
 =?utf-8?B?OXN5c0ZpKzMydGtsNS8wREY0UzE4TlhOcWhPTVBVblJ2cmZFeStQRHFMTkE4?=
 =?utf-8?B?UGEyMU1yYjYvTC8yNWVCK1ZEUG5qV0IyUU9GT1NPMXJXWHU2UXZKNjR0VUdX?=
 =?utf-8?B?ckFTSHprMGNBeDRpZDdlMU1IMDE3NDJhYktoUnN2M3Y0ODBMODBPOG1CNnE3?=
 =?utf-8?B?Z2RiWXBNTm5KUUIwcEJGaDY1UTlMek9hYit3YzNaMSs1cWwvUk5lUzJ6Ris1?=
 =?utf-8?B?cnZJbE9USmFLSEM5bjZPYzlLaG5lQS8vOVg4SmZrVGR5Y1I1czk1UlRpM3ov?=
 =?utf-8?B?N3VNaHB3U3NoOTVnb3RNQ0I0Y3dPTmoycVlIaW5aL2YrVWFvODFodWJEOFgy?=
 =?utf-8?B?THF4L1pwcWMzYmJkNVdUNXNpZkVxSis1RkwvU0xJV1VjTFM0dGc3eHlXbnpx?=
 =?utf-8?B?VnI5eGtkTGpDaGJhWk9KSDhmcHFxUDJaV3FxQkhJdkFkRVBiNG81VW5TTlFo?=
 =?utf-8?B?M05UaTNGUU9DVWZud0o5Q3MzZE1ZZE1UMERMK2pINnZEcGhJRzJ4WnJobGFn?=
 =?utf-8?B?RnpJbEtyOCtoUzBLMUZRU1IzN21kK3YyU1dxRGZiUm11TWZYcVkwdmtLZ3Y4?=
 =?utf-8?B?QmhNdU9MTHNrNkVwQlhFKzZDU2x6MHEwdjFYdWs0RFVIcTdDcjdmV1BrV2pI?=
 =?utf-8?B?VG5ZekZveGpQRHlzcUhDb1NBK2hiQ3hSZlZVZlJzbEZmT0RkZTgxK1IwY204?=
 =?utf-8?B?U3o5cHhYaWRibUxRTWQwZ21FMVpEOU8yT1R0c2R4cE1paXYvRmdHWjFVRzBY?=
 =?utf-8?B?VkNEVzV0MTFoNUVueVRGZllFYlBpaDNFa2JWc1hGeUpWVitvaFc2Z2tVcGdY?=
 =?utf-8?B?UHd3Y1pvZFRxdm8wTnJWSFl0ZHVpUmYvU210Vmh2eUE5K0VJcmxURkNSNDZJ?=
 =?utf-8?B?QWNRd2JjMkVZTHhiTG12d09VSFNuOGZJWjRNZ1cxNDZwbWtyTTh0WjRMVyt4?=
 =?utf-8?B?ZGNuanVCY0JnVlJ6anliNE9KRHdNSm5EMjkyaHdqaklCOWl6UDhVK0tTRE0r?=
 =?utf-8?B?Yndrdm9aQUMyazQyYzF6NHZNaTFvMWxJV0NTU01ZTHlLUHo0d3FOeURRa1pP?=
 =?utf-8?B?NXM2MllIejQ2TXpYcGdLRlJvKzVaZm50MGlCbTBvdW9SSDRjSzUySkxyay81?=
 =?utf-8?B?RC93RDVuL1BzamRhcHJ6UCsrQ2w1ejIxR252dEdDZTBBa3NFWE5ic0pLR1VK?=
 =?utf-8?B?TndlYTYwVjVlZ0xtYlRPNFZQNDRONjJPYWFnSncvREFMRnA2YjR6MGIzWWZx?=
 =?utf-8?B?c0VtM00yekN1LzlMOTRVS2l2a2FXNDNLOG9IdzFUb1g5Z0ZPR1d5bDhjNm1P?=
 =?utf-8?B?SDlFTVVOVHBxY3J0OU1lTlhGazkzQXhoMGxyK0JDaWQrZ0FVOHUvYTZxZzRp?=
 =?utf-8?B?bkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <45217BDDD2A25441BE80EA1599FB8313@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34b28892-2ed7-4b71-3ba9-08db3a901c34
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2023 13:24:42.5705 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckSFYEWuRgFgB6gAmxnfMhptJhuSoW2wDmgyPKc8sO+SOVZvHBGQrXBHGHzQSAIRM5KLGEPXX/O6PiJ+5LKJdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8237
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v3 1/6] drm/i915: Initialize
 dkl_phy spin lock from display code path
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTA0LTExIGF0IDExOjMzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAxMSBBcHIgMjAyMywgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVs
LmNvbT4gd3JvdGU6DQo+ID4gT24gTW9uLCAxMCBBcHIgMjAyMywgSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+ID4gU3RhcnQgdG8gbW92ZSB0
aGUgaW5pdGlhbGl6YXRpb24gb2Ygc29tZSBsb2NrIGZyb20NCj4gPiA+IGk5MTVfZHJpdmVyX2Vh
cmx5X3Byb2JlKCkuDQo+ID4gDQo+ID4gUGxlYXNlIHNlbmQgdGhpcyBhcyBzdGFuZGFsb25lIHBh
dGNoIHRvIGk5MTUuIEl0IHdvbid0IGdldCBtZXJnZWQgdG8NCj4gPiBpOTE1IGFzIHBhcnQgb2Yg
c2VyaWVzIG9ubHkgcGFydHMgb2Ygd2hpY2ggYXBwbHkgdG8gaTkxNS4NCj4gDQo+IE5vdCB0byBt
ZW50aW9uIGRybS14ZS1uZXh0IGlzICpub3QqIHRoZSBwYXRoIHRvIHVwc3RyZWFtIGk5MTUNCj4g
Y2hhbmdlcy4gRWFjaCBpOTE1IG1lcmdlZCB0aGVyZSBpcyBhIHBvdGVudGlhbCBwcm9ibGVtIGlu
IHVwc3RyZWFtaW5nDQo+IHhlLg0KDQpBbHJlYWR5IHNlbnQgaXQgaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMTYyNzIvDQoNCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiAN
Cj4gDQoNCg==
