Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE043ABD23F
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C50110E33E;
	Tue, 20 May 2025 08:46:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BaWY7+bW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A2A710E18B;
 Tue, 20 May 2025 08:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747730762; x=1779266762;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=z7Gso/xXn6H6SGmqc7FyOXDjArR8HY5tLv3XJL5Qm2M=;
 b=BaWY7+bWXYuFk9O0Sot6KP8ocNlkU8y26iOTUb5hGuUV64GhvvCu6kVd
 TziRjXI3lj2rsq+fLWcNx4vRmRpRR4SUC1YrD9/RgTcOgq4FSaJ53do4z
 u5aaUlNNXOofsrFhceDB3dXZ6BfjKQVvWSe6r6+/u3bf8JNvq5bxhEPnu
 iejIUDksp9CnOrvxnDNg9qDxPjyM3u9WlClHPCjiBpBQbc4BStcLmzlda
 gv9lxM23O4rcEkJM6dt/k4rPuQmYt6pJS6WC4zR1Z/CTfexMM/q/4Oton
 +2zmuz3n+mJuQt/eywSXTkMC0JDGiDpwFrgbURZtr2G7f51j4w9heTEb7 w==;
X-CSE-ConnectionGUID: HDFw2VriT5mqH68yLu/LAw==
X-CSE-MsgGUID: iUFlvfSeQoCFDdCOWgLnEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="60995986"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="60995986"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:46:01 -0700
X-CSE-ConnectionGUID: yuaLhv5fTq69jBDrF4jsEg==
X-CSE-MsgGUID: NYRtp4QaQLS9+gctYbsH0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="139530163"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:46:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 01:46:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 01:46:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 01:45:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=maLgM3yzJqr378fYW447owsGLOGpBorpUFeb/o0kVeoQQDMnvRt+pg5I5wxlpIqfHEU3pTlx+nhytjpUjRAW1bdzHBnwpxdPE/gVl1M6yeFwp2cwzYOEN+pSUS9ctt9L0HiwxEwOXT/SxffZXjzdl4BLciCHBzVqQNttx5hr17z59b61fy6J5npjJeZ9J8rlDk4eBdyzTgc6CH4nEhLOTF3Uc29Ts0UULtBK/7yC2+AmVT7bjUREL+Cwp8R9w7wM+fRSY6VQ9hvFnMqWM5jLKR+kaan2gek/5IVOjOxd1DESX7nzDH9qLkJLlNNWmpVs3vNS4SrwgqCtCfGRYbqciA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t5N0iRcUh2P243/S4BLQKIZeqmB4j/Vw9ViP2BrHfNU=;
 b=lEurLWLjMgled/jjwzVGSgLKQAgfZEuke0YhwdO2ZmWlU8hnFSKRJMarMPw3bYUPQ6JI15d+iXeUTFbNK58zCsaOK2fVclYxOqCMt0iC5ggQN3j5sFBXB3FXR5MO015BRsrYSxFTITfB8Ft7TYqbD154koefeAuoB+I0q6/us7qK5D9gQlk/VoS9LP5d3xsPK+cbo2zHKmosfFPpIHhAGehiHYrABlBB27TzdGDBxCm2uz3n2g9Z5g1X5EcYcBggS5iDKPPYDMMolgTieUJZSqA4MyKDt9SdajUTVVugB17LZhaU14sAdk4Dr1nQHOnh2vvfbCS+wpWsjVvV7skyjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7778.namprd11.prod.outlook.com (2603:10b6:930:76::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Tue, 20 May
 2025 08:45:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 08:45:17 +0000
Message-ID: <7306f80f-dc48-45cd-9289-d2e3ea842bb8@intel.com>
Date: Tue, 20 May 2025 14:15:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/11] drm/i915/psr: Read both Panel Replay capability
 registers from DPCD
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-3-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250502085902.154740-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7778:EE_
X-MS-Office365-Filtering-Correlation-Id: 62c16b81-4f33-45e6-3e54-08dd977aa503
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VDZxMUtLUlZFYzkrL2JsWXY0MXNGNEdLWDl4NmNXdnYzV1hCeStYSE1KYlh1?=
 =?utf-8?B?ZCtRMWh1ZFZSa1dnSmNOdFRla0pZYm9CYTNEaHh0bHg5dCtQZXkrMFFoNEVy?=
 =?utf-8?B?UmszMWltWXVheVcwVG1nU2lYNVNiQUp4d25YQWdXL2VGVlAzZVlnbWlQWEha?=
 =?utf-8?B?bVR5ckxJd3dkNzVDSGFuR3FOQU9Ld0JMTDI5aEYzQUFkaEw0QndVQjNuaEZW?=
 =?utf-8?B?elpsSUtvVGhBdzd4VjZZdVY5R3dXNFNJUWNZbEF2WVlhN1JaVHJsVE93M1VP?=
 =?utf-8?B?TFMxY1dQQWZacjdEOGc4cFg3VGVHNXNHek9FbVB3SXkvTlBjZzI1aHRQc1Bo?=
 =?utf-8?B?SldWTG8rMW5BM01xeG8wdEZuM3lWYkVqL3R2YUU0bStBVUV3cU1RRHgxcnJp?=
 =?utf-8?B?bmUwRVhac2JTOThyc0doSDEvckhhTWFlbE5YVlVmZmxlVzB6YXRjVHJzSHdF?=
 =?utf-8?B?SnhlVHl5SDVSMW1abWViZDBYTlpXWGxrcWM0NWtKUWI2U1UzMks4ZnRiYXND?=
 =?utf-8?B?ajhXVEx4STYwWnRtU0RhWkVPZHZObHBNbVR1MXJCUE5rN3NqV1FBSnlRWGxG?=
 =?utf-8?B?K2UyMUdMYSt2Ym5jd29YcWxhR0RnRE1DTGY2c0laR1doT1RoMmI5eEdrYjc1?=
 =?utf-8?B?MXZ5YmNjcEQ4OEZ0MDZtOWN6bEJVb2hWaTREWDB3QmpOTnJhZkoxRFJ2OGlr?=
 =?utf-8?B?TEJkTXc1L0o4dlBTSFRWcWtkMVc3b1F2b2t0ZVM2QlZZaWxKTzhIdFFFRVND?=
 =?utf-8?B?VUxmNjBSYUM2TURKZ3BCcFRmSXpOZ3diODk4UjhZcURsdEtQYmQzRnVqaXVX?=
 =?utf-8?B?TGhPL2ZmdS9ocFcvaUprR0FZWWgrNkhhRFJ2ZjM5YVlGakF0OTQ0eUhoNmRx?=
 =?utf-8?B?UE9RNlFZU3BOVXdHbVF0N0FGN2psOXhibkhqbjNxdHlTZHhxMFFtMjFtNDJk?=
 =?utf-8?B?VlNycG9rcG5vMmVibmlwZE5PMGNKa2FMVVJYUnNISXRLaExIclpqeVY1SXYv?=
 =?utf-8?B?eGhTYkVNU3hXbnRuOXdrbXVEcE5tS2pSekF0Mk8yalloeWkySmpLTjEwMGxM?=
 =?utf-8?B?SDdDRnRDV0dKSHcvdzZtV09wcDdJVjlITjRtWUJzU3gwb1Rub0h5dFlXSXVv?=
 =?utf-8?B?YlUzaXVibUIwRjQvUmMveS9RcDBqUW5HWngzUDAvN2F6bnlNTlJ5NzZBTkJL?=
 =?utf-8?B?QXdzR3cwUlM1Ri9RMXZnUW5zZEEvT2drV1h0YXJYWkh2NjVMV3c0eGpteWlY?=
 =?utf-8?B?RVc5RDV2OEhhRi9Cemk2Nk9nUmR4cEtGOVpCdlpHdUtXaVQreXFmeFh1bkkw?=
 =?utf-8?B?ZytNNUEzSHBocWNpQzNGMVhVeDJrem0ya2poZFhhbW9RbWZsMUViczZnSzY1?=
 =?utf-8?B?THI4dnBtYWMwckFTbE4wZy9KZGdhZXlIaS8zbUVkWVNmZmlTRUpLUEMzUTQr?=
 =?utf-8?B?QW9kaUhVZHRSaXNxdDRIdlNxUkNrRUZTanFZbktLQ1g0ZkxzTkg5UkZQOXgy?=
 =?utf-8?B?VmRuVzNnT2N6Tlk0N1JzZDR4Nm1KS0ZQTXJVN1I4MWhsWGNvdmpQYTBpRE94?=
 =?utf-8?B?eDVPRUJhanZxdG1KKzhNZEhiTGx4aXhmVTAxT3lHVlFWMm1HZDc3Z1QvK3h4?=
 =?utf-8?B?bFZ5Szc2ZTlPRzJrdmVSKzJBOVRJNGE5ZHArM28vcCtSYlpzcElpM2YvaFBX?=
 =?utf-8?B?Q21jTkppYkNFQ3IrMDFwWnJrSzZnNGd4SDZtR2NJbU1mbVlqTnFUellISmhp?=
 =?utf-8?B?ZWxQSHkxRHVkdUxqMlhGdVV4czdLMFQvbDYvSnFwOUphZEN6UHJjcXVoZVJ4?=
 =?utf-8?B?N29uN0FkY1RTc3JYY3VEajNUTzlxZlhub3V1OHF0dkRqTm1qcWtCWWFyUjZo?=
 =?utf-8?B?blhUMDVkSDRqTWZCZlRNK0lLd2tZR2QrZUtyTXQzYVhMc3grSHZybnFodWJt?=
 =?utf-8?Q?VGuqiBUxjII=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amR3QWdnSEVzUk93VmkveHNCdHREM2x4b2ZhcFNSbVZScEhndEYvUUxUQktp?=
 =?utf-8?B?bTFhcndMaC9YTnlCZnU5WVBueTdVWUs5bis3VFBiYWNDU3FrWndqY3pvRmpZ?=
 =?utf-8?B?MlJmS0tIMWx1aUZxdG02Ykg2ekovQ0R1RlVGeWNkZ3NuN2lFTTVPZURMNGl1?=
 =?utf-8?B?UC9mdEc1c2s1bU5naFprd1JGOW9vblpJbUkzZTVWdnJrSmRDUDh1ckhlQi94?=
 =?utf-8?B?ZDRtZTFOY2RJeUFFMFVVaFpCaWVCendMb2cwMjFSQWpYMU1FQWJwZWdmSWRH?=
 =?utf-8?B?cjAwc0JXS1oxUG5kdjNtc2U3VVVCWFZMNTR0V05LR1gvc1E4YjBwNnhhS2hX?=
 =?utf-8?B?RXZYeThyS2x3cm10TS9Bb0ZZVDl4dU0xUmwrWGlRd2FERUdUZXBscVo4Yi90?=
 =?utf-8?B?a1E2VmtqSVR1dHhiLzhNckE5YmprZ3diTDRtem5tb3Izdmg2MjFKL2EwbUx4?=
 =?utf-8?B?dWM2U3FjMi9Fd09qcHM2dHBhRzZ3R2JIK0NKYTFaVWtCbjFyQVA0NTQyUGFS?=
 =?utf-8?B?WEsxV1FjeVEwaEpPUWZiVlhzektUbGU0V0Q1N1h3TUFaTFZIZ3c5MUJFMUNP?=
 =?utf-8?B?M2xvTTV0NGhzbGRqd1lvbncrK256Tm0xNEVjMVZFQlhGMm9oYUs4bXBnM0Z1?=
 =?utf-8?B?a1M4K2EveXNQU2kvVDVVRnUzNlhQdW1sZUxabTFwS0JsUUZZWmswRXQ4RUxj?=
 =?utf-8?B?bEJHdjdQellNSVA0VHc2UTVUUXl2MjdTZ3VhbEVjNWJ4UTNDb0l3WVNnMmNr?=
 =?utf-8?B?dWZjcW9tV3hVREhScFBBcm9LVGVpdUJFN0o3YkxRSjd5UkZ2eVJBSFdPYmlt?=
 =?utf-8?B?Uk1WbGNQZ0tKeURFd21zTUY5Z1lWR25MM0lPT2EyWTRqcTB3ajFvTEE3MVJ5?=
 =?utf-8?B?dndGcGRzOUZ0amFld0RDQWo0ZmNLOWMrOU9ZaWdVTEQrTXZJOUhiekFpbW9N?=
 =?utf-8?B?ZWEraEUxNUxiN2g5dlFFR21vNkNTcjFQb003dnF6RzVrcTV2U0hlbDBaWngw?=
 =?utf-8?B?NGQrb0sweU9YK0xPb2taUWFKSS9mN25yakRkYkFBYUROTUtZeCtBbXF3cm13?=
 =?utf-8?B?QVdiZUh0ZjNUQW1BSSs3VzJBWFEydWYxS2xYT2k2YkFVS0tmMi8yZW5OUFNs?=
 =?utf-8?B?aGJoN3FVTC8rdjQ2dDFNMzdodkZSUEYvMTFVQ0hQU1ZyZmduRWZHY2R3M1dr?=
 =?utf-8?B?RWlFbXN6aExIYkROM1k4LzQ0aGRUb29ZYjhQTmxpcjcxNFQyaGxwMDg1dEpH?=
 =?utf-8?B?Y2JZeTV2NEd3UEVJNmdNb25FcmJHNUtMcCtkNkRvSVFtbTBBSEcvYURCNWpj?=
 =?utf-8?B?SFk5OHgvREpqWHBCTVMrOE9qcDUvRi9UQ040TGRXckhEMlB1bEZQRzJ0b0c2?=
 =?utf-8?B?TExZTHE2WExmLzVnelZnbWh6SUtVajB1aEVNWXcrYkl2Zkw3M1V4MlpnenpW?=
 =?utf-8?B?MDFEMTZHTmZWSHNUZEpyNGVIclFWcUlNM1V3VlRRU0M1aVpBMmtsVHVJOTVn?=
 =?utf-8?B?UkYxNG5TMXdlNy92MUpQU0l4RjBOL3YwSjdtaEFMZWV1UG1YUklDbnJnbWYw?=
 =?utf-8?B?S3dYRmJKbUx0OU5qTWFvblB1VEg0dXE2THNYUUtYMlR3WmM1aUJqb3BBM3dl?=
 =?utf-8?B?c29QbytTdTNHMzA0aG5RM0ZOaVVIUnBrb3FEOTFycm9VWHluNEltV3pYZ2tS?=
 =?utf-8?B?Y0lDcWh1dUxPSXZyYUhrNXh5SHVBYlVUeWVheHJzZVdJMGxtbllIM1c5TXU3?=
 =?utf-8?B?OWk4ZldTMCtpblUyb0R2RlFyWVhlNUVqbWpwMnZjWmplWEJVM0dLNHIreFN4?=
 =?utf-8?B?cnRZRzhLSmZVUFhSS3RCNktiL3h4VG1HT0FqR2VDL0Q4ZTErcWZ0MmlKTHYx?=
 =?utf-8?B?eTE2ZExpdUtqd2g1a1dsTVVldkFNMG9tNndPYVNhUzU1UFJPZGtZUWIrTDRI?=
 =?utf-8?B?a0Zob2pmMTcxSmN1d2RtYU55WTdhU3pITk5KUnFiTERGazBBWlptZkMvY0dn?=
 =?utf-8?B?ajV2elVtVEJCRGZhNVdraGtQNUJpQVpYZmRyRFVHRll2UVhSY3hzRm1NenF0?=
 =?utf-8?B?ZGZmYStZOVBwclR5U1JYajQ0eWpvc2VhOC8zR0FqWmJDZitGbFJuSGpYYTFV?=
 =?utf-8?B?cStKd2QrRWc5V2hsNXlsOGt6UjQ0dnNRRkVCSXhTUVBlWnZpOUxmOFhmWVFW?=
 =?utf-8?B?aGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62c16b81-4f33-45e6-3e54-08dd977aa503
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 08:45:17.0202 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5GaneW4ZsNG/PM7X6jne5+O8zZQFp8GVyH/oAIVIlFmo3lMCzwnK7QqA4eAwBw0c9cghb837FCYxFNu3xCt/4bu7lYx322Ukz+T71GFKLvw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7778
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


