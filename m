Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5F1C87EAC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 04:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8040E10E4FC;
	Wed, 26 Nov 2025 03:17:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UVrsAEAJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6235D10E4FB;
 Wed, 26 Nov 2025 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764127054; x=1795663054;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9Meh3LxAt8ZIdmSkdeMFVHX4tFgZq3QJo6cM0YcY5E0=;
 b=UVrsAEAJhjTAMtAKdmZJ31xs+i8hoLnXA9gK4kg6abhfExHnbbrfo9Ij
 Yk1PJqTLNlPeyfSA/dJZ15k1VoyRhcSm2wEeVoKWhbfMRGD+gB+bVp+XQ
 Fa1BqBE/vMiMvzXviNmtJ/vitDyfRwh5XD0l7tYRyzerz9QxD4F4t150+
 LigLrioYS7Fy2rVSYMaRz1O0O2WY7cY8BH85xzIa8Efdf+rB1Pw3Dx0jI
 ZFTo7UEd/XOpk7c3Hpi7g5o9NBOS7B5XaRmRZNvsvvLDpSItcvBy2s24y
 JkVDpdD7aaJr2vFqzjNO3TBp4uHA58MSiuvRLp7gSN0WxiLzXnHmiIUDy Q==;
X-CSE-ConnectionGUID: XPzjaNp3SWCIqTbRxb08dQ==
X-CSE-MsgGUID: 01/zmIAWQgy3YE1nWBZy9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66102899"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="66102899"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 19:17:33 -0800
X-CSE-ConnectionGUID: pOwligKUTSOaFdTd51I00g==
X-CSE-MsgGUID: 5f9qT6D5S3CvcKsjR8ba3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="192609033"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 19:17:32 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 19:17:32 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 19:17:32 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 19:17:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M9k24CRDqdjWbnmGeaPh1nHx/Fj1ko3abPwzvEeD5JlUydfKvAIJrfPlCnxN6u9qTVQ3kffIEDDtmY5tUqTBRGgNOUeZ+IimUheUMOOd+10iDxPMus44AtoSiiYRVMMnLedpOrAxqDB9Z1/Ec7rwrA5BQQ3jRBsKxTSgeyrGGP0dp+lAfYgN93iWQ0mg0BoY3dUMxNnwoQ1vdHPWSKBilEZuymenH6MvyO5CSDyAU+5GcJl1iO55MXWvQjZr+FSZ45glVMu82bQAMc0KdCtiDsyClG/LMfiVqaokfNJ+e6QlIGb0IbJLDBthvDLsFRbwb9BEW3DH/ISuXrRMG2rRaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/76QZBnscU9+FsTval5LK2JmnpETRgFEfIv0GQ8PDa0=;
 b=cCZoIbxRh7eAB4nsZHmG7wQriShYL8NecpsLsHH9xF715z6Gu+w7qsbdValY0+QfVdxNOi4BbO/nLPqb5mYOibeDZ+ASbzvXgZ5CQNTR/NoYBlEJCdMVqeHc8092rn19CGTrb73ASb+5T2fVZF9WZwwMDcn1czb1ATF5HVTXfo+h6mVbk3j8l/pmKfr1A0yMZYaSUEw7W3+NPlrg0tRgqGWJI3s1NSAS6cqjYwzrM/CxrxkkB80Luy9QOsQpVIudnHEazaR27zTKfUcHYboDu9JEYvEp4uh24AE+PF38ProrrJ+Ly7Eg8QogkvLLJ48sI9vWmsp1Y3bfdDOQYDyoTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN9PR11MB5258.namprd11.prod.outlook.com (2603:10b6:408:133::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 03:17:30 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 03:17:29 +0000
Message-ID: <5312f7da-f115-40ea-b751-23dbe845473b@intel.com>
Date: Wed, 26 Nov 2025 08:47:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 02/18] drm/i915/dmc: Add pipe dmc registers and bits
 for DC Balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251117054442.4047665-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0017.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::35) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BN9PR11MB5258:EE_
