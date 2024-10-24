Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A15F59AE41D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 13:47:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CDCB10E908;
	Thu, 24 Oct 2024 11:47:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PInqJngO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7F9810E905;
 Thu, 24 Oct 2024 11:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729770422; x=1761306422;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HpVqUjY/ULqfQ39nCq/e4ukZTiT1UP9yOqIgAGnoh0A=;
 b=PInqJngOAGbKgZH1L33lhZZzr4DNpqJJ5mOUWjRLYQDvYN65lx/4SetI
 4TPCENpGZOTcotNM9hi3+DqVnV2pRjM22s+FIltF42Q94ukVMrPW+vrJr
 pfkh9lLlDzh4KmiRvdXWpUwJgoWvngo/g4vo3TJhn4xybh83R1Lm4HDs9
 kzM21dDWgJZQ23sHW4QwLpB+zwABYvy9Ty7iW2fyES+4twRIgwrfz6DWw
 YsJTRKTyXjh97FOobdYAo5gpcUtRyE+CAsmtUTINVbh8sKv1h+4Ar0qko
 qIui++7FuigJS+T7B8mVjxb5vqw+FOqlUVd8xeukVkkAj7qTNmDrqUen4 w==;
X-CSE-ConnectionGUID: ailwoghPTBOPuvOlNhe35A==
X-CSE-MsgGUID: z0t46Hb6S9WKWQaVh16OLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29499276"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="29499276"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 04:47:02 -0700
X-CSE-ConnectionGUID: wpa9eU+mQ+O8Vk/Sm3ycyA==
X-CSE-MsgGUID: OA0TBe2TRnaOPADVIVmLKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80985962"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 04:47:01 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 04:47:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 04:47:00 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 04:47:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OP35qO4P82jEvwPrB2705NjKpW3zzZVpGRFx/bZqROBjTiUHinaXwllmQEp9Uu/Weg+7zDnCst1WlXbsgCfmJuhuS6275w5MCGxK9eOmCZei6gvXhuHSMr76z2AC8OXlXLLdlYw9iqVDVeET31NIwm4/duBQTrRMBE6pOiHzs6MyS6AV57HTue59nARf3hX9muGdM1idG5H3cO2p5XwITFtDFzpL4D0SH+Kowq0hxkREqf4PhtxEjNpIxvVRR9Ptizawe5SU6AD6+DduzoGSCOWW5EtLWUXwZMMcVJH+nU34P+DmHNoeCoUpG8xVVzOzzlAk20Esk5+5x6nPAVXHZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W76FqBzbgNwmXfRHKhsub2OLGw9ixYWu/lEbjzH5dUM=;
 b=mxR/DQ0nmwCmImMERp1JxvzQHP7PMAF+UzmWTmQZA5dk/OG9+znfFv23vziEMZLoJpw+awFxSg80xP5d6zC1ADdHl2TKpE6UOvo+eR+9CIvoGWrO1JhjCGedRBRH2Q/apdk3S62C1j9XbvU3iE/SGemwRJeMR7VNn5Ksr7zHtRuXkxMcKvwbmWd1orV+HBrHpc8FW1Sz2MUA2mvkWWz9wGWLVTChDf9IAGqbujKhn1xiGw8MsXAU7GUd7d9brCdxutF9EZwtahm7BmcXDuXkt4m9VZUiy772mS+CaTtZVCyJ6T3EOKZCUv19igcD1lPIVBsvA9+00XeRoBsP6eapDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV8PR11MB8679.namprd11.prod.outlook.com (2603:10b6:408:1f9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29; Thu, 24 Oct
 2024 11:46:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 11:46:57 +0000
Message-ID: <d0b4e4b8-f6c5-41f7-b1f7-36b06397b852@intel.com>
Date: Thu, 24 Oct 2024 17:16:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] drm/i915/xe3lpd: Increase resolution for plane to
 support 6k
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <matthew.d.roper@intel.com>, Arun R Murthy <arun.r.murthy@intel.com>
References: <20241024035552.94363-1-suraj.kandpal@intel.com>
 <20241024035552.94363-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241024035552.94363-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV8PR11MB8679:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e6d14db-b3bc-4366-3d2e-08dcf4219059
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y3J6dm9Iek9YRlJIWm5DemRuZzZFM2JTRTUwQ1VPU3ZLTVk2R1QzQ3FRSTVa?=
 =?utf-8?B?MlJvUlFjQ1E0bmV6TGZZNjlMaENJVDFJRkkvZk5JbGs5elRRVlhHdlA3UUgr?=
 =?utf-8?B?YklTbjBhalJPVlRQckdPcThJclMyNERtbTF5OWxjR0ZzUTJFbjgxa1ZNUTdN?=
 =?utf-8?B?ZnZJOWVOeWlhZGlQWm1Rc2xOZEs1RXlSTzE5dGM5emF3dG5leVg3MHdrN0RM?=
 =?utf-8?B?Z3A5QVJHOWhVYXg1RFlGOUt3QTBsVUpzZG9oem1lenRwK2hBK0dZc0Z6cGVS?=
 =?utf-8?B?dktySXRMaUJkTjR0d2ZUcmlQWDd5NjgyMk9PaHA5ckVsYkRkMnJMUUpXRXo2?=
 =?utf-8?B?WW9vYzkwVkg1QXl4eGxrTEJiWWdvSUhjdnJXL3IvanJUL2UvbElMNUdzRUwz?=
 =?utf-8?B?Qlk3ZkZlOGd4ejRNMm5zUVhnbklWYzF3cGtaMWJzaDBIWDBPSjVlZkNJdXZU?=
 =?utf-8?B?dXZBVEJvRVhuSytMSVIzMjczTVh2OE9PRlkyRkRBNDdUSVBFSm1zY3huMnAx?=
 =?utf-8?B?NnozaUd2cHVqcDFzOWh0cGdHWG0zZVVmQkdFeG5wSENqenBzYnhWT2hjSTlQ?=
 =?utf-8?B?aEhtUC84a0pvdkVDWXZjUEV4NjREbnRPa2NpRll6K1E2OWk1QmVtOEI1emlI?=
 =?utf-8?B?RGY3ZjV5RzI4alVnZVA3cmRESXZFUGdjQk5ZUmUyZWJBc1RKczRQM3ptaldo?=
 =?utf-8?B?dE5ja1dQNEpHZDdubXRkYnVlL3EvS2xUSHB2eEI2cW9IeGViUzdmVi9yQUJ2?=
 =?utf-8?B?cDlJZk1BUDRRSzZnS0tjRndRTDNuUENENUx3M0ZDN2hOSjBuT3pKM0x6bTk2?=
 =?utf-8?B?Wk5JdkdXYnJwR3RPVzhNTVdxZ3JtUnZxVWtqQVRrRFlYVkpCcldlL3RNWDlh?=
 =?utf-8?B?Ni9tUXA3dWlHZU9GSExVRlJjazlMSGVCUlh0TU4xR216NnMxYXlBbG15OXJM?=
 =?utf-8?B?M1pWSldCdUt0U1ZCNVpUNnl4cFRCQ0t5M2FEaldxRmo1UHp3QkdxRU9PUlNM?=
 =?utf-8?B?aElKOXp2VjVvbit6R2lqdGU1N2tzbzY3QkloSTE4Q3BwZC93cnhBVHZWVktz?=
 =?utf-8?B?YkFzeFVJc1F1T3RGNktWNmEvU2Z4R0F3cHdvdFBWKzlqQmE2Z1dNaFdocUN0?=
 =?utf-8?B?T2VHOU5WdkdMbTVHc1orMElZa3FaYUNObUM4YWd1VGl1dEZEKzFWbmI4aHF1?=
 =?utf-8?B?UVZ0NXlycjl3TkZsckVVanc1RFdleFJDQnpmQ2hQZ2x4VGVXSDNDUmVvbGly?=
 =?utf-8?B?ZXpyNmNjZzdkTE9uMlo0VmFDR2N4VEdSWS9vMnd0ZkpHQWU4RHNZcmprTEkw?=
 =?utf-8?B?YW8vMWV2dnNUOE1MZE1rc1dWL01QTmlxZTREY2xqd0ZQdkY4YldJNFFIQWtx?=
 =?utf-8?B?OVlLaCtqcmNEb3Vlby9KYmdjR0pRci9qNXFrYjJZdlRvOFRjMU0wSmN2WFNS?=
 =?utf-8?B?U3laVHZnWW52anRaekJpbDI1Vk1zNHg3NVJvME9wd3FGOTVFLzRGV2JtMjB3?=
 =?utf-8?B?YmkrdGVoSlNyT21FcGUwMGlwWnJ6czlVVVN5NDVzbXRIb1FVZWlDN0svUkQ5?=
 =?utf-8?B?SDVPL0J5QzJmbVo5cjdPUWxNYzNMQVhwVWoyWFZDL1lvR3BlZ2RIN0F4eTU4?=
 =?utf-8?B?MGRYdXhtMXBHcDc1ejMySHZYQ2ZBYWNLa21LdkdrUERmcWZLQlRnSW9BcTRi?=
 =?utf-8?B?SzdBekV3cm02NFdlSEJuUUwvZHg4UWphcy9OSzF4WTR2NStmc1FmR1VnUVdX?=
 =?utf-8?Q?+mQFQoS08BJISNN8BuIqNCbP1xCCP9xDP+ExIOZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b2RhNDQ1RlFRSllwbzUrSVZ3VWhXYlpsZ2lNZ2szUVNFYkMrZ1ltNW90RSts?=
 =?utf-8?B?MDZ6RUpJc0EwNko4WE12WjVhKzJpZUt2d0NaajhMbmNOYnc0OW1jVUxtRG02?=
 =?utf-8?B?VjQ5RFp3RVgyZ0RPRnNZOE04aXNTZExhd01QSGgyVGFlek82OWxORkEwOGNt?=
 =?utf-8?B?T1Y0Qk9xeUJiQlVYYVpyV1VBOVZqYktETHJBZmY1ejZzc09FWmhzZ202SzFG?=
 =?utf-8?B?VENEdVRVVGFLR3pxOFJLbEdhREkyeG1SUkFGK0Z6WU82YjlxZks0MzFyd2Zm?=
 =?utf-8?B?WUI3Y2tORGs4eHh3a2VRZmhZZzVDa3V2b1BPcFlVRDFtcEJMZ1cyRzNqZXRw?=
 =?utf-8?B?cEhZNVQ5Yi8rS1Jxcmh6bzN4VEIrSk9oOHNpOTVQbW03UUZ0RVViSTN4YTEx?=
 =?utf-8?B?VVlqd3Z5dTFkb1FXWjJwVnlEam1hSnJ6S2lyaDVkUURJZVN6d1BIWXJ0RlNa?=
 =?utf-8?B?VFFyZWlidHlFOEFiUkVmTnFuZHlnbWU0WFdsdDgvNExKK2NFbytNd1dFTmMx?=
 =?utf-8?B?ZEh5cVUzc29nN1NIc3B4RkhvU0gwdFd2M1pzK1RwRDRTa1Z3ZEoweUw1Qy9y?=
 =?utf-8?B?ZXk5K0d5c3NlVHdqNnJvbkJOdTc2ekFjZG5kcWVqNDFpN3FoM2lDVFlMaFB2?=
 =?utf-8?B?WVRIODlGK3dMWm1NQXdUeCtsVmFRLy82V2I4MS9yQUd5WVVMR3BHamFlMDJX?=
 =?utf-8?B?NkdLN3M4Y0N6emJ1bmlUQy9qenoyWnZRamJnSGF0dWJnempyaHZBcFMweXZ0?=
 =?utf-8?B?TEJaYkFPVWd5TXFDY2FOL3NnTXRIVzdhWFBpWmdLbGtYV3ZDN1lvWDQreXcz?=
 =?utf-8?B?QXZaOGl6bXY4dENpREJhSVhqcnZNWjhyb0hscXp2aTdZZGxzM3BIdy80MlRO?=
 =?utf-8?B?Mm95eHN1b01XN01TY3ptNENSS2RMYzBTSU84VGRLZFZjWFRwbm5jaXdNbFBt?=
 =?utf-8?B?eDZLa2pzZGV2M1JpS3ZMQmlqUG1uNVp4bXNRV21jV3FBMDBGdkNabHorell1?=
 =?utf-8?B?MHZ1TC9NRXo3bWVKSm5HYnJLcUV0K3I3VDM4UDZValdZWisydU1LeVRJZFZK?=
 =?utf-8?B?NkcxNFppbENCM0hRblVhN3BTNUorMmp2Y28rVHNCZXpVRWNadHNId2ZUTFQ0?=
 =?utf-8?B?NEJocWZJRDQ1aEtWSmpEMUFZRmxtaGZYcUtWNWZqM25hWWdKM21BVzZiOGdU?=
 =?utf-8?B?S2tjYzMvQi9vSnRUemF4Vy9oeUJzMnZYVVNTSjBiTEp3M3B6eGVBbGc0YkVi?=
 =?utf-8?B?MTFhVGZqa0loSzFJRkt1aVBoMDljMmIxZTA0SjhTTUtMdGhNUHhiWUtlRUxV?=
 =?utf-8?B?ZXM5UWwvaUhQYmVqamoyU0Rrb3FlUjJaQzhYWnNFUFV2MHVvY0piZXpRQTVQ?=
 =?utf-8?B?TEZRQTdjQ1dqaUNGa0xxZzMyQWRGelJldjVtNTNxR3VKOW5qeG1TWlljcnFX?=
 =?utf-8?B?MUdicXZsWEJMUi95Nmo2RC9LMHF2UGxLZUdGTW9NWi9qaVhzbDFzdmhseXBl?=
 =?utf-8?B?VzIvdEJ2ZDlkVFFYODFFWW5EMWNrejNJekZZcDNHV3RPS0pLZUFBUDFBK2lC?=
 =?utf-8?B?emRFVHZaYUdTWDkwZGFyQlhhSjZFVnlNL2NBQm9ZNDhLQlVla0hNL0pKTmcz?=
 =?utf-8?B?d0ZDendaV0VzZmtoSXRUd2g3Sm9INUxFbHNIck13MnRoaWtFZlFUTC9xMUpH?=
 =?utf-8?B?RnNrWk45Q1grSGVtaHpnMmNCMUtoNVF5UkxxMmRKUlg4cEFXTUVMZGtXaG9K?=
 =?utf-8?B?K2JmdFBkVjFZaHlObVd4S2UzQW8xTk1ob1pLb3lrd3pjdGpoWHZCZzJNOWNr?=
 =?utf-8?B?VHZtU29UWWFBeDRvMUVpRi9LVW9jajJpYW1FZ3V0ZzZIZUFKNWxYb21sWlJz?=
 =?utf-8?B?MjRCT25CU0VHOUlGcXA1Sm1yODYyZUpBajg0eWd2d2NNU0xPd2tBQjZTQkFR?=
 =?utf-8?B?aHl3U2owbm5xemc3b1orNk01NEwzZnpYbm5iTHl1TUhPUlBHWWlaa1FZVTYz?=
 =?utf-8?B?eEdFSE9mUG1ZcnFkWnF6NjlPMDY1aFF3ZEVaalZZaGU3Yit3SytnVTBIcXgv?=
 =?utf-8?B?cnVtOWE5VGJ0ZDQyY1FhSHdhVmM0WUplb2Q3NFFEckNwTXJtY01ZS0pGbThS?=
 =?utf-8?B?TmdHRlkvTWFnN1N3YUdWNkhEYVhaSmFTSEpxVXVXajdFalhiSFMyS1UvM21r?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e6d14db-b3bc-4366-3d2e-08dcf4219059
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 11:46:57.6103 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pxcauMAQZs6m43bIi3M9KbRLOfWAedWruN7CBytlQ4+10IcbegVZVtHvpGfL0PyUnfU5GuNp3z0s9qpA81/4HDQ6AiZJrtdMYUuAot8eGbM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8679
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


