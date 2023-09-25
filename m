Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7987AD883
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 15:02:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53C7510E24D;
	Mon, 25 Sep 2023 13:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A74510E045;
 Mon, 25 Sep 2023 13:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695646915; x=1727182915;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=fn5bE6uyNaS/GO/yK1AvbaZ0LLLz8+PYg+gz3zExYYE=;
 b=ONFfmt/Iyi6bnt8hAJwluwyYikwenvfDm90+0cavHsE51BZmMIgGHd7A
 Wcee/dxdYEtnU+a8JFlXkEZ532TmkkkVdT12eiv+U6+ec4cdZ0volaKA2
 Qv2gRehadTZbGKrUMcC2YU7qSew7ZdARwnF7O3VyqZxobEcwnTa7iN1+x
 hfUYV/Lrg6kWWtD6s2payKiGaw+0L20Avhg2pJ4TYoAUC7BVe2zDaWeOZ
 rLmfYehbBW0v+qBrpVJ33dWQbwzaty/Vbzv7AErnbENsIqiXL4LnRridM
 GXQzjj9fUqqiMNEg5d+JLJPV9MzooL+BFLoXcrssapTdTv1ZyJqKMCu+z w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="380118881"
X-IronPort-AV: E=Sophos;i="6.03,175,1694761200"; d="scan'208";a="380118881"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 06:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="748336320"
X-IronPort-AV: E=Sophos;i="6.03,175,1694761200"; d="scan'208";a="748336320"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2023 06:01:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 25 Sep 2023 06:01:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 25 Sep 2023 06:01:52 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 25 Sep 2023 06:01:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fp7LJsJguEmxKU38+602WspeCoG3wvQGVbFIWTQrRmkGdLnE8gBf8sFTazSKwjv8xqpqKQS/ajnAZhc5lg33ucgGX/FaTXhpQpybBMPoQj61AYe3YXYDkfncAuA6WFhAv6SD1BnNQxIaZJyXuiQGq8OJ44+3NSUBEPacipBp4Iiy8kjIit48HjGh4xz9E/8t7OV62nIY6MIlh6uXStWMX6mIa5EaCAa8DPCZk/j+B4jp3nGQdcZgH873yV52PdgC8VJFzu8rQay79Tsj0ibLyKz1l3uMW0ciUUtDfdiYYqpSoj8arUa8sXPwdB6/5Er/fcQoVtTnijUKME5Nv4DBpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fn5bE6uyNaS/GO/yK1AvbaZ0LLLz8+PYg+gz3zExYYE=;
 b=hWD6i6/hmCpc1KpB0t+hKsxUHaKSJAKdOp5TNxqPzVIO2Y/FKRP6+q93ZJBV6lzuOhuiWlzVhkxSM1qNnUCBbm07DzJa7rJPBu6YIgBJLk/UcO/7NA47VLCTTWuu05UImcrSwah8YMrkqm8WcNhP5HsZR2+rCyMAp1cvweNz+u4uIwl6n6DPQFqrXatMqTjmoP8jdWa9E96hr4UVk62aWDfNQ+R9Mt0llWwbCTxbL0NILVzaNE8BpqETBRMqQyqjjN+kIH5aooEjNMONnaCRcaPkRGlWbnNgDhfCUhIMDNEN+jvIOmoVUXFJAF3+3Mk3pNb1Mk83pKTRALHBydsyhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DS0PR11MB8071.namprd11.prod.outlook.com (2603:10b6:8:12e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Mon, 25 Sep
 2023 13:01:50 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec%5]) with mapi id 15.20.6813.027; Mon, 25 Sep 2023
 13:01:49 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-xe] [PATCH v5 0/2] fbc on any planes
Thread-Index: AQHZ7VkJPjp5QDRNkUm2zRwx58d6SLAreYYAgAAMqgA=
Date: Mon, 25 Sep 2023 13:01:49 +0000
Message-ID: <660dcc0d9e69a1ba538b397bd0943abe462db294.camel@intel.com>
References: <20230922133003.150578-1-vinod.govindapillai@intel.com>
 <87sf72morn.fsf@intel.com>
