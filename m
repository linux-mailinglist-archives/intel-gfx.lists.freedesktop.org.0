Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 335749D56C0
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2024 01:31:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF44A10EA89;
	Fri, 22 Nov 2024 00:31:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RyH5deW4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53B7C10EA89
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2024 00:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732235493; x=1763771493;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4QrUOrqq0mwdPXxFZ8lGKM9TWLFaPkimKiqEH+41pHc=;
 b=RyH5deW4lw+yWs2Yjb7MtJEWMOjMlq5OMf+KIfMUztjPNk8P3J7qA1Ud
 KP87mktMZj084mYL2zyk/fGncBT3cFPIcShcnKx/bYguPX+X14fwODUa+
 rF+ViEb2tbfLPm8+4Ds3AajU6Z4dF+IY7oYccfZul9RInufYfaR5Um/Ku
 jggwxsgeb3ho2oNgdR9NCo/Q5HuAmsWSoDES2jUg9DmCUirYanq31U9Wv
 4A2S5TvbWnTmUP4VVVRDqL0haijKJIhMJLOP9sERgXR1UjOkeBAHOoP14
 jHQa0MmxL7kmPxRypYxduhO2hYDBbWtjWHDQ7yOGbOgUap4Mm1mG26x0F Q==;
X-CSE-ConnectionGUID: uZppKQpeSrOkPrCJgP7qgA==
X-CSE-MsgGUID: ADi7ZZ0CSmGEcUU/Pg+fAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="49797348"
X-IronPort-AV: E=Sophos;i="6.12,174,1728975600"; d="scan'208";a="49797348"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 16:31:33 -0800
X-CSE-ConnectionGUID: PMgh/sBkS3yBrFal80k/OQ==
X-CSE-MsgGUID: FwLEwZVMQEOmd4Atn68emQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,174,1728975600"; d="scan'208";a="121282271"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Nov 2024 16:31:32 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 21 Nov 2024 16:31:31 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 21 Nov 2024 16:31:31 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 21 Nov 2024 16:31:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DAs17qOYDuk4scu9L5y+zG32x3k8OY0YNdJyvph1jNvKMEUXfLbgk2zKwOerz5efi5h6cDBhFfY7pZoQ3TPl2NrAGvuSSDYRRQ0Le6rQ2fPjOpYuPqukRn0chDRiqfKKxHpeMX6zmnFk8WQsi7WuTJ+SPtwq+8gRQYOJLq+/ZW7wGKIK+MLbxESspAMjahaGnh5W7fJ+CUvGc/k1QvHp0Efr3a+0PiiW81CKci3T2AsBKrEwDSrw5VrnixIhQPCgeyzXA5cKuLJVbmNfb/K/aiIJ/jgcalC+sqkMrlLFunLIBFx+7Bzljkts+pwzqftf5xsCxP4H1tRYq9dqhiQFwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2sAOdiAX8Izz3Ss73DoEpHletCstg0qa12QTa4NYVag=;
 b=Q0ZSOvEk1Z5c2R3v8IWFfgk3xBfG+E44Qs4Cjn7/oQaurpObiGyW/wL3B1q3uKi4KFMgL8+/fOKoBj5cX+k7gbvUdMBRgwdZ2i2o4EFqYeQv9FxfnKlxQyLJLCxOslEuE0bQFvJC3cAHc36emMURxpnArETxDiaagK0WHfhQOZgrbnporfVAN/a/Wy5cbNYVEB0Yq3fgmbVu3Jv0872vnBlUO6/lm31xP/v0OVdbQyi/ZBhewpqMD816FS78wjdRxC6vlEQvHIjkgMgh/Q9IbS1klNiHzsASfIS+eK32hvlt14POlYbFG6cYSXbcoyVOCkjvdkd5Gdwr7lyiQHU7mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by BL1PR11MB6049.namprd11.prod.outlook.com (2603:10b6:208:391::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.17; Fri, 22 Nov
 2024 00:31:28 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%3]) with mapi id 15.20.8158.023; Fri, 22 Nov 2024
 00:31:28 +0000
Message-ID: <a0aa30ba-cbb3-4e30-a503-1d2eb692499a@intel.com>
Date: Thu, 21 Nov 2024 16:31:26 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] i915/guc: Ensure busyness counter increases
 monotonically
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241118232223.53639-1-umesh.nerlige.ramappa@intel.com>
 <20241118232223.53639-3-umesh.nerlige.ramappa@intel.com>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20241118232223.53639-3-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0180.namprd04.prod.outlook.com
 (2603:10b6:303:85::35) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|BL1PR11MB6049:EE_
