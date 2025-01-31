Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E169AA2401B
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2025 17:13:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32D4810E07E;
	Fri, 31 Jan 2025 16:13:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oF/7feUr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6E1710E05D;
 Fri, 31 Jan 2025 16:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738340021; x=1769876021;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BAJjuWVRsofgNdzvFFfJvA6mZqOU2LTP6PCMMbnNWmE=;
 b=oF/7feUr6OoMGT9/QW2QjiVZve2fu7mvwcF2uasSm/s/Xxye0hDyguoB
 MlsQPByH4iR504fmrmbBOoaAOgEIuKfE1vmezcYO568KNsKkNcJNPZICt
 sMsiIA1O74u3FtuJUsjJklUGX0+DeP2S95pt4kv4qmSV43Kso4eCLv/On
 nvKg6pDyJ5UaWrKV5qQNKjYUQn0FWULJwv4tqeTIy9onZfVZSi9+h9Uxx
 6NUzh7dg0HnBpuwgJg7jDkDJa4bj7j6SZ5U+k0FYyx8gE/argqmXegtDD
 f37UbVCCa2sBEBWeopeVun8TjbSyvb4a550aCfiFMIVYuJkWg9+I+zuQZ w==;
X-CSE-ConnectionGUID: q9DaIHeHQA6F1ovnZphzEA==
X-CSE-MsgGUID: 78GGnd/RQNWppKYko6F1fA==
X-IronPort-AV: E=McAfee;i="6700,10204,11332"; a="64274198"
X-IronPort-AV: E=Sophos;i="6.13,249,1732608000"; d="scan'208";a="64274198"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2025 08:13:40 -0800
X-CSE-ConnectionGUID: US4+W/YeQMW4V9PcxkrkLw==
X-CSE-MsgGUID: kJSUzyf/T6yBJ6V+9jCkcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,249,1732608000"; d="scan'208";a="140550146"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jan 2025 08:13:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 31 Jan 2025 08:13:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 31 Jan 2025 08:13:39 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 31 Jan 2025 08:13:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GDtXULe8lQoM9daJUDn0CZQqz9kbr2aVXRNdGtrVLNDHauxjkjG3c1uom3xrX8srGl7Y16e5ZmShebVH0U9VecmUZJLmvoPMT1trLJVb8m43ngWQWkneKoTKwnm8rjkMEDhHWoIT9JctXq9E/QmURC2CGpjo2z32YM8YZVvkKMKtM1x3uCm3vpN0BTkhz6TEXcIyCeIMRwScPdBEkfrHo8rGQv81IHzAb6kQeZSdQWDyH/GtqPSUJJnLGrSxncF1j4KtWgTzxvYFJDAn3BydcNWH3yg7TrFpucch61RBRUVyjIe2QYcqDwqjfDrmDGUMxKNYVGgUCxgyxRj3sKtJ+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FNWyjSrvRy3+QDUfp+SaGIXOV2rm5K88Sj2yyyBtnYU=;
 b=btHAR9dnfeno9IEhXZjwZn9mZy9vHuiqLi9TcDq3b3+vQDljoCMNi5SVCTC2dqCh1/LTWsau4LxEO8mQEWR3hGLTb1DcGCMQQBYwGbX4csunKITbvvep3i6EJX3/hEbh97yCYOCuyFTXbeP5hU7ndJWjEtI3i1C+qx/bEYAV9lBhPuK9qpafo4u5LgCSZl5l41teSYOEVjjHoz4DEKsG/LhmVeoXs2juBP0FMM8B32K6W0rFVTrD2l527kI4XAB8vCQdHd7sTGnPuBDXE3316hLew11eurMtNtu3jXpRo/xPgKbodLwYprR0Vk8EIqFlNY/DuLC0YWFdPzYYpS78Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM6PR11MB4754.namprd11.prod.outlook.com (2603:10b6:5:2ad::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.21; Fri, 31 Jan
 2025 16:13:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8398.017; Fri, 31 Jan 2025
 16:13:22 +0000
Message-ID: <68b10ad5-0c67-4bd3-8455-3de81bb727fa@intel.com>
Date: Fri, 31 Jan 2025 21:43:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/14] drm/i915/dp: Iterate DSC BPP from high to low on
 all platforms
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, <stable@vger.kernel.org>
References: <cover.1738327620.git.jani.nikula@intel.com>
 <3bba67923cbcd13a59d26ef5fa4bb042b13c8a9b.1738327620.git.jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <3bba67923cbcd13a59d26ef5fa4bb042b13c8a9b.1738327620.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0025.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM6PR11MB4754:EE_
