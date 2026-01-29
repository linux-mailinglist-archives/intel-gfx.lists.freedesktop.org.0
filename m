Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6JYxEwvhemnN/AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 05:24:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFFEABAB5
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 05:24:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 289B710E14C;
	Thu, 29 Jan 2026 04:24:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mrjIf4BX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49F6610E14C;
 Thu, 29 Jan 2026 04:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769660680; x=1801196680;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3mWGg7+L1jFVutbdBy5MbiC/V7bivmmz6NW7dPxmo5w=;
 b=mrjIf4BXLX5aHLbzIa4UWGn2bUx055y23IeSHXTjZkHD2EYGEIQOYMKE
 xhSX9aqgMQZIiGx+LbnKQI02ngr+avzxcmrhjIvcicSEe56dQ9/8zF2ds
 qqystuzjFr8yaBEGDjitEXzJcdG5nAGRUC6PfNqkbqDpMfQ83u9KH1tfi
 wOs+q2P3LbwdfbUmq7IputVxCXvyJ6HhPPgOOIBzobEfz/LUBwJlQgtsQ
 d46TMl96Ms8fp+FVkYFmO/NnxMQiwJfOs+BMFykNnDGPXeH4vGFe09cLn
 kIB49abiDboDCK5u+iHbW5RL715kH8pwNnLTDZwBfHL9+C6l6Z4OI4FO1 A==;
X-CSE-ConnectionGUID: Rp3uwDXPSpmtwtwt4szGLg==
X-CSE-MsgGUID: +foGwBh1TluqZPsQEQKQ8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="58467911"
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="58467911"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 20:24:39 -0800
X-CSE-ConnectionGUID: vbohrz69QJqpu5GGQSQZ9w==
X-CSE-MsgGUID: mFv3N3t6QyCkYErUKvPQgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,260,1763452800"; d="scan'208";a="208239730"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 20:24:40 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 20:24:38 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 20:24:38 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.6) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 20:24:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vGzQw7oP7kq6ZWs4/c7xli1wZiGY8s2opj7XT1tOgxl9XaTTPLEHsyV/hXfLlUzzK8ixKcd3OMQg0mCNMkeNhzFSTHXKW58tc9ApZcaKeU6qITuWd0zy1SDLiDh8XQsLyzxyOPCbOD6+jFKc0rYE57QTfyQkhLR0c7v4QcbYrud2/WqS83l/lKyln3Xl8uBaruV23y4ULAIK+Y0ohJBVJWGG49tJ3CQLV+UakGN4SjIbiOgzgL1ViAoW6Rn0Hp9ym7UxVTYTFShSuizmstRAqpbflriNqezXZWPKw2hBYp7hJKYX3CAtIoPe+Rj1+e0/VIT5Fu7US1GaLh9BLRVoTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/6/Dd0/ZdizHUmabKOYhjvSfKgpn7PeO+2XEd8S9xx0=;
 b=mLeltRx8+1HDuxSgBscdPs7K+9swF7BVsfozIsJdT3LZFS9aO3+0fvRfHzAE0ZSSPElrekrH/WZCyZyxIAlhYsqLKEcqolyJdfr19tMUyhITexNFzLmsfV3TIaq4fC8pQT81A2PROgMkSNy2+4lxY2LtnCnYvBzvvoCgkKcHRzo3UCHDR34OwRdr1+GZ2lnwV7RWrluXZsKvCaWnGgLfYerfIVzJMtw2BlKc3/GQqzKBT4H1uffTej6HPcFvo7ffinMnxvEUfEXVdvhZ0u/pXbzyT2lwrsMcM//YPO+9jwwdyzAFXjxC8lh60PhgmnfQLNavdtiCBg44GOwLe1jhyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Thu, 29 Jan
 2026 04:24:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Thu, 29 Jan 2026
 04:24:36 +0000
Message-ID: <67c23c23-b132-41ba-ad45-5537f057bae1@intel.com>
Date: Thu, 29 Jan 2026 09:54:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/i915/gvt: drop dependency on display struct dpll
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <cover.1769612208.git.jani.nikula@intel.com>
 <ff7478efa80323c638a31c578cb1d707692ef51d.1769612208.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ff7478efa80323c638a31c578cb1d707692ef51d.1769612208.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0048.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB8282:EE_
