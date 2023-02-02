Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC27D6881F3
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 16:26:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C158310E1E1;
	Thu,  2 Feb 2023 15:26:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8B3110E54F
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 15:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675351594; x=1706887594;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UiyPP9SdR/8qjryXwZquVAokepZkFYe3dz1VjdbSoXo=;
 b=Uvcvtc1pYoXQWT0IBLrOFSq5+Gg3M3CayI4kCso8QPXf8NDgcG7aTu8M
 XnwcSdRy1CInMFkGoPp3rnBzB26lPCAawNgfn/B2V9tXBK8IodaCUV2JK
 W3Der7D1CNyh/FhtmhvSrVDKgto8n1YaybTaxAKCT2xsbxAFyxedwwu/g
 IVnRd0BvihmRINriCymttqAAJ3pagqdq1MSKLIvb0jNJYxqO8au0e3gi2
 futA2FWOLzpgekWW0RuqREpB/AUhaTFL1et6qoBtj0VBqYh1l3b4mRvWx
 vrncHn32WPwmuAuTjr7C0hMq8TcjfEhjJGaUdhpfMwlKYSz9RLxG3Dt12 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="355814600"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="355814600"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 07:26:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="665322668"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="665322668"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 02 Feb 2023 07:26:33 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 07:26:33 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 07:26:32 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 07:26:32 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 07:26:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ArDzJfZbI9ht8ddk89AdGc0mnboRp1hwJNfoaLVCvCq52qx8IgS49xkqrL1TGU9doWuJrIykgAnXxByZ3FVOHgXXg7sw6S7d3q+SsHbrLtTGAcqT90EjzNYT5ISId3RjPDmFbG28K14euTnRjNN9sCr0YDOvOuOmfTF3mW7HbxS4ZRoyxFFG5KMnZx+1iWEt7DJWY7uvZA2yQwdI0z6cdt/rhSruvRI6Kc2v6MhFsw1w3wJH9LvrOyuA5EuYKO+/2VQxciWQlDecdhlm5uDk4uMmF9A1YzEvw6wf3LrTbcViYhR38N94GHwullKABU4PGhYkSOkJibktzJPPrKOypA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UiyPP9SdR/8qjryXwZquVAokepZkFYe3dz1VjdbSoXo=;
 b=TNOpi5KbR7xCLlHrVwz4Rzdc0U4BFISFuo5qkPJd3wDPm3Crb3imVV8FMiLVVYE3W5b4ULRAydz9BI+8C0Y7vOpozXwwnvFiFtWbt/pvSU4LJyLYyrPEW4E/2mFOLpn21t4GA6kZh9hU7EbHa3obncUBrGmWkuIl6eqZUTNL7UO3rWPXdoKyXLFkl6rYA8yKuftHF1mQHoQ8pn29FtuqHjJiMkiDHX8XXsBssfR+U/nZSmdGYKCtcZK32fP5gksAc+ExcyGqmfYgciWCEguk86bTASSEpirSuHiHTCWynwc0JNGf0B8al5EX3zTJGINoQvIapkR5/nmcFkIzgMKRmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH0PR11MB7564.namprd11.prod.outlook.com (2603:10b6:510:288::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Thu, 2 Feb
 2023 15:26:31 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be%9]) with mapi id 15.20.6064.027; Thu, 2 Feb 2023
 15:26:30 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/13] drm/i915/dsb: Introduce
 intel_dsb_finish()
Thread-Index: AQHZK1pN+cpSvZuhXkK0f5EViZzc0K673j9w
Date: Thu, 2 Feb 2023 15:26:30 +0000
Message-ID: <PH7PR11MB5981EA37B56C91A546EF1DA9F9D69@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
 <20230118163040.29808-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20230118163040.29808-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH0PR11MB7564:EE_
