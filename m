Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5781D9788F8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 21:29:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85A9410ED86;
	Fri, 13 Sep 2024 19:29:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rdmgt2LU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B86910ED86
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 19:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726255771; x=1757791771;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=ZXK1XECPog/dM4PTq0PBvcaXZQlmmJl+HUzidpg/B5U=;
 b=Rdmgt2LU31IUlEKZm9mQV9IsVCwR0bVPBosnJviCBfRiAPtEdB4XbF64
 n5Yw4m8nLS+PKHBWjH/uGpJm8tzMyXnSib449gjmJjW8fLZB25TUxbw3o
 vJaDdfdDMx6fhCr/NzLTRx7fQkbpRPKTIsyi5576B23RxWsg2WzrSoHN1
 uvYj71vX76EpC2tLX7NvwT5KYUPJNB7H/WDGYcJfmNDcBQRs3UThqciUy
 nwaYGmuSfZBxAAFfdS7uvIEYpZgKL94fLnYffd8/CckYmR5h5HFLk44rA
 jR2JVXXV0OxGBY2tTl1hOuwH9qivEK+FkbOTD+mGhyqcZiNMfPKC2db2l g==;
X-CSE-ConnectionGUID: fmnE6JugQviHI0Q7GagC/Q==
X-CSE-MsgGUID: gHZQAfyvQ5yYzWTbG31SvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="25052620"
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="25052620"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 12:29:30 -0700
X-CSE-ConnectionGUID: PTnYZGMCQbmuCcz4GkGeyA==
X-CSE-MsgGUID: ztW477/OT5e+6uElTf/rDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="68024534"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2024 12:29:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 12:29:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 12:29:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 13 Sep 2024 12:29:21 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 13 Sep 2024 12:29:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y+H8mY052j2r6OJv3iUzTnSv97o4F2ej7xVFciDbQVk3ZdakTWxgu9y/FVZazmroe3bq8kBj4glcSXYHtzvyW7MSHOh3eO3zjLkCr10L1Fsg+Mzox5cwYShzBWl/PmCgQb0wzOy1oanZ5elhRaqhk5c5BVjT8c9dtGnNUxisdYieAzAJDlTXpWagRfIU9ez9VylUFQdwX8zuU7qbs800mS9fI4iLQhv/ZHOcAk+ketTQ1nuFJMcBXVZXN72ESfptmlpKmq8hEcYC25zWeO+qmLn+zEKLiltVL76tgX7eBAphaF+MrVBZIfNLTiAo1DIMRkpCd3BmvU8OpCrvzwhcRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P23IJu0hE9x3+qBTgHxGmy4bpiCKxHRxtY9VDqZSNy4=;
 b=WejKTEYbC9fstvLFJXsO4P9qTXLiTN/kjD/X62Fxm4QiuptSKOclMmBCDFiMHA5x4Rml7lWYqe5shypCG/OtWo908mGMjHV3H0Q7Rr6FK8eop6c9LysuNnhuKcAvDa4nWiPAIxNwtluV2pyh5Nv/X7QwxVqguqznZutlaj4R3PjJ9RP5GdMpDWVCw5vNq4duvASRZBHmG3aWgUuKI511ACsyi6mjPMvwdTxmTs9x77WlHZq86QZZXpk61FNcNRkAymPR2/kIyXyoNBEA20/Pg5LBJ9KAIWzbZEFVTaNO7Hn5Y0OksozjRAQgZhF4qdtDh1ebVsl2m3zluCD3XDSHZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Fri, 13 Sep
 2024 19:29:18 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.7939.017; Fri, 13 Sep 2024
 19:29:18 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240911151836.16800-1-ville.syrjala@linux.intel.com>