On 10/24/2024 9:25 AM, Suraj Kandpal wrote:
> DISPLAY_VER >= 30 onwards CRTC can now support 6k resolution.
> Increase pipe and plane max width and height to reflect this

Only max width is changed.

> increase in resolution.
>
> --v2
> -Take care of the subsampling scenario sooner rather than later [Matt]
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c     |  5 ++++-
>   .../gpu/drm/i915/display/skl_universal_plane.c   | 16 +++++++++++++++-
>   2 files changed, 19 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e1f6255e918b..37bac53f996e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8432,7 +8432,10 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>   	 * plane so let's not advertize modes that are
>   	 * too big for that.
>   	 */
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> +	if (DISPLAY_VER(dev_priv) >= 30) {
> +		plane_width_max = 6144 * num_joined_pipes;
> +		plane_height_max = 4096;

plane_height_max is not changed, should be 4320.

Otherwise looks good to me. With the above fixed:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> +	} else if (DISPLAY_VER(dev_priv) >= 11) {
>   		plane_width_max = 5120 * num_joined_pipes;
>   		plane_height_max = 4320;
>   	} else {
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 9207b7e96974..b3660c71e499 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -432,6 +432,16 @@ static int icl_plane_min_width(const struct drm_framebuffer *fb,
>   	}
>   }
>   
> +static int xe3_plane_max_width(const struct drm_framebuffer *fb,
> +			       int color_plane,
> +			       unsigned int rotation)
> +{
> +	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> +		return 4096;
> +	else
> +		return 6144;
> +}
> +
>   static int icl_hdr_plane_max_width(const struct drm_framebuffer *fb,
>   				   int color_plane,
>   				   unsigned int rotation)
> @@ -2511,7 +2521,11 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
>   
>   	intel_fbc_add_plane(skl_plane_fbc(dev_priv, pipe, plane_id), plane);
>   
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> +	if (DISPLAY_VER(dev_priv) >= 30) {
> +		plane->max_width = xe3_plane_max_width;
> +		plane->max_height = icl_plane_max_height;
> +		plane->min_cdclk = icl_plane_min_cdclk;
> +	} else if (DISPLAY_VER(dev_priv) >= 11) {
>   		plane->min_width = icl_plane_min_width;
>   		if (icl_is_hdr_plane(dev_priv, plane_id))
>   			plane->max_width = icl_hdr_plane_max_width;
