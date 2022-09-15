Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEB75B9FC7
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 18:41:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA3F910EB65;
	Thu, 15 Sep 2022 16:41:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E40F10E21C
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 16:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663260095; x=1694796095;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DQcQI+mMdsrNVXA4pd4+HXelEut8cG965RpaGalsitI=;
 b=dMTDqTIxvDWoSEB4HEZNc9nOY2qdZTwSBA46uHkhfbXHG3ds5HvIN4DF
 FAO9PzkXYBm5/08qNFX/TQWjnvprtqj99cy6AdfZXoOlHDQQb9XXAFY7/
 WI5KXN1qsRK+xIiw0vqYZqas73opcEcnYhMSvACqSuoDUK3boiTB0tmp0
 avupYO94lRREuoBkMU/103ctjInz/i98iPYVPQpNA6pv6+oniFK24GZD2
 YqnKNNfxRaRgyYCcPs9hmkpOKj3UWClRfISZYLDDpOvJxV0Mgd3iNIOgG
 jiXlzSGLlH6fpZnuazhw2QWJGwfricvH80Vi+GwZBhvv0/zLvpPSJ46Lv A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="360506096"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="360506096"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 09:41:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="946031504"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 15 Sep 2022 09:41:34 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 09:41:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 09:41:33 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 09:41:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L4kdaFo92/LYIpSmClDSYSe9p8msOpn+u7r7uwOaIgA4b7N8aOab9gz4xqpy7IxpAFfY9k3ULC6wonQTkNNHuT6nL815n+l5mra8KOFKA2xhukqCT1TDejMYakD4yUiCp9Lhn7DiHZ6+/dkvc2aDBMLTBr5AwaPTAUWg6pXHMWsXMQA5dUqPCTBQCG2oyqNAG5B2zJx4Oudod+URtipqaIkyubm0TDA/128K0WplhwMIA2IVD6H14Hvj85LDYfLDNF9mnTr7Ao7wOY4cqmSpSa8qCKvFBlTFBPK513MGE3HyfxJQsgVDIW+zPPBAWlmqZqJmCfpfkABgkqFLgF+QXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DQcQI+mMdsrNVXA4pd4+HXelEut8cG965RpaGalsitI=;
 b=B4gBsprFtTVQLLktE8hRB5TjdK4zCPnvnrgpz7vE/pS105ZRdLX/8yKPoKANABMRMgppGHzGnWGMYf/SjRMhzORZvJVvlhAmO1qqSQfsVrE0qfI/GbN+g15Cl2NF30E/MabhS8VTBIf9Q+oD6BNGVIm5Y3/ca3lID7uUs9gzu7GoQqzhi2j/yzO/3aSF97cqfVqNQztQchtUvEffKx/pnVTNGLdI/WwUu0mDxIQcje/pIbQ7dNfA740sFDa9IFL9/d1asXBYWOyKed3kXGTlU9UjfCR7MQ0EPcuLhiDeI2I9MWUHw00uZyb9BuqF3/Fk6AMrYGiYArtzREY/pDMkAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SA1PR11MB5777.namprd11.prod.outlook.com (2603:10b6:806:23d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.15; Thu, 15 Sep
 2022 16:41:25 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6d1c:5833:c6ab:f244]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6d1c:5833:c6ab:f244%5]) with mapi id 15.20.5632.015; Thu, 15 Sep 2022
 16:41:25 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 1/1] drm/i915/dgfx: Handling of pin_map against
 rpm
Thread-Index: AQHYyO6f51LjJpIIM0KXpzFEjjEQI63gjjuAgAAbV2A=
Date: Thu, 15 Sep 2022 16:41:25 +0000
Message-ID: <CY5PR11MB621102F1A244A1B2F53D599E95499@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220915103311.5634-1-anshuman.gupta@intel.com>
 <20220915103311.5634-2-anshuman.gupta@intel.com>
 <ba980ae0-ea5a-5bdc-e87b-e56191aedc6f@linux.intel.com>
