Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DB79EE4A0
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 12:02:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1336910E07D;
	Thu, 12 Dec 2024 11:02:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M1er8+iZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6143C10E07D
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2024 11:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734001322; x=1765537322;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=0D9usJYc+n/jeBwBtS9iRHf6yzTKvkdRMZjYQOFjeYU=;
 b=M1er8+iZ7XfkHyf2EYsc29xWy8q6h28f7E6sILAQ3QenU6sJBXZsocpg
 XNxNrkoG+Cq9KRX2syxs1E+5tFvxiXA9iljo5t4Trl3N5PDgSrXtu5qXv
 sywHDovoDBk+DCYmC1LAJMBG9009oVsafdngYh5v2hzvQSw6zGhBFP8xH
 cKOaXePzK7BHmnRS4x0qng+i3SyjDNMAC+/Uw4NG5F7eFMmmqwcnvb9Ta
 VKxvktD4+7DtbprkXX4H0R2pHiIArEyzHqFM8nNqbcOVV0wBgJBjED0KX
 WMt+9XF4+69B0GXHiRYKbY3aX7HQfFZgm63ERTt22Pn3CGxYIAqyvfC9N w==;
X-CSE-ConnectionGUID: wvvJlBzmT22LQN6pSLJ9YQ==
X-CSE-MsgGUID: 9L1LvUmkQ2uUv2BH6kN7Ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="45021656"
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="45021656"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 03:02:01 -0800
X-CSE-ConnectionGUID: N+7SHRZtTae7st2RZiiLww==
X-CSE-MsgGUID: FBYw7LPQTFm7CTFb4aggCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="96278999"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2024 03:02:01 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 12 Dec 2024 03:01:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 12 Dec 2024 03:01:57 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Dec 2024 03:00:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hos2O6Wf18tPw4aUlqH3h+cZriad+5jBsIkEJfxBKpssByqBdZ05zOkWIhNq/4mo2gw+5dDBIQ2oG0z/9WdrCd7CKq7AN1staesTN2gqU00NIk6PErzRvq9U7anBk1AM6Jp6wgbhLp790ieXQ4c+wkTvSKCR9ChqgjyJG1gP55SQt+gbvR7iP6Uz65vkHmuee87+Z1Uj8hz0fBwVBUGehCMwfPyPWlWa5dkyM+hT1rbdKFCTr32Yic2fvK19w/VGDtRdTnF1ublX3wYj3pO8eASEXkuBEbIOC2jxueJqN0ofq3tpahsGjfrkuYlTu5ah73s3D3yNEjrkwrwBvJF86w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nef4EOG2undn3JlaVkisWnEot5zQqScqtEtUZdYH8XI=;
 b=SjcxbQBmKRlBdlc7R2pXmTrEkSPJWLDBAhbQRp+XkTzeMnchKwnMgfrg5+oy9nAKFju301kcKL4gfnZ2bXYKrm2jT+pz0H5oGhsdiMPZMkzzdQXGbItxZ9v1kkpAKMxx8SeIsl765wgQxxL4dvSEOjXazNSnj+wxOk2N7T28+JZkXyERyemR7qeYvfp8P874kULIygoIRn6F3L+gydoPZgS88ZnVlhImKdas5PuU2j+aUftWF3JhfSqG1BfNoycPxfc9LTt3WFaurUC3BfDix7sHgTadhZVoFRY//zeSYqSAyFDdZUdK4yiYHb7wmZY2FPEd+qybcJ017ibVBtZl7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by CH3PR11MB8344.namprd11.prod.outlook.com (2603:10b6:610:17f::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.17; Thu, 12 Dec
 2024 11:00:50 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8251.015; Thu, 12 Dec 2024
 11:00:49 +0000
Date: Thu, 12 Dec 2024 11:00:41 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Imre Deak <imre.deak@intel.com>, Michal Wajdeczko
 <michal.wajdeczko@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 <Maarten@intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann
 <tzimmermann@suse.de>, <stable@vger.kernel.org>
