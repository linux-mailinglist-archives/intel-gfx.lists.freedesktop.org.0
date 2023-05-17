Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2350706C9E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 17:26:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 390F610E448;
	Wed, 17 May 2023 15:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57CB910E448
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 15:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684337162; x=1715873162;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=CFt/wZktQgKZivHzNCXu/rVkde/9aZjUhyS28qusWU0=;
 b=LlrXQJ/4RivhEQCc21cNHGu5/a5CeJtM4ZONslOJ0qFs7/IJjiGmGzif
 BtPd7MhzBk0YRHRC8EaH6QNJsY59yn5lWXtyIlzl7Rl8xcPDyPHjfrOGe
 ltIQoDwkjhdslNNn9spuUp7FwFOqzAIoSnhPQBjg3Ipgl1xURGyWLsNzI
 A7fs+fGjf9DSxxQpsVKWb1RZhixC7uDnPcpeuhnid8yu85i4gpVPZl56v
 FzQjt8ohdz1yuu7WXmnS8qytOXvqeGNJ7/L7OO1OvwASXMjZG7ioWS/mn
 9qP9MPTzLwrxKGsT1Nhoo4TELOr7ejtULM1d5VoacCt90HJ/CqZcnBFb/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="336344111"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="336344111"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 08:26:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="704844714"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="704844714"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 17 May 2023 08:26:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 08:26:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 17 May 2023 08:26:00 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 17 May 2023 08:26:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KFsKM5ST6atagF9dbC/UeMMKCHWxilDI6WFvvL1ZGUglnkN/Y2iii9WHUcEKtRAG5Uv2QgvXJ8VgjkreNLpCkolOAvXL4FFjY3fJKllkO4vIRZ96jLY7r2jPze741rVC4htuXDxmfSmiNia5pXtfINvPZ14Cn1in7nVo2n7g255EpCJsQwBXNjLne41KAgliNt6LfERwWAup6BjoFcVvmxSiK/ocdxpTgcWeGOoGe/AuJqQQ+ttTXZyeDvU9yq0NmlMaXLYcrxTFg9kL6zBAw/ZcuNBe8uhayVCYTkmzx7FxlXillmBRqSsw9VXxRmUzRftcOubqy9LsilVEVr5P1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CFt/wZktQgKZivHzNCXu/rVkde/9aZjUhyS28qusWU0=;
 b=VZIKtmjlx5Gm/AnUNArNRQff6CjMe29afmclhIvjtJos82S5MgL4aJCyT4nlnuoThqzUvLZcRmhhmDKvs3Z0l9LtOrFB4zdheWLOCEisOlDaJANMXA3plO54NMLDR0UbBEM8aKfLVm/g/TM17i5187+SCjNch4SWRI00F5JFnPKZ2lZDEy39ckjrycsZMJjSmX1l4HoOlZtLLD9YQPsgmGSKqzxZqHwjG/Nlyr2LEGiMhywm9sYpqhjwqqbwvv+DPdrkpfZAiiRrLivuk+Pmoipn/WEd0Eh1GqSPUCpsTLDOevWOncnfmQeQr0/qN1k3lbjSYCBvJF2Y3ZIGHe1vrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN9PR11MB5484.namprd11.prod.outlook.com (2603:10b6:408:105::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.17; Wed, 17 May
 2023 15:25:58 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f7ec:aae9:1e7b:e004]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f7ec:aae9:1e7b:e004%6]) with mapi id 15.20.6411.017; Wed, 17 May 2023
 15:25:58 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Das, Nirmoy" <nirmoy.das@intel.com>, "joonas.lahtinen@linux.intel.com"
 <joonas.lahtinen@linux.intel.com>, "nirmoy.das@linux.intel.com"
 <nirmoy.das@linux.intel.com>, "Hajda, Andrzej" <andrzej.hajda@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "andi.shyti@linux.intel.com" <andi.shyti@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: do not enable render
 power-gating on MTL
