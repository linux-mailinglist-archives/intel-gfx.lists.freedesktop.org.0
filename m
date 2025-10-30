Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAE0C2030F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 14:15:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B92010E967;
	Thu, 30 Oct 2025 13:15:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Px2vFB51";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0772710E26E;
 Thu, 30 Oct 2025 13:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761830149; x=1793366149;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OvAILq2KHoeL+LQGKiCC0gfpa9AYmo/tIekMC83JGoc=;
 b=Px2vFB51XNbpXROZ8+WeCk1Xza+Xo69DiUJu4HMGXksf0DKbLHtv2vfI
 XcVrpYJPjYJwgKcF3LD4PGXbv5Vi/WX3mMhkmD3TLxZmLLzgLgjy/N0jN
 S8uR6CR1a+knCqEPp7W7XUKcB2+tG4OrUaZIhMFZJXRN1mP8SOjBd7W9t
 Q0paH4ojDzlqq0wEeLa6zifpQ/1/QZ4orlEPYYOXv8h0MyO9gMcXmDXPA
 DGnQleUDDIpG2La0rtag2mQnGnAKHs2hhckaYyStJqSTLlZgIRDnWItkU
 hqeOH/3b3+87EzY/Fp5lgXfAb7+D0R9AlcT92l2+bxScTgpdZNO00JF4k w==;
X-CSE-ConnectionGUID: 7WfUd2nWSsWXBwa+qDwNMQ==
X-CSE-MsgGUID: j7T5tohVQruV306rp3vUXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="67623189"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="67623189"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 06:15:48 -0700
X-CSE-ConnectionGUID: ghn394qDQPSR2583hbg0Fg==
X-CSE-MsgGUID: /MU1Zxa/TMeRHgNJiUR9sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="209531474"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 06:15:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 06:15:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 06:15:46 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.36) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 06:15:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mLSTInT8IhzdZsQqDMJKSWuHJ+Oasw/+hE1/2LIP7G1aZ2BMuCt9c8K3S9jbj3UtIrA9/2vEY9IfaTTSdoiEsA1MvZv5D6XSIXGxHn918Ovv/kVnVYwnPGrI6R51zbnGW2nn6ZGR8N67mGxkxycMerh29KbpewUES2PZpw52nPXpUv4CuSmXPtIB/2nirf0hGtuN2oNCHlziJmpOLQq2zOvNEocdyW8MgGJwD/G0y1LfGTUELCWuAyBWYSjKA9P+tmNCfR+KIEvo0Zkj2MbjT3YKfgwsP41RC2VdIbkxYSGCA7DV5wC3qMu8YdteCxNK52NhxJhMrk2EFd9/WqmnXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NPSN8stgISbgJrsp+fdYOjo31RBYglNntaaMhWfHpMg=;
 b=W2jixFuIjLBUbgNSeVPBzuv2e6WGlGgEZb3TsW27UyFiYb2akwcL6GaIm9N7wlLb2aERTBdWUgK3Z4g91mhPH/rDCoQ/v8enn7ocToOTaV9MkERU5xGmc/M1Kryk1fH9ls1OBXIjAJrZfI0aHGxXH1+TaUIqyy0+evmPiTs+VhAUTNoQCBPGf5G1DaH9HTHMnN3z9N+Av/qouWJ6Gv3aCzOu/6B7UFrGQxEb+bQXh1MMVO3+EHzUx3KAbsTEOQiparUpmXN3/ExxaWQaUKUJe80ZKQZnphRzETC6yP8vtl5k4cARvmjffOt6hLImfxFRsiKT3iIU9e+xYj1lAubFvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS4PPF3FCD980E2.namprd11.prod.outlook.com (2603:10b6:f:fc02::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.19; Thu, 30 Oct
 2025 13:15:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Thu, 30 Oct 2025
 13:15:45 +0000
Message-ID: <9a1dcb42-3baf-4e76-865d-1ca07bb6427c@intel.com>
Date: Thu, 30 Oct 2025 18:45:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] drm/i915/alpm: Allow LOBF only if window1 > alpm
 check_entry lines
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>
References: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
 <20251030051755.3071648-6-ankit.k.nautiyal@intel.com>
 <aQM_VK0wTlEiub9O@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aQM_VK0wTlEiub9O@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0054.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS4PPF3FCD980E2:EE_
