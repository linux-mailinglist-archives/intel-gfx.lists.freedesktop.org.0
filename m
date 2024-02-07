Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B684884C984
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 12:21:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F66113062;
	Wed,  7 Feb 2024 11:21:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bQ1vM9mb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EA41112E42
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 11:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707304897; x=1738840897;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ZOj6wMcRax6F2s2NKprC5ghbxG+BZe4IHa51g4MSeCg=;
 b=bQ1vM9mbwZR6DrNUu7b7mIHarI5VjR43lflZoHDX6+AUPsgARLTVHlyG
 +jQCaZHaQl8KpVtn0bsSqMBvRxyFcPfyc9DXKHH1R6PIPF+cKQ22wYF+A
 jTXymviwRX+jGL6OoPqwX6ZzkwCzFzvsToM+jt2GO0bmf/AR1ZTAIkXkx
 GdJCPtKvZmYa3H84oMs1VCnkWNajE5FwcXDO/1yhKQXGXRbxOv8732pYi
 ULQEFYZJy9EKTGfSIfDoVopk2MqGL9agoFQXo79RTU5teGlnIkNw2cH6W
 3htxaOqYfVEcRieR30+SET2iPVLd0AL08PA5XdLhRH4aVcS+jCO9ldogF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="1112066"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="1112066"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 03:21:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="24531623"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Feb 2024 03:21:37 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 7 Feb 2024 03:21:35 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 7 Feb 2024 03:21:35 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 7 Feb 2024 03:21:35 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 7 Feb 2024 03:21:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n4zt4f/jCqatp/Tx7sDFLevfiF2auOOtqVgrXHUWkUKAIz45XHZ7zRt7rmGPo2rbWf1bLi/m8vR06vbwsLhR+Rvk4fln2V3niiCgGk+9mpzVwst9m+woJWBVT90cL0nx4lWDqqNg9NzDNq4UAyIEVbwtHUo69IaWRtjIfoPDnNly0Ke87xlRIoRxitWFZA+8LbpVWM5tQ6M0gIOK3ezo09FAq2FE8O7M/HvZ6drQ1FpWAlaBbyBslpmntSW+3NFWLTl4bbVSFoYYur7RjbYethVqYLmqZ3nM9Xl09ceSdb/XaVTT9I/8kHL4rVJTDk7gvK3NFbxJ8ec7XRBlH2M9Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZOj6wMcRax6F2s2NKprC5ghbxG+BZe4IHa51g4MSeCg=;
 b=mIbodbFF9iS9XSiACNTe32hSh2e/mGL+9jV8MkR9/GQlyHp5MO8O01sq8fZU18Uerd0vLfFoPn3TbdeXfN0ZszCMGVSDxs/lVD1PizbgZ57C8sK0nzAgV+U7iqj6OdtDSS9a/l51Up9k/cAoSGxQ/TjXbYZCmWy4mCDTnzRtUXwtoqqdOoVFxFaS6CZ8YsjQKgab4cTHPzV7KHdWV3ES0VBKS5w5qJ0ykji1jJPvB+kyl26QDtj4rJihM+KxAg9kDL5j/cfNtxRKVhks2zDRGM4Br7x3QVojg5NDVtdpgpgWUvbg87lNSOWwLofagmzxn8uY9kmyH6z7rVI9W/26Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM6PR11MB4642.namprd11.prod.outlook.com (2603:10b6:5:2a2::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Wed, 7 Feb
 2024 11:21:33 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f175:e111:f672:839d]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f175:e111:f672:839d%6]) with mapi id 15.20.7249.038; Wed, 7 Feb 2024
 11:21:33 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/lnl: Program PKGC_LATENCY register
Thread-Topic: [PATCH 2/2] drm/i915/lnl: Program PKGC_LATENCY register
Thread-Index: AQHaVOxkBHrV8JG+wkChSc7rsEbsNLD7aTAAgANckQA=
Date: Wed, 7 Feb 2024 11:21:33 +0000
Message-ID: <ff551331324a77f0ec2a45d15568f0aafa29b09f.camel@intel.com>
References: <20240201085158.1000285-3-suraj.kandpal@intel.com>
 <20240205080126.1159496-1-suraj.kandpal@intel.com>
