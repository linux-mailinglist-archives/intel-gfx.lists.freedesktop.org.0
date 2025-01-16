Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0236A13A66
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 14:05:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37D1110E587;
	Thu, 16 Jan 2025 13:05:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ikYLDVhw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E5D310E587
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 13:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737032700; x=1768568700;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mTIGSVa1H3gWXmBR66/btm96CsH0XlO9Oqp8xd21zOg=;
 b=ikYLDVhwE2+j+Le8uDcvuh4SlD4jegmPju5CIKgwwR7mWB/tUGnawqg+
 ugMJCqP3KNhJEs3GwokS7v1SvA/SH1TDjEgk86kQo0ggVz8sHHP978ySo
 e8WXny5Woff1rTENo/r1SvxCVgag0N7RFRcmrT36XwsCXgSfIr6f02+VW
 yGdkxqzzmfwcsKId+8GxKqRR5NARhEBP13/Z3DlBDs1s6mCC1xiYJrTIa
 Tz6DQ7DwTxY9i6+cguBANhIS/Jc7FzkNKtLUp02SnKi9ei0ZxUJNDxftS
 441vRwm269HFIq/QIF6QuQWrwOzjVBQi/oC47OHnFSbqukT3J8lbW3W21 g==;
X-CSE-ConnectionGUID: wrmgXW1wQH+l96Bunq/Qkg==
X-CSE-MsgGUID: /6HZ1LySQkSjY/5HKQzbfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37445874"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="37445874"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 05:05:00 -0800
X-CSE-ConnectionGUID: BxoWgOcLSnm6wvGmYQHSfg==
X-CSE-MsgGUID: t41Jc4afTBqjKKKdLeyRTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="105440802"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 05:04:59 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 05:04:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 05:04:58 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 05:04:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FmC0iRFKWafL/Tj7thCJEDO7Vb80AsHLmBJ4Jywmj3NBVu0C6zgQsxBdmG5xXKWF+sTMOfwA7hoBhwfu/p66+ZaU5Ge14EQTSDxlV5VRaV4BUeI5QiQS/5v4MxdHDjOidaFZItsgMKw9LLICJHKJYoSPPHII9Vd0/UNTyeZ630pURrXaY6Lf7gebztb58BopUxv1nEDp/CjVAoCIZomaEmOmjOkSMBzrv1G96NMZ7dXtP4qloiwZskEgF3t4i5jWp4UhC69K6CQOs9SRBodFzTs2zG4RMVzXq3ovFR+CxHW3O/oam1NjIUZl7fxmIh2991VdCpHgVKN6SOtgaPVhTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4KhJfgfT1iC3OC1H+mGkwKKo3c2Q/5kZknh74IkRxcw=;
 b=WMi4PEwMDtxqwezp+FhQoK6QD/TjOtTl3zt/7BNHUh+SybaoRb9yttsXF5MlKXKWxdNwagJ/KSf88Xsu2dvP2anKKJKSrX80qO88FFsQDgUkRB/D1wdVMvlcpS0TjYRJjwB6Hy1VbTeDA8frayZUwBQcixZ8B62MW/aPs72t0a3M/vD+bMwsEy65/i0Z9dtWPhY/1ja4yylb0G/d1nNMONhObK720Y3e++ejfzTRISFv3cDF4hqOFytLmfaNPO0QEpCPsIXfJo/3lrae/972vlFoK0fbPiZ1slyy+JvFmYcVlOgoSYSmj4KBNgWXIDJrsShwG5HCgKC+cqe5D60j3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW5PR11MB5932.namprd11.prod.outlook.com (2603:10b6:303:1a2::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 16 Jan
 2025 13:04:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 13:04:42 +0000
Message-ID: <3be42189-1b1f-45a6-9095-e7d3284dc3d5@intel.com>
Date: Thu, 16 Jan 2025 18:34:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 7/7] drm/i915/dsc: Check if vblank is sufficient for
 dsc prefill
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250115151714.3665211-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250115151714.3665211-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0211.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW5PR11MB5932:EE_
X-MS-Office365-Filtering-Correlation-Id: 6895b2ed-c57e-4820-d05e-08dd362e57c6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RHYxb1ZQMnM5ejRQTmp2Q2YxWDN5eml2dEdaeHJiVkdpYSsxRUYrTFJRQWMz?=
 =?utf-8?B?UE9qWHlhc25sTS9WQ0RKbUEzWHJzRy9FZ2d2R3crMHk5NEFQdUpCWGZ0aGFT?=
 =?utf-8?B?U1hma2JCNXFKRTIzZ1ZJaFN2WnNDOWdONGZ2RHN1ZE9pOVdESElrTnhWL2ta?=
 =?utf-8?B?RE82V2tKcmdtVXRlYVp5UU5DWE1uaTNpUFVKbVI2MWE2TUtUWld1NjlHR3Jz?=
 =?utf-8?B?WHB5WjJ6R2wxT1NxbW1COEpQMFNFNUU3bHBwV0tOZkQyRXNjaDFZM3dXdHd6?=
 =?utf-8?B?dnpDeEFYT05SUkltRERlMkFwcjVaaXd5cFRXOVB3Sk9NQlFxUWhVT21mcUF6?=
 =?utf-8?B?QTl0U292clQ2RVlxMXk2TU9MVGdISWU1aWQwMi9sQkJka0JpL2ozWjc1OVVo?=
 =?utf-8?B?YlowK0NXRGY2aWRsRUg0RlNKekVpRzlmRnNFeFVmT0JrU3NlTTNzQW5PWTQr?=
 =?utf-8?B?QmRpSGI0cW1IZ2J5am5XbUIvMEpMb0hGbGNOMGVZSGtyK3dndkhBck9TV3Bi?=
 =?utf-8?B?WkFPOE5CNTJPMGhVTjlicHREUnRYNDdnaHlRcG5lVEZjVW5UR1k0clFvV0lj?=
 =?utf-8?B?cm04ZEtYOXVLY3ZtVWI5VG83S3kwVnZJMENKYUp1aDhYOWliZzkxMUNMRE0x?=
 =?utf-8?B?NnpuZzRzc3B5cXhrN2JaaHRweGZLYTBabHBka2ovS0RSVGFuKzByK3Z6VTJi?=
 =?utf-8?B?NjlWcUN2U0RRU29SV3dmVTc2VEtNK0x5KzdqMmNjUm44SmRqZ0hXaVhmcGNU?=
 =?utf-8?B?dUFoNWtlOGNuakpoYll2cGxtRkF1U0RweDhCdXVnL2pYcTJoM1V4ek1MeENk?=
 =?utf-8?B?eFlUNG9tUDJvby9UQy82NmZzaVZmRStxd29nZ3VQY01OR3dERVQ0OUdVOXoz?=
 =?utf-8?B?U1RTSDM4RlZPRmJlOXhIQ1VvUGl0SU02ZGFGMDNveWY1NHFBa0I2VktrcFg2?=
 =?utf-8?B?R2tTZXRpVG1pWi93b2hPRlBrQ0lYYUJWN2VhaEVTb2pIVVA5QXI3WEJnSGdY?=
 =?utf-8?B?cGZEaUNPY2xxbVZROGdDZHFacGx4cEYxOWk2cEtHbkYwa1hRUlJDakVlc3Jw?=
 =?utf-8?B?T0ZYUkwzL3laTERFcm1jTEIwT2JDbVlJZjAyVUx1bytMVnBURHFSSFlPN1B5?=
 =?utf-8?B?ZU8ycWVLZjgzYk5mbFhxYmEzdjRWdGFTTG1XWVFZVjVXYkhsNmNsTU9hbHVH?=
 =?utf-8?B?L3F0dVJ4bjRHeS9ybW0vV1VETkxTRlpsL2pPN1Rib09pMWl1bVhLRUE0UXU1?=
 =?utf-8?B?VTVHOG9lbzBaSkg2Rlg5Wkw2NCtWUmVQcDZvZDVOeG9KQ3ZmNEMzbFlWVWpJ?=
 =?utf-8?B?WTZlY2o2Tk9ZSG8zQk56b2w3L1VPc2hzOUEyRmdTRGdTTE02SFMzYmxSTGht?=
 =?utf-8?B?VWlOalJ4aDZ3MnplV2xrT3AwMG04clY5bEV3dDBzZGlYMCt4Rm1vS1Rnbi9a?=
 =?utf-8?B?WkdTSHhKQm11M0lZelZ4bWVoRkRtbDBydmVSREVFQTI5TWNGK25pb1BMWGRS?=
 =?utf-8?B?c3hvSFJ2amlic3B4NS9rQ0d1NEh3em1xckdrWlZJZEVvT0tEdnZlM25ObkZK?=
 =?utf-8?B?YXFCTjJVSkJ3RnBZR3RsV1djTTlGaE1IUVEzR2JSd2k0NFZ3eHc2OC9mbmZU?=
 =?utf-8?B?VTJaNXFFaHQ4NnVOQlBjY1A0bGJjMlJzUXRPaVNoRU1PWFQzUFlaRklMdFVa?=
 =?utf-8?B?N285QTBtZThPRHdWOGZtL0pWQ0VZM1hvY0JyMVJYV0dkdFNTQ25waW9xcXpC?=
 =?utf-8?B?UTB4eGNoL1FMZHBqYVYrbC90c2FkTDZXQmN3bVJDbXQyUURWMFQ3eUI1MjZ4?=
 =?utf-8?B?eGd2MERrRVRJeHJHR2d2SFZMamVzT0lGV2U5REVTdTExUERJUVpkcFNUVGw5?=
 =?utf-8?Q?0PpKTF+Pi1ep2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXZSZFhQeFJ3dzFNSW5JdmcvZXh5d0sreHZmQ2VreXpDR01sbE5HdXpQUVNU?=
 =?utf-8?B?N3pyeGoxQ1JJeW9FN1I2blAzaU9zbkFzTXFsdDU2bE5kZ1BkbWhGWWx4Q2pq?=
 =?utf-8?B?REoxU1hNSWhKWXNMOHZQUFptczNRNGcrOUROSVpRWnl3eTBUemhEclRBN3lE?=
 =?utf-8?B?UkUrS2pTR09LMll1WWg3V0c5STlseHNoVnJraXB1VThDY2FWdG44YTAwWldo?=
 =?utf-8?B?c3hKUFAvTk4vRFp0VVJ4empWS3RIN3dVcnVMamUxNmdnZHF5UnhtZTI0VUNl?=
 =?utf-8?B?a0pzRmhha09icGd2Z2JoOUttZUQwbjdkNUdtazRoQmE3WlZCYzlkc0crU2cz?=
 =?utf-8?B?eTJyMyttM3gxOXhaanNyeHExcTdDYXlxQ2YyVFM2Q2RVUW9LdHlwR0NTekZp?=
 =?utf-8?B?ZTZVaHZtTjRldEsrQTJvdC9SaksxRDJySWRwUnZ0RlZCZkZFOXVRN0Qwc0NS?=
 =?utf-8?B?cHJ3V21NcGJOUFo5cGlEN3JoSE4vYzY1bzdvdWswOUdUdWRwK3EzcTdIM1FS?=
 =?utf-8?B?Vmg5clgyQ0ZtclhJclhpdnhwdGRZL2phMFRETFZBQUFNUnNJcnUrenNXQkll?=
 =?utf-8?B?bFpBNU5KUU9QYllsL01UYnJRVGxqaHNrRTE1bXF4OFpFVng0cGtPdjdvbENz?=
 =?utf-8?B?bVJBR21US3VoaVhUQmlSYkhJWVpESDYyOG1NUUtuTmVHQ0ZjMnh2Q2hEb3Qx?=
 =?utf-8?B?aU00OHVUR3d3VkdKVDZVRCt0Slljc2tpRS9mN2swcUY0SE9yL2RLYnpPSC9O?=
 =?utf-8?B?cU9XSVZueTRYR1pJOE5wTFhQZ04yb01zUGRoSXY5V093em9BYnZlSFFPcXBl?=
 =?utf-8?B?RnpWOEUxS2czKytFVC9NTkt3RnVEUGI5eG42bE5aNEpHUU4yVi9HcGoyZVk3?=
 =?utf-8?B?UzI2RGVWK3RyVTJ5RW1rS0tSTVRwbmhrN2VadU5oN0dhY1FYcDV3V1Q5QUFJ?=
 =?utf-8?B?V0lMVXdjbzh6a0phbmRseE1EejJ5bTlETFAyKzh1UnZGbGJSRkxFdGNETnQ2?=
 =?utf-8?B?Nlg4MCt4d1UvZFYrazhWWFI0Ty9ISWhCWisxTlZFSmp1UzJFNFUrVWFjWjhz?=
 =?utf-8?B?NzRSdFdjQlVRdFJQN0RGc0RubGJ6L0FzMis1ZkpzTzhnVFg5Q3RER1lYR2FH?=
 =?utf-8?B?RHFpRHVIS1I0WVU2c3dLL1p6Y1BEMmlldmRyb1dDRlN0RE52NzZ6SXR5U20r?=
 =?utf-8?B?WXp3Ni9URmhjZ2xKcjE3dWYvc0Y0V0hGd2N0cXl5U1RsSFIvRzV2MHJxSG5Y?=
 =?utf-8?B?OFZxclJvODhjdGxrY0FCOURiZ1NxK3ZaeHlzZDlwODN5Q2o2Rjc4R1FML0VJ?=
 =?utf-8?B?NGZHRFFNZkxGN2luVkt2OHJUY0JidnpsR3ArMkc4ck1YaklSMjBZQkFiZkRW?=
 =?utf-8?B?UHp3ZlRRclNXSXZwN3lsZkRKc0thRWl6STNLYUtSdTVXKy9pc2l0cVhVUm43?=
 =?utf-8?B?cmFKUjNBVzI2UjVZRWovanVITmRwd0RtRVcyVW5KZ2F5SnBqMGg0eCtmV0c1?=
 =?utf-8?B?dFRHcVd5dkpnMjJKNDNHS0xJaXJKTG91RGxBWXE2UHhZOEV3YVh2Ym1oemNE?=
 =?utf-8?B?em50UXJCbWV3NGl5eE9ZYXQyRnJPY3RRN2kxNDIwbS9Hb3ZFREtvL1RyUmUw?=
 =?utf-8?B?U1JwT3kyeGptc2FqODRHakFSem1QYm13QzJWcUNrT1lUUTR6Z3RLd2k4S0VM?=
 =?utf-8?B?MFlxa2dnajVuWjdGOWcvNTgzUXEvTXhyaGhDaG42ZFQzR1liRXVjOTNEcWth?=
 =?utf-8?B?OFYxYmtMREtvcVFVdDZDRmtDdlBGbUhDQzRaZVdHSHpweHRnUFJyT1hRSjVm?=
 =?utf-8?B?djMwSmxJV3dnaXNoUFpaL0x6dkl2dHVhUkNKUUMxTDJRQmg5YVNCVFN5SmJP?=
 =?utf-8?B?T2txSTBKVkFGWnZSUTNUL0ptREQyYXJOeDBvVHpYSHh0VUlJbmVmc1U0WEQ3?=
 =?utf-8?B?b3Z5b1BJN2N2T05iTlM1NlhjVFRLUy9VR1Z2ZkNzOEdhajV6dzcrUjFpSnJp?=
 =?utf-8?B?M1VVNDJiSGgxa0ROSzVEU0JrTVZpSWM4YlhsSVBoUlU4SXk2dndLSlFTOHp3?=
 =?utf-8?B?RXAzV1JvSGpqb2krbVloSWlTVERmdUJ1amtXSDY4Uzc3bGFBallaRm4yTThy?=
 =?utf-8?B?cjJOYU9Xd2F0cjAwYzc3WmdjaHk1bjNpSjBLMmhuNE5oOTcrN09IK2VodERP?=
 =?utf-8?B?d0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6895b2ed-c57e-4820-d05e-08dd362e57c6
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 13:04:42.8925 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yk1hCBV87242TUJXQu1pg7sp1qNZGYBRsZHeK/JMlH/xu2ZAYNAUECXKc6Ub5O/tQ8Fze1jO3aMjG+n92kDCN3lNWv0LvHwz6xf4olliHIQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5932
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


