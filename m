Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G2s7LJHSImpIeAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 15:43:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C6D6489D1
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 15:43:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=JdUJRYxb;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A098210E4A8;
	Fri,  5 Jun 2026 13:43:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75A0610E49D;
 Fri,  5 Jun 2026 13:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780667021; x=1812203021;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/NpxNIHvlp6NlAHIeJGvN2WEv939VqyL43iNaIfAwCg=;
 b=JdUJRYxbF9SfyBM4nclVc2txw4h9h1dSJoRizhfCNY4Dij9n2+TA6cjW
 OCspkyWZP/xHD/7O0wnncjVQXrdnwD9F6OlfPmEcGH/Iw/I1g8/Nf7Q5Q
 uf2MdaOwvMU23CnY1wIkMSYiAAeSGolHe/hJR/ch/NmP+lEr1TP/qX+j8
 jg+9E9F0y5Zei4hNhSiqiHbBhNVVTz8Y28MCT+c2aoZsnd/Zk/oh+CaMA
 3jZE3d5bPJGxBrj/mWBaioXA/CE6oVxNYrSxkKHei5e4o7yf8MAAnUNrK
 Z1rlJqO7TbLKQjhbxQTyaSia3iQbLXZSFDyKHw8TUBmoI36HiTQRSkdEh A==;
X-CSE-ConnectionGUID: MhVxTaBETDqrbQjc6CbLhg==
X-CSE-MsgGUID: 4y1PU+mkTmq5Dq+qMn4SWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="80636768"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="80636768"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 06:43:41 -0700
X-CSE-ConnectionGUID: abVISO4oRmS+lT1sjyaEpw==
X-CSE-MsgGUID: 6k5fuYb+QQyCU8/lXKROwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="246678711"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 06:43:40 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 06:43:39 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 06:43:39 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.33) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 06:43:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ym2C/ZSBm6E+L1r15L9emNLz2jz8d7KeOqxZ1BkJMQHLTydhtZ5o32OiWRyZ7v22EgotnAG2n7tdOUaWux1WjfmmjsLj+veqmvBk1SelaVWZIxrmEkyArYEjjj9My0r+OKFIFRDIAdE22o1AK7D5S7kDEBNU126GcMYifz5sJHq+6f2C+G9ZabOdVYSU7T32Yk1GJq4diicK41EmYjsruhKjkED4hkm6GyZWmZ5LsJsNQdxDo0Vk5L/h/VlyZdoVS240bG1019rxW6XPAUt+W7mNPYA+ba2W8h/xYaryWiiVIIA5Vny1BQOWf8AZ3NBdv+16zynv32cCrVbqcwGgfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/NpxNIHvlp6NlAHIeJGvN2WEv939VqyL43iNaIfAwCg=;
 b=YEZhA+UyoVlarqC3LudAq32dxQtCKc+YhlA8crjucYPX2EV+mE73K3Cicn6ulffyDSGEn1KZU7Lgh1Mdg7m1xX2AXuLf7A7giREB87BElcEvYkLuas7YFi7zChbgwvsC54hL3boL/JYgRJNr4L8p5UEPKO/WZ64JuoDD39pZLnjmg1s2+62K+uts2hlY7d9BMy2KHNszrrydR5c3aagwVgKpOnAxIbceNjb29j3XYERE6xczHbE/EOEIHpjJCZ0wa2F7NKnCIcgUiVW4BJjS0QnsMNH6pQn92TUuQiEV8LWev21mVhaVwhWvHfMHioqkSmKDeOIAZwaqvksGPXyoKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SJ0PR11MB4960.namprd11.prod.outlook.com
 (2603:10b6:a03:2ac::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.9; Fri, 5 Jun 2026
 13:43:34 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.007; Fri, 5 Jun 2026
 13:43:34 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 08/22] drm/i915/dp_link_training: Prevent repeated
 autoretrain attempts
Thread-Topic: [PATCH v2 08/22] drm/i915/dp_link_training: Prevent repeated
 autoretrain attempts