x-ms-office365-filtering-correlation-id: 42f987cf-b685-4480-d74d-08db0531dc2e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1oTIvTtlCgR2+r/n2/NwFYXhkxFzd+oZzG5iAyukw615YCFjglik6RlpDFPKeD4eaS2ZaMOZKr36ZJxT5YcT3Sar+FazzAau56prAxeNQFpAI4D7HHh8Px06VPyghsZdeczr/Rn6uMfUST21dHgNsUgTyTZuv7DZVz0MT4ECXg7hbYT7HZqAwlXlcwO/T+ZHi393vLTLvI2iidpQ0tRY4bd8vHskaGVFw/jUvI05Ktrybla8RuF/J3mQiLkUM/eEwOaXQJnkiRqotbHxzueswR0oyeWd4zhM+Hmq5dPFhUfu3PomScmIJX5qLHW8UrIPqW4U6xomWCRQiKg+DEteDMjS27P4RShahRyR5TZpFgRejP0OoWdTepA1+2HEJjjO5IxlDtzXnjoWI+oD0Ld/NMeXjvBcK0ycN39riFEgmxAts6uReyNj4Wzin4bUZSedAK5JZhNwbnzmQRo5otHcC6ZzFx4s6FAEPliGlAvS+eTL0FPF5xhaP8wSpXCazHe4Yc1uMja6OjCuW6NKL2eJobzBShq2Aoqcc7BZI1KQmtAoXSe810DNYVCTG2rAxUuv99qry72nCiUbl2ass8e//6AWuMP6qg2pZlN4Us2aBySW2Lr7hhsp7UR+/tNE3pTKi/k8FWMNunWUoTdTefgQNLTrnZ1fX8qsRyorG7YJBI+B6pSsCmyFZNMKLUKA1wShY4CS3fcgb7Ax4vz/CcNAGQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(39860400002)(346002)(396003)(136003)(376002)(451199018)(2906002)(7696005)(76116006)(478600001)(33656002)(53546011)(6506007)(55236004)(26005)(186003)(9686003)(38070700005)(71200400001)(55016003)(8936002)(52536014)(86362001)(5660300002)(41300700001)(83380400001)(38100700002)(8676002)(66946007)(64756008)(66446008)(66476007)(82960400001)(66556008)(316002)(122000001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NWlCcy9ZYU5QdDJCK0dGNkhLZ3IyVUh3ZFRna2pVQm55YldyKzZKUExNTzJj?=
 =?utf-8?B?WGQveko2UHpzU2IwWloxOXVuK09LaXplRHFrczFhb09yZFUzVjFHVG9JZXRh?=
 =?utf-8?B?NlhIRSthUVpyRFhaRnRVS29Jc0oza21HYUVDU1Z3VlJKUFhMaXBqUVZFYkVE?=
 =?utf-8?B?NzEwMnpZSi9vbDVnMlk0NVI2K3lhRGwzOGw1VEpwbzBjYkJSU2U1TTM1bEt5?=
 =?utf-8?B?SHFGdEZKT2FDdXNzNXJYYUVhY3dKVnRxUTVFUXpLRElEcXB6Y0IrdzBzS3lt?=
 =?utf-8?B?Y0hRbVJrKzh0REpkRThCNW9NYldmWnNKODladkUyV3dCcjhGSE5uRHcvdE96?=
 =?utf-8?B?aDB6RXliK0pKRDVuaENUR0VLRFFBTUZhRHprVXg0dkFiczRKNUQ0cGd6N1FZ?=
 =?utf-8?B?S0hmdzZsMmJMN2ozaE5mRjMyRWZ5bER0eHhzdUpBeTNWYWlSRlh3aDhMVFFZ?=
 =?utf-8?B?ekpxd0ZKVVJQKzdsWDNJdFlDc2k3alFmY1Mwc3NpbXBsZWtYaXR1dldldy92?=
 =?utf-8?B?QXVSemduUFcyVFdNRHV3RUw5ZERGZmYwb0NWc1BOMmJSU0dEQ0NOU3htZFBU?=
 =?utf-8?B?cHd5cmFsTERCbmpUa2FmWVJOU1BJT05ndlJOZGZsc2Y5MEhiYjdtM0ozLzZ4?=
 =?utf-8?B?THpmMEZ2RnlOeUFJZUMvM3VpM3I1aDF0OTBWejJjcExTNkFmaFpNODZsK3NZ?=
 =?utf-8?B?a0s0QTNoQUZ4OXpSTlUrZC9zbkZ0OWtVNFJhdmxGa1ZmYStJeURLNGY4elI0?=
 =?utf-8?B?RVBYZlpJMlY0RUNIY2dvQUkxWUpXVXFNYXBvRzJrNDJUaVFXU0F0dmxIMFZC?=
 =?utf-8?B?T2ZEMk5EWU5XMU1LS1ErcEQxVzFpUWdhblFXeE9WUGszOWM5Q0N2SzlIQkw4?=
 =?utf-8?B?bmttVEJGQW1uRkZrWlhRVkFiTG9yNEtzRnpYNDlKa1BxSXVSWHpKWXRKclc2?=
 =?utf-8?B?TUNxQTQ2ZnBLblFMcVFvcVZ0SlNrT2FkNStURFN6Ri9RaTVzZGlDL1hJUTdC?=
 =?utf-8?B?Njh3Qy8wL0cySGFqdjdlN1VRUytMcHlzckJZVlBjVmsxY05vYm5hTURVc2ZL?=
 =?utf-8?B?NWN1OXQ2enB4R2Znb2NNdkRWZlNOcDhzVDcwSUZHM3JCRGV6MlF5NlNzZ3Ba?=
 =?utf-8?B?bkZ5TVpUY1AydWljVUNpZWZSV1BsQkMvUTlCbXpKYjNEOXRLQy82QWw5bHE0?=
 =?utf-8?B?UnczOGxLcUd1U0kwZmxUMndqVFV6Nyt3M3RuRC9lSXFsZitVU0duRGJ1Nmpq?=
 =?utf-8?B?ZGxGZ2Yyd3dPWThraVZsZDRheHk3WkZqa25wcklaRTJTN3d3RXVMWjI2QWtN?=
 =?utf-8?B?NXIvdXczZG5VS0F5UFNPbUlkelJWTncxcitaemRGbGJuNm5JUmJWbkRnQXhq?=
 =?utf-8?B?WDhsamFQUG0ramhzSklFeGNPWUFOMXphTE83K0ExU0xHRXYzZVlFSkxWdFJo?=
 =?utf-8?B?eE9ibVRQSzlGbWNyencxaENWekFPdFlaQXg3S2tvaEVnK0pINkliSnNsZkhw?=
 =?utf-8?B?WHJna1U1aDJkVW9sRWtGSGJGR0Z1UzhJeStDMjdMM1RHQlp5WDFxYXZGU28r?=
 =?utf-8?B?YkkyZFpoeVZQRkwwOUhFZFdDelNLT1dhZU5wU1RkZGtUZGJ0bUdiRlY3SWsz?=
 =?utf-8?B?anpFMlU5OHRGZ05GSkk3ZWhxOWFlUDhmVk1yVWxBNzBJVkFXK0FjeW5QeWJG?=
 =?utf-8?B?SEhxaVBOZFB3YkErbmlMQ0JjRm5aSm9teDlSbjFNVlNscDBiSXVra2VZMGRt?=
 =?utf-8?B?NjVscFlMVkJGam9mcndMSHI5VlIzOWNQbjJlMnIwMlRUUFphZWJHNHRweW1L?=
 =?utf-8?B?dWhxWlhXbWt0Q202UnN2enlSRnNnSnpNSUdqRkxOQVVLR1QySThoYnhlMTIv?=
 =?utf-8?B?Wlk1RFdVTWdEU0NjZ0dtaFZVeXg5eU9EYmtzVDVzU3hKbWU5cjYrZjlvUjNC?=
 =?utf-8?B?NWtVemNMVTlyaHpGMERCd3N4U2ZjckJzS00rYXA1RnpPd1VmQVpmRk92aVJX?=
 =?utf-8?B?T2VOdEllTnZmZE1mRFRES1E3dG5vemFsSUZZZENZcXBBOUpjeTY1eFpXN2dP?=
 =?utf-8?B?dVB6cnhHQkRSY0JCN1hEaXVYR09NVE10SW9Cc055ODBXcjN5aUNVazBmTS9w?=
 =?utf-8?Q?rmKVvWOeD37s1ScXLfscvpAhe?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42f987cf-b685-4480-d74d-08db0531dc2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2023 15:26:30.8025 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tYJXhH/aO4Lr+fP52ZonsQZPV20Fij1vt5+nnDkuyQPzJeD4RPc9UjhGQMeOLtYxwRw06Lo0L9AXEmVtAPXDIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7564
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915/dsb: Introduce
 intel_dsb_finish()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxOCwgMjAyMyAxMDowMSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMDQvMTNdIGRybS9pOTE1L2RzYjogSW50cm9kdWNlIGludGVsX2RzYl9maW5p