X-MS-Office365-Filtering-Correlation-Id: 903e2ce3-5995-4339-47d7-08de2c9a54b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QUlkd3FFdGlWZlZUdVY2M3d1RFZ4UFdVOU1Kd0U0dE45cUVoSy8rQmwyQXhZ?=
 =?utf-8?B?cjg3d1RRQk9NbElCZ2c3SFVGNDFZWVBFdVYxdTJPN1UxdkVMNkdQWnBHajY5?=
 =?utf-8?B?OWhSeTJvNExSRGhKRG5hZ3JiWlJKTkVaQ3MyczNGV2daVXZDSzdtcWJ3TDIv?=
 =?utf-8?B?MWdnYXBUQy82RGlka3Z2ckpLS3FMMnlVaWc4aDdkSVh4Q2I4OVRoRTBhK2Zl?=
 =?utf-8?B?UVVqZnVuWlhzd0kxMGlKLzNwY3llNnlPeE93a2FuNWpZN3RUYnBxRFkwZGhW?=
 =?utf-8?B?a3ZYdi9ESnlmbjRWR2ZPNnR4RndSZmIzUnRkWmFtMTBlR2FnbjBFVjgyMG81?=
 =?utf-8?B?ZkdoMjlDMWhmNEpBWTNPQ1h2YUtYeWhUTE1NMHpEUGtLamhQZjZPYUFTZEhx?=
 =?utf-8?B?U2JLODkzUW4yc3Fhb1A1S0p6WnRSQWlDL29WNStyakRtTmtSbHRUU05KeFYx?=
 =?utf-8?B?WEQxVTZmMzZETWdkb2ZDZmtsOG9ITy9CSjlVWTV0bFlvUFl5Yi9qTkpuTVdj?=
 =?utf-8?B?UHNsNi91L1dseWJrakZXQzR2eFJ0bE5saXVOMnQ5OEl1VFJEZkJSS2JXTVpG?=
 =?utf-8?B?ODZmK0xVYWdpQ1hkUnNmNkZjcUlNd242SXJsWjIxQUc3dWtHRkZlemx5aVhi?=
 =?utf-8?B?ZHhVMGtPWHZEeG1ibEhyZEY3Ymp6V2R5U0FhZnJjR3E3QW4rUm0rZ3RwWFpv?=
 =?utf-8?B?elhWT3R5Q2RFdE51dHZPaEFqZ2dJWit4QnRmMWNaV0FIRmR4OUd0RnBrdVVw?=
 =?utf-8?B?bXZ1aGxjR2dudGVkT2p3dmp3bDhkeW1QN3doc3lzdGZ4STVEMjR0MGZZd0tV?=
 =?utf-8?B?UmlXa3dWc0NtTklQR25ZQWxZdFFEQm5BY04xaXM3V1BQL3NobFN3dTZ0SUZh?=
 =?utf-8?B?L0lUVWpyT3A4elZweHZHb1pUMDJYRVM5a0ZyQkU0dko5Y1lBNmZWSTFsYUQ1?=
 =?utf-8?B?NjRqYUxsN0hhT0lYdXZYSEY2WE9DWXZEUGFsY1NIbm5mZGMrMmszaUlIRFQ0?=
 =?utf-8?B?RGIycU8vZmpVejVXak5zY1I4Y3YyVmE1TFJmSXVFMWtJWU9wVnZBNEhSajFn?=
 =?utf-8?B?SFNUUkpnMit2Yjl5a3pIQW14UlA4ejlFb1dCY3BlOTlkQXZVYS9raWs5azdr?=
 =?utf-8?B?b1BGMGMwWGcrM2VwR1FWalVsWk03MC9zcTgzV0ZsNENqb2UzQUlFZ1lHay92?=
 =?utf-8?B?Snd1QXBrZzVWQlpGUUUyV1lBMjl6RUwveEp4dTZGM3RxeFk2T3FnMGt4VDYw?=
 =?utf-8?B?ckczT0N6OTBvaHdPKzNKRTBSUm15M0MwRXdmYU5VQkdmNjV0R1N4TnNnQkdt?=
 =?utf-8?B?MW1INHVQalh5ajVGUHZFRFVHbDBUYnJ1QTA0bUNJUXZLTjVaQ1FiWmFEaXF2?=
 =?utf-8?B?TVBoNnJkZFVrOVVLVHhoZlpsWitqZlVrcllJQW5ObUZsR3pEN2V3WmxPSU0y?=
 =?utf-8?B?ZTVSTEJZWEZPMVNoUzZJVWlXMi9QQWEvZHY2NW5COVJSem1zVm8ydkszMDc1?=
 =?utf-8?B?NGpNTk1remVzZEc5NVBMSU95RFNGVEI4MEp1cjF3a0tYdWdPV3ZjMGo1YVZw?=
 =?utf-8?B?WVJUTi9UeFJUTFppL2JrWjNKR3FmSXozdGJ2WjNRdlNxRlZ5MjFSMFJxbkhM?=
 =?utf-8?B?T1ZKN3QrQUVaU1RkL2VZbmI2ZHNtbjQrM0x1TzBHL1BiMHlTMThpWWVaMjJw?=
 =?utf-8?B?QURwWWtQalhtc2NhbjJkcGZQcjlYcHFReUhKQUdndXF5ODhRTG1IV0RZS2lQ?=
 =?utf-8?B?OHllVlFKVEVXMGt3UWc4a1B1MEVYbXVuSW9WclNLNHltd3hHcUVWNEg4UmdM?=
 =?utf-8?B?WURGL3hySHZYVk9rQjZMSGdSWjEzWjV3NWJxR0hJSzV4d2FFK1FIeE1RRDg3?=
 =?utf-8?B?bmQwUnJEejdBMnI2RWNBSFBBVjZCV0plaWlZWmRINW1pbmlnZXMrYXJXSVl2?=
 =?utf-8?Q?j+ZWCDzWXfAOYefVMsamZc/ajzuVRibK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGpJbmJLTHdoSHdFbVNNakF6REs3MXdqZmpTalVnUlJsVjlUNmk4KzJiSWNn?=
 =?utf-8?B?UUhveFZKRzcvU3dnWUN4N3RncUViRTdWaGdKMFRiMDJHTUQwbGkzWStDY2Vl?=
 =?utf-8?B?Z2FlbnlhVUo4VnhCdnZNampBSUpLcXJxWTJoNVJVbGhSdVpmaWtJeDhZS0Nh?=
 =?utf-8?B?em9kNktOYmRycjErTXNiRThuT1lUTUtzbkVLVVVkRlVIU204dExwVmoxeFVt?=
 =?utf-8?B?TTRkalcrZnB6QnRNbnQwUll1SWFSS3Q4OG1PY2FFTDJIaG1jUzJLNjljVWsy?=
 =?utf-8?B?cnBscERDUTdkRks2QWhUT2pxTlZWM3J5VzAwVTRwWFRFbk8xdy9ocUYwRUk1?=
 =?utf-8?B?Q2lYVHduaUNzQUt3WTBNRWtBOUNKczNCcmdTY2YvVnpLVWowNXcrYk5MN1l6?=
 =?utf-8?B?VFExaDVLVGdOU2JRaHMzVUJmSFdFSmR0aUU1Zk1PUDVEZnFRU0U1MjFpVzBi?=
 =?utf-8?B?MGNJT0Z4K1hhV2RWaDErUy95WUNIS1dFY1A0M3U0ODdGTldGWmVYMEQwQngy?=
 =?utf-8?B?cjRURG1RN2EzN2l2dXp2SS9WZmljNmRTNWRwRk9GQ2N4QndSRUEwaG9kcEJ6?=
 =?utf-8?B?TjhFTUp3TUg2dkNvdzc4QWJOcnZFNE03SnlTeWZwWmVzMllEdU1GSk1la0U3?=
 =?utf-8?B?L2llT09LK09CZ3FWVUc4QWF3Skl6QiswQ24ra1M2WjZjc3RkYVRVcnh3elBO?=
 =?utf-8?B?ZFpXY05VZHljU2oxUHVkYzNnRklCdnpOYmVQTk9xTkJWZy9mejVzKzB1SEZC?=
 =?utf-8?B?WDBZc2xmbGx2T3k2UWxNMjNRYXFKYmpqbzBYNUxPcnZEdktDR25OcHVLUEtB?=
 =?utf-8?B?WEVMVFVLZHVwR21QQWdWSkw4QXZqM1BrR1NFNEZFMmw4cE9TZ2Z1UFU1dXRi?=
 =?utf-8?B?eVVZYW5GbFN3VWVpblpVTVA5TnBZR2V5U2JtM3NNak4xMnltZkZXNEt5a0dy?=
 =?utf-8?B?WWxBOUxza0F6WG8yV3AzYjBZbU15WWp5UVJHK3M2Uzlxckl4cUtJaWhGSkVy?=
 =?utf-8?B?aFUvd2pRUDArc2xHL0w1VlZVTnQ2MGJwMURFTzluUXJPVjlOcVZ6VVJwNmhB?=
 =?utf-8?B?YkNTNHhyVTBPK1JZREN6UjA5SmJGVHZoSzJ6Rm5IVFJINDBzbXpHK2YzZ08x?=
 =?utf-8?B?OUFEaGd3eDVkYThyWnJvNkJZaFBFbWlPT0VKb0JjQkNEbjBWbkZ4VVlYKzB4?=
 =?utf-8?B?Y0dIa2h4QzRPMCs0a1o1NHdZbW43Nnl1SGJ6LytUZzFKclFIU2phQWhac2hS?=
 =?utf-8?B?MEtKM3dBcmQwVFQ4NWt1VjZHRXNjZmwvaHdFQ2lVSno2MFVuMUh3SnVEMU9P?=
 =?utf-8?B?QjJ4aUVrSFdHempsc2g2TUNuMW1qNmVhUlkydzcvbkRNRE9QL0l1ci9MRHpq?=
 =?utf-8?B?MjVIbmpSSHBsR0VQbmtKUm5DRWllY29EelV0Ty8zN1N4eWwzcU9PSDltdFZD?=
 =?utf-8?B?RFM5U3RpamIzVVkycUFmSTVpSm93QW1EYnFOTVhNRVgvdC83NUNwMWpVeHpm?=
 =?utf-8?B?RE1jU1FJcG04Mk80UEpmZm56dlVlTDM2WVM4MkF0U1o2QnJITnRGUzBxU0NQ?=
 =?utf-8?B?azhPY1ZzOCtwNGg1TU1ObEZxYkkwUHgvRm1NY1ppVUtObDduRlU0YzZ4b3ZP?=
 =?utf-8?B?b1ZhUVpZR0V6RVNhK0Npa3Z6YTM3U00zbDk5WDRGQ2l6Y1VCTkxqSTluMzg3?=
 =?utf-8?B?TXVXWjdiSytRZXpyRGlaeGtIdERjbzJZNk9hZ0dKUGtOMXNBMTlIVjNKUDli?=
 =?utf-8?B?ZVg5RUttYlZ4OUR4V2l1UmN0dlFSVG12ZFJGeUoxNGQ5cXRKTmlwRXNxcXZ0?=
 =?utf-8?B?SnlVR2NQY001Qmd6cHRhRm45bTAvREpmQXExUW0zbDFoTCtzWTJjelRiT3VI?=
 =?utf-8?B?RUJWZWVZTWtDZUNjUWJ5T2NJR2tMY2FHNnNiT0pqUFFhSG1VbWhWa095b3c3?=
 =?utf-8?B?RkNvUDZSL2lKNjBPK09oQlVlandUR3FtZE1YUG1OOWNhb04wTGNzZWFVSTRh?=
 =?utf-8?B?cmIwWkUvMFNuL2EwR1ZGSVlmNkxZOFpVNzgvQktSblZ6RWFJVzV5T2NVZDMv?=
 =?utf-8?B?VzIwcS9jd1VGTE9sSklENVExb1MwN1lhbU5VTnU5Sk5PcUhvaEZyUkJiY090?=
 =?utf-8?B?UW1Va2s2SFd0L0UyNlM0MHl1djU2RVVzNFJKeFAwdzYycjdXUG8xcjFNRWVT?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 903e2ce3-5995-4339-47d7-08de2c9a54b7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 03:17:29.8776 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: roIH+gd2pLnODHkJy7tPrsejQ9IlO6snoquapbeyb6c+X9Lb3u+1N/c2QiwsVyGAIt5ZQfjX2nEAd144378SLkuZyJ7xAN2jQpjeDe9/haE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5258
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


