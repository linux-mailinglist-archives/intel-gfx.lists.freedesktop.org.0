Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0339D3DF6
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 15:50:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59E8510E061;
	Wed, 20 Nov 2024 14:50:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B1dxE7I0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C63C310E061
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 14:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732114219; x=1763650219;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wemBqgbSpDm4yivlz+MORGIyBLS19vMVFVw+F2BQlzc=;
 b=B1dxE7I0zmprftzohoajxuRBmeNbz+aBC4jasmXu5G8swMyW8HK0UI+e
 yJ07/KhA7ivBJHCFsc6iEBpitYfoZa0aKfEGDI8x7yse+PzFhcsLedf/Q
 z3OCYBMIawK/MH4DfP2v2hFBYNdV1UrTZa7HpchCnF2HdT30ZMt1PSN4v
 IuFVau7PX8EEcKLs0G6ikU0lkkgQohl1j2LmJNhq5dMUIlJK9D55jRjJ8
 pLoNBmH7d5Eccc2FVdnGXi/3ZBiDEyUAbvC88taQ6S0ec716V3zXQy19H
 5YHghfBun4fZ1UCYUuxJdpSDp9PXia/joKHwsIFQiIKrYEiVc2CrWrKHA g==;
X-CSE-ConnectionGUID: 1bTqV2NcQBKPHgdeGkZA4w==
X-CSE-MsgGUID: 1nNRvDmUQnqn7OKo9SiQig==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="43246195"
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="43246195"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 06:50:19 -0800
X-CSE-ConnectionGUID: tVf+5ExERDCeCvIzmdlElw==
X-CSE-MsgGUID: yiqFzUurRzmXWKkAI+KYQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="127479626"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 06:50:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 06:50:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 06:50:18 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 06:50:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G7L9dibRE9rh4iEhLj77NybN6Mtz3W2d0q+U/OsZQU3SYWcWsGCObEe60Z9CuAJveRGGkyT4dNz9z/oNX0J+qkcHgyKoI9ZHx09Doa3J2Qi1sFIEL3P0ITaqMYyD0ua0f9mfZqSfqcZFkJmYFnw8awZuExYcgFhJbbRjA98xIhDEWVSHjXC30dOBKN1Q2psefnS/g03P+doRV/vjEA9MNp2+7bIemysj4FOS4cJE10+GFvoBsNCqZJu3zoovUwE4ldF6f3ZqLp0d5z3/zxmpuO/B1BL/tAXdhZDXuUsbTptxc1pNIIUTYUR/OwJlq+fpq6FOFMu1IGtERLgKQr+FSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v2SSqdxxdrMdLi9iQ8tWyu2C1L3Mk2YthtL6yVEHbuI=;
 b=vom2H5jHFe5XpH7TZQKMOoHtLr/EcSPFMaQ18bEQT2/Y6n7KPDcxns7NGpMZ4pqRFBmWrvcHiunoy1EHF141A0rbtBbPChYBjULxdgxVrbbOP5sLayhurIwbyGGj4vmeAG4y7KvfiuoAZLnmQBhlpwplMZkT9ga9bIbw49DNVkktjv3DVnPdX66zM8dqyBJsvqD0YxSEwr7uvmvKKnYTAW2rzmEwi1+awLGkVC2hBDDRx8LKbjzKMgoc2ERD6CAeGlk5foThdnA5CL7ETXurnve8gJ52RTOrTkFQMHc5Gd5D/XnMLjAfqz7CujZJt+NA4CZZZmNdcLOXHeblGqkoDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by PH7PR11MB6547.namprd11.prod.outlook.com (2603:10b6:510:211::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.21; Wed, 20 Nov
 2024 14:50:14 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%4]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 14:50:14 +0000
Message-ID: <4cb8acc9-eb46-45cc-8f1b-08ce8de3d969@intel.com>
Date: Wed, 20 Nov 2024 20:20:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6] drm/i915/selftests: Implement frequency logging for
 energy reading validation
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>, "Anirban, Sk"
 <sk.anirban@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Poosa, Karthik" <karthik.poosa@intel.com>, "Pottumuttu, Sai Teja"
 <sai.teja.pottumuttu@intel.com>