References: <20240911151836.16800-1-ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/psr: Fix PSR sink enable sequence
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 13 Sep 2024 16:29:13 -0300
Message-ID: <172625575304.1568.4153164493241302474@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P222CA0016.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::21) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|MW4PR11MB6912:EE_
X-MS-Office365-Filtering-Correlation-Id: d3f183c3-259a-4ff9-b4ac-08dcd42a5c8d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OWNmWDFNbitaLzFHK2hMSit2d25Ia2VsL1dUZVZZMVJBK014Tzc3OGVRK25H?=
 =?utf-8?B?TGtJNm5PZ0lmUDlWVHVnYllrNDI1Z2F3YWNWeFMvQ083Z2JRa1g4SEhoSmdq?=
 =?utf-8?B?dDNmTHg5ZGtBRm41b3pHMDkzRytrRWEyVnptckJhYjhiL3JvTWh5bGdyMXpw?=
 =?utf-8?B?ODJZenFHK3pqYTN4SlU2QWI1NWpNYllEVldraFUzWVNpelNQRkVZZnhyeUh1?=
 =?utf-8?B?UVA1WE5UZ01jbyt4cUlneHM5WWtCMzloWWM3WFJXTEIrYUQzMjdTdFpQMXRu?=
 =?utf-8?B?a01IYnNmam0yaFd0S1hjS0FOcVk3ZktWMmxmcExnS0J3Tk5sZkcvQS9ZZTNo?=
 =?utf-8?B?VmZKQ1I2aW1qc04ySWdxRWlLK0JXVTkxL2NzNEtLZCtzTWkxQmFBa3o5WXVY?=
 =?utf-8?B?dmV1bDU4b0VFWHgvZWJlTk1BTjBmK08yenI0eCtjNEtjQ3QyYTdaTjV2VEZu?=
 =?utf-8?B?bmlXTG1WbTFjQXdTV1VOdFJNSURYdFdyaVZlUFlBcFEzMlJldzdMTHBFTWxr?=
 =?utf-8?B?aVdnalI4d2lrTWdtaFE5REszTGZMR3FUR01oNW1XdnhOajdIVW5IenFMcktI?=
 =?utf-8?B?WkRROWpmeWZnWFVGRTJjVFJQMTZTdUJpZTlqZGEzV2xYY2lqTHBVb0swVUNz?=
 =?utf-8?B?R1RqWlgxQXZTa21iMTQxUHJKZlBkM004TkxFaDRnTTUyUDVsQkFtMTIreGtu?=
 =?utf-8?B?R0JXeXZrNzZxbzlpSlRlWi9EbDhkQW80VzFHNFg1RVQ2akhXd1B0cXVuSzlx?=
 =?utf-8?B?cGI1OXI2ek9YMkEzd1prTkx2RnkyR2o0OTNKcVBXWmtOZWlKUFZxWmdiTDFP?=
 =?utf-8?B?aFU1OHdwcXlFYUYwNTFCQStVUkxxTDVaQnQ3amRwSVo0NnFsVXFkN3dnV0g4?=
 =?utf-8?B?eFZNYkVJalFyS3pua0FicVhWaXNkOTMvUFJlN1UrbS9DQjNyRk9SYTdCNU0x?=
 =?utf-8?B?cTdzUnVLQ1hqdEo2YUFsbnpOUXBxZzducVFJa2dnK2ZnR05tNjA5TXYydmx2?=
 =?utf-8?B?YjBvT1RFNTlvY0JIZmxRMEFENXFCbzJZVmFGOWxMN05Sb3U0aWMvd21vYkR2?=
 =?utf-8?B?VTQ4T2hudE9WbUF3cnZ4NnMvL3ZaNUpoWVYwNlBHT2N6RkNnZnpLaW5ZdXMv?=
 =?utf-8?B?ZWhKL054L0R3TDE5dytac0Fvck9EQ0cwUjhVYmJNRmlmZFBoM3FtbWdlQStT?=
 =?utf-8?B?VXM0VjdlVk9wN0V4N1lIak5venU2QUxJcmF5aTZQb1pQTUJSamxNOUhkTjJP?=
 =?utf-8?B?QnZIOVE0a1dhT0Z2bTR0VjcxWkV0WTY4WWVKMDF6MXRkUlRNL1d2M1doTWd3?=
 =?utf-8?B?bHdvZC9laFdpMlJYd09XTjJ0WSs3a0ZRWEpVVFA3QnYxSjZPdUVHMU5LTkpi?=
 =?utf-8?B?Y3RmZFpBQUprbE84VG9aMXRhZU03bDlXWVU4VHk0elRPS28wT05mZ3BYeEpH?=
 =?utf-8?B?UWJMMDg0K0hzemo0U1prS0ZQWm9jV2FRcjNBUHZOdXNxRkRweDBvNFFTSmJ2?=
 =?utf-8?B?aFZsZ3hCSFQxaWdqN2llR2ZmOWZjeXVxb3B2SXZpWVl2VGhoSnk3alYvYSs1?=
 =?utf-8?B?S0xTVnRWclVwNitaR25RTHRNSWxYOVFYQ2lZcDlEVmgxaGVxZlZZNXZMSmlW?=
 =?utf-8?B?aHBGbUdsSVlzL2RIWGJuUVlSWTFoTDJTZkRTdE1ZQmN4dHVDREJpV3dlZWVt?=
 =?utf-8?B?aDQzb042M2JCbk11SDQzcnJvSXlTOTNQWFA1OHEwZ24vbW94L01YTHQ1UFgx?=
 =?utf-8?B?amFneTRhdkRRQXBIb0s0bGo5Zit3bmxSRnE5Tm9YZXB1ejI5YUZDcVo2VklP?=
 =?utf-8?B?aHhaeTRxU0tROTE0N0Y4Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NW5CcHFsTUdBSXY5bG0rOG5NZS9HbTRMalBYWFF5c2Rvb3IwOXNQTGhZYlJa?=
 =?utf-8?B?a2JZQk8wem1OUlV1VG5QT0xYK3Rnc2Q5MGczUUdQYjdwTk5DdDFMay9ZWmM4?=
 =?utf-8?B?UUdkY0xrVjVMZGEzcmt1MTR5dERHQngrNUc3Q3ZiOHdxU0ZiVCtNLzlRUkVq?=
 =?utf-8?B?ektSaGVWaXk3S0dpOEhsc01jNjJXR1hpWmwxTWNGNWIyVk9uSHVOQ1BWL244?=
 =?utf-8?B?UEx0MENxVnNSM0U5bWliQUZsc1JXdmdSdFAxSzB4QUJON01HV3JZMUFoQUZ0?=
 =?utf-8?B?MDNXckNBWmpQc1FpQkxmWHlYN3p4SXVMWTB1cnhXRGtzQ2JGNE1YaVFzWFlk?=
 =?utf-8?B?N1RnbmRzN2lQTjhGU2pHa1BSSkdTZW5iblNlYVFMMkxBeXNDS3o0a2VzNSt0?=
 =?utf-8?B?TGVCVUlPUWNCbU9iRDZxd3pvK0Y0SWVDdkVIQ1hXVnNaVzhCTXZnN3hNM3dO?=
 =?utf-8?B?ZTEzZjhlNk9VVkQzNXZkcCtsaVlMKzE3S0dsNmVzNlVCMHp2M3pneUo3b0JJ?=
 =?utf-8?B?ak5PaHlvU2ZzU2dqbzZhbVdUd29Rcis5azNSKyt0eWFrM2EwRTNWQ2l3em9L?=
 =?utf-8?B?aTJwcTUyT3hGaklrWjhYTk1NREhXTStqNkhWbThySjhGWDdsQUJKK2NLdTM5?=
 =?utf-8?B?d1JlRVlERkVtRTAvRnNkRVNaSVhtQmpnMmJhZ2g4ek9Xb0FvQmhXRllMeU1v?=
 =?utf-8?B?WkhBTHk1WlpMeVNveEtJNHlHQ3Y1MmFzeWNqZDQ0Zzc4QWJmTlFKakJGNG1R?=
 =?utf-8?B?UjFPS3hUQmVhS3dyT3ZraFBkZG1pUjd5eS9RMEQ0YWR0WnBXNnpmN0ZERlpG?=
 =?utf-8?B?SnBEcjJrUGFVQ2hsSFBXSXM5aTdSN3dTSEt3azdoVGsvL0FMM1kySDZhVGtU?=
 =?utf-8?B?eHJINmhRZDZpeGF3L0xZVFFiTk5FM0hkdFdXYkFSUm9jRmtjLzZFYXM3NlYy?=
 =?utf-8?B?aXpCZlZpdkZLeElUVlU3UmIyQlZHZjRjZU5MT0djZkRFNFRPeWtYRC9HTU9M?=
 =?utf-8?B?aVJpYVRUUWNNa3FSNEhDbUlOKzFpVlRHMXlQcVcyV0RPd0pFTnp6dFhxNWxv?=
 =?utf-8?B?Z0x2Q1ovTlRmUllTSkNyUjBBMDREMWEybml3Rlkwa25WbzMxTDVHdDVydllk?=
 =?utf-8?B?UFBRRWN1TGZUQjh2VE5VZUNJZ0k0aGY3Q25ZTTN0bDNDbldxM1E4c3duSGhL?=
 =?utf-8?B?bzZ4WU92dGo1aWg0YWtxaUhOK3RlMDhBUUlwajN0ZUhiMGQvQWFIZVIrSmFj?=
 =?utf-8?B?VDZpRVpmUGNBcjlXTDQzMDR6bU1nbHFqT0grYThzb1RkNUQrRElQREFaVUY0?=
 =?utf-8?B?MkQ3RlFidlFmRCtNWlUzd2hmM0RMb0picUVpSGl5WWhxdE1aOUxuOFpVcDNJ?=
 =?utf-8?B?b05yUGtkRTQ1dlF1djlyTU1PL0h1Slg4V2hZTHZRNVFyTnpKQzdUb3BoeHoz?=
 =?utf-8?B?am40cGNhZVFlNER1emR4bG15b1ZqTVVzT0VYSGtlaFRqa1RQYjVFenR2T3NY?=
 =?utf-8?B?cGQzRlFLRzRva01RdmNOdkxSYmRVMUxqalRPYkJGK3VwRGlxNUJXZEMxN3pM?=
 =?utf-8?B?dlcwZUFuVnNZeEM1enVNZlZaS2liaHJTNjEyUGFGcGl1eWdpb2xrTWFGeXQ5?=
 =?utf-8?B?aWV6T2loQlczdWtVdCtwd1VJbXRVaml4TzB2SElOTGZHZGo4NGVlaGQvWmtX?=
 =?utf-8?B?WFQ5aXlCQmxheFlTKzZxanM3NmJmcXc4K3Z0OVEvSmVzbVRNZTJZWENzU3pZ?=
 =?utf-8?B?Tnl3QVVXWjdmdTZpdHU0MStSL2o5TlpFS3NhSW9malZYUDFoMmJVbW82VE8w?=
 =?utf-8?B?SE1JWDNKUFN4SXRSTE56djBqNzZyTi9HUmdZTUs1dnd4UGVHYkRWbGtjd25n?=
 =?utf-8?B?SmJVZkM2cDdESFBBQUZ2ZUxmYnEwMGVheHRUMFNaMktWMFZBNDZ0bDIxL1px?=
 =?utf-8?B?ZTJHNVV5akN3bVJaSjIwQjdyMDcwWjQ1MmFrUEhLZ3NOUThTbWozcnZheWlw?=
 =?utf-8?B?V2xIYlZlQVlhV2g3c0tOQXBTcGIwWlZZbTZtbzcwcGkySFZYeXE0Q1FybjVW?=
 =?utf-8?B?aTJvT21PMEt0MFR6d2pnLzRwREJkeFJjMzZsQVllUktxVkt2bkdUYko4S21m?=
 =?utf-8?B?VnFGYjZGYzZOM25ndUpiSnlIQWhQU2dhZ3o4N3c2KzFONkVSaDQrUTdjSnBO?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3f183c3-259a-4ff9-b4ac-08dcd42a5c8d
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2024 19:29:18.7382 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tV9Z3PaKDEU3AzpUHsmfNqYzNPQ40tlsTNHYYCNauPSmSTGLrwJNmzP/B3je3XKC0JuifJexDp9pbiTL243THQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
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

