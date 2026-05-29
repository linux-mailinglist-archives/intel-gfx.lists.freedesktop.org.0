Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPggGLiiGWptyAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 16:29:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C3D603922
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 16:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EB7810FFF8;
	Fri, 29 May 2026 14:29:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aurhhQyW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EAB510FFF8;
 Fri, 29 May 2026 14:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780064949; x=1811600949;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q1HzKvPNA6wgVrce72AAl3Qh3cwlfglQVjVDR5LTpj4=;
 b=aurhhQyWo1/wNSU3VGdK7rEwhCKa8ZJAH0Al9OVHV3vJf8IWQVrfzPFT
 UBiJdNt24k4T1X2eEfOGJ77essx7BNeGrA3QgAENAKkVly4SpFgKUAC0W
 Wsd0SkWHHjhjSbSg+tNEOkyx2yc5hg+d1/f3l7TXnxvjPpz9edlbbWUZF
 cilXHjxhPwAA6AOdffHzb4mNLCAdvGezIwBK2Qhf2mpg0phi1sO/HSsiz
 adZ1uvo+4AnifpKM31F4nnsfab4W561XTTWc0MwLKFpQkeVLcBCxJXB2I
 S0FqfRh7LICRlHGQ7imdBDrPBhhPyqFzt36mfZ9ZlNlsClcTU20u/0cYb w==;
