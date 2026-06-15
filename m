Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id inhGAySoL2rMEAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 09:22:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4DA68428C
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 09:22:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=Fk3x2XvX;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BFDB10E227;
	Mon, 15 Jun 2026 07:22:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C11510E222;
 Mon, 15 Jun 2026 07:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781508128; x=1813044128;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=10oUor5QlrYoeOpTXI5pRhjl4l3cB70JKgBAz6Ba2aw=;
 b=Fk3x2XvXmaoJOV17trn9h+Zodw7qbU3Aq+y9Hiqp6TVAxaHTB/CFC774
 0GCyXgQDqqGPcIYFQiiWbgwe7PlKcx7VrGzQGXKMCQAHe+QLowVLQ5TVu
 wJml2LdA6hRMgWYZ+gnbmCHDm8pTw0yK30nv/BAP5tNPH/KCi/JtxbdS3
 Ul4KQuDSZPFi3PFaBsDhjWBKPranLlBX2HW8c1N8QADScgeUEmIMEcNy3
 E61EISliGBBLHeOz1lkzpY2NphScMTIqtvHr4+hijT9iGM8SiONfDStfJ
 FO2L2tC+B0QY64n/c7TiLbSRdkuSHVsQuX+Yxw3HSP6abzTIFKV+8vNU0 Q==;
X-CSE-ConnectionGUID: reBj59JRQzqtshCd4e4ELA==
X-CSE-MsgGUID: ngN/4zyuSmKtrsktBs6DCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="93629589"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="93629589"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 00:22:04 -0700
X-CSE-ConnectionGUID: KXkr8zyySuiY72K9YJUU6w==
X-CSE-MsgGUID: SbOLXUfgQV+J0Yhx2PYCbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="271084555"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 00:22:03 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 00:22:02 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 15 Jun 2026 00:22:02 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.68) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 15 Jun 2026 00:22:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CPhEeGjkY9/9058M8YENp6A4PqW3k/TpppjeX6YqGsV4Ej+SPS2viIzTQY84wP7P4cJHfEs6WsGriFKrbLKXAYs5/lEwxB7L/uwIDTE9EWdPSJiKSUGXzUuUSV8E2oFoFVgduXVvEQCTA7huwSSn/ehLSbREqMD46a8I3CyqrXObB72EDEZcN/y+ue1/S46s+JxVruODmAll4d7+DFD+hi13bvg4LMckgyu66LeYHTJJHS7iHbHltyZ3tz2XY5I8tEcQj1saTPGYy87rMANspYQc6YdEbRIj8e2yv1skeX6CoJRlXnkntzhMgO3df9dkxS4kad+81b5Pw5za15UG2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uH2evbPUsQev5luIdlz5p0bHPmXOP6K1wwJFsQ1VrV4=;
 b=eVMQP/Q9uJ9N1SmSMPFv2GeaTkctKx5x1VFsKcyGhGRxNJM1zrE2/RcXhNdHtZFaZN5109jEDoExAh9BhDylz89b9xRlTYZDqtKd+InRmdlicxb3TMDzNW5PH4QrMhmNRwCU4Va+vpAyPP0PC/l8dtRrowjCtCWJ2wfXNRD1fx1l3QGxYngMvxrcTeVABNtCi4Mr3DnDePOw97/5C6nW3LoP/W8OcOIyTGj8IhxuETw/HduauLvaYYN2SDRzMzdyKwKUGQITi9wPvsqPXNVpzUalafdYvWXxWGQR3dU8grIG9A4QBvAYojeV6bztpfCEVl0Ele+KLc2Hr6TpIlaGDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by MN2PR11MB4632.namprd11.prod.outlook.com (2603:10b6:208:24f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 07:21:51 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 07:21:51 +0000
Message-ID: <e3cdac2a-8411-4702-87e6-6d538846db78@intel.com>
Date: Mon, 15 Jun 2026 12:51:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 16/20] drm/i915/cmtg: Add CMTG HWGB programming
To: "Manna, Animesh" <animesh.manna@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula, 
 Jani" <jani.nikula@intel.com>
