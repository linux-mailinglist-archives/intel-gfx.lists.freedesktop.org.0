Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DDAA326E6
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 14:24:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 900BB10E892;
	Wed, 12 Feb 2025 13:24:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YAZq/vEJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C59AB10E888;
 Wed, 12 Feb 2025 13:24:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739366674; x=1770902674;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GVPr7mzNUj8PSuUKYlVC2SvQ8TYnki27PYZWaqjNLeo=;
 b=YAZq/vEJEDGTz7MHBL6EIGqps0brFoyAmL0YjYlZ/1zhAxx1ieFsNSP7
 eNhPRV7gkMxWU5lDsdaeTIO4E4bwpo6IY7nQPYVL+DyJ9a2tG9ADGS5gi
 divMBXgxoJUF+1dnfGSEVzXJJpNPKMWVXDhzpzYxUs6TsEE1m3DEAB9g5
 xTOQmMiED0ogA/YkvndO8CZNli3vT/lcw7djtqXgBFfw2evSE+mmR7GSo
 K++oFdraLyX7bXzCoYzYw+tklH4WzV06KAJak17CeN6uoTdkgqp535ae0
 AYjUkHKzLN7daLrttW1MFZMIvYthL5rxzd02GU+Yqlxanyrk0e0GaoqTg w==;
X-CSE-ConnectionGUID: BDvQx6IWQQaxc08iOooFmA==
X-CSE-MsgGUID: mEL+xA7VTWyI4/pAR8rXPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="42860858"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="42860858"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:24:34 -0800
X-CSE-ConnectionGUID: gWpussowQ7C4/ORP53xQxw==
X-CSE-MsgGUID: QL7eL9BwSkKczQVazUR19A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113028545"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 05:24:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 05:24:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Feb 2025 05:24:33 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 05:24:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bViKqgc9Q3pT8OihlQZl9FtHRivWt1OJzFrk77kAY2I/gdqvY6YZ1shCXEvc4wHmlZhSUEawKWUizU0CbStIIxjbayEorIVZum4Galb72d/HGX7TGi2oCXSbL2hIlM25APq/6Ds8MDtWDHIlICnRxEjozkjfyWgBOm6Ioptmn2AvO1r+5MRwPLINsW7s8mGR51TOgfmBCFZkAMz2JWIq2T168On6sRlnxMAABXBX5O++dzrMKD+T/JhuAZOZq5vPa+J/gkuda8zzqPHeoCF1jAszHzHb8fVNAVnJdFXC36wImmJBFHjByoMD4vsp3eFHiCQvFyCAp3iFO5sqrutybg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7jN8qhjPzCbet2VCJe/xP0namR4FGNHxtRJCQOu7H1Q=;
 b=GN6WFF2pgKtIZrYEu/qEu5u5kEMhrnC7/yP23Vpm1G1C+ma5kOD31/lDOq1TQ/7IG8mtSlXGcof17x3j7QmOcbTwEjpM6uKr81CxUcxl06CJ2Fjlp7PClCiEdjDW6tzKvfMH8c97un0LMYhbDZ2rNgQdENEFA9OoF9pwGo0yPU1xbhooajl8xLWVFOzYPUk/AnMhRYKGJ3SsrxxoMN5WAa5sjye6axfdmy7nhy3MrHZsfxWo7krzify7MF9UlN96FeXF72R/CpHA3ss+oRE4dzwC+uSP/wVo4b55uPFiuFZk4XCOeUaADZXwtILbUcOM1Jf2z9SK9B4/qgnzAW3F7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6205.namprd11.prod.outlook.com (2603:10b6:208:3c7::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Wed, 12 Feb
 2025 13:23:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 13:23:50 +0000
Message-ID: <23da8c2c-37ff-426d-b8b2-4c320a788eed@intel.com>
Date: Wed, 12 Feb 2025 18:53:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/8] drm/i915/vrr: Check that the push send bit is
 clear after delayed vblank
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250207223159.14132-8-ville.syrjala@linux.intel.com>
 <20250210160711.24010-1-ville.syrjala@linux.intel.com>
 <6e7cb456-7866-4063-8ad0-e7e1c2bcd72d@intel.com> <Z6uLA_ZsQS-EIZt_@intel.com>
 <ab7a1152-7b5d-42d3-88f3-f61efab2757b@intel.com>