X-MS-Office365-Filtering-Correlation-Id: ebaff4d8-7619-4789-6567-08de5eee4f4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WmZsTERxRGZMV0tyN0J4bWMrWlh3SmVLOEk0bEY2MmRSZXhGT2oxTkpsMlVM?=
 =?utf-8?B?RHNvSUE3dTNVakJsVE9SNDFYS0xGRjNvZzdpMzdtTU1xMTk3VUErcVZrRUhW?=
 =?utf-8?B?UkxCN0NLYnMyME9XczlMVC9tb2xqeEUvc2dVUUJRR3AwTEdoMGtkcGJGWWZT?=
 =?utf-8?B?eHRIV0ZPRVg0bzk4U1lYNmp1bFFiMXZwZTRnWUxpdklXUm5NRFpzY0hnQzlE?=
 =?utf-8?B?UEFncHZRT3ByNW1wWDZDREcyejhQYkFsTXBEWlREZjVhK3NLY0tDZ1VHOTJ3?=
 =?utf-8?B?WGtEcFZZMytodWVURDVTYWZFem1QUnh4c2xWaWgvREtxanFvNzd0aU5rWEc4?=
 =?utf-8?B?Tk5OUzlBeWp0cHJ2UVVlOHdPa0lKV2orRWJzc0tSb0NOcVZBb0tQQTR0TGdi?=
 =?utf-8?B?YnVsa2xDRnlnYS92YTVucDZndnhOelNYVXJSbHU4TlpsK0pleDZzc0t5eG1z?=
 =?utf-8?B?TGxFa29neWRZeFVnSDRQRU9hanFjMFBDcHVOa04zODZFWHVscGpGVitWaS9u?=
 =?utf-8?B?RWlpTWRjaE80elNJYmdmTlhlc2ZhdFpLMmVXY0FXVFJjRVphWFZodUtSSnZE?=
 =?utf-8?B?N1E3M0JtRHdNOVNpZDJLTVdBNWxGODN3SHpWNmZ5VXc0Nis1UjFkMFhKNk5k?=
 =?utf-8?B?bzF4MFpKcTNUemJTLzFINmtzRTJLekMxVjF3RlFIK21MblpyNVBuTytaTjlY?=
 =?utf-8?B?Qi9KT3JIWHpKbmpsekRhaks0eHFPdU9ObHVhTnRkZXprMVhSc1NnYVlEMnE1?=
 =?utf-8?B?YkxJV294VlhuT3JvZnh5Y1dwQ3h4YTVYTUhGT0daVCtnMm1aelNIWlpFMFZl?=
 =?utf-8?B?QXBuR2xaZFJkTzJDYzZsU0dUNnMvamRkVlRPNVhwekV4WkdjbjlMbjZlWlBR?=
 =?utf-8?B?a0xNeG0wSU1iTHYzRmNSd0VpajdrTHB2Yk90RG96bXJXZ3BLSEY3b0RBcTlT?=
 =?utf-8?B?VjZnN0hYOCtwallCT0U1ZFJYM3MzWkVYcklQN2FEa3dUNERWR3A2WERQTit1?=
 =?utf-8?B?RTUvTXJlRVF1SmsxUW5TdGZiZVh0VDA1YTZwUGY5Rzl2V1VsWDlvOHAxUkxp?=
 =?utf-8?B?MWMydFh0L2hqMlFjYjlOd3BLWUN2THpBZHY5ZzFVdy9BTzltRnN4WGwzNGVi?=
 =?utf-8?B?RlgxcXlRVEM1NGRkcmtKbCtMTisyTS91eWVqbWs2ZU1LL2V3dk9teHczbWZh?=
 =?utf-8?B?cE1SQmVySlEyUG56WUlzQUlFZENNSW03emdFODFub1g3RERDbUloYXVzOGsv?=
 =?utf-8?B?ekkwT09KazQ0ZHMrUW5xb29LQ1VGaVBFZHowRUc2aDcwSlZwTkR2N2p3RXll?=
 =?utf-8?B?b1cxOW1EM2xyZ1FKTWJpOTZGRTdIdWVXTG13RFB1eitrSW5CVkxHdTdrYnhl?=
 =?utf-8?B?UFFSNnhCeVNiK2dYM1VqUGNxKzdIN1pwRkJXN2ZvSERsWHNKb0lvY0VOWnla?=
 =?utf-8?B?b0pZcVhzUTFjLzhFUTUzM0FiaDliQjd3Uk9HT3hudHJDZ0lJTFJGWTIwMkFy?=
 =?utf-8?B?V2xIbVRqeDdkNS9kU1NjZ0NQQXJlMnJib1hlcUcwclo5SkpoM2Vrb2ZmaHFn?=
 =?utf-8?B?S01EQVVUUE9lTmkvMmdycDJzenUrcWNwS0xLS0FBKyt6UXpscHJPRm52VmYy?=
 =?utf-8?B?RENMOXVGd0Y0dENRNlpaTGZGVXVoSlUzMTJyeEhuR0VySHFLWDdldGE3ZExi?=
 =?utf-8?B?S0VISGlQTWhDenFRdnFjTlAyM1ZSVkpoRFRXVGpUZHFPbWs5NFVHOE5nQmpU?=
 =?utf-8?B?a3F2RXRqN2EvSjFxN3pDZDR4L01ydWFyNmhqRlVjVGZkbEFJRTR5d0Zoekk1?=
 =?utf-8?B?Wm04VlVyLzRSTTgrUVQrRm91OEJIVE5PYzZ3NCthMlROYTVXTWQ5TVRGT0Vr?=
 =?utf-8?B?ZUdnYUt1M3JPVEZKcXdKYnRHUjdVMm9oeU55blJOMUhlYSsybTBhQkNGSFlY?=
 =?utf-8?B?aC8xZDlVMW11bm44VWJIaFJXOGJJWmZ5ai93SDhJa0hjMERtcXRPY1huV0tM?=
 =?utf-8?B?WGNHRjdKVUw1SEdna0MyUGpQZzkyV3AxWUc1UklkL0h6b1kxdGdZK2VRanp1?=
 =?utf-8?B?S3AwODljaVJsZmowT2pXZzRDbFF0VE5XWWxmNWM0enBuV09WRldlUmozV09P?=
 =?utf-8?Q?UfEg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHNMcVlkQTF0THl2MzBVbm5ZeUFpSTZ5UGx6MjRRZllIM2NpS2VJd01HbHhW?=
 =?utf-8?B?RTFpalZZVzlzV08ySisrWVArSmp3Y0U4Wm9UY0lXa3ltQmJaMGFzSElvbUlT?=
 =?utf-8?B?SmpUM3dSbUZ0bDhybnBFTWl4UXM3YTV6VXYyd1UrWU9WUVVnV2ZoNnpPNjZ1?=
 =?utf-8?B?bDdseUFDdVRmRHV6QW92U0hScFdZdUpqQ3YzU0RtT3pEM1JnUFFySkVHc2Fk?=
 =?utf-8?B?dFA1di9pRnhZZjhFcUZHSEZDeEFSbnpETVl1VTJQNm5Ha3dWTVFLcktJcDIr?=
 =?utf-8?B?S1FUYUs5Ky8rY0VzbFk5bXY3OXFmZUgvakxaNGNyZFJrOXBJSWhDMUsvUk1h?=
 =?utf-8?B?Ni9rYXFaazAxRkFkb3lYaytWQXNRRW8wWFdYblZtNWQ1VkFycmdlQ0ZTZGxJ?=
 =?utf-8?B?OTNtSXlnZm5VWEpTWGZTSWtPQU81RmdLalZOdlU2WFd4VjdvRmsrRWtUUlJu?=
 =?utf-8?B?OGV3VE9Za09XTDRock0vMmExNUlaaHRCb3c0eGdLU2lKeUdoWFFXMVd3dEJC?=
 =?utf-8?B?WHBBc1JRNy84V1ZKMFF0bGdwY0RpaWlUeFVOMXJka1ZORE5jSDNXeEVwUXVT?=
 =?utf-8?B?M09TSDlqVTJzcnJINjVRWGJmM0RJR3Bpa0JYQzltaEg5Q09LaXhMK1hWSXBx?=
 =?utf-8?B?blhlSW44VXZaRkRyOXk4YzhzMmdjVkU2YU5FM1hnWjZ1WjhvSmJubWFGY09J?=
 =?utf-8?B?blJuWGFHMHNQdWhsNnUySW9WS3JLY3RiYnBQRUJOK1FmZVRYNGRMdDRUYXI4?=
 =?utf-8?B?TW1OVVZLWU9ZWjh0bzJZVGRnV1NuT3Fmb1FaRXc0eng3T1ExamhtK2lLNmQw?=
 =?utf-8?B?dTBLcUl5a3RlM3FsUS9MeGkyM3FNd1JKa3g5dVJWaEtGdEtraHUyM3czc2RB?=
 =?utf-8?B?KzJoaVRDN3dyYU1mc3JZdno1Q0RwVFdBbUJiSzV6WWhXSFZqNjhBUGkxS0Nn?=
 =?utf-8?B?TzFKWXZUZjhGRHc1S1htdng2S2RnQ2YvejNYSHI1ZGxPcDEvYlV1Z2hUbFB0?=
 =?utf-8?B?SE9Cck9sNW1YNHc3M0Rtb01waEFZclVBUmU4czh1M3lxZXFGeENHTWJsSE9F?=
 =?utf-8?B?RVpnTFQxQklucURtNm1ISVlJc1RmZ1RUdWFMamdndGVwOWNOR1JJUzFLNVlm?=
 =?utf-8?B?cldOR3laRUNaS3RoM0hqS245KzFwUk0vUHZHYndDR0lYVy9icjhrUzZwZHV2?=
 =?utf-8?B?YitRU3FXeUlocTVGcmdQOC94OWZXbzBXd2hkT08xbUdtWHlRUXE1R1U3M292?=
 =?utf-8?B?QSs4RDJ5SGZLc0hGR2dvZGIxNVBoTERlcERjYlNYcmFBOEMwZUJ6VGtsRGpT?=
 =?utf-8?B?bUpvK09kVGpWZXJMaVBxOVg0OEJ6cVJrVHEyUC9FN3pTM3U3SHRTekFiU1A0?=
 =?utf-8?B?R1FNWko1Qnl1ZXUwSnlrcHdrbGpHbm03VWFjSFlNdkRyWCtZc2w1UEkzQU9j?=
 =?utf-8?B?NkJZNGMvTzI3eXVUSUxZRThOZ3dPZGw1eGFUMlBmVWZKQzJ3TzRuaUVNeTFn?=
 =?utf-8?B?NDIyTkYyQWdyT05WaHY3d1Z4djBpMHUzWVlQNnVMeWQzeTRPQ25MODFkU1h0?=
 =?utf-8?B?RENGRlFhd3pIQlpJVTVJQ0NOUjA0OTJVQlhDdEdNQ1pzai9RMEdYZnUxYVds?=
 =?utf-8?B?dnZWeFBUNXEvOThhMFNiaE1lNm9abHdEL29MbllWV0xHRnNvTFNBNjZkLzQ5?=
 =?utf-8?B?L05XTmFYbFpKTEJCYVB5ZVlpWUNFZ0xIK0oxRFNnM25JM1N1Wm5xSzl4SzU5?=
 =?utf-8?B?SmlwY1BlbVFEeCtSWElsZ2h1cmYxWGdocWNuQWt0dDN4RVpyWVFtN0lQQ2pi?=
 =?utf-8?B?bkwxUkpydk5OZTgrRGk1a1g5czRpVGI2MWxoMTU1ZmM4NEVPSkJGYlpFVExj?=
 =?utf-8?B?NEFTVjhjaUFvK0ZmMDJtYmtkaS9MaWJQdTNaZlNuenR0Yk92Z2R1WUNwcmhY?=
 =?utf-8?B?YlZMVjFWTVpHY0JjNWNFd3dJWnV1QnNEbDFaV1RBd0t1TDBPelNjcThtQklW?=
 =?utf-8?B?bTZ2aG13ZlFLdWVHbUNFdEtmdEhFNzRRRCtIZ2JQRjQxMFNWZXk4a1U0TklB?=
 =?utf-8?B?djM4NkdEOEIzZ3MyeXMxejlRcGc1ak9IRUFuM2Rwbm92dzhzblc1OC9oOFBH?=
 =?utf-8?B?cVpKTUNOclZJTitiRGQzckY2MDIzQ3BGZmVIc085TlJJaWF4Z0l4UlRZTnhy?=
 =?utf-8?B?YTNmNllETjRiZmRNWkVhMUlwbExLK3JZTmozMEM2cVJucjloQkk1MzJUT2h6?=
 =?utf-8?B?bmdrc1U4QnlYQzRvbklua0JxSDdEOG9Hb293WXlhYjhmSnJEZjhzdFh3YnJF?=
 =?utf-8?B?bitvalRiUFl0cVdhVlhxQWZmd1FHWk84K29uY0tRdTdkZHJ1ODNGUGl2UzVF?=
 =?utf-8?Q?n5z4ZlKfEklJ5afM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ebaff4d8-7619-4789-6567-08de5eee4f4b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 04:24:36.1772 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kanmhB4RduEWgp3+zZcNmOpKwwqGAGXekJwkEEP+5wWLt7aS2oTLTkhnj1TZo8zlPZfNkdOExuENUIDZ77Zrp9EhtlcgZN0njhols6lFz4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8282
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: AEFFEABAB5
X-Rspamd-Action: no action


