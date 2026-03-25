Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SG0iMvtqw2kfqwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:56:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A0B31FC0B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 05:56:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E2B810E1C3;
	Wed, 25 Mar 2026 04:56:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sgg25rRf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CC9910E1C3;
 Wed, 25 Mar 2026 04:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414583; x=1805950583;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lBc7mxOYLdIYUAgcP4StA0G7ncDAF3NgidRz54kcFQY=;
 b=Sgg25rRfwSOlafSL7otkDjNXBxLhRVIy8l+mnLEFsXbXtb10er69B9IT
 lc6CwUPxD6iLqSNFxo/B0xFNbx1OtgfIq6s7pPl6f/cUu6zZePpzSkTtD
 o0CSXsEzHm4r+S9hiSuFdYENqPBkJpo0ewlym/0e8EoPWxhqDdH3u1Exy
 Km2y0PrjRCHzW/CinUulsPTFlPqEolHCQPOe9Mxhf4Clp9LoF9vzlvTuq
 Km/glyxOVxmvTQP8PvkQ5++Y86AQ54vXZkoH97QGfrQjXZCWoy1LvuMrk
 +R8PleTvBgIkMGoXxk0ubjB9Qyzqe7hjjscn3nBmhxNZ6BFkr+QksUAol w==;
X-CSE-ConnectionGUID: KIYV+Ue+SbiIyvz01qdNIA==
X-CSE-MsgGUID: yHNV7NFvRuSK3szMVNpjgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="79353416"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="79353416"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 21:56:22 -0700
X-CSE-ConnectionGUID: CJsDbQUoSeOOldM/hxnxmQ==
X-CSE-MsgGUID: V22qz/Q1THG1kZWmOGpxvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="262495714"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 21:56:22 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 21:56:21 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 21:56:21 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.69)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 21:56:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V7SqTTDBI5hnlPaE90OFdlTtAygGjEyT9hCKF477/48Uc6DbRmRskbnnzAKejaColw0nm6hx0IHeip+mYuQUheiM5XJ9K3+mB8uYKy13LkAdDSM5427WYt690Wms74wOjwY5HZ2YqMcLHIbnQ+7I6WJwWE8XgDdyG5ZXxW+RUL8kCfgyONYH/wHLqsIesuFT7+2ELXMMhFVg8v6uiCK5NbYpY9sSgFyWWKthZHI/SC44RnoqZPtvJ4uKcJPC8jdNkWrJgKCQp8f8zfv8qyRXH0O9jm30p1rdkYAQXUiNn5dwIYAu5kgynNbOivWp5g6oHb2F3u9Adqv5uHgvyiczfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lBc7mxOYLdIYUAgcP4StA0G7ncDAF3NgidRz54kcFQY=;
 b=NwWndkfp9a5nt7YNJLv01szG6Ex7KXIIybOCMx9F829FhUM2nSPFo5+KbvX81bBHFhq3zxUhMZkE9tit2Fukz+jKD4GH1FhL7WugH6ObKre7UHx7K3cAOJsI80OBSsebee1JeNanVQJA/mELnt1R4IsTIU2ne/tgKDYsUNZB9PWRL36W0OxvQ+H6Hx7soX4e+J0hzdmti7ncZDhmBa1G3kJ0PhiCXPpY89TFjWdBq9BUtaMkxUO1cDLS+6c7fwwl9vk8z2AqhQQAvwCCBp646V+GcdCA9THzHLF/A1XvxpsY9e8p0FB4jg4nu6Kg6BbC7fw5jzH90rBjzNI7gre9Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM4PR11MB6431.namprd11.prod.outlook.com
 (2603:10b6:8:b8::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.15; Wed, 25 Mar
 2026 04:56:13 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.019; Wed, 25 Mar 2026
 04:56:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v4 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Topic: [PATCH v4 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Index: AQHctdhQkqQV5dTTYEuh8K3om62g+bWyVZ+ggAk99oCAAyOroA==
Date: Wed, 25 Mar 2026 04:56:13 +0000
Message-ID: <DM3PPF208195D8D6962842E2C2C7D797EE2E349A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260317063713.3288576-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260317063713.3288576-3-dibin.moolakadan.subrahmanian@intel.com>
 <DM3PPF208195D8D35471EE2EBE5EA7E3E92E341A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <4d7f5f9a-9ef9-47b9-9494-b7b67c2b774a@intel.com>
In-Reply-To: <4d7f5f9a-9ef9-47b9-9494-b7b67c2b774a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM4PR11MB6431:EE_
x-ms-office365-filtering-correlation-id: f87be9af-c09b-4a54-8ad4-08de8a2ad727
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|22082099003|56012099003|18002099003|7053199007;
x-microsoft-antispam-message-info: jiES8OgSxEpwmr/AAdQQ/DL/h2Q2WVWWaBjshTCb7mrOybSq5SIMQcMSYBDp+HDIpINK8DcFNKzXtL8uH3n877WodAvb59sUwsoCl7PAvWy4HwKScjiByRz6RoFef1NLSW3hFAxZ6wGrtBTVmR13+HV2GX31LOeBzdJBUPDNIIDrTNQN+OXttEIUqRo/bX5eQV09OwdJuCxZRmj141pibvDM9Unre+RcASoRlbROCOMdUkaIRVIojUkjHcYdqjgunR9auHNmZjZXd+Oi7B76AdyglP9obnHnnMwAktL6O6/Cq7Hw2b+d430RHwnTRQsTIKPaLqoy5XQs47MdeCPHtWUjNh897doud2rRp8OwWgke6d/wlSZ+q2Bcib7yYjJyGKZ51Kx/CWqDMkGDyfez4Em0Wrl1PUg1h6he7A4ln8QqsQjmDDRE8aIhZc364ei5FEqaMUovtkVk3qwdV/v/msjqAoeEMK9Gx0hgUvJoOpHVXDVZH0pJZCD6Sw/kwTDtmsoAz2WIq6OMEWg8Vf0IN5rSYkKm5fU1kpiIwhDaFJ7QUIaLSc82yceCX0oRKVLBn12SDxYT2ijVRxhBI+xMj4Trsvh8iT8RDyMsIU8BzvFoqe5rLEP4Y+9Q4aEpNIctTAz6NuXUQ3PG6JlqD0d23A8paYObOsp/usUhpdqNP0hMwVjLlmnQb1mh1/aspBw0mXPZqxuxfzskFnhqMLKkk8PREnNIi0BXwPGUvvecMpJgLIE6l4OaC1hgP1616wZJeF7mvVLH1Bfwt7YT8GPX1K4PxQ+PWqabY/fX27K13GI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QzcrWkpWY3V4TkgwMFdlZVpLR3g3Nld1T0o1emIyd1Y1RnQ1QjRkT3VkU0Jw?=
 =?utf-8?B?U2swdkszNk1rSWg1cE85QjFiRmNRNmpwQjVCaVkrbjBCZmVmZTV1aS9OQXNw?=
 =?utf-8?B?UGVXT2xMaXNGMGhTaTB1QURSR0RnWDhFOVd4K2Ywd2crUEdKbTQ5dmR4c0lT?=
 =?utf-8?B?ZFYraWRoRzRuc0Z4TC9WbUpIYmhRb1hUbUc3UWN5SnpqWXU2MDlGNGJ6SW9E?=
 =?utf-8?B?VVRJa3crSjRtdXNxbTdUT0FncWlWT1F4QWxZei9Wcy9YOUJ4Vkx1N2hFVDdR?=
 =?utf-8?B?N2VETVkydUkveFAvd0pYQ2RESnRHMWFEeDEwdEJPWmRoMHQyS055MmhLVThk?=
 =?utf-8?B?MVlmM2tjeW9PVTRqMnNDOEhwenpGcmUvenFQZFBrNnNmZFdzSWswbTZSdXhV?=
 =?utf-8?B?Y0l5bDhQT0QwMm9hVit2MTRvSkkxS2ZHK2xZeXRqN2ZQZ2Y5NmN0SThIYWl4?=
 =?utf-8?B?SnIwd3hVdE5hN3VmYk4vS0FSUmF2Q295bHlyZkJYbnk2b2YvVU1yL2czVHhG?=
 =?utf-8?B?czBtSmozYTVmTGN2c0RDNG50WmZIS1htTWxyVVB1Y295VDJmd0dSRTZqRTFS?=
 =?utf-8?B?K3BtTTZ1ZldQQnppbWd1eXorUlozc1FreU0zS0ptM0MzUWVhVjcxK0FUaWtV?=
 =?utf-8?B?aTFGWE9BeDlCWEFhZzBLaWdIbjJ2ZlliUDNPUUhuYzB4WkJlTEpnQWpSZUNR?=
 =?utf-8?B?MU1wR3BGK2tXczdPZ3BlZGtiS3FRc3NUZGV4eDM2cTJ6Q0NKWVYzTGlRdUNu?=
 =?utf-8?B?TU13YVpGaXgxcUNUZEVrYktVZzRzVk1kOW12Y1ptTGRjVHdoemJTcy9nb2dI?=
 =?utf-8?B?QmprcXMzNExNajlta2JqZ045UWVkZk0rTDlvWjVUbGcycWJYTTVJdGpZbHFZ?=
 =?utf-8?B?bWdyaHhKOFhzU2tNbVY0QnpzNmZRSUNEQkZwcEQ4ZjFIcnI5djFqbUlveFF3?=
 =?utf-8?B?NXhSS05lZlk1MlFsNDhNRGtoRCt1V1RKc0xjUEZWQTV6M0xhRWozdHBrUngz?=
 =?utf-8?B?ZXU4QmlCbHprWTBTV1N3QVBuQmx6S2ZKdFlhTCtPVmc0a2llczcyeFNCd3R4?=
 =?utf-8?B?Z3JTbFl4TDdCazB4Y3FJZ0M0S2dKaWZ0djNsYnNFbnpwS0dqSkFtbWdSZGJy?=
 =?utf-8?B?cHJGVXdWL0JLb0E4TXN6VXZXL3lOWVFVcUg1OXBsQklFakZRTVN4M2s4L0Ex?=
 =?utf-8?B?YnFDa0Z0L1cyNHNaZm9ublhYWVc3aTVWelFyZHFXdm1ETVBIK3lZR1FtZVlJ?=
 =?utf-8?B?VUlBcHpQRjgzZkovRlkzc1l1Wi8yRlJjaEExQkJXWS9MYmtVajJFaDBXbmRR?=
 =?utf-8?B?UTV0UkM5N1R2TnZ4dkV5ZXkrS1VWSHk4Z09vR3RQNjZJTTFTSUYzR2h0cEd1?=
 =?utf-8?B?b2lqUlZsTFprRVQwN3F1Z1dMdVo3Vk14cEtqaWdSTW13djFlTnFDMUxqdG9Z?=
 =?utf-8?B?TEhzdmN5bU5zODBVSnpNMnRuMEFWZEdpdDRvUGVmdUNFVjFKRVlwckhZazhw?=
 =?utf-8?B?bUo4dzZJbTRIN09KVnpNWWgyYW9GNENNZzR6b1ZxTUQ3RXJjTk9xNlVJRDJh?=
 =?utf-8?B?ajQrWlRlT3N2V0E4bkduZzRHRzBRMHViYmhFU1FRWTdQZUZYcDdhSWFRYnJO?=
 =?utf-8?B?T0VXQy8vTkVRYlRmV0pudVhpMTU0WDlrREVHYnNVMXgrTHlzcUVMMEJTblRv?=
 =?utf-8?B?QXFzRk14UVFvQWI2UnAxWU81QW5McVE3ZVM2ak5GS2gvSitqOVk2aEZtVDd1?=
 =?utf-8?B?cG0xclRxYzl2cDhwZUV5MXFmei85V0JzRVF4SlRWWm1aODQxbUMvTnZFR0VH?=
 =?utf-8?B?Z2V4UU42UGxEYWNtMGpRSGUvQ09uVUJERDB4bldDSWVOUG1XbmtaT3FLb0ht?=
 =?utf-8?B?VE81cXNQWHVjSEVTZGJQbFdJTVpKdnprSzMrNjArTHp1a0o0WlZhS3hjbzJM?=
 =?utf-8?B?YjlJQUxSbG9tSXhHaDZ3R3dKVXgzaE9NeUtaRXJGQjBWclhxa3BCVTZuZGNB?=
 =?utf-8?B?L3BEdFR4RUllSVc3VjdwdWVKYWZNNVVBOTRocVo4TmJJSDVFYUZqNzhSVjF3?=
 =?utf-8?B?VGNKM01hKzlGVTdzWWhvV0l1UU9kS1VETzB0a3BLUWt2cHA1M1NNbGJsR2I0?=
 =?utf-8?B?WE05aFJzTE9nNUJwNEJPazZ3YVFWMVc2Wk1BNHlEOHVLOFJBUWNTeG9CUE55?=
 =?utf-8?B?NFZBYmZUbmxtcGhDTjJoRnlHZTlVWWI5RVpzelpFMTFJVHVhbXdqbHFtcm1y?=
 =?utf-8?B?WStTbWJlY0tkN1hiS2tJZE83QXdZNENXS0hoTVJwcTd4WXdFTXZWRGJwK1ZE?=
 =?utf-8?B?UWNNNUE5Qm56TjdCUmVqRlVhNWRqSHR2cDFDYklyMUxzN1AwQ2R5UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: YaxHWUlHzGGDQ6YeYu+7NifGAtuspYm+5kM5bwOVkpV9CbuilXbzfuklXy4i1mJIthAZcB3DkFr8PyQWdkztzdZaAewk8IIFHeiLjzmpsycsQtyLdCTcwsPuEwJcwzNsPysJMh1VmkL6vWo6pgdH7zwK0kTaZPQ6LZJaNnAkA4qgOcYEUlgAgI/8i1BDH4KiEmiv0pN90K5WKIc3Z4NWmOy/ng1xzZHgu5LcJvjFW+4tptNKaqqMD2/vawvQy3ybE4/0KtXcquedtfA+lpUVnstMLIfo60BBYMECz8v+HtexNWms1SVcms8Nd7/y6PpkY6A0/3HnT7Z/pdfob7liJQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f87be9af-c09b-4a54-8ad4-08de8a2ad727
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2026 04:56:13.5495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2x+QCjrrOMsHRIO+JiPjI9rRIwhkZWQ/iCdeochE6kYFPEChRIkMF4934fTAtMq1ToiuBSvO/ULwRfBvxCUdPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6431
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 22A0B31FC0B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGliaW4gTW9vbGFrYWRh
biBTdWJyYWhtYW5pYW4NCj4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFobWFuaWFuQGludGVsLmNv
bT4NCj4gU2VudDogTW9uZGF5LCBNYXJjaCAyMywgMjAyNiAxMDoxNCBBTQ0KPiBUbzogS2FuZHBh
bCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZzsNCj4gaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiB2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbQ0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY0IDIvMl0g
ZHJtL2k5MTUvZG1jOiBFbmFibGUgUElQRURNQ19FUlJPUiBpbnRlcnJ1cHQNCj4gDQo+IA0KPiBP
biAxNy0wMy0yMDI2IDEzOjA2LCBLYW5kcGFsLCBTdXJhaiB3cm90ZToNCj4gPj4gU3ViamVjdDog
W1BBVENIIHY0IDIvMl0gZHJtL2k5MTUvZG1jOiBFbmFibGUgUElQRURNQ19FUlJPUiBpbnRlcnJ1
cHQNCj4gPj4NCj4gPj4gRW5hYmxlIFBJUEVETUNfRVJST1IgaW50ZXJydXB0IGJpdCBmb3IgZGlz
cGxheSB2ZXJzaW9uIDM1Ky4NCj4gPj4NCj4gPj4gQ2hhbmdlcyBpbiB2MjoNCj4gPj4gLSBNb3Zl
IFBJUEVETUNfRVJST1IgaW50ZXJydXB0IGVuYWJsZSB0byBhIHNlcGFyYXRlIHBhdGNoIChWaWxs
ZQ0KPiA+PiBTeXJqYWxhKSBDaGFuZ2VzIGluIHYzOg0KPiA+PiAtIEFkZCBCc3BlYyByZWZlcmVu
Y2UgKFN1cmFqIEthbmRwYWwpIENoYW5nZXMgaW4gdjQ6DQo+ID4+IC0gQWRkIFRPRE8gdG8gY2hl
Y2sgdGhlIGVuYWJsZW1lbnQgb2YgUElQRURNQ19FUlJPUiBmb3IgUFRMIChTdXJhag0KPiA+PiBL
YW5kcGFsKQ0KPiA+Pg0KPiA+PiBCc3BlYzogNzAyOTYNCj4gPj4gU2lnbmVkLW9mZi1ieTogRGli
aW4gTW9vbGFrYWRhbiBTdWJyYWhtYW5pYW4NCj4gPj4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFo
bWFuaWFuQGludGVsLmNvbT4NCj4gPj4gLS0tDQo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kbWMuYyB8IDggKysrKysrKy0NCj4gPj4gICAxIGZpbGUgY2hhbmdlZCwg
NyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+ID4+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiA+PiBpbmRleCAzOGIyODRhMGRiODIu
LjZjODAzYjJkY2JjZCAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kbWMuYw0KPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RtYy5jDQo+ID4+IEBAIC01MTAsNyArNTEwLDEzIEBAIHN0YXRpYyB2b2lkIHBpcGVk
bWNfY2xvY2tfZ2F0aW5nX3dhKHN0cnVjdA0KPiA+PiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBi
b29sIGVuYWJsZSkgIHN0YXRpYyB1MzINCj4gPj4gcGlwZWRtY19pbnRlcnJ1cHRfbWFzayhzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkgIHsNCj4gPiBUaGUgVE9ETyBjb21tZW50IG5lZWRz
IHRvIGJlIG1vdmVkIGhlcmUNCj4gDQo+IEkgcGxhY2VkIHRoZSBUT0RPIGJlbG93IDM1KyB2ZXJz
aW9uIGNoZWNrLCBzbyB0aGF0IGFmdGVyIFBUTCB2YWxpZGF0aW9uIGl0IGNhbg0KPiBkaXJlY3Rs
eSByZXBsYWNlZCBieSBuZXcgbWFzayBhcyBiZWxvdy4NCj4gDQo+IGlmIChESVNQTEFZX1ZFUihk
aXNwbGF5KSA+PSAzNSkNCj4gCXJldHVybiBQSVBFRE1DX0ZMSVBRX1BST0dfRE9ORSB8DQo+IAkJ
UElQRURNQ19FUlJPUjsNCj4gDQo+IGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAzMCkNCj4g
CXJldHVybiBQSVBFRE1DX0ZMSVBRX1BST0dfRE9ORSB8DQo+IAkJUElQRURNQ19HVFRfRkFVTFQg
fA0KPiAJCVBJUEVETUNfQVRTX0ZBVUxUIHwNCj4gCQlQSVBFRE1DX0VSUk9SOw0KPiANCj4gQXJl
IHRoZXJlIGFueSBzcGVjaWZpYyBjb252ZW50aW9ucyByZWdhcmRpbmcgVE9ETyBwbGFjZW1lbnQ/
DQo+IFRoZSBjdXJyZW50IGxvY2F0aW9uICBzZWVtcyB0byBiZSBjb3JyZWN0IHRvIG1lLCBidXQg
SSBjYW4gbW92ZSBpdCBpZg0KPiBpOTE1IHByZWZlcnMgcGxhY2luZyBUT0RPcyBhdCB0aGUgYmVn
aW5uaW5nIG9mIHRoZSBmdW5jdGlvbi4NCj4gDQoNCldoZW4geW91IGFkZCB0aGUgVE9ETyB3aGVy
ZSB5b3UgZGlkIHlvdSBhcmUgZGljdGF0aW5nIHdoZXJlIHlvdSB0aGUgdGhpbmsgY2hhbmdlIHNo
b3VsZCBjb21lDQpBbmQgaG93IGl0IHNob3VsZCBiZS4NClRoYXQgc2hvdWxkIG5vdCBiZSBjYXNl
LiBUT0RPIHNob3VsZCBjb21lIGp1c3QgYmVmb3JlIHRoZSBwbGFjZSB3aGVyZSB5b3UgbWFkZSB0
aGUgY2hhbmdlIHNheWluZw0KIkVuYWJlZCBQSVBFRE1DIEVSUk9SIGZvciBESVNQTEFZX1ZFUiA+
PSAzNSBmb3Igbm93IHNpbmNlIDMwIGlzIHVudGVzdGVkLiBFbmFibGUgaXQgb25jZSB2YWxpZGF0
aW9uIHBhc3NlcyINCg0KQWxzbyB0aGUgY29kZSB5b3UgbWVudGlvbmVkIGlzIG9uY2Ugd2F5IHRv
IGRvIGl0IHRoZSBidXQgdGhlIHNhbWUgY29kZSB3aGVuIG9wdGltaXplZA0KV2lsbCBsb29rIGxp
a2UgdGhpcw0KbWFzayA9IFBJUEVETUNfRkxJUFFfUFJPR19ET05FOw0KDQppZiAoZGlzcGxheV92
ZXIgPCAzNSkNCm1hc2sgfD0gUElQRURNQ19HVFRfRkFVTFQgfCBQSVBFRE1DX0FUU19GQVVMVDsN
Cg0KaWYgKGRpc2FwbGF5IHZlciA+PSAzMCkNCm1hc2sgfCA9IFBJUEVETUNfRVJST1I7DQoNCnJl
dHVybiBtYXNrOw0KDQpIZW5jZSB3ZSBtb3ZlIGl0IG9uIHRvcCB0aGVyZQ0KDQpBbHNvIGEgYmFz
aWMgY3Njb3BlIG9uIGk5MTUgdG8gY2hlY2sgd2hlcmUgVE9ETyBhcmUgYWRkZWQgd2lsbCBnaXZl
IHlvdSB3aGVyZSB3ZSB1c3VhbGx5IGFkZCBUT0RPJ3MgOyApDQoNClJlZ2FyZHMsDQpTdXJhaiBL
YW5kcGFsDQoNCj4gPiBPdGhlcndpc2UsDQo+ID4gTEdUTSwNCj4gPiBSZXZpZXdlZC1ieTogU3Vy
YWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+ID4NCj4gPj4gICAJaWYgKERJ
U1BMQVlfVkVSKGRpc3BsYXkpID49IDM1KQ0KPiA+PiAtCQlyZXR1cm4gUElQRURNQ19GTElQUV9Q
Uk9HX0RPTkU7DQo+ID4+ICsJCXJldHVybiBQSVBFRE1DX0ZMSVBRX1BST0dfRE9ORSB8DQo+ID4+
ICsJCQlQSVBFRE1DX0VSUk9SOw0KPiA+PiArDQo+ID4+ICsJLyoNCj4gPj4gKwkgKiBUT0RPOiBD
aGVjayBpZiBQSVBFRE1DX0VSUk9SIGJpdCBlbmFibGluZyBjYXVzZXMgZXJyb3JzDQo+ID4+ICsJ
ICogb24gUFRMLCBlbmFibGUgaXQgaWYgdmFsaWRhdGlvbiBwYXNzZXMNCj4gPj4gKwkgKi8NCj4g
Pj4NCj4gPj4gICAJLyoNCj4gPj4gICAJICogRklYTUUgUElQRURNQ19FUlJPUiBub3QgZW5hYmxl
ZCBmb3Igbm93IGR1ZSB0byBMTkwgcGlwZSBCDQo+ID4+IC0tDQo+ID4+IDIuNDMuMA0K