X-MS-Office365-Filtering-Correlation-Id: 1da21adb-75b4-4f7c-e689-08dd0a8d014d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ekJzcmFQbW1IYXVZYTN4MUNlVXUzVkJoWStWRCtXVzZ6QnlIeXpGeUlCQmJR?=
 =?utf-8?B?WklqZEhjRnVKTnNubUh0Z2cxWHhCeW82Yzd2Y3JLelFGSmErQVBRZzY3UjlM?=
 =?utf-8?B?Z1dyRWVqd3lPdWZ0ZE5zQ3loTmJwNTA0T0FLcXFIZmo3eklJNnZ5eVhOTDlq?=
 =?utf-8?B?UHRHNzBXTTRvYkloSHkzWDVESkE4SDYzVkQxWHNZZkl6QWJ1aldMamY1T0NW?=
 =?utf-8?B?SEpqRWdwTCtXTlVGdXFhOGZTbkpVcjVFbFJVTGZieVltdk44SkZYNTZMOVBE?=
 =?utf-8?B?YUJ3bUhPb0t4WHJ3Y3lBUnBxcThITXR3N21iSm5nbXJQMEtZUk9BVW41RmFX?=
 =?utf-8?B?Q0JCaEVSMDVGR3A4TWg2ZVV1TTNKTDlMN3NtbDhGbTgxLzdqdGJWSXU0bS9W?=
 =?utf-8?B?eU9qK1dSU0ltTzJybTZiZVZxcDgzWUpNVXJZVElkN05mUXdEQmpQSDhsOURW?=
 =?utf-8?B?TWlxb1A5RmV1RFRoRUExMDJUWkhUQzk1aDJTWmVrbDluYWhlZkpNaW5CSWlB?=
 =?utf-8?B?VEM5TW5IcFhCWFNBcnRZRStXb1dvZlorZVRGWk93OGZMK3l1MWdGUTdOZTVL?=
 =?utf-8?B?TVk1Tjc5czBwVk1PQXlDV3BkeDMxemtqcTFsbTI2R3V0NC81WFZ4b1BsY0ZK?=
 =?utf-8?B?NWdOSXgyS045Ulo3TGEvbHMzRlZyUWMwcnlFTVVleVZ6aTI0eFZsYzd5UG1R?=
 =?utf-8?B?djlCTjU1N0ZUQzhZZmtnTXJSQld2MXZaTmhzYnNSdTBKSXpLejhEckNlR0VS?=
 =?utf-8?B?ZDIzYXJoR1QzS1JaTll3UDZKU3BEZmZzcis1dVhRVS9Bd0hQVFBrTFFQRWZa?=
 =?utf-8?B?dzNhMHdkM0w3SmUyaW9tOEhsbUl6dy8zb2dQdThSWllvOURnOGF4TTdET2pZ?=
 =?utf-8?B?dmxnQXFxTFRaaTF4WEowVmZhTGhrQkNRd0V4UVR1OHlWWi92QVhVSXdtWjV1?=
 =?utf-8?B?WDJpbFdFYzQwYXljMjVnaGtGOUhvQXJOOGtLeWNtVWZ3VXNOSlFBdmRNcTJZ?=
 =?utf-8?B?ZUsySFpvNUpDQVZObWxLQlI5VkxYMHVtS2RFdVc0M24vNGQrWHZHM0w5SGh5?=
 =?utf-8?B?Y0dROEFvU0k2MGk0UGIrZWRxNCtMTmwyZmRqYXE5bElMTW1EWlJHQkttejJC?=
 =?utf-8?B?ZjVyZGRKQmtERmV5aWFKeUs5N0FNY3dIRG1qQnEvUnRBYis4RVFuN2dpNUZX?=
 =?utf-8?B?eE5sTWFYeU1Gb2JCcWFOYmxTcW0vd3I4cXRYbCtDRURDejJnZHpoYkJaSTFU?=
 =?utf-8?B?UFVZT1FSODdRclBtNGg2NGtRblhUbmtuRDFzWWE5N1ZlU1UzVXViN21wdndj?=
 =?utf-8?B?M1hTM0NJM2RXdmZLMExnYThvZHhLM2xIUWd3WlZmYW5VZkhIMUNJQzJSN0hY?=
 =?utf-8?B?OGVRaXlaQ3ppSG11UEZHT2NUK3ExeHQ4dUJ6bDRvdTZ4U2tMblBBUy9nVWQ4?=
 =?utf-8?B?VGE2MTN5cGZCenV2bU5wUzhBQk1ndDI0MXM2UDd1S0dDV1VJYWgzUUFxYkdu?=
 =?utf-8?B?dFlnbHRHcERlSC8xOVVBdU92NmY4Z0kyY3J5cnY2L2FDQzlHTU1lcTMrZmls?=
 =?utf-8?B?OXJJL0diQ0ttMkdKcHZIUW9KMURJZ3NZV0JLelJNdDE3WGwrVVhoZGVhd203?=
 =?utf-8?B?WmJtWHpFSDRpRmRocldTeUZSKzNEQW5yZ2lYSnNTZ3pmZVdxZ3hoV2hjcXlG?=
 =?utf-8?B?djRnLy9RbTZLSjNXaGdVa2xIMEc3L1lNQm1tbEhwTXQvQU5VRDY2WGpNRm04?=
 =?utf-8?Q?9S3R85vMNY/6huPIXAJWq720TVeIgCygZCsGQFS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OEw4UnhTYWxYejBlUmJpOGo4OUN3VWdYMzAzbnJHSTBtL1l6cmFPd0N6UEpH?=
 =?utf-8?B?UmZCL21wRjdJZll3dFhlNzJvTSs1TitmS25Ka0RVSG9HNXZQVUlmV3RNUzhB?=
 =?utf-8?B?QURaUW9KbWd5bDJmbEpqMmR6blZLcXhadmJ4VzJvQ1FxTnE0endjaTR5d1FM?=
 =?utf-8?B?WDZNMzlINHlad3UzMXdEcFhqMVZyY3hUbHRoazM2RnlrNkVJYXpMak82TkZU?=
 =?utf-8?B?TDdxUmJFTzhXN2YvZWVMMXBiNFQzWGFjVFNyelFPWHpOclNwL05hZkNQOThs?=
 =?utf-8?B?Y1JJSmdSTGhLREZ3UE1RRUFDR1pCdmczRVpFRkdoWEFHemVWalNHdmpvaGlF?=
 =?utf-8?B?d2wxMEpZak1wVi9jT3I4VEFwTHpuZEhvVTg2ZW9HKzBSQXhRbnhsZTN0eFFF?=
 =?utf-8?B?eXVLWUNINUxHM1d5OHV4STVSM1FSNEZBcW5lVEg5SGpwOTFibDRtZHAwMUZ3?=
 =?utf-8?B?SmpjcXcvbUhRWDA4bU1SYldDMUNKZDBwWDVUU1RqbTVHSDVGRFY3M1ozc1E0?=
 =?utf-8?B?d3IxY3hMaUk0VHdzVk9YVGVDOW5YY05RN3dGT1YxcFord0ZVeTFxTzJSY3Yv?=
 =?utf-8?B?TWRtK1ZoMDJiR25EYVdUMHc1eXA1RDFFcjJKcTN2TCtISnNRSzYxdklFSEdV?=
 =?utf-8?B?c3VBd2lzazk2N2hPRlNHOXBzNEw5eWNSbXhrenVTeDJMZHdIYjFnUVMrS2Qy?=
 =?utf-8?B?eHdLL0RKMm43eVBJMFFERFp4WlhIYnQyaVlHSWdaeEttNXQ1VmUyYzhzYTVX?=
 =?utf-8?B?akVySEJYT1pWYzlIV2JiVXp2dmJkN2QyS3phV1NrOEVNZ3V4L0hDV0ZFcGJq?=
 =?utf-8?B?dTV4Y3NON0JqT3dlSmswZWFSZC9OUlhFUzBjR21wZmZWNHJ5c3ZhZkR2UllX?=
 =?utf-8?B?ekY1RGFDOXFVS2V3cXVIa1RvTnMxUmo1eTdSK0NlWngvaE12K0J2UkxMb28v?=
 =?utf-8?B?Z1ZLRGIwT2NWSUt1eWFxT21EeUJKMElUbUpGVkh4M05QclB5RWtKTkJVNDA2?=
 =?utf-8?B?ajZwdi9CVEIwMVVmZWpHY2tabzJmdWRuMzIvMjQrYVFQRm4zZU1aMVVNSWtv?=
 =?utf-8?B?cEl4VkNDb3czSTBzMC9iaXdYdEZZL1owelg3ODhONHVIQ0JUOUF6MkZtREk3?=
 =?utf-8?B?VmpLaDBmMXo3V3FtYWZXaWJtdEszakhSTXMyRDFqOTJDUEFnNzVmTis0OXR6?=
 =?utf-8?B?QmovMUdpQlJBb2VmS3hNdmFvcHdPSW0xMHRQYlNEYWpjVnlmcGRyOWptc3g2?=
 =?utf-8?B?dlUvVnUzN3hQQmdDQmlQbzN5aTJZcGJ2SXhtQUo1Vll1ejF0MmgzclY4NVNu?=
 =?utf-8?B?bWI3dTRCc3BBNkdMbkpscFptZVJqd3FhUjBhYW1ZZ1lQU1hoT3czRzBwSE5D?=
 =?utf-8?B?aGxtM3k4dUxnOThqNWVRenRvc04ycGFZT280eEhNYVcwbFVJVUQ3by93T0pi?=
 =?utf-8?B?Y1lDZXZ1SXZ6cVhQbU4rV2ZYbXIxWTlENkdENGFNbWYyTitoK2w1ZWlmdHVt?=
 =?utf-8?B?cnorakY5UnREc0I3SHBrRzJMcHNvWG1IcWY2YTNpZkxzZUhHd2xOb0xiTDdJ?=
 =?utf-8?B?d0NnWTJaazFkUFRiaXpkS2tjKyt0QW9zb1FEZkpuUHNXSFdTcjhYU2NjUVVT?=
 =?utf-8?B?bEhDd3MwY3ZIRWtJSzM1YUxnYnJ2dnIzSDhJb09WTlR5amtRMUxCcXd1c3Nj?=
 =?utf-8?B?VWsxa0c1eCtKR2JjZ1RnOHNwalZlUGp6T2dOUE11Z093UkREaitwYVhYK21R?=
 =?utf-8?B?Zk9XczUvQVJxTkpPdkNsYnF1aGZuNnlEbGRpSFRUMjcvdm41YVdBd0NFcytw?=
 =?utf-8?B?Qkc4Q3FHbzg0cUxPbmpzRGEwVE95K29TWWQvZDN5WkVwWWlSd2o3VHFWcGpx?=
 =?utf-8?B?UjdaRytjYkJ4U1F1SGJsdmJzNzlCb1V3ZzR6MzJWcGZLbkQvUVRwNUZ2RVdp?=
 =?utf-8?B?VWFjbFUzbEJlUEJmVlRHRmEzRHZBd0V3d2crUzBURGdrMDlRUUVTOFJTMnh6?=
 =?utf-8?B?bXZXbEhvQUJVcEw3SkRrMERTVzlzQk9talg0UnVvSHczK3NTQlpZUmhVcWMy?=
 =?utf-8?B?M2ZhaXlEd0FNdXVJTzlmR1N3SEZ1S3lmUWJQRkhtR3ZHYkUrbU9EZW1vMEJZ?=
 =?utf-8?B?K1pEcTJvUzVoeDlCbVFrMjJJVk5abnN6MlB0eHdWNFdDcGNlNUFKSm9GYWwr?=
 =?utf-8?B?SlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1da21adb-75b4-4f7c-e689-08dd0a8d014d
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2024 00:31:28.6881 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KVDifQe95xGVagan2SMJxM1CUaRraNTQ8utqzE2O3myw8+kuJ4zkQzf741KgxTeZGEym+3IJ5aWVpIB50w51M9/RiL6a8KtzjXSlHV0tmT8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6049
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