X-MS-Office365-Filtering-Correlation-Id: 528fdb25-47a0-40ac-0537-08dd42122ede
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OEM1WVhOZ3A5eTlWV0tsS2dnbHFGQzJzKzBYY0dJSi9sYXhMVVNJWGMxQTVr?=
 =?utf-8?B?ejFJUUZvZ0VwT0RBRUlWZ2VTd1RxcDJYL0RtdGwxOWZ6ek9nLzArU01HYWM3?=
 =?utf-8?B?ZW94eWcrOUUyVFpRMDQyYkxQTXlEM0xvLzc3cmtwZ1RubWh2TlNBU05xN3ln?=
 =?utf-8?B?N2pwZ09IL21oUHBjd0taemQ1QU9jai9XcDR1NjhpWHdMSGduTVk4SDNxUnlP?=
 =?utf-8?B?TklScEFUdzhUQU41N3RmUTh4U0svTitNeC93Ym1pMXlsdEdCd01wREFXTTVk?=
 =?utf-8?B?U1JHSE93Z0paTkpQTFZaRTh6UUJjem85MGtCUmxYQ2puUE5DeFp6Q1QzRk5u?=
 =?utf-8?B?cHdvYVdPaDN5ZEhvRmV2ZXVZSmRBRXplTDZOTUNxR3h4Vk5lWll0Z1hTU1ls?=
 =?utf-8?B?N2hCVHorUFkyTG0ycTErOHl1MnZjN0hIZFVReWhBU09pa3BuemQ1aDZsdWdq?=
 =?utf-8?B?cjc0b0ZLNmE4dnNXMmtWZWVrb0w1NklaZERpWFQxenYzbWlTL0phb0ZzVFFz?=
 =?utf-8?B?V0JJdzdUdlVtcDJqWFB5WTdnQU1UbG9TRWxlcmxTZHFzYnhvelBZVE5TdElR?=
 =?utf-8?B?VWUvRC9QNGk3L0l2UkNuSHRGdkFOekJtVE52ZEhNeU1nb05OdTJuTU1EeVNB?=
 =?utf-8?B?UzJCTFpxRGJOMWF2Qk9uKzlZMERkUURwN3BWVmMwUk1COUg4ZnE3c05IK3JD?=
 =?utf-8?B?N2dJczZYWmRBMUZaL2dmbFBYanExUk4yd0UrajlXaHhLZmk2RkZrN1RQNjdi?=
 =?utf-8?B?WWpkaVU1T0NmNnM3NXdxVU1sUTEyWkFtdVZxSkVsckh5UUhzQURBWDRLNjNY?=
 =?utf-8?B?VWdWbWVIeXFqYm0xeWtTb0xnRjBXZDdZTmpEMGtQOVpBVmRGOGJ0cFowN0ti?=
 =?utf-8?B?Rmw4cUkvVHVhbHdhYkhVelM2RE5jSGdVTUNKbEl3Vjl6ZFpvOE9KTy8xYm5O?=
 =?utf-8?B?RkllTTdqRzlxc0xyQ2ZXRDJ0QUlHZHQvc2RJdVdvQ1pmbTg2NDAyN1JqcUox?=
 =?utf-8?B?bloyVXBQTmd5OXN4OUgrL1EvQ1hzR25peFBMN3Z6T05pTXlkMWtCMDFzd3NT?=
 =?utf-8?B?citnSnl5MnREd25wbVVSVzFnUjlNMXBGZW9TVnpLdHlzeXNyY0NUZzRRV1U3?=
 =?utf-8?B?dTJPR0FPdzdGZEI4Rk1DUWtuOU5UaHV4b3U0WmJKZzI3SzJzdkdIZThyTnJw?=
 =?utf-8?B?K0YzM1FXV2hPOGIxU1VXZ21PTEU0QVI1dlZIZUNUSzNBMGl1VkFKS01JMWM1?=
 =?utf-8?B?TURRRHBDVjltM1FodWIvR1NNNm1Danc3QUFoRHFuaVZQM1N5YnFrQU1NTkJv?=
 =?utf-8?B?cWFzYkpjUWp6clVZZ21HM3AwNUIyeDh4TDRBdXpaQkp2elFpVURxeHNYR2pY?=
 =?utf-8?B?WTVqc0VPSUpxYWJTeUdYaHNqWkdrRlptOVByWkdDL2N0SnZYNUg5L3ozcU5E?=
 =?utf-8?B?YVAxNnRibUVISlZ3NGszTEtRREdlR2hyRTlDRlNqR0U4RC95dmZpZWViSmVE?=
 =?utf-8?B?NU9qdnZvRjBocDFPUi93akdiUHF6RWZYSnFvRC9CZ004VVQ0Sk4xdmptUjVD?=
 =?utf-8?B?bXh6QXZ5K0lWQjllbDNQdEw1SGQ0eTVMNkhDM1A2ekFZaHZkRm9MY0VhTXA4?=
 =?utf-8?B?YWpNaXI0WWdHc2QyQkhpQlpWUE8rOGJWTlRXY1FwbUlodWZhL0p5cTdvL0Jl?=
 =?utf-8?B?LzNOTElXM3hlL3BKV01HQ0FQTDdIaGFtaFV6M1BaMkhLamd5aU82U3hvcmJZ?=
 =?utf-8?Q?leWVaa8I8VRA3DkmlefYhO7UY9NXzJdkE0oeoN7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2dqTjYzU0o0Vkp0SHEva0JIc1d3djArYnQyQ1FNcEN6d3VkdGJkQWlWNWli?=
 =?utf-8?B?RXpUNVBBeWdTNkh2SzFDVmJBYUJ4VTNrWGxpL0ZScUN2WVQ1dWZPa00vb1ZN?=
 =?utf-8?B?RzVvZU9adWxKSHhLcytBQ0h1L1FXbU82NnN6RFZsVW9PcXpOUHFoRjhINllB?=
 =?utf-8?B?bFZlckNFTXNueVVyTkhEUldHSVNjU0NaUHZiL2wwN3ljQjdqamZwVzZYR1ZD?=
 =?utf-8?B?RDJ4dUxKdU9QRExtRmJQVkdVdWVHZGlMNFVwWUcwSlJKTVpxeWwzcVkvMkhv?=
 =?utf-8?B?K0NTaGFxQUszVWFSbmNGYm04dWJYbTc1Tmt4ZXg5Q2xhNU40Lyt1eXMzN3k5?=
 =?utf-8?B?L3dJU3ZBbkRkQVQ5ZG5SQUJDNTNyZmY3Wm44K0tFeVYrSmNaaXlHNTNubWth?=
 =?utf-8?B?Slg0alZRNVFwR3ovZHFCalEvVnlWdEZIL3lHMnBpOUZQOE0vUmQ5ODBMQ2t0?=
 =?utf-8?B?NnMvVnAyUERWR1c5UnhVby9GY2lTUlQxSVRTVVg4anl0bDB3alRIeUluNzFI?=
 =?utf-8?B?enFZVTFqdS9HcW9teDdJWGovWDNvOVNMOGZicCtoejNUcno0bVVGYlZRTjBR?=
 =?utf-8?B?eWZWUCtTeVIrUSt5NDk5NjYwYjhudlJLT2c5YXFMVGVyQ1lIWmNnNkhtMUVW?=
 =?utf-8?B?N1NNNlNBdHdQQU5Qb0lpTjZYaWpwYU9PWU4vcTRqTUsrdDM2T1BqZnZOaWNY?=
 =?utf-8?B?d01EY0JaSElqUEVIdWJtWGhCSjJDcUUxOVBhMkVIZFNaMllxZi9rSWJvSDgv?=
 =?utf-8?B?RWJEdEVkQ0RxcElKNmN2eFRqV096YnoyN2VRWUErYkdienFhWkFFNEJrQ0pJ?=
 =?utf-8?B?TUNLUi8xeVBIdFBFblFBblpXZEdyQmdXMFFRSlV0OUdiNlhqY1JHV1lNQTRM?=
 =?utf-8?B?ZDl6RFQrM3NBcjEzUmpYNDFXSWdFa09TZHBkc3VXWCtEK3RCLzc2VEh0amR5?=
 =?utf-8?B?WFlOalFKL2o3R1NzM3EwNmQvQ1Frb1MwOHMyRllER0prTjJEbnpSZmlQSCtG?=
 =?utf-8?B?alp3T0dPUVZGM09NUWF1cDRSZGkrdDFiTGRPVHRnTFI4Y3ZpOTRDcUZyWUlP?=
 =?utf-8?B?dzVjbjR6SmJNUDlRazJlbzllWmNYLzRhbFJzT3BzMlliR1hjMTZFWWZibWpH?=
 =?utf-8?B?NXpzNWlWZzVKNmpwajk0bDlBU3RNVkVEWEYwcVF0d0o0cU5PMGZPUGdLZ01t?=
 =?utf-8?B?b2srL3BuSWhQaW4yc0lFaEtWTGlleDU5NFJyRERrS2xUYUp6bk9wbjJWd241?=
 =?utf-8?B?N1dXU1JDN2FIaGt2M1lzL2w3WkhFZ1ZOeWtPakgya2FsMTdhQ0R2UjNDQ0g2?=
 =?utf-8?B?WjBpbXRCN25WYzg1RldsbTVmSksyYVhveERpV3d4Mlo4ZlMwRnJ0eGlacjZI?=
 =?utf-8?B?dEJ3RkhxSUMyZzlUc3RIb3hhODAwOFJTT1k2bGtyRkdJZkdFcTJ2UlNWSmxM?=
 =?utf-8?B?TDUxcGFvamFJQmEyRGpQY0FMdTBWYmdONEp1THVlNVNtaEpYVmxNUEltZlV0?=
 =?utf-8?B?c3BoR2V5L3BjVklBOGNUYkEyNG1yUDNSYko5YTRqeWlzVzNyMlk5SS8rb3BE?=
 =?utf-8?B?VExCS1JmY1dOVHk3ZTVjOUgzQWRWekhRZmRJU3NWY3FFOWhIcThOUDRVZSsw?=
 =?utf-8?B?R3hrUi83NldGbENaMU1EaHJ1aUpuMjRQbVBFc3J0VGtONnAwZnhGNlVkUzFo?=
 =?utf-8?B?eFJpRmt1KzRhWTVUTkpmdHFabytLdExhdURVcUlKbHJ3MVBmV2x6RVVpRjl5?=
 =?utf-8?B?YmY3V1F4alhRYU15Rk9mYzhuaEVxZXVVT1BPVEw1QXhKUklQcEZtQUlFY010?=
 =?utf-8?B?ZFg1Q0NJc2ErcVZmVzhMTlNSS29xQTY2eUsxdmo3bk5UQWVaZEM1U1RVQTF1?=
 =?utf-8?B?QzFDTFdkQ09mV05KOWg1TmJwK0JVNXZZeHVIdEdQTTBhOFE1VitmWnR5QVR3?=
 =?utf-8?B?b3dFKzBrOFVmcm50Rm9TNnpxUUc4QXhZbGVtbkp1cEx0K2JiQXQ1aVVLMDMv?=
 =?utf-8?B?aktlSDlkcnlXRUlUdjlMZ24zUkNha0Q4Znk2Z1NDeHZzMTdHTEhMdlQwVkxY?=
 =?utf-8?B?NUhxWVNZUFhUVGo5YTYzVk53OUlGa2VIQVljeVNWMEluV3NBNXU3R0c1aTFT?=
 =?utf-8?B?TTlaWXZFclEwYTJpUndBNURRS0pSSHR2Rmo2NXJkMjByRzJkQ2hHTkRSV1Nr?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 528fdb25-47a0-40ac-0537-08dd42122ede
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2025 16:13:22.4608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nIz+s4puc2ZCzhi6veeQe75lw7tUYhv+imW2XkO+oAvKPHoG29vtW4uv37ZKBIXT14JPRd7gFJC+jutF4foYCuIGPDtc8oO2gqwSFGH5SH4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4754
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


