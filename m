Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFF04FF08A
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 09:27:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC18210FF2B;
	Wed, 13 Apr 2022 07:27:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F61710FF2B
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 07:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649834876; x=1681370876;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=tGpn7kTc/vNmkqc4QWuYsWLOS3cEYI/E/tnsa6tzhCo=;
 b=IKSOdINpb7r9z8g44EZUWa2qD18LgcUZwn1t1YAvA3/4VF0iMgfyvpyB
 rWqFgb1s/daq6f8WrI8XsovG9XhCXxFYJNs3eBwXacZZKg02XomBvASv1
 NeV2m4T8eTx64MZrsT/+7BVonReRYwOYTP6ojDqTbFAXltfR2OJMqeAW6
 EpNnMjEQHe9556HtEnsL3ijM2iSSpdcmb9ScbHUoYjfdNJ7gzeiL418bk
 51D4VEklxogWcBaO0exoak1Tsxdo3FTBrabe/lB9MfWX2G8lvzPYifYWH
 kj4ZsiHbHvvSjTt9vOfomUF/ks+WEi+2wZ/LUMj6GBdiOZTuSaNsCb/5X Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="262349166"
X-IronPort-AV: E=Sophos;i="5.90,256,1643702400"; d="scan'208";a="262349166"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 00:27:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,256,1643702400"; d="scan'208";a="573154082"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga008.jf.intel.com with ESMTP; 13 Apr 2022 00:27:55 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 13 Apr 2022 00:27:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 13 Apr 2022 00:27:55 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 13 Apr 2022 00:27:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PzmYDAW6BOwotF8xJBlVn4sl7sJGU7tW7R8E31uYXePMM/vIixmz3FR+1YNtXEA9JR1LTJt+f2/5MAjDhXhmxbD5XTr2AppBbkWjgK8jJ2sREk+Z3rzDXLvXy3lIrQ78rvDyAchOgM5FMrPxD/RgbysfV8f5hIqzWKKYn/8t91sR2FSpmhrGlN5Q+QciXexU+mGWi3DT8ShyUjxzqe/JdXEp7GZLZ4zTo2d+ipHbU2FMVowyMfO90p9EZFy5GlC72cI3CgyNsCpVUzLFdtRnE6qdXDYlD4ZTBAR5G+snhKj9bsu1wPpz6bfTYoW0dWKgLAVYWKcbH9R0I5KhLx3pwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tGpn7kTc/vNmkqc4QWuYsWLOS3cEYI/E/tnsa6tzhCo=;
 b=kWN18NyMFzhsQff9eB92xiQbY7bhdFc3tm1l6CLqmtNOPu00ol7tqEEyFX8CoaYH25g/DsHeJ+N+q7B8EQ9u6JCVXLommPhTHYYTFU/ZLZybG0NMd2rBDTCyGkoRNOtz/7xFEv7qWZaA1iL4okfjZz/s9v1KfGIDSX4S7CAH/2TrO/B/l6Iie70vko7Oryll05yYStxhi6V6dTHNJU4D1PfNwNI/ZPUYgag4JlKunwBi8nMic7hC2oBx4OPA0u5Ur2D/SQOU24nUKtlK7EmcSx4rhMxMvx3WHYm6c16nt175O8+LPE3tK+gnTvLOVDCfQFDQpkz2aL6v1YBZxsbK+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM5PR11MB1241.namprd11.prod.outlook.com (2603:10b6:3:15::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5144.29; Wed, 13 Apr 2022 07:27:53 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95e7:8abc:485a:a90]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95e7:8abc:485a:a90%7]) with mapi id 15.20.5144.029; Wed, 13 Apr 2022
 07:27:53 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/display/psr: Clear more PSR state during
 disable
Thread-Index: AQHYTq+DSWZ5F3CjWEqAHApuk1YjrKztcpkA
Date: Wed, 13 Apr 2022 07:27:53 +0000
Message-ID: <14f9bb02d627056ff000df3c9ce1105b3d74826f.camel@intel.com>
References: <20220412205527.174685-1-jose.souza@intel.com>
 <20220412205527.174685-2-jose.souza@intel.com>