X-MS-Office365-Filtering-Correlation-Id: e4ea1760-fa6f-4658-6cfd-08de17b66f23
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VzN6ZS9TbnphT1FiazY2Skd1UWdwN3ZhVnh3Y1dzejVSdVV4dVIvbW1tb1pv?=
 =?utf-8?B?U2NURjM0emNzdU9oYzI4SXZZSThqQllSU3BEV0kyNWpWL0NxTWU2N3ZtUlJl?=
 =?utf-8?B?TG5nNURtR2NSOGFPSHVmRUFmUWtsd1dlRjhPRUluYkNYNWdpeW1OclM5RDMx?=
 =?utf-8?B?SFJEays1eTVybzdla09WMENxaHBIQmg1R1NUNDJha3dqRlZTUzdxeU9EQ1hX?=
 =?utf-8?B?Mm4xR3VWMmozK0drUHhqVXZ5K0hhdE5PRlFDSVkyZm9oMElhbTFwdWJ5TnVR?=
 =?utf-8?B?b1huWk8xMGxpQWMvRDVTb2RxWkIwL3VjY3ZyTmR6d2NRRzdBOG93N1R0Tkk3?=
 =?utf-8?B?d3FQZU53emJXYzJtMTliUGJhQVBuMkl5dFZUdFdwQzlQNGpUYW1zeW0yR2Nz?=
 =?utf-8?B?YS9oajB0WE1PVXVBdmN2TEM2ZTNXV1RreTBhZDl0aEtvdU9pTE01K0QzU203?=
 =?utf-8?B?QTZuZlhFUnVya2pWa0NCMzM1aEVoZHluZW5oSTArQ1RkVkNYNGNJY3pLWHo5?=
 =?utf-8?B?bmF1SVl1dCtOQXdRb1hLYXZyK3p3dFlhY0ZXVGNmM3hwTUZwRjd4UnIwM1Fl?=
 =?utf-8?B?ekFORWF3dTltY1JyYmR1ZWdNUklWdEljRG1oc0tQakNpMmRXRFFVbTNxTDNo?=
 =?utf-8?B?NHhHeUpicG8weE1qUDdzWkV4Z0p1bmlTQUNzNjdhWGh5S2hrV3hrY3g5ZjJM?=
 =?utf-8?B?TFVQVFREczZtN0pvVFVvWFU1Skl0emtuR0NjMjRmOFRUZ2ZsQUpLdjd1Yngz?=
 =?utf-8?B?UEl1b1E0d2FXM2ZQL1pRRndUdkZHTXlZYjVQVmJYZlVqRUJyNnlucmlUZDl3?=
 =?utf-8?B?UnBGTGlMVENaVXlhcnpMWHptMXBNdDZXVis0ZFpYRWFiYi9GRGdBUkxoeU1p?=
 =?utf-8?B?QUxrK2psU0loalF6WnZGaFQ3ZXFGMTY2dlY3WTR2dkpFOWVUdzBMTnZBV0Z3?=
 =?utf-8?B?bk9rRTR6RTRsK3N1ZndpQzFqMnIvYVRlVU9CYS9YM1VvNUgxM21malM1QnR5?=
 =?utf-8?B?M1J1Q0RKY3pPdGZ6UmtkcUtBMyt2SFZpU05nQmc3RXcwcmIvV1N2eUI3ZTJ4?=
 =?utf-8?B?eFVhaHMwTGIzV0JTUnArTkRoT01CamJKajdhT2JvMy9wSHpvamhqV2gvZWhr?=
 =?utf-8?B?Skh3b3VxT0RtZ1ZYdzVBMVVpNmpaa2xHUW5hcnNEMXNoUkFteWFpUUdKNUxl?=
 =?utf-8?B?cjU2c0hpM0hJWDYxd05SYzJNN0ZJNDlZSy9selU4YlMxQXdZQ2lBUzNMRkVm?=
 =?utf-8?B?M2dKSlI5cStEdlp2WjdNQjEycEFzU2l4TDVCSmVqUDNiRjQrRnhWVDI0dy8w?=
 =?utf-8?B?MU9SZ2dLd3laaWYzaEVSSE83LzNvK3ZyY3psR0RyOHp4L3l5R2VPODRzWldx?=
 =?utf-8?B?VzNWSlVIeWdxeHVBTzBGZFdGdWVGbWxlQk8zNm9aSkc2TzloWEoyTkViMEt3?=
 =?utf-8?B?ME16U2EyM0lhUXQ3ZTJOMW11endLVjI5RDZHb2hlNUJ3OEMvOFlmT3R3U2I4?=
 =?utf-8?B?OC9OMEFhUUFCRm1BQ1JzNFd5UzhlRzd0VytnUjVxbTltbjRsRDJINktLQXI0?=
 =?utf-8?B?K3pCcXg3d0twOXhsb05lbEo2U3YvYTlLVU5abk5JRzlFNHdwbytlbCs1RDVk?=
 =?utf-8?B?TkpBT0ZweUZGeXBsRTY5S3dwdytIaWpKVzVoSVNDY1VOaUR3MzdkN0d6dnJ1?=
 =?utf-8?B?a2xtekgrT05rQUJkZVo5dnNGSmlEOG9keUR3SlZodlZOczNPaW1vQk5Ob1JI?=
 =?utf-8?B?OXhwdm5kK1BadG9xQTZKVzM0TmFqaGYyN0dFblkvVm9EeGdIVkhIMjVwTzF1?=
 =?utf-8?B?L0lmaENLQ0dwR3ZtZER1VUhiY1U3L2ZiK3hTVFBuQ1g1bnhiOHZ1YVJqVXBK?=
 =?utf-8?B?M2pxZlpWWnBGQnJFL2ZNL3o5M0Y4dkF4VU5DTTZEbHNmK09FdHNLVlg4Yjdt?=
 =?utf-8?Q?6zrceFhTholBjTvpPDYTA6OYoYai8lTW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R3BxK0xQazczNUJwZlphdFZPV3FtSTJyOU03SU5JSXEyaERjTmZiS29VT1Y2?=
 =?utf-8?B?aEJNZE4yMFRPQ256NFZBUE43VytWS0xhZ0F3aXRJQi9EN3FsWmZDSUV5MjBp?=
 =?utf-8?B?VzkrNmV4TlRENDgzdXdvVXZrdWRVTVNjUjhlSVp2dEh2TlhKSmRqWEIxVEEz?=
 =?utf-8?B?bUlXSGlHVm0rbmNQeXEwZVRJVFBzNWZkTHhpL1Z2MDdtdk0veFMwa0xzcTh2?=
 =?utf-8?B?eE5UMFc3dFd5MkRzd09ueW1YRzk5aFVMc1lPY1hFdDhSRURYQ1c3ZVZRSXNT?=
 =?utf-8?B?ZHZPSHY4ekcwUjI4d2xMVEsvY2V4eXg4RzRMMmx6WjQ1V21hMkovdnBIenJY?=
 =?utf-8?B?dDIxV3BBU2IycmVlRXBxczNuL3VoK1JCTGlENm5TRUJHblE4a2ZTdUVsRkZj?=
 =?utf-8?B?RTIyVENaSEk2d3V2ZGNiM3RMZE9hZkhFUWN1TDhqaXJDUTJkL1lCbXlmbFpS?=
 =?utf-8?B?ZDk1eXphSEF4Tkh4TUxwamF2VlBwU2dSeTlucVhwVnFvZmtPLzU3MU9tTzJz?=
 =?utf-8?B?dzhSdjJPa3VpRmRlU2RWRGlZUzYwOHhNTWdoWUR5a3hoOW9TdjZsOTFhR0F3?=
 =?utf-8?B?VUtVRkViNDVtaHdYdDhvdndNVjJwamhJai8veUdPaWQ2WXFhV3hLWkc3dFVP?=
 =?utf-8?B?T1BtcjZnK3lKalZsT2xKM0pROU8wWTNZYkxVTlV4WmJTYVNCNjhTTkVXdTlv?=
 =?utf-8?B?aGhab08xOFJhd1Jmc3JVRUtWRTRGRkdrUVEwaFVXQlJVbTR2eUVIL1lLbHNl?=
 =?utf-8?B?ZkJhVzJ0eHh4b2pQTTIrcFIxZHlXa2VwUTNzSVN4dUZsTG84d3c1ZGxoMFZN?=
 =?utf-8?B?U05oaUd4V2hkYkpobnQ4dDJzcjRGK1p3TFF6TmM2TCs2ZlpETThoZHJIMjdW?=
 =?utf-8?B?cllMZ0RLKzZUcXgxcStxRGpwVHZmajVpNDBMeXJaNGY4NjMzL0xZczlTQlBZ?=
 =?utf-8?B?T2FZd3puYjhDbEhTUklVV2pGekJiUlpXRUMvNzdRaGkyeWpzVGR2WHhmdDB5?=
 =?utf-8?B?ZExGcEZDT3NtQVlQTEc1d1FqWVVEV1IwTzJ0dzhrSk9ZbVdQRU82Yk04MG5v?=
 =?utf-8?B?YkVlZjk1dE1GTVNvcWZFd01EZ2lXMytlRXh2ZGhQVitlSUJhblBXVno5bDdB?=
 =?utf-8?B?WGt4SnVjbE5VenQ3T1lXbjVDT05QN0R3MlNYejNWdGp1TnJOQWc4UzdYNXBq?=
 =?utf-8?B?VTZaNnl6QmVxMU42Y3NmWnFiQTJNMDhBRXljUko5TDJXTTBxdFRwWXczM29U?=
 =?utf-8?B?OGRkSkZLNFlNQ0N2T2M1L1Rxejk1ZnpnUGFSMTl5VWM0VXRxekN5eVBRYjgr?=
 =?utf-8?B?bW4vd1N1ZjNtTklPMG0yaUphcnlKWFY3SFh1RVZpTkEzcllBZkdyYlZybGJv?=
 =?utf-8?B?Q2drVXEyYWRFRDBVVkFDZlVNa2tFeE5QcjEvemd2KzR4OWFGRUpoa2U4OCth?=
 =?utf-8?B?eUNaTjFhT2I3aVBET2FhWGtsY1M4TGlYTWMzRDZQQzBVU0swK05pRWNBOUZh?=
 =?utf-8?B?ak45TElNQlU1Nnd2Ty9YeldOOFJ2aVpCV2xGRFlvQkpSZXVZU3FNZjg5T2FF?=
 =?utf-8?B?eTBxMlBLNzM5V2l0QldyRHJoTXRxSG9ydlUxR24vYWphMnQwWWxpV2luM3Bt?=
 =?utf-8?B?VXNKbFNiQWxocFFqcDFZempaTzZsUkMra3dEUWdLTnZsQzBuRnpLSTZBUlNC?=
 =?utf-8?B?V0x1aEtONGpqWks2b1Q0bHdWVW8wYmIwQ2pmYXpjbHRWR0xYL2s2TmZwS0gy?=
 =?utf-8?B?dnd2b2Y2MFI4UW9UOFlpQlJKMEErMEt6ejRBbk50VWI3eTlqeGxtNzk3TGJ2?=
 =?utf-8?B?S3FRUTVia2x2bURxc0dtT1Uwb3pHUk4xVWR1V1F5TXFGbS80VUZ2WmREMVV2?=
 =?utf-8?B?SkpDYmFQSittVFZFbEY5WGxwS2U3UTJmNE1DSW1yWS9SeVZ1TG5lMHZDVExB?=
 =?utf-8?B?dCtzSVgrOGVQb2tUZnFKNi9NMEthUFVYd09FUG0vNWtYaUg1UnhSOGUzM1hH?=
 =?utf-8?B?VzkyQkxBelN0aGFuMVV5bTUyZlExN2ZGRzNVSGl5SWRKeTgrYzdUQ1V2ZjV4?=
 =?utf-8?B?WTYzanlmbk5LL282RlFhSFFIOHRXWWkxWEg5d3hZL2w5MHg0WFBkZEFqZUhj?=
 =?utf-8?B?NjJlZ0FkU0llbFp6M0p1NjhKdGg5OS8rM3hkaHVFSGdGbjFUZmxzUmYxV0N5?=
 =?utf-8?B?aGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e4ea1760-fa6f-4658-6cfd-08de17b66f23
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2025 13:15:45.3357 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uB7zZUJ9algpub8vsxwD2EzPGC+4AjUlqVx/IZnvbM/LuloBcOwdPqJaeI6HqDDeM2Tex/Z42kEDwbIg7tvQLIqPKp1vNDWMm0JZfGdEq6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF3FCD980E2
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