On 11/18/2024 15:22, Umesh Nerlige Ramappa wrote:
> Active busyness of an engine is calculated using gt timestamp and the
> context switch in time. While capturing the gt timestamp, it's possible
> that the context switches out. This race could result in an active
> busyness value that is greater than the actual context runtime value by a
> small amount. This leads to a negative delta and throws off busyness
> calculations for the user.
>
> If a subsequent count is smaller than the previous one, just return the
> previous one, since we expect the busyness to catch up.
>
> Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats from GuC to pmu")
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gt/intel_engine_types.h      | 5 +++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 5 ++++-
>   2 files changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index ba55c059063d..fe1f85e5dda3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -343,6 +343,11 @@ struct intel_engine_guc_stats {
>   	 * @start_gt_clk: GT clock time of last idle to active transition.
>   	 */
>   	u64 start_gt_clk;
> +
> +	/**
> +	 * @total: The last value of total returned
> +	 */
> +	u64 total;
>   };
>   
>   union intel_engine_tlb_inv_reg {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index c71aedcbce43..56be9f385270 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1378,9 +1378,12 @@ static ktime_t guc_engine_busyness(struct intel_engine_cs *engine, ktime_t *now)
>   		total += intel_gt_clock_interval_to_ns(gt, clk);
>   	}
>   
> +	if (total > stats->total)
> +		stats->total = total;
> +
>   	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>   
> -	return ns_to_ktime(total);
> +	return ns_to_ktime(stats->total);
>   }
>   
>   static void guc_enable_busyness_worker(struct intel_guc *guc)

