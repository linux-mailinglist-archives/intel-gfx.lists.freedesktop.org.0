Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGihEugkHWq6VwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 08:21:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DF861A17E
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 08:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBBA4112E1E;
	Mon,  1 Jun 2026 06:21:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eUX7ySdd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8844C112E1E;
 Mon,  1 Jun 2026 06:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780294884; x=1811830884;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e3JR/92KJrPB7t+LLvWjOv1KxXlbsBTnw80+0TxImGE=;
 b=eUX7ySddUTCfzKTgQWHWKCeQ3zSjB6IW2khT8wjr92unPLswuRptvYmT
 JP0JwDghlm1eyeIccE7s+tvmDUxUqKCxEKB1ja2BvEUIMyoWHdArevG0x
 bSHUJToDJBCoxh1aXGTNyWmsusAp3acjPLRRGwbT2zq/QHzZQaaZ7A8+z
 agpr0jUIkjL6aT9Hshl5zHvPlAptn3QvgnL+H5/aqwcRICjlelmM4aIfk
 SR0Ee4+PM0sVJEVB5fr7zotUrRSOOnYpHz+l27L0VrSkmVKs6409Hq0h+
 SxaOlyC/C2fCtaXARjO3nrE6Q4KddkvgKJKo9NsgAO+cSlPJn5HDMPLZ0 w==;
X-CSE-ConnectionGUID: yxJd6F4rTeaFcKuZLjKlrw==
X-CSE-MsgGUID: McTI70zoSCibFSdNpZpgXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="84905040"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="84905040"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 23:21:24 -0700
X-CSE-ConnectionGUID: tH9Is8yBTmqDUH06qE98Xg==
X-CSE-MsgGUID: yJJ3EZfQTWeNMvZHiD489Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="245307166"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 23:21:24 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 23:21:23 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 23:21:23 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.69) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 23:21:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pDBmRQDK4Of810BgMOPM2rLU6T/PqQv8uB25h3VBNl5jBaUo2nf13d5P1nyIzWqAGPw0veZcKF+1talFDC13MhSa7SWhzQqYYkipZmr7gMTpmbYqwudaqoVeOlEvRE0usQl40TMASHfJYFFxouapoLKyzlEhgtAXXCkxVGjgL3NUgddZIh5JxUSjEvnuYUNidYVit45lL6u2JYu3IY3pJGPJS1ztPjqklnHhxpFpVvGtEv+mu72gtk/vgpYuYNVnE9+pXRgGPyeRd6YCk9/Sw5RXLwXFQShz0pONZE7JyGHD6Y/nezAxZD0Xxl1TzHDRDHs4Jmvvt+b6h6APvGD2Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vRGz9gOA/uZOBKAPYBzDAcfeFqxvhjddZ/28W7tqRzQ=;
 b=MPseiAK0spsnTDyH6NMU6X5/73pop9itggjwAgFyvzHhoYS29GvRTZd12WPblYmrBBQAoCvLIyFnL6F/e6dy3aNV+u+e7SX890dSMY9nfD4ce9uptTd8Qle/46osl/Sht7jx1+bJXwI6PlNessbyJGuMsIsomkx1KyXLMooqLSsPQp4OH4bRoK0iQG8vW6t9CtFz/8E8JWO6NOjPuv/zhJ2WIZE1AZwA6Cqfb/BQEFNkDWBtJ+FWIHeBx57NmLIb4cqsQp85qy6csob3XknolNJqzYVkZidMEFBzOLwHhcxciXhef0yitQVknP5KwPA69qnULXWq93ID55/eSjQV/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA2PR11MB5163.namprd11.prod.outlook.com (2603:10b6:806:113::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 06:21:19 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 06:21:19 +0000
Message-ID: <d5737f38-0339-4a6a-9c81-eeac3930602a@intel.com>
Date: Mon, 1 Jun 2026 11:51:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] drm/i915/color: Fix step discontinuity in Post-CSC
 Gamma LUT