Subject: [PATCH v3] drm/display: use ERR_PTR on DP tunnel manager creation fail
Message-ID: <7q4fpnmmztmchczjewgm6igy55qt6jsm7tfd4fl4ucfq6yg2oy@q4lxtsu6445c>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: MI2P293CA0012.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::10) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|CH3PR11MB8344:EE_
X-MS-Office365-Filtering-Correlation-Id: d0ded75a-ab75-4095-4d1a-08dd1a9c3cec
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MDhUbmxFUm1QVzdoVzZWK0lKN3hBTWJHQ0pPbnJ1bURvSkZlVGxRZ2YvaXZr?=
 =?utf-8?B?RXhXa09qbm1sRTJsUU9sa3VtTTZHbVdKcEcwZkpGT3lIaXhQVHRmTzdqU3NI?=
 =?utf-8?B?NkRIWGx5NjBaeWlPUTJQUE83TjRjeUpkQ0VCcXNUbDhDcmN3V0ZiUGNXRXc0?=
 =?utf-8?B?SGZDSXRTZVVia0w4QjVmVjlVdW1xNnJHZTRrZzRVRVlTTTQvRkJPRTMwakhS?=
 =?utf-8?B?M3Z2QUdnby9GQktidkpsVllZQ3dwOEN0UFJPUWRQbDdGQjJZSEVERjRveUta?=
 =?utf-8?B?OTJBV250dnQ1Q2orVUI3VTNSbkxEc0p6TXhaV3hTbHdjLzVBc0ZpVm9JcWJ1?=
 =?utf-8?B?dWpmMzBscVZSMmFseVJ3SmdyaHMwR05LWWFIRmxQQUo5cnNoUi8vNGxNQUNj?=
 =?utf-8?B?ajlHZis3cDJrREROMVUySXVlZWV6WUF1cjFuOTRvRHFRNzVGSTZHRFVNdklH?=
 =?utf-8?B?K05YT3hPTitMc0szTEdaU2p5UU1QeU53d3lWcW1qejY0RExtUndBWUt6SEpV?=
 =?utf-8?B?RVVmdXBmeHZPRnRRcTlYQ0VwTTRZUDAxY2xMVWdFd3pnc01RWmhHd1NVdFpS?=
 =?utf-8?B?WXZBVHBSWHhKYUVKbzZMR2VTN2gvWXlBb3piY1hiVWpHeVBwWWRWUUlNcWFl?=
 =?utf-8?B?T1Y0NU16VDhmZUJFY3VBZGpHbW0xbHFydzhzUGo5aUdkc2ZUU3BJeE5PL0F1?=
 =?utf-8?B?NmdPbHQ2UTAwdGx3VjYxQjAzdFRGcWk2cElaQVhoUXJ0cXBSa1A2bDMzY2tz?=
 =?utf-8?B?cmJZck51ZEpaVGpkSG1wWDA2ak9CaGtWd2trYUovZ0xZWTY3b3g0UXhkOHU3?=
 =?utf-8?B?UzZ1WGVSN0s2bUxsWUFHZFRIYnYyL2hLL1VpeVNZOWFFcUtTMmNWQ2cyZkxx?=
 =?utf-8?B?dXdtZW9Rb0todU0zSWVjbUtCMU10aVZ6VVBQZU1ZVTFNZE1kQUw1aDIrWjBV?=
 =?utf-8?B?NVcwalNnbnBaL0VaTTdBSE02NmxEckMwUGRlRnlaTDJEM1ppSExudXZGeXBw?=
 =?utf-8?B?b1JmUUJpQzJMNG1oOENqNTBiOU42Rit3WDQyZHUzM2N3RUlVSHlUbFdwNE5G?=
 =?utf-8?B?OVJrcURsTEFDTW1LNzhDa1JuKzkvSDZqdVNHTU1kcnRoRVhMTk1XRk5YUWVq?=
 =?utf-8?B?MGVXZkZTRko0MHc0MkdjcHNVV1g3RlBEZHNkT0Joa0xESkdsd0ZsTjMyRWpH?=
 =?utf-8?B?cXFCQlhCWm9yWmVxOW9lelBiSUJ1SmJTRDA1VkJydE9iVVQrNHQxN0RteWJN?=
 =?utf-8?B?UVo1Y1FYN1pDdHI0dG9abzNIVEpTQ1lkU2V0dU8rUm5La043UlNCRElTaURF?=
 =?utf-8?B?WFViN21IY2Q2a3dDTldLTklhdjhGeDJmbDlSNUkwN2x6eFhmNFpmaVJ2SllG?=
 =?utf-8?B?ZWp6dzdVMUY4Rk5PVmZqZVRvZFl1M2NqVzZqWVlTUkU0SUZwVUUwVHlKSkg3?=
 =?utf-8?B?bWxaTG1ZUTBNeTMrK2MrQkNMTTVpc0pGSlQvRjkxOEo5QXRUbSsrdXRpOVkv?=
 =?utf-8?B?Z0k1MFJRR3VpREcrK2dmcjZNQ1FRQjlUbGE2MnVkeDZFeWVPcGpQSEtYelAz?=
 =?utf-8?B?cHRaKy80eDFLOEE0R3MvblRNOTJjdnplb1FJOEROcWxhb0pvTGVyTHByekhz?=
 =?utf-8?B?Wk9UZWc3WUdhZjFweXpRcXAxK1VXeHRnOUp4em80dTB5NjYvcStncHY4aHc4?=
 =?utf-8?B?SU8vT3lQWE0wT3J1VGQyNWNQazh1Z1pxaGhKTnZsczRybXh0VnRPbllpckpT?=
 =?utf-8?B?TmZXdHQ3YmlGamc2YUp6MEV4RCtXUW83ci9OblRwNjkxSmhTMXlxajJjTUpa?=
 =?utf-8?B?QVhHRjZ4d0dnL2c3TmR6Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTNtUmQ3dHRxVUxpd2RVS3pTeTRRQlNPSmRhWlBBb29EY1hDTXVDbUFvZmpq?=
 =?utf-8?B?S0hvVVhVeDE0V0VCMldqL28wVCtnTkwwb1o3N1M4ajRrZ2wwYkZDZlRZbmNX?=
 =?utf-8?B?OUpVbWdITENBYkRwTkcvLzRKeVVSK29EQVVmaitib3YrUDgvY1doK1graGZJ?=
 =?utf-8?B?enZ0SjdhVWFoeXg2VUtiZ3M5T2xsdURZc3ZwU3ZXTTVwamNpTW1WN1pPazNJ?=
 =?utf-8?B?cnorMmwzOWZCQXhwSzBad3c5TGdmbnlqcXpYUzJtWUMxc0pwNmFmeWlnZ1Rh?=
 =?utf-8?B?aXJ4ZEZSMWlEY1RCZTBkLzhJVmJIUU40VGlvRTBSQVJ5aHlzUlNYcm4raXF3?=
 =?utf-8?B?ZUpkTHFuNG1SSXJ1V1V2anE1SXQ4Rmx2QWVZV1VDbVRFL1doeVg4L1NSUnhG?=
 =?utf-8?B?RTk4MUMxcCsycEhXMEhrZmdHWGZrVjB4UnpIL21hcENwNEpFbG9Ec1o1TC9h?=
 =?utf-8?B?MUdyRmpmNDlQSXMxQTBXUHhYcGR3YlcxQlpiRWVTVWUrNjZtdUVxbGorWVpU?=
 =?utf-8?B?OTFDRkRtSC9aOWNTME82OFZsN21PeWFLNmt3TFF6eHMwanExNnRpUExjUGFX?=
 =?utf-8?B?M1R6aW5KUzk3TDEwR3VxcUI0dWRXYWVraEVCd2owYlU0WloxOTl6M0N1dm1i?=
 =?utf-8?B?Tm9EVzB1andVSytpTjlTNHhUdzZGR0dUTDlIaGc3OXZRV3RMMU9SaG5DK3My?=
 =?utf-8?B?djc3b05paFUrQy9DMFZVdEsxc2xKMTdvR3d6Q2Z3RHdHL0Q1aEFmTG5pMUlU?=
 =?utf-8?B?REFnZjRlKzd5M3NnckF1WmIyb1J5OG83Y0k4anpjYys4V0U3bTBaZytGc3Na?=
 =?utf-8?B?dHFpZjdhSW5OUk9tNTVOeWxlK2ZING8xZzV0QXNVUWR1RzRWcytzb3gyZysz?=
 =?utf-8?B?MDViV1Zkc3plNWN0UW1zUzZRZWJheXMva0lOMUNuQkpZenpaNkZNSXkzcVJ2?=
 =?utf-8?B?ZWUvMjNFNC9FRGpadmtWQU45NkNDcFlGanNaRGF4eEFqR285TE8valQxSjFU?=
 =?utf-8?B?T3Y1cTErb25lWkYvckt6Mkp6eVRzSHB4ckh4KytDd29VMWsrakxFd0N6RnJZ?=
 =?utf-8?B?bFEzS21EUWQ2YUlGTFBaVE0yWlpqMzZuV0VlbHRlVXE0aUd0dTM5Y3F2eDBs?=
 =?utf-8?B?VlNyUFJQYzZnajJCcm8rU3I3bVIvYUcvNkFMQXBnc3lScW5ZSGRHeWdqOVQx?=
 =?utf-8?B?NytIVmZTK1VhOVh5VXU1TDRubWlDSUw2clU2YndqUk9SaXpISVdSNzhCRjJH?=
 =?utf-8?B?MTd1R3FYYVQzNXIxWEo4ekZOS05qZE1RK0p5eDZZRVkrV1NBbGYwWkxYNG5o?=
 =?utf-8?B?aXpRUC80ZHBvWnRZTnQ0Wm14UEZNQ1NlYUdRa2tmeEVHSUdzSHFYb1ZPRGdF?=
 =?utf-8?B?ckE1S1NmTTR5OGJ3UTE4eENJU09jZm9pNkpoSFc3WjNvK2UvSG8wRHArNFFP?=
 =?utf-8?B?UERud1owVnB0c081OGFQQ1dDcTlkcDRxN2ZVMjRDUEhxN1E1b3hsSFc0WDR6?=
 =?utf-8?B?YTAwU1NneGk3c2s3cWRQbmxzSllFSTNwTDJ1N2c3L0Q5dUlxdVJxa1VXaEhI?=
 =?utf-8?B?MDVWRG5OY3ZUbWh1UXlYYkx5d1d5R3BUU0hmUXQrMzlxSzd5ZXBTSHdKK2Jt?=
 =?utf-8?B?MW16VUU5dEYxOGtIcUlVRGh1Qkd3UU1MbER1VnQ4NkhZQ3ErMzNYRjhybWs5?=
 =?utf-8?B?c2NURnRqRSsvRzNNZ3NLY2hSbWV2U1VLdkFXUEUvQ0pIYjJ5cG14MXBvUGRL?=
 =?utf-8?B?RHdHY2V2YmV0dUVKMlRxcnQ2TVZpSDZDTGx5NGlCYkRTRGNhLzdWcjErMS94?=
 =?utf-8?B?MXJUaVh2UWNhb21GVTdUeWRralVNQ2U2UzQ4UlFwWWlxcmJpUTVhVVJ0aTZv?=
 =?utf-8?B?cWdWdHA4d2xEazhDTGtPbnIwSExXZFpLUGsyYXRSczcrYzY3QWIyc1ZnQmQ4?=
 =?utf-8?B?SEFoZmlhSEtSR25yUEhCV2NJMW1RUHRJL2EzZWQ3Vk1naEFKb01OSVNJSXJa?=
 =?utf-8?B?UENYcktzQ2l1Nk5YTnRCOUJFWS9HcmFRQVhUbXBlL3l4eG0veG5JcDUramIy?=
 =?utf-8?B?RVJRNi9TcE01UnM2VXpJZWhYa2ViZnp4UktKbXRZUy95UVRKRWVoN091aW52?=
 =?utf-8?B?SUZGYXFGZVpnWXZOQm5xd1JaUmlCTFEzeVhEOTBhcEV4V0g1Y2EyOGZiNElh?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0ded75a-ab75-4095-4d1a-08dd1a9c3cec
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2024 11:00:49.8477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: esua5XSPSLyff/CV++txC/CkYDLnuX/b2JR1bL4hWl8uLfp+LJ2eyKeuaFlI4I+/s9aLGPoT/JYHIond7yX/T7GeeGp1oSJ/BhgrKPgbZgc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8344
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