Thread-Index: AQHZiMfclRGuvBTjL0Cfnk4dtsaA3K9ekk+AgAAD4QA=
Date: Wed, 17 May 2023 15:25:58 +0000
Message-ID: <e9e56f74e740c40884d4351cc2946f695691f782.camel@intel.com>
References: <20230517-mtl_disable_render_pg-v1-1-6495eebbfb24@intel.com>
 <2b4a54d2-e323-9a10-1ba4-3d2e96197bb9@linux.intel.com>
In-Reply-To: <2b4a54d2-e323-9a10-1ba4-3d2e96197bb9@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4 (3.46.4-1.fc37) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB6059:EE_|BN9PR11MB5484:EE_
x-ms-office365-filtering-correlation-id: c1fd7ad9-d082-4127-c901-08db56eb03ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UhVNrC1UXdlIjT20xDqwUPp/BKQw5PAX9+3dU+Eke9waMz8z9zfNo3jxwDp8xw4+xvaJAT90dSZj9lbWJanQ8ta09HakdbO32iZ6Eqwt36z70CQC5q7O+lYxim6W7Jy1LvzIov9QMCvgnC8SEr/O+C1w4F8rP6ob72C4GR6hctLd7fqX9zmZCDYWbgQoAoeq/NnU/bYqxpcixq8pgftKHeu+pRzlEP7MCV+0ibLSlC0ccSNw56J6d1XnQjTKtGHrcq2SjsC0KfrWh8ByAVfGW4GAuLwWOuz5rhy4FhF7bPsP4SpVRl6mGTwUYV23vW8jyHOx7KfEuhNdtc88iyKG3cjTs6N7GIJ4DKSPtDb0Ic3QiG5aCr+rCryGF3cRQIUlh4V8YNKhQGOVtjXXhv5p/Ys9Qx493znNXBN/gyVjyGsEBwNYbuCWwNEniAC31MOW5qhMgUEP0a9X+Yhvo7eQnvdxADKbmpXa5V+D8ACc767Z/V4IjXoTJgR+ufHkNaXRXK+HIL5XL3SsKTDEa4zx0D0W5wFbcc+Ry8Azxj8CljWMTWOej/MEbFpfhcvO4lmS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(39860400002)(346002)(376002)(136003)(451199021)(53546011)(36756003)(83380400001)(2906002)(2616005)(64756008)(66946007)(66556008)(66476007)(66446008)(76116006)(316002)(38070700005)(4326008)(966005)(6486002)(91956017)(82960400001)(71200400001)(110136005)(478600001)(86362001)(5660300002)(6506007)(26005)(8936002)(8676002)(186003)(122000001)(41300700001)(6512007)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VzBtVVlBT1JweUtRallQVnRCWVlUQWN4dnVZWTQ4M3NIalFPS3FtRUtBdG1s?=
 =?utf-8?B?a3lEZENoeko1SG0vem14bzhxQmF5OFUxSzBudnU0TG5lMGh5TTFmK2NRSTBE?=
 =?utf-8?B?aXZwUElITGEzS1VKNVNaRHZzUFA3NFdFbzM0Z1dreEt1NXpJazNaYVdXNEpU?=
 =?utf-8?B?TGQyVXp5OFpORTRxYWVSQ0hESGY3K0xERjZzQzdRRU92N3lBYVExZFByV2Nu?=
 =?utf-8?B?dlphdmhWUC91Wk9Ld2dNMkR6cWJvTmo2SUZSNExiUlBzb254WFpOckVHUU1o?=
 =?utf-8?B?WUpJcjNSK0pPYmIzWjlEL2tQaVNjc1FOVGpzaklNNVhYU3ViUXJNc0F0QktT?=
 =?utf-8?B?TXVidnB5bmJhczVLcitEUEJQdDM3VStFcWsvV0ovcFJNVHIyWlJ3TUJ2WTc5?=
 =?utf-8?B?OFZNeUlCc0tYWERjRGFxYkFPV3FrM3JEb2dCbnYxRjhqYkprYTZIbE9pNmV5?=
 =?utf-8?B?ei9jS0ExTERNa2xuQW5pdlg4cDdkb0prWkxidG9tc0NiZHd0SFJ1bVBiZi9U?=
 =?utf-8?B?UWp6ZGJiSVpIdEpQRTljd0x4YldBVyt1TEx6aGJSSCtuRU54eWxhNE9xVjBW?=
 =?utf-8?B?ZjNPcjVqa1hMUlB6SDBvT0Z6RjcvNnV1ZFlCRU1ORlpLaGtzcU1NSTg0N3NB?=
 =?utf-8?B?SG9zQUFpZm5VYW5hcllxREJRN2pwWENPZXRlejBKSUxFZFhUSVhNLzV6UjlG?=
 =?utf-8?B?ZXNzUVkwaG9odTdSWVVFN0IycWVyeURzRHdlOXVLRCtybUhXU09mZ3pwYTMv?=
 =?utf-8?B?QXBCT0lUUDhLTkZoSjI0bHdzbHcybXdVeVozUElDRjh4eHNkWE9LemU5Zk51?=
 =?utf-8?B?dVgyekdDa2hkSDBKZW00ekM3b3Nyc0JILzRkTnEvVzRxY0M0aGVzSjcyU1pD?=
 =?utf-8?B?UEZwVDZmdHk4TGp2aHNrTG84dXloQmpyemxlVmFNNmRFZXJlWXNSYlNBeGRU?=
 =?utf-8?B?d242dStMZDBvRUVVQ2xXVGNaTWRQU21nbS9FbGs5RmtBRVBsMFNhaGwrVmEz?=
 =?utf-8?B?Z2xiYVhWclVJVTZkSjZNdVFRQm5yQ3FyYWxwYWdobHRMVzFWM09vbFZ2ajNR?=
 =?utf-8?B?WUFlcWUrWG1nd0J3bjVJTTIwWHJNMHIrWkVPRHd1T0QvREhFMEFJOFZUcTE2?=
 =?utf-8?B?U1RhUmZRdXc4QXFDWjl3bEsyOTBjZ0ZuYURhRzF3d3FGdkdWa1ppajZpbHpy?=
 =?utf-8?B?MzN0QkQ2Mkh4WEtudDh3UTFseHNvdkg3c29ibk9ONTNUWnI4N0llWHJvam03?=
 =?utf-8?B?Y1piVnlUdmtraW5JdnU1NWd6YytkdkZaRTdiL3Y4WW5YUHNxcEZadG5jdmlK?=
 =?utf-8?B?allZWHNUdlczSFdrRkFYazdva2UrcWRiK0M1KzhEbDlTV29EL3NRbFNQcExJ?=
 =?utf-8?B?blZjSzBtYWpvSXZSYkFvd1J6RGllcGNjRVdvWjY4bEtPYVQwVmwvNTU4a3J4?=
 =?utf-8?B?L3JRV04zeXlhZFU4QXhPcUdUWjNWaGRnaUlLRngrZmVtZXgxQjlMWHdIdktx?=
 =?utf-8?B?THZIVWtNSHA2WnR5M2l2RlpUVkdkbU9hMXI3UDQ0amI3Vk13WVZwUnFpRXZr?=
 =?utf-8?B?d1M0dFVDOXlxaVpaOFIrODNrdWF5dnluKy8zVFFQS1h0eDYvbFVua0NubjVr?=
 =?utf-8?B?QmpqU0lGRG5sRXcvdVpNbDI2M3FNOVVudW1mYlVMYUhQSjJsYmlHU0ZmQlNH?=
 =?utf-8?B?RnV4YkZVdFgyNFVWS2V1a3VmcnRvM3hHWDlSckp0WDFENEhTaDFMMlpSVTlO?=
 =?utf-8?B?Y0g3aGdPMHI3QUdyN0R4NllyRm5GQ1pmeDBhWTg5YVNvNHdiaC9wcktSMitr?=
 =?utf-8?B?ZENHWTRzYjh3Q0tubzRxbXlGQkpXSng2OS9NV29TV0Fma0M3RlhwT0pkeTVU?=
 =?utf-8?B?ckJQYWFyc1ZWV1B3Q3BEOThnQm9Pb3dnYTdWQU5ocC80VGh3VGJlTkQ1Y3Uw?=
 =?utf-8?B?OWd2OFNCQ1E2aXNRd2lHdk03NVBSYWFySUZYYzJXRmNkdXFMUFlmb2lVeEJK?=
 =?utf-8?B?SGZrZUZIclJkOHFHMVYrYmZmV2MybFZRV1YrN29UTDZTdWZJMWsxME5OM1U1?=
 =?utf-8?B?YXhRWHlGOVhFbWxGN2lGRmtzOGZrQU9IRzBHU3FodzZKQTNTWHNJZW9sRXA4?=
 =?utf-8?B?T2ovb00yTjdUQkh6cHRWeGI5WFlLYkVtTjVEc3Jua0xQVzd1K2djS0UrRnFX?=
 =?utf-8?B?S2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D251FDC5AA9BD64798DF13F151D89DB3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1fd7ad9-d082-4127-c901-08db56eb03ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2023 15:25:58.1466 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JdiysLnRHdqoQVAefUz1dz5JXRFkhwqsVxey2vi4FwgddsJsTALPt4162OV9nZ6bWdocCfWIfbmtVQWd6Ua5Mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5484
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: do not enable render
 power-gating on MTL
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