Quoting Ville Syrjala (2024-09-11 12:18:36-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>According to the eDP spec, the source must first configure all
>PSR related DPCD registers apart from the actual enable bit,
>and only then set the enable bit. Split the current single DPCD
>write to two to match the spec.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
> 1 file changed, 3 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i9=
15/display/intel_psr.c
>index 1a4ef231a53c..2b7c0c73f335 100644
>--- a/drivers/gpu/drm/i915/display/intel_psr.c
>+++ b/drivers/gpu/drm/i915/display/intel_psr.c
>@@ -745,7 +745,7 @@ static void _psr_enable_sink(struct intel_dp *intel_dp=
,
>                              const struct intel_crtc_state *crtc_state)
> {
>         struct intel_display *display =3D to_intel_display(intel_dp);
>-        u8 val =3D DP_PSR_ENABLE;
>+        u8 val =3D 0;
>=20
>         if (crtc_state->has_sel_update) {
>                 val |=3D DP_PSR_ENABLE_PSR2 | DP_PSR_IRQ_HPD_WITH_CRC_ERR=
ORS;
>@@ -765,7 +765,9 @@ static void _psr_enable_sink(struct intel_dp *intel_dp=
,
>=20
>         if (intel_dp->psr.entry_setup_frames > 0)
>                 val |=3D DP_PSR_FRAME_CAPTURE;
>+        drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, val);
>=20
>+        val |=3D DP_PSR_ENABLE;
>         drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, val);
> }
>=20
>--=20
>2.44.2
>
