Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CFE8467EC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 07:22:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A77010E551;
	Fri,  2 Feb 2024 06:21:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UO1A9FWQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21E4B10E551
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 06:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706854906; x=1738390906;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=meVygZ8OjyrbRLHcjyZZkqRvEpXVmDR8If13Mv9Rcs4=;
 b=UO1A9FWQ/XzqszZ2S1ReKnrlHgiXrDA2wzNc0BHhcCVaSvCQHbjMH6sH
 rA+g0tU2SujRBQVCaJaEImsJD2Qf0XFJnS2ATad35Xas6vtOEIiw5h+wj
 nWc2KOFdCJQQ4HhNElJ7rTuptrgEupp8XY4bNDJmoApSKMOw5m1CtzRty
 lXOXxzuUfNrOT9laqGUXMQn9DptoYUt5jtRwr45IWo/6Fo0jbsveFPfdB
 GwgbM7j0pRScn25Gbv9XzawIfH+2COkLaSeTSrsARYza3osZAs20vfwuI
 drJxO2SB7KFXdJ9DFAPGw894oeziONOhvXA1ZOcAKtPm5lB+LQoJCgBET g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="22584692"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="22584692"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 22:21:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="2657"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Feb 2024 22:21:45 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 22:21:44 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 22:21:43 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 1 Feb 2024 22:21:43 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 1 Feb 2024 22:21:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XnZOKnoQOvX0DRB37NwC1RdQBp+iDGyQk7QL3rLNd4a6kuZEzMWfA6FaHxBtmhUwc2aAQFPpY6tfcCmxLojtFM0d0ryTysVi9Gg7TN3++jP2QUSNHDfg8KrvIi9kQPAp++jTKr5cuQBWjXHIuvNG9ApmkcXRNVU3Biy+irZXETK8XoRfO22IKD20PUbHqzVrjtygWzDpzVQKLSMkKUyRadIWEILpE9VLDyY2wCyxlUwodwVwe69vLv/Z7XkSbfk4LqE96+NQl5Ur6QGPxMCKqZlZbtUA5B5tg3sRmPoJOXhSpEp4CtyEu1PphgkddZKAMbkM8G616kOtiIcDc/SW3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=meVygZ8OjyrbRLHcjyZZkqRvEpXVmDR8If13Mv9Rcs4=;
 b=PotHEYn/wd72rojgREIstT5JaceTELWykBPO8HEj1az6MjbLEHkDk6bgR5wXNhcqOm07Djj2xoXCQ77/G/RKF+01XM+jlHPA0ZaLnXPUtgkgD+arX+UqHAQ89SHQozi38G19BibLNaUUEZKcA7j6pl3cAYy9NN8ZQInmgXG24pGCvU3vgETlmA5R6xavuZZJ4dVygs6sp91SKYDShqEI4j6gJECzzSPTlLQnQgp9gT7D4dJw0LrNkwnvbESJjOcrkuTwblp5CfOIaZoKyOQMRcryyONp0++2IvksJGkBJ/eF6LG2kKg6YVXGapkFpWRc5z6IV0+hBiX7qmi93dfHxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA1PR11MB6822.namprd11.prod.outlook.com (2603:10b6:806:29f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Fri, 2 Feb
 2024 06:21:41 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 06:21:41 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 02/21] drm/i915/psr: Set intel_crtc_state->has_psr on
 panel replay as well
Thread-Topic: [PATCH v3 02/21] drm/i915/psr: Set intel_crtc_state->has_psr on
 panel replay as well