Content-Language: en-GB
To: Sean Paul <sean@poorly.run>, <intel-gfx@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
CC: Sean Paul <seanpaul@google.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>
References: <20260528230817.2455072-1-sean@poorly.run>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260528230817.2455072-1-sean@poorly.run>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0025.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:17a::15) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|SA2PR11MB5163:EE_
X-MS-Office365-Filtering-Correlation-Id: 54516fe4-0bb6-4abd-afc3-08debfa5fe4d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|6133799003|11063799006|18002099003|56012099006|22082099003;
X-Microsoft-Antispam-Message-Info: pbLnLtNOpA3qfBjl2BcHhLw/fZegZJWz8OR5AfPV9SLUqbz1CHUkWoZQ2gh+FctTEXcUYHkTttr/gvRwtGYVgUY3PUdKQDrlDJ3qJU1/J+Dp35tXWrV7+JRHWOQZxtmVL22bilCRm4C0tEgtPddkvqkKJr/ocor2f1sXODADFG0Oh9gNSZgsjjZhxO+t05iyDoij06U9Ktx1xcyL1fVSr/Mc5oPbhpOaPg4JX3/AryviKvLk0O5ynCc8HUHOy5dRf0xZQjk8G0C3TAl7tqme8B+MiP3iDLHvNJcOEmAscvJc7ZK54odr0g77R8gz/W1hvPtVXRqkdaGSxhkoLxldE0PXZYlOqCVuxzE7sC1kXtqq9Tu0BHmHwnugxSy6zfPJkv+aNeifUZHYUzmaHNuMEq8Kq7c8oS0Cd2VmN3o/joFVkX1e2AmL0e8hiJeZP0BpqC62TDftJtQdEpiB1hqb3yn1gMyfXATw0Z0HvfFIZBvh67xyCKsVdp5dODRk+mlVXEoNgxnQ2KbihFG2gfI+QsJf3Hp+5U+xgk8cjstGqpsFeeLx8Ef0TuE9QL2sklQDvG5sffDdGdH9yQcRE5SGwHaJiiYk5TqK6kVPvSM+FU+6sfE7hYZBqtlc0Qtz17NthrM2JxzuOM5sqYV5vhbMxg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(6133799003)(11063799006)(18002099003)(56012099006)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d1BkblAveDljNllLa1dwek5wNVBrUEt5U21YK3k5MWdJSmFkZlpWYjRKdUwx?=
 =?utf-8?B?N3BRNnNPRVN1bkJiRnBKbllQcmhPd2JUTHB0MS9nenUwamVxeFNYV2VUWm43?=
 =?utf-8?B?RjRmTzNEQlkwTmhCODl4c3BDTGFiaHMrU1JRRTc3aGtWSVVidmxZS1NxaDJV?=
 =?utf-8?B?MDVNZTN0REc3T2gxY09RdHpqYXh1NzVuTWVreTF6Sm5jazNxV3pvZnRVSjlw?=
 =?utf-8?B?cmNxdjZQWWhyaG83TFlBRjVQM0dIcmtnRmt4bnBGWnZhaGt5dzlqOW5YeTU1?=
 =?utf-8?B?Mm40ZDcyTUMwSTZ0akV4NU9oSlF2ODFaRFRaRjVSVG9qT2RKZEM1YnMwS2VH?=
 =?utf-8?B?TTFCVlhDS1ZiaGJVWmlkeVlUWkxIVEhRK1lsOW90OXcwemlManZpRUxDNFJ2?=
 =?utf-8?B?Q2grOS8vWDd6dUN2S2I4TWQ4UVRTSnpGbjlyUkU2L1BwN3dJM0FHS0dNZjFy?=
 =?utf-8?B?MHdqWXFNUTJQa09Hc0JjU0NRNmZ5aERFWnJtYm1QckFEUVhUNzdOQldKNm5Z?=
 =?utf-8?B?N25NT1ZQalBxbW5NRUlvbXhtMU9XUnlyV3JaQlg4czRzWisrS3RUM3lvemsw?=
 =?utf-8?B?L0VKcGFweElvRk5uVTdIcitHc01QRGRJa2Q0K3FnVCtUc2dxSiswS252SWlT?=
 =?utf-8?B?d3NET0Y5OWwrN2Z3OVZzQ2FiL2hFdFoyM3oyYVdZSUZnR0VlR1JYdWJaNXNM?=
 =?utf-8?B?SnZSb3NTUU5Sc2tEOXBkMUVwU1VseGI4Zm5icElPMHNBNUZBY2h6S1doZmRZ?=
 =?utf-8?B?blNvYXZZSnFiT0F2S3E3YnRuRU4zZm45WnJPTStkNTExUnpVU0lncmo0YVhl?=
 =?utf-8?B?WTVLTFlvbkFBRG9XMVovOHZVYndsWHBUMFdadkxnLzUyMXVHbEFtZXJSVGlr?=
 =?utf-8?B?SHNRWDNSZlM2R1U3R3p4QmNuUnBtN25ZTyttdDNZa0hEU1g1dDFoN2QvQWNF?=
 =?utf-8?B?emIxWjk3a1hrUVhlSVZoMHo5TUgwOGlhaE4xMGNCeVdZa2lCYUxmRjV2bEZl?=
 =?utf-8?B?K0FFN21lWkx2ZEVMYjFiT2RxWWt0Y0RnMlRmRlNVU0ErUmlNSW96aHNXeHc4?=
 =?utf-8?B?VWpsY0hPTTk2NWJkenRFOG1BTHIrU0xOT0t2c1E4b1Era0RsQlgyaU9SNm14?=
 =?utf-8?B?endnUjB2Q3ZHK2xaUWJFa0YwL2JiSlNQeFRQODJob1Z6WERoSVNEU2Z6OE05?=
 =?utf-8?B?ZXJFdG1WSU05d0czVHg3VnVGandwUUVJcXNsRDI5VHE4SXFscEFFeHZVT2FB?=
 =?utf-8?B?bnZPM3FKc3c4aHVOajBTd3pGUEYrelg5cEhRUHBWbmNkUlhlcWIwOW9NWGox?=
 =?utf-8?B?VUtCWFVnZVdvTk4rQjlPdUg0SmtBSkR1SUJqOEh6ZnRiVW9jbzBmUWNod081?=
 =?utf-8?B?VG9TSld0SXhlWVUzY0c0NDRwamRCVGxjU001YWJNVTZSUnR2UDJUVURXZnJu?=
 =?utf-8?B?bHpOQlR1M05WTUdEMXVaanZ4MHBBUUlzbEt0dWpmTS9DY1NCTFFuYnlQVkJw?=
 =?utf-8?B?NnNhZVhTS3huT2FmUXRJeUNYOGlmQU5iWE5meTZYeWora0x2UkVadkt3UVVN?=
 =?utf-8?B?RTR0QjAxdnBuWlJ0dTlXS1pRQVhmVDNFZWR0bHZqMDJ5ZFg3eW5NRE4zZ0I0?=
 =?utf-8?B?a3JpWHUxS0hWZys2MGdjM2h4WFlSYTdnbEdXVEhneWJJNlczTFVGWlppQlAy?=
 =?utf-8?B?bUdBc2xPQ3VpNTdkWCtVcElGTE1EbW5zd01OMjFLRmxzZCt3WXQ3Vk80RXM0?=
 =?utf-8?B?S004OFZvOVU1RUczYkVVS20xNUE5dFYwcUZaVGE4S1Zub2NnQ3o0bS9zQjBw?=
 =?utf-8?B?Unc5TldITTFjTjM1em91aDJkQkZYcU1tMFlTcXF1MGFudVVJUlRxcExXTnkv?=
 =?utf-8?B?MnBJdDFiMWpNc2dnZmtKQk1MQUdOaVRZV0dtN3lySzd5aU54d0oxVXp4QmFU?=
 =?utf-8?B?WDhzRFVPcFM5K1BvRGZod3lzNzNjOWNjb05BUnRzNXhEVVM1Tk9nOFVMTzBy?=
 =?utf-8?B?eEdzTGE1bzl0Zjh1NWM1czFIOFBMM0pzMXRuV3FtMGk4K1NKZThWRUsza2U0?=
 =?utf-8?B?UDFiQ1ZBWExzUDdrbDNaV0dLQ2QrUkJkRmJRUDcwQVFXM2J4MDdUWS96Rzl5?=
 =?utf-8?B?cmc4WE5PYzIxZklHQnh0dGJGajlvNVV1bndNN29MOFBTazB3ZlVWS2dtVmhO?=
 =?utf-8?B?ekliUTNyUTQ2SXhXY2xVK3Q3OC9jZ3cvVGNRaDlSbE5RQ1E4Mm1JZGhDSDVE?=
 =?utf-8?B?a3BHNkJlKzFRMUFhSTlNN2R0T1JHVThMb01qZ3hpZVdwTFRNSUFMZFpxd0Ex?=
 =?utf-8?B?RklyNFZZcDZTTm9OWVVKMkc3UWxUaEg0NC9EQU5vSnVQcjNmZzhKU2E0UjNi?=
 =?utf-8?Q?LTnwLwDQqv1MNb4A=3D?=
