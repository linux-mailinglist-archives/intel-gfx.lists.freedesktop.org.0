Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB116E4FF9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 20:13:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D634C10E051;
	Mon, 17 Apr 2023 18:13:56 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D746610E051
 for <Intel-GFX@lists.freedesktop.org>; Mon, 17 Apr 2023 18:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681755235; x=1713291235;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mLDh9ca4cF0YYpJ9LV0lihFrICNkEjodC0T1frSTSCs=;
 b=H7fOO3XaSd1J08LTkg2AguXStT4N5zrZFtOeeZ5FRIQzwZVuhcFIWWsN
 YOdRro+5PDTdIoQ+X9FD1AIiiwPz4xYNKe411Yrl8YPSANOoIioyHO50V
 p8nem1ZEcG+CCgaRC0zAjmr1QBniWpP6VchAZw0hqgioTwTDiTFRfrtyu
 rkoQRLHHKjuAd6dG66E3GCONVQOAX669/kos1JZXuiZPI2KGbae5xeP1n
 er08EK9Q8J46CPa3CVYPGaXVwD1VH1BOGGP1Rl70M5rbjJIKhRHO2shHS
 zpiKSrR7PNawbSG4GZDAyvN7Ctq0iRXgMETBtBdXu6lVPdKM7AC0XxAfX A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="407861934"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="407861934"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 11:13:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="814903616"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="814903616"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 17 Apr 2023 11:13:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 11:13:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 11:13:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 11:13:43 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 11:13:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cFISr+iUu4q1XU+ePOoQohmkf3EZvsdgmlqW3l2uiAwN8FR2nKl5gsticwwYcB3Vb+NG3cA5id938ngO5vGiISLnjjzGam3baP75W6ou5RpaGPiUhMyezhwPYM0oAXAz/vOrpdIp+krc24mw59rpROaRXtvp1PWoGUzzZ5+ENkIGGTSZz8Z+Mj3dNnQlrIgn+7/yLL88CzwjK2itK+voattSUiONk3dB3UBOHoM/gho69fM209NaHtxyEJGWS5Xi1muZfKo2eB1p5kjaJOfjKAE4wWfcFwdbH5ujdBDOU3xmQkSb5ZQVckH3nXRbRQ2MgPcdvVk82LESfAWt1Cdbmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mLDh9ca4cF0YYpJ9LV0lihFrICNkEjodC0T1frSTSCs=;
 b=PuGLIOVAoHXjtIT6R/79towU5mMAvk6pnC+l4ISjZDwaNbJKGDY9ilO8Rhst3OnXOOtox2tnNgyY8FowngdrLEwYdg1iKymKVIQhiOZFYry3ttwyZ8+DHgYHH6ULDpcpE/Y0xAEFULebetXBOfHxn7cYc6KRDWY3R/uKyy41+812Bl7cFN03ELqPpA8qEvlX9b0zHUVNJL6M8x4R4qn9IJ3vVJhOUPTOZ8mVSffG4muX1RfZuaJdQH4ZtfVoYdtXrvW2DstawX15Wd/MR4YxigOK1JBJVaElUUt0JvcjFbs9ax+BPEhUqVyDpMtt2Pe/dG4pc1ZmT5f+c6xcub+4XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by DS7PR11MB5992.namprd11.prod.outlook.com (2603:10b6:8:73::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Mon, 17 Apr
 2023 18:13:40 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::8bac:7778:ee91:d0eb]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::8bac:7778:ee91:d0eb%7]) with mapi id 15.20.6298.030; Mon, 17 Apr 2023
 18:13:40 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "Intel-GFX@Lists.FreeDesktop.Org" <Intel-GFX@Lists.FreeDesktop.Org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gt: Consider multi-gt at all places