Thread-Index: AQHaSr/JF55RR3fpCkKEAIoAdzVFIbD2qmBQ
Date: Fri, 2 Feb 2024 06:21:41 +0000
Message-ID: <PH7PR11MB5981A9D3D27AE5C86AE62AB3F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-3-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA1PR11MB6822:EE_
x-ms-office365-filtering-correlation-id: dc1ce91d-9789-4023-6d91-08dc23b73859
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TDRPHjILdyq6njtylasKSCdxhKK7l5eI8dDHN/rzRr512JSN+IdarwZKrJL1kxcyLNBuRCxa6nCvJczeZczHrqbA5JqZ7TI38qRlDOmX/1jNH2glLtiveVwDTjco6RbPC1d4sWGCfkmHMfoMAXK/0VbiOndOkSKzxbKmn3uMuS64EIxgjHwTQMkfX32XYgbOq/0rsTo1a2eX5CmPOAnuWRAm2S7nkwi0eOzq+YwXE8RPntkRdSvkEmDuSARA7I0LgdQA0YNTHx4i4p68QemEBNU7bW3aA8SeAEGbaxWQFxWNvlLN5YTwlhZzrupIdF0cKff7RchkwGe1iOly6LBhQ1eDZEiiUl+epDQRktDZ76gojUeIGE+W4VfC9FVXd6L3ZyqOLGDJM4XqF71lYmc0UOdKmeg0nuo2ft8n4jhh4dME8ctC5n7RMrtaEsPDg+ZSBGwhUn9zHrO0QhyBE7/vGekkRqv+L/t1FQ+7Uuo7h8yd6PrGL+6iHNkJxLtgfvNoEapfmmumwWTpR/qPw1Nns93HMLRHwVxk0HVSgcnPwGxznnEp25oFL1AT4QmPEc72E1i5wbnCVyloxiVBUq5ULS7RmxdbSqpDCyTzjba0tXZpqrJ2+/XqOjljOKN2N4sH
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(346002)(366004)(376002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(66574015)(26005)(83380400001)(9686003)(41300700001)(5660300002)(33656002)(53546011)(7696005)(6506007)(71200400001)(122000001)(82960400001)(55016003)(38100700002)(86362001)(66946007)(8936002)(8676002)(64756008)(66556008)(76116006)(66476007)(66446008)(110136005)(478600001)(52536014)(38070700009)(316002)(2906002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZzU5TDRYNTFhTi9Ma3RjU1FEc2pnSFFySklEQ3loUGNKeWQrTzRFVEt0aE90?=
 =?utf-8?B?bXJPbTRpNU50ekVJNmFCYXNOcFBJNVNpZ0c3d04vSHN4UGVhYlBsb1A5OVFN?=
 =?utf-8?B?T2dseVE2bUZqY3NkYy9udmFrbnExekhBMmZpbzJDWEJpcDR0VlVJdWpMa2Z2?=
 =?utf-8?B?SXAzMUdnS1hZcDZQUnJpdElxK2ZOUzlzQlhSVTlBeG5DRmhwVXVXeHRvTFQ5?=
 =?utf-8?B?M0ptVkdqdDJRSnREL0xKcnRocWVIOExIWXRPMXdzbVBkYWlTbm8xV2ZzRkMz?=
 =?utf-8?B?MlJHdkVUYUVxSnR3eDRlb0xnTWdmbFlvVlltb041SW91NERtUHE3ZnM5SUw1?=
 =?utf-8?B?dkFIVGRJL0tVQkZzencydkxiZ3ZVM2JCS1JUZnNJb0ZFcWx3dXI5Z3N1d0pk?=
 =?utf-8?B?dlE0T0dFbG5kK29uYktwbUpRWHJjR2JIb0R1dWJNK1BNRlBDY0plQno1SGJD?=
 =?utf-8?B?L2dnVXc3NDZ0d2ZxeDhUWGVpemVRRXpaZ3VsMFdCOXltakFrQm1LT2llZmdL?=
 =?utf-8?B?b3BEbUZIbzl5UmNGbXI1ckswRzdLbE91V1FzWFZta0RnNHhmL0JBVy82anhE?=
 =?utf-8?B?SCs0Q2dtQnRLZERyVGNXU21PRC9jUHpmOTYrZ2ErZmFkVVRqenpvRW1rRXRM?=
 =?utf-8?B?S0dKTEx2QXJlVmxEZkZMdk0vSWwzckVYTUlhK3hrQUNlWE1naEJ3NXgxd0l0?=
 =?utf-8?B?ZUxodHFxT1dBc3NKS25WeXRHZUN1d0RrQWFkNUlMWDk5YWtwNm9kaTZGSXJE?=
 =?utf-8?B?eG9ZS0RlRUNDc0JISEZmT3FQTGZXWk93SFprTzd4TDREbk5UMmZIcTkzR3Fj?=
 =?utf-8?B?ZUFWYStzWkFPQVBLWlJTZFFHaFpoSjlzbFVKd0hEaWdYR3lBOEUrV1ZVTjhU?=
 =?utf-8?B?SjR5bi9VQWt6eVJvSkFqY1Iwb21HakFyYU00NlJLMWYxNGVrOE1HdnVibU5y?=
 =?utf-8?B?eWxaNU0wRVhWbC9TSzUvNkFieHRBa29hSUxzOGJ0YXVUcTVRQ1VONzh4OWFq?=
 =?utf-8?B?Zzdhc05iRDdzNkN4QTVOL25uRG5wVEYrL1lsOE5qYWVBVkVMTVVCeFpBNGVI?=
 =?utf-8?B?dVRBUUg3ZHVmWWRRaVhQTlVNd1R6dWZobDFzSllBOC9EaTgwb2RTL05DVVg1?=
 =?utf-8?B?aDVrTWd3Z3dQcDlpMnhpWTdzZmN6UmR3d0k5eGxtV3VaWWpCeDZZbWVWWVhD?=
 =?utf-8?B?ZE5HakdFQmtYb3NhT0ZUWFM1QllqTCs3aFRkTmlOblV1M2ZMbW90c2E1TzQx?=
 =?utf-8?B?a3NmTEwxYnpyMGZkcFVDVjA0K2YvNUhYd3k3aS9OUFdKMkwwcUZUWnpybWcy?=
 =?utf-8?B?ODFheElqWlhIRm5POTQrUC9SZ2cyalZIV3lHWXVWQzJ4eGJVcW13cWM5ZllS?=
 =?utf-8?B?QUZJRDdZWStZa1pPR1JOV2ZtdUZVenBMZ0ZuckcvOUxRbjZpRlV4cEF1eXBP?=
 =?utf-8?B?NVRyclhWdXZCbnpGMmFLdDB5MUZrdTZLQUdhM0JmV0hsVkh2UkxJMEpCZUk2?=
 =?utf-8?B?eWRRNzI1RnlSRVdQS0dIQVI0RWxZVEw2RUZ2TU9MZHlZV2RUcE1RbFVzaUUr?=
 =?utf-8?B?Nk9Rc3dBaWdQTytZVFhoNngwbjdRSHhwRUJzSDZkZUFuZkkxeVQzRjUxOFpi?=
 =?utf-8?B?VGc4TldET21SYzJUUjBWSXI5MVdqUktrNW5ac3FLRnhBZi9YbTRXakZPMlJs?=
 =?utf-8?B?QWJpVVhzYmVFaEJiZDBndkRYbWNmTkdVc1JtYjRxOVNjV3A3SnF0VkI3RDQ5?=
 =?utf-8?B?OGJxUkp5Z1I4dTl1dmpUQllDNE9tN0UzQ0V5Nm81enEzUEZhNmJFemNrQWJx?=
 =?utf-8?B?WWNwTU42OGlJMk1kamFweU9FeEJaYjdIQnl3dFZHajZSdTY5OW4wVjIxcHJE?=
 =?utf-8?B?QXdQY2JISU91SEl4SG5pM1lvVXl1WEZJa05IYlNoSGVXak5XQ3hHOHlZYjdj?=
 =?utf-8?B?SU9BQktPQWZIRUxEdlpuVVhTRys5YVlrQitJY1l3VEM5RmxWUFpjOHkyWXpS?=
 =?utf-8?B?TVRJTmJPU2FseWlONm9uSlkvdWlZOUJUeU9qaG43MWM2dlRDTE9QSGtUbHNa?=
 =?utf-8?B?ZWRKaWs3QWRiVnZMODVYSklJVnpxTWU2aEFHbWZpTGVlcnI1T2c2dm9VMXVa?=
 =?utf-8?Q?YMaBXx+0sGyfeL9bHY6agP3DD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc1ce91d-9789-4023-6d91-08dc23b73859
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 06:21:41.1057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RlVBhUNNMBNtletsUtSXAHAoS9bojZoMCFTp6GifB/Y6f5qrw1xdhbkJQouCwDRS62vGRn3LE0iafCMga8gUUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6822
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxOSwg
MjAyNCAzOjQwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDAy
LzIxXSBkcm0vaTkxNS9wc3I6IFNldCBpbnRlbF9jcnRjX3N0YXRlLT5oYXNfcHNyIG9uDQo+IHBh
bmVsIHJlcGxheSBhcyB3ZWxsDQo+IA0KPiBDdXJyZW50IGNvZGUgaXMgc2V0dGluZyBvbmx5IGlu
dGVsX2NydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkgaW4gcGFuZWwNCj4gcmVwbGF5IGNhc2Uu
IFRoZXJlIGFyZSBsb3RzIG9mIHN0dWZmIGJlaGluZCBpbnRlbF9jcnRjX3N0YXRlLT5oYXNfcHNy
IHRoYXQgaXMNCj4gbmVlZGVkIGZvciBwYW5lbCByZXBsYXkgYXMgd2VsbC4gSW5zdGVhZCBvZiBj
b252ZXJ0aW5nIGVhY2ggY2hlY2sgdG8gaGFzX3Bzcg0KPiB8fCBoYXNfcGFuZWxfcmVwbGF5IHNl
dCBoYXNfcHNyIGluIGNhc2Ugb2YgcGFuZWwgcmVwbGF5IGFzIHdlbGwuIENvZGUgY2FuDQo+IHRo
ZW4gZGlmZmVyZW50aWF0ZSBiZXR3ZWVuIHBzciBhbmQgcGFuZWwgcmVwbGF5IGJ5IHVzaW5nIGlu
dGVsX2NydGNfc3RhdGUtDQo+ID5oYXNfcGFuZWxfcmVwbGF5Lg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCkxHVE0uDQpS
ZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTEgKysr
KysrLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4g
aW5kZXggYjlkMmY2Y2ViNTY4Li5kNjlmZWZjMmE5NGQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTQwOSwxMCArMTQwOSwxMSBAQCB2b2lk
IGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0K
PiANCj4gIAlpZiAoQ0FOX1BBTkVMX1JFUExBWShpbnRlbF9kcCkpDQo+ICAJCWNydGNfc3RhdGUt
Pmhhc19wYW5lbF9yZXBsYXkgPSB0cnVlOw0KPiAtCWVsc2UNCj4gLQkJY3J0Y19zdGF0ZS0+aGFz
X3BzciA9IF9wc3JfY29tcHV0ZV9jb25maWcoaW50ZWxfZHAsDQo+IGNydGNfc3RhdGUpOw0KPiAN
Cj4gLQlpZiAoIShjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5IHx8IGNydGNfc3RhdGUtPmhh
c19wc3IpKQ0KPiArCWNydGNfc3RhdGUtPmhhc19wc3IgPSBjcnRjX3N0YXRlLT5oYXNfcGFuZWxf
cmVwbGF5ID8gdHJ1ZSA6DQo+ICsJCV9wc3JfY29tcHV0ZV9jb25maWcoaW50ZWxfZHAsIGNydGNf
c3RhdGUpOw0KPiArDQo+ICsJaWYgKCFjcnRjX3N0YXRlLT5oYXNfcHNyKQ0KPiAgCQlyZXR1cm47
DQo+IA0KPiAgCWNydGNfc3RhdGUtPmhhc19wc3IyID0gaW50ZWxfcHNyMl9jb25maWdfdmFsaWQo
aW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiBAQCAtMTQzOSw3ICsxNDQwLDcgQEAgdm9pZCBpbnRl
bF9wc3JfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4gIAkJ
Z290byB1bmxvY2s7DQo+IA0KPiAgCWlmIChpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFi
bGVkKSB7DQo+IC0JCXBpcGVfY29uZmlnLT5oYXNfcGFuZWxfcmVwbGF5ID0gdHJ1ZTsNCj4gKwkJ
cGlwZV9jb25maWctPmhhc19wc3IgPSBwaXBlX2NvbmZpZy0+aGFzX3BhbmVsX3JlcGxheSA9DQo+
IHRydWU7DQo+ICAJfSBlbHNlIHsNCj4gIAkJLyoNCj4gIAkJICogTm90IHBvc3NpYmxlIHRvIHJl
YWQgRURQX1BTUi9QU1IyX0NUTCByZWdpc3RlcnMgYXMgaXQgaXMNCj4gQEAgLTIzNTIsNyArMjM1
Myw3IEBAIHZvaWQgaW50ZWxfcHNyX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRl
KHN0YXRlLCBjcnRjKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gDQo+
IC0JaWYgKCEoY3J0Y19zdGF0ZS0+aGFzX3BzciB8fCBjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVw
bGF5KSkNCj4gKwlpZiAoIWNydGNfc3RhdGUtPmhhc19wc3IpDQo+ICAJCXJldHVybjsNCj4gDQo+
ICAJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrX3dpdGhfcHNyKHN0YXRlLT5iYXNlLmRldiwg
ZW5jb2RlciwNCj4gLS0NCj4gMi4zNC4xDQoNCg==