X-Exchange-RoutingPolicyChecked: fORaKgfYpk/AvPAv2vsF4aufpTakpq81bO6xL6uidVy6bRC8Rzbkg/lQZomtBFrlctyvl56YDwqmDvMSS4DMALQLhuK8qgQsOI/xySYA6cqmCyOzda1shG4cvTm/DL7DQrgoH+YcTTcHC7Pwn33/wtEevueHbK9Gse7B96ywXDZrTa1sVNpfyKFGe0vANjzloWztaCVj8o+E6hTBx4mBGXgjM2jLNafP9t63Bnn8wAdVaGvKvlaKVgiwF+N2yfj/OoLHwinHde+FhGJ4gE+nt3DBsC1Y5XnErOPl6bEvUS/zyXAcuCf/P4UGUt9w1wAayrGNzPVnrgVIxJgYEyWbUQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 54516fe4-0bb6-4abd-afc3-08debfa5fe4d
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 06:21:19.3237 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L1ATFAGarMbFJIdPrBzu4gesdzRQH8+PhOy5Ac1epVpdOQRJCXAqv89+sAUjR68NcE4ARPOPqOfHMOJFHKpRFALKcIlTG01OtufQrWsPBXI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5163
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[google.com,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 96DF861A17E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Sean,

On 5/29/2026 4:37 AM, Sean Paul wrote:
> From: Sean Paul <seanpaul@google.com>
> 
> Fix a step discontinuity in the Post-CSC Gamma LUT when SDR dimming
> is active by clamping Segment 2 to the last user-provided LUT entry
> value instead of hardcoding it to 1.0 (1 << 24).
> 
> Signed-off-by: Sean Paul <seanpaul@google.com>
> Link: https://lore.kernel.org/intel-gfx/20260521180143.2143262-1-sean@poorly.run/ #v1
> Link: https://lore.kernel.org/intel-gfx/20260525135730.1122696-1-sean@poorly.run/ #v2
> 

We might need to trigger a CI run on intel-xe/intel-gfx since your 
"poorly.run" e-mail id (unlike your google.com id) is not part of the 
"allow-list".

Otherwise, with the assumption made in [1], LGTM

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

[1] 
https://lore.kernel.org/intel-gfx/DM4PR11MB636049BA2E517A22FB43A404F4142@DM4PR11MB6360.namprd11.prod.outlook.com/T/#t

> Changes in v2:
> - Split out into separate patches for pre/post csc fixes
> - Dropped loop bounds fix in favor of [1]
> Changes in v3:
> - None
> 
> [1]- https://lore.kernel.org/r/20260519075245.383864-1-pranay.samala@intel.com
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 7ef870cd9a16..7185f3628dcf 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -4038,11 +4038,11 @@ xelpd_program_plane_post_csc_lut(struct intel_dsb *dsb,
>   						   lut_val);
>   			}
>   
> -			/* Segment 2 */
> +			/* Segment 2 - clamp to the last LUT value to prevent step discontinuity */
>   			do {
>   				intel_de_write_dsb(display, dsb,
>   						   PLANE_POST_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> -						   (1 << 24));
> +						   lut_val);
>   			} while (i++ < 34);
>   		} else {
>   			/*TODO: Add for segment 0 */