On 1/31/2025 6:19 PM, Jani Nikula wrote:
> Commit 1c56e9a39833 ("drm/i915/dp: Get optimal link config to have best
> compressed bpp") tries to find the best compressed bpp for the
> link. However, it iterates from max to min bpp on display 13+, and from
> min to max on other platforms. This presumably leads to minimum
> compressed bpp always being chosen on display 11-12.
>
> Iterate from high to low on all platforms to actually use the best
> possible compressed bpp.
>
> Fixes: 1c56e9a39833 ("drm/i915/dp: Get optimal link config to have best compressed bpp")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: <stable@vger.kernel.org> # v6.7+
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Thanks for the fix. I think I intended to iterate from max to min in 
initial version of the patch (atleast the one sent to trybot [1]), but 
some how messed it up while rebasing.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

[1] 
https://lists.freedesktop.org/archives/intel-gfx-trybot/2022-June/129432.html

> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 7 +++----
>   1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index d1b4fd542a1f..ecf192262eb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2073,11 +2073,10 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
>   	/* Compressed BPP should be less than the Input DSC bpp */
>   	dsc_max_bpp = min(dsc_max_bpp, output_bpp - 1);
>   
> -	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
> -		if (valid_dsc_bpp[i] < dsc_min_bpp)
> +	for (i = ARRAY_SIZE(valid_dsc_bpp) - 1; i >= 0; i--) {
> +		if (valid_dsc_bpp[i] < dsc_min_bpp ||
> +		    valid_dsc_bpp[i] > dsc_max_bpp)
>   			continue;
> -		if (valid_dsc_bpp[i] > dsc_max_bpp)
> -			break;
>   
>   		ret = dsc_compute_link_config(intel_dp,
>   					      pipe_config,