References: <20260603195416.91639-1-animesh.manna@intel.com>
 <20260603195416.91639-17-animesh.manna@intel.com>
 <DM4PR11MB6360349828BFA4BED2C260DAF41B2@DM4PR11MB6360.namprd11.prod.outlook.com>
 <DS0PR11MB8049CE68C0C4269CE0AF5201F9E62@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DS0PR11MB8049CE68C0C4269CE0AF5201F9E62@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0055.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b8::6) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|MN2PR11MB4632:EE_
X-MS-Office365-Filtering-Correlation-Id: c0870552-c9b7-44d7-69de-08decaaec4f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|6133799003|56012099006|11063799006|4143699003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: GLI4Dyr5IqKi7iO4pLlyejqgXbvQUKhyt2SZATmvbchgVjZoWETndzQ566Wftc94wXF7O+Y6i3KwW7CNYm0G/2pe3xiaYchGi1jinVYGE9OlE4YLlAqnFxl53ZqpHEWHLrnrHE/xdFX0hfIG1md+SSRft5TOsORv64dDqNoaIrNUcC4KtuJWE1Pdtkzix3EImM2EYA48lisZXzdhS85pQae2AztIGVXn1xvt0AgjA5kpwnk1i1NIMqYrBqkEfPX+lqKPp5jizN0Vxmwuux4dEON/mJHyp5B/B015rEqFGOU5wk5eAPKXCU7k6s3PzT+jkyW5HkuUP7YQUA02bliHS5PmOO7KnY6R5T/dqeH535aTfogKiPI+UmKWx0jIUIAhBBxqsGDOxOBhVXH1MNST2BFEq+4dfRlYh4lgOA1TRDkr1K8aMWCHV70NncG0l5AOa3Ygnt2z9DcOjSR58Mh6ZEgtXM/9cM0yyj5u3V2miJXoK7Iafbh0D45ESCiGSjp/hk+K60nN96akR9NB2rVPRXozjyONK5hm3APUINo6zV1QE6iZq7taifEkNRzsdjwMzY7EEKQi1AfJ2jecW7uPNnyQQsq2nYHQEOPN9I7pkVmpOA+z4Gm3L6AduYGOOPPlVH7ToWuXo3SnbhHMn0X3pRISYrV9ZiBukyBwDlotNEHYFMJdjuxvYaSZ1h4H0NDN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(6133799003)(56012099006)(11063799006)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUNTQ214cklxb2VWVlNtYVJ0dWdncXNCWU85a0VZSHNPRm1CNCtoU2FWOUQ2?=
 =?utf-8?B?QXVBcXlzdGgyT3RySkxSRWRqTDltUFZVNUM4bkVVSXF4RGJVMXBlYzdyZ3Fw?=
 =?utf-8?B?emQ1RmZrelFmZTNjd1llYlY3L2tsZkZsY2ZWL0ZBckhWZS9GckVhaDhSN05M?=
 =?utf-8?B?clFybGtuK1FkQUptTk9jQllySnVybllZR0U5a2didHJQNEFyaTU3L2V3OFor?=
 =?utf-8?B?cHRWc2lib3k3amZnS0ZzdXU2YkgySFQ1WGxKWkhFVVUzSmJOa1lOV3djV2JJ?=
 =?utf-8?B?YVR6SForcXlDeTNXTEZMTUtIZDJneGdMbXErbW5FZUpjbzBIQUxIUUxGSWNY?=
 =?utf-8?B?VURSV25FTkRBLzUvWGVkcGpnS050RjJibFVxOHo3ek0yUlpYell6ZjdSeEN6?=
 =?utf-8?B?T1RzYU5aeFkwRDdHV1BoMW0xcnhOTEZ1UzdVMDRvZ2ZLRVc3TU1OOTZ3bU94?=
 =?utf-8?B?bWZPL1NPVWYvUlR0U1YyWXV2L2ViT1phdDdjaUlZV0daSXVTN3Nja2FNdldo?=
 =?utf-8?B?dzBrNXIxNi8zZ1E2dWcyWVptZWw5M1lHdVorT3QrWHlEemhqZzYyMC9Kb0wv?=
 =?utf-8?B?YXRkNGxJVHVZSWZTVVMxTGZkUmtvSDFvT2FPYlFPc0dBbkRqY3BEQ3dUNklr?=
 =?utf-8?B?Y0VQbllJOURsbVRySVpNSDNNSEZmTlpWdHl0bTBaNG1GVGo4YythclZYVXpj?=
 =?utf-8?B?MzZKUEZHa1NuRHZMZTVlYXpwb3hQOHlzV29EQUZPaDNIcTZISy9nRktiSGJq?=
 =?utf-8?B?d1dQRGkzeVFXcWxsQ1RXNGFaaTlGRk1sYXo4a1dnVm9YVTBuUGRzM0ZJSlE4?=
 =?utf-8?B?d3hDQVpOMzFOZlF0bXMvUFBMclNZS3dyRG9UaktQaWRHM3h2NVlhcmtWcjla?=
 =?utf-8?B?ZjJsUXg2M3ZHMExvZ2FIOHUvQkZZV1NrMTRGb1hPb2U5SFZXcUs1VjhGVG5P?=
 =?utf-8?B?cFltUkhHaUVDSE8vN3RISGVUMzZaWE5UTG10cXV5K1UybDcrSWhLZzg2NnBu?=
 =?utf-8?B?RzZRaDNXWFF0aFFTUUpFb0pkQ0hEeldrbFFVRFE3YSsxQTY5bFR4Wld5UFZM?=
 =?utf-8?B?QnRHemNtYmowdHB2NW1XRkZlSjRVUk1GY2J5RGNkUDYxMG5zQWQ4UUxqNU94?=
 =?utf-8?B?ZnhWRy82VVBFZlUvT2o4dlRmT053bWVseFhiWnZhejdLcVdEWlJHdHBVT283?=
 =?utf-8?B?SEZrQUZmdWVlenRNOVlxdmkxa0tLN28rWG8zaUNHVUhhVTBTVng3SHNWc3k2?=
 =?utf-8?B?R1R4RmtjR1NKYzJNU1QxYlBQWnhNS284NlZZYU9EQlhUK0RUOVBSVHJEdFVm?=
 =?utf-8?B?VjJVSUJTMTNSampQMGhtM1QrNVgwL3dDeXBLN0R5NXhxOERwdldMU1pPa05G?=
 =?utf-8?B?RU5XanhLVFNtdFBQcWJmNElxZTVjZHBvTzRGRnpEZ1gvbCtFWnYvMWg4aGNj?=
 =?utf-8?B?Z0JrQnlNVlFOL2JSbEwrZjJnNjFKUzAvZFEyZTBiN0wvMHg5R2w2S2VnazBh?=
 =?utf-8?B?djJvbWVLMngzSTRaM09ZaWZJM3ZLYmJSaTUzNHNDNUk3bFJRQXU3cXEvSHdl?=
 =?utf-8?B?VnlnVldObkREQkdpT2VDWGFTZkFFNm9aNjF0ZDFWM1Yxb2F2cVdFOGVweDhx?=
 =?utf-8?B?OFp2YSt2blJGakVyTTg2V3ZKaHp5OU9USWJmQ3NxOUVxYno1b3FYM1ErME1D?=
 =?utf-8?B?dkk0aW5wQ1NnaHpNNDEvOWFKQzVBK2xjT2xPU2MvMHNrQThNWUJxUzY1WkUx?=
 =?utf-8?B?dVVtWHl0YS84NDFPUnNDcjFGYVJsSEFoMGlTWGd3b3M0c0lrV0RJcHFvNEcy?=
 =?utf-8?B?cGNmMHJGSFVnVDJwYlgyU1pzNE1rZFJLcHNuc2tGbWt0VVpjTkQ0SllOOU5T?=
 =?utf-8?B?dENqT2pmZUJRZXhUdERPQkZoNkVUd2FDeEJpbHVyemg5TzU5Q1p4ZVpiUVlU?=
 =?utf-8?B?MjVGdG5HNU1LZGVWdHpSaEZ1R0xvRGd2aFk1UTg2UEJEMGhtS1V5RWhIUEFJ?=
 =?utf-8?B?SUsrYmEwRXpMaUhYRXRYeW9KSHNSakJCWnV3Qjc1VkRObFFRRkRLMEw2N3p2?=
 =?utf-8?B?UVpYNHB3T1EvcEZHQXpsTng5S2pSbHVXK2s1RStMbXVCNUk4ckRvTngzbkVK?=
 =?utf-8?B?b0Y3NWw4VnpzMUVQd2Rub3pwVE4zSmZkSnNianE5TmNNcWwvUzZ2dTBRd0lv?=
 =?utf-8?B?b1ZRVHF5Q1hvWWVrMVB2aklGUURHZlB3M2tWckhrNFdhSWUyNkw0SVE0LzVT?=
 =?utf-8?B?bHI3NGdxSGVXbGlxSHVvSG1YclBkRk5JYlRzMk13Q2QvMzd2cFVTcWd2Vlo5?=
 =?utf-8?B?R1NKcU1rcW43K1k0bUFZVWdVRTVGMVJvcFh6YTdLd1FvMlVxWjZPelEwSXI4?=
 =?utf-8?Q?sgnCN+w51UoxGG6GdUk6Q4RQXztsioVR8hwQa?=