In-Reply-To: <20220412205527.174685-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d2eef6b-6215-4769-4460-08da1d1f1f3d
x-ms-traffictypediagnostic: DM5PR11MB1241:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM5PR11MB1241F023DEB0CF7F4C5CCD6A8AEC9@DM5PR11MB1241.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7aqQAXzIXqcQfiQezEpUv023LE9L+ZR+MTZS3UjHtxyDX8j1oVlnPSjQryVtvOS8arGgiZUDw6BcFFT5HMk+Dfa8KX9zwJHGtqjMATYuGd5AL4TN8pg1wtjpQ1unfCoeH+uce5I7Q9kCaB2vwq05EKtiDBf+IWPYNqixiuLBL9+eeSsfsbrcMSZyqrZghxY+gcy1yjhGhmODcG3m+7EQaoLFjQYm2rBOTGq5z2hbRPznyx7D4hHCFD6Sau81+iygH3SeSqIlqvlMUQRYMYTK+cddekesvqZk++P870JNIwK7TxqMZDpVEbkmpg2PI/gU9avBYdKlH/c3dUSNU4I5B9NfrPRAS24tCLJ5IgwfLfl7mDpZ4nzxNxI4QHLU5e8XcOW/CpfH2WJydS2r620xzR/OgsGpJrqg0vVVOVvQxW1rm45NhISl0baSFyYHtnyoiZJbRhyJllmglx0mqWFxjggg9JsoZJYpVl50dWQep+SEq0AnCFFkt9n4hVQbxz1I2sVS03YwvmDlNghq/GfdohfuO7jShOviArT/OiiLLX1zFDV/EVRiRrOODdsg0J7qeUwbwquSyTcmvkqvvmYX5dGbTYOQf3XS0fQq3n2xUpyJvuS5MAhPREFnY4j+Ar0crVB4Kg9+IkWbrt0Ug1LgV6xr5VkU9BZOGD4nakzhAsATPGXuXLY6cfTB92zTpksoCQyCAWRMbBTzJOrqUIlitQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(110136005)(71200400001)(186003)(8936002)(2616005)(2906002)(6636002)(6506007)(38070700005)(316002)(6512007)(8676002)(122000001)(82960400001)(91956017)(66446008)(76116006)(66556008)(64756008)(66476007)(66946007)(5660300002)(36756003)(508600001)(6486002)(38100700002)(966005)(66574015)(26005)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a1Bla1J4WElNUk9nb2M3UFNLUXNheXZyTUxjWkhYRWgxZVdlNmM4NXhDWld5?=
 =?utf-8?B?S3ZkZ3d0VXJnVGRTZllXTEVnSzVzelI0MWoxMHBKa2Z5cEp3RU1QaGc0VVZ0?=
 =?utf-8?B?ZDBJV1ArRzNJdm5tSW5ZVUNMR3dTOTZRbWdPelBmVGhLRGhYUVVXaG15ZG4y?=
 =?utf-8?B?YXhETnRTakVLdnVFQzgrOTIrbVRheGkwRm8zOWYvdDJ0VW5Uck9YNU9oYTJ1?=
 =?utf-8?B?ck8yL0hkL3dsdmFoUkhWMHVmK3dVWk44Uk1zUnA1NVNtQXgwSjlFaTlJSllV?=
 =?utf-8?B?b2ZkYkNZN0EwRSt4Zk9idnpRdmZ3OXVQOC9UbEplMUZ2QlV2My81bkpZYkNP?=
 =?utf-8?B?MGZwVjZIdmZnaDVpck5TQWY2UTRJV0U0QnYwYm1YWEw0cVBpZXNtejZkYjBy?=
 =?utf-8?B?SmdHM0V2L0F1SS9wZXVMWkE3bm5qS0VhbjdtZk1FT2JML1hyNE5PWW1MbHdF?=
 =?utf-8?B?NmVKdHRMbzB3VU84eHduY1dzTmZuL0E0aHR2Wmo1L1c3NHNkbXE3b1hmanlX?=
 =?utf-8?B?RVM4NTJNT28wYllnYVY1ZUJaMG5nSG1NR1JTUjdaRG5PdW4xMy9saUw5dkd0?=
 =?utf-8?B?blAwQ1dQQTJoVzc1Slh0SVJrN3krOUZKRWt2YTJKVWxTZVJWcS9OckFaT0Q2?=
 =?utf-8?B?R2N1OVpIcGR3TUpVVE85bGtkNnZDQXk3M2o0NUQzMnZQYjFlTHh5UUVKbEZZ?=
 =?utf-8?B?WmF0L2xRY0pBVWpnbzdtNHptTEsvaTdwSjBvalBTbTROUWF3YzJNenBBS0lR?=
 =?utf-8?B?cEYvM2czNXlpL2hxRzVBUHpWMFFzMDRvdERXZXJHUTJRTU4raFcrMStNaWpO?=
 =?utf-8?B?eFl6REJUdFUwclNpZ1dQYnVuV3YrTC9HN1pCRkdZaG1lVytHQ21hVXlXZjV6?=
 =?utf-8?B?WDlsTzFEUzFHZThHbDF3ZTIzcnIreGw5bzNObS85ZFk5SENVNzF6WHNEaUp5?=
 =?utf-8?B?M1B0ZVY4VGU1YVJaS2tpc1dzZThJcnQ1R2hCblZEdVJkNHlsVkhCNCtZbXFP?=
 =?utf-8?B?bVNYK1kwazVJclErUndNMjVPdGZualBXS05ZcWdlK0FZMTdHcjJFcjYzdXcz?=
 =?utf-8?B?UzB3SFlnV1RSOFhYMjNyTWdGVE01ck1SNUlpNXdWNHZBYUhYL2FVK2drek9i?=
 =?utf-8?B?L0NyeTViZ3Nqb1U2RHNTUS9iN1l5NitKZ1I2Q0wyQ05jUWo0MEhBUG8zdzR6?=
 =?utf-8?B?cjZjQXJ6S1VHeXdsYVh4WXk3OVVVNXcxdWRHVDI0N2xKV2x0MlMzblQrb0oy?=
 =?utf-8?B?NHJZc0RKTHZDOElHMFJvSW5vQUZOR3VMSm1qY3JvcWszdEVMNG1PQlh2SXNI?=
 =?utf-8?B?eXJReE01U1ZvN2JpY041YnhvNks5c05yUlo1dDIyeTQ2OS9vcTJ6WkQ4ZlZN?=
 =?utf-8?B?SittWTNyQXdEbVFxRU0zd2xUMWhxWHpnamhZd2hUQytzMDhOdmd5Sm00dXJR?=
 =?utf-8?B?ajhmN2FxQTZEUHlmZjk4MjlPM2tNQmZqbUhBaTZkN3pvWHZtRU14UDEwQXBu?=
 =?utf-8?B?NVBrUGFEUy9oVEYwMks2Y0s2dDNPQzBDR3kzTUt4aGlZQ1ZtNGd2d2tVWlkx?=
 =?utf-8?B?UDNmeDVqaTg2bStXd2NxMFRpNEtDNjFVR3lOQmx3RnFma2wwSUpDZ3B2cWpE?=
 =?utf-8?B?NWdqVlhIckd1eEhhRnVnd2JXMndKYy9oZHZ0aFg2WEtBVUgwa3JRWm1qYnl4?=
 =?utf-8?B?dkpVLzJMT3QvWWVxdjVTcTJIanQ4T3lid1VMdDBNQ3ZaMkwvMytEaVROeVBD?=
 =?utf-8?B?QWpIcFNxU0IwVDZGdjQzbmFxOFpqY2hOVm5BblUyeEZObWg1NG9Qc2p4N2FJ?=
 =?utf-8?B?N3JXTjhCVXhzR1lVdmpCbXVZN25GY21tT0Y1eHJJeTlON1FnZ29vQXVydUFk?=
 =?utf-8?B?eEVNOThhSTBzZ0hjbGJ3dW4rVGgzaldONlF0R2MxckF1WmhPRkl4bS9qcUxW?=
 =?utf-8?B?dnA4UmtMeFVBeTlNZGZOeGpKUEhzcXdnRXFCWTlDQkw2TDBoSjhQN1VVamto?=
 =?utf-8?B?QXpuUDM2bnY4b1REZnZ2TUdVQm1DcUZic3R0dUtsUXIxbmdRVXJtUkRNQmFD?=
 =?utf-8?B?TUkxVHJDb2g1MDZ6Z0R0NEU2Q0w5OTlKL0l6RnRsSGxkdDM1VXE1U3Ixcndp?=
 =?utf-8?B?eXVlZzh4QzJzR3Q4UlExMW10cTFCQVR3Q2JRNENIb0FjSEVrTnRkZ0w5VnZu?=
 =?utf-8?B?TTFsZXBTdWtJcmxqblNnalVLQUZSSCtuWWRLVk5va0dDRFBlbW5xNVcxNGRx?=
 =?utf-8?B?cEN3MDlYK2FIZHAvdnI3RnlHS0oyLzZjU29KYjRlSElPalZJU0FFdUJKMVZK?=
 =?utf-8?B?NzUrR0VhWmF6VktrRDZYWkJ0L2VEVWExNUZVWTB3SWRPS0EwT3duTk9xOWll?=
 =?utf-8?Q?TAO7lG8IcekitVNSBC/SQdK1ZHqGAaGwQXX9/?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A18CF4C937E9084584FA952F84FABE3C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d2eef6b-6215-4769-4460-08da1d1f1f3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2022 07:27:53.1022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rRJEwwpMm3qOQNOwijObhcIcCY9mkA9Ikd8c7NiGkzkwZOXGG+54HoYsepEGcPcuafSEHC8BCOpBP49C6HJZW9GwxRw1pTZhpp5l3FhB9+s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1241
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/psr: Clear more PSR
 state during disable
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

