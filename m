Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 236D29B0EE7
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 21:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC66A10E021;
	Fri, 25 Oct 2024 19:25:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eJKGWHpt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB83110E021
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 19:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729884335; x=1761420335;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=wTQxCI1ZdBWA67Bh/IgN3JtcGAvICn8aSDF6Cl04bMw=;
 b=eJKGWHptQCzH77nY6SvJA1oodxAidTrn22mnIYNg6B22QsoBqjJY5Gfr
 vXbdyUJXDt3fRc52kIs0wmcnLFpb5eCz2sj5BqG3Y0e8PUayJdE8KuHxf
 wQqC160tqmsJKH9HTdJRcS1/cwVIJfv48wel383t4F4DLyrf70LjblhCe
 wdfQZWzIbAJ4PoJq6tY/0pQ9aTew8sZqWf4Sj60HeVegxUrIKMDYMaY/Q
 l0ryRThYlQb1BJfjNfPBgr0Kobt1wDsB42G5yoEgBZAPHz4UHoWD7i1El
 IbHQShIqREoXJa0LAUnEYQcLlH+6dT1fP4WIu+yQu3t2rLyPd1joUV+b2 g==;
X-CSE-ConnectionGUID: adopJsZeTeSDlCkUXyH7ng==
X-CSE-MsgGUID: 7RF5oUyMQcqaVV6eKxAU4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11236"; a="40956025"
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="40956025"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 12:25:35 -0700
X-CSE-ConnectionGUID: xWxnv5tTRAehL9KjsCzTIA==
X-CSE-MsgGUID: Wh17vN6nSYiQW2lnObKw1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="85785041"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 12:25:34 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 12:25:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 12:25:33 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 12:25:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b2wOD1dzELnpi3Mx0NQfkArVKMfdS7jb0n7NB3gBDrl5Me5HKPuRae6U605PRplr8DDJJnCBrUVEL3QUTUJq7/EZe8aS/bFZpjRLYkiPZNvOIM58OS8wDp+H1GxtaHA+lLBvgdJkF+bvV4mwENc3/aZmuQB7u9pbKnq8AY/A4gBvxHSqyJu5g9QHRnXFEZ3ktX1SldvbnMnO46OdRZdYWruiEa83JoSCYGDu2X2rMkxna6N5ehubW2B5S5Bx/bPwXGd87svCQr1MoLrKIFXdeP3a04hvYeTtB7pDh9cJnmvms+ksG6viLRj/8mrwenbeJmC0SazReYyi0E4KmYagfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s3I7uR9fA01Y/HMXuQ+4cF4939MnyfaT/XMKXh+I2lE=;
 b=J7FRwWfNSH4lZMYkkQ+eev2BzSxz+ELGeA9YbIJjT3j4aT9/E7yf10oT+kmFwImp9ZofoGhBGHKgQLf+Q1yRKxM+LmQqELLO+9X6mXJLPKoBTsZncrdztHrKqwNB+/UcX8ugKOCkuVy5q4ObfoDzayDjhAEHa9JksIf18MOOfM/PklET3F94AnqRY5DrKZh9DNbSeSEU7RGlUL76p5zlb2EiNzqonHjYfHqNZvad9p7bm9rkeZJFu9/Dp8hFVF5ed75vXskm6P5H5kOTHKuBPLhWHb2n3Nrilxu6dy/P9QUDmO6p5H1Zc6Tq349lgcPRR++lsX0/eGcuo1CEgqNlyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB6988.namprd11.prod.outlook.com (2603:10b6:930:54::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.23; Fri, 25 Oct
 2024 19:25:26 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 19:25:26 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <172911425162.1275809.5711994142720510897@2413ebb6fbb6>
References: <20241016135300.21428-1-gustavo.sousa@intel.com>
 <172911425162.1275809.5711994142720510897@2413ebb6fbb6>
Subject: Re: =?utf-8?b?4pyX?= Fi.CI.IGT: failure for Miscelaneous fixes for
 display tracepoints (rev4)
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>, Matt Roper <matthew.d.roper@intel.com>, 
 Ville Syrjala <ville.syrjala@linux.intel.com>
Date: Fri, 25 Oct 2024 16:25:20 -0300
Message-ID: <172988432015.1548.6350185934895165474@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0257.namprd03.prod.outlook.com
 (2603:10b6:303:b4::22) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB6988:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ae84ed4-42a8-46fb-4426-08dcf52ac736
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ckpCZ0piTmc3MytKT1NtaHgyS2JOZXd5VjRkVGMzdkpkT1FUL0ZkRi9IVTMw?=
 =?utf-8?B?YmZXbFp1TWVtQXhiZmczdFhVZFJpa1MrbjlydmFjTXlTT1d0blJnQTdJQjRT?=
 =?utf-8?B?SERYaFJxbi9XbkdLNng5WFdxWGJkSm1rZXpHSjQ4bXRpeHNJdFllRTlDemhK?=
 =?utf-8?B?UnlXbXZCQmt0RDNQbnh2RURsd2w0SXEwUHVHVG1GYXlzSkdPTHl2Umo5Tmp3?=
 =?utf-8?B?RnRvRVJSZTU4VlNmalBUWEZVdU00OVhmRTBoeTUvNEI1VFNFeFQ0dG9QZzVO?=
 =?utf-8?B?NlpKeWxjTGJ6YnJOd0FxN2diUG1nalI0YnU2V0pJbGlmNFZuNno1UkdjdVI4?=
 =?utf-8?B?RWNnNzVaVGxMZ05YQllFNzlvUU5SNmhjLzVlZ0RNR2JTYWVRbitkZjRmRE1N?=
 =?utf-8?B?bW5SOEpsUjlqRkJpb08ramtwdEdDY0hjdEdFT2ZaRUtOcFZsLzJyN0N1Qktu?=
 =?utf-8?B?MXdSdHRWUEFsM3JvUTZvdjFBTFlRaXJMNmJZZ0hISGZFT1JQaFZzaEdhaWU0?=
 =?utf-8?B?b2xNaWVET2pSaDdFU0hjWjlVQ1Z2Z3I2WnBNNDh3b0NOU1ZBQUIzOC9peGtK?=
 =?utf-8?B?NW9CS1pKakp5dktJWi94NDE4cTRuNkV4VFZNZDY1d2FVVGJDcE9EMWtsRlZt?=
 =?utf-8?B?NUZJT0dVTVVlSWRHSC9qUVBNNFgwNHpielU0c0cxQ0Vxbi81dStXTjZVT3ZI?=
 =?utf-8?B?WkkvQ3FudkJWRUc1UjdlN2tJUlR6UnYreElRbHZOMk9KWGtRSGpjdTg3eko4?=
 =?utf-8?B?eEU5WjdOUitxcEhsczJYOXZtVjFydkpGUHBJMEpSd3ZGcUdJODI3WWhHaHho?=
 =?utf-8?B?b2dvc1dUZ2ZGRUVkNzN0N1o0dHR5NDc5NG9FQnFoSk5RRG5yT29pcjdDWU1O?=
 =?utf-8?B?UW1MQUxWM0RpQnpVUnFCaWZhOXEwRlBEZmd4WmNZTFM2NWdSaXY5cU90RHF5?=
 =?utf-8?B?cG13RWg0WjlQMjdCZUpjZmNZWmJxTG5QMjNCb3N2MWVzU3NmSUNMQ2ZpbUJF?=
 =?utf-8?B?dVhhOGc3NkU3UXBhd3ZGQ0RqTW5ScW9KTGlnOXA1VHpvV3FNYUlYbzlxb3Bw?=
 =?utf-8?B?WEkwck1oekR2SXlVY1VNcXpEY2hRT0U4VmxQanYzay8rSkV4SEhGdm1iYlFG?=
 =?utf-8?B?UlFONER3MmtoN1NvWnhwZFNHSkUxUC9ndnRtbUNrNElPS2R1RlVNTjE0VjBw?=
 =?utf-8?B?cE82T0RycUUrTnpEalRNY1hBUzBlVEJIcE9HVzM5Y3RreXVGVG1lOEV5SUta?=
 =?utf-8?B?ZkZQZmZka0QyYWdQRWc2TmVuVVV0VWlkdjREV2JHdksrOTlVMUFtTnZyL1Jv?=
 =?utf-8?B?VmlndSs5em5VYjk1NWxWUDdsTWNJTXRaQW9wdWFJcE5pM0hVREJJajJGc0pM?=
 =?utf-8?B?QWp0Y1Q2NVY3bDZTVnV6Y3FXK0NMbGpKcjd3ZkZ5dFY1QVhPWmFYbEJ5VlM4?=
 =?utf-8?B?STFkRmVyMTFEaXNkMUs2UWY3WTQzVkxDN3lmaTljZVJnUlM4M2JhQlZLdVIz?=
 =?utf-8?B?MHhpaUEreGk2VWpRVEJta2dlT096OTNRaHBNaVJFcTArTC9KeXVYQVFpeUNU?=
 =?utf-8?B?aHN6dmIwVTlKRkIwaE54N0tSMUZpU00vL052dDhnVnRXWkpyYVVaOUw2aUZY?=
 =?utf-8?B?WCsyK1RYN05EQzlOdThoQ0FzT1E2c3AzQUZWamQzMW5KYnZRZDRHZGpnTWJE?=
 =?utf-8?B?VmJRN1Z4c1h3bm1IMlVDN1JibEJnRDBnTjlUVHY2d2lEWU84QlppUGd3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFg2WnB4ajVEVHRjTUhoY1pRRjFYS1lZTG5SSzkyR0hPdkZNOEIxQWMvcWM2?=
 =?utf-8?B?dUdXS2lNa0dlVTcvU2ZmQXhNekJXZERsMWR6Q1BHVHVrTkNIWGhKOEcrd3hC?=
 =?utf-8?B?dHVFMlkxZmtUY1ZzQ0VhWEh5cFlwQmxHQm4vMlVkcDEzT2hkMzFoTnZ3OFZ0?=
 =?utf-8?B?N1RlNUsxKy9uSUdnaGluR1k1S2ZFaWpGT3hOWDE0ZUNmdXBZL3BiRWVBSUE0?=
 =?utf-8?B?MXQ1MXlhQ25UczN5QldPOFVHRXZrVXp0TXp4SDVNVnp0YzcreFR5VXF6K0FS?=
 =?utf-8?B?VitUOHJpRXJpSUhRbkkwS1NVeURBWHJpMGtpdGhLeHErQXBVYkc0UlczeHhS?=
 =?utf-8?B?VC9PWGREK3B3a3FGYnA3TXh1ZC8yQS84TmpaaWNONDJYbHNFK3Z0cnhzcENV?=
 =?utf-8?B?SWlrRkIxVk9rUVFxakR4ODc1ZzFIQTFZaUJlWWZJTGFaNGZOdU05ZUJSU2VK?=
 =?utf-8?B?S3hENTc3L2VXZ1BwajJzNnd3WlhkL1VZVVJCRlhSNTBDM1l6TWRIS1B1MnYv?=
 =?utf-8?B?L1U3U3FFODd2bEtDazhPejMyZmh5R2NLRWZUT3NCWlRlTUs5ZWF2YnROQUp6?=
 =?utf-8?B?YXUxYWJiTTRjU1pDZ3FlblVkL1JXMUFoQmtVRHZtZ2hxaUo2Z0NjY3E1TFdu?=
 =?utf-8?B?SE5TVmxhbHUwdUFLOEVBY2hOWUhxaUhSOGZDNDNEaWhUSWVRMVFXQVNRbXVG?=
 =?utf-8?B?cHJBbnFqWk5FWlpxeGJGUjZkT0tDejdIY3IyV1EycFlLbjlEUnJ2enJISFJZ?=
 =?utf-8?B?dTY1WnN3aGtWRlB1bXVxK1VKWFZWLytXNmRpeTBBSkZlZWlvQ0pnSDZaUFlL?=
 =?utf-8?B?L012RE92d1NMN05PeFRCWTF6Vno0ZDZKY1MrWVF0VkNCbndrdHZ0S2FxT1la?=
 =?utf-8?B?QzdvVzhLdFAvVjg1bGtNdUdldG9xWGozdXUzU0dZWWxqci9qR2ExUVVzZE92?=
 =?utf-8?B?cjF5QmhyMGtwUkdXd25WNTFqbkQ0ZmRZMFE2alhoMUVWZFUraUt0aXlTcWc2?=
 =?utf-8?B?QWlvV1BnTEVEZ0w4cnYrYTFPWTNRVnVObEwvN0ZQK2NRVjF0ZzNLa28zL1JC?=
 =?utf-8?B?NFkzcmhURTVxdEFrMVVBcXh3UjdUK2VzK0kvMzBYZE9FRmlQTFkvWjlSbmlH?=
 =?utf-8?B?ejVHNFFYQXc2aHYrSmtTdUU0RWM2SVVUenZUejBBajFXY3NFM202bTZlUmsw?=
 =?utf-8?B?YXdnMzdGWTVHYW1jRTdWRG43ZWJEdjE2azk4M3JiMEtSREpjK2Zha29WVUZK?=
 =?utf-8?B?bk1iVzQxUzQxY3IyeVppOG9nVWJnRUd2S3dRVkhBdUg4cXk0cFBZRnQ1VWsv?=
 =?utf-8?B?Q0tRQzJDQ1RrM3JudmJETmx2QXZVeHI3MUw3bytIKzRoOUtKTnozbTRvbmtF?=
 =?utf-8?B?YmlFSEU3RjFLdmFYRnJRZjFrcEYrcUprNjNrblROcndXaFliZTNGN1BScmJ5?=
 =?utf-8?B?UjZMcTFFY3ZHKys2VzJtR24yNkF6WVhGamZDaEdtWnBsWnpPcUtTNy9ubWJZ?=
 =?utf-8?B?cWU1TXhRd1FPZUl1UHZTMk94MzUwVVdMbDBQeDZGU3diSmszclU3aWxzcnky?=
 =?utf-8?B?TjZjc0ZFUUVtaGZzRm5mcGdNbm00ZDJSN0w1S0lxanZxSGhxOVVsSUFZZUhS?=
 =?utf-8?B?ODRpdFJpSFQyaUJLd1ZpNTl6SjN0QjgvWTFpdGN4TXpGMGZWUVVQUmhUaGQv?=
 =?utf-8?B?VFhEbW11ay9ETjl4MGR1MFZXLys5TkxreUdweVRsQ2toRGNrN0J6dFRPcklB?=
 =?utf-8?B?MnNCS2wrZUM5eWVxK2hNNjkxekRUc1F4aXRkb25YRVdRVmhVVTh0WHpoVWhQ?=
 =?utf-8?B?dzYzOWdtZVpOUkZqZHgvN1BleXBZak1rNEJVN29iUUwvRG5kWkRCNkR6Wlo5?=
 =?utf-8?B?WDBGU3E3SDBSb0JKaW4wRUt5TXFhbDZoeHNYVU9JaTA2bTVWcHhJSnBjK3g1?=
 =?utf-8?B?V2VtZmE5WCtqaGwvWHd1S28wZlk5ZVJySnhkaEd2ajc5OEZYcHRia3QzdW10?=
 =?utf-8?B?Zit2ZG5TcGpQdTFNVCtxTUVFUTZ4dVFLQVVtNUpMTktoN3lBN1M1OHRBVWl0?=
 =?utf-8?B?dkg1eTZnVFBrVk1ZdGdqMFN3cUZjd01XOU4wNkVBZ2VlajBOejVzTEFidjdM?=
 =?utf-8?B?aDF6S09FK0JNbStzWW53R0dNaXJMaFdrSGlhc2hQVnJGa1haRlpRU1hRbTR0?=
 =?utf-8?B?dkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ae84ed4-42a8-46fb-4426-08dcf52ac736
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 19:25:26.6843 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NpgtGVuV7Eokqtsm0tohHruyeWSKl8RkcbbKIoFODZWpoW5969c1P6FETBbsXAvwWqulLMty2N+Ah1MXZQ9uMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6988
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

Quoting Patchwork (2024-10-16 18:30:51-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: Miscelaneous fixes for display tracepoints (rev4)
>URL   : https://patchwork.freedesktop.org/series/137978/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_15541_full -> Patchwork_137978v4_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_137978v4_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_137978v4_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
> =20
>
>Participating hosts (8 -> 8)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
137978v4_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_flip@flip-vs-wf_vblank-interruptible@d-hdmi-a3:
>    - shard-dg1:          NOTRUN -> [FAIL][1]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard-=
dg1-12/igt@kms_flip@flip-vs-wf_vblank-interruptible@d-hdmi-a3.html

https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12517

>
>  * igt@perf_pmu@multi-client:
>    - shard-mtlp:         [PASS][2] -> [FAIL][3] +1 other test fail
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-mtlp-6=
/igt@perf_pmu@multi-client.html
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard-=
mtlp-1/igt@perf_pmu@multi-client.html

https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12519

None of those are related to the series.

Applied to drm-intel-next. Thanks Matt and Ville for the reviews!

--
Gustavo Sousa

>
> =20
>#### Warnings ####
>
>  * igt@i915_module_load@reload-with-fault-injection:
>    - shard-dg2:          [ABORT][4] ([i915#9820]) -> [DMESG-WARN][5]
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-6/=
igt@i915_module_load@reload-with-fault-injection.html
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard-=
dg2-11/igt@i915_module_load@reload-with-fault-injection.html
>
>  * igt@i915_selftest@mock:
>    - shard-snb:          [DMESG-WARN][6] ([i915#9311]) -> [ABORT][7]
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-snb1/i=
gt@i915_selftest@mock.html
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard-=
snb7/igt@i915_selftest@mock.html
>
> =20
>Known issues
>------------
>
>  Here are the changes found in Patchwork_137978v4_full that come from kno=
wn issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@api_intel_bb@blit-reloc-purge-cache:
>    - shard-dg1:          NOTRUN -> [SKIP][8] ([i915#8411])
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard-=
dg1-17/igt@api_intel_bb@blit-reloc-purge-cache.html
>
>  * igt@device_reset@unbind-reset-rebind:
>    - shard-dg1:          NOTRUN -> [ABORT][9] ([i915#11814] / [i915#11815=
])
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard-=
dg1-15/igt@device_reset@unbind-reset-rebind.html
>
>  * igt@drm_fdinfo@most-busy-check-all:
>    - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#8414]) +5 other test=
s skip
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg1-12/igt@drm_fdinfo@most-busy-check-all.html
>
>  * igt@drm_fdinfo@most-busy-check-all@vcs0:
>    - shard-mtlp:         NOTRUN -> [SKIP][11] ([i915#8414]) +6 other test=
s skip
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-mtlp-3/igt@drm_fdinfo@most-busy-check-all@vcs0.html
>
>  * igt@drm_fdinfo@virtual-busy-hang:
>    - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#8414])
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-2/igt@drm_fdinfo@virtual-busy-hang.html
>
>  * igt@gem_ccs@block-copy-compressed:
>    - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#3555] / [i915#9323])
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-rkl-4/igt@gem_ccs@block-copy-compressed.html
>
>  * igt@gem_ccs@suspend-resume:
>    - shard-dg1:          NOTRUN -> [SKIP][14] ([i915#9323])
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg1-17/igt@gem_ccs@suspend-resume.html
>
>  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
>    - shard-dg2:          NOTRUN -> [INCOMPLETE][15] ([i915#7297])
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.htm=
l
>
>  * igt@gem_ctx_engines@invalid-engines:
>    - shard-tglu:         [PASS][16] -> [FAIL][17] ([i915#12027] / [i915#1=
2031])
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-tglu-=
8/igt@gem_ctx_engines@invalid-engines.html
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-3/igt@gem_ctx_engines@invalid-engines.html
>
>  * igt@gem_ctx_persistence@heartbeat-hostile:
>    - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#8555])
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-mtlp-3/igt@gem_ctx_persistence@heartbeat-hostile.html
>
>  * igt@gem_ctx_persistence@hostile:
>    - shard-dg2:          NOTRUN -> [FAIL][19] ([i915#11980])
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-2/igt@gem_ctx_persistence@hostile.html
>    - shard-tglu:         [PASS][20] -> [FAIL][21] ([i915#11980])
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-tglu-=
3/igt@gem_ctx_persistence@hostile.html
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-7/igt@gem_ctx_persistence@hostile.html
>
>  * igt@gem_ctx_sseu@invalid-sseu:
>    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#280])
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-2/igt@gem_ctx_sseu@invalid-sseu.html
>
>  * igt@gem_exec_balancer@parallel-balancer:
>    - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#4525])
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-rkl-4/igt@gem_exec_balancer@parallel-balancer.html
>
>  * igt@gem_exec_big@single:
>    - shard-tglu:         [PASS][24] -> [ABORT][25] ([i915#11713])
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-tglu-=
7/igt@gem_exec_big@single.html
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-2/igt@gem_exec_big@single.html
>
>  * igt@gem_exec_reloc@basic-wc-cpu:
>    - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#3281]) +2 other test=
s skip
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg1-12/igt@gem_exec_reloc@basic-wc-cpu.html
>    - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#3281]) +1 other test=
 skip
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-mtlp-3/igt@gem_exec_reloc@basic-wc-cpu.html
>
>  * igt@gem_exec_reloc@basic-write-read-active:
>    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3281]) +2 other test=
s skip
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-11/igt@gem_exec_reloc@basic-write-read-active.html
>    - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#3281]) +1 other test=
 skip
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-rkl-4/igt@gem_exec_reloc@basic-write-read-active.html
>
>  * igt@gem_exec_suspend@basic-s4-devices:
>    - shard-dg2:          [PASS][30] -> [ABORT][31] ([i915#7975] / [i915#8=
213]) +1 other test abort
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-1=
1/igt@gem_exec_suspend@basic-s4-devices.html
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-4/igt@gem_exec_suspend@basic-s4-devices.html
>
>  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>    - shard-tglu:         NOTRUN -> [SKIP][32] ([i915#4613]) +3 other test=
s skip
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
>
>  * igt@gem_lmem_swapping@random-engines:
>    - shard-glk:          NOTRUN -> [SKIP][33] ([i915#4613])
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-glk8/igt@gem_lmem_swapping@random-engines.html
>
>  * igt@gem_mmap_gtt@basic-read-write:
>    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4077]) +3 other test=
s skip
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-11/igt@gem_mmap_gtt@basic-read-write.html
>
>  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>    - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4077])
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-mtlp-3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
>
>  * igt@gem_mmap_wc@invalid-flags:
>    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4083]) +2 other test=
s skip
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-11/igt@gem_mmap_wc@invalid-flags.html
>
>  * igt@gem_mmap_wc@read:
>    - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#4083]) +1 other test=
 skip
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg1-17/igt@gem_mmap_wc@read.html
>
>  * igt@gem_pread@bench:
>    - shard-dg1:          NOTRUN -> [SKIP][38] ([i915#3282])
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg1-12/igt@gem_pread@bench.html
>    - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#3282])
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-mtlp-3/igt@gem_pread@bench.html
>
>  * igt@gem_pread@exhaustion:
>    - shard-tglu:         NOTRUN -> [WARN][40] ([i915#2658])
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-2/igt@gem_pread@exhaustion.html
>
>  * igt@gem_pxp@protected-raw-src-copy-not-readible:
>    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#4270])
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-11/igt@gem_pxp@protected-raw-src-copy-not-readible.html
>    - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#4270])
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-rkl-4/igt@gem_pxp@protected-raw-src-copy-not-readible.html
>
>  * igt@gem_pxp@reject-modify-context-protection-off-3:
>    - shard-tglu:         NOTRUN -> [SKIP][43] ([i915#4270]) +1 other test=
 skip
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-8/igt@gem_pxp@reject-modify-context-protection-off-3.html
>
>  * igt@gem_render_copy@y-tiled-ccs-to-linear:
>    - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#8428])
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-mtlp-3/igt@gem_render_copy@y-tiled-ccs-to-linear.html
>
>  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:
>    - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#5190] / [i915#8428])
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-10/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs.html
>
>  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>    - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#4079])
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-2/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
>
>  * igt@gem_tiled_blits@basic:
>    - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#4077]) +2 other test=
s skip
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg1-17/igt@gem_tiled_blits@basic.html
>
>  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#3297])
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-mtlp-3/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
>
>  * igt@gem_userptr_blits@unsync-overlap:
>    - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#3297])
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg1-17/igt@gem_userptr_blits@unsync-overlap.html
>
>  * igt@gem_userptr_blits@unsync-unmap-cycles:
>    - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#3297])
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-2/igt@gem_userptr_blits@unsync-unmap-cycles.html
>
>  * igt@gen9_exec_parse@bb-secure:
>    - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#2527] / [i915#2856])
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-2/igt@gen9_exec_parse@bb-secure.html
>
>  * igt@i915_module_load@load:
>    - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#6227])
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-8/igt@i915_module_load@load.html
>
>  * igt@i915_module_load@reload-with-fault-injection:
>    - shard-glk:          [PASS][53] -> [ABORT][54] ([i915#9820])
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-glk8/=
igt@i915_module_load@reload-with-fault-injection.html
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-glk7/igt@i915_module_load@reload-with-fault-injection.html
>    - shard-snb:          [PASS][55] -> [ABORT][56] ([i915#9820])
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-snb2/=
igt@i915_module_load@reload-with-fault-injection.html
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-snb5/igt@i915_module_load@reload-with-fault-injection.html
>    - shard-dg1:          [PASS][57] -> [ABORT][58] ([i915#9820])
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg1-1=
7/igt@i915_module_load@reload-with-fault-injection.html
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
>
>  * igt@i915_pm_freq_api@freq-reset:
>    - shard-tglu:         NOTRUN -> [SKIP][59] ([i915#8399])
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-2/igt@i915_pm_freq_api@freq-reset.html
>
>  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>    - shard-dg1:          [PASS][60] -> [FAIL][61] ([i915#3591]) +2 other =
tests fail
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg1-1=
5/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>
>  * igt@i915_pm_rps@basic-api:
>    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#11681] / [i915#6621]=
)
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-11/igt@i915_pm_rps@basic-api.html
>
>  * igt@i915_pm_rps@reset:
>    - shard-snb:          [PASS][63] -> [INCOMPLETE][64] ([i915#7790])
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-snb6/=
igt@i915_pm_rps@reset.html
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-snb6/igt@i915_pm_rps@reset.html
>
>  * igt@i915_pm_rps@thresholds-idle-park:
>    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#11681])
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-10/igt@i915_pm_rps@thresholds-idle-park.html
>
>  * igt@i915_selftest@mock@sanitycheck:
>    - shard-snb:          [PASS][66] -> [ABORT][67] ([i915#11703])
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-snb1/=
igt@i915_selftest@mock@sanitycheck.html
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-snb7/igt@i915_selftest@mock@sanitycheck.html
>
>  * igt@kms_addfb_basic@basic-x-tiled-legacy:
>    - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4212])
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-11/igt@kms_addfb_basic@basic-x-tiled-legacy.html
>
>  * igt@kms_addfb_basic@tile-pitch-mismatch:
>    - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#4212])
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg1-17/igt@kms_addfb_basic@tile-pitch-mismatch.html
>
>  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y=
-rc-ccs-cc:
>    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#8709]) +3 other test=
s skip
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1=
-y-rc-ccs-cc.html
>
>  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y=
-rc-ccs:
>    - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#8709]) +7 other test=
s skip
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-=
3-y-rc-ccs.html
>
>  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4=
-mc-ccs:
>    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#8709]) +11 other tes=
ts skip
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3=
-4-mc-ccs.html
>
>  * igt@kms_atomic_interruptible@atomic-setmode:
>    - shard-dg2:          [PASS][73] -> [SKIP][74] ([i915#9197]) +35 other=
 tests skip
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-1=
/igt@kms_atomic_interruptible@atomic-setmode.html
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-2/igt@kms_atomic_interruptible@atomic-setmode.html
>
>  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1=
:
>    - shard-tglu:         NOTRUN -> [FAIL][75] ([i915#11808]) +1 other tes=
t fail
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-=
a-1.html
>
>  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#4538] / [i915#5286])
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg1-12/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
>
>  * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>    - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#5286]) +2 other test=
s skip
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-2/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
>
>  * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>    - shard-mtlp:         NOTRUN -> [SKIP][78] +2 other tests skip
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-mtlp-3/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
>
>  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#4538] / [i915#5190])
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-10/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
>
>  * igt@kms_big_fb@yf-tiled-addfb:
>    - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#6187])
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-mtlp-3/igt@kms_big_fb@yf-tiled-addfb.html
>
>  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs:
>    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#6095]) +4 other test=
s skip
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-mtlp-3/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs.html
>
>  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#10307] / [i915#6095]=
) +145 other tests skip
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-8/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.htm=
l
>
>  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
>    - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#6095]) +29 other tes=
ts skip
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html
>
>  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:
>    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#10307] / [i915#10434=
] / [i915#6095]) +2 other tests skip
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-8/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.ht=
ml
>
>  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>    - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#12313])
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
>
>  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
>    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#6095]) +51 other tes=
ts skip
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-rkl-7/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html
>
>  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
>    - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#6095]) +96 other tes=
ts skip
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg1-13/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html
>
>  * igt@kms_chamelium_audio@dp-audio:
>    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#7828]) +5 other test=
s skip
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-8/igt@kms_chamelium_audio@dp-audio.html
>
>  * igt@kms_chamelium_audio@dp-audio-edid:
>    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#7828])
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-rkl-4/igt@kms_chamelium_audio@dp-audio-edid.html
>
>  * igt@kms_chamelium_edid@dp-mode-timings:
>    - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#7828]) +1 other test=
 skip
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg1-17/igt@kms_chamelium_edid@dp-mode-timings.html
>
>  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
>    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#7828]) +1 other test=
 skip
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-2/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
>
>  * igt@kms_content_protection@type1:
>    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#6944] / [i915#7116] =
/ [i915#7118] / [i915#9424]) +1 other test skip
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-8/igt@kms_content_protection@type1.html
>
>  * igt@kms_cursor_crc@cursor-onscreen-256x85:
>    - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#8814]) +1 other test=
 skip
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-256x85.html
>
>  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>    - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#3555]) +2 other test=
s skip
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
>
>  * igt@kms_cursor_edge_walk@256x256-top-edge:
>    - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#9197]) +6 other test=
s skip
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-dg2-2/igt@kms_cursor_edge_walk@256x256-top-edge.html
>
>  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>    - shard-glk:          [PASS][96] -> [FAIL][97] ([i915#72])
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-glk8/=
igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-glk7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>
>  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
>    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#9809])
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shard=
-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>    - shard-glk:          [PASS][99] -> [FAIL][100] ([i915#2346])
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-glk8/=
igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size=
.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>    - shard-snb:          [PASS][101] -> [FAIL][102] ([i915#2346])
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-snb2=
/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-snb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>
>  * igt@kms_dsc@dsc-basic:
>    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#3555] / [i915#3840]=
)
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-10/igt@kms_dsc@dsc-basic.html
>
>  * igt@kms_dsc@dsc-with-bpc-formats:
>    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#3555] / [i915#3840]=
) +1 other test skip
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-2/igt@kms_dsc@dsc-with-bpc-formats.html
>
>  * igt@kms_feature_discovery@display-4x:
>    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#1839])
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-6/igt@kms_feature_discovery@display-4x.html
>
>  * igt@kms_feature_discovery@psr2:
>    - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#658])
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-2/igt@kms_feature_discovery@psr2.html
>
>  * igt@kms_flip@2x-busy-flip:
>    - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#9934])
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-17/igt@kms_flip@2x-busy-flip.html
>
>  * igt@kms_flip@2x-flip-vs-fences:
>    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#8381])
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-17/igt@kms_flip@2x-flip-vs-fences.html
>
>  * igt@kms_flip@2x-flip-vs-panning:
>    - shard-dg2:          NOTRUN -> [SKIP][109] +4 other tests skip
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-11/igt@kms_flip@2x-flip-vs-panning.html
>    - shard-rkl:          NOTRUN -> [SKIP][110] +3 other tests skip
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-4/igt@kms_flip@2x-flip-vs-panning.html
>
>  * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
>    - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#3637])
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-8/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
>
>  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1:
>    - shard-snb:          [PASS][112] -> [FAIL][113] ([i915#2122]) +4 othe=
r tests fail
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-snb7=
/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1.html
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-snb4/igt@kms_flip@2x-wf_vblank-ts-check-interruptible@ab-vga1-hdmi-a1.htm=
l
>
>  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
>    - shard-tglu:         [PASS][114] -> [FAIL][115] ([i915#2122]) +4 othe=
r tests fail
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-tglu=
-7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
>    - shard-mtlp:         [PASS][116] -> [FAIL][117] ([i915#2122]) +2 othe=
r tests fail
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-mtlp=
-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-mtlp-7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
>    - shard-glk:          [PASS][118] -> [FAIL][119] ([i915#2122]) +1 othe=
r test fail
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-glk6=
/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-glk5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
>
>  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2:
>    - shard-rkl:          NOTRUN -> [FAIL][120] ([i915#11961]) +1 other te=
st fail
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a2.htm=
l
>
>  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1:
>    - shard-mtlp:         [PASS][121] -> [FAIL][122] ([i915#12138])
>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-mtlp=
-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html
>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-mtlp-7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@c-edp1.html
>
>  * igt@kms_flip@flip-vs-suspend@b-hdmi-a2:
>    - shard-glk:          [PASS][123] -> [INCOMPLETE][124] ([i915#4839])
>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-glk5=
/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html
>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-glk3/igt@kms_flip@flip-vs-suspend@b-hdmi-a2.html
>
>  * igt@kms_flip@flip-vs-suspend@c-hdmi-a4:
>    - shard-dg1:          NOTRUN -> [DMESG-WARN][125] ([i915#4423])
>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-18/igt@kms_flip@flip-vs-suspend@c-hdmi-a4.html
>
>  * igt@kms_flip@wf_vblank-ts-check-interruptible:
>    - shard-dg2:          [PASS][126] -> [SKIP][127] ([i915#5354]) +6 othe=
r tests skip
>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
10/igt@kms_flip@wf_vblank-ts-check-interruptible.html
>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_flip@wf_vblank-ts-check-interruptible.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling=
:
>    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#2672] / [i915#3555]=
)
>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upsca=
ling.html
>    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#2672] / [i915#3555]=
)
>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscal=
ing.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling=
@pipe-a-valid-mode:
>    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#2672])
>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscal=
ing@pipe-a-valid-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@p=
ipe-a-valid-mode:
>    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#2672]) +2 other tes=
ts skip
>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscalin=
g@pipe-a-valid-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
>    - shard-dg2:          [PASS][132] -> [SKIP][133] ([i915#3555]) +2 othe=
r tests skip
>   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
>   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling=
.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscal=
ing:
>    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#2672] / [i915#3555]=
) +2 other tests skip
>   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-up=
scaling.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscal=
ing@pipe-a-valid-mode:
>    - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#2587] / [i915#2672]=
) +2 other tests skip
>   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-up=
scaling@pipe-a-valid-mode.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
>    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#3555] / [i915#5190]=
)
>   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.h=
tml
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#8708])
>   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-mtlp-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-g=
tt.html
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:
>    - shard-dg2:          NOTRUN -> [FAIL][138] ([i915#6880])
>   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
>    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3458]) +1 other tes=
t skip
>   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwr=
ite.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
>    - shard-dg1:          NOTRUN -> [SKIP][140] +8 other tests skip
>   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt=
.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
>    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#5354]) +11 other te=
sts skip
>   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.ht=
ml
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render:
>    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#1825]) +2 other tes=
ts skip
>   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-rend=
er.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
>    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#1825]) +4 other tes=
ts skip
>   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.h=
tml
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
>    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#3023])
>   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
>
>  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>    - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#9766])
>   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
>    - shard-tglu:         NOTRUN -> [SKIP][146] +57 other tests skip
>   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite=
.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>    - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#3458]) +3 other tes=
ts skip
>   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.ht=
ml
>
>  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#8708])
>   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-g=
tt.html
>
>  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
>    - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#8708])
>   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-w=
c.html
>
>  * igt@kms_hdr@invalid-hdr:
>    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#3555] / [i915#8228]=
)
>   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-8/igt@kms_hdr@invalid-hdr.html
>
>  * igt@kms_hdr@static-swap:
>    - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#3555] / [i915#8228]=
)
>   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-15/igt@kms_hdr@static-swap.html
>
>  * igt@kms_joiner@invalid-modeset-ultra-joiner:
>    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#12339])
>   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-4/igt@kms_joiner@invalid-modeset-ultra-joiner.html
>
>  * igt@kms_panel_fitting@atomic-fastset:
>    - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#6301])
>   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-2/igt@kms_panel_fitting@atomic-fastset.html
>
>  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
>    - shard-glk:          NOTRUN -> [FAIL][154] ([i915#12177])
>   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-glk3/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
>
>  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
>    - shard-glk:          NOTRUN -> [FAIL][155] ([i915#10647]) +1 other te=
st fail
>   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-glk3/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html
>
>  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>    - shard-dg1:          NOTRUN -> [FAIL][156] ([i915#8292])
>   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-19/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
>
>  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
>    - shard-dg2:          [PASS][157] -> [SKIP][158] ([i915#8152] / [i915#=
9423])
>   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html
>   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.ht=
ml
>
>  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-=
d:
>    - shard-dg2:          [PASS][159] -> [SKIP][160] ([i915#8152])
>   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pipe-d.h=
tml
>   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers@pi=
pe-d.html
>
>  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a=
:
>    - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#12247]) +9 other te=
sts skip
>   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pi=
pe-a.html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:
>    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#12247] / [i915#8152=
] / [i915#9423])
>   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.ht=
ml
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-=
b:
>    - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#12247]) +5 other te=
sts skip
>   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pi=
pe-b.html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-=
d:
>    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#12247] / [i915#8152=
]) +1 other test skip
>   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pi=
pe-d.html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-5:
>    - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#12247] / [i915#6953=
])
>   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
>    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#12247]) +3 other te=
sts skip
>   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-8/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-75:
>    - shard-dg2:          [PASS][167] -> [SKIP][168] ([i915#12247] / [i915=
#3555] / [i915#6953] / [i915#8152] / [i915#9423])
>   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
10/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
>   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
>
>  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
>    - shard-dg2:          [PASS][169] -> [SKIP][170] ([i915#6953] / [i915#=
8152] / [i915#9423])
>   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
>   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.htm=
l
>
>  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b=
:
>    - shard-dg2:          [PASS][171] -> [SKIP][172] ([i915#12247]) +8 oth=
er tests skip
>   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.ht=
ml
>   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pip=
e-b.html
>
>  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d=
:
>    - shard-dg2:          [PASS][173] -> [SKIP][174] ([i915#12247] / [i915=
#8152]) +1 other test skip
>   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d.ht=
ml
>   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pip=
e-d.html
>
>  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
>    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#12247] / [i915#6953=
] / [i915#8152] / [i915#9423])
>   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.ht=
ml
>
>  * igt@kms_pm_backlight@fade-with-dpms:
>    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#5354])
>   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-4/igt@kms_pm_backlight@fade-with-dpms.html
>
>  * igt@kms_pm_dc@dc5-psr:
>    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#9685])
>   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-2/igt@kms_pm_dc@dc5-psr.html
>
>  * igt@kms_pm_rpm@dpms-lpsp:
>    - shard-dg2:          [PASS][178] -> [SKIP][179] ([i915#9519]) +2 othe=
r tests skip
>   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
8/igt@kms_pm_rpm@dpms-lpsp.html
>   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-10/igt@kms_pm_rpm@dpms-lpsp.html
>    - shard-rkl:          [PASS][180] -> [SKIP][181] ([i915#9519]) +3 othe=
r tests skip
>   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-rkl-=
7/igt@kms_pm_rpm@dpms-lpsp.html
>   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html
>
>  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#9519])
>   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>
>  * igt@kms_properties@crtc-properties-legacy:
>    - shard-dg2:          [PASS][183] -> [SKIP][184] ([i915#11521])
>   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
10/igt@kms_properties@crtc-properties-legacy.html
>   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_properties@crtc-properties-legacy.html
>
>  * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
>    - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#11520]) +5 other te=
sts skip
>   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-8/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html
>
>  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
>    - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#12316])
>   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-mtlp-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-=
sf.html
>    - shard-glk:          NOTRUN -> [SKIP][187] ([i915#11520])
>   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-glk3/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf=
.html
>
>  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
>    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#11520])
>   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-17/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html
>
>  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
>    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#11520])
>   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-11/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
>    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#11520])
>   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-4/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
>
>  * igt@kms_psr2_su@page_flip-nv12:
>    - shard-glk:          NOTRUN -> [SKIP][191] +23 other tests skip
>   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-glk3/igt@kms_psr2_su@page_flip-nv12.html
>    - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#4348])
>   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-mtlp-3/igt@kms_psr2_su@page_flip-nv12.html
>
>  * igt@kms_psr@fbc-pr-cursor-mmap-gtt:
>    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#1072] / [i915#9732]=
) +1 other test skip
>   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-11/igt@kms_psr@fbc-pr-cursor-mmap-gtt.html
>    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#1072] / [i915#9732]=
)
>   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-4/igt@kms_psr@fbc-pr-cursor-mmap-gtt.html
>
>  * igt@kms_psr@pr-sprite-plane-move:
>    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#9732]) +13 other te=
sts skip
>   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-6/igt@kms_psr@pr-sprite-plane-move.html
>
>  * igt@kms_psr@psr2-primary-mmap-gtt:
>    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#1072] / [i915#9732]=
) +4 other tests skip
>   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-15/igt@kms_psr@psr2-primary-mmap-gtt.html
>
>  * igt@kms_rotation_crc@primary-rotation-270:
>    - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#11131])
>   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-mtlp-3/igt@kms_rotation_crc@primary-rotation-270.html
>
>  * igt@kms_setmode@clone-exclusive-crtc:
>    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#3555]) +1 other tes=
t skip
>   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-11/igt@kms_setmode@clone-exclusive-crtc.html
>    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#3555])
>   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-4/igt@kms_setmode@clone-exclusive-crtc.html
>
>  * igt@kms_vrr@negative-basic:
>    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#3555] / [i915#9906]=
)
>   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-2/igt@kms_vrr@negative-basic.html
>
>  * igt@kms_vrr@seamless-rr-switch-vrr:
>    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#9906])
>   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-8/igt@kms_vrr@seamless-rr-switch-vrr.html
>
>  * igt@kms_writeback@writeback-check-output:
>    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#2437])
>   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-6/igt@kms_writeback@writeback-check-output.html
>
>  * igt@prime_mmap_kms@buffer-sharing:
>    - shard-dg2:          [PASS][203] -> [SKIP][204]
>   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
6/igt@prime_mmap_kms@buffer-sharing.html
>   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@prime_mmap_kms@buffer-sharing.html
>
>  * igt@sriov_basic@enable-vfs-autoprobe-on:
>    - shard-dg1:          NOTRUN -> [SKIP][205] ([i915#9917])
>   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-17/igt@sriov_basic@enable-vfs-autoprobe-on.html
>
> =20
>#### Possible fixes ####
>
>  * igt@fbdev@write:
>    - shard-dg2:          [SKIP][206] ([i915#2582]) -> [PASS][207]
>   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@fbdev@write.html
>   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-7/igt@fbdev@write.html
>
>  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
>    - shard-dg2:          [INCOMPLETE][208] ([i915#7297]) -> [PASS][209]
>   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
>   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.ht=
ml
>
>  * igt@gem_ctx_engines@invalid-engines:
>    - shard-glk:          [FAIL][210] ([i915#12027] / [i915#12031]) -> [PA=
SS][211]
>   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-glk9=
/igt@gem_ctx_engines@invalid-engines.html
>   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-glk2/igt@gem_ctx_engines@invalid-engines.html
>    - shard-rkl:          [FAIL][212] ([i915#12027] / [i915#12031]) -> [PA=
SS][213]
>   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-rkl-=
3/igt@gem_ctx_engines@invalid-engines.html
>   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-3/igt@gem_ctx_engines@invalid-engines.html
>
>  * igt@gem_ctx_freq@sysfs@gt0:
>    - shard-dg2:          [FAIL][214] ([i915#9561]) -> [PASS][215] +1 othe=
r test pass
>   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
5/igt@gem_ctx_freq@sysfs@gt0.html
>   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-7/igt@gem_ctx_freq@sysfs@gt0.html
>
>  * igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-tglu:         [FAIL][216] ([i915#2842]) -> [PASS][217] +1 othe=
r test pass
>   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-tglu=
-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>
>  * igt@gem_exec_fair@basic-pace@rcs0:
>    - shard-rkl:          [FAIL][218] ([i915#2876]) -> [PASS][219]
>   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-rkl-=
2/igt@gem_exec_fair@basic-pace@rcs0.html
>   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html
>
>  * igt@gem_exec_fair@basic-throttle:
>    - shard-rkl:          [FAIL][220] ([i915#2842]) -> [PASS][221] +5 othe=
r tests pass
>   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-rkl-=
3/igt@gem_exec_fair@basic-throttle.html
>   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-3/igt@gem_exec_fair@basic-throttle.html
>
>  * igt@gem_exec_suspend@basic-s4-devices:
>    - shard-dg1:          [ABORT][222] ([i915#7975] / [i915#8213]) -> [PAS=
S][223] +1 other test pass
>   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg1-=
14/igt@gem_exec_suspend@basic-s4-devices.html
>   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-15/igt@gem_exec_suspend@basic-s4-devices.html
>
>  * igt@i915_module_load@reload-with-fault-injection:
>    - shard-rkl:          [ABORT][224] ([i915#9820]) -> [PASS][225]
>   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-rkl-=
2/igt@i915_module_load@reload-with-fault-injection.html
>   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
>
>  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
>    - shard-mtlp:         [DMESG-WARN][226] ([i915#1982]) -> [PASS][227]
>   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-mtlp=
-3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
>   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-mtlp-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
>
>  * igt@kms_cursor_crc@cursor-random-256x256:
>    - shard-dg2:          [SKIP][228] ([i915#9197]) -> [PASS][229] +40 oth=
er tests pass
>   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_cursor_crc@cursor-random-256x256.html
>   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-7/igt@kms_cursor_crc@cursor-random-256x256.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>    - shard-dg1:          [DMESG-WARN][230] ([i915#4423]) -> [PASS][231] +=
2 other tests pass
>   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg1-=
14/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-15/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>
>  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>    - shard-snb:          [FAIL][232] ([i915#2346]) -> [PASS][233]
>   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-snb2=
/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-snb4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>
>  * igt@kms_flip@flip-vs-blocking-wf-vblank:
>    - shard-rkl:          [FAIL][234] ([i915#11989] / [i915#2122]) -> [PAS=
S][235]
>   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-rkl-=
5/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-rkl-2/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>    - shard-snb:          [FAIL][236] ([i915#2122]) -> [PASS][237] +2 othe=
r tests pass
>   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-snb7=
/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-snb2/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>
>  * igt@kms_flip@flip-vs-suspend:
>    - shard-dg2:          [INCOMPLETE][238] ([i915#4839] / [i915#6113]) ->=
 [PASS][239]
>   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
11/igt@kms_flip@flip-vs-suspend.html
>   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-10/igt@kms_flip@flip-vs-suspend.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
>    - shard-dg2:          [SKIP][240] ([i915#3555]) -> [PASS][241] +4 othe=
r tests pass
>   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
>   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.h=
tml
>
>  * igt@kms_force_connector_basic@force-edid:
>    - shard-dg1:          [ABORT][242] ([i915#4391] / [i915#4423]) -> [PAS=
S][243]
>   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg1-=
12/igt@kms_force_connector_basic@force-edid.html
>   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-17/igt@kms_force_connector_basic@force-edid.html
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
>    - shard-dg2:          [SKIP][244] ([i915#5354]) -> [PASS][245] +16 oth=
er tests pass
>   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
>   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cp=
u.html
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
>    - shard-dg2:          [FAIL][246] ([i915#6880]) -> [PASS][247]
>   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.htm=
l
>   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cp=
u.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
>    - shard-snb:          [SKIP][248] -> [PASS][249]
>   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-snb7=
/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html
>   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.h=
tml
>
>  * igt@kms_hdr@invalid-metadata-sizes:
>    - shard-dg2:          [SKIP][250] ([i915#3555] / [i915#8228]) -> [PASS=
][251]
>   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
8/igt@kms_hdr@invalid-metadata-sizes.html
>   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html
>
>  * igt@kms_plane_scaling@invalid-num-scalers:
>    - shard-dg2:          [SKIP][252] ([i915#3555] / [i915#6953] / [i915#8=
152] / [i915#9423]) -> [PASS][253]
>   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_plane_scaling@invalid-num-scalers.html
>   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_plane_scaling@invalid-num-scalers.html
>
>  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:
>    - shard-dg2:          [SKIP][254] ([i915#12247] / [i915#8152] / [i915#=
9423]) -> [PASS][255]
>   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
>   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html
>
>  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d:
>    - shard-dg2:          [SKIP][256] ([i915#12247] / [i915#8152]) -> [PAS=
S][257] +3 other tests pass
>   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d.htm=
l
>   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe=
-d.html
>
>  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>    - shard-dg2:          [SKIP][258] ([i915#3555] / [i915#8152] / [i915#9=
423]) -> [PASS][259]
>   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
>   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-11/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation=
.html
>
>  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
>    - shard-dg2:          [SKIP][260] ([i915#6953] / [i915#8152] / [i915#9=
423]) -> [PASS][261]
>   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.htm=
l
>   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-=
25.html
>
>  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
>    - shard-dg2:          [SKIP][262] ([i915#12247] / [i915#6953] / [i915#=
8152] / [i915#9423]) -> [PASS][263]
>   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.htm=
l
>   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0=
-5.html
>
>  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@=
pipe-a:
>    - shard-dg2:          [SKIP][264] ([i915#12247]) -> [PASS][265] +11 ot=
her tests pass
>   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pip=
e-a.html
>   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0=
-5@pipe-a.html
>
>  * igt@kms_pm_rpm@cursor-dpms:
>    - shard-dg2:          [SKIP][266] ([i915#1849]) -> [PASS][267] +1 othe=
r test pass
>   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_pm_rpm@cursor-dpms.html
>   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_pm_rpm@cursor-dpms.html
>
>  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>    - shard-dg2:          [SKIP][268] ([i915#9519]) -> [PASS][269] +2 othe=
r tests pass
>   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>
>  * igt@kms_psr@psr2-cursor-plane-onoff:
>    - shard-mtlp:         [FAIL][270] ([i915#12380]) -> [PASS][271] +1 oth=
er test pass
>   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-mtlp=
-8/igt@kms_psr@psr2-cursor-plane-onoff.html
>   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-mtlp-7/igt@kms_psr@psr2-cursor-plane-onoff.html
>
> =20
>#### Warnings ####
>
>  * igt@gem_create@create-ext-cpu-access-big:
>    - shard-dg2:          [FAIL][272] -> [ABORT][273] ([i915#9846])
>   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@gem_create@create-ext-cpu-access-big.html
>   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-8/igt@gem_create@create-ext-cpu-access-big.html
>
>  * igt@gem_ctx_engines@invalid-engines:
>    - shard-mtlp:         [FAIL][274] ([i915#12031]) -> [FAIL][275] ([i915=
#12027] / [i915#12031])
>   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-mtlp=
-2/igt@gem_ctx_engines@invalid-engines.html
>   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-mtlp-2/igt@gem_ctx_engines@invalid-engines.html
>
>  * igt@i915_module_load@reload-with-fault-injection:
>    - shard-tglu:         [ABORT][276] ([i915#9820]) -> [ABORT][277] ([i91=
5#10887] / [i915#9820])
>   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-tglu=
-6/igt@i915_module_load@reload-with-fault-injection.html
>   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-tglu-4/igt@i915_module_load@reload-with-fault-injection.html
>    - shard-mtlp:         [ABORT][278] ([i915#10131] / [i915#10887] / [i91=
5#9820]) -> [ABORT][279] ([i915#10131] / [i915#9820])
>   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-mtlp=
-8/igt@i915_module_load@reload-with-fault-injection.html
>   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
>
>  * igt@i915_selftest@mock:
>    - shard-glk:          [DMESG-WARN][280] ([i915#9311]) -> [DMESG-WARN][=
281] ([i915#1982] / [i915#9311])
>   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-glk1=
/igt@i915_selftest@mock.html
>   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-glk4/igt@i915_selftest@mock.html
>
>  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>    - shard-dg2:          [SKIP][282] ([i915#9197]) -> [SKIP][283] ([i915#=
9531])
>   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>
>  * igt@kms_big_fb@linear-16bpp-rotate-270:
>    - shard-dg2:          [SKIP][284] -> [SKIP][285] ([i915#9197])
>   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
10/igt@kms_big_fb@linear-16bpp-rotate-270.html
>   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_big_fb@linear-16bpp-rotate-270.html
>
>  * igt@kms_big_fb@linear-16bpp-rotate-90:
>    - shard-dg2:          [SKIP][286] ([i915#9197]) -> [SKIP][287] +4 othe=
r tests skip
>   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_big_fb@linear-16bpp-rotate-90.html
>   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-11/igt@kms_big_fb@linear-16bpp-rotate-90.html
>
>  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>    - shard-dg2:          [SKIP][288] ([i915#5190] / [i915#9197]) -> [SKIP=
][289] ([i915#4538] / [i915#5190]) +9 other tests skip
>   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
>   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
>
>  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>    - shard-dg2:          [SKIP][290] ([i915#4538] / [i915#5190]) -> [SKIP=
][291] ([i915#5190] / [i915#9197]) +7 other tests skip
>   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
>   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
>
>  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>    - shard-dg2:          [SKIP][292] ([i915#5190]) -> [SKIP][293] ([i915#=
5190] / [i915#9197]) +1 other test skip
>   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
6/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
>   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
>
>  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>    - shard-dg1:          [SKIP][294] ([i915#4423] / [i915#4538]) -> [SKIP=
][295] ([i915#4538])
>   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg1-=
19/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
>   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-16/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
>
>  * igt@kms_big_fb@yf-tiled-addfb:
>    - shard-dg2:          [SKIP][296] ([i915#5190] / [i915#9197]) -> [SKIP=
][297] ([i915#5190])
>   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_big_fb@yf-tiled-addfb.html
>   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_big_fb@yf-tiled-addfb.html
>
>  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs:
>    - shard-dg2:          [SKIP][298] ([i915#9197]) -> [SKIP][299] ([i915#=
10307] / [i915#6095]) +9 other tests skip
>   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs.html
>   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-7/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs.html
>
>  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>    - shard-dg2:          [SKIP][300] ([i915#12313]) -> [SKIP][301] ([i915=
#9197]) +1 other test skip
>   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
10/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
>   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
>
>  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
>    - shard-dg2:          [SKIP][302] ([i915#10307] / [i915#6095]) -> [SKI=
P][303] ([i915#9197]) +8 other tests skip
>   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
10/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
>   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
>
>  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>    - shard-dg2:          [SKIP][304] ([i915#9197]) -> [SKIP][305] ([i915#=
12313])
>   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
>   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
>
>  * igt@kms_cdclk@mode-transition-all-outputs:
>    - shard-dg2:          [SKIP][306] ([i915#9197]) -> [SKIP][307] ([i915#=
11616] / [i915#7213])
>   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_cdclk@mode-transition-all-outputs.html
>   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_cdclk@mode-transition-all-outputs.html
>
>  * igt@kms_content_protection@atomic:
>    - shard-dg2:          [SKIP][308] ([i915#7118] / [i915#9424]) -> [SKIP=
][309] ([i915#9197])
>   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
6/igt@kms_content_protection@atomic.html
>   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_content_protection@atomic.html
>
>  * igt@kms_content_protection@content-type-change:
>    - shard-dg2:          [SKIP][310] ([i915#9197]) -> [SKIP][311] ([i915#=
9424])
>   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_content_protection@content-type-change.html
>   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-11/igt@kms_content_protection@content-type-change.html
>    - shard-snb:          [SKIP][312] -> [INCOMPLETE][313] ([i915#8816])
>   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-snb7=
/igt@kms_content_protection@content-type-change.html
>   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-snb4/igt@kms_content_protection@content-type-change.html
>
>  * igt@kms_content_protection@mei-interface:
>    - shard-dg1:          [SKIP][314] ([i915#9424]) -> [SKIP][315] ([i915#=
9433])
>   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg1-=
18/igt@kms_content_protection@mei-interface.html
>   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-13/igt@kms_content_protection@mei-interface.html
>
>  * igt@kms_content_protection@type1:
>    - shard-dg2:          [SKIP][316] ([i915#7118] / [i915#7162] / [i915#9=
424]) -> [SKIP][317] ([i915#7118] / [i915#9424])
>   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
10/igt@kms_content_protection@type1.html
>   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-3/igt@kms_content_protection@type1.html
>
>  * igt@kms_cursor_crc@cursor-offscreen-32x10:
>    - shard-dg2:          [SKIP][318] ([i915#3555]) -> [SKIP][319] ([i915#=
9197]) +3 other tests skip
>   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
6/igt@kms_cursor_crc@cursor-offscreen-32x10.html
>   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html
>
>  * igt@kms_cursor_crc@cursor-random-512x512:
>    - shard-dg2:          [SKIP][320] ([i915#9197]) -> [SKIP][321] ([i915#=
11453]) +2 other tests skip
>   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_cursor_crc@cursor-random-512x512.html
>   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-11/igt@kms_cursor_crc@cursor-random-512x512.html
>
>  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>    - shard-dg2:          [SKIP][322] ([i915#9197]) -> [SKIP][323] ([i915#=
5354]) +2 other tests skip
>   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>
>  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>    - shard-dg2:          [SKIP][324] ([i915#4103] / [i915#4213]) -> [SKIP=
][325] ([i915#9197])
>   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>
>  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size=
:
>    - shard-dg2:          [SKIP][326] ([i915#5354]) -> [SKIP][327] ([i915#=
9197]) +3 other tests skip
>   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
10/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.h=
tml
>   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-s=
ize.html
>
>  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions=
-varying-size:
>    - shard-dg2:          [SKIP][328] ([i915#9197]) -> [SKIP][329] ([i915#=
4103] / [i915#4213]) +2 other tests skip
>   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-va=
rying-size.html
>   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transit=
ions-varying-size.html
>
>  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>    - shard-dg2:          [SKIP][330] ([i915#9197]) -> [SKIP][331] ([i915#=
9833])
>   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
>   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
>
>  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>    - shard-dg2:          [SKIP][332] ([i915#9197]) -> [SKIP][333] ([i915#=
3555]) +2 other tests skip
>   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
>   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
>
>  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>    - shard-dg2:          [SKIP][334] ([i915#3840]) -> [SKIP][335] ([i915#=
9197])
>   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
>   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
>
>  * igt@kms_flip@flip-vs-suspend:
>    - shard-dg1:          [INCOMPLETE][336] ([i915#4839] / [i915#6113]) ->=
 [DMESG-WARN][337] ([i915#4423])
>   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg1-=
13/igt@kms_flip@flip-vs-suspend.html
>   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-18/igt@kms_flip@flip-vs-suspend.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>    - shard-dg2:          [SKIP][338] ([i915#2672] / [i915#3555] / [i915#5=
190]) -> [SKIP][339] ([i915#3555] / [i915#5190]) +1 other test skip
>   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling=
.html
>
>  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscali=
ng:
>    - shard-dg2:          [SKIP][340] ([i915#3555] / [i915#5190]) -> [SKIP=
][341] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
>   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.=
html
>   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downsc=
aling.html
>
>  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>    - shard-dg2:          [SKIP][342] ([i915#8708]) -> [SKIP][343] ([i915#=
5354]) +8 other tests skip
>   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
>   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gt=
t.html
>
>  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
>    - shard-dg2:          [SKIP][344] ([i915#5354]) -> [SKIP][345] ([i915#=
8708]) +16 other tests skip
>   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
>   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
>    - shard-dg2:          [SKIP][346] ([i915#3458]) -> [SKIP][347] ([i915#=
5354]) +14 other tests skip
>   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
>   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.=
html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
>    - shard-dg2:          [SKIP][348] ([i915#10433] / [i915#3458]) -> [SKI=
P][349] ([i915#3458])
>   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
>   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>    - shard-dg2:          [SKIP][350] ([i915#10055]) -> [SKIP][351] ([i915=
#5354])
>   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
>   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>    - shard-dg2:          [SKIP][352] ([i915#3458]) -> [SKIP][353] ([i915#=
10433] / [i915#3458]) +4 other tests skip
>   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cp=
u.html
>
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>    - shard-dg2:          [SKIP][354] ([i915#5354]) -> [SKIP][355] ([i915#=
3458]) +9 other tests skip
>   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
>   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.htm=
l
>
>  * igt@kms_hdr@bpc-switch:
>    - shard-dg2:          [SKIP][356] ([i915#9197]) -> [SKIP][357] ([i915#=
3555] / [i915#8228]) +1 other test skip
>   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_hdr@bpc-switch.html
>   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_hdr@bpc-switch.html
>
>  * igt@kms_hdr@static-toggle-suspend:
>    - shard-dg2:          [SKIP][358] ([i915#3555] / [i915#8228]) -> [SKIP=
][359] ([i915#9197]) +1 other test skip
>   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
1/igt@kms_hdr@static-toggle-suspend.html
>   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_hdr@static-toggle-suspend.html
>
>  * igt@kms_plane_lowres@tiling-y:
>    - shard-dg2:          [SKIP][360] ([i915#8821]) -> [SKIP][361] ([i915#=
9197])
>   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
10/igt@kms_plane_lowres@tiling-y.html
>   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_plane_lowres@tiling-y.html
>
>  * igt@kms_plane_multiple@tiling-y:
>    - shard-dg2:          [SKIP][362] ([i915#9197]) -> [SKIP][363] ([i915#=
8806])
>   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_plane_multiple@tiling-y.html
>   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-11/igt@kms_plane_multiple@tiling-y.html
>
>  * igt@kms_plane_multiple@tiling-yf:
>    - shard-dg2:          [SKIP][364] ([i915#9197]) -> [SKIP][365] ([i915#=
3555] / [i915#8806])
>   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_plane_multiple@tiling-yf.html
>   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-7/igt@kms_plane_multiple@tiling-yf.html
>
>  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>    - shard-dg2:          [SKIP][366] ([i915#5354] / [i915#9423]) -> [SKIP=
][367] ([i915#5354] / [i915#8152] / [i915#9423])
>   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
1/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
>   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
>
>  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>    - shard-dg2:          [SKIP][368] ([i915#12247] / [i915#3555] / [i915#=
8152] / [i915#9423]) -> [SKIP][369] ([i915#12247] / [i915#3555] / [i915#942=
3])
>   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
>   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.ht=
ml
>
>  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25=
:
>    - shard-dg2:          [SKIP][370] ([i915#12247] / [i915#6953] / [i915#=
8152] / [i915#9423]) -> [SKIP][371] ([i915#12247] / [i915#6953] / [i915#942=
3])
>   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.ht=
ml
>   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-=
0-25.html
>
>  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25=
@pipe-d:
>    - shard-dg2:          [SKIP][372] ([i915#12247] / [i915#8152]) -> [SKI=
P][373] ([i915#12247]) +1 other test skip
>   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pi=
pe-d.html
>   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-=
0-25@pipe-d.html
>
>  * igt@kms_rotation_crc@primary-rotation-270:
>    - shard-dg2:          [SKIP][374] ([i915#9197]) -> [SKIP][375] ([i915#=
11131])
>   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_rotation_crc@primary-rotation-270.html
>   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-6/igt@kms_rotation_crc@primary-rotation-270.html
>
>  * igt@kms_tiled_display@basic-test-pattern:
>    - shard-glk:          [SKIP][376] -> [FAIL][377] ([i915#10959])
>   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-glk8=
/igt@kms_tiled_display@basic-test-pattern.html
>   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-glk7/igt@kms_tiled_display@basic-test-pattern.html
>    - shard-dg2:          [SKIP][378] ([i915#8623]) -> [SKIP][379] ([i915#=
9197])
>   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
6/igt@kms_tiled_display@basic-test-pattern.html
>   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-2/igt@kms_tiled_display@basic-test-pattern.html
>
>  * igt@kms_vrr@lobf:
>    - shard-dg2:          [SKIP][380] ([i915#9197]) -> [SKIP][381] ([i915#=
11920])
>   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg2-=
2/igt@kms_vrr@lobf.html
>   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg2-7/igt@kms_vrr@lobf.html
>
>  * igt@kms_vrr@seamless-rr-switch-drrs:
>    - shard-dg1:          [SKIP][382] ([i915#4423] / [i915#9906]) -> [SKIP=
][383] ([i915#9906])
>   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15541/shard-dg1-=
12/igt@kms_vrr@seamless-rr-switch-drrs.html
>   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137978v4/shar=
d-dg1-17/igt@kms_vrr@seamless-rr-switch-drrs.html
>
> =20
>  {name}: This element is suppressed. This means it is ignored when comput=
ing
>          the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
055
>  [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
131
>  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
307
>  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
433
>  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
434
>  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
647
>  [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
656
>  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/107=
2
>  [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
887
>  [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
959
>  [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
131
>  [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
453
>  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
520
>  [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
521
>  [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
616
>  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
681
>  [i915#11703]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
703
>  [i915#11713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
713
>  [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
808
>  [i915#11814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
814
>  [i915#11815]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
815
>  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
920
>  [i915#11961]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
961
>  [i915#11980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
980
>  [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
989
>  [i915#12027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
027
>  [i915#12031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
031
>  [i915#12138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
138
>  [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
177
>  [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
247
>  [i915#12296]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
296
>  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
313
>  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
316
>  [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
339
>  [i915#12380]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
380
>  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/176=
9
>  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/182=
5
>  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/183=
9
>  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/184=
9
>  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/198=
2
>  [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/206=
5
>  [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/212=
2
>  [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/234=
6
>  [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/243=
7
>  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/252=
7
>  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/258=
2
>  [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/258=
7
>  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/265=
8
>  [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/267=
2
>  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>  [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284=
2
>  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/285=
6
>  [i915#2876]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/287=
6
>  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/302=
3
>  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/311=
6
>  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/328=
1
>  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/328=
2
>  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/329=
7
>  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/329=
9
>  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/345=
8
>  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/355=
5
>  [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/359=
1
>  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/363=
7
>  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/374=
2
>  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/384=
0
>  [i915#3966]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/396=
6
>  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/407=
7
>  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/407=
9
>  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/408=
3
>  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/410=
3
>  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/421=
2
>  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/421=
3
>  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/427=
0
>  [i915#4348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/434=
8
>  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/439=
1
>  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/442=
3
>  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/452=
5
>  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/453=
8
>  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/461=
3
>  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/483=
9
>  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/485=
4
>  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/519=
0
>  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/528=
6
>  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/528=
9
>  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/535=
4
>  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/609=
5
>  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/611=
3
>  [i915#6187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/618=
7
>  [i915#6227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/622=
7
>  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/630=
1
>  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/662=
1
>  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/688=
0
>  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/694=
4
>  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/695=
3
>  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/711=
6
>  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/711=
8
>  [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/716=
2
>  [i915#72]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/72
>  [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/721=
3
>  [i915#7297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/729=
7
>  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/758=
2
>  [i915#7790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/779=
0
>  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/782=
8
>  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/797=
5
>  [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/815=
2
>  [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/821=
3
>  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/822=
8
>  [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/829=
2
>  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/838=
1
>  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/839=
9
>  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/841=
1
>  [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/841=
4
>  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/842=
8
>  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/851=
6
>  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/855=
5
>  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/862=
3
>  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/870=
8
>  [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/870=
9
>  [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/880=
6
>  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/881=
4
>  [i915#8816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/881=
6
>  [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/882=
1
>  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/919=
7
>  [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/929=
5
>  [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/931=
1
>  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/932=
3
>  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/942=
3
>  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/942=
4
>  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/943=
3
>  [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/951=
9
>  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/953=
1
>  [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/956=
1
>  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/968=
5
>  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/973=
2
>  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/976=
6
>  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/980=
9
>  [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/982=
0
>  [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/983=
3
>  [i915#9846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/984=
6
>  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/990=
6
>  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/991=
7
>  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/993=
4
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_15541 -> Patchwork_137978v4
>
>  CI-20190529: 20190529
>  CI_DRM_15541: 87312f4bbb70018f831a8ef565db9cdc37b4da67 @ git://anongit.f=
reedesktop.org/gfx-ci/linux
>  IGT_8077: 42f9e9702f74a4993318adea936baaa186084689 @ https://gitlab.free=
desktop.org/drm/igt-gpu-tools.git
>  Patchwork_137978v4: 87312f4bbb70018f831a8ef565db9cdc37b4da67 @ git://ano=
ngit.freedesktop.org/gfx-ci/linux
>  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fr=
eedesktop.org/piglit
>
>=3D=3D Logs =3D=3D
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
37978v4/index.html
