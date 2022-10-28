Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDC0611750
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 18:16:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6216C10E86D;
	Fri, 28 Oct 2022 16:16:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6786D10E86D
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 16:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666973782; x=1698509782;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M2MPydu5g0oJFnmTEgUH4Hze+sp+AZXg/JvICkiCVP8=;
 b=W/JA4QcEScCHB7TTi5AKOzlFEB19MdpcHdE/71dtE6M4t3/ufYU+xcc/
 MyYTd3RU1AJ/ux6RLjb3cc7cQWAuaEE2DH2QQktkAR6T/gQGoajwPhct7
 +JnHZO7c6TljNyZvPLz5HbP7RqETR4PM8oVhlLYn4IknkSNzEJL+u0/6S
 syB6GHmV17ahWc1o6ICoL5R2TmjXUjVWtcWm4EMpujLsisB1rtymaT5Ys
 BCxM2NbnLkznkyKatKq+wP4xBj2fxMjOvTPxPf6rLX8V4KewaAGPXG0ru
 ReuRY1RDmEFeURrM05RzYv6xE5rHAjCKDGgThmSErkif45Q9AhGc2LtUJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="308519222"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="308519222"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 09:10:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="878009503"
X-IronPort-AV: E=Sophos;i="5.95,221,1661842800"; d="scan'208";a="878009503"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 28 Oct 2022 09:10:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 28 Oct 2022 09:10:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 28 Oct 2022 09:10:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 28 Oct 2022 09:10:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 28 Oct 2022 09:10:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MaPgzx7E4KK7ucAg+dH/TzlH/R+or/MWghmq/LsYo5z99v5ApV60GOswJ4XvycbN9Qrb//N7FlCck4FI9YUuOtZg09WhhQQb780vHaCGYBBIAf/CkoZNyYEPPFG5eBGooL0pC4nvg18x3/dmNTDWn4RM/7aXUIFkaoTazL+pB7yDVM/I+xOvZxirFnv3DY+AG2sEQWBz+DioLom8Jqhl4OJLsSNM/QjU2bMa5wMTH8mi1QhT0C5rPzgC0uRgTBTWI/hTKEyQ5Chl5bMkojMfz+WpAu8KzgLdSFtPA7X9CStkEX017xDnWk0nf8SOSa/SiNvECl9VLyZEOtP1CXNphg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M2MPydu5g0oJFnmTEgUH4Hze+sp+AZXg/JvICkiCVP8=;
 b=CpT8WTPuqwEgJEfaZF1nyQcjymZOEh+TUvjHvb51HHbDyZEWtm/WFf/5guwaB1JTDMEIfkHzASmEMzBM2yVVsfdHrhDAhz4OMyB7WKEezGB+WSM/9zgZsl7pqCGmWFIuE/HQtRLdfj3z+2MWigZ8aC3vpmCm+7724gPRnGT9p+MiVp8l+MeV7d2iQHItPcXXzV74ggf59su0pSM1L2sbxzkWwzQFmwfRrTfC7Aa6CzVPDoqbZ8phiWhxIGnxfE49IP7JftF8qCZ6Jq3z54Ag9z6nU1HOCTt/Kz6RwkfbQKQ1pQGw+C7w6NEknFBlYd/TKfQ4+0qTDf5JBcRtRaZc4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR11MB1324.namprd11.prod.outlook.com (2603:10b6:3:15::14) by
 DS7PR11MB6037.namprd11.prod.outlook.com (2603:10b6:8:74::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.28; Fri, 28 Oct 2022 16:10:24 +0000
Received: from DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::793f:3870:4550:8aee]) by DM5PR11MB1324.namprd11.prod.outlook.com
 ([fe80::793f:3870:4550:8aee%8]) with mapi id 15.20.5769.015; Fri, 28 Oct 2022
 16:10:24 +0000
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 2/4] drm/i915/selftests: exercise GPU access from the
 importer