X-CSE-ConnectionGUID: Pf7pajyNSaqhBlYJDCrusg==
X-CSE-MsgGUID: fvNpEf6nRNSA4fCpbOgOXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="80889555"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80889555"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 07:29:09 -0700
X-CSE-ConnectionGUID: 13Hdn8E+SUmwoqyLbe5Bxg==
X-CSE-MsgGUID: ByXxtZqBQNizO/3nNtMCgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="238473505"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 07:29:07 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 07:29:06 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 07:29:06 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.4) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 07:29:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JsKETYcOB9qcIc8e3DzldBbGcK2HeePtJ0tf7AyF04aqWCBf/Dzp8Xh30E7sao9HkRLQUeCS1nvrS1SQe4Izh2hRp79VdDPkTDApZpNiVaw/t7D2c2+fIjhiznwZo639pIvA5ApIMbehYCM61gQHmoFl5XeCWKTi7LAnz9rtK9tQJ8hF4nWV0Qd7Qu3ACF8QEB3FItuV3CHJcAOfJkoEf38XpeULtXwoZ6xUG/wSCqpywWXLpjvVdXgq4lA7UflA0JnQVuUumf/lL3nDwBmbtpLxZTVq50PkqzpJMBmy/ddUOwax3H6wtjwJP6QQmUTNi94SS09ogISSrGTWpJdRyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=btUtHWheHoOpWBm5I5+B8Glwe/CKCzWSNRPOrdSgeUU=;
 b=p87yZDme7vfTSmMrf6G9XPFdsE6cuSxQjeOb/uPpWuTuoD/9VV681yJJMUYbAkQ9yDHemQBpPw/VuNYbMjz9YDLvtAaelgj0i+7v9vVG1XY3jhCyG51lfZ6rYRitQAuoHTBQTsiY+4OHTCLphBA2/l8jf2oiEOroll4XUacSIj9dzlyu0ZTnNzq3Zw3FxmWr/DS2hrLfemJ5ytZJfikAaF5oAoMQAf42hJLZvDyTtggJlRGsQiOc37+yx6+80at3R2HlzdkGD7S/PX1UX5BMsnuEmow1ySSsQFEMtsLYhTjsO0NFKJKRB/kIhOB/AyQNmbtD67QSuMdYSlCDlm/hxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DM3PR11MB8735.namprd11.prod.outlook.com (2603:10b6:0:4b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Fri, 29 May
 2026 14:28:58 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0071.011; Fri, 29 May 2026
 14:28:57 +0000
Message-ID: <dc7e8efb-f1e0-45b0-8a2b-e93f64503082@intel.com>
Date: Fri, 29 May 2026 19:58:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 13/15] drm/i915/cmtg: Add trigger to enable/disable cmtg
To: Animesh Manna <animesh.manna@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <ville.syrjala@linux.intel.com>,
 <jani.nikula@intel.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
 <20260526133811.2621675-14-animesh.manna@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260526133811.2621675-14-animesh.manna@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0149.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d7::19) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DM3PR11MB8735:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c496110-89c3-4f3f-ca33-08debd8e9e8e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|11063799006|6133799003|4143699003|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: QPnvl/9a5131Z8NinoJnCJ8robuUkn3ysH9apv6d/ZG9zN9vfOZU3MK22TUcRhcwzFPSCbt90a2e+jfBYyStCcakSVjfGdqeIzmMZCjWTKQlBEc8LZ/VZczr+tUR0xiwBhMNd0oz8+7Ptr0b5y0RD0kU9nsVSm+pVcvga+qPWE7bdCcbPoMkq6MxyWHt94liDkI/XzxFrV8C//aSPrF35CJt0Y9tyy/x8TMEEd02SyRWwsFSTswwwyBFMAYNBUf7BMBw6JABn3+VCS+tONEaGhuKC0uNcBi5M8NF5p3SGq47MM/viW4LTvvwBNuk+JLQtdmw6+/NEqsQNU6C3lOfDyYc4wuD+WvaC+mGpRetyaA3rKqF88cVj7jZlPiWUMB1svayUbvO0SXdsZh2GMCEh9gESLiHTYEMvO9fcFxpOvW10VWf1836m59ty2eiqDoi6QL/JU6sIJp7WM8DMYvhkTopM9aaelNX4HWYO89cLfqAE9xlIdH5q5yRYlt1NV8JuJ1Nr+aBytbvMhtIHwFE4UapC+JsdhlkbLEmMhdPRgAv2nT9ulJP8yYS6SGQ/AvEmPF+5xntgXBU3lktimmqdw9C+IxHqbTQULgKxnKW+EyHi05hzl1PDMmCSf8lAFKhukvjALXPsjjnN0ZNp3GpPFxpH80m4RQW79X598QHGK6p2+W90aUr5ZKLHqaIAucT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(11063799006)(6133799003)(4143699003)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2dldDJOa0lkVUpndTVkeU90aUtqYUIwbXlicXg0U2oxbHFqWXlwSzZZZ2Zy?=
 =?utf-8?B?S2pkSHhDSXNMK21TSlpvQkJaZTYxdmRlYnduN0ZZQ3V2MEs4NzkxeSsrV0hm?=
 =?utf-8?B?b0REeWM2dkFLcUhwRG1MNFlZR1JsOVBRWm5lUjhkZnM0aiswNWRZOVZ2Ti9p?=
 =?utf-8?B?b3dERVFnUVRpRWIvYlRyc3h2ZHNJb0l0UEpQRExNQlVFR0xzSFN3engra2c2?=
 =?utf-8?B?K0R3WURRWnlQdGR4Qk9mb040cmRXYW1sanZodlFFS0dDWVFDZnA1c3ZNVWk2?=
 =?utf-8?B?SFBkekpWa3lMZFVQTkdTWmk1SnpGajRqN2pvT1FQaEhLU25XenBsRFZhTVZi?=
 =?utf-8?B?SUs3UDI3Z3h4NmtKSlJRazhWWHVJbEtIb0c5OWlheUdVdkZ4d2dMd0M4ZEMv?=
 =?utf-8?B?MHh3S001OTlEY21kNEZGRmRTMVhpVEh6TkpHalZaSWdNUSszRzVMUkwzMzNx?=
 =?utf-8?B?OU9NM2xnUHJ1WEpPZm9xblJuWjM2TnBMdkp1ZjF0ODBjYURXZmxpODBiSjgw?=
 =?utf-8?B?U3lEalhNb3owU0h3d3RiVUtjcVd3bWE3aktrc29COGJDTDg4V2dxZC9CTGN3?=
 =?utf-8?B?RXZJNmdjMFEwRFd2YVVzai9XUlRYRm5ZRjNQOWxORTlYczhXUXVOU2FsZ0l3?=
 =?utf-8?B?ZzE1VjhSNEJVeU1Vb3hBU0JVMWplUk5WTUVGVkxsa2psYzRhS0duWnRmUzBJ?=
 =?utf-8?B?VGF0VzQzamFqdkV6aDNsWGppR2E1NVR0c2llaW9TMFBhYk0zcU1tWVR4azYx?=
 =?utf-8?B?VGlIQ2Q4MFE5TUR3dG5yL1dIYUtWWklWd3hlSjZsZVFqdFB2SVBNSWRQNXFD?=
 =?utf-8?B?UzZlaUQxYVpkZ0ZMdGQvUGdYY0grRnhVSm9xM2creXdiQ2pHbzJ0RHExV05v?=
 =?utf-8?B?a3N1c29PUm5hRmFVd2lLLzVpcnd5Wm1qY1lxTnR3YTI4MFdLN05QcG5XOVUw?=
 =?utf-8?B?NTZkNGQrYUlnQkNRQnAvd0NMQ08yL2t0UEdvVk94d0dTWDI3M0RxejJtWmJU?=
 =?utf-8?B?bUJPSUptTTRGdHNpT0diam45eWVEVERkaFdpUDRwTDBPVHQ2QWV4TGZWckpi?=
 =?utf-8?B?bDdhY1BWcjFlRlNCNmF4M1hHbmVreE9wTjFUMFljUXNpVHhSMEhoVmI1ZDY2?=
 =?utf-8?B?WFJiK0E5YWVKcFhTSHlLY2thdFlaQnBuQnVQVnNSSlFkdmRJVkZTd3NYajVJ?=
 =?utf-8?B?N2thdGNJalZvZnQ0R1VDVXBjajYxYlByeW93eHREMG9tMklHemFvMEVwZWNv?=
 =?utf-8?B?aHdOWnV6Nlo2dnl4QlcreXErNjg4MVowWGRPdGQzekFaWWh4UHlzWWFzWDgx?=
 =?utf-8?B?Wm1yeVV2Q0g2TkZ6M0V0bFJ6S2ZxaDRVUGM1N3lHWWdzUWQ3ZEtmUm5QekVV?=
 =?utf-8?B?VWF6NHhRVlp6T0pPZmlsRS9tbVFMTC8xTXlUeTNsdDNiNnpUUXd3MnV3WUJR?=
 =?utf-8?B?aDkzd3BuaW50emlMMGpwK2hDY3d2MU91aU13UUtWclFJdngzWURvV21LUnAy?=
 =?utf-8?B?TWs1YmZGaEFId00wMnVWbm5SejdYN0wxWW42dUlJOTFVK3REd1pESy8rZW1H?=
 =?utf-8?B?TDZkOXhrMXFkSTZRVWxDRVlnOFJWMVhhWE9jRVd6cUJGYWpwZkg2R3BxbE5L?=
 =?utf-8?B?YlNFUk1RN1NaQjcvRmc3dklCT2c3QTU2c2E4b2phZWNpamdGdUVLRXNyekR1?=
 =?utf-8?B?dWNEcVZDUjRGY2RBSnJ2NFQyQWtxMUlwd3EyY0hiaE5pNlZobnJ4U283QmRt?=
 =?utf-8?B?Y3JTbDI0cEkxT2lydGJORWdrV2FQand4UHZaSUN2a3M5Slp1TUhkOHVrWEhN?=
 =?utf-8?B?K1I0Q0JGNVdFUTZCTXBtZXllQkN4ZDd4Uk9vSUJJcUtPNFFQQmVscjRwcUl0?=
 =?utf-8?B?eXV0RkZ4Z1gvY203TFVLbGVZc3dJT29GQjlrNERGTUZlSXByS21INmE3ZitH?=
 =?utf-8?B?UWlLNXp4aFU1YjlnbXRPQUszaGhubFV1ejNsY05ucjVLTXkxOUh0eFIvNFFz?=
 =?utf-8?B?SjhJYzlneE9JWjR4UUZ2ODhxSXJiYlFickRCTlBaQTdoRGNaK3h1elYyamF6?=
 =?utf-8?B?SGR5SHQ3LzY3L3FuUy82S0V0VERieWlDMFA0MFhsd0NrdE1Ha1FKQmpsODZh?=
 =?utf-8?B?OEpVTzVPVWpXWTJsc2xUalMwQTB0QWdmNjN5Z0M1VzJqdkJsY3JRdHo4dFdG?=
 =?utf-8?B?SlFBS1hURmJjWlFrM3hYUEJ0QmhsdFpURG8zV2JNV21ueDBoSnJHdFR0S0Z2?=
 =?utf-8?B?ZHV3VUw3ZjZleTVFeElQeHFRR0ovcnBocXBGUGFJSFNwSjQwSlpNc3VnZUww?=
 =?utf-8?B?TGhjcDdMODltTFZ1eE1pU29vS2FUZDJmUnlxcXJPWS9EV2FxdWx4Qk1nRDFn?=
 =?utf-8?Q?uZ0JsrEAeRGFp26/gYuxpXlcj/U9QGW8ZAvYQ?=
