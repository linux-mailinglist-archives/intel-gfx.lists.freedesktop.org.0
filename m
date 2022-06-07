Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C2D53FFAC
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 15:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFA1810EE8D;
	Tue,  7 Jun 2022 13:07:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE7FC10EE8D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 13:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654607225; x=1686143225;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=QucdtxRJcaRuyZS6Xs7HyKtdYbwra3W5GL67ctZOkdA=;
 b=YaOHoW4iHnFakzJkWlCpyU7lJq928pk9mR56rtGCRHfHrGeR48QJmCPV
 2D8N/lnUrJOORSGUGy2HEBoGpQ28IEUr+7uqq6yBnIMOLIa7BcNUf0zq1
 Ujj1EYzJFZk3GgDV/v/j1Al8Cx1oFaa1UXPJW4cZcVX5aKm4AUmGmBJyB
 gCavbt/pOcg3qgC33tqYLf/cil1WfbhXXViiXTks/+AOifQmAia1hOEQH
 orr2Hm5XxRKq0qnXpXAYbJ/93Rlv89+jQYUVOaSF2u2BCQ9Q++3GPUz/V
 +faQ1b515+vGnHU7690M9jIQF60GaMSykcIkRurhB3dfJC2DVvZV12h6A Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="277184495"
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="277184495"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 06:05:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="723311940"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2022 06:05:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 7 Jun 2022 06:05:14 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 7 Jun 2022 06:05:13 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 7 Jun 2022 06:05:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 7 Jun 2022 06:05:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fEPCu6RaXQhj4slxvCirKiFYkh8HhULp5mN7BOQDE0Fo+1TmCwBk92Fi6iuQK2mBW6M8iSLKlIrmuaNX3yXWrh190ta+ALJGwMS4DBOZffT0TADyadVBmANYWAdRDL6DaeY00AwO2RO1FpU1Zy3tgkosCvDFhjp65PZQrDPUGIQWq1QXEF2tW4N8PlGJHXLcDUfDdnGiaPeMpRDSgTiOjaBaARGQuStXROoW0LP4288GhM9uUb3LlMLOANoQYFZ+imRVqMsVh92Hy/SORS6IWbyohfzYeYTWGkdAy+ZTqRVr7gv5SBAKI+yUEjU9md9LlethFC6LteH0FX5kEWjlmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QucdtxRJcaRuyZS6Xs7HyKtdYbwra3W5GL67ctZOkdA=;
 b=YR193xY7H+r/F/YgEQ7AD7Hp/ocyiPklTggFmkMhP83wLquf7L3+Uexo1KGtvJdyPqlMuHF32s63/jkj7xAA5MY/kxigJpDlVmy12eTR+rLgnM3lAF+ZPTbZ0Q/c+ktply83qllr2QEy92+ZW/eXmx1kOHIBdF54lw5HaQKz3Xq9T8x0i2St77K+uaJDR892gva5qmyC20RuZLcD0ynF/ZQdyoeZcyfyzyxIgGckeWAa61oRuSK5k8qurPztf6xQwD6o+Wx1KlSF9T40VPx04VywGmHUjdNhC+NSfn7ZMA/27izwfMitCA41lxu8NRvMR6Gj+c/v3BLiiGIzGRbqSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BYAPR11MB2694.namprd11.prod.outlook.com (2603:10b6:a02:c7::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5314.17; Tue, 7 Jun 2022 13:05:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a4a2:3569:ce75:fd0f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a4a2:3569:ce75:fd0f%3]) with mapi id 15.20.5314.019; Tue, 7 Jun 2022
 13:05:10 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Souza, Jose"
 <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to check
 if headless sku
Thread-Index: AQHYdzK5I5Fh8Y/l3EawA39lhGFtWq09oLGAgAAIngCAADdkgIAEKJiAgAADxwCAAFN+AIABM78AgABbuYA=
Date: Tue, 7 Jun 2022 13:05:10 +0000
Message-ID: <a4bbdd23f31dd3918f99b2b1cd6b9759ac59563b.camel@intel.com>
References: <20220603101411.3087789-1-jouni.hogander@intel.com>
 <20220603101411.3087789-2-jouni.hogander@intel.com>
 <87k09xor2e.fsf@intel.com>
 <eeac0a25543a75cbeb39eaa61a1abbfdcfb94a6f.camel@intel.com>
 <0069e1028bfccf5f1c3f7b8d8a129c202f4cf764.camel@intel.com>
 <f69cf635fc2da871baee0bbbbf946addf9a35ddf.camel@intel.com>
 <875ylenr4t.fsf@intel.com>
 <8a83b4595e603df3ed8975a31425639b714b57bd.camel@intel.com>
 <874k0wrkkr.fsf@intel.com>
In-Reply-To: <874k0wrkkr.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e5d333a3-58ee-4bf4-e350-08da48865a4f
x-ms-traffictypediagnostic: BYAPR11MB2694:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB2694FF33EB0228D0954EB8BF8AA59@BYAPR11MB2694.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 37QOT+b3I+sh88jvOO0uNWpA3Syw3+5ZRCoSt7+L/WbMxsMHMo07L9j8BQIpxHDFNgetoGqdLXhkbw+yOZ30lhn6tOYLm2HXPwydFQ68yFobVapKTd+3OWURsKn+Eu9zL/zb72abIMdqLMqAI7KJfjRYtbwlbGP+ucziBXYlxZZ8mz5QkcgIlnLOgogHXVzKcqkmHCd+9v7i5Z5Tk6eg0UfKCq/AM8bd8RdMh8QiTEkyw0pdqtA8uAO7OKyunx1mdOW64ElJwUdBFBDZOSJqayNpnUnPG2ekm2fpjV93UTdw0+JP1EzY0SeoR7EJ64hPWMUBKl82noUzcMGYlXt/gRohZRyZUfX2P4cj+/2SKoybCND8/96w3zU3z305Uvqao14LW1E3/0XeCtQwqAnBr0z8Uam3Zek+tM5J6J0A+9twQ02AaR9CCbSkr3J2y3ht29LHGuQfYrLPvDY3mQRg7ojUIbYTmCiq6x/xkeWparaizF5/IHu8MIb62O9YVg+IOCjeCpJTx4Kx3CMcTTJA95LlObTpBbDqU8aBQRHTyvzTIZe7rqiSffyOeyXxDbPziSqxclwy+RY1g4liHU2kfJu+24BQ02XxxxHoITnP5iAZKGUZKh9UScp7TS2XzTVHwYeT8ureywA9oKkyjI4r/jTXZfxL0zvFCOtbRzM5STJvCqnA/q6HaGOKN6vJRaM4oQYCd5NKJkwzbCLlufeIRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66574015)(186003)(122000001)(38070700005)(5660300002)(2616005)(86362001)(316002)(110136005)(6636002)(36756003)(66946007)(66556008)(76116006)(64756008)(91956017)(38100700002)(66476007)(66446008)(8676002)(71200400001)(8936002)(26005)(6512007)(6486002)(508600001)(6506007)(2906002)(82960400001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q2QxYjVHSVZZL2t6SzlyMkd1RGFISUhsbE9TTGtQZTNFdzNjVU9hN0NRN1Mx?=
 =?utf-8?B?ZlplTWxsa2IxYnFwUy9pcWRYVXh2b1oxU2owWi91VTZUeElmZC9Ya3FqSzFT?=
 =?utf-8?B?cW1pOGNkNlRSZTliMmRuWWI1bXJRSWROdFExbGh1L1l1bFdKa1BZR1dKN1hw?=
 =?utf-8?B?N1FWRmJjdGh0bXpYVjhzaU5Va2Juaks5SVpWNnBJYUNWaDMvWndwSWRvM3Vs?=
 =?utf-8?B?V0xKejBJZmJGK3E2WmJSalZ6RHplR0trZTAvS3lHTjVWeEpsbm5SbmxqTCtj?=
 =?utf-8?B?UWdVcjZML0tYU1Z4eGVlME1NU1ltRm1Fa1JsMFhhR01PdlZBL3FjcHpQSkYy?=
 =?utf-8?B?a3B5VmFpZHpBMWxrWTZnY29PYXpwa1hLZEhjV21RN0U1OGJRRlU4WVNrZCtJ?=
 =?utf-8?B?WUM0UnN4ZkIwekR5eTlzcC82OW0zb0Zpa0tQdEtHU0thREhydlFuMnIrWjJq?=
 =?utf-8?B?MXBiVVBsSDZUT0cvL3RidXJKQVNGTzNUOXhQOFBVTnh1Z0V6cDQ4cEwzeW9v?=
 =?utf-8?B?Mkt2b3ZlbzZZZWJXN3VCcnRFckVzNDZzSjZNcXhwVzJTaGxFTEpnMXZ2SjZz?=
 =?utf-8?B?RkhyL00yU2pEOXBRUkxXTGpYSTBCQXdIZ2d1M2daaVkvck1oQXltYjc5dVE1?=
 =?utf-8?B?bmZLMmJZeHgyRitMOThkRkk0VlplUkFXNFJEakRDTXFqOHhHL3hiL0N1SEdK?=
 =?utf-8?B?ZXNVRFdWQWQ4ckpjVVpEWVRCQ0JpV3YwTHgxVUM3dmNYSXNNWmhISzVIMEtp?=
 =?utf-8?B?M1JYeE9iTHpTZkd3RW1MMjFCMTZNSHgwdXZaZ0JSb1RhZmxDeWxuMzE3dDBF?=
 =?utf-8?B?Tld2N2hVYldRZzRic2k2MEZDMUo0VkhYR2tYSnJ1ZmswMjBmNDdFbDUrR1Zj?=
 =?utf-8?B?by9YdXNsUE9mazFDQUdBWjFOSEVIN1J3NG5ZUlpPL0FOUC9kWERCUUJxUG9l?=
 =?utf-8?B?c1kzN3JYN3hwSEROUHllQ2NLWmh3SlMvZ3J6eGZETFRqN3Yxam9xRzJEYm5P?=
 =?utf-8?B?R3ptZSsxaFFjYVpTdUdNTmFLZEZvVzY4dFVYMXZYcU1KVUluNUE4ZTB2YVp1?=
 =?utf-8?B?S0F1YVB5WjcxNEVCQnBUNTEvZk9HaGZsZTl3TmRtZWRNaE8xeEZwbURESmQw?=
 =?utf-8?B?d0VGTDBPMVc1b1NsZno0QUk5TTE1aU1taXVJVmdHbkdrODFQbGttZTZSbDZD?=
 =?utf-8?B?Y1lpVWMyenhtaGpMNk42bEV0K2JwQkdPMjIvY29RRVFaSThocDZaUE1YSHhK?=
 =?utf-8?B?WGpVSFd5VjBzVEcrYWZpTWNqWDdSR25VV3h3WjROZSt1UDNKTlUwLzh5dWR3?=
 =?utf-8?B?RllaWVB5aXl1bENWczNteW1BR0pBTXg1YWxwNHA0ZWRPZEphdHlKbzNYYWta?=
 =?utf-8?B?ZFVQTmF1Uy9tYUlCZmsxV3cyN0hxeGwrZ1FqbGQ3ZlVzcmJzSmpwNC9KWS90?=
 =?utf-8?B?NjNQL0ZRWHBGV2Z6b3Y0eGQ0Wm1maVBNY1E5a2RtWjBCclZxeVUwQy9BcjFS?=
 =?utf-8?B?N25aZGhFRGRudHJWRHJjOEh3d1NwSHk1RDNQQ3RMNlVLaHFWOW9aNUFyZTlj?=
 =?utf-8?B?Vzg2WjlXeGhYd3ZpSGJITFlKRERqdlpVTE5semUwOU9LOVF2WnMyZ3VNOVYx?=
 =?utf-8?B?T1RVSWc2RG1mdVNDUEpWaCtKOE9vcW50UzFsUldtMnZTRGowVS9jWEswRWds?=
 =?utf-8?B?TW5hVytSM0ltbWVVQmxFRnJ5Tnh3THBtUEZ3Qmc3c21xU0lBOGdvdTFTRUV3?=
 =?utf-8?B?TVBQVVlKeU9KODY4OUVqYzZDL3BtVTU4bnVvcTlEcmhZY1ZlcHFabmU0N1Ft?=
 =?utf-8?B?VVpZYUl6aTIra0QxU0hqRjJxUzk1UkZiR1F4dnM2MGdrMk1GekRDYy9xZlVa?=
 =?utf-8?B?Vmx6ZzkxUWNvd0gwcVNJbVFGQ1pQWUh4QkpWZmkzTXBoV2wzSHA5NFdyZ3NT?=
 =?utf-8?B?UG1GVXNnL0hhZTcvVTFaelJCejlacDRhenRSUGMyY2R5U3FLM0NOcmNhSmF2?=
 =?utf-8?B?ZXM0TGR6L3VBemVUT2s0ZUdTNjdMMnJRUS9zMkNwY3pxYXBNcG93ZFF2cGFa?=
 =?utf-8?B?K2xaUGFWSStsYXBVeVRxM3kzNkh2L3JnNTFNVm5acmt2REU0Vk94YnBUWGlE?=
 =?utf-8?B?ODdWUkxwR29yNytEY1kvbHh2YnFBay8vNFVCRUJGTk9LNWtaUUFJZnJ1TVFa?=
 =?utf-8?B?REdHaXZ5cWlKakRFOEVPRjZuRVNnbVEreTJyUXFKaDJ2bkxTZEFsVUFjS0pl?=
 =?utf-8?B?QWdyQkk4NzhIUHZPdmJQZXBmdjRXS0JBSHpCTmZaNjVsazR4RkQ1dnN2anpo?=
 =?utf-8?B?ekpzc3g0UW9XK0h6YThkUWZVR1pYYzhTakxFeUJEN1ZpT0ttOUNxSlF0b0JC?=
 =?utf-8?Q?wLR6Ju9EMy7/lrLC4G3DFLX07lwv+JkKjzNMx?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1D122977CA38F044A2D8AD3B30DF73E3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5d333a3-58ee-4bf4-e350-08da48865a4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2022 13:05:10.3880 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y0OVJlfLe9HrO/KFTwzev58aaEkwgtyi/EWkXDWeEbsl3h2foPct97oJoC1mPzFIreGFUxAGq3UKpvCXOp+eVQKOpodMu/W9EoszSAEEiyo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2694
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to
 check if headless sku
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

T24gVHVlLCAyMDIyLTA2LTA3IGF0IDEwOjM2ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAwNiBKdW4gMjAyMiwgIlNvdXphLCBKb3NlIiA8am9zZS5zb3V6YUBpbnRlbC5jb20+
IHdyb3RlOg0KPiA+IE9uIE1vbiwgMjAyMi0wNi0wNiBhdCAxMToxNiArMDMwMCwgSmFuaSBOaWt1
bGEgd3JvdGU6DQo+ID4gPiBPbiBNb24sIDA2IEp1biAyMDIyLCAiSG9nYW5kZXIsIEpvdW5pIiA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gd3JvdGU6DQo+ID4gPiA+IE9uIEZyaSwg
MjAyMi0wNi0wMyBhdCAxNjozMiArMDAwMCwgU291emEsIEpvc2Ugd3JvdGU6DQo+ID4gPiA+ID4g
T24gRnJpLCAyMDIyLTA2LTAzIGF0IDEzOjE0ICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+ID4gPiA+ID4gPiBPbiBGcmksIDIwMjItMDYtMDMgYXQgMTU6NDMgKzAzMDAsIEphbmkgTmlr
dWxhIHdyb3RlOg0KPiA+ID4gPiA+ID4gPiBPbiBGcmksIDAzIEp1biAyMDIyLCBKb3VuaSBIw7Zn
YW5kZXIgPA0KPiA+ID4gPiA+ID4gPiBqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gPiA+
ID4gPiA+IHdyb3RlOg0KPiA+ID4gPiA+ID4gPiA+IEV4cG9ydCBoZWFkbGVzcyBza3UgYml0IChi
aXQgMTMpIGZyb20gb3ByZWdpb24tPmhlYWRlci0NCj4gPiA+ID4gPiA+ID4gPiA+cGNvbiBhcw0K
PiA+ID4gPiA+ID4gPiA+IGFuDQo+ID4gPiA+ID4gPiA+ID4gaW50ZXJmYWNlIHRvIGNoZWNrIGlm
IG91ciBkZXZpY2UgaXMgaGVhZGxlc3MNCj4gPiA+ID4gPiA+ID4gPiBjb25maWd1cmF0aW9uLg0K
PiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiA+IEJzcGVjOiA1MzQ0MQ0KPiA+ID4gPiA+
ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tDQo+ID4gPiA+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+
ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmMgfCAx
Mg0KPiA+ID4gPiA+ID4gPiA+ICsrKysrKysrKysrKw0KPiA+ID4gPiA+ID4gPiA+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmggfCAgNw0KPiA+ID4gPiA+ID4g
PiA+ICsrKysrKysNCj4gPiA+ID4gPiA+ID4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRp
b25zKCspDQo+ID4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+ID4gZGlmZiAtLWdpdA0KPiA+
ID4gPiA+ID4gPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vcHJlZ2lv
bi5jDQo+ID4gPiA+ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X29wcmVnaW9uLmMNCj4gPiA+ID4gPiA+ID4gPiBpbmRleCBmMzFlOGMzZjhjZTAuLmVhYjNmMmU2
Yjc4NiAxMDA2NDQNCj4gPiA+ID4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX29wcmVnaW9uLmMNCj4gPiA+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmMNCj4gPiA+ID4gPiA+ID4gPiBAQCAt
NTMsNiArNTMsOCBAQA0KPiA+ID4gPiA+ID4gPiA+ICAjZGVmaW5lIE1CT1hfQVNMRV9FWFRCSVQo
NCkvKiBNYWlsYm94ICM1ICovDQo+ID4gPiA+ID4gPiA+ID4gICNkZWZpbmUgTUJPWF9CQUNLTElH
SFRCSVQoNSkvKiBNYWlsYm94ICMyDQo+ID4gPiA+ID4gPiA+ID4gKHZhbGlkIGZyb20gdjMueCkg
Ki8NCj4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiArI2RlZmluZSBQQ09OX0hFQURM
RVNTX1NLVUJJVCgxMykNCj4gPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiA+IEhlcmUgd2UgZ28g
YWdhaW4uDQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBXaGF0IGRvZXMgaGVhZGxlc3Mg
bWVhbiBoZXJlPyBUaGUgc3BlYyBkb2VzIG5vdCBzYXkuIERvZXMNCj4gPiA+ID4gPiA+ID4gaXQg
aGF2ZQ0KPiA+ID4gPiA+ID4gPiBkaXNwbGF5IGhhcmR3YXJlPyBBcHBhcmVudGx5IHllcywgc2lu
Y2Ugb3RoZXJ3aXNlIHdlDQo+ID4gPiA+ID4gPiA+IHdvdWxkbid0IGJlDQo+ID4gPiA+ID4gPiA+
IGhlcmUuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFRoaXMgaXMgZm9yIGh5YnJpZCBzZXR1
cCB3aXRoIHNldmVyYWwgZGlzcGxheSBodyBhbmQgdGhlDQo+ID4gPiA+ID4gPiBwYW5lbCB3b250
DQo+ID4gPiA+ID4gPiBiZQ0KPiA+ID4gPiA+ID4gY29ubmVjdGVkIGludG8gZGV2aWNlIGRyaXZl
biBieSBpOTE1IGRyaXZlci4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBXZSBoYXZlIElO
VEVMX0RJU1BMQVlfRU5BQkxFRCgpIHdoaWNoIHNob3VsZCBkbyB0aGUgcmlnaHQNCj4gPiA+ID4g
PiA+ID4gdGhpbmcNCj4gPiA+ID4gPiA+ID4gd2hlbg0KPiA+ID4gPiA+ID4gPiB5b3UNCj4gPiA+
ID4gPiA+ID4gZG8gaGF2ZSBkaXNwbGF5IGhhcmR3YXJlIGFuZCBoYXZlIGRvbmUgb3V0cHV0IHNl
dHVwIGV0Yy4NCj4gPiA+ID4gPiA+ID4gYnV0IHdhbnQNCj4gPiA+ID4gPiA+ID4gdG8NCj4gPiA+
ID4gPiA+ID4gZm9yY2UgdGhlbSBkaXNjb25uZWN0ZWQsIGkuZS4geW91IHRha2UgdGhlIGhhcmR3
YXJlIG92ZXINCj4gPiA+ID4gPiA+ID4gcHJvcGVybHksDQo+ID4gPiA+ID4gPiA+IGJ1dA0KPiA+
ID4gPiA+ID4gPiBwdXQgaXQgdG8gc2xlZXAgZm9yIHBvd2VyIHNhdmluZ3MuDQo+ID4gPiA+ID4g
PiA+IA0KPiA+ID4gPiA+ID4gPiBNYXliZSB3ZSBzaG91bGQgYm9sdCB0aGlzIG9wcmVnaW9uIGNo
ZWNrIGluIHRoYXQgbWFjcm8/DQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBNYXliZSB3
ZSBuZWVkIHRvIHVzZSBJTlRFTF9ESVNQTEFZX0VOQUJMRUQoKSBhbHNvIHRvDQo+ID4gPiA+ID4g
PiA+IHByZXZlbnQNCj4gPiA+ID4gPiA+ID4gcG9sbGluZy4NCj4gPiA+ID4gPiA+IA0KPiA+ID4g
PiA+ID4gVGhhbmsgeW91IGZvciBwb2ludGluZyB0aGlzIG91dC4gSEFTX0RJU1BMQVkgSSBhbHJl
YWR5DQo+ID4gPiA+ID4gPiBub3RpY2UgYW5kDQo+ID4gPiA+ID4gPiBpdCdzDQo+ID4gPiA+ID4g
PiBub3Qgc3VpdGFibGUgZm9yIHdoYXQgd2Ugd2FudCBoZXJlLiBJIHRoaW5rIGJvbHRpbmcgdGhp
cw0KPiA+ID4gPiA+ID4gY2hlY2sgaW50bw0KPiA+ID4gPiA+ID4gSU5URUxfRElTUExBWV9FTkFC
TEVEIGFzIHlvdSBzdWdnZXN0ZWQgaXMgZW5vdWdoLiBUaGF0IHdpbGwNCj4gPiA+ID4gPiA+IHBy
ZXZlbnQNCj4gPiA+ID4gPiA+IHdha2luZyB1cCB0aGUgaHcgaW50byBEMCBzdGF0ZSBmb3IgcG9s
bGluZy4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBBIGhlYWRsZXNzIHNrdSBzaG91bGQgbm90IGhh
dmUgYW55IERESSBwb3J0cyBlbmFibGVkLCBtdWNoDQo+ID4gPiA+ID4gZWFzaWVyDQo+ID4gPiA+
ID4gY2hlY2sgZm9yIHRoYXQuDQo+ID4gPiA+IA0KPiA+ID4gPiBDb3VsZCB5b3UgcGxlYXNlIGNs
YXJpZnkgdGhpcyBhIGJpdD8gV2hhdCBleGFjdGx5IHlvdSBhcmUNCj4gPiA+ID4gdGhpbmtpbmcN
Cj4gPiA+ID4gc2hvdWxkIGJlIGNoZWNrZWQ/IEFyZW4ndCBEREkgcG9ydCBhbHNvIGRpc2FibGVk
IHdoZW4gbm9uLQ0KPiA+ID4gPiBoZWFkbGVzcw0KPiA+ID4gPiBzZXR1cCBpcyBpbiBydW50aW1l
IHN1c3BlbmQ/DQo+ID4gPiANCj4gPiA+IEkgYWxzbyB0aGluayAiaGVhZGxlc3MiIGFuZCAiRERJ
IHBvcnRzIGVuYWJsZWQiIG5lZWQNCj4gPiA+IGNsYXJpZmljYXRpb24uIFRoZXkNCj4gPiA+IGFy
ZSBvdmVybG9hZGVkIHRlcm1zLg0KPiA+IA0KPiA+IEluIGEgcHJvcGVybHkgc2V0dXAgaGVhZGxl
c3Mgc2t1LCBWQlQgc2hvdWxkIGhhdmUgYWxsIHBvcnRzIG1hcmtlZA0KPiA+IGFzIGRpc2FibGVk
Lg0KPiANCj4gVGhpcyBpcyB3aGF0IEkgbWVhbiB3aXRoIG92ZXJsb2FkZWQgdGVybXMuIE5vdyB3
ZSdyZSBhdCAicHJvcGVybHkNCj4gc2V0dXANCj4gaGVhZGxlc3Mgc2t1IiwgYW5kIHdlJ3JlIG5v
bmUgdGhlIHdpc2VyLiA7KQ0KPiANCj4gSXMgdGhlIGhhcmR3YXJlIHRoZXJlPw0KPiANCj4gSWYg
bm90LCBva2F5LCBidXQgd2h5IGFyZW4ndCB0aGUgcGlwZXMgZnVzZWQgdGhlbj8gV2h5IGEgZGlm
ZmVyZW50DQo+IGZsYWcNCj4gaW4gb3ByZWdpb24/DQoNCkkgdW5kZXJzdGFuZCBpdCBhcyBhICJt
YXN0ZXIiIGJpdCB0byBkaXNhYmxlIGhhdmluZyBhbnkgZGlzcGxheQ0KY29ubmVjdGVkIHRvIHRo
aXMgaGFyZHdhcmUuIFRvIG15IHVuZGVyc3RhbmRpbmcgdGFyZ2V0IHVzZSBmb3INCm9wZXJlZ2lv
biBoZWFkbGVzcyBiaXQgaXMgaHlicmlkIGdyYXBoaWNzIHNldHVwLg0KDQo+IA0KPiBJZiB5ZXMs
IGhhcyB0aGUgR09QIHRha2VuIG92ZXIgdGhlIGhhcmR3YXJlIGFuZCBwdXQgaXQgaW50byBwb3dl
cg0KPiBzYXZlPw0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiANCj4gPiBpbnRlbF9kZGlfaW5p
dCgpIHsNCj4gPiAJLi4uDQo+ID4gDQo+ID4gCWlmICghaW5pdF9kcCAmJiAhaW5pdF9oZG1pKSB7
DQo+ID4gCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gPiAJCQkgICAgIlZCVCBzYXlz
IHBvcnQgJWMgaXMgbm90IERWSS9IRE1JL0RQDQo+ID4gY29tcGF0aWJsZSwgcmVzcGVjdCBpdFxu
IiwNCj4gPiAJCQkgICAgcG9ydF9uYW1lKHBvcnQpKTsNCj4gPiAJCXJldHVybjsNCj4gPiAJfQ0K
PiA+IA0KPiA+IA0KPiA+IEFsbCBEREkgc2hvdWxkIHJldHVybiBlYXJsaWVyIGluIHRoZSBhYm92
ZS4NCj4gPiBTbyB5b3UgY2FuIHVzZSB0aGUgbnVtYmVyIG9mIGVuYWJsZWQgY29ubmVjdG9ycyB0
byBrbm93IGlmIGl0IGlzIGENCj4gPiBoZWFkbGVzcyBza3Ugb3Igbm90Lg0KPiA+IA0KPiA+IFNv
IHlvdSBjYW4gc2tpcCB0aGUgcG9vbGluZyBpbiBjYXNlIHRoZXJlIGlzIG5vIGNvbm5lY3RvcnMu
DQo+ID4gDQo+ID4gPiBTZWVtcyB0byBtZSB0aGUgdXNlIGNhc2UgaGVyZSBjb3VsZCBiZSB0aGUg
c2FtZSBhcw0KPiA+ID4gSU5URUxfRElTUExBWV9FTkFCTEVEKCksIGFuZCB0aGF0IGNvdWxkIGJl
bmVmaXQgZnJvbSBwb2xsaW5nDQo+ID4gPiBkaXNhYmxlLg0KPiA+ID4gDQo+ID4gPiBCUiwNCj4g
PiA+IEphbmkuDQo+ID4gPiANCj4gPiA+IA0KPiA+ID4gPiAgDQo+ID4gPiA+ID4gPiA+IEkgY2Vy
dGFpbmx5IHdvdWxkIG5vdCB3YW50IHRvIGFkZCBhbm90aGVyIG1vZGUgdGhhdCdzDQo+ID4gPiA+
ID4gPiA+IHNlcGFyYXRlDQo+ID4gPiA+ID4gPiA+IGZyb20NCj4gPiA+ID4gPiA+ID4gSEFTX0RJ
U1BMQVkoKSBhbmQgSU5URUxfRElTUExBWV9FTkFCTEVEKCkuDQo+ID4gPiA+ID4gPiANCj4gPiA+
ID4gPiA+IE5vIG5lZWQgZm9yIHRoaXMuIEkgdGhpbmsgd2UgY2FuIGdvIHdpdGgNCj4gPiA+ID4g
PiA+IElOVEVMX0RJU1BMQVlfRU5BQkxFRC4NCj4gPiA+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4g
PiA+ID4gIHN0cnVjdCBvcHJlZ2lvbl9oZWFkZXIgew0KPiA+ID4gPiA+ID4gPiA+ICB1OCBzaWdu
YXR1cmVbMTZdOw0KPiA+ID4gPiA+ID4gPiA+ICB1MzIgc2l6ZTsNCj4gPiA+ID4gPiA+ID4gPiBA
QCAtMTEzNSw2ICsxMTM3LDE2IEBAIHN0cnVjdCBlZGlkDQo+ID4gPiA+ID4gPiA+ID4gKmludGVs
X29wcmVnaW9uX2dldF9lZGlkKHN0cnVjdA0KPiA+ID4gPiA+ID4gPiA+IGludGVsX2Nvbm5lY3Rv
ciAqaW50ZWxfY29ubmVjdG9yKQ0KPiA+ID4gPiA+ID4gPiA+ICByZXR1cm4gbmV3X2VkaWQ7DQo+
ID4gPiA+ID4gPiA+ID4gIH0NCj4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiArYm9v
bCBpbnRlbF9vcHJlZ2lvbl9oZWFkbGVzc19za3Uoc3RydWN0DQo+ID4gPiA+ID4gPiA+ID4gZHJt
X2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiA+ID4gPiA+ICppOTE1KQ0KPiA+ID4gPiA+ID4gPiA+ICt7
DQo+ID4gPiA+ID4gPiA+ID4gK3N0cnVjdCBpbnRlbF9vcHJlZ2lvbiAqb3ByZWdpb24gPSAmaTkx
NS0+b3ByZWdpb247DQo+ID4gPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gPiA+ICtpZiAoIW9w
cmVnaW9uLT5oZWFkZXIpDQo+ID4gPiA+ID4gPiA+ID4gK3JldHVybiBmYWxzZTsNCj4gPiA+ID4g
PiA+ID4gPiArDQo+ID4gPiA+ID4gPiA+ID4gK3JldHVybiBvcHJlZ2lvbi0+aGVhZGVyLT5wY29u
ICYgUENPTl9IRUFETEVTU19TS1U7DQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiBXZSBz
aG91bGQgcHJvYmFibHkgc3RhcnQgY2hlY2tpbmcgZm9yIG9wcmVnaW9uIHZlcnNpb24NCj4gPiA+
ID4gPiA+ID4gZm9yIHRoaXMNCj4gPiA+ID4gPiA+ID4gc3R1ZmYNCj4gPiA+ID4gPiA+ID4gdG9v
Lg0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gWWVzLCBJIHdpbGwg
ZG8gdGhpcyBjaGFuZ2UuDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gQlIsDQo+ID4gPiA+
ID4gPiA+IEphbmkuDQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiA+ICt9DQo+ID4gPiA+
ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gPiA+ICB2b2lkIGludGVsX29wcmVnaW9uX3JlZ2lzdGVy
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiA+ID4gPiA+ID4gKmk5MTUpDQo+ID4gPiA+
ID4gPiA+ID4gIHsNCj4gPiA+ID4gPiA+ID4gPiAgc3RydWN0IGludGVsX29wcmVnaW9uICpvcHJl
Z2lvbiA9ICZpOTE1LT5vcHJlZ2lvbjsNCj4gPiA+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0DQo+ID4g
PiA+ID4gPiA+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9u
LmgNCj4gPiA+ID4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
b3ByZWdpb24uaA0KPiA+ID4gPiA+ID4gPiA+IGluZGV4IDgyY2MwYmEzNGFmNy4uNWFkOTZlMWQ4
Mjc4IDEwMDY0NA0KPiA+ID4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfb3ByZWdpb24uaA0KPiA+ID4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ByZWdpb24uaA0KPiA+ID4gPiA+ID4gPiA+IEBAIC03
Niw2ICs3Niw4IEBAIGludA0KPiA+ID4gPiA+ID4gPiA+IGludGVsX29wcmVnaW9uX25vdGlmeV9h
ZGFwdGVyKHN0cnVjdA0KPiA+ID4gPiA+ID4gPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LA0KPiA+ID4gPiA+ID4gPiA+ICBpbnQgaW50ZWxfb3ByZWdpb25fZ2V0X3BhbmVsX3R5cGUoc3Ry
dWN0DQo+ID4gPiA+ID4gPiA+ID4gZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiA+ID4gPiA+ICpk
ZXZfcHJpdik7DQo+ID4gPiA+ID4gPiA+ID4gIHN0cnVjdCBlZGlkICppbnRlbF9vcHJlZ2lvbl9n
ZXRfZWRpZChzdHJ1Y3QNCj4gPiA+ID4gPiA+ID4gPiBpbnRlbF9jb25uZWN0b3INCj4gPiA+ID4g
PiA+ID4gPiAqY29ubmVjdG9yKTsNCj4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiAr
Ym9vbCBpbnRlbF9vcHJlZ2lvbl9oZWFkbGVzc19za3Uoc3RydWN0DQo+ID4gPiA+ID4gPiA+ID4g
ZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiA+ID4gPiA+ICppOTE1KTsNCj4gPiA+ID4gPiA+ID4g
PiArDQo+ID4gPiA+ID4gPiA+ID4gICNlbHNlIC8qIENPTkZJR19BQ1BJKi8NCj4gPiA+ID4gPiA+
ID4gPiANCj4gPiA+ID4gPiA+ID4gPiAgc3RhdGljIGlubGluZSBpbnQgaW50ZWxfb3ByZWdpb25f
c2V0dXAoc3RydWN0DQo+ID4gPiA+ID4gPiA+ID4gZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+ID4gPiA+
ID4gPiA+ICpkZXZfcHJpdikNCj4gPiA+ID4gPiA+ID4gPiBAQCAtMTI3LDYgKzEyOSwxMSBAQCBp
bnRlbF9vcHJlZ2lvbl9nZXRfZWRpZChzdHJ1Y3QNCj4gPiA+ID4gPiA+ID4gPiBpbnRlbF9jb25u
ZWN0b3INCj4gPiA+ID4gPiA+ID4gPiAqY29ubmVjdG9yKQ0KPiA+ID4gPiA+ID4gPiA+ICByZXR1
cm4gTlVMTDsNCj4gPiA+ID4gPiA+ID4gPiAgfQ0KPiA+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+
ID4gPiA+ICtib29sIGludGVsX29wcmVnaW9uX2hlYWRsZXNzX3NrdShzdHJ1Y3QNCj4gPiA+ID4g
PiA+ID4gPiBkcm1faTkxNV9wcml2YXRlDQo+ID4gPiA+ID4gPiA+ID4gKmk5MTUpDQo+ID4gPiA+
ID4gPiA+ID4gK3sNCj4gPiA+ID4gPiA+ID4gPiArcmV0dXJuIGZhbHNlOw0KPiA+ID4gPiA+ID4g
PiA+ICt9DQo+ID4gPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gPiA+ICAjZW5kaWYgLyogQ09O
RklHX0FDUEkgKi8NCj4gPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gPiAgI2VuZGlmDQoN
Cg==
