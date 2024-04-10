Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AE68A0350
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 00:28:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5126210E8C6;
	Wed, 10 Apr 2024 22:28:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WFbXkREK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DE6D10E794;
 Wed, 10 Apr 2024 22:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712788092; x=1744324092;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fmw7oBsTR4BrDLRE9KyvfKw1RQ1WSOwa4pJT0UO66wo=;
 b=WFbXkREKXQIpOlxnweAPW4INZy+e0tWSbRq5oID8+fdOFUSUrvl1sA5m
 B22cHzyNrrC9MhyVOsmIWUmNuD2MP6MYav+6lV/TVy+0M86QOwXRbjcQ7
 RLrwMkel8LMtnZMJ689Z0I0/hveDXFjjHSv5GAT9nNlfxqMr4cd/+0Z7k
 mhZC1CsvSvLceTYjToVAjN7LXqU+9G/kpQI5EiFKnmm6VE98/bcRExY0X
 TYnwIV3NDefYq308AvpAF4T1plYoJHjilDjLt719EcO4ygXTDblbW/ZOe
 6CZgHBLZfRWPEX2V3SobvWxeaE/iwSd/Si7ZgNbB72Ypb3WCwhP1xdkN4 g==;
X-CSE-ConnectionGUID: 1/YN0J0qTVqaUBbI5c+x0Q==
X-CSE-MsgGUID: fa6vgm9sT+++qVmxFGSWTg==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="18890097"
X-IronPort-AV: E=Sophos;i="6.07,191,1708416000"; d="scan'208";a="18890097"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 15:28:11 -0700
X-CSE-ConnectionGUID: I/29oNZFSkKERoUTwksrGw==
X-CSE-MsgGUID: 264YiHOmRHi15Vu+mXpHFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,191,1708416000"; d="scan'208";a="20782752"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Apr 2024 15:28:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 15:28:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Apr 2024 15:28:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Apr 2024 15:28:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DPoVpwBsH7WCamNrPpoWaGYIZgKQxJp7A15JHAUOEmdCKq3ZZGE2EBB+MpFix1a9dMltbBil+sfuIMMoXIa+LQt9U5ExyilGI3L/VNpJuvSdP64Cp1fueoLw6BRpa1t7hCDTxfWtqtS7dBCmlw9MXga/CWUTqZuJ3yyeMLWlEBr5NYvwaHGPfr1HnF3guEcQdEuNJEkIWIqdQlbijfczCgLnkVZzvxlJXOuOWY/TJC2pL1BC4LJTjv8hx60RDF+nw5VY9K+hCvjznbbITMk77oEc9jaaJ5DcNS2tr5XsfAtXh+16d4Ds4/CV1V4wAYvMvFlHmzV60QAT1TVReNt+3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qSfRv9u/iKY+N0wQohytS/IE9u7G+HtCN7+WUKDLUco=;
 b=lAYDsQvggHzjmtzHYyv9HBp/J6X0ifvU8N5Oj1QV9REtyKYHhKHJYmctsWsRVJ6pBhgniVname7EahrK62XYtikz4LN7hBfF3pg6mE1WZ/SgYfiDn1vvb9tU4XY+UZIXGkWd+ITMFG1gSajv3LYGmNQU3DFIr8R+P0NEy9uyXhf7RofrKhI6FCfo9wOxLyjffi9+WM3SyV/ZTAjKHN3JBetGBDpvhwE8ludkbQW6NQOHJ9u2t74kQvo/kxs9NIxyApmFLnkqeOijyJri+QOrR731CxBgFSAeML506PCyDbEogw3bYil60yaljmzTW1sdb8Y+G+GfL5pZ1MuMi43FBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB8467.namprd11.prod.outlook.com (2603:10b6:610:1bd::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 10 Apr
 2024 22:28:09 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 22:28:08 +0000
Date: Wed, 10 Apr 2024 17:28:06 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH i-g-t v2] lib/kunit: Read results from debugfs
Message-ID: <755tps7kalc5r2puy76uzwbswfk4cytvwq2rt5bixkpn7fq6u2@gzknf2oio7xp>
References: <20240405175544.6047-2-janusz.krzysztofik@linux.intel.com>
 <1881671.tdWV9SEqCh@jkrzyszt-mobl2.ger.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <1881671.tdWV9SEqCh@jkrzyszt-mobl2.ger.corp.intel.com>