T24gV2VkLCAyMDIzLTA1LTE3IGF0IDE3OjEyICswMjAwLCBEYXMsIE5pcm1veSB3cm90ZToNCj4g
DQo+IE9uIDUvMTcvMjAyMyAzOjU5IFBNLCBBbmRyemVqIEhhamRhIHdyb3RlOg0KPiA+IE11bHRp
cGxlIENJIHRlc3RzIGZhaWxzIHdpdGggZm9yY2V3YWtlIGFjayB0aW1lb3V0cw0KPiA+IGlmIHJl
bmRlciBwb3dlciBnYXRpbmcgaXMgZW5hYmxlZC4NCj4gPiBCU3BlYyA1MjY5OCBjbGVhcmx5IHN0
YXRlcyBpdCBzaG91bGQgYmUgMCBmb3IgTVRMLg0KPiA+IA0KPiA+IENsb3NlczogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy80OTgzDQo+ID4gU2lnbmVk
LW9mZi1ieTogQW5kcnplaiBIYWpkYSA8YW5kcnplai5oYWpkYUBpbnRlbC5jb20+DQo+ID4gLS0t
DQo+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMgfCA1ICsrKy0tDQo+
ID4gwqAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4g
PiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMN
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jDQo+ID4gaW5kZXggOTA4
YTNkMGYyMzQzZjQuLmViYjIzNzNkZDczNjQwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmM2LmMNCj4gPiBAQCAtMTE3LDggKzExNyw5IEBAIHN0YXRpYyB2b2lkIGdlbjEx
X3JjNl9lbmFibGUoc3RydWN0IGludGVsX3JjNg0KPiA+ICpyYzYpDQo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgR0VONl9SQ19DVExfUkM2X0VOQUJM
RSB8DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
R0VONl9SQ19DVExfRUlfTU9ERSgxKTsNCj4gPiDCoCANCj4gPiAtwqDCoMKgwqDCoMKgwqAvKiBX
YV8xNjAxMTc3NzE5OCAtIFJlbmRlciBwb3dlcmdhdGluZyBtdXN0IHJlbWFpbiBkaXNhYmxlZA0K
PiA+ICovDQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKElTX0RHMl9HUkFQSElDU19TVEVQKGd0LT5p
OTE1LCBHMTAsIFNURVBfQTAsIFNURVBfQzApDQo+ID4gfHwNCj4gPiArwqDCoMKgwqDCoMKgwqAv
KiBXYV8xNjAxMTc3NzE5OCBhbmQgQlNwZWMgNTI2OTggLSBSZW5kZXIgcG93ZXJnYXRpbmcgbXVz
dA0KPiA+IGJlIG9mZiAqLw0KPiANCj4gTmljZSBjYXRjaCENCg0KSW5kZWVkISBXaGF0IGEgbWVz
cyBpbiB0aGUgd29ya2Fyb3VuZCBkYXRhYmFzZS4NCkl0IGlzIHRlbGxpbmcgdXMgdGhhdCBub19p
bXBhY3Qgb24gTVRMIFNLVXMgd2hpbGUgd2UgY2xlYXJseSBuZWVkcw0KdGhhdC4gSSB0cmllZCB0
byByZW9wZW4gdGhhdCBhbmQgZ2V0IHRoYXQgZml4ZWQgaW4gdGhlIGhzZHMuDQoNCg0KPiAgaW5z
dGVhZCBvZiBic3BlYyB5b3UgY291bGQgYWRkIFdhXzE0MDEyNjU1NTU2Lg0KDQpub3QgYWN0dWFs
bHkuDQoxNjAxMTc3NzE5OCBpcyB0aGUgcmlnaHQgbGluZWFnZSBudW1iZXIgZm9yIDE0MDEyNjU1
NTU2Lg0KQmVzaWRlcywgMTQwMTI2NTU1NTYgaXMgZm9yIERHMiBhbnl3YXkuDQoNCkxldCdzIGtl
ZXAgdGhlIHdheSBBZHJ6ZWogcHV0IHdpdGggdGhlIEJTUGVjIHJlZmVyZW5jZSBiZXNpZGVzIHRo
ZQ0KbGluZWFnZS4NCg0KPiANCj4gDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKElTX01FVEVPUkxB
S0UoZ3QtPmk5MTUpIHx8DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIElTX0RHMl9HUkFQSElD
U19TVEVQKGd0LT5pOTE1LCBHMTAsIFNURVBfQTAsIFNURVBfQzApDQo+ID4gfHwNCj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIElTX0RHMl9HUkFQSElDU19TVEVQKGd0LT5pOTE1LCBHMTEsIFNU
RVBfQTAsIFNURVBfQjApKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGdf
ZW5hYmxlID0NCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBHRU45X01FRElBX1BHX0VOQUJMRSB8DQo+ID4gDQo+ID4gLS0tDQo+ID4gYmFzZS1jb21t
aXQ6IDAxZDNkZDkyZDFiNzE0MjFmNmVlODVlMWJlYTgyOWUwYTkxN2Q5NzkNCj4gPiBjaGFuZ2Ut
aWQ6IDIwMjMwNTE3LW10bF9kaXNhYmxlX3JlbmRlcl9wZy1iOWY5ZjE1NjdmOWUNCj4gDQo+IF4g
dW53YW50ZWQgYXJ0aWZhY3RzID8gwqAgT3RoZXJ3aXNlIHRoaXMgbG9va3MgZ29vZCB0byBtZS4N
Cj4gDQo+IFJldmlld2VkLWJ5OiBOaXJtb3kgRGFzIDxuaXJtb3kuZGFzQGludGVsLmNvbT4NCg0K
d2l0aCB0aGUgYXJ0aWZhY3RzIHJlbW92ZWQ6DQpSZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZpIDxy
b2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KDQoNCj4gDQo+ID4gDQo+ID4gQmVzdCByZWdhcmRzLA0K
DQo=