References: <20241113095004.2441052-1-sk.anirban@intel.com>
 <1c2f4bf1-daa8-43bd-8870-304b2d7989e6@intel.com>
 <CY5PR11MB6211197718B2E2C6AD71C87A95212@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <CY5PR11MB6211197718B2E2C6AD71C87A95212@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0129.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::8) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|PH7PR11MB6547:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d15baef-d0bb-4c69-6abf-08dd0972a42d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?My93bkJ3S0N0UWd4dnZHZmg3dWUrWi82aXlyamtSR20xMjU0Nk9TdEZ4UlZ5?=
 =?utf-8?B?TFo2VHYwQXNQZEF2eU9GRjBqd3c1OXVnZnJxek0xTW1SdjlYNHNraGNiSEZi?=
 =?utf-8?B?QTlqd2JrRDFYVjR2SzQvVk9UUnk4UTEwQW8zMHc3YVdzbWtZNWo5TkRHSVhh?=
 =?utf-8?B?ZzBaVG9sQlhBVmo5dGhwb0hZcytEYStOb3RWL0NoRGt0NVB1ZFM1TkkzbE81?=
 =?utf-8?B?SFhubE02dHdQSHdzeVRYR0FhWnZWbGJ4TjdIY3pKd2V6ZEVoR2RKSEZFSG0z?=
 =?utf-8?B?eDYwZVQyUldDeTZ4R05sYnN0ankrQ0JYUU9PSVBWOVlHYVM3SnNYR1VxVWFN?=
 =?utf-8?B?N29wOTN6c3R4cGJoNHF6N2FaUUxURXVyNzNWWnorR3RvM1N3QnRUVHdoSnB0?=
 =?utf-8?B?QlRIampJL1NNWXU1S1A1RzNXN0RCSVZQVjhqcmR2N2dNRkFQUDJsWGV1blRn?=
 =?utf-8?B?QWQyWE1wNU9FaHc0UE9FM01rTW1YNzg4dGNQbzNsN2hPVENNVGNlMlZjTnhV?=
 =?utf-8?B?ajZ5OGU3ODIxcXA4eEJnV2JXQ0Ztd29IeEs5Z1JrRVI4d01qUFAxYkJoUHVS?=
 =?utf-8?B?YTdjb1J6cEZmNmpabDhGNlU1Z3ppWUFVcWljejRwV2tvQVIxV2ZhZ1FjeVgv?=
 =?utf-8?B?bUQ3ajZvamZZQ0VOZXFSeGJ0Smc3Yk03bURWOVhTZTRQanpYOWg5aWkrVHRT?=
 =?utf-8?B?OFN5ZFQyZnVFaWtRb0h3ZlJ2OFB0UXpiaWJ0RnRXV3ZzRVQ1dnM3bkVtKzVl?=
 =?utf-8?B?MEl1cXlsSnJyZGx5VFJiMDhiQTlsRCsvL2IzQ2Znb0pEVlBHUjhKQ3BDVEl2?=
 =?utf-8?B?cmVUZjRnMnNEWjdEQ01wbHpyQUJNaTZnSVZzSUZPL1d3VmxOMlAxbkp1SVZP?=
 =?utf-8?B?Z25ERW42cGtidHFDcmpUN2htT040dlY1UDZhK2ljanpIYlF5aHpRNXliZDdq?=
 =?utf-8?B?WjcvTHVyZHN6REMrc0hvbWU4b2g5NmZWbUZlS1BrcXZMdXpXeDhsSlNZd3dJ?=
 =?utf-8?B?Vm5vbFltd0F3OG5SUnUybWVIZzc3SHBRRCsxdzZENEtsVTJld3JFeDN5dTF6?=
 =?utf-8?B?M1cwL1pML3dPR1JkaWR4YjhZNCtYMXhmT1ZJQjA5MXFNSDYrVHkrU290OWtZ?=
 =?utf-8?B?eDBGckNHb1BiYjRNTHdoRFM4U3lvVTEvc1NxZlZRTU1MSHEwUkJkNjMzY0N3?=
 =?utf-8?B?ZldPY3VpamtvZXBJbmF2SXhBZzQ5ckliTWtqT3pvYlNCSXdLU2ZscENYSDZm?=
 =?utf-8?B?cmJtaFlqcG9UY2ZEUU1YcHV0RHpFOTNxNHZLOXhYekRpTE5LVmhFYzB4bk11?=
 =?utf-8?B?aC9wMVlSMzRtNkJRV0hpYkNTcWtaRk5CVElmdWg4ZlRhMlRLUkM5WDJycFFI?=
 =?utf-8?B?dis2dWkvUEQvMEJwbkgxNndOVFNoZmFKQXAwMDZaMnhFdHNMcERpODNsNjBE?=
 =?utf-8?B?aE1xem1VRmxLQjNXUVE1ZEVzQjJydFAzZndPdXdkb0JOY0NsalZLQUhrd056?=
 =?utf-8?B?eHJ2dVArRzFvTUlNN2t2YkhQODFSSUh4dS8wSFZLZC95bG01SFM0NkdVcks3?=
 =?utf-8?B?N051ZTJjamRIZHpSV3NXQ09MZ0VKem5UUTFtU0poanduRzhBTFFmTXdkV0NQ?=
 =?utf-8?B?am42ZTRhS0dyTUJmL3NieWczOWhyc0M0UEFUSFZDMXpUNGhTdk1IaUw4L2Za?=
 =?utf-8?B?WXM4dU1Ub25WMURZVW0rMUJWVmJveHh3QkNOSWw0aTI1U0FNampWS2d5RDA4?=
 =?utf-8?Q?8D6RlDeisj4JBzp++xYPI52U3q0P2OpC0OTVINj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzFhY1R1SDZkd2pJdG5MTCthSWgrdUpRWXNua2hVVXZ6K2djQ0QxVkZKTFBJ?=
 =?utf-8?B?bG1PdlBiUCtCcUJDODZDUW9mM3I5VFhEQ1VKR01vaTBGYkpRUllnUlVNM2k4?=
 =?utf-8?B?WjRHamxlVFczWEpLZ0ZBSlpBNHRwYnc4STBtc1FaaHR3UlV5NmpYellIejQz?=
 =?utf-8?B?RG1MdC9WYkxweDlYdWc1RXdXZU42bTRkWGthN0o1bmt6c0paNFFGQW1vUGZR?=
 =?utf-8?B?QW9Id3BPYjdoaENDbnErbzlJUzYvOEgvY3h6MnBXbEpvVmZPMGFzU295WE5T?=
 =?utf-8?B?Qkk3UXVVVFBYd2Z6OGovSWIzYTN4alJBNTByQlJWU3QrbENjcEV3WHFvTUN0?=
 =?utf-8?B?V3puNXJjTVdnL24zTCtYek5LTDFwbzVEeng4RXpHTVVKWnRIUnFRMmdRdldS?=
 =?utf-8?B?UEdUbGIrclhNU3NGSUozbCsvVmxhZU94RTFaOTBDTHN1anBKWEtTU3k1MSts?=
 =?utf-8?B?TXljdEF5QXE2Wi9UY2gvRURqWURoSVAwemRhZ2J5QVJocEh6dUxYQU4rZjl2?=
 =?utf-8?B?STF1VlRRbWVwY1Y1a0dMd3pvYkYyMG5JVHJLOHBnMUJocEcwTTNOdU9uOHVo?=
 =?utf-8?B?MXlYOTdhb29Sc2xCTnhqMFpzWEU3aG4wd3A4WU5GcEI0WGZ0VU1nZkdTU0dC?=
 =?utf-8?B?c0VjMDQva1N4TXpVbldWQVFidWREUGpOWDErbWdSd2NEek0rbGkxbDVPMHJO?=
 =?utf-8?B?Qk94My9PU25tY3VWbDRTUFppUzlRc2l5UDdpSnhSS21TYWpuVFhYWllOR0dR?=
 =?utf-8?B?SCsxRnF4ejdwVThMNTJaNUtwVmMwSUQvWGtFbjR0UWZSNDZpS2V1d3AxeDd6?=
 =?utf-8?B?b1E0WmkrRTB4cEE4NHJJTExjcDNxQjNlMERvZWhyRlY1eDhNektIY0g0SUZH?=
 =?utf-8?B?STBKMC84b1FRUE5BNG9iWGtQVDBsN09VMVhOMUptdTZRNWdYUGIyMTlkS1Nm?=
 =?utf-8?B?SjczSnJONXRUN2YrZzQ3b09vblNUejRxajl3cy83c3JWRG96OVF0WFQzdVRP?=
 =?utf-8?B?Z2FFQXN6dkZpTVFYK0h5VGl2UlZUZ0VaYzNjMVYzYy91ZjhtWGU0Ukw4STVM?=
 =?utf-8?B?ZTREWWZJTWw4TWRvSVlSNUd3S01sUEswalc0b3VhdFhJaGprZW9xaWRSTXdX?=
 =?utf-8?B?dlV4c1RKMDFvVkMvQ2VkajQxcE5rVzRPdmQ5cWwybjY5RTMzV0hvdmFuSk9a?=
 =?utf-8?B?Z2szY3diNFlNdTduOGU0NWJhNHg1K1pYNE9wL0dlM3kzd0Q3cEtvOVNBYzRw?=
 =?utf-8?B?d3NQL3ViZU95RTdSekVpVjdzcmNleUpQaXdxQVJFRVYwa1U1MnU3cWNVb3ha?=
 =?utf-8?B?cGNSN2ZmV3E3MTE5a25BYmYwVHc3dzZ6MFRDQ2V0OC9RK3ZKMmtBOURyUEpj?=
 =?utf-8?B?TGgvM2kzV2pYZjZLYkhFWURVTEsrclQ4WXl6Y0hwOFZCOS83SERsZlJjeEUx?=
 =?utf-8?B?U0FwcENiZWRaNHZxYldDVk1WOXQ0c3NMRWk3RTNxWFBDOFVyaUpudU5WVndq?=
 =?utf-8?B?MW94Rk5jcU50cThwcWYwbDlVTnhLMTBvU1l0a0dzTUJaZTV6NFFQRm9nQUxD?=
 =?utf-8?B?N1d5LzJ3SHozSGV3TVJDRTBEa09TL3hUNGd4bkJQYkQzSUMrNGltQzJ2NEFo?=
 =?utf-8?B?enhJQ1N6dmlZbExUeTN6RGJPajdCVWdVaEVXTmF5clMzTHlpSTk3UTYxRmw2?=
 =?utf-8?B?ZUxrSEhWT0hXUU5lbkQ0NUxyOFJqVHVaT053UjZsZTRwNHAxV1J3YS8rU3g1?=
 =?utf-8?B?M2paQjVMbkdsNVBzV1pBTzhPK05TR2l3UWlBV3JBMFR3RWQ0bnQrOGR2dVNU?=
 =?utf-8?B?SCtWcDZ4KzlWR05ORFBnWG9pR1ZOUm4yNEJiNHYzcFVGVFJBYkFqZ2Q4dzV3?=
 =?utf-8?B?TlhFSzJpdFhhZVYraTArYjdCNDFaWGoxYmQxZmd2dHlsRTg4UzJ0SHFKS295?=
 =?utf-8?B?ci9Ob2had1c5UTkwVmYrWkhxUWR1L1FUQ0dTd0R2SUdKZ0RMMnNuNVRCU1Nu?=
 =?utf-8?B?bnREb1ZDYmwvN2NoZlFYb0orNHcyc2dnS280UUcxN3BLZThhVXg0RUlvT1pv?=
 =?utf-8?B?MlVlamIrUC96K0pTN0N4WS9BZUtnRE96THM3Z2hoMldqcFF6QmdPdUY0UWtH?=
 =?utf-8?B?K2J2QWxTcytXK3N2K0VGV2s4bWZSYjU5TFlCampsNDQrbDZlVVJiMThUUFlh?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d15baef-d0bb-4c69-6abf-08dd0972a42d
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 14:50:14.5680 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X76zb+ZC/p++/+7L83rWaG8RWPBfNw2FswrHtHKyu3BP54nzhV5z6oUAxn9y1Xt3fyzuum4QzYtqmN7w4yJdQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6547
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