On 11/17/2025 11:14 AM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Add pipe dmc registers and  access bits for DC Balance params
> configuration and enablement.
>
> --v2:
> - Separate register definitions for transcoder and
> pipe dmc. (Ankit)
> - Use MMIO pipe macros instead of transcoder ones. (Ankit)
> - Remove dev_priv use. (Jani, Nikula)
>
> --v3:
> - Add all register address, from capital alphabet to small. (Ankit)
> - Add EVT CTL registers.
> - Add co-author tag.
> - Add event flag for Triggering DC Balance.
>
> --v4:
> - Add DCB Flip count and balance reset registers.
>
> --v5:
> - Correct macro usage for flip count. (Ankit)
> - Use register offset in lower case.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dmc_regs.h | 60 +++++++++++++++++++
>   1 file changed, 60 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index c5aa49921cb9..38e342b45af0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -584,4 +584,64 @@ enum pipedmc_event_id {
>   #define PTL_PIPEDMC_EXEC_TIME_LINES(start_mmioaddr) _MMIO((start_mmioaddr) + 0x6b8)
>   #define PTL_PIPEDMC_END_OF_EXEC_GB(start_mmioaddr) _MMIO((start_mmioaddr) + 0x6c0)
>   
> +#define _PIPEDMC_DCB_CTL_A			0x5f1a0
> +#define _PIPEDMC_DCB_CTL_B			0x5f5a0
> +#define PIPEDMC_DCB_CTL(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_CTL_A,\
> +							   _PIPEDMC_DCB_CTL_B)
> +#define  PIPEDMC_ADAPTIVE_DCB_ENABLE		REG_BIT(31)
> +
> +#define _PIPEDMC_DCB_VBLANK_A			0x5f1bc
> +#define _PIPEDMC_DCB_VBLANK_B			0x5f5bc
> +#define PIPEDMC_DCB_VBLANK(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_VBLANK_A,\
> +							   _PIPEDMC_DCB_VBLANK_B)
> +
> +#define _PIPEDMC_DCB_SLOPE_A			0x5f1b8
> +#define _PIPEDMC_DCB_SLOPE_B			0x5f5b8
> +#define PIPEDMC_DCB_SLOPE(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_SLOPE_A,\
> +							   _PIPEDMC_DCB_SLOPE_B)
> +
> +#define _PIPEDMC_DCB_GUARDBAND_A		0x5f1b4
> +#define _PIPEDMC_DCB_GUARDBAND_B		0x5f5b4
> +#define PIPEDMC_DCB_GUARDBAND(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_GUARDBAND_A,\
> +							   _PIPEDMC_DCB_GUARDBAND_B)
> +
> +#define _PIPEDMC_DCB_MAX_INCREASE_A		0x5f1ac
> +#define _PIPEDMC_DCB_MAX_INCREASE_B		0x5f5ac
> +#define PIPEDMC_DCB_MAX_INCREASE(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_INCREASE_A,\
> +							   _PIPEDMC_DCB_MAX_INCREASE_B)
> +
> +#define _PIPEDMC_DCB_MAX_DECREASE_A		0x5f1b0
> +#define _PIPEDMC_DCB_MAX_DECREASE_B		0x5f5b0
> +#define PIPEDMC_DCB_MAX_DECREASE(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_DCB_MAX_DECREASE_A,\
> +							   _PIPEDMC_DCB_MAX_DECREASE_B)
> +
> +#define _PIPEDMC_DCB_VMIN_A			0x5f1a4
> +#define _PIPEDMC_DCB_VMIN_B			0x5f5a4
> +#define PIPEDMC_DCB_VMIN(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_VMIN_A,\
> +							   _PIPEDMC_DCB_VMIN_B)
> +
> +#define _PIPEDMC_DCB_VMAX_A			0x5f1a8
> +#define _PIPEDMC_DCB_VMAX_B			0x5f5a8
> +#define PIPEDMC_DCB_VMAX(pipe)			_MMIO_PIPE((pipe), _PIPEDMC_DCB_VMAX_A,\
> +							   _PIPEDMC_DCB_VMAX_B)
> +
> +#define _PIPEDMC_DCB_DEBUG_A			0x5f1c0
> +#define _PIPEDMC_DCB_DEBUG_B			0x5f5c0
> +#define PIPEDMC_DCB_DEBUG(pipe)			_MMIO_PIPE(pipe, _PIPEDMC_DCB_DEBUG_A,\
> +							   _PIPEDMC_DCB_DEBUG_B)
> +
> +#define _PIPEDMC_EVT_CTL_3_A			0x5f040
> +#define _PIPEDMC_EVT_CTL_3_B			0x5f440
> +#define PIPEDMC_EVT_CTL_3(pipe)			_MMIO_PIPE(pipe, _PIPEDMC_EVT_CTL_3_A,\
> +							   _PIPEDMC_EVT_CTL_3_B)
> +
> +#define _PIPEDMC_DCB_FLIP_COUNT_A		0x906a4
> +#define _PIPEDMC_DCB_FLIP_COUNT_B		0x986a4
> +#define PIPEDMC_DCB_FLIP_COUNT(pipe)		_MMIO_PIPE(pipe, _PIPEDMC_DCB_FLIP_COUNT_A,\
> +							   _PIPEDMC_DCB_FLIP_COUNT_B)
> +
> +#define _PIPEDMC_DCB_BALANCE_RESET_A		0x906a8
> +#define _PIPEDMC_DCB_BALANCE_RESET_B		0x986a8
> +#define PIPEDMC_DCB_BALANCE_RESET(pipe)		_MMIO_PIPE(pipe, _PIPEDMC_DCB_BALANCE_RESET_A,\
> +							   _PIPEDMC_DCB_BALANCE_RESET_B)
>   #endif /* __INTEL_DMC_REGS_H__ */
