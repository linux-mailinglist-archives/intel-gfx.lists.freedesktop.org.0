Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C80E4766A3
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 00:41:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB3A610FB26;
	Wed, 15 Dec 2021 23:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88C8910FAF6
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Dec 2021 23:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639611683; x=1671147683;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=D7UFbxJDWJ3pwapd3DrteE96fyQ43g1i+7LJZLfachQ=;
 b=Yg99HQhXxDWJHxdGoNfjJhh2+v6ai2pyCk/FG1Gi0txp63OOp2yXd0Ff
 foYfbFKDumRh4DwUoKTmTu1l0gmyUj4NrKL6Rv3wkqW4TaXECIUu/ErRq
 i2fCKLHQnvjTRBZYj72jgpXZnkO38AnXSkTzR6Gj7qnSfqfxPxzHddbOt
 usAu8k4beQ7rIotdX+uHmLDPaByy9YLEXDjiOQvUiap5NIkdLZh0RsIGv
 bPEbe7gTDcaf2cH6K6+j2EnKoXIhcsElbHoqbwlzGAXI1Pwd5tcTJO9A8
 y3RFH/5LkNiiW7VG9C09GoDQgrj/08BhjHkquYdiFqwb6A+ixyccmK4me Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="239172040"
X-IronPort-AV: E=Sophos;i="5.88,209,1635231600"; d="scan'208";a="239172040"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 15:41:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,209,1635231600"; d="scan'208";a="482598543"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 15 Dec 2021 15:41:22 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 15 Dec 2021 15:41:22 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 15 Dec 2021 15:41:22 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 15 Dec 2021 15:41:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QKZoZWx34LbFl/5yIgTAdr8xIQsfMbzzGjbrd44R4OSSWzDEOq3SrgoufbQ+8yCqtcRq0mu0NpK0FSYCcau5sJxJMxjOND0glF0BA4oBguO483LmAXwWZurojESvhnTHAlLqR7eFCFM9+KVJLwyGLtQ+8eHubsAZsQnQ1eMf813h34XbiVdiVMhepSQcLmf7yHCu7QN59m/GmQwwUA41pt2EejRh61kC3a4+oDslCJQun0n/CvrqXbMbqEt3/5W41COZXrCtsokESZm6lbYGIX0yP7tCCS2RiLxeLoK1128kPX2w7p5Geq6LmDyKe0K7Xp07tl/skBzClnYswLcTtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D7UFbxJDWJ3pwapd3DrteE96fyQ43g1i+7LJZLfachQ=;
 b=Pm86Hu1xrqQMgduB0M65Q+zlKP4FHOzHGnVRp4cOdenSu5fhWvnKoWj/hnkJHmBCvlp9tsntTASKaMP5nDu7G9txrmz2YEljwOUPKW1YRxpDSv0JUA3mdyU04qpNJ6hrgPGseoYOgKMWRup0bu0ob4qpCjvwgnOwG1fk9peXflEgvSaU67wwN8l1WMNKyxYjrMAR6y+9trHvLxOHOM2cG4/xGLP/P+gMHhEngHc1/7FCjtRncY4vyqVQyXtTb+FGV95iJ96k9d327t+aR5Hs6LJRi/zVli0qaNlJU268yHSI2n7N8/sJkgZIYhV/z5tlExBYcRACQ9/a1wLedV3IGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by CO1PR11MB4803.namprd11.prod.outlook.com (2603:10b6:303:90::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.14; Wed, 15 Dec
 2021 23:41:14 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e8b9:8f6d:8519:72ca]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e8b9:8f6d:8519:72ca%8]) with mapi id 15.20.4801.014; Wed, 15 Dec 2021
 23:41:14 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "Hutchings, Ben" <ben@decadent.org.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "kyle@mcmartin.ca" <kyle@mcmartin.ca>, 
 "jwboyer@kernel.org" <jwboyer@kernel.org>