Thread-Index: AQHY6uUWC/zJdaQ0xUSU8MqhbTqtrq4j+GLw
Date: Fri, 28 Oct 2022 16:10:24 +0000
Message-ID: <DM5PR11MB1324A61D1E24A2E0C2F4DBE4C1329@DM5PR11MB1324.namprd11.prod.outlook.com>
References: <20221028155029.494736-1-matthew.auld@intel.com>
 <20221028155029.494736-2-matthew.auld@intel.com>
In-Reply-To: <20221028155029.494736-2-matthew.auld@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR11MB1324:EE_|DS7PR11MB6037:EE_
x-ms-office365-filtering-correlation-id: d5fc8b5b-2dc9-479f-d123-08dab8feec10
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p5VNlBL+qGpEy0tbqdQUaq2ML2SPIPPCblSQ7h3wcBV9oQji8aCI3G7Iwd+ad+Y+0/Zn8BzYEDfxwDNic3Zrjvop4G83uP51KBl26BJDsGWSX/Qw8gBG2ALr1oY4+JdlFC3HUddVihaRVh5UD2b0WCWQlXTZcBvgex+CGVbVJOzBtOd7maQEp1dyw8YEHrqBTEjQ3yo0pmo8bQTay3NicvF5NwFCCwyrlcwe0MqojjFbYZwcSriqXug7m3QOx8cvJFVYaX1/S748qK6cCZK5GBtejcZJ7t8HnQA3/DphR7grjpu+YcsS4E9tml7iPjV1rGyp5Ln5hI2B5nmbBQAh6b3VjsEAM91+uqSyddzhvWQgp9N6c5UK4SICPrOwt3sXqfu+bdfG5yCmk4ldXF8h4nLNMgxs8Ei/vsR0H64MqxhwzKjFJXjlwcHUerju66Cwkn+9gKZnBzJlzJMQ3GCN1iUJmIut0S+DK0vWDQqMJxRZg1GGNuwLZMbFjX3TMMiHvAJ1k9qGdOuSrEep6NxmOf5+9aPVPtbdioru7pbM52ZhoI/2eIWJVNIRvg4/EcwvCYoamBNmd5bxzPJrdKFGurKdX6SdhDNccTdEb3f0bwv+5aetR+8ZS2197IVCizCzxlJovfuadJ59vyeoPIHHc8voBCWl5T1PwcyAVwndmsjXI/D1pdki438N9rE5B6+090amAvvkQGffGoyTCM3cFQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1324.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(366004)(136003)(346002)(376002)(451199015)(186003)(66574015)(9686003)(38100700002)(2906002)(71200400001)(83380400001)(86362001)(8676002)(38070700005)(55016003)(33656002)(966005)(82960400001)(7696005)(6506007)(26005)(66446008)(66556008)(4326008)(478600001)(316002)(122000001)(66946007)(5660300002)(41300700001)(66476007)(54906003)(8936002)(64756008)(52536014)(76116006)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SWEveDVxWTNhNS9uMjFHWEhGQkNkdXAvTEtzam00U0dWMWo3R0p4S2dOVnBa?=
 =?utf-8?B?bGJNM1lyQnVST2VHRUNMSytGeEp5dlZFbnlRK2NRd2FuSUQvM0xmWkp5enly?=
 =?utf-8?B?ZlZhMVhsM0kyQkcySFlkaXBxUUE4cjRvY0F3VWJIai9kdDZBM0ZaQ25WRTlY?=
 =?utf-8?B?Q29JODVEc3FqeUVBbVlZTHlsNEFMMUEzK2FWU1BOcUR3c3RDN1J2cDMyTzh2?=
 =?utf-8?B?VlI1cFdxYm9LZDRSdnBNVzlCNUN0WTJNV01RbE05QkR2eXdMQysvWnNkRFMx?=
 =?utf-8?B?VXFqZ3FGUVlEK3QrbUlmYk1LZFl4N2ZUVlhvcG1naGNUZCs4VktJTjJVcjFa?=
 =?utf-8?B?L1grMncxOEd3QWVjRUlvdEFyQ3RtS3grdE0veFBJRXczdk5xc05ydXpkQXl6?=
 =?utf-8?B?eXQwMmpSY2RNTVlQeWwxOUxRUTVGaFJPMnYzMVcxQ0x0SVJIU1lIR255ZXd6?=
 =?utf-8?B?bkVVMjc4TWx0aHhaMVNwVlhRdG5uRnRXVXlNek9LR1Zubk5DWExIdUIxSmtZ?=
 =?utf-8?B?K2JFN1p1UzNFc3l2SVp5TFNTdU43dk45cXQrMUZ6NFRQaS9KSkt6a0xTZVlk?=
 =?utf-8?B?VTV4YkZpc01ocUZhQlpISE12ekJ0cFdNa1RJc1RaMGFtdG1LdStGQmVXK1lP?=
 =?utf-8?B?LzJqa1NLU01wVEdNVUdRQXpPL2ZZL25wcWJPLys1ZUwyREV5YzZyWWFhbXRX?=
 =?utf-8?B?NlZsS3lMWk5KbGRmUGVOVmd6ZGlmWlBHY1Vza2NIaTVLOVNRMnp6YnVtOU5Z?=
 =?utf-8?B?aUZQQjFIR2EwNHF0am82R0dncVB6TVkwUUl3Z3U1RXZyUi8rN0M0QnIzclhQ?=
 =?utf-8?B?ditMY2JaR3g4eTAyS0RpYUtHeGZlVHVkbjRxWnJLQTZhS2Z3Nk91bWE3ZXZX?=
 =?utf-8?B?YW1pbTVWMHQ4d2JqS1czTWRWTmVGeXBqOHNHK3AycC9RbVRVMVlqQ1BoY3o4?=
 =?utf-8?B?VHE0bkdMTTNSOXh3c2h2ZjFRQkt3WGlndGU1OW9Xa1hWa25VMkZtUDR1UDRs?=
 =?utf-8?B?ZFFOZUIvcFBweUQ5QktWTlZ0cXF1L1Z6QmJYcnBxSGlNOWZoaGYyL3hVRVl2?=
 =?utf-8?B?R2pGbWtmaG9NRFdCL3dUNXJwc2FnYkNIRkpHZXh2cldiTEozL2t1SW5Mdng5?=
 =?utf-8?B?ZFdZZkVkWWVzenhGVXNZZnBDaTJQTWV4d2FTSEc3UStUWkUreVVJQUZDdk52?=
 =?utf-8?B?SzJuS3lXdE4ya2NyMVhMVUNMSjNyMHlQTFdXYnptZlhXN3BHZ0x1cXd1UCtJ?=
 =?utf-8?B?V1pvOHhHQnQrTEpySHZ6RUk4UzkzTWMwOVNINXh2VEdKeE90UDZBQzVHd0pJ?=
 =?utf-8?B?a2xkYXJ0QmxndjE0OE9adU9YTkVXWFg5c1o4a0w1elBqdU9OQzZia2Y4RXpv?=
 =?utf-8?B?Y3VjQVF4TmIrTm0rWVpWSm4zZkx4K2c3cWxCVjB5SWlQNmhrZktLZVB3MlFL?=
 =?utf-8?B?S3FvZVRrdFQxdmhiQ3F5MkpVdk1YbnhPY3psbEJEaFM5YVNLZVcweEg1ZnF6?=
 =?utf-8?B?ZEFOUGJodEtVSXRiVzRyakx2emFEbStpYUt6cVNLTTRndjBJdXZxQzZuZ21w?=
 =?utf-8?B?VGJVS1R1VFdrdW9XQ3gxNy9FWXJzd2JIWDBja05wZDFyOFR1TGlxRzBPWGVV?=
 =?utf-8?B?Y1dMUjRsUktENXNrVDFrUjBoc05KeWZvSFdNWHR0Q1R1cThWTTVFbmFyZUJw?=
 =?utf-8?B?dzMrZVpyZGw3VTV4djNYY0hFbnVieHUzdG9XTkpEY1NDcVNYTkFLbkxOOHBN?=
 =?utf-8?B?UGw4cndhSXN0TjFMS2VjSFhOejc4Ly85TXp0aUhwLzI0U2lrdHZUeDRuN3Zo?=
 =?utf-8?B?VjBKYXJuMFlteWdkTVdtRktVY25MUEFiS1dPTGszdmxvMnY3em1WYnVvYXc4?=
 =?utf-8?B?Mzk5VFpsUmdaZ0tKVWJ1am8zTGVrdVNUOHp5bVZkeExSZTBucU5JZWozVmNo?=
 =?utf-8?B?UUluTG15cE1yVHY4SjExRFFEM1NJNWJRcFhydFl0b0V5UTNwMzYyYmovd1lq?=
 =?utf-8?B?SmdOb29kbExzUEt1VW83Wk5nL3UxMCtNZ3RIckNUaWFmWXJETE1oY1VRQ1Mz?=
 =?utf-8?B?ZjhSZi96dnVRK3ZEUUpidU01RUpjU0VBRjR3cThJTGt5RXVsbkFDRjFsR1lN?=
 =?utf-8?Q?JLl5iE9IGEwmG3J5BNgk1LPhn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1324.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5fc8b5b-2dc9-479f-d123-08dab8feec10
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2022 16:10:24.7450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M7NZdg7xS98314IgM4vYzWPgtLcs9Ly14F0OKi8UpeHN8LdfGXK5hInrXCootm6iGi9up62p9WQQiFG4ejczd0IzFJtgrW+YtP4RQkHLK9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6037
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/selftests: exercise GPU
 access from the importer
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

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogQXVsZCwgTWF0dGhldyA8bWF0dGhl
dy5hdWxkQGludGVsLmNvbT4NCj5TZW50OiBGcmlkYXksIE9jdG9iZXIgMjgsIDIwMjIgMTE6NTAg
QU0NCj5UbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPkNjOiBMYW5kd2VybGlu
LCBMaW9uZWwgRyA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+OyBUdnJ0a28gVXJzdWxp
bg0KPjx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+OyBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPjsNCj5SdWhsLCBNaWNoYWVsIEogPG1pY2hhZWwu
ai5ydWhsQGludGVsLmNvbT4NCj5TdWJqZWN0OiBbUEFUQ0ggdjIgMi80XSBkcm0vaTkxNS9zZWxm
dGVzdHM6IGV4ZXJjaXNlIEdQVSBhY2Nlc3MgZnJvbSB0aGUNCj5pbXBvcnRlcg0KPg0KPlVzaW5n
IFBBR0VfU0laRSBoZXJlIHBvdGVudGlhbGx5IGhpZGVzIGlzc3VlcyBzbyBidW1wIHRoYXQgdG8g
c29tZXRoaW5nDQo+bGFyZ2VyLiBUaGlzIHNob3VsZCBhbHNvIG1ha2UgaXQgcG9zc2libGUgZm9y
IGlvbW11IHRvIGNvYWxlc2NlIGVudHJpZXMNCj5mb3IgdXMuIFdpdGggdGhhdCBpbiBwbGFjZSB2
ZXJpZnkgd2UgY2FuIHdyaXRlIGZyb20gdGhlIEdQVSB1c2luZyB0aGUNCj5pbXBvcnRlcnMgc2df
dGFibGUsIGZvbGxvd2VkIGJ5IGNoZWNraW5nIHRoYXQgb3VyIHdyaXRlcyBtYXRjaCB3aGVuIHJl
YWQNCj5mcm9tIHRoZSBDUFUgc2lkZS4NCj4NCj52MjogU3dpdGNoIG92ZXIgdG8gaWd0X2dwdV9m
aWxsX2R3KCksIHdoaWNoIGxvb2tzIHRvIGJlIG1vcmUgd2lkZWx5DQo+c3VwcG9ydGVkIHRoYW4g
dGhlIG1pZ3JhdGUgc3R1ZmYgKGF0IGxlYXN0IE9PVEIpLg0KPg0KPlJlZmVyZW5jZXM6IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvNzMwNg0KPlNpZ25l
ZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4NCj5DYzogTGlv
bmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPg0KPkNjOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPg0KPkNjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPkNjOiBNaWNoYWVsIEou
IFJ1aGwgPG1pY2hhZWwuai5ydWhsQGludGVsLmNvbT4NCj4tLS0NCj4gLi4uL2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvaTkxNV9nZW1fZG1hYnVmLmMgIHwgNzkNCj4rKysrKysrKysrKysrKysrKyst
DQo+IDEgZmlsZSBjaGFuZ2VkLCA3OCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+DQo+
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1f
ZG1hYnVmLmMNCj5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1f
ZG1hYnVmLmMNCj5pbmRleCBmMmYzY2ZhZDgwN2IuLmU1N2Y5MzkwMDc2YyAxMDA2NDQNCj4tLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2RtYWJ1Zi5jDQo+
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9kbWFidWYu
Yw0KPkBAIC02LDggKzYsMTIgQEANCj4NCj4gI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+ICNpbmNs
dWRlICJpOTE1X3NlbGZ0ZXN0LmgiDQo+KyNpbmNsdWRlICJnZW0vaTkxNV9nZW1fY29udGV4dC5o
Ig0KPg0KPisjaW5jbHVkZSAibW9ja19jb250ZXh0LmgiDQo+ICNpbmNsdWRlICJtb2NrX2RtYWJ1
Zi5oIg0KPisjaW5jbHVkZSAiaWd0X2dlbV91dGlscy5oIg0KPisjaW5jbHVkZSAic2VsZnRlc3Rz
L21vY2tfZHJtLmgiDQo+ICNpbmNsdWRlICJzZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmgiDQo+
DQo+IHN0YXRpYyBpbnQgaWd0X2RtYWJ1Zl9leHBvcnQodm9pZCAqYXJnKQ0KPkBAIC0xNDAsNiAr
MTQ0LDc1IEBAIHN0YXRpYyBpbnQNCj5pZ3RfZG1hYnVmX2ltcG9ydF9zYW1lX2RyaXZlcl9sbWVt
KHZvaWQgKmFyZykNCj4gCXJldHVybiBlcnI7DQo+IH0NCj4NCj4rc3RhdGljIGludCB2ZXJpZnlf
YWNjZXNzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPisJCQkgc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm5hdGl2ZV9vYmosDQo+KwkJCSBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqaW1wb3J0X29iaikNCj4rew0KPisJc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXNfaXRlciBp
dDsNCj4rCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHg7DQo+KwlzdHJ1Y3QgaW50ZWxfY29u
dGV4dCAqY2U7DQo+KwlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsNCj4rCXN0cnVjdCBmaWxlICpmaWxl
Ow0KPisJdTMyICp2YWRkcjsNCj4rCWludCBlcnIgPSAwLCBpOw0KPisNCj4rCWZpbGUgPSBtb2Nr
X2ZpbGUoaTkxNSk7DQo+KwlpZiAoSVNfRVJSKGZpbGUpKQ0KPisJCXJldHVybiBQVFJfRVJSKGZp
bGUpOw0KPisNCj4rCWN0eCA9IGxpdmVfY29udGV4dChpOTE1LCBmaWxlKTsNCj4rCWlmIChJU19F
UlIoY3R4KSkgew0KPisJCWVyciA9IFBUUl9FUlIoY3R4KTsNCj4rCQlnb3RvIG91dF9maWxlOw0K
PisJfQ0KPisNCj4rCWZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsIGk5MTVfZ2VtX2NvbnRleHRfbG9j
a19lbmdpbmVzKGN0eCksIGl0KSB7DQo+KwkJaWYgKGludGVsX2VuZ2luZV9jYW5fc3RvcmVfZHdv
cmQoY2UtPmVuZ2luZSkpDQo+KwkJCWJyZWFrOw0KPisJfQ0KPisJaTkxNV9nZW1fY29udGV4dF91
bmxvY2tfZW5naW5lcyhjdHgpOw0KPisJaWYgKCFjZSkNCj4rCQlnb3RvIG91dF9maWxlOw0KPisN
Cj4rCXZtYSA9IGk5MTVfdm1hX2luc3RhbmNlKGltcG9ydF9vYmosIGNlLT52bSwgTlVMTCk7DQo+
KwlpZiAoSVNfRVJSKHZtYSkpIHsNCj4rCQllcnIgPSBQVFJfRVJSKHZtYSk7DQo+KwkJZ290byBv
dXRfZmlsZTsNCj4rCX0NCj4rDQo+KwllcnIgPSBpOTE1X3ZtYV9waW4odm1hLCAwLCAwLCBQSU5f
VVNFUik7DQo+KwlpZiAoZXJyKQ0KPisJCWdvdG8gb3V0X2ZpbGU7DQo+Kw0KPisJZXJyID0gaWd0
X2dwdV9maWxsX2R3KGNlLCB2bWEsIDAsDQo+KwkJCSAgICAgIHZtYS0+c2l6ZSA+PiBQQUdFX1NI
SUZULCAweGRlYWRiZWFmKTsNCj4rCWk5MTVfdm1hX3VucGluKHZtYSk7DQo+KwlpZiAoZXJyKQ0K
PisJCWdvdG8gb3V0X2ZpbGU7DQo+Kw0KPisJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3dhaXQoaW1w
b3J0X29iaiwgMCwNCj5NQVhfU0NIRURVTEVfVElNRU9VVCk7DQo+KwlpZiAoZXJyKQ0KPisJCWdv
dG8gb3V0X2ZpbGU7DQo+Kw0KPisJdmFkZHIgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcF91bmxv
Y2tlZChuYXRpdmVfb2JqLA0KPkk5MTVfTUFQX1dCKTsNCj4rCWlmIChJU19FUlIodmFkZHIpKSB7
DQo+KwkJZXJyID0gUFRSX0VSUih2YWRkcik7DQo+KwkJZ290byBvdXRfZmlsZTsNCj4rCX0NCj4r
DQo+Kwlmb3IgKGkgPSAwOyBpIDwgbmF0aXZlX29iai0+YmFzZS5zaXplIC8gc2l6ZW9mKHUzMik7
IGkgKz0gUEFHRV9TSVpFIC8NCj5zaXplb2YodTMyKSkgew0KPisJCWlmICh2YWRkcltpXSAhPSAw
eGRlYWRiZWFmKSB7DQo+KwkJCXByX2VycigiRGF0YSBtaXNtYXRjaCBbJWRdPSV1XG4iLCBpLCB2
YWRkcltpXSk7DQo+KwkJCWVyciA9IC1FSU5WQUw7DQo+KwkJCWdvdG8gb3V0X2ZpbGU7DQo+KwkJ
fQ0KDQpOb3Qgc3VyZSB3aGF0IHRpbWluZyBpc3N1ZXMgYXJlIHJlbGF0ZWQgdG8gdGhpcyB0ZXN0
LCBidXQgdGhpcyBsb29wIGNvdWxkIGhhdmUNCnNvbWUgaW1wYWN0ICh0YWtlcyBhIGxvbmcgdGlt
ZSwgYXNzdW1pbmcgdGhlIG9iamVjdCBpcyBMTUVNKS4NCg0KV291bGQgY2hlY2tpbmcgdGhlIGJl
Z2lubmluZywgbWlkZGxlIGFuZCBlbmQgb2YgZWFjaCBwYWdlIGJlIGFueSBsZXNzDQpiZW5lZmlj
aWFsIHRoYW4gdGhlIGN1cnJlbnQgY2hlY2s/DQoNCk5vdCBhIHN1Z2dlc3RlZCBjaGFuZ2UsIGJ1
dCBqdXN0IGEgdGhvdWdodCB0byBwb25kZXIgaWYgdGhlIHRpbWluZyBiZWNvbWVzDQphbiBpc3N1
ZS4uLg0KDQpUaGlzIHRlc3QgbG9va3MgcmVhc29uYWJsZSB0byBtZS4NCg0KUmV2aWV3ZWQtYnk6
IE1pY2hhZWwgSi4gUnVobCA8bWljaGFlbC5qLnJ1aGxAaW50ZWwuY29tPg0KDQpNDQoNCj4rCX0N
Cj4rDQo+K291dF9maWxlOg0KPisJZnB1dChmaWxlKTsNCj4rCXJldHVybiBlcnI7DQo+K30NCj4r
DQo+IHN0YXRpYyBpbnQgaWd0X2RtYWJ1Zl9pbXBvcnRfc2FtZV9kcml2ZXIoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsDQo+IAkJCQkJIHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uDQo+
KipyZWdpb25zLA0KPiAJCQkJCSB1bnNpZ25lZCBpbnQgbnVtX3JlZ2lvbnMpDQo+QEAgLTE1NCw3
ICsyMjcsNyBAQCBzdGF0aWMgaW50IGlndF9kbWFidWZfaW1wb3J0X3NhbWVfZHJpdmVyKHN0cnVj
dA0KPmRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+DQo+IAlmb3JjZV9kaWZmZXJlbnRfZGV2aWNl
cyA9IHRydWU7DQo+DQo+LQlvYmogPSBfX2k5MTVfZ2VtX29iamVjdF9jcmVhdGVfdXNlcihpOTE1
LCBQQUdFX1NJWkUsDQo+KwlvYmogPSBfX2k5MTVfZ2VtX29iamVjdF9jcmVhdGVfdXNlcihpOTE1
LCBTWl84TSwNCj4gCQkJCQkgICAgcmVnaW9ucywgbnVtX3JlZ2lvbnMpOw0KPiAJaWYgKElTX0VS
UihvYmopKSB7DQo+IAkJcHJfZXJyKCJfX2k5MTVfZ2VtX29iamVjdF9jcmVhdGVfdXNlciBmYWls
ZWQgd2l0aA0KPmVycj0lbGRcbiIsDQo+QEAgLTIwNiw2ICsyNzksMTAgQEAgc3RhdGljIGludCBp
Z3RfZG1hYnVmX2ltcG9ydF9zYW1lX2RyaXZlcihzdHJ1Y3QNCj5kcm1faTkxNV9wcml2YXRlICpp
OTE1LA0KPg0KPiAJaTkxNV9nZW1fb2JqZWN0X3VubG9jayhpbXBvcnRfb2JqKTsNCj4NCj4rCWVy
ciA9IHZlcmlmeV9hY2Nlc3MoaTkxNSwgb2JqLCBpbXBvcnRfb2JqKTsNCj4rCWlmIChlcnIpDQo+
KwkJZ290byBvdXRfaW1wb3J0Ow0KPisNCj4gCS8qIE5vdyB0cnkgYSBmYWtlIGFuIGltcG9ydGVy
ICovDQo+IAlpbXBvcnRfYXR0YWNoID0gZG1hX2J1Zl9hdHRhY2goZG1hYnVmLCBvYmotPmJhc2Uu
ZGV2LT5kZXYpOw0KPiAJaWYgKElTX0VSUihpbXBvcnRfYXR0YWNoKSkgew0KPi0tDQo+Mi4zNy4z
DQoNCg==