On 1/15/2025 8:47 PM, Mitul Golani wrote:
> High refresh rate panels which may have small line times
> and vblank sizes, Check if vblank size is sufficient for
> dsc prefill latency.
>
> Bspec: 70151

Add Bspec as part of trailer.


>
> --v2:
> - Consider chroma downscaling factor in latency calculation. [Ankit]
> - Replace with appropriate function name.
>
> --v3:
> - Remove FIXME tag.[Ankit]
> - Replace Ycbcr444 to Ycbcr420.[Anit]
typo: Ankit
> - Correct precision. [Ankit]
> - Use some local valiables like linetime_factor and latency to
> adjust precision.
> - Declare latency to 0 initially to avoid returning any garbage values.
> - Account for second scaler downscaling factor as well. [Ankit]
>
> --v4:
> - Improvise hscale and vscale calculation. [Ankit]
> - Use appropriate name for number of scaler users. [Ankit]
> - Update commit message and rebase.
> - Add linetime and cdclk prefill adjustment calculation. [Ankit]
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 35 +++++++++++++++++++-
>   1 file changed, 34 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index ca9d5677c356..13666adb8e36 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2307,6 +2307,39 @@ cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
>   				   2 * cdclk_state->logical.cdclk));
>   }
>   
> +static int
> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +						&crtc_state->scaler_state;
> +	int latency = 0;
> +	int num_scaler_users = hweight32(scaler_state->scaler_users);
> +	int chroma_downscaling_factor =
> +		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
> +	long long hscale_k[2] = {0, 0};
> +	long long vscale_k[2] = {0, 0};

Use u64 as mentioned in previous patch.

Regards,

Ankit

> +
> +	if (!crtc_state->dsc.compression_enable || !num_scaler_users)
> +		return latency;
> +
> +	for (int i = 0; i < num_scaler_users; i++) {
> +		hscale_k[i] =
> +			max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
> +		vscale_k[i] =
> +			max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
> +	}
> +
> +	latency  = DIV_ROUND_UP_ULL(hscale_k[0] * vscale_k[0], 1000000);
> +
> +	if (num_scaler_users > 1)
> +		latency *= DIV_ROUND_UP_ULL(hscale_k[1] * vscale_k[1], 1000000);
> +
> +	latency *= DIV_ROUND_UP(15 * crtc_state->linetime, 10) * chroma_downscaling_factor *
> +		   cdclk_prefill_adjustment(crtc_state);
> +
> +	return latency;
> +}
> +
>   static int
>   scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
>   {
> @@ -2347,10 +2380,10 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
>   
> -	/* FIXME missing scaler and DSC pre-fill time */
>   	return crtc_state->framestart_delay +
>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
>   		scaler_prefill_latency(crtc_state) +
> +		dsc_prefill_latency(crtc_state) +
>   		wm0_lines >
>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>   }