X-Exchange-RoutingPolicyChecked: BWWgYXUKJrRtyXuvpcHbedkrg4XCJqxmuVM8b1pFBDHj65tjMSgZVfFxR3bu2lAj6ny3QqhUCQ5/jK0LagH/faHJRvt4rLC6Bwd0ivT1nddhfvvvSc8Eca/0HnJ8QWy9lZLDyY8C+zQOLKgUR+Qh6iXR7U+Sw+fdmWWxxggzMwTaMchyqcXTQ26BXAtm8ipPt3FRsLqeiS7br/iWC1Q3oPiI4JSKe6F8I2CY8UzGz7yP0u44VEROfY39jibLBFKCK3/rIueHLp7Sa88t2l7FeqN9faIVxIam7kK2KFVp3zJNL/p89QMV0s7PZ0yljGQJa4WyeeGagT2FGQvDBiMR+A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c496110-89c3-4f3f-ca33-08debd8e9e8e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 14:28:57.8191 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A4yYx+ocB+9MNUJOomrQkGnnjVsZwSU1gatyT6oj52HsQGtf32qxf82bCtUU0z6ViOghcmCrOUkZXZ9d9cZBoxHdXywTszf3TSxvlPh3H56WrJHSCSl9wCwoxoVwZ6f4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8735
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: B7C3D603922
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 26-05-2026 19:08, Animesh Manna wrote:
> Enable CMTG with fixed refresh rate mode and with dynamic
> dc state enabled.
>
> Disable CMTG with transcoder disable or if there is a transition
> to vrr mode from fixed refresh rate mode.
>
> v2:
> - Move the enabled flag update to avoid issue in the disable timeout
> path. [Uma]
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cmtg.c     |  4 ++++
>   drivers/gpu/drm/i915/display/intel_display.c  | 24 +++++++++++++++++++
>   .../drm/i915/display/intel_display_types.h    |  4 ++++
>   3 files changed, 32 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index a0413013ec43..d808c62e14b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -173,6 +173,7 @@ static void intel_cmtg_disable_all(struct intel_display *display,
>   void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   	enum transcoder cmtg_transcoder = to_cmtg_transcoder(crtc_state->cpu_transcoder);
>   	u32 clk_sel_clr = 0;
> @@ -180,6 +181,7 @@ void intel_cmtg_disable(const struct intel_crtc_state *crtc_state)
>   	if (!intel_cmtg_is_allowed(crtc_state))
>   		return;
>   
> +	crtc->cmtg.enabled = false;
>   	intel_de_rmw(display, TRANS_VRR_CTL(display, cmtg_transcoder),
>   		     VRR_CTL_VRR_ENABLE | VRR_CTL_FLIP_LINE_EN, 0);
>   
> @@ -395,6 +397,7 @@ void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
>   void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   
>   	if (!intel_cmtg_is_allowed(crtc_state))
> @@ -403,6 +406,7 @@ void intel_cmtg_enable_ddi(const struct intel_crtc_state *crtc_state)
>   	intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, cpu_transcoder), 0, CMTG_SECONDARY_MODE);
>   	intel_de_rmw(display, CMTG_SCANLINE_GB1(cpu_transcoder), 0, CMTG_HW_GB_ENABLE);
>   
> +	crtc->cmtg.enabled = true;
>   	drm_dbg_kms(display->drm, "CMTG: %s enabled\n", transcoder_name(cpu_transcoder));
>   }
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 354eca79bac0..36ff17b88be7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1771,6 +1771,9 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>   	struct intel_crtc *pipe_crtc;
>   	int i;
>   
> +	if (crtc->cmtg.enabled)
> +		intel_cmtg_disable(old_crtc_state);