On 1/28/2026 8:29 PM, Jani Nikula wrote:
> The gvt code has no real need for struct dpll, it's just a collection of
> variables. So use a bunch of variables instead.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
> ---
>
> Tip: 'git show --color-words' is easier to review.
> ---
>   drivers/gpu/drm/i915/gvt/handlers.c | 33 ++++++++++++-----------------
>   1 file changed, 14 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index bd20f287720f..383b04160559 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -558,7 +558,7 @@ static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
>   	int refclk = 100000;
>   	enum dpio_phy phy = DPIO_PHY0;
>   	enum dpio_channel ch = DPIO_CH0;
> -	struct dpll clock = {};
> +	int m1, m2, n, p1, p2, m, p, vco, dot;
>   	u32 temp;
>   
>   	/* Port to PHY mapping is fixed, see bxt_ddi_phy_info{} */
> @@ -587,30 +587,25 @@ static u32 bxt_vgpu_get_dp_bitrate(struct intel_vgpu *vgpu, enum port port)
>   		goto out;
>   	}
>   
> -	clock.m1 = 2;
> -	clock.m2 = REG_FIELD_GET(PORT_PLL_M2_INT_MASK,
> -				 vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 0))) << 22;
> +	m1 = 2;
> +	m2 = REG_FIELD_GET(PORT_PLL_M2_INT_MASK, vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 0))) << 22;
>   	if (vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 3)) & PORT_PLL_M2_FRAC_ENABLE)
> -		clock.m2 |= REG_FIELD_GET(PORT_PLL_M2_FRAC_MASK,
> -					  vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 2)));
> -	clock.n = REG_FIELD_GET(PORT_PLL_N_MASK,
> -				vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 1)));
> -	clock.p1 = REG_FIELD_GET(PORT_PLL_P1_MASK,
> -				 vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)));
> -	clock.p2 = REG_FIELD_GET(PORT_PLL_P2_MASK,
> -				 vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)));
> -	clock.m = clock.m1 * clock.m2;
> -	clock.p = clock.p1 * clock.p2 * 5;
> -
> -	if (clock.n == 0 || clock.p == 0) {
> +		m2 |= REG_FIELD_GET(PORT_PLL_M2_FRAC_MASK, vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 2)));
> +	n = REG_FIELD_GET(PORT_PLL_N_MASK, vgpu_vreg_t(vgpu, BXT_PORT_PLL(phy, ch, 1)));
> +	p1 = REG_FIELD_GET(PORT_PLL_P1_MASK, vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)));
> +	p2 = REG_FIELD_GET(PORT_PLL_P2_MASK, vgpu_vreg_t(vgpu, BXT_PORT_PLL_EBB_0(phy, ch)));
> +	m = m1 * m2;
> +	p = p1 * p2 * 5;
> +
> +	if (n == 0 || p == 0) {
>   		gvt_dbg_dpy("vgpu-%d PORT_%c PLL has invalid divider\n", vgpu->id, port_name(port));
>   		goto out;
>   	}
>   
> -	clock.vco = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, clock.m), clock.n << 22);
> -	clock.dot = DIV_ROUND_CLOSEST(clock.vco, clock.p);
> +	vco = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, m), n << 22);
> +	dot = DIV_ROUND_CLOSEST(vco, p);
>   
> -	dp_br = clock.dot;
> +	dp_br = dot;
>   
>   out:
>   	return dp_br;