Thread-Index: AQHZWJQlqDegZ6/OFUKTEZR5tzfWf67+sQ2AgB2w19CAAB6/gIATfegg
Date: Mon, 17 Apr 2023 18:13:40 +0000
Message-ID: <SJ1PR11MB620449F8CC466CEBCFDB97E9819C9@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20230317055239.1313175-1-tejas.upadhyay@intel.com>
 <eeec7ffd-0e77-9360-6bd3-9054c23b77a5@linux.intel.com>
 <SJ1PR11MB620468D7F5DCD777F71D04E981909@SJ1PR11MB6204.namprd11.prod.outlook.com>
 <9cef68ec-66c8-2cf6-ed49-7a71334b42c1@linux.intel.com>
In-Reply-To: <9cef68ec-66c8-2cf6-ed49-7a71334b42c1@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|DS7PR11MB5992:EE_
x-ms-office365-filtering-correlation-id: f0aa8334-4275-4c8f-b48b-08db3f6f78d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5TfsMbMUQ0ZAuBDHNjJ/EnkrgB6sCcvHPD0fk7ZgWFH4giWeXulrAbWmBOApqi+6/sGIIb1nuER3TeIQryNzSodZPp3+bUcH39Ba3rx04K/Gxd6ZFKj2GA0YNKp/XeLxSPb4v9ys/dOWqbfXf6990XtHtSRUCozW84hvaKuLWgWu1h0J9BzQ+IhTGTa5n6oH12tDoqbSKOrWYlquSktrO6ZWsftRz1R34gU1cbDkWd9k+N9mplt93qhKgMyBbbXTeUNRFBNq2ySkkDmFzAmOqTvLF0pNUTJsdE5XAmp/lp2hErtx97VDym2dJdHDe05WkXPHlGK/ZSFSG7iMVYTeuniCBsbMXFV52RIYE7QCJSaULeLlChlSUFSf/tZWAeI704KzY1Cx6Pxns2mYtHmFvJH8Ss9o9OtCpzStH8lJBKO8ZqIhCSwdazBGmUnxrOnSMM4vH8a6UvsdTPX8Cv0EW/DXPw9OrILfbBXzU9nDAzJ+sq1RN7DfOJ8kiQkBn2LjlhIrqvU7GF6MYimHU7pPAFgAdHP9krFBLMLKh+W+Raget01I2pWoCFEx0jTHCfKdT44tvE5Wm9Gd6M3NWtUUxL7JioMvAELrhKnuN6ZI49pU9uGUcaL+scENP+2K+7l6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(346002)(376002)(39860400002)(396003)(451199021)(53546011)(478600001)(33656002)(26005)(9686003)(110136005)(186003)(38100700002)(6506007)(316002)(82960400001)(8936002)(8676002)(41300700001)(64756008)(4326008)(66556008)(66946007)(66446008)(66476007)(76116006)(122000001)(7696005)(86362001)(71200400001)(55016003)(2906002)(83380400001)(38070700005)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YnE0Mk1MSy9UUHhWcTczcGs1QmZObXdCd3VFT2RSODMxOEFxbHZsVG13Rzh4?=
 =?utf-8?B?ZE9uTEtJWjMzbEpIUUtTUGhQODgxTjhuZ2JTNVZWbjIyRTdUMjZ5cDFtdUY4?=
 =?utf-8?B?MXNzazByWExsQ0E4T3RBRnVSRlFXQ3NNRU5NaEVLcE1IWU54dk1DTlN3SmdJ?=
 =?utf-8?B?Qkl5cElGRTBGaEk0b3hxa2Q4VDJ3MnlZaFBPV0xVSUlRbmUxTjdTdmRzVzR3?=
 =?utf-8?B?QWZrK2pIM0NlQnUrcEVoQlFXQVMzN2d2WS9iLzIxeFgrVm1VdjE0N2p2VUJq?=
 =?utf-8?B?R1BWZ1pyN2xabUdZSXNLMzZkdFFQeXc5VXpVeG5nKzJxUG5sOHNsSVlwTTNT?=
 =?utf-8?B?TTliQUlFaENPcm9BQ3p5Nm1HbUpRcFcwRjVsbTBaZXBENkFHM1VuRVA5SEc3?=
 =?utf-8?B?Y0FDVFEzdkVjN0JhV3d3ZjduMmhtUnlpclJWSldadTU2Q2wzRGtCRUFibzlq?=
 =?utf-8?B?dU1ZbFE0YUQvRm5iL1dLcGVFeGNpTENQYjJCcjVrWlB6VzloSHF0V1o2YXNt?=
 =?utf-8?B?K0J5NWJvdnBIOUpGczBYQUluK3NZeHRyb1ZSTWtURUxQTjY2OURjTWIzUkdh?=
 =?utf-8?B?OC9kdU5aOC9EOVVIYk95YWFGMlR2VVEvdE85TzRwUDFHL0J2VVlsSFE3MTU3?=
 =?utf-8?B?MFd6Ry9hckxHNU1vdTRUNVFTVFhtSlp1THhqRTlIb3dKNVluQ0lRenZ3a2JR?=
 =?utf-8?B?RG82Y2VFb0ZmdEVzMTZ6ZTFCckJiZ3Y2V1JIY081NEp3VzgrZVZrTTdBU01H?=
 =?utf-8?B?YUxhS2hodFZuSXdGT0wwdk9nRHdGUVkwMEQyd1NDa054N2dIb09Dak5tY1ZQ?=
 =?utf-8?B?aDd4aW9QUXgwT05ESWVqVnhVenZJMjc0V2tINTFKelNiZTJaZGhjNzhVaHlZ?=
 =?utf-8?B?VzcrbWhxSVYwUlU0ZmlDSnZkTTg5dDIvOTkxT3k5Qk45T1NzSzJNTjJCZDRo?=
 =?utf-8?B?YmtjMS81RnYzbEtoaFpKRERhVlArWHByay9XR2d2RXI5b29DUUorWGYraCtG?=
 =?utf-8?B?UlZpZzdkcU1UNkkyTTBLTU9BVVhNWURMWUphanltWVRLRUYrdCtFZTRxTkdE?=
 =?utf-8?B?MS9RRmpQL20rc1gyVDA2S2JPTXNEckIwZ21oRGN0T0ZuNFptb3NKTWFkTFE0?=
 =?utf-8?B?NURZd1dBSjFrdTRqM1A2U0VZdS9udytGWWttbkNVT3cvQjVkeXJ5dGRqOTNm?=
 =?utf-8?B?Y0FNbnB2bUM4OURQN1Y2Zk9sbzhRc2RWdGJSSHZzdDV6Q0ZtaXh4L0xleVpk?=
 =?utf-8?B?bDdCOHI3NDdLSzh6RnRxYXZXdVpjVzBmVWc3NWJBazBva1FMWUM1SU1Ud1Vl?=
 =?utf-8?B?U3lheEYyTTVaNEZ0VWpVK0JyTEl1R0JsaHMvWlB5eVd6SlJuUXFmcEt5elZk?=
 =?utf-8?B?RG9meWdvak9HbVh3MURHZXBVY3M3RXM5ODExRG1OY2x2VkNpMVFqazBsZHgw?=
 =?utf-8?B?R2dNSHdoc05Ud0JQM29tTWpJcXZ6a0xEMXcza1l6Uys0Z3BCcExlY0VpV2J1?=
 =?utf-8?B?NS9PRXdhMCtqanExdXh2WWpvOTJQMkVmV3UxWlduZlhKOUExUW5TUmlhcEoy?=
 =?utf-8?B?aGRLbWxmd0tUQXNJdjdiOWNGRW95SEdhNkV0bWxFYlRXdzRWVGRBR29BL2gr?=
 =?utf-8?B?eDNVeFV2SzNLUGhvNkxJR3N0YW9ZYnBiajc4YmxHbE5JelFMM3ZZaWhMM09u?=
 =?utf-8?B?RWg1dmg0UlEzOGN2TWN2YjBTQmpCVlNuR0J3L0lpS0JaVnFiQ1FpKzNQYzlJ?=
 =?utf-8?B?U1lQUFJaZHVuNzBBS3loNTFFSDQwcmFucGVmRCtEZ2tEYW42aE83MTVnekNH?=
 =?utf-8?B?WVJpM1g1WlcvYUxRaVdQQ2lYWS8rVld4NG1hSm5Rd0FWUmNKRXlJSVQzMVdH?=
 =?utf-8?B?eWRDa0kwTjVNNlBXQkRZS0wrVHFCV05sVFpmSllqNXpVK0x3d0dxTzVxUkF6?=
 =?utf-8?B?WUx1RXF1Zlp6UVdwUmVQVTdPWHhnVU1lem1OU1cvTHNEMGtxZXpUbjlCSDhv?=
 =?utf-8?B?Z21EV3BrSy9JMzNYdVMwc1pTMnJZVnZDUDBmdE1HcG8wVXVvZ0JTdHBielRj?=
 =?utf-8?B?UzJvTVRyNm1kaDNzUTZEcUs5S3RGcDdFN2E2d29ScFFQaWZHN05wNklialRa?=
 =?utf-8?Q?a3d7YuPL8pN2IXZYqqLWDRaQk?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0aa8334-4275-4c8f-b48b-08db3f6f78d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2023 18:13:40.4102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gfw4ezCQg4ka92epubLnYmts6hmm0sg/XMWzHiv4848f90ABN3uviK5u9dsJVZONRoqiME4RyueC2Vl4QbVOpIXMFSosEmQ1U10pejYIRjU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5992
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Consider multi-gt at all places
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
Cc: "Shyti, Andi" <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBBcHJp
bCA1LCAyMDIzIDI6MDEgUE0NCj4gVG86IFVwYWRoeWF5LCBUZWphcyA8dGVqYXMudXBhZGh5YXlA
aW50ZWwuY29tPjsgSW50ZWwtDQo+IEdGWEBMaXN0cy5GcmVlRGVza3RvcC5PcmcNCj4gU3ViamVj
dDogUmU6IFtJbnRlbC1nZnhdIFtQQVRDSF0gZHJtL2k5MTUvZ3Q6IENvbnNpZGVyIG11bHRpLWd0
IGF0IGFsbCBwbGFjZXMNCj4gDQo+IA0KPiBPbiAwNS8wNC8yMDIzIDA3OjU2LCBVcGFkaHlheSwg
VGVqYXMgd3JvdGU6DQo+ID4+PiAtaW50IGlndF9saXZlX3Rlc3RfZW5kKHN0cnVjdCBpZ3RfbGl2
ZV90ZXN0ICp0KQ0KPiA+Pj4gK2ludCBpZ3RfbGl2ZV90ZXN0X2VuZChzdHJ1Y3QgaWd0X2xpdmVf
dGVzdCAqdCwgc3RydWN0IGludGVsX2d0ICpndCkNCj4gPj4+ICAgIHsNCj4gPj4+IC0Jc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0LT5pOTE1Ow0KPiA+Pj4gKwlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1Ow0KPiA+Pj4gICAgCXN0cnVjdCBpbnRlbF9lbmdp
bmVfY3MgKmVuZ2luZTsNCj4gPj4+ICAgIAllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsNCj4gPj4+
DQo+ID4+PiBAQCAtNTcsNyArNTcsNyBAQCBpbnQgaWd0X2xpdmVfdGVzdF9lbmQoc3RydWN0IGln
dF9saXZlX3Rlc3QgKnQpDQo+ID4+PiAgICAJCXJldHVybiAtRUlPOw0KPiA+Pj4gICAgCX0NCj4g
Pj4+DQo+ID4+PiAtCWZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIHRvX2d0KGk5MTUpLCBpZCkgew0K
PiA+Pj4gKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndCwgaWQpIHsNCj4gPj4+ICAgIAkJaWYg
KHQtPnJlc2V0X2VuZ2luZVtpZF0gPT0NCj4gPj4+ICAgIAkJICAgIGk5MTVfcmVzZXRfZW5naW5l
X2NvdW50KCZpOTE1LT5ncHVfZXJyb3IsIGVuZ2luZSkpDQo+ID4+PiAgICAJCQljb250aW51ZTsN
Cj4gPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X2xp
dmVfdGVzdC5oDQo+ID4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pZ3RfbGl2
ZV90ZXN0LmgNCj4gPj4+IGluZGV4IDM2ZWQ0MjczNmM1Mi4uMjA5YjA1NDhjNjAzIDEwMDY0NA0K
PiA+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9saXZlX3Rlc3Qu
aA0KPiA+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2lndF9saXZlX3Rl
c3QuaA0KPiA+Pj4gQEAgLTI3LDkgKzI3LDkgQEAgc3RydWN0IGlndF9saXZlX3Rlc3Qgew0KPiA+
Pj4gICAgICogZS5nLiBpZiB0aGUgR1BVIHdhcyByZXNldC4NCj4gPj4+ICAgICAqLw0KPiA+Pj4g
ICAgaW50IGlndF9saXZlX3Rlc3RfYmVnaW4oc3RydWN0IGlndF9saXZlX3Rlc3QgKnQsDQo+ID4+
PiAtCQkJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ID4+PiArCQkJc3RydWN0IGlu
dGVsX2d0ICpndCwNCj4gPj4+ICAgIAkJCWNvbnN0IGNoYXIgKmZ1bmMsDQo+ID4+PiAgICAJCQlj
b25zdCBjaGFyICpuYW1lKTsNCj4gPj4+IC1pbnQgaWd0X2xpdmVfdGVzdF9lbmQoc3RydWN0IGln
dF9saXZlX3Rlc3QgKnQpOw0KPiA+Pj4gK2ludCBpZ3RfbGl2ZV90ZXN0X2VuZChzdHJ1Y3QgaWd0
X2xpdmVfdGVzdCAqdCwgc3RydWN0IGludGVsX2d0DQo+ID4+PiArKmd0KTsNCj4gPj4NCj4gPj4g
QmFjayBpbiB0aGUgZGF5IHRoZSBwbGFuIHdhcyB0aGF0IGxpdmUgc2VsZnRlc3RzIGFyZSBkZXZp
Y2UgZm9jdXNlZA0KPiA+PiBhbmQgdGhlbiB3ZSBhbHNvIGhhdmUgaW50ZWxfZ3RfbGl2ZV9zdWJ0
ZXN0cywgd2hpY2ggYXJlIG9idmlvdXNseSBHVA0KPiA+PiBmb2N1c2VkLiBTbyBpbiB0aGF0IHNl
bnNlIGFkZGluZyBhIHNpbmdsZSBHVCBwYXJhbWV0ZXIgdG8NCj4gPj4gaWd0X2xpdmVfdGVzdF9i
ZWdpbiBpc24ndCBzb21ldGhpbmcgSSBpbW1lZGlhdGVseSB1bmRlcnN0YW5kLg0KPiA+Pg0KPiA+
PiBDb3VsZCB5b3UgZXhwbGFpbiBpbiBvbmUgb3IgdHdvIHByYWN0aWNhbCBleGFtcGxlcyB3aGF0
IGlzIG5vdA0KPiA+PiB3b3JraW5nIHByb3Blcmx5IGFuZCBob3cgaXMgdGhpcyBwYXRjaCBmaXhp
bmcgaXQ/DQo+ID4NCj4gPiBGb3IgZXhhbXBsZSB5b3UgYXJlIHJ1bm5pbmcgdGVzdCAibGl2ZV9h
bGxfZW5naW5lcyh2b2lkICphcmcpIiwNCj4gPg0KPiA+IC0tIEJlbG93IHRlc3QgYmVnaW4sIHdp
bGwgcmVzZXQgY291bnRlcnMgZm9yIHByaW1hcnkgR1QgLSBUaWxlMCAtLSBlcnINCj4gPiA9IGln
dF9saXZlX3Rlc3RfYmVnaW4oJnQsIHRvX2d0KGk5MTUpLCBfX2Z1bmNfXywgIiIpOw0KPiA+ICAg
ICAgICAgIGlmIChlcnIpDQo+ID4gICAgICAgICAgICAgICAgICBnb3RvIG91dF9mcmVlOw0KPiA+
DQo+ID4gLS0tIE5vdyB3ZSBsb29wIGZvciBhbGwgZW5naW5lcywgbm90ZSBoZXJlIGZvciBNVEwg
dmNzLCB2ZWNzIGVuZ2luZXMgYXJlIG5vdA0KPiBvbiBwcmltYXJ5IEdUIG9yIHRpbGUgMCwNCj4g
PiAgICAgICBTbyBjb3VudGVycyBkaWQgbm90IHJlc2V0IG9uIHRlc3QgYmVnaW4gZG9lcyBub3Qg
Y292ZXIgdGhlbS4gLS0tDQo+ID4NCj4gPiAgICAgICAgSW4gdGVzdF9iZWdpbiwgYmVsb3cgd2ls
bCBub3QgcmVzZXQgY291bnQgZm9yIHZjcywgdmVjcyBlbmdpbmVzIG9uIE1UTCwNCj4gPiAJZm9y
X2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QsIGlkKQ0KPiA+ICAgICAgICAgICAgICAgICAgdC0+cmVz
ZXRfZW5naW5lW2lkXSA9DQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgIGk5MTVfcmVzZXRf
ZW5naW5lX2NvdW50KCZpOTE1LT5ncHVfZXJyb3IsDQo+ID4gZW5naW5lKTsNCj4gPg0KPiA+IC0t
LSBUaGVuIGJlbG93IHdpbGwgZW5kIHRlc3QsIGFnYWluIGZvciBwcmltYXJ5IEdUIHdoZXJlIGFi
b3ZlDQo+ID4gbWVudGlvbmVkIGVuZ2luZXMgYXJlIG5vdCB0aGVyZSAtLS0gZXJyID0gaWd0X2xp
dmVfdGVzdF9lbmQoJnQsDQo+ID4gdG9fZ3QoaTkxNSkpOw0KPiA+DQo+ID4gSW4gc2hvcnQgdG8g
bWUgaXQgbG9va3MgbGlrZSBpZ3RfbGl2ZV90ZXN0IGZvciBkZXZpY2UgbmVlZHMgYXR0ZW50aW9u
IHdoZW4gd2UNCj4gaGF2ZSBkaWZmZXJlbnQgZW5naW5lcyBvbiBkaWZmZXJlbnQgR1RzIGxpa2Ug
TVRMLg0KPiANCj4gSWYgeW91IGVpdGhlciBhZGQgZm9yX2VhY2hfZ3QgdG8gdGhhdCBmb3JfZWFj
aF9lbmdpbmUgaW4gaWd0X2xpdmVfdGVzdF9iZWdpbg0KPiBhbmQgaWd0X2xpdmVfdGVzdF9lbmQs
IG9yIGFsdGVybmF0aXZlbHkgZm9yX2VhY2hfdWFiaV9lbmdpbmUgKG1heWJlIG1pc3Nlcw0KPiBz
b21lIGludGVybmFsIGVuZ2luZXM/KSwgZXZlcnl0aGluZyB3b3Jrcz8gVGhhdCB3b3VsZCBiZSBt
dWNoIHNtYWxsZXINCj4gcGF0Y2ggYW5kIHdvdWxkbid0IGZhbHNlbHkgYXNzb2NpYXRlIGxpdmUg
dGVzdHMgd2l0aCBhIHNpbmdsZSBndC4NCj4gDQoNCkJlbG93IHdvdWxkIHdvcmssIGlmIHlvdSBh
Z3JlZSBJIHdpbGwgcmVhcnJhbmdlIGFuZCBzZW5kIHBhdGNoLg0KDQotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaWd0X2xpdmVfdGVzdC5jDQorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaWd0X2xpdmVfdGVzdC5jDQpAQCAtMTYsMjggKzE2LDMxIEBAIGlu
dCBpZ3RfbGl2ZV90ZXN0X2JlZ2luKHN0cnVjdCBpZ3RfbGl2ZV90ZXN0ICp0LA0KICAgICAgICAg
ICAgICAgICAgICAgICAgY29uc3QgY2hhciAqZnVuYywNCiAgICAgICAgICAgICAgICAgICAgICAg
IGNvbnN0IGNoYXIgKm5hbWUpDQogew0KLSAgICAgICBzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gdG9f
Z3QoaTkxNSk7DQorICAgICAgIHN0cnVjdCBpbnRlbF9ndCAqZ3Q7DQogICAgICAgIHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsNCiAgICAgICAgZW51bSBpbnRlbF9lbmdpbmVfaWQgaWQ7
DQogICAgICAgIGludCBlcnI7DQorICAgICAgIHVuc2lnbmVkIGludCBpOw0KDQotICAgICAgIHQt
Pmk5MTUgPSBpOTE1Ow0KLSAgICAgICB0LT5mdW5jID0gZnVuYzsNCi0gICAgICAgdC0+bmFtZSA9
IG5hbWU7DQorICAgICAgIGZvcl9lYWNoX2d0KGd0LCBpOTE1LCBpKSB7DQorICAgICAgICAgICAg
ICAgdC0+aTkxNSA9IGk5MTU7DQorICAgICAgICAgICAgICAgdC0+ZnVuYyA9IGZ1bmM7DQorICAg
ICAgICAgICAgICAgdC0+bmFtZSA9IG5hbWU7DQoNCi0gICAgICAgZXJyID0gaW50ZWxfZ3Rfd2Fp
dF9mb3JfaWRsZShndCwgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOw0KLSAgICAgICBpZiAoZXJyKSB7
DQotICAgICAgICAgICAgICAgcHJfZXJyKCIlcyglcyk6IGZhaWxlZCB0byBpZGxlIGJlZm9yZSwg
d2l0aCBlcnI9JWQhIiwNCi0gICAgICAgICAgICAgICAgICAgICAgZnVuYywgbmFtZSwgZXJyKTsN
Ci0gICAgICAgICAgICAgICByZXR1cm4gZXJyOw0KLSAgICAgICB9DQorICAgICAgICAgICAgICAg
ZXJyID0gaW50ZWxfZ3Rfd2FpdF9mb3JfaWRsZShndCwgTUFYX1NDSEVEVUxFX1RJTUVPVVQpOw0K
KyAgICAgICAgICAgICAgIGlmIChlcnIpIHsNCisgICAgICAgICAgICAgICAgICAgICAgIHByX2Vy
cigiJXMoJXMpOiBmYWlsZWQgdG8gaWRsZSBiZWZvcmUsIHdpdGggZXJyPSVkISIsDQorICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZnVuYywgbmFtZSwgZXJyKTsNCisgICAg
ICAgICAgICAgICAgICAgICAgIHJldHVybiBlcnI7DQorICAgICAgICAgICAgICAgfQ0KDQotICAg
ICAgIHQtPnJlc2V0X2dsb2JhbCA9IGk5MTVfcmVzZXRfY291bnQoJmk5MTUtPmdwdV9lcnJvcik7
DQorICAgICAgICAgICAgICAgdC0+cmVzZXRfZ2xvYmFsID0gaTkxNV9yZXNldF9jb3VudCgmaTkx
NS0+Z3B1X2Vycm9yKTsNCg0KLSAgICAgICBmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBndCwgaWQp
DQotICAgICAgICAgICAgICAgdC0+cmVzZXRfZW5naW5lW2lkXSA9DQorICAgICAgICAgICAgICAg
Zm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QsIGlkKQ0KKyAgICAgICAgICAgICAgICAgICAgICAg
dC0+cmVzZXRfZW5naW5lW2lkXSA9DQogICAgICAgICAgICAgICAgICAgICAgICBpOTE1X3Jlc2V0
X2VuZ2luZV9jb3VudCgmaTkxNS0+Z3B1X2Vycm9yLCBlbmdpbmUpOw0KDQorICAgICAgIH0NCiAg
ICAgICAgcmV0dXJuIDA7DQogfQ0KDQpAQCAtNDYsNiArNDksNyBAQCBpbnQgaWd0X2xpdmVfdGVz
dF9lbmQoc3RydWN0IGlndF9saXZlX3Rlc3QgKnQpDQogICAgICAgIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gdC0+aTkxNTsNCiAgICAgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lOw0KICAgICAgICBlbnVtIGludGVsX2VuZ2luZV9pZCBpZDsNCisgICAgICAgdW5zaWdu
ZWQgaW50IGk7DQoNCiAgICAgICAgaWYgKGlndF9mbHVzaF90ZXN0KGk5MTUpKQ0KICAgICAgICAg
ICAgICAgIHJldHVybiAtRUlPOw0KQEAgLTU3LDE3ICs2MSwxOCBAQCBpbnQgaWd0X2xpdmVfdGVz
dF9lbmQoc3RydWN0IGlndF9saXZlX3Rlc3QgKnQpDQogICAgICAgICAgICAgICAgcmV0dXJuIC1F
SU87DQogICAgICAgIH0NCg0KLSAgICAgICBmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCB0b19ndChp
OTE1KSwgaWQpIHsNCi0gICAgICAgICAgICAgICBpZiAodC0+cmVzZXRfZW5naW5lW2lkXSA9PQ0K
LSAgICAgICAgICAgICAgICAgICBpOTE1X3Jlc2V0X2VuZ2luZV9jb3VudCgmaTkxNS0+Z3B1X2Vy
cm9yLCBlbmdpbmUpKQ0KLSAgICAgICAgICAgICAgICAgICAgICAgY29udGludWU7DQorICAgICAg
IGZvcl9lYWNoX2d0KGd0LCBpOTE1LCBpKSB7DQorICAgICAgICAgICAgICAgZm9yX2VhY2hfZW5n
aW5lKGVuZ2luZSwgZ3QsIGlkKSB7DQorICAgICAgICAgICAgICAgICAgICAgICBpZiAodC0+cmVz
ZXRfZW5naW5lW2lkXSA9PQ0KKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGk5MTVfcmVzZXRfZW5naW5lX2NvdW50KCZpOTE1LT5ncHVfZXJyb3IsIGVuZ2luZSkpDQorICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0KDQotICAgICAgICAgICAgICAg
cHJfZXJyKCIlcyglcyk6IGVuZ2luZSAnJXMnIHdhcyByZXNldCAlZCB0aW1lcyFcbiIsDQotICAg
ICAgICAgICAgICAgICAgICAgIHQtPmZ1bmMsIHQtPm5hbWUsIGVuZ2luZS0+bmFtZSwNCi0gICAg
ICAgICAgICAgICAgICAgICAgaTkxNV9yZXNldF9lbmdpbmVfY291bnQoJmk5MTUtPmdwdV9lcnJv
ciwgZW5naW5lKSAtDQotICAgICAgICAgICAgICAgICAgICAgIHQtPnJlc2V0X2VuZ2luZVtpZF0p
Ow0KLSAgICAgICAgICAgICAgIHJldHVybiAtRUlPOw0KKyAgICAgICAgICAgICAgICAgICAgICAg
cHJfZXJyKCIlcyglcyk6IGVuZ2luZSAnJXMnIHdhcyByZXNldCAlZCB0aW1lcyFcbiIsDQorICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdC0+ZnVuYywgdC0+bmFtZSwgZW5n
aW5lLT5uYW1lLA0KKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGk5MTVf
cmVzZXRfZW5naW5lX2NvdW50KCZpOTE1LT5ncHVfZXJyb3IsIGVuZ2luZSkgLQ0KKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHQtPnJlc2V0X2VuZ2luZVtpZF0pOw0KKyAg
ICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU87DQorICAgICAgICAgICAgICAgfQ0KICAg
ICAgICB9DQogICAgIA0KUmVnYXJkcywNClRlamFzICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICANCj4gUmVnYXJkcywNCj4gDQo+IFR2cnRrbw0K