SGVsbG8gSm9zZSwNCg0KU2VlIG15IGNvbW1lbnQgYmVsb3cuDQoNCk9uIFR1ZSwgMjAyMi0wNC0x
MiBhdCAxMzo1NSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gQWZ0ZXIg
Y29tbWl0IDgwNWYwNGQ0MmE2YiAoImRybS9pOTE1L2Rpc3BsYXkvcHNyOiBVc2UgY29udGludW9z
IGZ1bGwNCj4gZnJhbWUgdG8gaGFuZGxlIGZyb250YnVmZmVyIGludmFsaWRhdGlvbnMiKSB3YXMg
bWVyZ2VkIHdlIHN0YXJ0ZWQgdG8NCj4gZ2V0IHNvbWUgZHJtX1dBUk5fT04oJmRldl9wcml2LT5k
cm0sICEodG1wICYNCj4gUFNSMl9NQU5fVFJLX0NUTF9FTkFCTEUpKQ0KPiBpbiB0ZXN0cyB0aGF0
IGFyZSBleGVjdXRlZCBpbiBwaXBlIEIuDQo+IA0KPiBUaGlzIGlzIHByb2JhYmx5IGR1ZSBwc3Iy
X3NlbF9mZXRjaF9jZmZfZW5hYmxlZCBiZWluZyBsZWZ0IHNldCBkdXJpbmcNCj4gUFNSIGRpc2Fi
bGUgaW4gdGhlIHBpcGUgQSwgc28gdGhlIFBTUjJfTUFOX1RSS19DVEwgd3JpdGUgaW4NCj4gaW50
ZWxfcHNyMl9wcm9ncmFtX3RyYW5zX21hbl90cmtfY3RsKCkgaXMgc2tpcHBlZCBpbiBwaXBlIEIg
YW5kIHRoZW4NCj4gd2UgZ2V0IHRoZSB3YXJuaW5nIHdoZW4gYWN0dWFsbHkgZW5hYmxpbmcgUFNS
IGFmdGVyIHBsYW5lcw0KPiBwcm9ncmFtaW5nLg0KPiBXZSBkb24ndCBnZXQgc3VjaCB3YXJuaW5n
cyB3aGVuIHJ1bm5pbmcgdGVzdHMgaW4gcGlwZSBBIGJlY2F1c2UNCj4gUFNSMl9NQU5fVFJLX0NU
TCBpcyBvbmx5IGNsZWFyZWQgd2hlbiBlbmFibGluZyBQU1IyIHdpdGggaGFyZHdhcmUNCj4gdHJh
Y2tpbmcuDQoNCkl0IHNvdW5kcyBhIGJpdCBzY2FyeSBwaXBlIEEgd291bGQgaGF2ZSBzdWNoIGlt
cGFjdCBvbiBwaXBlIEIuLi4NCg0KZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sICEodG1wICYg
UFNSMl9NQU5fVFJLX0NUTF9FTkFCTEUpKQ0KDQppcyB3cm9uZyBmb3IgQURMUC4gUGxlYXNlIGtl
ZXAgaW4gbWluZCBzdWNoIGJpdCBkb2Vzbid0IGV4aXN0IGluIEFETFAuDQpUaGlzIFdBUk4gaXMg
YWN0dWFsbHkgY2hlY2tpbmcgU0ZGIGJpdCBvbiBBRExQIHdoaWNoIGlzIHJlc2V0IGJ5IEhXDQph
ZnRlciBzZW5kaW5nIHRoZSB1cGRhdGUgZnJhbWUuIFdlIHdlcmUganVzdCBsdWNreSAob3IgdW5s
dWNreQ0KZGVwZW5kaW5nIGhvdyB5b3Ugc2VlIGl0KSBub3Qgc2VlaW5nIHRoaXMgZWFybGllci4g
UHJvcGVyIGZpeCB3b3VsZCBiZQ0KdG8gcmVtb3ZlIHRoaXMgd2FybmluZyBmb3IgQURMUD8NCg0K
PiANCj4gV2FzIG5vdCBhYmxlIHRvIHJlcHJvZHVjZSB0aGlzIGlzc3VlIGJ1dCBjbGVhbmluZyB0
aGUgUFNSIHN0YXRlDQo+IGRpc2FibGUgd2lsbCBub3QgaGFybSBhbnl0aGluZyBhdCBhbGwuDQo+
IA0KPiBGaXhlczogODA1ZjA0ZDQyYTZiICgiZHJtL2k5MTUvZGlzcGxheS9wc3I6IFVzZSBjb250
aW51b3MgZnVsbCBmcmFtZQ0KPiB0byBoYW5kbGUgZnJvbnRidWZmZXIgaW52YWxpZGF0aW9ucyIp
DQo+IENsb3NlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lz
c3Vlcy81NjM0DQo+IENjOiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDMgKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggOGVjN2Mx
NjEyODRiZS4uMDZkYjQwN2UyNzQ5ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xMzUzLDYgKzEzNTMsOSBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9wc3JfZGlzYWJsZV9sb2NrZWQoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAkJ
ZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LA0KPiBEUF9SRUNFSVZFUl9BTFBNX0NP
TkZJRywgMCk7DQo+ICANCj4gIAlpbnRlbF9kcC0+cHNyLmVuYWJsZWQgPSBmYWxzZTsNCj4gKwlp
bnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCA9IGZhbHNlOw0KPiArCWludGVsX2RwLT5wc3IucHNy
Ml9zZWxfZmV0Y2hfZW5hYmxlZCA9IGZhbHNlOw0KPiArCWludGVsX2RwLT5wc3IucHNyMl9zZWxf
ZmV0Y2hfY2ZmX2VuYWJsZWQgPSBmYWxzZTsNCj4gIH0NCj4gIA0KPiAgLyoqDQoNCkJSLA0KDQpK
b3VuaSBIw7ZnYW5kZXINCg==