c2goKQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gDQo+IEludHJvZHVjZSBhIGZ1bmN0aW9uIHRvIGVtaXRzIHdoYXRldmVyIGNv
bW1hbmRzIHdlIG5lZWQgYXQgdGhlIGVuZCBvZiB0aGUNCj4gRFNCIGNvbW1hbmQgYnVmZmVyLiBG
b3IgdGhlIG1vbWVudCB3ZSBvbmx5IGRvIHRoZSB0YWlsIGNhY2hlbGluZQ0KPiBhbGlnbm1lbnQg
dGhlcmUsIGJ1dCBldmVudHVhbGx5IHdlIG1pZ2h0IHdhbnQgZWcuIGVtaXQgYW4gaW50ZXJydXB0
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCg0KTEdUTS4NClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmlt
ZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY29sb3IuYyB8ICAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMgICB8IDExICsrKysrKystLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzYi5oICAgfCAgMSArDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDkgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gaW5kZXggNWQ5OTkxMzQyOWI5Li42ZDZkMzAwZmEy
ZGYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29s
b3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMN
Cj4gQEAgLTEyNTcsNiArMTI1Nyw3IEBAIHN0YXRpYyB2b2lkIGljbF9sb2FkX2x1dHMoY29uc3Qg
c3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+ICAJfQ0KPiANCj4gIAlp
ZiAoY3J0Y19zdGF0ZS0+ZHNiKSB7DQo+ICsJCWludGVsX2RzYl9maW5pc2goY3J0Y19zdGF0ZS0+
ZHNiKTsNCj4gIAkJaW50ZWxfZHNiX2NvbW1pdChjcnRjX3N0YXRlLT5kc2IpOw0KPiAgCQlpbnRl
bF9kc2Jfd2FpdChjcnRjX3N0YXRlLT5kc2IpOw0KPiAgCX0NCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGluZGV4IDBiMmZhYTMzZjIwNC4uOWUyNWIxMzQ1
OTI3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4g
QEAgLTE5OSw3ICsxOTksNyBAQCB2b2lkIGludGVsX2RzYl9yZWdfd3JpdGUoc3RydWN0IGludGVs
X2RzYiAqZHNiLA0KPiAgCX0NCj4gIH0NCj4gDQo+IC1zdGF0aWMgdTMyIGludGVsX2RzYl9hbGln
bl90YWlsKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikNCj4gK3N0YXRpYyB2b2lkIGludGVsX2RzYl9h
bGlnbl90YWlsKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikNCj4gIHsNCj4gIAl1MzIgYWxpZ25lZF90
YWlsLCB0YWlsOw0KPiANCj4gQEAgLTIxMSw4ICsyMTEsMTEgQEAgc3RhdGljIHUzMiBpbnRlbF9k
c2JfYWxpZ25fdGFpbChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpDQo+ICAJCSAgICAgICBhbGlnbmVk
X3RhaWwgLSB0YWlsKTsNCj4gDQo+ICAJZHNiLT5mcmVlX3BvcyA9IGFsaWduZWRfdGFpbCAvIDQ7
DQo+ICt9DQo+IA0KPiAtCXJldHVybiBhbGlnbmVkX3RhaWw7DQo+ICt2b2lkIGludGVsX2RzYl9m
aW5pc2goc3RydWN0IGludGVsX2RzYiAqZHNiKSB7DQo+ICsJaW50ZWxfZHNiX2FsaWduX3RhaWwo
ZHNiKTsNCj4gIH0NCj4gDQo+ICAvKioNCj4gQEAgLTIyOCw4ICsyMzEsOCBAQCB2b2lkIGludGVs
X2RzYl9jb21taXQoc3RydWN0IGludGVsX2RzYiAqZHNiKQ0KPiAgCWVudW0gcGlwZSBwaXBlID0g
Y3J0Yy0+cGlwZTsNCj4gIAl1MzIgdGFpbDsNCj4gDQo+IC0JdGFpbCA9IGludGVsX2RzYl9hbGln
bl90YWlsKGRzYik7DQo+IC0JaWYgKHRhaWwgPT0gMCkNCj4gKwl0YWlsID0gZHNiLT5mcmVlX3Bv
cyAqIDQ7DQo+ICsJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhSVNfQUxJR05FRCh0
YWlsLA0KPiBDQUNIRUxJTkVfQllURVMpKSkNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAlpZiAoaXNf
ZHNiX2J1c3koZGV2X3ByaXYsIHBpcGUsIGRzYi0+aWQpKSB7IGRpZmYgLS1naXQNCj4gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBpbmRleCA3OTk5MTk5YzI0NjQuLjZiMjI0OTll
OGE1ZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+
IEBAIC0xNSw2ICsxNSw3IEBAIHN0cnVjdCBpbnRlbF9kc2I7DQo+IA0KPiAgc3RydWN0IGludGVs
X2RzYiAqaW50ZWxfZHNiX3ByZXBhcmUoc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+ICAJCQkJ
ICAgIHVuc2lnbmVkIGludCBtYXhfY21kcyk7DQo+ICt2b2lkIGludGVsX2RzYl9maW5pc2goc3Ry
dWN0IGludGVsX2RzYiAqZHNiKTsNCj4gIHZvaWQgaW50ZWxfZHNiX2NsZWFudXAoc3RydWN0IGlu
dGVsX2RzYiAqZHNiKTsgIHZvaWQNCj4gaW50ZWxfZHNiX3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxf
ZHNiICpkc2IsDQo+ICAJCQkgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpOw0KPiAtLQ0KPiAyLjM4
LjINCg0K