Content-Language: en-US
In-Reply-To: <ab7a1152-7b5d-42d3-88f3-f61efab2757b@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0025.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6205:EE_
X-MS-Office365-Filtering-Correlation-Id: 9631bc1d-7178-4978-10eb-08dd4b687cd6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZzFXVy9PUnFVMHlVeC9YcHhERk42WmNPYjFyQ2VDYyszRisyWmdTcElhSG9E?=
 =?utf-8?B?MVh1NFRqNjZsOFJHYnpHcnFlMVBRK1M5ZzE2azdXa1YxWGZXWmkxL1lvQ1Bq?=
 =?utf-8?B?bncvOTNNYVFHdFZORzluU0x4ZXdMUGxCWmtPaW52Yklzbi9FRmZLU05ydHls?=
 =?utf-8?B?TE1sejBrdVR2MmlBeXBQMUJ0UjZUbGJlTFI1MXd4YkwwVWgzVzFHN1NLNWpj?=
 =?utf-8?B?WjhHd05xblVoQmFFeTgvbVJTbWJzSDNWR2pWYnh3aVJ5R2ttMTBjNDFLMlly?=
 =?utf-8?B?eWhaTnYwd2RzQml1Rm05ajB3dzFnSVRBNVFtamxlTm1zbXNjK0dWV1lteEFq?=
 =?utf-8?B?b3Q1L0hQTmNlaFdYNXZZNDlhaUQrT0dWOU1CSlZYWWRhOWNvdmhMR3ZxcVVp?=
 =?utf-8?B?S1MwUm5GNnZmenpLaXJyNnJ5dnFocjdmVzNzcjYrb0k4L1FCYzJTWkZPcVh6?=
 =?utf-8?B?TGhLQTN4T20vZFByN050SmRqREY0SnQwUFFtTkdUV0VYNzY3R1Vyd2pOc3ky?=
 =?utf-8?B?U0xNYkVJaDVYRnlPZFN3dG5FNWY1aHhSL2VDSUdVRXloUGV2eHFLRk1KUnlu?=
 =?utf-8?B?a1B0S3d4OEJmV00xQzliYTJhcnVhYStZQWRLTmZJOHRCQjZaUHVOeDJSMC9D?=
 =?utf-8?B?a29VZUhrRWRGZktKcDU2RHczWEJ5Z1JJek9meVZzRWtuM2J5cGVadE9JZ3l2?=
 =?utf-8?B?RHRTVWJ3TE1Qc0FidHBWaWE5M2ZrU1BTT1lWb3V0YldGQmNrbnlIVisvcHFN?=
 =?utf-8?B?bWRLYmJabE80KzFqVnJCWWZzWjRlNmV3VUNaU1llZWNySVdwSFovc0U1Mko4?=
 =?utf-8?B?YWxqUCs2TUdONURWRkVWREVRVEs0a1VXaTZxZDdXVERhOERNYkVaRWczOEJN?=
 =?utf-8?B?cDJHeExaMHpZeStVS1VuTGN3MGRSNjFJcDFsYXZIZEMxWmtHTnUyQlh5TTZW?=
 =?utf-8?B?WmFJNmNDSThFZWV1ZHBGL2t6ajBqZUxjZURFS2Rzd2FRSnlubWUwbGM1eVJ3?=
 =?utf-8?B?enhWTXBEVHFWQTU0Vkx3MzUxRkhBd1JMVHRHeDhzejljRW9qRWlrS0dvRGs2?=
 =?utf-8?B?cG1iYi9lVy92aHRmRHZvNHdFNU15RlZYd1VIaE5xemRDRTBiUnd0NEdrODVm?=
 =?utf-8?B?WlVpdmRtWUZ4STdNa3o0L3BLT29zQW95THpjZ1hjMlI4UWVTcWowQldpTVNi?=
 =?utf-8?B?UmQ1VFFaZFUyczJJK3hxeG1WRXdvZktKUjd0M1VXSm8rbWdodm5PNVU2OXlw?=
 =?utf-8?B?WXYyY2Y3SlAzYU9IMW1GU1lDeGRSRjh2Q3RaK2FxNXgvaUp4QWdnRm1lV2NB?=
 =?utf-8?B?OEdmeG5QQ05BTTRFQzUrUTNUaDdGL2NtZzNrYWRSK1pmNkxma0tsYmxLQ2JT?=
 =?utf-8?B?aWo1ejRWa0xTRHUzZ3VPa01GQTZTNTFma25kdktCWHZEMk9EamxKdkJWR3V0?=
 =?utf-8?B?d05LQ29Eb3czRmM0blJvTTE3bWVsdWNSUnlSRzVNVTJkTEcza2M5dVlxdzNq?=
 =?utf-8?B?bU5IQWl6Sys2eEdwRHoxaU1qZ2xoU2ZwV2xOZ1JBclVCSzl1ZTJaTHJPSUJs?=
 =?utf-8?B?MFBJV2RZQzdLOGhtRlFlZEJTdEVJQ0RLOXQxZnBid2lsVHM3d1kyNzdOUDJM?=
 =?utf-8?B?dFlpVFV1K010MEJTSnpHcjUyWUlQcU8zWnFVYlFOakpKMytqWUZqUHRJNEI5?=
 =?utf-8?B?RmJ3eDh2SGZ4NnZMTVdZY0x2cjNJd1doOGFQWlYrWjJOcFpVcGM3QWNHb1g5?=
 =?utf-8?B?eS91MFk2bERNeUVYS05hUHAvbTB1dUZYS0dVQW9mc1BxOWxUQnFsTnQ3cUNx?=
 =?utf-8?B?Wi9Ta0xIOVAvazRKNzVaU2pmQ0o4QTd2Rk85b2hwUU1VaFJveTJ0Mk0zQklW?=
 =?utf-8?Q?cFQLCPtI+sQDF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2dvU3NFRzh5bVRYVTh3UFVOTml5Y1NWOGRMVnBXZDdxQU50RzkwRHcrT1p1?=
 =?utf-8?B?aEhxYXVNUXJKSDhyY29KZW1FcFhGNXZZam1leXkwRncwaEZLNWl5Zy9lU0R2?=
 =?utf-8?B?TDFTK0JGeDFkUkFHelpZdUhyZHpJaTVOckxYUXdjTTJROVZqRW13SUgycWdE?=
 =?utf-8?B?a1NyMWxGVDRNWTdGTmxmUmM0SW5QSXg5TEhuQWQ0OVhsSFAwUW0yemtRTHY5?=
 =?utf-8?B?c3M5enE3akxKVFE2MmRDclE5Q2FzTGNUZUNhbEIvRitsM3ZtMVZFd1NpaGpV?=
 =?utf-8?B?Mlh4L0FSSGxFMkJIUkxlelpkTS9RN0swU3BvYXVrNklDdEhHODFINmQvUFUr?=
 =?utf-8?B?bmN6c0g1L0RBZEUvVXdEMUdTa1RRUlJJSVp3cnhOR00yQXl0RDZlVVBlaDZ3?=
 =?utf-8?B?S3dwWlJWTmx5Mmx5Y2I2RytSK2lBZm5CSXI2c1VSTi9selYwcVYrbjluVURK?=
 =?utf-8?B?Zk5uZUdIMXN6aFRSbEhmaFV6aGNJcGJUYmQ3RWlaUlkyMm9FNXoyb2plKy9h?=
 =?utf-8?B?UUU2dVM2anNLbW9zck1JS09LNXpXZUl2b3JCSEEvWEoyd252cXV5b2tubTVT?=
 =?utf-8?B?NjZFRTFkcVNDNU5KMElqVHp3NDNVTjdmNVZINlY1RjhLai9yT2YvYzV6VnJ3?=
 =?utf-8?B?TDZOd3hmVml6b0pnQkpWUnYvOUh5a29PbTBxOXg1NG5KMkZ5NUlpZm5xUjB0?=
 =?utf-8?B?NlY3Y3R1cllSOW1rMTg1NkVydjZzbmhjTlUzNWJsa28rSUhYMlUrTk1TQ0tn?=
 =?utf-8?B?dkFUNWQvbnV1ZnJIdVljTzd2MTB0a1o1czVIZm1wSVBSaDgzRml6eVo2Z1I5?=
 =?utf-8?B?TUQ0ZDRJNm1HTVI4T0ttOTBQMngrcnMzKzkvSWE1ci9hckt6Z0lmUXR4Tmt3?=
 =?utf-8?B?anNJZUtIM3U4SUNoYUxZVGhycHhkbU5yYkJhb0cxeEVYeTZQM0tnMjFEWURy?=
 =?utf-8?B?K3BzTjRoMHNIN0RSTTBJVHlQRmEwbG5tcDNtbnU3bld4d2RIVitLeFVneWxE?=
 =?utf-8?B?N0ZIWGY3cEFxdmpSS1Z2Snd5R2NpSFpnanBlVFdXM01keVgzdFBhTzJDK1Uw?=
 =?utf-8?B?ZDFPeGltdXBQQ1dSNUpsWTB2M1dDSGtMV1Nmd05ScW5UbDVPbHNMbGY5ZTNw?=
 =?utf-8?B?L0FWeUNCMm43Qm84VjZaNFgvbUE2d05oNnpPbjRITU9Zdy90c0FVT3EvSlI2?=
 =?utf-8?B?a3ovdERYMFl3MWhJeHdOaWdWV1BNanpJMjF4Z2VYY2I5bk5raFVWcUVRdVlH?=
 =?utf-8?B?REJKTCtwZFp5YmNOclNQVnV5MlhMQ1h5VUZtWENZWlNlOU1mSHVnaElIQ1Q4?=
 =?utf-8?B?Q1RzdGxtK1hFZGViTHpjc01SUzFSWHFMbVJqMWduV0ZKTXJoQVpvYVZtNXha?=
 =?utf-8?B?YjNUaXF2VHoxK2U5RDVOcTA4MXAvZzMwNTdEaHJMb1dRaytLa3hSN0FTREtu?=
 =?utf-8?B?NmJtWEM0MFYyMS8zb0hWM1c2QlFjbXV4V3V4cStURWt0aUxqb3JKRlkwNzlh?=
 =?utf-8?B?bGw5Q1RxTWFPajV5OHpEVHNsNmQzSDIzNXA0TGNDSE91bzBQYnhOTExRYlRz?=
 =?utf-8?B?eDhPUHdUVDkzZ2txOUhDSk1JelRUdTdiWkVhY2o0cDRBamdOejF3NTZ6M3lx?=
 =?utf-8?B?Z01rQ0U4bmk0S215c3laeCtYbGNaOFdQRmlFUUU4Q2sza0VKQjZxbUNRTkpj?=
 =?utf-8?B?SHR1bWpwVXFlVUs4VFZKOVprNWtYd3JLT0hpb2g1UVRzZDFnWjZ1U1F2MFZw?=
 =?utf-8?B?L3p1SytIaTBGZ2JXdjlLa1ZXSVh4SysyUXA4bFFOR3BKMlV0d1BGRUR5N1hu?=
 =?utf-8?B?cU9HZVdLUnh3dW85TnBEVjNFSEhiWVo0N0dxOVYvNXhnOE9sSnJ4dFFqaENr?=
 =?utf-8?B?d2czTUJCbzg5dkVkSEpQMWxKRndYUkVjNVlWdlFGSVAxQU4wZ0gzTXV6K05D?=
 =?utf-8?B?WGJCRk9hRjkvb2pOYXFxWFZvcThUVnRWM05GNktTL3lQQ1BXNXBsUDZJVHJ0?=
 =?utf-8?B?c1JGbmZEc3FhVC83Y3lBNDhOUHZZeEdNOTZnYStyTzBiQ21nMVhtNHRRZzF6?=
 =?utf-8?B?bjF4V1c2WFdjVkMxdXBqV1VWVWQvMlA1MTVBcUVQZThZK2o4enBpRUFvS0R6?=
 =?utf-8?B?M1QwM2hJRlREQ0NLcEU1d1R3YTFxL0FhMHA4ak5DVUlDMDJWdTZZdUlyd1Iw?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9631bc1d-7178-4978-10eb-08dd4b687cd6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2025 13:23:50.3310 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Utr3jSh4bShiKyi9FOJjI6Ah0GCBljH6caEaWXYJnHdTwsbFtDqKVinZyGcZnSAXFAkYaRcKeJZHxAiqK0+71K3izTaAWdiio/5mNlbfVIs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6205
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