X-ClientProxiedBy: SJ0PR03CA0214.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::9) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB8467:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Sa0AQhxdYrMCGr4w21j4gAb+JHST4XdGWRoBt4iS6tnV21kOtH0hoJcazWiTO2IZmflclHT34Aa1aqzEb7OpDK7DecCAAuJfFAlJuVCJQpfFJrVvIK0nJev2aLBSvL38otOy/aMWysgjzg42v+2f7Amje3LI4GOunQj4BmuJoO5Z5VciSckxy4gOcr+oPw3loIXgRYG/CpNTaserbm8IYKoyU96uzHHd56vcIwOW2AP0gbM+jM/bkT5JbrKZydp+IqSvnk4zdcC4J8hn4fV5gyNKe4+WFSCaeVEfIBz6taox8Fa5UIZWixXAK/OfTkaEildUQejKvfzat5gLS9HZwyLuxyog0E0raaAWWALySSBU26cCUgz/ajYYatX1uaA+X2ves0tKJn7KLUOAMGzNjMdPJ9nMBJ6dnF1nv3iPQzWbamGYV+HcBof2KAWV2EhKJI2jwJ0cMnvbe3zu2c0zoZED2zAJxZvDEZ0l0Ya6NcagWxB/lfkcUp4MFWGdnI2cD24+aqZ1bVC8/Ic7fSGYFpvlzYHhpJmS7YKoieXqIiFC6dt+ym54807bWE6JvgMIHETxVnVyE0DiEawtu2DKpbJSK4JLP6pari7JWSwBVlPQ4z70jLdRImSKg5P2nD1VLXh0a7XIdxxdkE3lHlKZFNw0WSX9IYmbMoIwxCVLSrg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WXqbSH90VZn4bRpZSdukPtwC/rLU3enhhPnxsAkn/GtQPRhcefslkQfKSL1W?=
 =?us-ascii?Q?+v7oyeFrTqE6QAMRPFV4NLSQeX1w8uB/An7zSbOSAihQX/GkLToGSk0whPc2?=
 =?us-ascii?Q?Xkchp7CY1ckrm4BFy8kIdspPaBUR45cgoU6EdefdjNj2lTZdQBNVTmNEnqD2?=
 =?us-ascii?Q?pE0U1JhRt7uFsekVZZH7+LBm0NG3nMGYzQLsZnu59D8DZifwLF/EXUh3h1RY?=
 =?us-ascii?Q?bceRfEsc9ri13vPLUTm8frGr1LFbI8TDMwhj7TAFPC0pyGuwynv1tve4yVvj?=
 =?us-ascii?Q?KLVqFC4HkJy0/UJfmR+8bZ8SkJ8y9tTBgU34yiBhWvKY0zM8rmiBm2L6LJxm?=
 =?us-ascii?Q?clFCoeNHwK2JmfxHQlbuHtDV8t4nUbdlN1x0kzpDD81luPOO4Rvf4L/LRoyG?=
 =?us-ascii?Q?9flG8wnn8XYD7tJh2/+AQp81g78mW+YvNVlIiHu1NFGgxNgTAfVLe7MoJngo?=
 =?us-ascii?Q?903Fs6rTncdGFDWo2s5yIeHkEwyAjZqQzpPCWawbqISBPDEbG0EkCpuF+lpK?=
 =?us-ascii?Q?BMRnJzQ/KfE6AWIX5vmm7d9js3Dl1aSf+pz17tb/kzsWZUrRQReLBNW42x5U?=
 =?us-ascii?Q?jh8IcKUwv+/9R223qNnbayFLwUTJLI9OihNVG+1uU334kiFhEsjJhBkXtVa4?=
 =?us-ascii?Q?OVtK1avoo7V9e79uFxUt9APibAdlZ+o7KB5nJnHIDnbC9GN9wAFS6nDyTI+C?=
 =?us-ascii?Q?VIWcPwazgstJEzMv3cg38k6SRVQLSiK9yK4Ti/m3rTV3V7lTKsFoetRcy0PO?=
 =?us-ascii?Q?62qGO0WJrZ20s2zv1FzZye8SAENu3rwD0j4EuGyBRSCUarYAMcLJ1iU9MwZj?=
 =?us-ascii?Q?VG2SCS2Ip4bw5qqOgWwOHtADfrGBET5yHJfR8t1sRWbo+mw/yt+4vwDdZMpb?=
 =?us-ascii?Q?4Qj5iaMCcwjQFyuDri8ESi9xtn+MurbjA0kR+E4cWftmR9/7gQskNxIGTzl3?=
 =?us-ascii?Q?vYBk56NDXZ3PxfEHAqngpEH8Q9Lz1RbZ23BHZlT8SmTAPnvE3hTijLwmXkYn?=
 =?us-ascii?Q?vKH8V4XvcEGBbH5EievpuXZrtVpEOIi9a445pt5KbfrK9acPxlgE/Q3DCyYy?=
 =?us-ascii?Q?Y96zfuGAn6VlK2YX5UiZIxarfEZ0zfUr0FzWgytAkVRsaoO4Q0umYR123vKj?=
 =?us-ascii?Q?PNJX0yMMIo7BmqMkmEBzopY6skWxS4LP/Z85NMEvVjDPCN5IFPpk7n3BsyUg?=
 =?us-ascii?Q?tbqqAQMtRtZ32ytwU96OZY29jSFTdshLFbiWVYMRwayG84xsOzSviFUIOnIi?=
 =?us-ascii?Q?6Ku7sW3rbjXJLQ/XRcT1LX1g0XYuyQDsbblAkza1QuEVbXVFPMbQrqGG2w3e?=
 =?us-ascii?Q?XmoiP35g/KRIm+cw3eBzAl8qt5ggOpMa4fnrHbbeB/Fnk4OvK4cCQmqcKuTS?=
 =?us-ascii?Q?xePqUOAIPmhAmZsUQITdLACdCiZl0xcdMesCfyVBwyPGFAoDgpMUVctNVJ1q?=
 =?us-ascii?Q?Lo4BpWcbNhNXB6ZzXvDYs5XA3LV6D0NX4RRKNACk41OH78L5rsBFmWhn2CCq?=
 =?us-ascii?Q?SXMnjTlR77OLjmkaFuWNo9zmPKeh1NgXxeeiSlpUlVC8zcKuevafPDGV3FKR?=
 =?us-ascii?Q?8IZ6+3z2/3CclgRyFPKYcZOKMMi3owlTgwm7Vsh02ERSp2B9xELsI4CagB3b?=
 =?us-ascii?Q?Iw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18c3463f-e7e7-4c5a-c1c0-08dc59ad7fca
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2024 22:28:08.9560 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wbZwN7JKzb3w+CzryKhz2dDGBcnAHAZsd5AIv1hVEYMASaTwGVAeEn4q3TJLIVfKITOx0i8t2ukWMNzGtO8uE2+vQYWIMQHlxEpuC29WLpQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8467
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

On Wed, Apr 10, 2024 at 08:28:40PM +0200, Janusz Krzysztofik wrote:
>Hi Lucas,
>
>On Friday, 5 April 2024 19:54:53 CEST Janusz Krzysztofik wrote:
>> KUnit can provide KTAP reports from test modules via debugfs files, one
>> per test suite.  Using that source of test results instead of extracting
>> them from dmesg, where they may be interleaved with other kernel messages,
>> seems more easy to handle and less error prone.  Switch to it.
>>
>> If KUnit debugfs support is found not configured then fall back to legacy
>> processing path.
>>
>> v2: Check validity of debugfs argument before calling kunit_get_tests()
>>     (Kamil),
>>   - replace multiple openat() + fdopen/fdopendir(), each followed by an
>>     error check, with less expensive fopen/opendir() of file/dir pathname
>>     components concatentated to a local buffer, protected from buffer
>>     overflow or truncation with a single check for enough buffer space
>>     (Lucas),
>>   - avoid confusing 'if' statement condition (Lucas).
>
>Could you please confirm if your R-b still applies?

yes, LGTM.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi
