Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F13E97BBB5
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 13:46:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E70410E261;
	Wed, 18 Sep 2024 11:46:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l41gVMJe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1038810E260
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 11:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726659959; x=1758195959;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sbV0cbi2GHkx4qRBVPkoefXJFgQm2/ypiR51P/Ci/JE=;
 b=l41gVMJeX9kHb8t8bWBP7raF/vhGrqCWqaY/e339wW3o2Q+Z1Gt9s+Cp
 h8t+rSryQi6ANUFp9JxuvQfJSsukjtJxeA8zd09BC9s4dw7JZoGGeQux8
 MUT7culWL1uGvRVV+WL4LCVLKhtw3kFTtIx2ej4q4gFV5HMRQjBIzjxH6
 wPnH9aVRakNJ5JvnhhHtIJjSDgcA15k6tSewrCV5ZWErwhGqSf/NI2YKZ
 cafY5GHqXdf9g6IrB3h8jh3dNmt0ndALYSRW2TW1QBoc5vldXFEZf101n
 aHQyxAW+48v94PiDyOcoO9rcv6l1wwNy4C+r4mb7qVXgBgjLlHfJbEiyY A==;
X-CSE-ConnectionGUID: oxp562EcTHSruq7shT1RFQ==
X-CSE-MsgGUID: C1+rmIjKTQCeSv2OAJFXag==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="36134628"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="36134628"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 04:45:58 -0700
X-CSE-ConnectionGUID: pK+O9UyESL6cW/CQfiZRXQ==
X-CSE-MsgGUID: YJOdQ80tRDKZHzDILy6NJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="69507863"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2024 04:45:59 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 04:45:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 18 Sep 2024 04:45:58 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 18 Sep 2024 04:45:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kc4Nywhf+6maVnoEXrijmIS8KQG49FLJSZRSjqUG/3hfE/jdL9VLJpMphqElVQ03XiOjBbdeKemYOzqZqObTCo3xWk+KrfUNcj3zTIUSoZzQCKao9nH0r8O5aSPdHy8vYCz3kcb3g0EFpKbu1EbML/Xqep0riL4cSoVi2anhHe/30tP1yvLYnMYmItwlphF/ENFaiNjM+FBb5YgZ8ZT8hjWagFRMUoDU3livvEz1u2I2Hx6ejBCJqfn825p+XMTRorYgNvRHik87IsQeTyP1jRkpKZNgOF5iEVNbgAKIBe6ZA2XiwC3fi+qTinTQEc4TwcDOvYGjTtrSkawWLanGBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LpA1Lvsh8+4HGotZdwGCPgp/Kgms3ljT653Fw97/Q/k=;
 b=j7Fh8GW9LkQyb1HQ7hGAcQryOTRMoSrTRsB5rgwcCQnDaKhPjym17A9xeyvMhI34CcFpZeqcbLmO6F9NPgt17V/va4OF8r3B10SKGORSFCDmJz0aIZj5KzdXIC8WvxG5uWv7heet3NrRbafoSVbB0rsE47svavMfI7KhiOJ/4Vqn4pqnXOvAtSZEn4TteWsVS5KCEJvOuB6yiwgQMMviPnC+OGhrvUl/OXcrx3MLGTJMBJq7J60ymxbVkAkGzvIvd27pOvl+hQd+TSowozX8hzncCXU048kP93bwZ2ju/Z4QssS24RL3LEeObu7mUFJyGY+O5RI91/VKpgxHRx7w2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB3238.namprd11.prod.outlook.com (2603:10b6:a03:7e::30)
 by CO1PR11MB4897.namprd11.prod.outlook.com (2603:10b6:303:97::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.16; Wed, 18 Sep
 2024 11:45:55 +0000
Received: from BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03]) by BYAPR11MB3238.namprd11.prod.outlook.com
 ([fe80::ba3:e9e3:27c2:bd03%7]) with mapi id 15.20.7982.012; Wed, 18 Sep 2024
 11:45:54 +0000
Message-ID: <58f9c966-28c8-443d-854f-16ac08806d34@intel.com>
Date: Wed, 18 Sep 2024 17:15:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [v2] drm/i915/selftests: Implement frequency check for energy
 reading validation
