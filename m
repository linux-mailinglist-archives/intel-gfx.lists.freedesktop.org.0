Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E804F9F8AB0
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 04:48:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A55310EE49;
	Fri, 20 Dec 2024 03:48:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mVKOEEEU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2243110EAC6
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2024 03:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734666484; x=1766202484;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NAMTjoJ7QXVJgdi7CjCvmCMcocRocm119z58397dIIQ=;
 b=mVKOEEEUbq1816R6caxJ9wNIdiMYUPpAfIXpg+b4Gc2/J9y7idOgMuGl
 BKsTaK3jf2c2xq301SBkM47Es2aLZicAH8wUFYPs2x1ByLmG/er59mRVF
 jaCbkQw3lBxswBC1SFoubI0Y/dS/M130/trTY4xtr3ykf6IbSKvKy8oEx
 ff/dmvj6elAZqoi3MKowM/pwMVSoNKM8E69Y2GQ28k5ktx+oxe+8yakcS
 ycKIHcId4nff6EfTT1/w5lJ6gcAcw1sfeMxMGpRPLnwiQSp5LLsgPytyO
 JKp4HCKEua6rdnxPFTle4PTdwnWO4YO0/PCO+EqXwgmUSyHAx0JLipJu0 g==;
X-CSE-ConnectionGUID: YUIam36ETqystpF7Uy/8dw==
X-CSE-MsgGUID: eDVrO1bfSsOrbaLitRtO0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="35092079"
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="35092079"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 19:47:57 -0800
X-CSE-ConnectionGUID: zkFnD2BlRu2YXTdfP5V07g==
X-CSE-MsgGUID: 8WWYp10PSHGYiNqSgOaDuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="98919336"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 19:47:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 19:47:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 19:47:56 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 19:47:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q0FUHh0eDV4KCUkkfE7fUxe0YBvAM9OSi8ajRFnX1dw2b+dj2TnlvMTaMqNj9cqxixGpiWZEMl/xB0VUIlcM8dTJV9+lCwAALUmz4Lk4JcWQgvb7Qb2MmVBav3lS1gwdT4jAa7KNxF/URhBNzhZl7/txeiYCeYYVAmgKmTtjk8iXW3IgKgHBVX4PUSkYmodTR3geOirPz+/+Wz44yzzC95X+0KhoMOKvR9IcRzoX0hrA1CIwdDU5hFWdjJXflQhM/NZuv060XB3F5zE2CBITMwQOVhC36I7DBg/7hFeikrVVEKHcX1TZvlUjMaatvKg5nK1dQ2ZS/1HmEOXkyaWydQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TIJZ/24z3/+gpoeD38JJX8jyfX9uP0JllgWW8zvPm8U=;
 b=Z1dYOnoQ6ido34FeCBUSrCM6JETdmfuzP1YhRh/slK936nRyzcBy21475ZNz1LofzmufbaICirrEC4UARbQ2WHCH8dXZuZAFnA1xCtmMgI7hCAlape+aZw6fEvqRbtWXQoGpCZb2iEXeDkOWTFGClt/JqOSnEfSwVGpLY9rlZSc1HEHHIhrr0xf18UZN1z8336LzCSenNMS3OtyjX8nkq6d6lV72kNLUYv09kyjd1qUm+cNYiZL9fcFNqNbw7qImxNOvQe2uYpxl/icJ8Z8x8UmQlah593TznKSkGwHw4bcqOnxhc+MA/XZ0tNx0C83rZZOGP6RgIqDhvFPfH3TkGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB7056.namprd11.prod.outlook.com (2603:10b6:303:21a::12)
 by SJ0PR11MB6720.namprd11.prod.outlook.com (2603:10b6:a03:479::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.13; Fri, 20 Dec
 2024 03:47:38 +0000
Received: from MW4PR11MB7056.namprd11.prod.outlook.com
 ([fe80::c4d8:5a0b:cf67:99c5]) by MW4PR11MB7056.namprd11.prod.outlook.com
 ([fe80::c4d8:5a0b:cf67:99c5%5]) with mapi id 15.20.8272.013; Fri, 20 Dec 2024
 03:47:38 +0000
Message-ID: <063b04aa-710a-44dc-b018-7bd6573068f2@intel.com>
Date: Fri, 20 Dec 2024 09:17:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dg1: Fix power gate sequence.
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
References: <20241219210019.70532-1-rodrigo.vivi@intel.com>
Content-Language: en-US
From: "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>
In-Reply-To: <20241219210019.70532-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0054.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::20) To MW4PR11MB7056.namprd11.prod.outlook.com
 (2603:10b6:303:21a::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB7056:EE_|SJ0PR11MB6720:EE_
X-MS-Office365-Filtering-Correlation-Id: 2124e624-602b-4bb4-cdee-08dd20a90c34
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N2tDK2E4eUJKU2R2TVQxdE50elNTbkxKL01jWEtuYWNvQUcyT28rb2NvZGlP?=
 =?utf-8?B?N3J4MmFsTWphSVN2UEw5MXR3TkVzYzBVOFlnd3pTekJ0R0Y4VllLWm9Ydklz?=
 =?utf-8?B?TXpOK0VCci90NG85M2d0M2xiNFVKc1Y3U1d4ZGQreHFMcCt3dGdiTThRUEFE?=
 =?utf-8?B?VExwQTJscGcwMVV6VXhTcDk4aDBJS1BXZHo4MHNySUQyMStzTWxyWmx1UHVH?=
 =?utf-8?B?Rlk0TGtyeEIrRGZUeXZyYVpsb01FRnphY0djMnpVMnArN240MU1UMVVRblpu?=
 =?utf-8?B?SzJ6NXZ3dnBLdjl1bDJkRFZsZ0treFFncEhMcjhDTWoxNjVCakgvK3BYRHFq?=
 =?utf-8?B?WjFMTTNlL254akE4QkFkU1JUblphM3krOTY4dHJXTkF4Wmg2NlhMMkZrMXdj?=
 =?utf-8?B?aSt5cTNYbmgzcmhVUGZZaXd3M2FmSkx4OFd4aDRzRnJlUGx2NFhkakxlc0JM?=
 =?utf-8?B?YTdQbEZKc0NoMVFybm9yUmNRNWw5VFo3dHlOeHNUQkowcDJaSHYxQnB0Sk96?=
 =?utf-8?B?UlVHYXhBNFM4YTdvc016cGdybmJSa0wrZEsxdi9raWRyK0xSWlplRXNrd0g3?=
 =?utf-8?B?RGZOZ2xka3M1WUhBb05uQm15TEl0OVRxc2lyRk1tRTYxOUh1Y0FhOFdiR0tO?=
 =?utf-8?B?SjVNRHlENjgyYVdtbFJIQUtEWEY3OGRhaW0wb1hnVCt4aGczOVpGbDZ5Mkw5?=
 =?utf-8?B?czQ2WU1GejN3VjArNHgxL0xFenhucFpKNzhVQ2FpdFZUdHMvemdRVWFPTHNh?=
 =?utf-8?B?NkRoRXUraTRkVUttMUI0M1JIZFZyL0pMTlI1cTN2ak82WkIybE1tWTBKOUJK?=
 =?utf-8?B?NDAxa3ZId0lFUEFmWVphczM2UG95YmpwY1V5RHNFZi90dHBTNVMzTDRKaGhk?=
 =?utf-8?B?a25heWoyZi9hY2VCZXROQ01XR2VZQkpLVHUwOWJUVEtLYTN4VnpaM0krQTVq?=
 =?utf-8?B?V3FTOWlhVXRCc1dUeWEvQ3ZuMVpHTENxN0JlTldOcHQycVJpTmlGQlZ5SmpE?=
 =?utf-8?B?SWIrOTdyVm9GeDFKU1JCUE5JbTZIUGFhN1h0b0hJSzZCU01VSWdYSmpZd2Zq?=
 =?utf-8?B?U09uTjR1ZkRyU2tyMzZsd3lpSmJoeldYVXl0c3FiN01ieWFUeWJ6MFNUTTVB?=
 =?utf-8?B?MW1jdWtCem1qK2plSDVUKzhMMVA2cFRCTWFFd3grM2lLdHBKNUp3Tm9MTkJF?=
 =?utf-8?B?RDVvd012bnJTQTRkVEZpQkcveGEyR3V5STNKV0tRTGtObU9RcWRHS2F6SGRq?=
 =?utf-8?B?VzJiNHhBYnpvbFRhWVFyS0NNNDExMkFvWW9GODl5NlJRQXJ6SmFHbW1BY1Jv?=
 =?utf-8?B?R0p5WWpLdVlDbkR5RFhFc0s3dU9KQ3dPbmpSV3JLRjAya0dZRWE2WTdiSFBz?=
 =?utf-8?B?c1VGMXFQTVlPUmxYOE5DTEVPZDR3VHQ2NzUxckZYNWV1eitOZ3JobGp6cXp0?=
 =?utf-8?B?ckRtLzMvUDAvY2tCa1VOZHVpL3lZTUkybE1haGxld3JONWJkeWV0a2UzSlVq?=
 =?utf-8?B?M0g4bXBXekVGVTFjMDVzV0theVRMcmxES0FCdXVSTHpYTmo4K0xSczFYbWF3?=
 =?utf-8?B?R3VkS1pkM00yZFMxa3JCMU1PanU5VWp5VmVOUXpIK244bUFNVVQvTTVqREtS?=
 =?utf-8?B?WEJVdHg0QkY5MXpTU1V1Z0RtR3Z4OGxGdzhzTkdDU1Bkd3Yxc3BBeGNTVnZr?=
 =?utf-8?B?WEZNNkZWaDNjNmdVNzVhdXlCNm9IbmlGUG9xZVZxR2FrQjc3akUvUkMvNUY5?=
 =?utf-8?B?RnNGSmdkbGVNcENQQnR2Tzg2SEI1eFlCU0Znb3VOaW9EaG9scW9HNWNGTEM5?=
 =?utf-8?B?RXU3WkZkQUtxZ0QwUFExZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7056.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTVMYjlTaE9jNXZUUmpqZjEzMTRhK0kxbGtpL3l4WERwOWE5M2NtV3lyYnNS?=
 =?utf-8?B?amNCall1SXhEMCt6TUZOSHJidFhrMll1RTFlQVZKclpPcDc5OWtPdnpXbkJB?=
 =?utf-8?B?ZU1YQVFleXpyNTgvczBnSWZ2OFRnVnA2N2dRR3EwemV2T25vSTlteUxnK00r?=
 =?utf-8?B?QTcxYU9RVk1ZZjFpa2ZYYkw3K05WbnZQOE80QW4xWkd3RzJPWlhzWW9JTjBM?=
 =?utf-8?B?WUN5UHZmVjM3SEU1Q0lFUThyMDBZdGg3R1pPTzVkNEgzTXMyc3hqMndoVWFS?=
 =?utf-8?B?ZnVKNW9yblRjeVVnY0FxbU5GNjRyaW4vQ2p3NEtRZUVueFVyMGFhbURweW1x?=
 =?utf-8?B?L2cvREIyeEhEdW9tZHBWaDg1dkVYWUdJVUc5S04wWTEzc0Vpa2ZVbThBNXJE?=
 =?utf-8?B?TmNiNlFwLzZvTHVuaUg5VVgxUnFiYnM0VVM0MTFvZFgreEFxNHAydHNwVXJU?=
 =?utf-8?B?bGFBWUN1TUU0eG5EOEsrTWxIa3NzSkFYeFhLa3hBam5Ubzd2aW1DSGdaRGJo?=
 =?utf-8?B?a1F6Z0dLS1JVWVhQSDhhUE15VHEwRGlIdWx0dHlXNGZHMmV6a3IvYU1qZVJ4?=
 =?utf-8?B?MGNNNlEyZlZLL1d2ZWF5Uk9mRVlkMEVDUmhmVVZRVUpTWmV2enI2alJMYmNt?=
 =?utf-8?B?WnlsYVppeEd2ZWhWOHpFSHJxTFBFVHRhR3M0NFd3R3p1UEs2dUkybjkvZzN3?=
 =?utf-8?B?WjUvd0NVWVM3VkEwbkZFaGJBMHVXQXNIVXlOZ0IzOGltcDB2clZYcDVTSThP?=
 =?utf-8?B?QnRTM1VTRFVVeU5jbzFLZWtiY2F6MVBGMngvZ2pURExqR0JsTkR2ck12Smxi?=
 =?utf-8?B?eTljcnVoVmt3QlRpY1kvaGVlQ1p2c2kvMitUNXdzV0V1clpldkNiVndtaEFa?=
 =?utf-8?B?ZVk2S3YwemxxdytCK2d0OExMODVES0Q3Z0dhck9qSklMVVE5QTYwSFhjYmZG?=
 =?utf-8?B?SzNnOWZqYWZXUkR0Q2NTVnRGSElJaDBQVFZBeTJlWU11N1lhazBLTzdhRkM4?=
 =?utf-8?B?elFyVXNxaDk1MFhTbzhocE9BVzJGTitaRElvZlBLbWVHK0VuN29ZK203b1o2?=
 =?utf-8?B?QjBqTGxLSjJqZW0rdVJLNFNOd01rb1Q0UGlxUW8rcW80ZzluamhjK3hiTk1S?=
 =?utf-8?B?NWJ6YWdTSUM0eEZiUHVVMEpxUklRYWRtQjhhN25vQ2krOU1Kb1pkanFTMmM3?=
 =?utf-8?B?ZDZEU1o5RDVBL1JQd0NRUVpaSEg1U0VtMjliZGpxc25hVVdvamNublRiUXFM?=
 =?utf-8?B?TFVwSGhQcUdwMjhVUk5CYnBQSVpLaVd0L2R6eERSTDNISHdDZVF3NWJlZXRq?=
 =?utf-8?B?VEdqejlRVXE0YXFTYitlRE9yYkNabVFJd2xncERoTnlEWmxOTkpXUkxTWlQ5?=
 =?utf-8?B?bjV6QTdJdWN4cko3Y2UvL0R5YnVRQVBoVEU2OEZQR0pTaHdMN2JJYVliY3gr?=
 =?utf-8?B?TXp0Y2pEVFJyZkswTXplY0dvbWtKVWRoWFlFYzRZZUtRWWlhQlQ3SklJWDRi?=
 =?utf-8?B?eWN4MUhhODNtVGUzWkVRMWhLYnZWNWdHRzNtSjEvY2hUZW5Db2JGNkZwcTgy?=
 =?utf-8?B?by9DbVZ6aGxZaGlQMEtuY0hqd05mOGlnbFFaOEZkaGM0TzVIREF3S2twMmIy?=
 =?utf-8?B?a2MrNjk0bTBsM3F5bkxUUlJRNlljZUErb1VmWXQyOTdKQUg3K0RwMm1nQ204?=
 =?utf-8?B?eDgrRitwc3k5ZkVFQnJSRW53TXdDUVZkZkdhMEVoS2EycVB6N2djTTZCLzJh?=
 =?utf-8?B?T3orLzlDcS8zRXJuZ1pVSUhxUWlOeG5rRXR2SlZxcjVaQld6bFh5MFdrZmY4?=
 =?utf-8?B?bGMwN3hDM0d2OHdpcTQ1S096YktwYk5oNFZuZWNNR2NmS2MyWGZ0SE1XcjFM?=
 =?utf-8?B?eURISTNkdlFuR2RFMDlWNzdEUjVWUWNoenFZM2hBUG40enFCM2l0U0lJeW9m?=
 =?utf-8?B?bzlRK2dXWjVCSVdDRTl5dlNFdGlvdzA1eWVxR0cySnh4SEVWRGJGSWgvMytE?=
 =?utf-8?B?clo4L0g2T2RnS2ZZZ3dyRVpLMnJIQ0N3VHF1SHJwdkZhY3pCSEhld2p4OUhO?=
 =?utf-8?B?S0laKzFOaDFWQkllNjhtZ3paZkFYQlpLbkVZUk45c2RRam5XdWZ1dmd2aUdr?=
 =?utf-8?B?S2FkZWFwQXlnZXM1TlkwZG1mRUJPMk9LWHU1RDYvdlRvaStDZnhvZ1hMWGlI?=
 =?utf-8?Q?3RBHVOxRSRJEWetxkw/PXD8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2124e624-602b-4bb4-cdee-08dd20a90c34
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7056.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 03:47:38.6036 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t/Tbox382P8hbRJi1bdm8hAmFHBg5kV1Tdlr69v011durFTOsxHmjYS1j1wi7X/T3BE4IEH+umjt/1pIDwYePIrJYsKPACpgUo29sySNh5w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6720
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



On 20-12-2024 02:30, Rodrigo Vivi wrote:
> sub-pipe PG is not present on DG1. Setting these bits can disable
> other power gates and cause GPU hangs on video playbacks.
> 
> VLK: 16314, 4304
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13381
> Fixes: 85a12d7eb8fe ("drm/i915/tgl: Fix Media power gate sequence.")
> Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> Cc: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_rc6.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index c864d101faf9..9378d5901c49 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -133,7 +133,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>   			GEN9_MEDIA_PG_ENABLE |
>   			GEN11_MEDIA_SAMPLER_PG_ENABLE;
>   
> -	if (GRAPHICS_VER(gt->i915) >= 12) {
> +	if (GRAPHICS_VER(gt->i915) >= 12 && !IS_DG1(gt->i915)) {

Looks good to me.
Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>


>   		for (i = 0; i < I915_MAX_VCS; i++)
>   			if (HAS_ENGINE(gt, _VCS(i)))
>   				pg_enable |= (VDN_HCP_POWERGATE_ENABLE(i) |