Thread-Topic: [Intel-gfx] i915 Updates: ADL-P DMC v2.14
Thread-Index: AQHX5xph/f6XAKy2GE6V4WspnPfE+qwo74wggAtcvIA=
Date: Wed, 15 Dec 2021 23:41:14 +0000
Message-ID: <edc5973fa662d059d4ffa3d01c5e7823817d5784.camel@intel.com>
References: <9d3a16d4327fd6bb0a52cfe8e4bb0857a81494f2.camel@intel.com>
 <2b6c0de45581430daff7f698e94d94ad@intel.com>
In-Reply-To: <2b6c0de45581430daff7f698e94d94ad@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.2 (3.42.2-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: efccc8c3-e5a6-4798-7fda-08d9c024621e
x-ms-traffictypediagnostic: CO1PR11MB4803:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CO1PR11MB4803828BC2246AFF2C155566C7769@CO1PR11MB4803.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:323;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bf9aWHcbz4SVayATJHIkRbpeTjFySLrTACm79sf1qLKFyjnHDASs7Or5fS18T9neo+UUnhOnLegnp+8icpOZP7l/wqKc6C1Ef+HyF1oYS5QoeXHRfNXBFmkxE1p+c8nGVT5OvF/qoinrdQhbK+hruJgQjc29OcvwYe1ex36CAgAv8GbeZfLSOFeNItMs62gn2pLh7Szk5VGDY4IR4GReAnLr0cFvDj9ghUlEF/P58L5PXtZXeSR6mWleqj6M3VWgFqAr1SpF1ykFzFiXFJczvQmE776D2IoCf8wtK7RNDEY43+XhuUa0vo8sGUjkx3sKlzbOyJGXk4e7ZqntvNFg0oAP7wtElSiaP+tQKWbHrW9Zctg8i39sGEAmfkq1XzT3JtdQL0lMMp9b3wU0VbMl9iGWPyyZPsalbcTOc5deewaxlfRsdPczbSLF5zNg2rJL+e/OFF20lgZ9Rrs0//5YNW820u0zc9IfGxvM+zUejf7JMxzEXsoRDY5WFmJKuhdzFCioege6b/Al2C9Lh2qqITHKeoRg5JBHpcuYKayzFrpCodP7vg7ZNidanYvA4nZn3CbcgFU63Xj5Hp4B/R3PMafZsXnmFkwMDfb9C84q2x1BDC0DmY5m7CeaPTKT+GnF9CxhMsIZ+EkPU7+QCXBzf7eLFvF4G5Mt0p27QcEQ+49YeaVMnoQobdGXKZzf+Q43T/sFcNUzVP2Q/6jpWErA+g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(82960400001)(508600001)(66556008)(316002)(86362001)(66446008)(83380400001)(38100700002)(64756008)(66476007)(36756003)(66946007)(71200400001)(122000001)(4326008)(76116006)(2616005)(38070700005)(54906003)(186003)(2906002)(8936002)(110136005)(8676002)(6506007)(6512007)(5660300002)(15650500001)(6486002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UzBBcjdOdmJSWEZ3aHFZeml0dWNTNUhFR2xwYTN2Ym02YU91TStmVElaMnFB?=
 =?utf-8?B?VFlzSmc4OUJueGVZVEVqR3dQVkNYZnJCbTVJV0d0Q1pDUFBtbTI4b25ZSGhH?=
 =?utf-8?B?OVdUSEcxb2pnWnpGcGMwL1N6SHNtdXpRSHBrRlhnYmhCV3pqcEdac1N1UWQw?=
 =?utf-8?B?dHdvOXlGMGRPaGxPSUNyWTl3N01xNG04dU5OOEtlcEQ0R0R3ZXd5amZsRE0v?=
 =?utf-8?B?UVpvYjBQdjhlS3BRK3YvTUdhQjZJdnFoRTM2K2Iyd0hsVzd1UzR5SXdVTWZs?=
 =?utf-8?B?L09DcEhVNzRFbUpVZlRJRmp1VEhxdUZyc1RXTURweUlmdC9MUjFMZXA2ZVVF?=
 =?utf-8?B?MHJaOGh0bzBKRERUUWFzeVh3WWlhUUVTOE1iazRpdkNvcEI5OWtDbTJidlRn?=
 =?utf-8?B?VnV0R1hDVFlSTytFdjhrcFQ0RTVoZnp6RWYrK2RnOW4yVEE2a0MyOWdBWjdQ?=
 =?utf-8?B?cG5tV01KcmpVeGp1Sk9McERFSWcwNVZYVGFTaWlmZm5qZUpUdHpTYWI1bmxG?=
 =?utf-8?B?cE1GUWxieHptQTZUckRrbVM1NTRpSWpvSWFTakMwWjNIa0JqamoreWV1eWxr?=
 =?utf-8?B?RWw4YWRFdWJ4dXJLR2Rxd2hMVXlCaXlMbzdidlpjdjU5L2lCMW8rZWpZcm0z?=
 =?utf-8?B?U3ZIVWU2VHd4TGd4OHc0MkF2cnB1VzMxRXJOTUQ1ekMxb1pBSE5aRy9WVXdx?=
 =?utf-8?B?UEdReTVMT3F0SWx1SDdCMGk5dng4S1kxdDRwalI4aDc1cjE2TmRaNVVuVHdH?=
 =?utf-8?B?Z0JUZnBKeVdzaHQrNjBta1U5T1E5MERqc1ZJRlB5anp0VkgwaFI5SkJOQlJ0?=
 =?utf-8?B?MHkrbmlma280QWtuUGdxbzVSWllGVUNIMERBZzhWNExLVTJIWmxoNDV6Y2RT?=
 =?utf-8?B?NnIrM2w2Z2syMXJNd0VTNW42cWxudWF5L2hhSnRRbjhqTFo4M1RBb2dwNTFu?=
 =?utf-8?B?emExS2dqMFA4S3lKZjNqeSsrMEE5a2hEcFVjY2J5UVN6Tm5RTU9vajlmR2dx?=
 =?utf-8?B?MUtlek14T1BneXorTUVkY3V6cWJhQ0pRZzdkU2tVdWZ6QTVLdXFDZHQ3MTg1?=
 =?utf-8?B?dmpkN2NGUThXRStiKzZBZjExOCtnSFFKUmdHUXFBclZwVFVvT3Q2QVkwa1Rs?=
 =?utf-8?B?dDlyVnhYZ2dDTGwvdUMrL0RvaUZ6bXBOVGcrRkVFMVZZWkllemQzNEpreE1v?=
 =?utf-8?B?Z2RwOW1GWHpvZVhxUXphNzJTVWkxNWpsL3doSlZWSVlIUCtZOXBvTkI5T2N0?=
 =?utf-8?B?QS9BYmFYKzY1dTZvN28yV25NdFVSa0E1dWV0MUptdVplVlkvMXlHRG90QWRE?=
 =?utf-8?B?MWFNMWM4VkJCWEVldDh0dHJ6U0dudU1mekliSnlSYzJCTTEydlE1bnFldUxQ?=
 =?utf-8?B?WmNjTmY4dFIwTmU3bGNwV2NJZWdZVHF1V3lDdE44dVIvOEFrNTBQcG9yU05X?=
 =?utf-8?B?QkdPY05JR0t4UXgrUm91TnNOUFRaWkNKU3hacnFMNDQyclRFczhFRXhQcjBi?=
 =?utf-8?B?WDBzZlgvcHJDK0VHUk9MMUJwQXZhWkdXT05EVG5rYjRnQjk4Sndzb3R6bm1K?=
 =?utf-8?B?WXpqWWN4dDZqc29SU1lvd2ZHYW9neVYreUkvT1NuaytXbk80dmVvVnpLYncv?=
 =?utf-8?B?WlR2bEFtWE1mY0I3N2I5bm9mZmpvYzNCK2RTU05sNktNNlZHL2JjZllTT3Mr?=
 =?utf-8?B?RlhnYksrWk9NYTFzR0hXSEpsSThtRHhKV1hDTVd2N1lBM2kxSDEyUVpLR3ZD?=
 =?utf-8?B?dll2MEVWTWdzN0JndGVUV2NTWnRuOGRsNmFkZDZwSHg2c2NReElRSnhUVHV2?=
 =?utf-8?B?MmtKSHpPOGxFenJEdHV5UHFUamtha1JaeGJrMVlEeWhYU3VKWmNXcUx1NTVK?=
 =?utf-8?B?YWhVWmJneE9qemNXTXNCelg1NzgyNjF6ZzFXeEFtdVkzdmIrdkRObXBQTTZX?=
 =?utf-8?B?dENYOU1EdUg4STN1YXYxaTFPU1FDS1JBbXMwQ2JEdlFzdUl5RkRvUWlLZWcx?=
 =?utf-8?B?SW5UVzI4dmRvQ2w4d3dvUlV0UzJwMjNEZlNjR2hwYU5HMkwyalVncTUwWjVt?=
 =?utf-8?B?M2d0QzhibTRucTBDZUxZUU81dlJNbjA5MTBNd0xGdVMvRW1sR2ZrZGNxb3Av?=
 =?utf-8?B?SlBzelJMU2tHT2NIRHlNSW9Xa3J3cUUzSjhmYldzb21WaC8wZG0rZmpwc0da?=
 =?utf-8?B?OE1SVEZkKzhndnpCVjBsVXlCWnVESEZETDRNUE5Md1dyTngzdkMwWU1tSmFR?=
 =?utf-8?B?dXk5UGx4QkV1dUg4b0V0SEkwd2IzbUFoK1duTGxIcjVxQnVSaSs2NXF2SElW?=
 =?utf-8?B?amhiUXN5MWpDSi9UbzdOaE1OVTdKcXZnZUo1c2NLSVJEckdqQlVPa1hLUE1u?=
 =?utf-8?Q?vxqbD2qtpQRJVI1GuXKY+AtZqniM0nQ/fH+h32eEtQU3a?=
x-ms-exchange-antispam-messagedata-1: LXbUH5DowIuKpC580X2OvljoIx5ZR2EXr7g=
Content-Type: text/plain; charset="utf-8"
Content-ID: <11A746160288FE44890CC4AB9A065500@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efccc8c3-e5a6-4798-7fda-08d9c024621e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2021 23:41:14.6351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SB4S84DAk5J4JbcUzOx6K6869chu+ObV8ZSwlsSm4oiL4z5NrGAC5bXNqPBjiyGSiTqlCZwmtHpl8BeyAs/dgTRlKYk7k63XDJjUO/SztL8jWBwkwHL8bGOj+neg5m0MkmQW3b6a1QPWgdrrhgYL2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4803
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] i915 Updates: ADL-P DMC v2.14
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
Cc: "linux-firmware@kernel.org" <linux-firmware@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QnVtcCEgOikNCg0KVGhhbmtzLA0KLSBNYWRodW1pdGhhDQoNCk9uIFdlZCwgMjAyMS0xMi0wOCBh
dCAxODoxMSArMDAwMCwgU3JpdmF0c2EsIEFudXNoYSB3cm90ZToNCj4gUGluZyA6KQ0KPiBDYW4g
dGhlc2UgdXBkYXRlcyBiZSBtZXJnZWQgdG8gbGludXgtZmlybXdhcmU/DQo+IA0KPiANCj4gVGhh
bmtzLA0KPiBBbnVzaGENCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBG
cm9tOiBUb2xha2FuYWhhbGxpIFByYWRlZXAsIE1hZGh1bWl0aGENCj4gPiA8bWFkaHVtaXRoYS50
b2xha2FuYWhhbGxpLnByYWRlZXBAaW50ZWwuY29tPg0KPiA+IFNlbnQ6IFRodXJzZGF5LCBEZWNl
bWJlciAyLCAyMDIxIDY6NDggQU0NCj4gPiBUbzogSHV0Y2hpbmdzLCBCZW4gPGJlbkBkZWNhZGVu
dC5vcmcudWs+Ow0KPiA+IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+ID4ga3ls
ZUBtY21hcnRpbi5jYTsgandib3llckBrZXJuZWwub3JnDQo+ID4gQ2M6IFNyaXZhdHNhLCBBbnVz
aGEgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+OyBsaW51eC0NCj4gPiBmaXJtd2FyZUBrZXJu
ZWwub3JnDQo+ID4gU3ViamVjdDogW0ludGVsLWdmeF0gaTkxNSBVcGRhdGVzOiBBREwtUCBETUMg
djIuMTQNCj4gPiANCj4gPiBIaSBCZW4sIEpvc2gsIEt5bGUsDQo+ID4gDQo+ID4gS2luZGx5IGFk
ZCB0aGUgYmVsb3cgaTkxNSBjaGFuZ2VzIHRvIGxpbnV4LWZpcm13YXJlOg0KPiA+IA0KPiA+IFRo
ZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQNCj4gPiBiMGU4OThmYmFmMzc3Yzk5YTM2
YWFjNmZkZWI3MjUwMDAzNjQ4Y2E0Og0KPiA+IA0KPiA+IMKgIGxpbnV4LWZpcm13YXJlOiBVcGRh
dGUgZmlybXdhcmUgZmlsZSBmb3IgSW50ZWwgQmx1ZXRvb3RoIDk0NjINCj4gPiAoMjAyMS0NCj4g
PiAxMS0yMyAxMjozMTo0NSAtMDUwMCkNCj4gPiANCj4gPiBhcmUgYXZhaWxhYmxlIGluIHRoZSBH
aXQgcmVwb3NpdG9yeSBhdDoNCj4gPiANCj4gPiDCoCBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9w
Lm9yZy9kcm0vZHJtLWZpcm13YXJlDQo+ID4gYWRscF9kbWNfdjIuMTRfdXBkYXRlDQo+ID4gDQo+
ID4gZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvDQo+ID4gMmEyYWE0MTBjMmVhZWJlNTgw
N2QxZmQzMjFlNDJiOGY1MzI4OGQ5MToNCj4gPiANCj4gPiDCoCBpOTE1OiBBZGQgRE1DIGZpcm13
YXJlIHYyLjE0IGZvciBBREwtUCAoMjAyMS0xMi0wMSAxNjo1MDozMCAtDQo+ID4gMDgwMCkNCj4g
PiANCj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tDQo+ID4gTWFkaHVtaXRoYSBUb2xha2FuYWhhbGxpIFByYWRlZXAgKDEp
Og0KPiA+IMKgwqDCoMKgwqAgaTkxNTogQWRkIERNQyBmaXJtd2FyZSB2Mi4xNCBmb3IgQURMLVAN
Cj4gPiANCj4gPiDCoFdIRU5DRcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoMKgIDMgKysrDQo+ID4gwqBpOTE1L2FkbHBfZG1jX3ZlcjJfMTQuYmluIHwgQmluIDAgLT4g
NzczMDAgYnl0ZXMNCj4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+ID4g
wqBjcmVhdGUgbW9kZSAxMDA2NDQgaTkxNS9hZGxwX2RtY192ZXIyXzE0LmJpbg0KPiA+IA0KPiA+
IFRoYW5rcyENCj4gPiAtIE1hZGh1bWl0aGENCj4gPiANCj4gDQoNCg==