On 5/2/2025 2:28 PM, Jouni Högander wrote:
> There is a second Panel Replay capability register in DPCD. Read that as
> well for later use.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_types.h |  2 +-
>   drivers/gpu/drm/i915/display/intel_psr.c           | 14 +++++++-------
>   2 files changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 7415564d058a2..356287309817e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1665,7 +1665,7 @@ struct intel_dp {
>   	bool use_max_params;
>   	u8 dpcd[DP_RECEIVER_CAP_SIZE];
>   	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
> -	u8 pr_dpcd;
> +	u8 pr_dpcd[2];


As mentioned in my comments on the previous patch, defining a 
DP_PANEL_REPLAY_CAP_SIZE could be helpful here.

Also, using pr_dpcd[Some_PR_FEATURE_CAP - DP_PANEL_REPLAY_CAP_SUPPORT] 
for accessing specific Panel Replay features would allow us to avoid 
hardcoded indices.

Regards,

Ankit

>   	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
>   	u8 edp_dpcd[EDP_DISPLAY_CTL_CAP_SIZE];
>   	u8 lttpr_common_caps[DP_LTTPR_COMMON_CAP_SIZE];
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index ccd66bbc72f79..2d78d64b8db8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -608,7 +608,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
>   			return;
>   		}
>   
> -		if (!(intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)) {
> +		if (!(intel_dp->pr_dpcd[0] & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)) {
>   			drm_dbg_kms(display->drm,
>   				    "Panel doesn't support early transport, eDP Panel Replay not possible\n");
>   			return;
> @@ -617,7 +617,7 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
>   
>   	intel_dp->psr.sink_panel_replay_support = true;
>   
> -	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_SU_SUPPORT)
> +	if (intel_dp->pr_dpcd[0] & DP_PANEL_REPLAY_SU_SUPPORT)
>   		intel_dp->psr.sink_panel_replay_su_support = true;
>   
>   	drm_dbg_kms(display->drm,
> @@ -676,10 +676,10 @@ void intel_psr_init_dpcd(struct intel_dp *intel_dp)
>   {
>   	drm_dp_dpcd_read(&intel_dp->aux, DP_PSR_SUPPORT, intel_dp->psr_dpcd,
>   			 sizeof(intel_dp->psr_dpcd));
> -	drm_dp_dpcd_readb(&intel_dp->aux, DP_PANEL_REPLAY_CAP,
> -			  &intel_dp->pr_dpcd);
> +	drm_dp_dpcd_read(&intel_dp->aux, DP_PANEL_REPLAY_CAP,
> +			 &intel_dp->pr_dpcd, sizeof(intel_dp->pr_dpcd));
>   
> -	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_SUPPORT)
> +	if (intel_dp->pr_dpcd[0] & DP_PANEL_REPLAY_SUPPORT)
>   		_panel_replay_init_dpcd(intel_dp);
>   
>   	if (intel_dp->psr_dpcd[0])
> @@ -736,7 +736,7 @@ static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, bool panel_replay
>   		return false;
>   
>   	return panel_replay ?
> -		intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT :
> +		intel_dp->pr_dpcd[0] & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT :
>   		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED &&
>   		psr2_su_region_et_global_enabled(intel_dp);
>   }
> @@ -3909,7 +3909,7 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
>   	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
>   	seq_printf(m, ", Panel Replay Selective Update = %s",
>   		   str_yes_no(psr->sink_panel_replay_su_support));
> -	if (intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)
> +	if (intel_dp->pr_dpcd[0] & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)
>   		seq_printf(m, " (Early Transport)");
>   	seq_printf(m, "\n");
>   }