On 2/12/2025 6:39 PM, Nautiyal, Ankit K wrote:
>
> On 2/11/2025 11:08 PM, Ville Syrjälä wrote:
>> On Tue, Feb 11, 2025 at 12:38:47PM +0530, Nautiyal, Ankit K wrote:
>>> On 2/10/2025 9:37 PM, Ville Syrjala wrote:
>>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>>
>>>> Since we don't do mailbox updates the push send bit
>>>> should alwyas clear by the time the delay vblank fires
>>>> and the flip completes. Check for that to make sure we
>>>> haven't screwed up the sequencing/vblank evasion/etc.
>>>>
>>>> On the DSB path we should be able to guarantee this
>>>> since we don't have to deal with any scheduler latencies
>>>> and whatnot. I suppose unexpected DMA/memory latencies
>>>> might be the only thing that might trip us up here.
>>>>
>>>> For the MMIO path we do always have a non-zero chance
>>>> that vblank evasion fails (since we can't really guarantee
>>>> anything about the scheduling behaviour). That could trip
>>>> up this check, but that seems fine since we already print
>>>> errors for other types of vblank evasion failures.
>>>>
>>>> Should the CPU vblank evasion actually fail, then the push
>>>> send bit can still be set when the next commit happens. But
>>>> both the DSB and MMIO paths should handle that situation
>>>> gracefully.
>>>>
>>>> v2: Only check once instead of polling for two scanlines
>>>>       since we should now be guaranteed to be past the
>>>>       delayed vblank.
>>>>       Also check in the MMIO path for good measure
>>>> v3: Skip the push send check when VRR is enabled.
>>>>       With joiner the secondary pipe's DSBs doen't have access
>>>>       to the transcoder registers, and so doing this check
>>>>       there triggers a reponse timeout error on the DSB. VRR
>>>>       is not currently allowed when using joiner, so this will
>>>>       prevent the bogus register access.
>>>>
>>>> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com> #v1
>>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_color.c   |  1 +
>>>>    drivers/gpu/drm/i915/display/intel_display.c |  4 +++
>>>>    drivers/gpu/drm/i915/display/intel_vrr.c     | 34 
>>>> ++++++++++++++++++++
>>>>    drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
>>>>    4 files changed, 41 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c 
>>>> b/drivers/gpu/drm/i915/display/intel_color.c
>>>> index 4d8f6509cac4..cfe14162231d 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>>>> @@ -1991,6 +1991,7 @@ void intel_color_prepare_commit(struct 
>>>> intel_atomic_state *state,
>>>>        if (crtc_state->use_dsb) {
>>>> intel_vrr_send_push(crtc_state->dsb_color_vblank, crtc_state);
>>>>            intel_dsb_wait_vblank_delay(state, 
>>>> crtc_state->dsb_color_vblank);
>>>> + intel_vrr_check_push_sent(crtc_state->dsb_color_vblank, crtc_state);
>>>> intel_dsb_interrupt(crtc_state->dsb_color_vblank);
>>>>        }
>>>>    diff --git a/drivers/gpu/drm/i915/display/intel_display.c 
>>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index 0790b2a4583e..34434071a415 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -7737,6 +7737,7 @@ static void intel_atomic_dsb_finish(struct 
>>>> intel_atomic_state *state,
>>>> intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>>>>                intel_dsb_wait_vblank_delay(state, 
>>>> new_crtc_state->dsb_commit);
>>>> + intel_vrr_check_push_sent(new_crtc_state->dsb_commit, 
>>>> new_crtc_state);
>>>> intel_dsb_interrupt(new_crtc_state->dsb_commit);
>>>>            }
>>>>        }
>>>> @@ -7886,6 +7887,9 @@ static void intel_atomic_commit_tail(struct 
>>>> intel_atomic_state *state)
>>>>                intel_crtc_disable_flip_done(state, crtc);
>>>>               intel_atomic_dsb_wait_commit(new_crtc_state);
>>>> +
>>>> +        if (!state->base.legacy_cursor_update && 
>>>> !new_crtc_state->use_dsb)
>>>> +            intel_vrr_check_push_sent(NULL, new_crtc_state);
>>>>        }
>>>>           /*
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c 
>>>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> index adb51609d0a3..cac49319026d 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> @@ -416,6 +416,40 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>>>>            intel_dsb_nonpost_end(dsb);
>>>>    }
>>>>    +void intel_vrr_check_push_sent(struct intel_dsb *dsb,
>>>> +                   const struct intel_crtc_state *crtc_state)
>>>> +{
>>>> +    struct intel_display *display = to_intel_display(crtc_state);
>>>> +    struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>> +    enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>> +
>>>> +    if (!crtc_state->vrr.enable)
>>> I think you mean:
>>>
>>> if (crtc_state->vrr.enable) return;
>> No. We want to do the check when VRR is enabled (when we are
>> actually sending pushes), and skip it otherwise (when we don't
>> send pushes anyway).
> Oh ok, I got confused with the change log:
>
> v3: Skip the push send check when VRR is enabled.
>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
> Regards,
> Ankit
>
>>
>>> Regards,
>>>
>>> Ankit
>>>
>>>> +        return;
>>>> +
>>>> +    /*
>>>> +     * Make sure the push send bit has cleared. This should
>>>> +     * already be the case as long as the caller makes sure
>>>> +     * this is called after the delayed vblank has occurred.
>>>> +     */
>>>> +    if (dsb) {
>>>> +        int wait_us, count;
>>>> +
>>>> +        wait_us = 2;
>>>> +        count = 1;
>>>> +
>>>> +        /*
>>>> +         * If the bit hasn't cleared the DSB will
>>>> +         * raise the poll error interrupt.
>>>> +         */
>>>> +        intel_dsb_poll(dsb, TRANS_PUSH(display, cpu_transcoder),
>>>> +                   TRANS_PUSH_SEND, 0, wait_us, count);
>>>> +    } else {
>>>> +        if (intel_vrr_is_push_sent(crtc_state))
>>>> +            drm_err(display->drm, "[CRTC:%d:%s] VRR push send 
>>>> still pending\n",
>>>> +                crtc->base.base.id, crtc->base.name);
>>>> +    }
>>>> +}
>>>> +
>>>>    bool intel_vrr_is_push_sent(const struct intel_crtc_state 
>>>> *crtc_state)
>>>>    {
>>>>        struct intel_display *display = to_intel_display(crtc_state);
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h 
>>>> b/drivers/gpu/drm/i915/display/intel_vrr.h
>>>> index 899cbf40f880..514822577e8a 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>>>> @@ -25,6 +25,8 @@ void intel_vrr_set_transcoder_timings(const 
>>>> struct intel_crtc_state *crtc_state)
>>>>    void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>>>>    void intel_vrr_send_push(struct intel_dsb *dsb,
>>>>                 const struct intel_crtc_state *crtc_state);
>>>> +void intel_vrr_check_push_sent(struct intel_dsb *dsb,
>>>> +                   const struct intel_crtc_state *crtc_state);
>>>>    bool intel_vrr_is_push_sent(const struct intel_crtc_state 
>>>> *crtc_state);
>>>>    void intel_vrr_disable(const struct intel_crtc_state 
>>>> *old_crtc_state);
>>>>    void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