Thread-Index: AQHc8aqS5XwMaIxICk2KoSqYdFegJrYv/yyA
Date: Fri, 5 Jun 2026 13:43:34 +0000
Message-ID: <DS4PPF69154114FA39581160612A468E056EF112@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-9-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-9-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SJ0PR11MB4960:EE_
x-ms-office365-filtering-correlation-id: b9450a4f-f320-448f-7cbe-08dec3087080
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|3023799007|56012099006|11063799006|4143699003|6133799003|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: seOEvjXp9hzKZP8lShERXUIZfJFJcA0GY812AQlpGFTcBCK8Ohp/X7rRhKWYM/JVM8BAaQcqe/ymtyhYCMO2K6Bv7qPj9gT79GbAS+FoVR//nQNJ3yXVR6/DVyTUj3t/ERq89uTUaNDW8oHIbvKAnSsj6OWym+hvYSmI33BiOf7AZCZMKL7efccQsVTmivNdKmBCQhOovCexMNvK8gwL1zVK20sQOJqEzrW8SNfRrc9Km3HU9w5f/FCRuacJHI64SIMao3lr/RIFk/c7jSn/7MyKBfHtLjP660sIDHecPiAna9UaOLru3NnltwdLZYFT+sIOdI+uLmYZQsJ7tiBlntqU5ajo37ubCBKiPP2c8johj70z6Ho1w1hFmFxLrEaSnBMFT838wi8JrQHY3wDmoiTEFzWwl2U95cbUF55x58MmXllHJUo3IkWibzchevQjzQh3ecd7yGH6vYm6bnulVsapsywFQlU7VzbXdelui0Q1HtBseZhDc7y8VqxI0zD8ZGbc3045vXn96VKeMVBgRsmnT/7yApS+YEzL7vENWSxqkh8FmqAa7xAP0rdUJ6XGh9oIy6YLhYihtGfKgWblC+lS/RSXEYVgShq8Qbdj0QiK9nRbVA8dEYOkDfIBvT+bJuRHlnAGAlhoeJUA8I1SgjOUdZIgjVZIq9nJGrKoEiX7GR5i18VwF1Kc0l8UdsYob4OJHjQR5S8AHYYh+3iD8+mSmMWNzVKrhxHL0Az6MEnWO0WjSsPwIDBz7Q0QOhYI
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(3023799007)(56012099006)(11063799006)(4143699003)(6133799003)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SE9EMEo5SktXRzQwdks5MHE1ci9JWHZzc0tTK0hoaGVnczRGdzFVRFNGaUNt?=
 =?utf-8?B?V2tBbmJJaTBzbmhMMFQ4L2pJRTlKS2lxRWVaeDZ3N3Vwek55TnlCbytzTGlM?=
 =?utf-8?B?Nk5VM08wWXZRK3hOVHJKdDRSbEpBbGN2cUhTYWl5STlOblFybmUwaGcrSzBB?=
 =?utf-8?B?UWhzcXNab1hva2FjSTc5d0dyTWsvNU5keWhmRVlibTBkSmdhU2xiQTVZL0lj?=
 =?utf-8?B?Y1U4cVFYVFovcnBXZVdqd1FvbG9QZUozb3hMelhqaTlFZk16elhvWHl6VitX?=
 =?utf-8?B?RExLVnJ2Mkp5MTBlU1lQVDlVczhMbjZ1U1hFWGNJeitHUE9DTk1xWXdtUjJM?=
 =?utf-8?B?amhKVGswN0FpUDVMczFPbzA1M2RoTHdrS2kvV0tKb2NISFc4ekxROThOc1Ir?=
 =?utf-8?B?TUQrSk9TY1REdUFkVlJiMmZ2eGQ4ZGg3QStDUjlCOUI4a0tZZWZlOW1xUVla?=
 =?utf-8?B?RmpWUFQ2NTV0b3lyQm4rbzZwS1dYR3VkTWE2RHlIV2Q4QWVnRUJDQ055YlRQ?=
 =?utf-8?B?WVg4ai9NYkdJRzAyRUFVTm9lRUkrd2NBT1JxNkxaZFdkRGg1dURWZ2lCY2kv?=
 =?utf-8?B?U0VNZmJoTzFyZDRMWkRqVVVITjl0U1IxcEFnNmV2c2ZKeXJSUm94MTBmVEdp?=
 =?utf-8?B?WHFEeDB3SHNuWTVpdlRpYkVEaWNEcDUxbG5QbnAvblF0VUlRSHVJREYxampH?=
 =?utf-8?B?aVNEYms0OVJ1R2Fzd2U3eWxYQWp6YytHR3F0R1FZVGpUeUdPZS9oZ2lLYkJS?=
 =?utf-8?B?ZHQzV3YxZFp5SnBjbUdqbTdKRkFGR2EyT1o1ZXdSQjg0c3lVNkVqV0s5YlRF?=
 =?utf-8?B?NCtnbzBqZVdiaHZMV096TUVWeWVPT2R2cWVyd2tFRmV3QlcwWnBFaFdmY0x6?=
 =?utf-8?B?TG9lVmplb0UxaWY2Wkh6VmV4MUxlL3l6V2ZUazdEVkkrMVJqeE8ycytxeldT?=
 =?utf-8?B?eEtsRk1tN2oxODNZMS9HZmEzRFJCaUZwUXJ6Q3dVbU1KbWc2ZG9ZYWlJZVRt?=
 =?utf-8?B?NlQ2UWVGR1A0czJzMEpOLzR0SEEwTTdGRHhCanlZWE8wSU0xWmVSR2FNWWEr?=
 =?utf-8?B?cThwY1ZIS3lBbTluMUV2RnU5TnRhd2ZUaC8vcEN0ci96YVZzNmdQZ0FXYnFQ?=
 =?utf-8?B?b0FXeDR1Q3o2c3ZQRHFOMGs5b0Y0R2hPNXdvNXc0bkc4ZjZha3QrNEpTVWk3?=
 =?utf-8?B?dGxBUjZUeEQ2ZlF2cDBhOTlQOGtJTm1VZFJTV3h3NDdWK0oyOGdrVlF5Z3E2?=
 =?utf-8?B?cklTajM5VFk1TFlSZUVrQjVXU0hYR2pIaTdlZXNieWVyRVp5cGxuNnZMb1A4?=
 =?utf-8?B?MS84aEZ1cVFGS1pFNG9JeGxSeWdlTFF0ZllPREhpdmFrWjdoRkdha3pLakM0?=
 =?utf-8?B?L3g5aXQ5S1cyYUl2VXlRdzYvc0RxSWxGZkZiRmNmcUVwNE1TNEc1NGsyMUpz?=
 =?utf-8?B?cmZ0dXJpUFhhVkUwa0lhenpSd0xaSVlxNU9sMDdLdGxyTTI1THNyS0hsZlpN?=
 =?utf-8?B?cFphTG5VUC83andVNmJXamJZeHUrOWRaMWNMVjB4bHNEVVowSlFZODl0Nzgv?=
 =?utf-8?B?Q3dKY3VCS09DanpxRDNIOXNXeTluRitKWVhrN290U205ZWlJdnF5dFJ5TDNs?=
 =?utf-8?B?YlFHalBZcmxqVmozM1RoeGVYbDRyM0NBSGV6bWRHK3BMWmU4V1JPKzA0WUtJ?=
 =?utf-8?B?SEFuNXhEWDlEb3FlLzlzZTlMbEIwY3BMMXhNZ2N1TjA2U0xpZXkyb3VvanRx?=
 =?utf-8?B?aVhJVkpqSis0K0QyTFRwMVllM0dxOHhYWjlLd2ZlZEYrc2ZVZFc3Q3dzN1h1?=
 =?utf-8?B?OVljR1lKL2MzSFVQR1VCYnF5Ukc0d3RicjdwNGhTVVRXaXE0ZDR0MTlVbzBP?=
 =?utf-8?B?aEh1VFBuMmJUUTdja0lqSFpuNUk5L3FMOWZLQm5RS29RUE16RmUvODhpdVZ6?=
 =?utf-8?B?UjhPWWdhSjYvcWtZbXF0d1lRVkhGYUVWV2pXZGlNcGdOMjM4Znp0OGhWSitM?=
 =?utf-8?B?L2NPVVdrY1VMamgwdFZCekl3bmJCSVV5WXkrLzZRdm1rc3J3NUUrbFFNem9I?=
 =?utf-8?B?d29WdGR1Q05WTXplVHVlQlJtOG9UNmJhOG9iMDZQOUdLSmw2SmlIb2xLOWZt?=
 =?utf-8?B?a1dZN3Q2cEpUZER1N0xEeWZSaDErb05NdHhuNnYyenlEVWFOYXQrTDlBdjhJ?=
 =?utf-8?B?RzkxQ21pcnBWOEFDS3Awa2VBRUxUV2dBMjdDaWlUTFBhNFBua0xTT2xLSFF1?=
 =?utf-8?B?UHNqbllyYVAzVHNLdm5meFhEM2hpbmxXYTRHYjNQUVY0NGJLTk1OV1RUdE5y?=
 =?utf-8?B?QTFVeGZrL3FubURIdEc3cWZDZVNWcTBRL2JkZndJTU0zaEs3RVhFdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Efi5SDjcBnOpTnJibd2r84tm8EmQrJVLX3LmggQPTuex8CIrFbWyhF5PSk5D+tlvtIVfhmMHw2+DfgAwf2J8MZT5yW9CUkVbG+Mr5w+MGToWjnK9Vly7YdNGbzFCnOvAsfOJL3EHpKYfLTWyX6p9n83pPvnU2vsyGKBUho94ZSA3JrjaLykHQmtZI3PZunIRSw87Rh43MX6X4pHXfgZGi4Zgjnu3Vx9OG6lTBPTztGgAeKpX/Agyq6EJkWVCiS/wHvUS2mzr3egcg/0su6Kxp9m7ouUl6X+wEXyjQdXy0dK4RwcPI0A7yBTqra6SYFFL7Y4dNyMqge3Dw7dDQmBEvw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9450a4f-f320-448f-7cbe-08dec3087080
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2026 13:43:34.7135 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BtOfo6yUShcri7K8pMlBltzFZH6t65Le2juf1q6xyr9/594VykdybAA6DyUEdDOjKuXyVnrLrgHUPjPT4Qy0WA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4960
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[DS4PPF69154114F.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 11C6D6489D1

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogTW9uZGF5LCAxIEp1bmUgMjAyNiAxMi4zOA0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6
IFtQQVRDSCB2MiAwOC8yMl0gZHJtL2k5MTUvZHBfbGlua190cmFpbmluZzogUHJldmVudCByZXBl
YXRlZCBhdXRvcmV0cmFpbiBhdHRlbXB0cw0KPiANCj4gQWZ0ZXIgYSByZWd1bGFyIG1vZGVzZXQg
bGluayB0cmFpbmluZyBmYWlsdXJlLCB0aGUgZHJpdmVyIGF0dGVtcHRzIHRvIHJlY292ZXIgdGhl
IGxpbmsgdmlhIGFuIGF1dG9yZXRyYWluIHVzaW5nIHRoZSBzYW1lIGxpbmsgcGFyYW1ldGVycyBh
cyB0aGUNCj4gbW9kZXNldC4NCj4gDQo+IElmIHRoZSBhdXRvcmV0cmFpbiBmYWlscyBhcyB3ZWxs
LCB0aGUgc2V0IG9mIGFsbG93ZWQgbGluayBjb25maWd1cmF0aW9ucyBpcyByZWR1Y2VkIHZpYSBh
IGZhbGxiYWNrIG1lY2hhbmlzbS4gRm9yIGZ1cnRoZXIgbGluayB0cmFpbmluZywgdGhlIG1vZGVz
ZXQNCj4gcGFyYW1ldGVycyB3aWxsIGxpa2VseSBuZWVkIHRvIGNoYW5nZS4gVGhpcyBsb3dlcnMg
dGhlIHJlcXVpcmVkIGxpbmsgYmFuZHdpZHRoIGFuZCBhbGxvd3Mgc2VsZWN0aW5nIGEgbGluayBj
b25maWd1cmF0aW9uIGZyb20gdGhlIGZhbGxiYWNrLQ0KPiByZWR1Y2VkIHNldC4gT25seSB1c2Vy
c3BhY2UgY2FuIHBlcmZvcm0gc3VjaCBhIG1vZGVzZXQgY2hhbmdlLg0KPiBUaGVyZWZvcmUsIHRo
ZSBkcml2ZXIgbm90aWZpZXMgdXNlcnNwYWNlIHRvIHRha2Ugb3ZlciBsaW5rIHJlY292ZXJ5Lg0K
PiANCj4gVXNlcnNwYWNlIGlzIGV4cGVjdGVkIHRvIGNvbnRpbnVlIHdpdGggdGhlIHJlY292ZXJ5
IGF0dGVtcHQgdmlhIGEgbW9kZXNldCB3aXRoIHVwZGF0ZWQgcGFyYW1ldGVycy4gVGhlIGRyaXZl
ciBtdXN0IG5vdCBpbnRlcmZlcmUgd2l0aA0KPiB0aGVzZSBtb2Rlc2V0cy4NCj4gDQo+IGxpbmtf
dHJhaW5pbmctPnNlcV90cmFpbl9mYWlsdXJlcyBpcyBzZXQgdG8gTUFYX1NFUV9UUkFJTl9GQUlM
VVJFUyBhZnRlciB0aGUgYXV0b3JldHJhaW4gZmFpbHMuIElmIGEgZmFsbGJhY2sgc2VsZWN0aW9u
IGFsc28gZmFpbHMgYWZ0ZXIgdGhpcywgYXMNCj4gbm8gbGluayBjb25maWd1cmF0aW9ucyByZW1h
aW4sIHJldHJhaW5fZGlzYWJsZWQgaXMgc2V0IGFzIHdlbGwuDQo+IA0KPiByZXRyYWluX2Rpc2Fi
bGVkIGlzIHRoZXJlZm9yZSBzb21ld2hhdCBtaXNuYW1lZDogaXQgaW5kaWNhdGVzIHRoYXQgbm8g
ZmFsbGJhY2sgaXMgYXZhaWxhYmxlLCBub3QgdGhhdCBhdXRvcmV0cmFpbmluZyBpcyBkaXNhYmxl
ZC4gVGhpcyB3aWxsIGJlDQo+IGFkZHJlc3NlZCBpbiBhIGZvbGxvdy11cCBjaGFuZ2UgYnkgcmVu
YW1pbmcgdGhlIGZsYWcuIEZvciBub3csIHByZXZlbnQgZnVydGhlciBhdXRvcmV0cmFpbiBhdHRl
bXB0cyBiYXNlZCBvbiB0aGUgY29ycmVjdCBjb25kaXRpb246DQo+IHNlcV90cmFpbl9mYWlsdXJl
cyA9PSBNQVhfU0VRX1RSQUlOX0ZBSUxVUkVTLg0KPiANCj4gVGhpcyBhbHNvIHByZXBhcmVzIGZv
ciByZXBsYWNpbmcgdGhlIGNvdW50ZXIgd2l0aCBhbiBlbnVtIGluIGEgZm9sbG93LXVwIGNoYW5n
ZS4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29t
Pg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5p
bmcuYyB8IDIgKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbGlua190cmFpbmluZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9saW5rX3RyYWluaW5nLmMNCj4gaW5kZXggMTU0Y2FlY2FjZWNiMi4uZTc2NmY3YzMyM2Y3
MiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9s
aW5rX3RyYWluaW5nLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9saW5rX3RyYWluaW5nLmMNCj4gQEAgLTIwMDIsNyArMjAwMiw3IEBAIGludGVsX2RwX25l
ZWRzX2xpbmtfcmV0cmFpbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCQkJCQlpbnRl
bF9kcC0+bGFuZV9jb3VudCkpDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gDQo+IC0JaWYgKGxpbmtf
dHJhaW5pbmctPnJldHJhaW5fZGlzYWJsZWQpDQo+ICsJaWYgKGxpbmtfdHJhaW5pbmctPnNlcV90
cmFpbl9mYWlsdXJlcyA+PSBNQVhfU0VRX1RSQUlOX0ZBSUxVUkVTKQ0KPiAgCQlyZXR1cm4gZmFs
c2U7DQo+IA0KPiAgCWlmIChsaW5rX3RyYWluaW5nLT5zZXFfdHJhaW5fZmFpbHVyZXMpDQo+IC0t
DQo+IDIuNDkuMQ0KDQo=