Should interrupt disable handling also be done here?

Also, since CMTG registers including clock select may be
lost on DC6 entry, could `intel_cmtg_disable()` timeout
during suspend/shutdown?

Would restoring the clock select before disable help here?

> +
>   	/*
>   	 * FIXME collapse everything to one hook.
>   	 * Need care with mst->ddi interactions.
> @@ -6868,6 +6871,12 @@ static void intel_update_crtc(struct intel_atomic_state *state,
>   	if (intel_crtc_needs_fastset(new_crtc_state) &&
>   	    old_crtc_state->inherited)
>   		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
> +
> +	if (crtc->cmtg.enabled && (intel_crtc_vrr_enabling(state, crtc) ||
> +				   !intel_cmtg_is_allowed(new_crtc_state))) {
> +		intel_cmtg_disable(new_crtc_state);
> +		intel_cmtg_disable_interrupt(new_crtc_state);
> +	}
>   }
>   
>   static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
> @@ -7545,6 +7554,21 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>   	/* FIXME probably need to sequence this properly */
>   	intel_program_dpkgc_latency(state);
>   
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		bool modeset = intel_crtc_needs_modeset(new_crtc_state);
> +
> +		/*
> +		 * TODO: CMTG needs to be restored on DC6 exit and DC3co entry condition
> +		 * need to be checked before calling CMTG functions.
> +		 */
> +		if (modeset && new_crtc_state->hw.active && !crtc->cmtg.enabled) {
> +			intel_cmtg_enable_sync(new_crtc_state);
> +			intel_cmtg_set_hwgb(new_crtc_state);
> +			intel_cmtg_enable_ddi(new_crtc_state);
> +			intel_cmtg_enable_interrupt(new_crtc_state);
> +		}
> +	}
> +
>   	intel_wait_for_vblank_workers(state);
>   
>   	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 1c0c32c4e43a..74c719b52759 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1573,6 +1573,10 @@ struct intel_crtc {
>   #endif
>   
>   	bool vblank_psr_notify;
> +
> +	struct {
> +		bool enabled;
> +	} cmtg;
>   };
>   
>   struct intel_plane_error {