On 10/30/2025 4:05 PM, Ville Syrjälä wrote:
> On Thu, Oct 30, 2025 at 10:47:55AM +0530, Ankit Nautiyal wrote:
>> LOBF must be disabled if the number of lines within Window 1 is not greater
>> than ALPM_CTL[ALPM Entry Check]
>>
>> Bspec:71041
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_alpm.c | 13 +++++++++++++
>>   1 file changed, 13 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
>> index 1c240dd8d668..58cd0d2a4395 100644
>> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
>> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
>> @@ -255,6 +255,7 @@ void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
>>   	struct intel_display *display = to_intel_display(intel_dp);
>>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>   	int waketime_in_lines, first_sdp_position;
>> +	int window1;
>>   
>>   	if (intel_dp->alpm.lobf_disable_debug) {
>>   		drm_dbg_kms(display->drm, "LOBF is disabled by debug flag\n");
>> @@ -287,6 +288,18 @@ void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
>>   	if (!intel_alpm_compute_params(intel_dp, crtc_state))
>>   		return;
>>   
>> +	/*
>> +	 * LOBF must be disabled if the number of lines within Window 1 is not
>> +	 * greater than ALPM_CTL[ALPM Entry Check]
>> +	 */
>> +	window1 = adjusted_mode->crtc_vtotal -
>> +		  (adjusted_mode->crtc_vdisplay +
>> +		   crtc_state->vrr.guardband +
>> +		   crtc_state->set_context_latency);
> vdisplay+guardband+scl isn't a value that means anything.
> So the extra parentheses make this rather confusing.

Yes true, vdisplay+guardband+scl doesnt make any sense in itself. What I 
intended was:

vblank = (adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay);
window1 = vblank - (crtc_state->vrr.guardband + 
crtc_state->set_context_latency);

>
> This also doesn't account for the case where SCL would start already
> in vertical active on PTL+. I know we don't do that currently, but we
> should probably write this in a way that accounts for that so that we
> don't have to rewrite this yet again.

Fair point. Then something like:

vblank = (adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay);

scl_gb_region = min(vblank, crtc_state->vrr.guardband + 
crtc_state->set_context_latency)
window1 = vblank - scl_gb_region;

>
> Apparently this lobf stuff depends on actually having a window1,
> which means it can only be used if we're using the VRR timing generator
> with an optimized guardband. That means it never did anything (or it
> did things wrong) until you enabled the optimized guardband.

Yeah right. Without optimized guardband, window1 would be always 0 so no 
scope to use this.


>
> It sort of looks like intel_alpm_{pre,post}_plane_update() might
> allow us to enable this even for the 'vrr.enable==true &&
> always_use_vrr_tg()==false' case. Either that or we should just
> enable it for the always_use_vrr_tg()==true case. Whatever the
> case, we definitely seem to be missing some kind of a VRR check
> here.

I was just short of adding check for always_use_vrr_tg() && 
intel_vrr_is_fixed_rr()

Bspec says that lobf can be enabled only with fixed refresh rate and 
mentions flipline = vmin =vmax.

I was not sure if its implicit to enable this only with VRR TG and not 
with legacy timing generator.

Makes sense to replace the existing check with for flipline=vmin=vmax with:

intel_vrr_always_use_vrr_tg() && intel_vrr_is_fixed_rr()


>
> I'm also 90% sure that alpm pre/post plane stuff isn't handling
> DRRS/LRR/etc correctly...

Hmm... ｡oO( need to check how DRRS and LRR interact with ALPM pre/post 
plane handling... )


Regards,

Ankit

>
>> +
>> +	if (window1 <= crtc_state->alpm_state.check_entry_lines)
>> +		return;
>> +
>>   	/*
>>   	 * LOBF can only be enabled if the time from the start of the SCL+Guardband
>>   	 * window to the position of the first SDP is greater than the time it takes
>> -- 
>> 2.45.2