In-Reply-To: <20240205080126.1159496-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM6PR11MB4642:EE_
x-ms-office365-filtering-correlation-id: 209217b9-9f1d-4210-1286-08dc27cef0d1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ls4jNujOJJpEZHg2nUHBk3kZszQfRu3yIl4Elm/4O2Fxkv9FA5s+mST30PQMdUGQP0DNyT+EVk+SDIek9pBT/JnLNS7NQPSUXTZ9bzcqQYFhXeKIszCc0aPvZ2ZgFv5gS8pyoFTTuoKQkw4cRvHSo8UVqTyZlPT6Gh5WiEtsvx2xIPa9JGbOj5l2tXWm3z1vw11WpXFtIpvv8Qc4Xdd7JDpVQZSw2jZZ8P776eFz2g7drag3CriUgwMWZ+cdZ7y70QSH+mQfjAgQpBBWuOqYLcRz/Z3vYZLOnfso/nZfs3N7COR+O32wj/wWrSAF2lKNwrzVtWJVMu9REf91yXl2uLePx4sXJCOst5X9MtKxR/2M71TXKX/SqWey42i3MRwKLpVWistKJBs9iOjKVEkjPMYVaFX/n4YcuTDVfIV2DloHGvUBOp2DmFmm/t3t1TwumD3ngRrxsnl5ZV1uFllvlcus8NNWZ6oKMdV+O1daN6t3ZMihu8MGq1++l3N5TaqhdqQp4yE6yPIWIyOpfyYUfk9ilogNjBOrr/IAmJ91xhCA66GY3gpVNeUcnbVCMTcv4y+5r1opHEV2z/n+/dsjq/Te2WIW9kPrulZo5wjkR9LXmyjMGaM3H3AhD8Ll0aav
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(346002)(376002)(366004)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(2616005)(86362001)(107886003)(41300700001)(6486002)(478600001)(5660300002)(2906002)(66946007)(38070700009)(110136005)(66476007)(316002)(76116006)(66446008)(64756008)(4326008)(8936002)(36756003)(6512007)(8676002)(66556008)(71200400001)(6506007)(82960400001)(38100700002)(122000001)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Njh4Vi96WlBMVFdOV1ZHaUhsUDgwUWo1QmdlMGFENW1wS0dLTHlFYlZSN01K?=
 =?utf-8?B?MkM3TFlzRFhsQWhxcDl6Y3NRN1UzRjR3Um5XbUpyd0lXSlVrSThnTDk0bDlW?=
 =?utf-8?B?eEMvMWdSbXV5akZ1elY3OWRPeklHN0UyYk0wNlZjSFgxSE9panZreDRhdVNm?=
 =?utf-8?B?S00zMTdlZFB4YlFreW9BWi9UUnNvMzZyZXl0TGJ5TERDeGFLVXZDWGdFOWMr?=
 =?utf-8?B?a2t2M213a09jMjVUWjVHcEU0dTRsM2FTTjNzVlc0U3BnRVQrNll2aDdTV2lW?=
 =?utf-8?B?MlQ4T0JhQlE3MjRvTVpXZzlDWVg5c1RXV0RxODJtM0QydlRoY2RhREEraVBN?=
 =?utf-8?B?Vys4UUdVRENvUi9ZaUV1ZUtrRkwzWEgvbWQ1VXV6ZjFNblk5bHgzb3BKSFZV?=
 =?utf-8?B?dmFpUGxsN3pweXdUV1Ztekt5K00wM3BwZ3J3U1JUV3NXaGJLWSs4VEtwT2V1?=
 =?utf-8?B?Um1sSXl6UGZ0NlNGRVVod0tJYXNIM3BGaExURlllUFByczZsTFd6dUpDelRU?=
 =?utf-8?B?L3doTC85cVhzeXFpQ1U2SjRzSUV3dEJkSU1BaHh0RGFEUDRIUEJhN2R4SUpW?=
 =?utf-8?B?d2Vsd3RTQkhxSXo0RzNmczVkdFZ3Z2YrQ0Zrc0M4RjdnL2FWUXljNk9ZdG5S?=
 =?utf-8?B?Vnhla0RCMktVRXRYajMyOWlKZVl0TW5pcXBFbmJNOHpzZjVYWS9PU1BHVHBw?=
 =?utf-8?B?YXArWUt3dkp2cDVMZVVNSlM2NWFOdUpJcVdicDdJMUVnNi9XTXB5dVJWTmxF?=
 =?utf-8?B?SFQrdzRWbnd0MzZ6cld5ZENnOHB0dnVZeDZCZWduT3lIcHU4WnBZSmhiNlNR?=
 =?utf-8?B?ZCtyWXF0QUlsakZtbDR4ZVBqMnluUDFUd21mZWI1am5seW9BWDc2NnR6NnRH?=
 =?utf-8?B?YjFBb0JpUGdMbjh4b3lDbkZoTmpiQ1JaUkZoQmVqQVV4WUpNVlExZ21BVitj?=
 =?utf-8?B?Sis5RjBHSHd4K1ZCcmU5Q0JsQjhUNWYxdmNxNmNlQm1BNVB1a0JKSmFzQlBG?=
 =?utf-8?B?WEJNZ3VRME5rUDhib0VlaEMrcjhvbmNhWnMzakNYK2F0bm5iK0FZTiszVGZ5?=
 =?utf-8?B?N3hjYWZDbDBUQlJ5MExxQjgwNmd3UVJGTXpRZno3ZFlibzZBWFFnZ3hlRlhM?=
 =?utf-8?B?SzBia2I4N3FjZHR6cFUrekJVZXVSeWIwTmh1VS9IRHpxK3hXZ3R5eXduR3h3?=
 =?utf-8?B?QlM1SVRIM01sRDlFaXdDdlNDZVl0UkQrRitjajlZWUlVS1U2d2k1SXl5dEl6?=
 =?utf-8?B?Tldjbno3UVlTdm1NOGR2ZTdaYWR1MkEyWWwrZ0NEK3gvYnR2NHhYSzRMQVVP?=
 =?utf-8?B?Qi9uakZXMHdCcmVTRkpwRGxYOHVHK3lJMG1ucGgzY0Rhb1dUR0dQRUVqMVVn?=
 =?utf-8?B?ejVhQWZWUkZVM2hTRmZWendzTHc4R05DZjdzd0txZzFlZnRZNTV1ajVQTzN5?=
 =?utf-8?B?bDJLQ1RoK2pzRHJ1eDdCeWNqTlhLdUU5L2VzMXNCR1REOG1kejdneTYxWS9y?=
 =?utf-8?B?SnFFNzIxQmw2empXNFErOTAvMklDeUk0MjNFTTByTGZXeWlxN3FFY0J6MkRQ?=
 =?utf-8?B?bERGVUVKTlBnczNYWDUybjhsVFBUcHJmS055MHlGWEpiR21iZE84cFFaWWJr?=
 =?utf-8?B?UUs5SGh3eGVyNTRHU1dDcFhLVjk4NUE4U0R0QUpFUmdyUjBCMENTaTJDUGll?=
 =?utf-8?B?OTMySndHNURZVHlCUFYrQStQRW1UY1pxVVhlQzgwcTRaZGdiMnBzQkhJRVhB?=
 =?utf-8?B?Zkg2QzJMZExUZUlDeUF3N0xrdEg0RjF1aldXcis1UUp5UHRIcFdxZXNpY0pN?=
 =?utf-8?B?WlZoQmdad2N0UzZRL3NKbm50bFFmOVdycERlMTRkL29LODluQ0NtQ3NDdTRE?=
 =?utf-8?B?NFFTNjdzemE0R1JYdlJuUlF3RjVQRW9YbDNQNHlVemRqdnowUTZhUzhtemdn?=
 =?utf-8?B?TVdTbWhXZzB4Rkk4OEpQdEJBNzhmR3hPYTVOOS9wMVI4dktIcHUrK0p2aDMw?=
 =?utf-8?B?OXR4eTNjVUQ4eEZjRk0xaUQ1SkNpdWRWQ1dOaGNDNjdPNmg2Z0NJNkVaaUJQ?=
 =?utf-8?B?STZKMnI1c2FYR3Y1NU9Uc2VBdUpxUnV3c1JpYmg3TVVGWmFiK3N0WUJQcXRu?=
 =?utf-8?B?ejRPM3NzUU1tNERYOHVONWtSWFQxbFYyOXZjVXNYV1BPREpSOTFsZE1welRB?=
 =?utf-8?B?czVycXh6WUZWUEZ0dWpRK2R3QWFzRTFoSjJnM296NVNQZ3J4aDRFLzJKQ3hE?=
 =?utf-8?Q?QY3BBwigHoaaGN9me5lEIxRwqg4qfa1+jbuCSGiVSA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <41CB2A8C6E00484296681A6BDC29B661@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 209217b9-9f1d-4210-1286-08dc27cef0d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2024 11:21:33.6582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vIhH8ZTCAcXqDRbGuzpRe8vI47K7UaEQU+cYjCuxaonS3I15kDd0TDGGWCoj/9t/KYaG4secnMZ0bJLHmitdVtmifAsjPseOuohrNWBcNLo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4642
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