X-Exchange-RoutingPolicyChecked: Ta2gO8ju1vcfxL8kb8v9Yqw56ofMKaZkim7ZEygrfi2zGz61SfC2DPo4laqzZlYJafNbhc41pLgxsGZwCmuj+hHNddK9XtarXMEgnM4c+8eSInj993Gf9GnNKq64B+HVV1ExZGFKjjoQIC0IDqj8ZddE1CqHiUTs7C5JB+opZKom9Rubfkv2b6Rdyq21ZDcX/lOn2VAfbq/qQTNtjYxaU9KEbAxUYHAL/kUWZif0yjif1zUxm34Gk3nfzKkzW6GJ1xIjsrWcs1Jq9v3iUne9fnWpz/8kSnUhDdRhNfby+YGnYzv+8tGJoXINyKBj3HFRz4Ovo4yKlqURJzIHP8DMgg==
X-MS-Exchange-CrossTenant-Network-Message-Id: c0870552-c9b7-44d7-69de-08decaaec4f3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2026 07:21:51.4157 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0tTWcGiFW8lPGshrLsRT3ZJKUiDHktA92LTdZ08BBeNAkCvO3yiygerUuU00m2Zh+JtdhwPqWVfbQf5M3Pf4s2+escVaasfmeXWoZlvoQoO+czEp63F7AnkHfJNBa7J8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4632
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D4DA68428C

