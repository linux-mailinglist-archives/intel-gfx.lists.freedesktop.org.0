Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A569478816A
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 10:02:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EA2F10E62B;
	Fri, 25 Aug 2023 08:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8ED010E628
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 08:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692950564; x=1724486564;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=s+eC335eJA3JmeObNAy2QUIGCdCocwFgMbpWblD06As=;
 b=lkkJy+BiY8frFdHlz4wXWqwUvvsg0wxbeXGfuOj1XWQNObL3Tnt5vYin
 6qZwnOu09d2UE3sVDGJemfuSW2FzY9zT5eyh1c//wWxaEp+87e16lUBI/
 wQZOKA3b9rElLkzy/zySTVFKg/X8LmdAVp7rC5kVs18ADhK0EgI8bcwUl
 /kP2+Jenx9FPCVkNPM8lT/Xag4ywnRAjDkAZD0INCW7cD4r4ZsRmkYR1M
 lfj3vAW6Q/FFGb5oTgJJF4ckRAtilTDVpPGSHYwn9Xchud4uLClWMCgnH
 d2ANbz3DWbr6yDY6c5kGlmGQtolXBOxIDjgjkG85MhJQUawUPy9KeJvpP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="378444935"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="378444935"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 01:02:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="860997402"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="860997402"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 25 Aug 2023 01:02:43 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 01:02:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 01:02:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 01:02:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 01:02:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OcvAvaCWmYKB125rrnKKAjxwBcpbf7eIJqdet6c8vzS/OpD+abjx4U5aes+jT2uIcsVIeDuueSaLhJgYmzi8adNWUAJOVpZVRiM13L5OEEUumNSd0GtUjVssgxg1wn5tLue1MeQ8854c7mK1XZ21ntrbCIqm9Xvn0EVad2nO4J5Tjs1w2RzOi10t63mCGcY7TxbgbNmzeYcGridjajkQc62GsG+7Vt7QPhwgcFQBh2bS+10PzZ+Afp71uyw6phAi2qk0StmppryM/FgmAQa61+O9s1Pg+/E+8kveEyitNyDXhDb5I2hEAwsLnH5bgCAYOlKReRdaPShclRDIY7TMig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s+eC335eJA3JmeObNAy2QUIGCdCocwFgMbpWblD06As=;
 b=UO8UwDVEKPVsHAKWm8G6Y+dkYMuaqbkGx3azowlXjqkblvU4jovaRNBFrYlFNY2eUqTYmraMxXxXZB3o9FpEUWA3Dr6C23EoVcKh5KmMYwvmcnoKyBmQ4jII7ZeUorJ+WnkF2kSmHmeOZOWrzNaLEWhsSyI/t2VtgfhZbR3yWRetvvxppImxUJEgnRqnwMDhexL94YUNqpB6l+ISL8ssd+mLiweQyINhF7nTXETlahjkY1LMJq+6U1YHXCfcfgYctKFZ+AgUwCI5Bc/FbYKxj1w4IT29VVJyg70eVjSjpxunwSDIM6zTaYT4r0JnO4Aorh2OUTbiu0rQUKsYyMUSIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by PH8PR11MB8038.namprd11.prod.outlook.com (2603:10b6:510:25e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Fri, 25 Aug
 2023 08:02:39 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::8913:a3bc:8fec:bcca]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::8913:a3bc:8fec:bcca%7]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 08:02:39 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v4 1/6] drm/panelreplay: dpcd register
 definition for panelreplay
Thread-Index: AQHZ1kJhZVaqL1ze+EGRsgikeso9gq/5T/IAgAFYMcA=
Date: Fri, 25 Aug 2023 08:02:39 +0000
Message-ID: <BL1PR11MB5979E1EA0090D3315A89697BF9E3A@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20230824040952.186407-1-animesh.manna@intel.com>
 <20230824040952.186407-2-animesh.manna@intel.com> <87cyzc4r1n.fsf@intel.com>