SGkgU3VyYWosDQoNCk9uIE1vbiwgMjAyNC0wMi0wNSBhdCAxMzozMSArMDUzMCwgU3VyYWogS2Fu
ZHBhbCB3cm90ZToNCj4gUHJvZ3JhbSB0aGUgUEtHQ19MQVRFTkNZIHJlZ2lzdGVyIHdpdGggdGhl
IGhpZ2hlc3QgbGF0ZW5jeSBmcm9tDQo+IGxldmVsIDEgYW5kIGFib3ZlIExQIHJlZ2lzdGVycyBl
bHNlIHByb2dyYW0gd2l0aCBhbGwgMSdzLg0KPiBUaGlzIGlzIHVzZWQgdG8gaW1wcm92ZSBwYWNr
YWdlIEMgcmVzaWRlbmN5IGJ5IHNlbmRpbmcgdGhlIGhpZ2hlc3QNCj4gbGF0ZW5jeSB0b2xlcmFu
Y2UgcmVxdWlyZW1lbnQgKExUUikgd2hlbiB0aGUgcGxhbmVzIGFyZSBkb25lIHdpdGggdGhlDQo+
IGZyYW1lIHVudGlsIHRoZSBuZXh0IGZyYW1lIHByb2dyYW1taW5nIHdpbmRvdyAoc2V0IGNvbnRl
eHQgbGF0ZW5jeSwNCj4gd2luZG93IDIpIHN0YXJ0cy4NCj4gQnNwZWM6IDY4OTg2DQo+IA0KPiAt
LXYyDQo+IC1GaXggaW5kZW50YXRpb24gW0NoYWl0YW55YV0NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTog
Q2hhaXRhbnlhIEt1bWFyIEJvcmFoIDxjaGFpdGFueWEua3VtYXIuYm9yYWhAaW50ZWwuY29tPg0K
PiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYyB8
IDMxICsrKysrKysrKysrKysrKysrKysrDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDMxIGluc2VydGlv
bnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF93YXRlcm1hcmsuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVy
bWFyay5jDQo+IGluZGV4IDA1MWEwMmFjMDFhNC4uMWNlNGIzM2E0MDdhIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBAQCAtMzM5NCw2
ICszMzk0LDM0IEBAIHN0YXRpYyB2b2lkIHNrbF9yZWFkX3dtX2xhdGVuY3koc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsIHUxNiB3bVtdKQ0KPiDCoMKgwqDCoMKgwqDCoMKgYWRqdXN0X3dt
X2xhdGVuY3koaTkxNSwgd20sIG51bV9sZXZlbHMsIHJlYWRfbGF0ZW5jeSk7DQo+IMKgfQ0KPiDC
oA0KPiArLyoNCj4gKyAqIFByb2dyYW0gUEtHX0NfTEFURU5DWSBQa2cgQyB3aXRoIGhpZ2hlc3Qg
dmFsaWQgbGF0ZW5jeSBmcm9tDQo+ICsgKiB3YXRlcm1hcmsgbGV2ZWwxIGFuZCB1cCBhbmQgYWJv
dmUuIElmIHdhdGVybWFyayBsZXZlbCAxIGlzDQo+ICsgKiBpbnZhbGlkIHByb2dyYW0gaXQgd2l0
aCBhbGwgMSdzLg0KPiArICogUHJvZ3JhbSBQS0dfQ19MQVRFTkNZIEFkZGVkIFdha2UgVGltZSA9
IDAuDQo+ICsgKi8NCg0KQ291bGQgeW91IHBsZWFzZSBjb25maXJtIGlmIHRoZSBhZGRlZCB3YWtl
IHRpbWUgPSAwIGFsd2F5cz8gVGhlIEJzcGVjIHNheXMgdGhlIG90aGVyd2F5IQ0KDQo+ICtzdGF0
aWMgdm9pZCBpbnRlbF9wcm9ncmFtX3BrZ2NfbGF0ZW5jeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHUxNiB3bV9sYXRlbmN5W10pDQo+ICt7DQo+
ICvCoMKgwqDCoMKgwqDCoHUxNiBtYXhfdmFsdWUgPSAwOw0KPiArwqDCoMKgwqDCoMKgwqB1MzIg
Y2xlYXIgPSAwLCB2YWwgPSAwOw0KPiArwqDCoMKgwqDCoMKgwqBpbnQgbWF4X2xldmVsID0gaTkx
NS0+ZGlzcGxheS53bS5udW1fbGV2ZWxzLCBpOw0KPiArDQo+ICvCoMKgwqDCoMKgwqDCoGZvciAo
aSA9IDE7IGkgPD0gbWF4X2xldmVsOyBpKyspIHsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGlmICh3bV9sYXRlbmN5W2ldID09IDApDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnJlYWs7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBlbHNlIGlmICh3bV9sYXRlbmN5W2ldID4gbWF4X3ZhbHVlKQ0KPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF92YWx1ZSA9IHdtX2xhdGVu
Y3lbaV07DQo+ICvCoMKgwqDCoMKgwqDCoH0NCg0KTWF5IGJlIGVmZmljaWVudCB0byBpdGVyYXRl
IG1heCB0byAxICAoc2tsX21heF93bV9sZXZlbF9mb3JfdmJsYW5rKCkpDQoNCkFsc28gYmV0dGVy
IHRvIGNhbGwgc2tsX3dtX2xhdGVueSgpIGluc3RlYWQgb2YgYWNjZXNzaW5nIHRoZSBsYW50ZW5j
eSB2YWx1ZXMgZGlyZWN0bHkgYXMgdGhlcmUgYXJlDQpzb21lIGxhdGVuY3kgYWRqdXN0bWVudHMg
YmVlbiBkb25lIHBlciBwbGF0Zm9ybXMuDQoNCj4gKw0KPiArwqDCoMKgwqDCoMKgwqBpZiAobWF4
X3ZhbHVlID09IDApDQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfdmFsdWUg
PSB+MCAmIExOTF9QS0dfQ19MQVRFTkNZX01BU0s7DQo+ICsNCj4gK8KgwqDCoMKgwqDCoMKgY2xl
YXIgfD0gTE5MX0FEREVEX1dBS0VfVElNRV9NQVNLIHwgTE5MX1BLR19DX0xBVEVOQ1lfTUFTSzsN
Cg0KQXMgbWVudGlvbmVkIGFib3ZlIHRoZSB3YWtldGltZSBpcyBjbGVhcmVkIGhlcmUuIFBsZWFz
ZSBkb3VibGUgY2hlY2sgaWYgaXQgaXMgYXMgZXhwZWN0ZWQuDQoNCj4gK8KgwqDCoMKgwqDCoMKg
dmFsIHw9IG1heF92YWx1ZTsNCj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfdW5jb3JlX3JtdygmaTkx
NS0+dW5jb3JlLCBMTkxfUEtHX0NfTEFURU5DWSwgY2xlYXIsIHZhbCk7DQo+ICt9DQo+ICsNCj4g
wqBzdGF0aWMgdm9pZCBza2xfc2V0dXBfd21fbGF0ZW5jeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkNCj4gwqB7DQo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoSEFTX0hXX1NBR1ZfV00oaTkx
NSkpDQo+IEBAIC0zNDA3LDYgKzM0MzUsOSBAQCBzdGF0aWMgdm9pZCBza2xfc2V0dXBfd21fbGF0
ZW5jeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBza2xfcmVhZF93bV9sYXRlbmN5KGk5MTUsIGk5MTUtPmRpc3BsYXkud20u
c2tsX2xhdGVuY3kpOw0KPiDCoA0KPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfcHJpbnRfd21fbGF0
ZW5jeShpOTE1LCAiR2VuOSBQbGFuZSIsIGk5MTUtPmRpc3BsYXkud20uc2tsX2xhdGVuY3kpOw0K
PiArDQo+ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAyMCkNCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX3Byb2dyYW1fcGtnY19sYXRlbmN5KGk5
MTUsIGk5MTUtPmRpc3BsYXkud20uc2tsX2xhdGVuY3kpOw0KDQpza2xfc2V0dXBfd21fbGF0ZW5j
eSgpIGdldHMgY2FsbGVkIG9ubHkgYXQgdGhlIGluaXQgdGltZS4gVGhvdWdoIGxhdGVuY3kgdmFs
dWVzIGRvbnQgY2hhbmdlLCBidXQgYXMNCnBlciBic3BlYyB5b3UgbmVlZCB0byBkaXNhYmxlIHRo
aXMgZm9yIFZSUi4gSSBndWVzcyB5b3Ugd291bGQgbmVlZCB0byBoYXZlIHByb3Zpc2lvbiB0byB1
cGRhdGUgdGhpcw0KYmFzZWQgb24gdGhhdC4gU28gc2hvdWxkIHRoaXMgY2hlY2sgYmUgbW92ZWQg
dG8gaW50ZWxfYXRvbWljX2NoZWNrKCk/DQoNCkJSDQpWaW5vZA0KDQoNCj4gwqB9DQo+IMKgDQo+
IMKgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF93bV9mdW5jcyBza2xfd21fZnVuY3MgPSB7DQoN
Cg==