In-Reply-To: <87sf72morn.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DS0PR11MB8071:EE_
x-ms-office365-filtering-correlation-id: 37f9f225-8fb2-4527-b7fc-08dbbdc794f2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xtrjM51gUunH/xlg8RHIHkR8409ZZfMgf+U+LNc1NhX9X9YqeRKjrPt1YLSobjMCWx7DWa4+5EIXJRdLffvgU4MfE8jtCbmXVjUKb+wGykk7RGF1nJDFJVY7aqcGbDY3JVX3l3OkExwG37qBz0OuHBFS8JY31x4k4ru7TTtBaE0nEqmgTX8S9bgiT6yLecMUrdM+Nn7cQTXFZ+cy9mur/BWEqIMDgybacvk3gWsagCtd/PPQ4wNS7iCbnZZNnlvM1ub4FAW1S45xV4wVfwidQj2lTQktNUqTVnGYJuMK5DU3XG7Ej/u6unoTvCA2GxwShqYZwwO7aLRHAvqed5PJzo2+5H3CNXhv8XfO1smLzRlTvpSAoau3sz1qmVw8dXWszc+Bv5qgR9qOHHAA4jdp3LkZdcBv+KNCD4zwPd/+TJAb8iTWrPBnrK9E7aCSfra02rgDu5TsnE7Ld8oi+qrInn/XRtk1yy1dbM5p1XhreuwloXiJGj8gfYdZQZB6bA2NqTCK+uNLDI+ax8yPxgEqfvJUh6VEGPJNSzK6I/HEt/CXitPUQTXT+QLGdikPnLLibXHnjK4g9XiWXZyVjfcGtHxN91fjXmXrzHMvLctZX/w=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(39860400002)(136003)(366004)(346002)(230922051799003)(451199024)(1800799009)(186009)(6486002)(83380400001)(26005)(36756003)(5660300002)(8676002)(8936002)(4326008)(122000001)(2906002)(71200400001)(86362001)(38070700005)(38100700002)(91956017)(110136005)(478600001)(76116006)(316002)(64756008)(66446008)(66476007)(6636002)(54906003)(66556008)(66946007)(41300700001)(2616005)(6506007)(6512007)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UUpkSThBWjhMVUgvaVQrZmc3Q3cwTGxjWWRUZU5PMUxZREhOVHc5bGo3Zlhh?=
 =?utf-8?B?R3VJdE4ySFRtSGlPUlF5TzBLMFZ3cVFra3VjMkcrVHhBdGZSKzh6dTRRZTJU?=
 =?utf-8?B?dzNIbENCUW1TQXRieGQ1eUg1VExQTXNnOGhvT3VkK0Z1ZHYvSFRZOU1YWGE0?=
 =?utf-8?B?L01QRFQ5VFQydUpDZ3lRNCsraWllUnBQK1ZNMzIyV2VkNjZYaGF4WWRETjhT?=
 =?utf-8?B?a1YyVUJHQVViVXZiWlN4cXNPcmpmUllXWmI4b29udFFOWVd5TjdscUZVR3dF?=
 =?utf-8?B?Q1llRlYxSm51R3ZvVnh0WE43UUYvWlN6RlhqejVCUG44dWZSbkR2KytST3Iw?=
 =?utf-8?B?TkhYcVdVT0xrV3pGYXh6WHJCU3FiRSs4WnFEckdRV1lTOXozY3haSXpNL0lJ?=
 =?utf-8?B?Z0M0aFVxa3UyNmxYWEpWREtPODkyL1F4TXpIWm9MM2prTWZaRXJFUWNyeDhu?=
 =?utf-8?B?WVVkM2cwZmdJaExWVHRpNmNYeXRXM2VFWkFNVm5IU0JQZ3dra0ZXM2ZoMEdh?=
 =?utf-8?B?RGNUVmdIVVB1UXhpQ08va0xXaDR2UWgzM3dodkJBdGtUSGRWZ2d2REkvamxQ?=
 =?utf-8?B?SGwwckV1UmpobzFoT2xhV2ZJcithVi9McGdLREgydXViTUFIMlpIYWpWYUM5?=
 =?utf-8?B?RmpTcE5saEhUTkNTKzlYNDJvZ3J2VXBEZW5PMFVsdDVCdVhWK2FyYTk2Mi93?=
 =?utf-8?B?RGJ5K1hGT3J4L3U4bUlGdGVCZmJPWDE1NlJGYzU0VTZYNHcwUXQyN3lERGxL?=
 =?utf-8?B?T3FGOE9SQ0FXMjh1cENjNzk3cmtQaCs5c0x1OUtKbjR0N2M4ZjM0b2psM2Ni?=
 =?utf-8?B?d1dKenFyVFNYVFRheUpGQTVwbXFaVC9TMUNLQnZCczFpZ0xPNlAxYk42QXhk?=
 =?utf-8?B?RlNxd0JoN2VaMjc4dzg5VjF3aENmOU9wNm4xcDVXdWFXbFBpUFBJaHExSG5C?=
 =?utf-8?B?NGRxL2x6d1d4ajVEOERVcC9BRVpiYnA1cVZJNlgzTjR2QU0yeU9scThmTzBK?=
 =?utf-8?B?bEh0Zm9qeWJrcjc1UmsrbStUeUIrekZ4ZXVZOFBZNy92YjlpK1FOckdBNUpv?=
 =?utf-8?B?U2NodUlpNit4M3U4Qm1pQno3OUZGMGFwUHVCVUJZTWsvTklJTStWMHo5K3J4?=
 =?utf-8?B?N05TUFFNTUpLZTEraFFZU2tFQjRwSWNJbXZaSnRFNUZwN0pBK2IweWVIQ3dO?=
 =?utf-8?B?Q3F6OEpBQndiS28wUGp6ZE00UGlPeFY0UGZJQ2dMQjdRSnAyZDZkT0lNc0tM?=
 =?utf-8?B?TEwxSmtlUHhudEJ4c3NKekRxNnFRSmt3dGhQdVlyYTN3RWZVb2dBZy9iOFJT?=
 =?utf-8?B?dTE1Mnkzc1p2S3pGb1B3UFVLNXZRQXNXMUd3Q0tSM2ppWFpOR3FCb3hDVk5n?=
 =?utf-8?B?cXRRRzhQRFIyV3c5ZVFDTTF1M2s0d1o2TEJWWFkydThqWWkySnMyR05JRVFF?=
 =?utf-8?B?WXNBcFhFS0U4TnhFQ05jZXVEazZLckhnbDFTY05HWjMwMlk4TFJJR0daSkEw?=
 =?utf-8?B?eFJVMlZzVCs5QncrSmRORnNyNDdvN2ppNk5iT3VldnFtNFRBN0tjd3JURFJP?=
 =?utf-8?B?WjUrZytWWWVWMS8zNFE5bGRia2Y4dVdkOFRtNmhCeE1IbFoyL2FCTGNOQmw1?=
 =?utf-8?B?eWZ2S2wwZGRaMHNhRHVqYzNwdExjZ21BbGNDR2IzcjBsSWVYQTRWVWZsbTc5?=
 =?utf-8?B?d3ZZNVY0SnRVMlRVY3hpZFd1clg1SXhydmF2aDNGSFBaUXMwdWN1YkNlMDQ0?=
 =?utf-8?B?TlpYOVhSemh4OEUrT25QczZEa2dOSFJibXIzM3NBcjl1dWVrb1o4UFVZWUd0?=
 =?utf-8?B?QjhuWElRZFMxU2xGdnltbm9TdDRIMTRHWGk2Mm1Kb3dQSEF1RGR3N3J0dnh3?=
 =?utf-8?B?UGtRN1haK0QvOWNxWlROOTd0Y2M3dFdjeDhVMTlRWGFVQzZzMFdjT2JwS0Zn?=
 =?utf-8?B?VkZEMDd1c3NodUcyRlJ2K0hpSWk0ZFBxbGd5YzhHUERNOWVNc1BCM1BicXhB?=
 =?utf-8?B?bUxXSHg3UGFlREdiTXE5WGYwSGRCTVRMTWgySDFlem05WS9ETEgvcXcvVTFL?=
 =?utf-8?B?UTZPU1NtYm5hVHZHeXJsT2xlSXFveWJXZERSUVNxdXBMUWZLU1VQQlA4YlJB?=
 =?utf-8?B?UDBnZTZXdnlRQXFUeWErZjFkd2pZVjZpanJUcmtkMmtBb1NYNnExQzJtUmFu?=
 =?utf-8?Q?sMcdx29rRcNKqfjZsM657l4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F6B2828A5FDECB4E9EB4786C7AAA9B31@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37f9f225-8fb2-4527-b7fc-08dbbdc794f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2023 13:01:49.7941 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YsQ4Rg449Hmlwn4lffRywehNmoM6ztJlrgYYVLVeyeRBoNLiDzluMBVD5g6xoR/+T3sE8vuzVqr1Py14IDYEsR+NVQVWkRYUpLY+5W5YAUM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8071
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v5 0/2] fbc on any planes
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTA5LTI1IGF0IDE1OjE2ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAyMiBTZXAgMjAyMywgVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBp
bGxhaUBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IEZCQyBjYW4gYmUgc3VwcG9ydGVkIGluIGZpcnN0
IHRocmVlIHBsYW5lcyBpbiBsbmwNCj4gDQo+IFdoZW4geW91J3JlIGNyb3NzLXBvc3RpbmcgdG8g
aW50ZWwteGUgYW5kIGludGVsLWdmeCBsaXN0cywgeW91IG5lZWQgdG8NCj4gYWN0dWFsbHkgc2F5
IHdoYXQgeW91IHdhbnQgZG9uZSB3aXRoIHRoZXNlIHBhdGNoZXMuIE90aGVyd2lzZSB3ZSB3b24n
dA0KPiBrbm93Lg0KPiANCj4gQmVmb3JlIHhlIGlzIHVwc3RyZWFtLCB0aGUgb3JkZXIgb2YgYnVz
aW5lc3MgZm9yIGk5MTUgY2hhbmdlcyBzaG91bGQgYmU6DQo+IA0KPiAxKSBHZXQgdGhlbSBtZXJn
ZWQgdG8gdXBzdHJlYW0gaTkxNSAoc2VuZCB0byBpbnRlbC1nZngpDQo+IA0KPiAyKSBHZXQgdGhl
IG1lcmdlZCBjb21taXRzIGJhY2twb3J0ZWQgdG8geGUgKHNlbmQgdG8gaW50ZWwteGUpDQo+IA0K
PiANCj4gQlIsDQo+IEphbmkuDQoNCk9rYXkuIEkgd2FzIGZvbGxvd2luZyB0aGUgW2h0dHBzOi8v
Z2Z4LWxpbnV4LmludGVsLmNvbS94ZS5odG1sXQ0KSGVyZSBJIGFzc3VtZWQgdGhlIGZsb3cgYXMg
eW91IGhhdmUgbWVudGlvbmVkLg0KDQpMdWNhcyBoYXMgYXNrZWQgdG8gaG9sZCBvZmYgbWVyZ2lu
ZyB1bnRpbCB0aGUgaW5pdGlhbCBkaXNwbGF5IHN1cHBvcnQgaXMgbWVyZ2VkLg0KDQpTbyB3b25k
ZXIgaWYgSSBzaG91bGQgdGFrZSBmaXJzdCBpbnRlcm5hbCBhbmQgdGhlbiB1cHN0cmVhbSByb3V0
ZSBmb3IgdGhpcy4NCg0KDQpCUg0KVmlub2QNCg0KPiANCj4gPiANCj4gPiBWaW5vZCBHb3ZpbmRh
cGlsbGFpICgyKToNCj4gPiDCoCBkcm0vaTkxNS9sbmw6IHBvc3NpYmlsaXR5IHRvIGVuYWJsZSBG
QkMgb24gZmlyc3QgdGhyZWUgcGxhbmVzDQo+ID4gwqAgZHJtL2k5MTUvbG5sOiB1cGRhdGUgdGhl
IHN1cHBvcnRlZCBwbGFuZSBmb3JtYXRzIHdpdGggRkJDDQo+ID4gDQo+ID4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMSAr
KysrKysrKysrLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVy
c2FsX3BsYW5lLmMgfMKgIDkgKysrKysrLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIgKysN
Cj4gPiDCoDMgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkN
Cj4gDQoNCg==