In-Reply-To: <ba980ae0-ea5a-5bdc-e87b-e56191aedc6f@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SA1PR11MB5777:EE_
x-ms-office365-filtering-correlation-id: 0e8514bc-5b70-402d-b770-08da97392167
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fg7w9pby5zrJl/KwAH7HYBdMcSZlAzTFeUsakRsf+/7Xul354malsyYfC9mOUsFyQqnIMIXuCAwxR95tjprQS3yrg61xnIzInxeuF3ytJ6ZOFxW+dZDay/jSY5s/iTcVvdHSuQ8BrRFPV+jofhSBvpV22GnwpPBZv+YD1RJv8vbH7RzRMjSJg9VlsyjtMg2gMIybWlf8PI6YHwgL34MTmTGCxNbbHPV50yTnCvVMPfYFftf5xMht5e36PViH0iO91snS/ceSpzQ5c0l9gBG2GQlgqBlmJWOGYQGtxNFNmuTG14DprsosMGMl+5aJy0/onWh1NqgpOhALo2pQPIeUCHCvFZNdzBsGcR3WsWhNKGHLjUUMTAJHaGwW+ptjBnKKBj6kUi501JpZ0ykRmMHKhMTwrINYASszIVG16tT2l3YB6GB5Jh/YXuD4wy7HQJt1u5hwpS+4q8lMUqbLDmOZcrS6akTeStrxp3txe5CF1cQu4T/h4cKM0gdnFWQD8n+FqxwrHf6SiU1V9Y9azEm0ns32CAou0Tk3UrYSPaoRIGVHVIKFw8Yp+es1HVPYWzuXIfypISoXhiicDHhGKc9e9Tg6ZUOnYG0dfYoK/wxU7HMThnljJcjGvjaNSmzUVWVQGSnABBTtAshuRoaa0rA6AReTaTRp40sPBflTiGFTJSO1XETSfI36MrKV6CXGrPkIA7hI7VMB9hiVIQbO4N//nEvM/eVCljmb6+Ptse3p/p1zs4/2UWLdQxOEZ5ei08+klXF2Xkpe/HJh1B3Aeo6XeQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(396003)(39860400002)(346002)(366004)(451199015)(86362001)(55016003)(71200400001)(83380400001)(186003)(38070700005)(26005)(64756008)(66556008)(66476007)(53546011)(4326008)(66946007)(66446008)(38100700002)(76116006)(55236004)(7696005)(33656002)(122000001)(8936002)(6506007)(9686003)(8676002)(5660300002)(82960400001)(478600001)(52536014)(110136005)(54906003)(316002)(2906002)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cE00K2NuektaSmIxakxCOE5BcnN1S2NYNjRHN0c2Q2xCVkJhRWxvUi9sWEQ3?=
 =?utf-8?B?eTJTQTd2eWIwOWRIeE1BRU1ra2l2Q2hRellWekI0eFV6N2U3NEhBWFpScVcy?=
 =?utf-8?B?SWwzTElXZTZmbUpQdGlpdXUwOEhqdzdiSGVSSEpCRDF2K0FlMTFFTHM2R3I1?=
 =?utf-8?B?S29FWnVsdEZyQ2s5NDVqYVJaTUg0K1lPYmlwSk5scWRHSk5nTy85Q2dISi9a?=
 =?utf-8?B?VFdFbmxEOEFqVnRNY2tDQUVwYmExOElXbnpzcytEc2k3UlJiMVFLR3RFUHVV?=
 =?utf-8?B?VWhFa0ZLV0pHM1UwejhndnpKSkVYbklGaGx0SzZNekpHaE5Fb2E2WlRjTkw0?=
 =?utf-8?B?cSs2SjBacHpwYUdCRUFsK1hYOXlEZUZscHp3Rm8wMEtMZi9BSi9wL2lkQVBw?=
 =?utf-8?B?aGc3d2hGSUFKY2orVHVNQ0ZwaFdoazZFbFRZdG1KbzNLWTBUb3U2RnljdWxQ?=
 =?utf-8?B?NGpKM3Q0ZjdmVkhZSUtBV0hCNGpESFJYMWVtZm5rRU1oTjFwZjJVTjVqYjIz?=
 =?utf-8?B?QzM3dXJlTEpPTWg3c0pId04xR1JTYkQ3UXl5TzhCR01IeEJDWXBSUkJQdldy?=
 =?utf-8?B?UEF2cDZXc1RoT1JmYnphQlphS1M5OUtYMkNneXhMbTB2STZIN0ROckZEVUR3?=
 =?utf-8?B?Tzl5MEdNNmEwK1VQMUIyc3NEYzExZERIOEhHaGJ4RElTTEU3cjc3K3BNVGVp?=
 =?utf-8?B?TC81MW1iOU5EQytRSWxxSUFtanpLU3ZKbGpSa2dwMDVMZi9RQTZkeUhQaTFs?=
 =?utf-8?B?N25GL3JPeERlTXFwOXNzOHVrN3JNVGZKSUtMbVFqZE1KQmdQU1hkVi9PRVYr?=
 =?utf-8?B?TVFOaDJzUk1LVzJ0YWFYRktUUkY5RlRNaWdROEQvRFdwb1R3bzZhZzNiVVZB?=
 =?utf-8?B?N0JsdDk0Q0pLWDIzSzdTNjdkN2I1YUFIMUtWN2tVMk1ock94SGlRa081M3p2?=
 =?utf-8?B?RGxtWE5wbnhnWSsxTWJvdlVkanVsb3FlTXcwRDJiYy8zYTFuU2luMVg3a2py?=
 =?utf-8?B?VUVhS2NGNEgxWlJTYkRmMVlDUmRaaGNyZEpOUGpOd2E0NTlwME80bm5FZjFr?=
 =?utf-8?B?VFlJOEVPZ0o5ZUZjMWNWUDFWVzdpRUJHZHRFSVhneE8wWnJna3NYN2xsNVR6?=
 =?utf-8?B?amFSVHlCR003dEhCUzN0ZWpNcFhHaE5uUkl6Sjg3WWZRL0QzR0FVb3RHZG1l?=
 =?utf-8?B?R0ZwL1ZEaFg0RjdFa1Q5VzdrclhNUXhVdmY4WW4rWVZUWW12UlRLL0hZREdu?=
 =?utf-8?B?VUtreGdzak8rUU9mMmVHdmpxV1lJTDI0L3R1aTRpYmpmSHo3c1NKOHFVeE0w?=
 =?utf-8?B?dWVoV2Y4M1I1RGdOLzZvc2VLOXJQb09lS0czNCtxaEl2Sk4zNzlEQXFHMVNn?=
 =?utf-8?B?TFdBTUVNTFNkcm1COUN3dXVxdk16ejBQYmFQWU9rdXpvYUNMME92VERhNEc5?=
 =?utf-8?B?Zmd3SFc0ZVFNMjVIMzN1TEVUbEpFc1dwTk00OGd2ZmZhSHRsa0NGcFZ2SW9M?=
 =?utf-8?B?L2RtT0g2TTdiYkM2TEc1eWQvMW0zOU9nYUtMa1JoSVA5ZW80Zk5GTTJiZlpY?=
 =?utf-8?B?ODdhVzVMTjVrQUp1bkNzRkpZWXROc1cxZFRrSDYyWk44ME16M2tlTWFaREt1?=
 =?utf-8?B?QlhuNXdlQ0F4NVFWb1BjVTVnQ3JTMWVYdEVCcUNDcVdad0podmRqMDhIakg3?=
 =?utf-8?B?Y0Z6WEhXcVhJV2w1MXNvaDdOL0hkVmNKZUVjL3F2T1luRnhGWE9kV1NKeXZX?=
 =?utf-8?B?VVlpS3VZLzVqT1FvYkt4VHVMbkEzaVBrY0t0eGVydjdLdEUvelBoM2lITWJr?=
 =?utf-8?B?U0tXcllOZjUvQWdXOVRrTkl5N0tmNVYzSGJiT3VhQmJ2L0V0YU1lOWc5dGxs?=
 =?utf-8?B?WndOeHY3Vmg0Tmo0OW1SaTZUS2k2WkRlR3dLZTl0MUU5WFRJanZoV1lNclVU?=
 =?utf-8?B?ZGxVdWVOK2s0RHFqaUIxZVg1b3d1UmVxVVVJVU92WHVNVlQ1SzBicWJDbHdq?=
 =?utf-8?B?T3dQV0Q3U3lySGhZMFZUbWhpc1FHQ1ZQaWhYamd4QnJCSks0UENsV2YrZjFT?=
 =?utf-8?B?b3FuL0hKczA1WGhFejVjQ3JxZlp4elF1K3A1R2UxZGRMalkvcUZqVXVpaDIz?=
 =?utf-8?Q?YzE12HUyyhibYPuKObp8DeeIg?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e8514bc-5b70-402d-b770-08da97392167
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2022 16:41:25.5253 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ThC0nU8HEi3fXxWboD9N5iiwWZIpNImTexitoL2uV/ZJALD4g7r3bCcg7OnLj1ulaCyt+C/bVDskvzJ77rNDnBhawSfwE7CJOnqcbOQOVVo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5777
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/1] drm/i915/dgfx: Handling of pin_map
 against rpm
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIFNlcHRl
bWJlciAxNSwgMjAyMiA4OjAzIFBNDQo+IFRvOiBHdXB0YSwgQW5zaHVtYW4gPGFuc2h1bWFuLmd1
cHRhQGludGVsLmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBBdWxkLCBNYXR0aGV3IDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPjsgVml2aSwgUm9kcmlnbw0K
PiA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhdIFtS
RkMgMS8xXSBkcm0vaTkxNS9kZ2Z4OiBIYW5kbGluZyBvZiBwaW5fbWFwIGFnYWluc3QNCj4gcnBt
DQo+IA0KPiANCj4gT24gMTUvMDkvMjAyMiAxMTozMywgQW5zaHVtYW4gR3VwdGEgd3JvdGU6DQo+
ID4gSWYgaTkxNSBnZW0gb2JqIGxpZXMgaW4gbG1lbSwgdGhlbiBpOTE1X2dlbV9vYmplY3RfcGlu
X21hcCBuZWVkIHRvDQo+ID4gZ3JhYiBhIHJwbSB3YWtlcmVmIHRvIG1ha2Ugc3VyZSBnZnggUENJ
ZSBlbmRwb2ludCBmdW5jdGlvbiBzdGF5cyBpbiBEMA0KPiA+IHN0YXRlIGR1cmluZyBhbnkgYWNj
ZXNzIHRvIG1hcHBpbmcgcmV0dXJuZWQgYnkNCj4gPiBpOTE1X2dlbV9vYmplY3RfcGluX21hcCgp
Lg0KPiA+IFN1YnNlcXVlbnRseSBpOTE1X2dlbV9vYmplY3RfdXBpbl9tYXAgd2lsbCBwdXQgdGhl
IHdha3JlZiBhcyB3ZWxsLg0KPiA+DQo+ID4gQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxk
QGludGVsLmNvbT4NCj4gPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
Pg0KPiA+IENjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGxpbnV4LmludGVsLmNvbT4NCj4gPiBT
aWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPg0K
PiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5j
ICAgICAgIHwgIDIgKysNCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9v
YmplY3QuaCAgICAgICB8ICA1ICsrKysrDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0X3R5cGVzLmggfCAxNCArKysrKysrKysrKysrKw0KPiA+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMgICAgICAgIHwgIDggKysrKysrKysN
Cj4gPiAgIDQgZmlsZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYw0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jDQo+ID4gaW5kZXggODU0
ODJhMDRkMTU4Li5mMjkxZjk5MDgzOGQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jDQo+ID4gQEAgLTk1LDYgKzk1LDcgQEAgdm9pZCBpOTE1
X2dlbV9vYmplY3RfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdA0KPiAqb2JqLA0KPiA+
ICAgCW11dGV4X2luaXQoJm9iai0+bW0uZ2V0X3BhZ2UubG9jayk7DQo+ID4gICAJSU5JVF9SQURJ
WF9UUkVFKCZvYmotPm1tLmdldF9kbWFfcGFnZS5yYWRpeCwgR0ZQX0tFUk5FTCB8DQo+IF9fR0ZQ
X05PV0FSTik7DQo+ID4gICAJbXV0ZXhfaW5pdCgmb2JqLT5tbS5nZXRfZG1hX3BhZ2UubG9jayk7
DQo+ID4gKwltdXRleF9pbml0KCZvYmotPndha2VyZWZfbG9jayk7DQo+ID4gICB9DQo+ID4NCj4g
PiAgIC8qKg0KPiA+IEBAIC0xMTAsNiArMTExLDcgQEAgdm9pZCBfX2k5MTVfZ2VtX29iamVjdF9m
aW5pKHN0cnVjdA0KPiBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopDQo+ID4gICB7DQo+ID4gICAJ
bXV0ZXhfZGVzdHJveSgmb2JqLT5tbS5nZXRfcGFnZS5sb2NrKTsNCj4gPiAgIAltdXRleF9kZXN0
cm95KCZvYmotPm1tLmdldF9kbWFfcGFnZS5sb2NrKTsNCj4gPiArCW11dGV4X2Rlc3Ryb3koJm9i
ai0+d2FrZXJlZl9sb2NrKTsNCj4gPiAgIAlkbWFfcmVzdl9maW5pKCZvYmotPmJhc2UuX3Jlc3Yp
Ow0KPiA+ICAgfQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9vYmplY3QuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX29iamVjdC5oDQo+ID4gaW5kZXggNzMxN2Q0MTAyOTU1Li5iMzFhYzZlNGMyNzIgMTAwNjQ0
DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oDQo+ID4g
QEAgLTUwMSw2ICs1MDEsMTEgQEAgc3RhdGljIGlubGluZSB2b2lkIGk5MTVfZ2VtX29iamVjdF9m
bHVzaF9tYXAoc3RydWN0DQo+IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikNCj4gPiAgICAqLw0K
PiA+ICAgc3RhdGljIGlubGluZSB2b2lkIGk5MTVfZ2VtX29iamVjdF91bnBpbl9tYXAoc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QNCj4gKm9iaikNCj4gPiAgIHsNCj4gPiArCW11dGV4dF9sb2Nr
KG9iai0+d2FrZXJlZl9sb2NrKTsNCj4gPiArCWlmICghLS1vYmotPndha2VyZWZfY291bnQpDQo+
IA0KPiBCdWcgaGVyZSAtIGluY3JlbWVudGVkIG9ubHkgZm9yIGk5MTVfZ2VtX29iamVjdF9pc19s
bWVtLCBkZWNyZW1lbnRlZCBmb3INCj4gYWxsLg0KVGhhbmtzIGZvciBwb2ludGluZyBpdCBvdXQs
IGhvdyBhYm91dCBsaWtlIGJlbG93IGNvbmQ/DQppZiAob2JqLT53YWtlcmVmX2NvdW50KQ0Kew0K
CS8qIHdha2VyZV9jb3VudCB3aWxsIG5vbiB6ZXJvIG9ubHkgaW4gY2FzZSBvZiBvYmplY3Qgd2Fz
IGluIGxtZW0gKi8NCglvYmotPndha2VyZWZfY291bnQtLQ0KCWlmICghb2JqLT53YWtlcmVmX2Nv
dW50KQ0KCQlpbnRlbF9ydW50aW1lX3BtX3B1dCgmdG9faTkxNShvYmotPmJhc2UuZGV2KS0+cnVu
dGltZV9wbSwgIG9iai0+d2FrZXJlZik7DQp9DQo+IA0KPiBhKQ0KPiBVc2UgaTkxNV9nZW1fb2Jq
ZWN0X2lzX2xtZW0gaGVyZT8gSXMgdGhlIGFuc3dlciBpdCBnaXZlcyBzdGFibGUgYWNyb3NzIG9i
amVjdA0KPiBsaWZldGltZSBjb25zaWRlcmluZyBwbGFjZW1lbnRzIGFuZCBtaWdyYXRpb24/DQpB
RkFJVSBBZnRlciBwaW5fbWFwKCkgdGhlIGNhbGxlciBtYXkgZHJvcCB0aGUgb2JqZWN0IGxvY2ss
IHNvIGV2aWN0aW9uIGNhbiB0YWtlIHBsYWNlLg0KQnV0IGFzIHdlIGhhZCBhbHJlYWR5IHRha2Vu
IHRoZSB3YWtlcmVmIGZvciBvYmplY3QsIHdlIG5lZWQgdG8gcmVsZWFzZSBpdC4NCj4gDQo+IGIp
DQo+IFN0b3JlIHRoZSB3YWtlcmVmIGluIG9iamVjdCBhbmQgcmVsZWFzZSBpZiBwcmVzZW50Pw0K
SWYgdGhlcmUgYXJlIHR3byBwaW5fbWFwIGZvciB0aGUgdGhlIHNhbWUgb2JqZWN0LCB0aGVuIHVu
cGluX21hcCgpIHdpbGwgcmVsZWFzZSB0aGUgd2FrZXJlZiBhbmQgdGhlIG90aGVyIHBpbl9tYXAo
KSBpcyBub3QgcHJvdGVjdGVkLg0KSXQgaXMgbXkgdW5kZXJzdGFuZGluZywgY2FuIGl0IGhhcHBl
biA/IA0KVGhhbmtzLA0KQW5zaHVtYW4gR3VwdGEuDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gVHZy
dGtvDQo+IA0KPiA+ICsJCWludGVsX3J1bnRpbWVfcG1fcHV0KCZ0b19pOTE1KG9iai0+YmFzZS5k
ZXYpLT5ydW50aW1lX3BtLA0KPiBvYmotPndha2VyZWYpOw0KPiA+ICsJbXV0ZXh0X3VubG9jayhv
YmotPndha2VyZWZfbG9jayk7DQo+ID4gKw0KPiA+ICAgCWk5MTVfZ2VtX29iamVjdF91bnBpbl9w
YWdlcyhvYmopOw0KPiA+ICAgfQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oDQo+ID4gaW5kZXggOWY2YjE0ZWMxODlh
Li4zNGFmZjk1YTE5ODQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX29iamVjdF90eXBlcy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oDQo+ID4gQEAgLTY1Nyw2ICs2NTcsMjAgQEAgc3Ry
dWN0IGRybV9pOTE1X2dlbV9vYmplY3Qgew0KPiA+DQo+ID4gICAJCXZvaWQgKmd2dF9pbmZvOw0K
PiA+ICAgCX07DQo+ID4gKw0KPiA+ICsJLyoqDQo+ID4gKwkgKiB3YWtlcmVmIHRvIHByb3RlY3Qg
dGhlIGk5MTUgbG1lbSBpb21lbSBtYXBwaW5ncy4NCj4gPiArCSAqIFdlIGRvbid0IHBpbl9tYXAg
YW4gb2JqZWN0IHBhcnRpYWxseSB0aGF0IG1ha2VzIGVhc3kNCj4gPiArCSAqIHRvIHRyYWNrIHRo
ZSB3YWtlcmVmIGNvb2tpZSwgaWYgd2FrZXJlZiBpcyBhbHJlYWR5IGhlbGQNCj4gPiArCSAqIHRo
ZW4gd2UgZG9uJ3QgbmVlZCB0byBncmFiIGl0IGFnYWluIGZvciBvdGhlciBwaW5fbWFwLg0KPiA+
ICsJICogZmlyc3QgcGluX21hcCB3aWxsIGdyYWIgdGhlIHdha2VyZWYgYW5kIGxhc3QgdW5waW5f
bWFwDQo+ID4gKwkgKiB3aWxsIHB1dCB0aGUgd2FrZXJlZi4NCj4gPiArCSAqLw0KPiA+ICsJaW50
ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+ID4gKwl1bnNpZ25lZCBpbnQgd2FrZXJlZl9jb3VudDsN
Cj4gPiArDQo+ID4gKwkvKiogcHJvdGVjdHMgdGhlIHdha2VyZWZfY291bnQgd2FrZXJlZiBjb29r
aWUgYWdhaW5zdCBtdWx0aXBsZQ0KPiBwaW5fbWFwIGFuZCB1bnBpbl9tYXAgKi8NCj4gPiArCXN0
cnVjdCBtdXRleCB3YWtlcmVmX2xvY2s7DQo+ID4gICB9Ow0KPiA+DQo+ID4gICBzdGF0aWMgaW5s
aW5lIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICogZGlmZiAtLWdpdA0KPiA+IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jDQo+ID4gaW5kZXggNGRmNTBiMDQ5Y2VhLi5iNjM4
YjU0MTMyODAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3BhZ2VzLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
cGFnZXMuYw0KPiA+IEBAIC0zNzAsNiArMzcwLDE0IEBAIHZvaWQgKmk5MTVfZ2VtX29iamVjdF9w
aW5fbWFwKHN0cnVjdA0KPiA+IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwNCj4gPg0KPiA+ICAg
CWFzc2VydF9vYmplY3RfaGVsZChvYmopOw0KPiA+DQo+ID4gKwlpZiAoaTkxNV9nZW1fb2JqZWN0
X2lzX2xtZW0ob2JqKSkgew0KPiA+ICsJCW11dGV4X2xvY2soJm9iai0+d2FrZXJlZl9sb2NrKTsN
Cj4gPiArCQlpZiAoIW9iai0+d2FrZXJlZl9jb3VudCsrKQ0KPiA+ICsJCQlvYmotPndha2VyZWYg
PQ0KPiA+ICsJCQkJaW50ZWxfcnVudGltZV9wbV9nZXQoJnRvX2k5MTUob2JqLQ0KPiA+YmFzZS5k
ZXYpLT5ydW50aW1lX3BtKTsNCj4gPiArCQltdXRleF91bmxvY2soJm9iai0+d2FrZXJlZl9sb2Nr
KTsNCj4gPiArCX0NCj4gPiArDQo+ID4gICAJcGlubmVkID0gISh0eXBlICYgSTkxNV9NQVBfT1ZF
UlJJREUpOw0KPiA+ICAgCXR5cGUgJj0gfkk5MTVfTUFQX09WRVJSSURFOw0KPiA+DQo=