On 6/15/2026 11:14 AM, Manna, Animesh wrote:
>
>> -----Original Message-----
>> From: Shankar, Uma <uma.shankar@intel.com>
>> Sent: Thursday, June 11, 2026 11:48 PM
>> To: Manna, Animesh <animesh.manna@intel.com>; intel-
>> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>; ville.syrjala@linux.intel.com;
>> Nikula, Jani <jani.nikula@intel.com>
>> Subject: RE: [PATCH v8 16/20] drm/i915/cmtg: Add CMTG HWGB
>> programming
>>
>>
>>
>>> -----Original Message-----
>>> From: Manna, Animesh <animesh.manna@intel.com>
>>> Sent: Thursday, June 4, 2026 1:24 AM
>>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>>> Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
>>> Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>;
>>> ville.syrjala@linux.intel.com; Nikula, Jani <jani.nikula@intel.com>;
>>> Manna, Animesh <animesh.manna@intel.com>
>>> Subject: [PATCH v8 16/20] drm/i915/cmtg: Add CMTG HWGB programming
>>>
>>> From: Dibin Moolakadan Subrahmanian
>>> <dibin.moolakadan.subrahmanian@intel.com>
>>>
>>> Program CMTG guardband to generate the Lower/Upper and early entry
>>> guardband indicators to the DMC for DC3co control.
>>>
>>> Bspec: 75253
>>> Signed-off-by: Dibin Moolakadan Subrahmanian
>>> <dibin.moolakadan.subrahmanian@intel.com>
>>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_cmtg.c     | 31 +++++++++++++++++++
>>>   drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
>>>   .../gpu/drm/i915/display/intel_cmtg_regs.h    |  8 +++++
>>>   3 files changed, 40 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
>>> b/drivers/gpu/drm/i915/display/intel_cmtg.c
>>> index fb57fa41f721..cc36784e5253 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
>>> @@ -400,3 +400,34 @@ void intel_cmtg_disable_interrupt(const struct
>>> intel_crtc_state *crtc_state)
>>>   	intel_cmtg_mask_interrupt(crtc_state, true);
>>>   	spin_unlock_irq(&display->irq.lock);
>>>   }
>>> +
>>> +#define DC3CO_ENTRY_LATENCY	55
>>> +#define DC3CO_EXIT_LATENCY	40
>> Add the bspec reference for this. Also indicate what unit this latency is in.
> Yes, done in next version.
>
>>> +void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state) {
>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> +	u32 breakeven_gb;
>>> +	u32 dc5_exit_latency;
>>> +	u32 line_time_us = 75;
>>  From where this 75 come from, add a comment.
> I feel this the maximum value and later overwritten based on crtc_state->linetime.
> @Dibin Moolakadan Subrahmanian, could you please confirm.
>
> Regards,
> Animesh

Yes, the value gets overwritten whenever crtc_state->linetime is non-zero.
The 75 is just a fallback initialization value to avoid a
potential divide-by-zero in the calculations if crtc_state->linetime ever ends up being zero.

>>> +	u32 val;
>>> +
>>> +	if (!intel_cmtg_is_allowed(crtc_state))
>>> +		return;
>>> +
>>> +	if (crtc_state->linetime)
>>> +		line_time_us = DIV_ROUND_UP(crtc_state->linetime, 8);
>>> +
>>> +	/* Break Even Guardband - DC3co Entry Latency / linetime */
>>> +	breakeven_gb = DIV_ROUND_UP(DC3CO_ENTRY_LATENCY,
>>> line_time_us);
>>> +
>>> +	/* DC5 Exit Latency - DC3co Exit Latency / linetime */
>>> +	dc5_exit_latency = DIV_ROUND_UP(DC3CO_EXIT_LATENCY,
>>> line_time_us);
>>> +
>>> +	val = REG_FIELD_PREP(CMTG_HW_GB_BREAKEVEN_MASK,
>>> breakeven_gb) |
>>> +	      REG_FIELD_PREP(CMTG_HW_GB_DC5_EXIT_LATENCY_MASK,
>>> dc5_exit_latency) |
>>> +	      REG_FIELD_PREP(CMTG_HW_GB_UP_LW_BG_DIFF_MASK, 1);
>>> +
>>> +	intel_de_write(display, CMTG_HW_GB(cpu_transcoder), val);
>> Should it be cpu_transcoder or cmtg_transcoder ?
>>
>>
>> With above fixed, this is
>> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>>
>> }
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
>>> b/drivers/gpu/drm/i915/display/intel_cmtg.h
>>> index 8fcb44d6398f..2c801a74acf9 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
>>> @@ -23,5 +23,6 @@ void intel_cmtg_sanitize(struct intel_display
>>> *display);  bool intel_cmtg_is_allowed(const struct intel_crtc_state
>>> *crtc_state);  void intel_cmtg_enable_interrupt(const struct
>>> intel_crtc_state *crtc_state);  void
>>> intel_cmtg_disable_interrupt(const struct intel_crtc_state
>>> *crtc_state);
>>> +void intel_cmtg_set_hwgb(const struct intel_crtc_state *crtc_state);
>>>
>>>   #endif /* __INTEL_CMTG_H__ */
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>> index 240a02cd4a3a..a4a2a2fe6b66 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>> @@ -24,4 +24,12 @@
>>>   #define  CMTG_SYNC_TO_PORT		REG_BIT(29)
>>>   #define  CMTG_STATE			REG_BIT(23)
>>>
>>> +#define _CMTG_HW_GB_A				0x6fa8c
>>> +#define _CMTG_HW_GB_B				0x6fb8c
>>> +#define CMTG_HW_GB(trans)
>> 	_MMIO_TRANS((trans), \
>>> +							    _CMTG_HW_GB_A,
>>> _CMTG_HW_GB_B)
>>> +#define CMTG_HW_GB_BREAKEVEN_MASK		REG_GENMASK(11, 0)
>>> +#define CMTG_HW_GB_DC5_EXIT_LATENCY_MASK	REG_GENMASK(27,
>> 16)
>>> +#define CMTG_HW_GB_UP_LW_BG_DIFF_MASK
>>> 	REG_GENMASK(31, 28)
>>> +
>>>   #endif /* __INTEL_CMTG_REGS_H__ */
>>> --
>>> 2.29.0