On 20-11-2024 16:00, Gupta, Anshuman wrote:
> 
> 
>> -----Original Message-----
>> From: Nilawar, Badal <badal.nilawar@intel.com>
>> Sent: Wednesday, November 20, 2024 1:44 PM
>> To: Anirban, Sk <sk.anirban@intel.com>; intel-gfx@lists.freedesktop.org
>> Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Poosa, Karthik
>> <karthik.poosa@intel.com>; Pottumuttu, Sai Teja
>> <sai.teja.pottumuttu@intel.com>
>> Subject: Re: [PATCH v6] drm/i915/selftests: Implement frequency logging for
>> energy reading validation
>>
>>
>>
>> On 13-11-2024 15:20, Sk Anirban wrote:
>>> Introduce RC6 & RC0 frequency logging mechanism to ensure accurate
>>> energy readings aimed at addressing GPU energy leaks and power
>>> measurement failures.
>>> This enhancement will help ensure the accuracy of energy readings.
>>>
>>> v2:
>>>     - Improved commit message.
>>> v3:
>>>     - Used pr_err log to display frequency (Anshuman)
>>>     - Sorted headers alphabetically (Sai Teja)
>>> v4:
>>>     - Improved commit message.
>>>     - Fix pr_err log (Sai Teja)
>>> v5:
>>>     - Add error & debug logging for RC0 power and frequency checks
>>> (Anshuman)
>>> v6:
>>>     - Modify debug logging for RC0 power and frequency checks (Sai
>>> Teja)
>>>
>>> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
>>> Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/selftest_rc6.c | 15 +++++++++++++--
>>>    1 file changed, 13 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c
>>> b/drivers/gpu/drm/i915/gt/selftest_rc6.c
>>> index 1aa1446c8fb0..a8776f88d6a1 100644
>>> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
>>> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
>>> @@ -8,6 +8,7 @@
>>>    #include "intel_gpu_commands.h"
>>>    #include "intel_gt_requests.h"
>>>    #include "intel_ring.h"
>>> +#include "intel_rps.h"
>>>    #include "selftest_rc6.h"
>>>
>>>    #include "selftests/i915_random.h"
>>> @@ -38,6 +39,9 @@ int live_rc6_manual(void *arg)
>>>    	ktime_t dt;
>>>    	u64 res[2];
>>>    	int err = 0;
>>> +	u32 rc0_freq = 0;
>>> +	u32 rc6_freq = 0;
>>> +	struct intel_rps *rps = &gt->rps;
>>>
>>>    	/*
>>>    	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
>>> @@ -66,6 +70,7 @@ int live_rc6_manual(void *arg)
>>>    	rc0_power = librapl_energy_uJ() - rc0_power;
>>>    	dt = ktime_sub(ktime_get(), dt);
>>>    	res[1] = rc6_residency(rc6);
>>> +	rc0_freq = intel_rps_read_actual_frequency(rps);
>>>    	if ((res[1] - res[0]) >> 10) {
>>>    		pr_err("RC6 residency increased by %lldus while disabled for
>> 1000ms!\n",
>>>    		       (res[1] - res[0]) >> 10);
>>> @@ -77,7 +82,11 @@ int live_rc6_manual(void *arg)
>>>    		rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
>>>    				      ktime_to_ns(dt));
>>>    		if (!rc0_power) {
>>> -			pr_err("No power measured while in RC0\n");
>>> +			if (rc0_freq)
>>> +				pr_err("No power measured while in RC0!
>> GPU Freq: %u in RC0\n",
>>> +				       rc0_freq);
> If rc0 frequency is there then, this has to be pr_dbg, otherwise what is the purpose of this patch.

I too didn't understand purpose of this. How this going to help for 
accurate energy readings.

>>> +			else
>>> +				pr_err("No power and freq measured while in
>> RC0\n");
>>>    			err = -EINVAL;
>>>    			goto out_unlock;
>>>    		}
>>> @@ -91,6 +100,7 @@ int live_rc6_manual(void *arg)
>>>    	dt = ktime_get();
>>>    	rc6_power = librapl_energy_uJ();
>>>    	msleep(100);
>>> +	rc6_freq = intel_rps_read_actual_frequency(rps);
>>
>> I think intention of reading frequency here is to know if device was not in RC6
>> when there is failure. But for the platforms below gen12 reading act frequency
>> will cause gt wake as GEN6_RPSTAT reg requires forcewake.
>> To avoid wake when device is in RC6 read actual frequency without applying
>> forcewake.
> If reading act_freq will wake the device, How to read frequency without forcewake then ?

Use this api intel_rps_read_actual_frequency_fw to read freq without 
forcewake.

Regards,
Badal

> 
> Thanks,
> Anshuaman
>>
>> Additionally add delay, may be delay of 1 seconds after re-enabling RC6
>> manually and forcewake flush.
>>
>> Regards,
>> Badal
>>
>>>    	rc6_power = librapl_energy_uJ() - rc6_power;
>>>    	dt = ktime_sub(ktime_get(), dt);
>>>    	res[1] = rc6_residency(rc6);
>>> @@ -108,7 +118,8 @@ int live_rc6_manual(void *arg)
>>>    		pr_info("GPU consumed %llduW in RC0 and %llduW in
>> RC6\n",
>>>    			rc0_power, rc6_power);
>>>    		if (2 * rc6_power > rc0_power) {
>>> -			pr_err("GPU leaked energy while in RC6!\n");
>>> +			pr_err("GPU leaked energy while in RC6! GPU Freq:
>> %u in RC6 and %u in RC0\n",
>>> +			       rc6_freq, rc0_freq);
>>>    			err = -EINVAL;
>>>    			goto out_unlock;
>>>    		}
> 