To: Sk Anirban <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240917094018.1239148-1-sk.anirban@intel.com>
Content-Language: en-US
From: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>
In-Reply-To: <20240917094018.1239148-1-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0057.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::15) To BYAPR11MB3238.namprd11.prod.outlook.com
 (2603:10b6:a03:7e::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB3238:EE_|CO1PR11MB4897:EE_
X-MS-Office365-Filtering-Correlation-Id: dad67f80-23e0-46bc-13f0-08dcd7d773de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RHozRlg2c3B2NFNWNmRMVkp1UDRmeE8za1dPMC9HUHBzdG5aYXZEQnlsRWFJ?=
 =?utf-8?B?QkZ6L2d5dUtNMGJLdGJYV1U4S1Y0cThJdklveHg5QVh5RXdyQ29MYnRYdXNK?=
 =?utf-8?B?QXZlNGRJTThqa05jSUxTVWZ6aVBVK2FMUkFEZTlPY0xPR2M5cXhEMlIveVRl?=
 =?utf-8?B?dVRLMnkzSXpCL2xHbFRkUHpFbkFJNVVicXMvOStTekRjOXVCcUpjSk9tU3VX?=
 =?utf-8?B?b2FvOEcxSk1QdFRtY3dTUndxdjVZYlZUNU8ySmI2SHJITUd4UFJSSHBRQ3JO?=
 =?utf-8?B?TnVuelJSdTFaMHMraWl3SlRVb3JPbHhwK3lnd1pYSUV6OHVUdklCeVhjclZl?=
 =?utf-8?B?ZUpJMlBjNXFYNW5YNFZjdDFtN09ZdlJTdGp0RDh2akZFd1RZS1RqekZ0VlE4?=
 =?utf-8?B?TWtyTCtDMmRNRVlZbmFoVVd1SWR2SHVOQzA2SDhITTFXMHNpa2dhdm1WYzY2?=
 =?utf-8?B?ZnkvcDFXSjZDL2lwaENqU1E5QWZOVytrWGhMdUZ5UnBoUm51dHJwMTZrQmx6?=
 =?utf-8?B?cDVGZmFpOEhkenBTZmZJTkljQU1vOURqdkF2eVluLzdHaU1Kd0pBZEMzSHlE?=
 =?utf-8?B?bjhBS0t5azVIRTdjc25WU2l4V2I4MG5VcXJXVjUzaHJkRmk3WHFja2gySkN5?=
 =?utf-8?B?MjFwb3FxZDlGS3BEQnRUQkhEVWNncEt5VGxhUFk1bGtHdEtJZzNLS1FkdU5G?=
 =?utf-8?B?djZDa3Zlem1zcitYbnlOa2pUMk9lRlVsSFUvTXlBODc0cDJaMFlOK3BhZi9I?=
 =?utf-8?B?TlBMRnZ4UG84Z0tGbmtmTmVJS0syZ1ByVEpHOEJaYzd6OXFEWWtPRk42cVc0?=
 =?utf-8?B?cVhRV0g2eVFBUVBlaGtmMkNaT1NTSWRsME9OblJ6SnhKMzBKMTAvcldjcy9j?=
 =?utf-8?B?TlMzRndNSjNnYi9GN0ZWZDl6dmdQb0ZaU3RkNUVPVXNGM2ZrajltcWRGTnd0?=
 =?utf-8?B?ZG5uYXZYSXlXWHU4R3NhdHVNak1INE8wQXNBU09Pc3ZGQ29lZlFMYlQyYkF4?=
 =?utf-8?B?SGRSSXpxNk9DZHljV0ZxOC9ycUNxb1dZRzVKYkxFSmptWjR1WjlZS3lZRUtV?=
 =?utf-8?B?MHVsRkdmaGRtc3BjTytaMzQ2aUpaa3ZrVWsveGxhbEpTMll1WGtWZWowQ1VG?=
 =?utf-8?B?dDZtT1JhQk9hYWlmY1ptUUZjR0NVQXJ4Rkd3RXJ3REhxSS9ubVg5TkFPNVJN?=
 =?utf-8?B?MGtVSlNZRmlJVWFNSWxFUVR2NWxKZTMzRzJXbDBXQ2ZoS2ZiVVQ2VnhSMWJK?=
 =?utf-8?B?eSs4aXVNVStqQ05LcjhBaVVBVVczVUtIQTBnSktGQ1NFWklQYy9jbHZFSmw3?=
 =?utf-8?B?bHRHeEZIZHhVcXBQNEVMYWlhUURVSVY3bWVZclBNQUJ1S1JJbTlmQW1DZ21h?=
 =?utf-8?B?R2g0Vy96Q3NPUkdGK0hDMWduTFprMlhka0pVU0JMYzhYeHhxZkdCNjJXUndI?=
 =?utf-8?B?YlpFRkp3NDBxb2pkQmhQbysxKzM3cU8wNGRMbzlaM2xOQzhxb3p2RWNFMWY4?=
 =?utf-8?B?NkdxVFpsd3pzUWs1RUZ6WFFSN3VQL052eC9EUldDQnVXajhJa1h3OGdhWjNl?=
 =?utf-8?B?T3lYRy9Za2F5OG5obU8vVVVVZEF6SzNCa0tkNlhqb3A4LzVtRzNsQ211Tjlm?=
 =?utf-8?B?QzdsbThsb2ZaTERjUWVtR0xMSHp5dlVsdHV4d2ZGQXJXNzdpdWkrRm00WmtM?=
 =?utf-8?B?cnMxZDdPMi83VGNtTkk1UTNpaU9nbHVJOHZZWkpXZnk4RHZZc25BdVhMazFv?=
 =?utf-8?B?c1ArL0hRdENLZ3RBNE9LSFAvY21MK2FLK1JOVGhrYTNuczgyODEvcDVxdzcw?=
 =?utf-8?B?ZUtIaHFUUTR4MGtxYTYvUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3238.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3RIdSs2Y3RGMDdnMTBUbDhSN2xNZ1dwVVNDaS9ZWngyVGRzNllKdFhPam1i?=
 =?utf-8?B?MHU0ZjR2Wk9ieFNFZGVhazFJdFBCV3NBSHdlcElmNDVSNUVBQTJ6TStUdUpk?=
 =?utf-8?B?TEF1cEk1enhZZ3RWVTJ0Mk0zSDl5aWtlZDVhdXdKYW8zTlB1YURLbmgza250?=
 =?utf-8?B?bC81RFllMWFMZHVBcjlsM1pjUC9TR3ZlTkRMUW5MaFdlbDF6VW1ybDZlUWJu?=
 =?utf-8?B?UnJpQm80WUNaQVhTTkJ4VllpTDhvbk1QS1hGT0FjWDZKbGFIQ2N6ZHovS2xB?=
 =?utf-8?B?QVg1clpDWXZWellVSjVMSTlCK3k3L1RQeVVxaWRTU29hTUFKcXhNdHF4SHpj?=
 =?utf-8?B?dWpNMTBUVjA4d0NRVHBIcFdIQTkyY2hKNHA0QkRlaGFleG5zMmxwc1RIR01w?=
 =?utf-8?B?NlVQNzNUUjRaQklJNi9wU2ZnVVlDVjQ2YkY2UWk1dlhZazUxakpaTmNORUNl?=
 =?utf-8?B?elVqTHFRQjQxbTd1WGIxc1pyMnlHYXRFSW5oZUhkN1VPLzJHL1hPZHhwc1pX?=
 =?utf-8?B?K2VKTXFGbzJnY1ZjYnI4NnowWTdMTFlrR3dWN3pzWG9VSEFXMlJIUjJ1ZkZS?=
 =?utf-8?B?L0lMVkJvWTBMTEVTQlUvcXdsRTUyL29FUEZVZ1JGUjUrdi9JM1FMTjg1ZmNx?=
 =?utf-8?B?S2RnK3ZpaHBTSG9YKzNHQ0JLRGRtRjg2MzJyMitwVzdhcDgxYzdqL2xJTTdF?=
 =?utf-8?B?bC91RFJYbWZhNy9pVHY3N0o5elZoeENKWXJLTWozSzEvY2g3aXJxUmo3RlRI?=
 =?utf-8?B?TTNjR3VYNDJxMDVPTlJya2UrUFhYTC8yMU10eFZuTklvcnBtbEJuMjN5Ry9B?=
 =?utf-8?B?cXBqZ2pQYUJFb0JONXZveENrWFZuTjJqV1BUN1daQ1ZuMWNpa0tlY0xFN1JS?=
 =?utf-8?B?MU9Za3BiVXVUTytnbmZ1cVNPQXlYaUJXSmVpS3N0Z3FZK2krVURsQm9QYjFV?=
 =?utf-8?B?d3Exck90RXZoMzZtb3RocGRWeEF3MSthSytLQ2REYTJudUh1ZzVOYzRoNnJw?=
 =?utf-8?B?MUU3MnNydlhTL1lncm9HZHpVQnpjMlNyMStBZmxkK3BaWGNjcGNqRDhEUm1F?=
 =?utf-8?B?eWl1TlBSSEEwVjQ5N3hzRlNxWUR3VW94eDJBSCtVSjN4TVlheWdWWWJxMkxP?=
 =?utf-8?B?YlExZkVaMlhlLzFXTUdxelhVSkJXSWF1ZUp0a3FGYnpTLzczaU53UVJnK29y?=
 =?utf-8?B?OXN3MFFPUWgzUldmMzBQSTdzUjZNZDZwNXV2SnlQUzU2TU5neWNtdFhoWFhI?=
 =?utf-8?B?bHR1U0F1YVdLWWhjUkpJMEc1Mk9tRnJEU3JHQkxDT2hmWWI0MFBGa0pZUUpm?=
 =?utf-8?B?bWlFQjJtUTJHU09BVkxqK3VNZGxUMzF2VVNrZ09xdWV1aXU2V3V6VDg5UDBa?=
 =?utf-8?B?NGFpcE5VQ2tnaXB4VFhWUGRzd1IzSXRSL1BDbGJlaXBYQ25sNXp2eE8vU1pW?=
 =?utf-8?B?S09VVjV2d29NYzNZUktlMllZOVAzOHFqNFM4WmF5VjhVNHJlT3dtcy9acmxp?=
 =?utf-8?B?U2taSlJGajBkcXdoV2I4ZnNLMjJQbndCMGtRb3Y0RkJHVEcvU3d5M0tyNEli?=
 =?utf-8?B?cDMzSzk4VGxaVjNsRzdEajAxeWJkL285enI0UUZHdnh0QmJBcFZNNUZUTnlI?=
 =?utf-8?B?YW01WU5kN0U1RjVWOVp3Z2laRUVZazgzM2lCYzBadTlnWElCL0dWT0NPaG90?=
 =?utf-8?B?ZG1RVk1zLzlSV2l4M1YyT2RzOVRocE5ZcWlBanhLbnJLMXhjL3BuN2JCMDNw?=
 =?utf-8?B?TlNqbXBEa3d3U3JoYmFCVHFyT3QwbXI1R3Q1Tng5SHZrejRrdUF2UkNtTFMv?=
 =?utf-8?B?UXBOeTBaYlgrYW93c3pSdGpJcHhVNXBhYSt3c1ZWTnVTTnl4V2xrMTBTK0hv?=
 =?utf-8?B?dlAyVTlJT3ZadWVsOG5tM3ZvWllYMXYrZzRUVEtUK1pvSVlwVlIwTmJTWTRL?=
 =?utf-8?B?bXFKdjgvNlVHWnlsLzlYV29qZmV3WGI2RmZIYVhjNm1CdzBNQ3lSMGdSZ3Z2?=
 =?utf-8?B?V092bmNuZ1Q5UHF6YTYvYklsRXpHem9WVFZ1Y0tpRjVhU0JmRXFWMkdQUWwr?=
 =?utf-8?B?aUVYaDh4U3R1Y3Vqa0tWSlc4TVB3c2hIN3dGZEcvTE1qSVE1bWY3ZllvcnR1?=
 =?utf-8?B?RjBmcXl3Y0hwcVVoNFFZL01RYjJQbWxHYkl1cFk2aDBpTG1LMjl0dk84U3VP?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dad67f80-23e0-46bc-13f0-08dcd7d773de
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3238.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2024 11:45:54.8869 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wLN5ldz/QtudCHjnb56Bnnszsiy42RsfCP443gjlrqOqpIHHMJzIs+5P2Bhbxxp64awAIiE7OwBG8hVvaLT/UKLIgBFcX/VACNkefdk2wNk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4897
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


On 17-09-2024 15:10, Sk Anirban wrote:
> This commit introduces a frequency check mechanism aimed at ensuring
> the accuracy of energy readings.
>
> v2 : Improved commit message
>
> Signed-off-by: Anirban Sk <sk.anirban@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rc6.c | 6 ++++++
>   1 file changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 1aa1446c8fb0..b3602328c832 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -12,6 +12,7 @@
>   
>   #include "selftests/i915_random.h"
>   #include "selftests/librapl.h"
> +#include "intel_rps.h"
Just a nitpick, we should keep the headers sorted.
>   
>   static u64 rc6_residency(struct intel_rc6 *rc6)
>   {
> @@ -38,6 +39,8 @@ int live_rc6_manual(void *arg)
>   	ktime_t dt;
>   	u64 res[2];
>   	int err = 0;
> +	u32 rc0_freq, rc6_freq;
> +	struct intel_rps *rps = &gt->rps;
>   
>   	/*
>   	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
> @@ -66,6 +69,7 @@ int live_rc6_manual(void *arg)
>   	rc0_power = librapl_energy_uJ() - rc0_power;
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
> +	rc0_freq = intel_rps_read_actual_frequency(rps);
>   	if ((res[1] - res[0]) >> 10) {
>   		pr_err("RC6 residency increased by %lldus while disabled for 1000ms!\n",
>   		       (res[1] - res[0]) >> 10);
> @@ -91,6 +95,7 @@ int live_rc6_manual(void *arg)
>   	dt = ktime_get();
>   	rc6_power = librapl_energy_uJ();
>   	msleep(100);
> +	rc6_freq = intel_rps_read_actual_frequency(rps);
>   	rc6_power = librapl_energy_uJ() - rc6_power;
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
> @@ -109,6 +114,7 @@ int live_rc6_manual(void *arg)
>   			rc0_power, rc6_power);
>   		if (2 * rc6_power > rc0_power) {
>   			pr_err("GPU leaked energy while in RC6!\n");
> +			pr_info("GPU Freq: %u in RC6 and %u in RC0\n", rc6_freq, rc0_freq);
>   			err = -EINVAL;
>   			goto out_unlock;
>   		}