Instead of returning a generic NULL on error from
drm_dp_tunnel_mgr_create(), use error pointers with informative codes
to align the function with stub that is executed when
CONFIG_DRM_DISPLAY_DP_TUNNEL is unset. This will also trigger IS_ERR()
in current caller (intel_dp_tunnerl_mgr_init()) instead of bypassing it
via NULL pointer.

v2: use error codes inside drm_dp_tunnel_mgr_create() instead of handling
 on caller's side (Michal, Imre)

v3: fixup commit message and add "CC"/"Fixes" lines (Andi),
 mention aligning function code with stub
    
Fixes: 91888b5b1ad2 ("drm/i915/dp: Add support for DP tunnel BW allocation")
Cc: Imre Deak <imre.deak@intel.com>
Cc: <stable@vger.kernel.org> # v6.9+
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/display/drm_dp_tunnel.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_tunnel.c b/drivers/gpu/drm/display/drm_dp_tunnel.c
index 48b2df120086..90fe07a89260 100644
--- a/drivers/gpu/drm/display/drm_dp_tunnel.c
+++ b/drivers/gpu/drm/display/drm_dp_tunnel.c
@@ -1896,8 +1896,8 @@ static void destroy_mgr(struct drm_dp_tunnel_mgr *mgr)
  *
  * Creates a DP tunnel manager for @dev.
  *
- * Returns a pointer to the tunnel manager if created successfully or NULL in
- * case of an error.
+ * Returns a pointer to the tunnel manager if created successfully or error
+ * pointer in case of failure.
  */
 struct drm_dp_tunnel_mgr *
 drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
@@ -1907,7 +1907,7 @@ drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
 
 	mgr = kzalloc(sizeof(*mgr), GFP_KERNEL);
 	if (!mgr)
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 
 	mgr->dev = dev;
 	init_waitqueue_head(&mgr->bw_req_queue);
@@ -1916,7 +1916,7 @@ drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
 	if (!mgr->groups) {
 		kfree(mgr);
 
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 	}
 
 #ifdef CONFIG_DRM_DISPLAY_DP_TUNNEL_STATE_DEBUG
@@ -1927,7 +1927,7 @@ drm_dp_tunnel_mgr_create(struct drm_device *dev, int max_group_count)
 		if (!init_group(mgr, &mgr->groups[i])) {
 			destroy_mgr(mgr);
 
-			return NULL;
+			return ERR_PTR(-ENOMEM);
 		}
 
 		mgr->group_count++;
-- 
2.34.1