In-Reply-To: <87cyzc4r1n.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|PH8PR11MB8038:EE_
x-ms-office365-filtering-correlation-id: c701e0b1-ac0c-465f-ccdb-08dba541a6bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EpUNSCkm1mzEqtSN0Cl+0M5YX7OhdPGJ95FReM/9pWHhUiGPEQ5a24fxiydN6PrjgEvGMwD8MoLf+z7hjiAWbPcq4ky3UUdoc3V6Xi0Sk5y9hn+AQSmExGj8ZX9uX+LZbQOugRN1BORX4OAJGDYlND+85KHzwuzrVV6Zte309PPbX0i5BEj0WggczsweiieYgGMGx/fPxZ8j/cZV2QCJeFQQX9zZukuTjrO0W8Ykylg3UvHN/MqsufgQwc8Pi10UcOq9f0o0zuQFNwiwqfta1d3lNcYdh6tyPTpMGpiVn2+1R3HldWcHo4S76NPBg326vkuzDc1u4z1MA6Qe5g7TAmzrkrDj33I2qWD76FTSU7HjCIzjSDUF9OTnNzD9X1GIgEkEYQdMFpXDrtmmsQ3JvqNVpxfLYkhucEVM1tRD+PFquA/hNTDDIkipQjWGO2Hef17mAKLcAhAt+XSABG1BopBj0vAU9xUSEHJcFV/7HgADIqjaOiBOh3Jh73T/p6HjJTF2WZCPRiefDHFm7tHlC8/8+6nB7/ZtcT2nyftHTissK1U+UPYviYO7jVTLYgF3WVdRXzQkJC68Ick3WirH/inE6aQlF9tzFeYT7K26UjTMq9n9E87mjJO+5XgtAH8W
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(39860400002)(376002)(186009)(451199024)(1800799009)(6506007)(64756008)(83380400001)(26005)(53546011)(9686003)(66574015)(66946007)(41300700001)(66556008)(66446008)(66476007)(2906002)(316002)(52536014)(5660300002)(8936002)(8676002)(110136005)(71200400001)(7696005)(478600001)(55016003)(76116006)(82960400001)(86362001)(33656002)(122000001)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UHZzcXBibnp6S2d4KzRNa0Y5NytISVJLcXhvblM2NDlOOUsrN3VBUU92SUNT?=
 =?utf-8?B?WCs3ZHJSU0VoVVhTOGtHb2cxVWJsVTVadzkwSEJnSndUN1Q2d21RVjIrbjlT?=
 =?utf-8?B?aUZ6N3U1MTB4Tko1bWZCeWtqVm1kNW5EME5yVVFRTDk3eFFvM1hPaFZZWnZ2?=
 =?utf-8?B?UFZ3bTV4VUVub1YwTG11Sk12aytkeGoycmVPMHNjT1Y4Wll6eHdRRXFuM3VT?=
 =?utf-8?B?L21aMFVBNk10L2ZTcGc4b3dab0hMRkxqdWZMTWp2Rk5Ib3VleGFyZVVVSTZ3?=
 =?utf-8?B?RW8reWlaekJ1VENXU3JxdkZqU2J4c29tY3dCSXhXYnlrYXEwc2JvTFl4L1Zr?=
 =?utf-8?B?c2lwNE9YRXRXaGpOWC83bytNR05PbTlGTGdDMmR1ZDVFNzd5MjFrR0F6YmVC?=
 =?utf-8?B?cnE2WStoclhQUFl1bHVsaUxIUE9BMkwxMXljOFp0WTRZbTZ6S0wvK3k5cHQ4?=
 =?utf-8?B?MmFQV2V1aWVFbVU3Wk1hY0ttZXc4ckN6bVRXZmg1b3I4NmpkbVBodEZzS2Fo?=
 =?utf-8?B?bzFsVUF0RkJDT21NSERvenR1MXJCNUw5b09NWC9sVmVxY2thc1VFak90dnFl?=
 =?utf-8?B?SlY5RGYyQ1BYVDRGN1ZyZ3V3SnNWaUg3RHE0Ym45cjJiWU1GcXkwa1QxMUZo?=
 =?utf-8?B?OG82RDdaMEltOVhiei9keDNYdmZhUjBOMnI4ODFueU1iQ1U4S3BCMXc1NmpZ?=
 =?utf-8?B?a1lpQkJvOU0rOFBEamlkd2pQVkRRRjhwZkJmUHlmTTBCT094NGdxRHJJMEl6?=
 =?utf-8?B?THhDc2g4V0hOZmQ0eXdtTXIwdy9hYUkwaDFWcXVpdjZFL1FqUVBCNTJJVHN0?=
 =?utf-8?B?RGVPT3dUNEhrTzcxczhpN3Y2VzNUeXNUTEZkWjR4TTNFaC8weitFZEZiOU9F?=
 =?utf-8?B?U0p1RDcyK3FsUEVTdzhka1p6Z1Q3d0lzZXBsSlMzZmY5MTNpV25JQnBMMkNV?=
 =?utf-8?B?L3UyZTRiV1ZsV3lNNFI0NVNQY2Z6aDYrSms2eGxsZ0RmSWRTVXI3VUErV3Bs?=
 =?utf-8?B?ZDdVaVdzbjQ5WFYzSlUycjBTbGRWU0d3M1FPSmVsZjJ4Y0k0RGp6VlRqUDh0?=
 =?utf-8?B?R3lqNEZUMUkxZzFkaVQzQ0FnR0h6dVdad2JSYW5PV0U4WnN0WW1uS05YUUlJ?=
 =?utf-8?B?cHYrSGFIL0o4SWNldFA2UnNuNmVHRW5ITkRxV2NNajJ2bXBPYTA2T3RneXlD?=
 =?utf-8?B?TG1sai8yWElCSXlkdTRIREFsUjR0TXJOcFJsbXdBNkMxcm1YWld4Y0RTN0E0?=
 =?utf-8?B?UUNFcWFHczFNUC9ZMnNsUEVocEp0bWE0TlpvNTg5V0FSMGlRakw2YjJuT3ZM?=
 =?utf-8?B?UElwUXFnNzFiTXhBUDA3THhOMno2TU1lR1k0YkJvcXgxR3dKdms1UGhNTFk4?=
 =?utf-8?B?TW14SHlReGt1QTZHdWVmcmlJYTdIRlBxbVBKbDhxNDVKZEdsUXFJT0lDOGpw?=
 =?utf-8?B?Ky9BUkpFOGozbUVXamlHTFFNTEFmc2FSUnRMMk81cTZNVVhXYm1wbzVYY3Rz?=
 =?utf-8?B?WFVIM091WXpjaURLYloyeGNYWkZVUWFYY21FcmtHZUd1MlpEblJkeXNEeGk5?=
 =?utf-8?B?dTJrRVdUQXhPaGZCUnhORVo5Qkpkb2F2UFpJczlhd3JpcGYrVkxVMDBNQ0I4?=
 =?utf-8?B?WEhUQndLTnNyZkh3VjNyKzI0dEtuUzFzQWo3U1ZUdEwyd0JzYXJHNHphcEpO?=
 =?utf-8?B?NjZjRHZBdVJxa0doRGdtWml1YUw2S1pTbnBRQno3em5YVTIvdTg3alRvb1FN?=
 =?utf-8?B?NzgxNG8vYU1EcGwweXMzTGJZb2FyeDh3TTIwNjduUFhLcGtCc1daY2lWZ2hN?=
 =?utf-8?B?VGIwMVlmMmJRTzQySzRTTStIZ0lQcTNMT1ExZlU2Mm45L2ZYSEJKMys4K1BY?=
 =?utf-8?B?aUkrL3BGQmlFU0hjS2ZhRkRydkRlN2U3L0xURVlhTHFSdkpwYlBqL1BNUGxD?=
 =?utf-8?B?YXF6MTNCTDNYTlh3TVI3RDd6M2JkUWdjcVRWUHdPK3BzN28vWXFBU1hoblNm?=
 =?utf-8?B?elJjTEppTzMzSUNYaENxK0pnNEdTeHJVVkdLRDJGazVoYXlBNGtNRHI1amxW?=
 =?utf-8?B?VDk5R2JsYWw1QnlEWjFuZlJ5TVRxK0JqLysxVzdCZUhwQ2dYRm11MTdCZ1E4?=
 =?utf-8?Q?KcJKU3n+CqiKUnFclgvzbqurt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c701e0b1-ac0c-465f-ccdb-08dba541a6bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2023 08:02:39.2009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j/oHDMIpQeBZZvD51W3Bg2UDab1IRRRZqGMdgiOpNjdmqhXHpwt+t73vm3ZoonmEJeyVSANnXh3dPUNCQ0xfJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8038
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/6] drm/panelreplay: dpcd register
 definition for panelreplay
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIEF1Z3VzdCAyNCwg
MjAyMyA0OjU5IFBNDQo+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTog
W0ludGVsLWdmeF0gW1BBVENIIHY0IDEvNl0gZHJtL3BhbmVscmVwbGF5OiBkcGNkIHJlZ2lzdGVy
DQo+IGRlZmluaXRpb24gZm9yIHBhbmVscmVwbGF5DQo+IA0KPiBPbiBUaHUsIDI0IEF1ZyAyMDIz
LCBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gRFBD
RCByZWdpc3RlciBkZWZpbml0aW9uIGFkZGVkIHRvIGNoZWNrIGFuZCBlbmFibGUgcGFuZWwgcmVw
bGF5DQo+ID4gY2FwYWJpbGl0eSBvZiB0aGUgc2luay4NCj4gPg0KPiA+IENjOiBKb3VuaSBIw7Zn
YW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbmlt
ZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgaW5jbHVk
ZS9kcm0vZGlzcGxheS9kcm1fZHAuaCB8IDExICsrKysrKysrKysrDQo+IA0KPiBJZiBpdCB0b3Vj
aGVzIGRybSwgbmVlZCB0byBDYzogZHJpLWRldmVsLiBUaGlzIGlzIG5vdCBuZXcuDQoNCk15IGJh
ZCwgbWlzc2VkIHNvbWVob3cuIFdpbGwgYWRkIG5leHQgdGltZS4NCg0KUmVnYXJkcywNCkFuaW1l
c2gNCiANCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kaXNwbGF5L2Ry
bV9kcC5oDQo+ID4gYi9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5oIGluZGV4IGU2OWNlY2U0
MDRiMy4uYTM4ZGM1ZjE3MzFlDQo+IDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvZHJtL2Rpc3Bs
YXkvZHJtX2RwLmgNCj4gPiArKysgYi9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5oDQo+ID4g
QEAgLTU0Myw2ICs1NDMsMTAgQEANCj4gPiAgLyogREZQIENhcGFiaWxpdHkgRXh0ZW5zaW9uICov
DQo+ID4gICNkZWZpbmUgRFBfREZQX0NBUEFCSUxJVFlfRVhURU5TSU9OX1NVUFBPUlQJMHgwYTMJ
LyogMi4wICovDQo+ID4NCj4gPiArI2RlZmluZSBEUF9QQU5FTF9SRVBMQVlfQ0FQICAgICAgICAg
ICAgICAgICAweDBiMA0KPiA+ICsjIGRlZmluZSBEUF9QQU5FTF9SRVBMQVlfU1VQUE9SVCAgICAg
ICAgICAgICgxIDw8IDApDQo+ID4gKyMgZGVmaW5lIERQX1BBTkVMX1JFUExBWV9TVV9TVVBQT1JU
ICAgICAgICAgKDEgPDwgMSkNCj4gPiArDQo+ID4gIC8qIExpbmsgQ29uZmlndXJhdGlvbiAqLw0K
PiA+ICAjZGVmaW5lCURQX0xJTktfQldfU0VUCQkgICAgICAgICAgICAweDEwMA0KPiA+ICAjIGRl
ZmluZSBEUF9MSU5LX1JBVEVfVEFCTEUJCSAgICAweDAwICAgIC8qIGVEUCAxLjQgKi8NCj4gPiBA
QCAtNzE2LDYgKzcyMCwxMyBAQA0KPiA+ICAjZGVmaW5lIERQX0JSQU5DSF9ERVZJQ0VfQ1RSTAkJ
ICAgIDB4MWExDQo+ID4gICMgZGVmaW5lIERQX0JSQU5DSF9ERVZJQ0VfSVJRX0hQRAkgICAgKDEg
PDwgMCkNCj4gPg0KPiA+ICsjZGVmaW5lIFBBTkVMX1JFUExBWV9DT05GSUcgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIDB4MWIwDQo+ID4gKyMgZGVmaW5lIERQX1BBTkVMX1JFUExBWV9FTkFC
TEUgICAgICAgICAgICAgICAgICAgICAgICAgKDEgPDwgMCkNCj4gPiArIyBkZWZpbmUgRFBfUEFO
RUxfUkVQTEFZX1VOUkVDT1ZFUkFCTEVfRVJST1IgICAgICAgICAgICAoMSA8PCAzKQ0KPiA+ICsj
IGRlZmluZSBEUF9QQU5FTF9SRVBMQVlfUkZCX1NUT1JBR0VfRVJST1IgICAgICAgICAgICAgICgx
IDw8IDQpDQo+ID4gKyMgZGVmaW5lIERQX1BBTkVMX1JFUExBWV9BQ1RJVkVfRlJBTUVfQ1JDX0VS
Uk9SICAgICAgICAgKDEgPDwgNSkNCj4gPiArIyBkZWZpbmUgRFBfUEFORUxfUkVQTEFZX1NVX0VO
QUJMRSAgICAgICAgICAgICAgICAgICAgICAoMSA8PCA2KQ0KPiA+ICsNCj4gPiAgI2RlZmluZSBE
UF9QQVlMT0FEX0FMTE9DQVRFX1NFVAkJICAgIDB4MWMwDQo+ID4gICNkZWZpbmUgRFBfUEFZTE9B
RF9BTExPQ0FURV9TVEFSVF9USU1FX1NMT1QgMHgxYzEgICNkZWZpbmUNCj4gPiBEUF9QQVlMT0FE
X0FMTE9DQVRFX1RJTUVfU0xPVF9DT1VOVCAweDFjMg0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEs
IEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcg0K
