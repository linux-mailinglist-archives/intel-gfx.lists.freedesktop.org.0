Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFF79DB6EC
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 12:50:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3E8310E45C;
	Thu, 28 Nov 2024 11:50:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S1yrY88a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E026810E445;
 Thu, 28 Nov 2024 11:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732794647; x=1764330647;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JKx5MPrZS2Ttu6YSGOAMGsf1GqbpAe9/nZhDyxbmvlk=;
 b=S1yrY88aeQH+Dqjv7oJ9Z/wZN1CTwb7TZHsaUY2eeJiZq03JwuAxrhuC
 6JKO2zl+/+XsBYSj8LPG5CbAVWpEhDo7bNuuPovbFmHULviMswyZjDxoa
 LSRZP4Lf2pC3qVyucfSRjA40l+L/6m98WatFMDKaHZcgqI35hAI0iw7n9
 Uc2kxELNfwMYK43DxNP8HeeacvsVawJtxbpTXTb5O9MMJWXA8h3NovLD+
 tjn9WSY7ve0AJzsNt9bEYoRlAxQEnIMy7T61vfXssejsIrguWm4Z54r6g
 RHWrhkhispcSTZe1HMw3WtIJk/IxuZtSqXjY9t0PeIHAghd7hHnn0nZ2A w==;
X-CSE-ConnectionGUID: niGpd/0dRV+6stx4Iudrlg==
X-CSE-MsgGUID: Jy90IgWuQBuUcLXd2SQmWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="36953843"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="36953843"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 03:50:46 -0800
X-CSE-ConnectionGUID: x1EBN+8qRtan9PqT4W3Vhw==
X-CSE-MsgGUID: Por/dzbCQkaPCxRbx0Hgtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="96982364"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2024 03:50:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 28 Nov 2024 03:50:45 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 28 Nov 2024 03:50:45 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 28 Nov 2024 03:50:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tIHbHtUlIbhgkeDH/B/ya+iCn7jlWEfrcj+/ghZof8hEfJZr2Ncpm141W6yVQfxoWmy4wbVSbVnSWdfiLRwjebfOQ0QwUj2Hra6xlDGFbsnULupwh2X2lVlyp6m5KlXLzfHIA5XJlAoflv1pGTdnu1TkEiULuPCaol1yQt4u4OMEP1Ft5+hFQDrmlLTXfXoTC0YVmU8o6hWWZSvw75+7fUY2nEWgxMJcih2GRI2zLtD5AKhOYBTZ9uu8TyZQc9eTfncLvLpScKjxXMcKtWBm7RDhDIr1RukqAbNogweCjXJb5OJGHBOjqDlDCTs4p8hLNnh23WBKOBAGfdEFxYmX4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IrCoWhuLSFIyUAUDx4rUPtga1wrwaKVPt9RF3UWO3WA=;
 b=otks+RVlIdCACxxexiLoW8ITjaehY6RQvlIkSncG3fg4teeG8v38EBecEZcDr2vvJpQA1V7hdSgYBPDjSuvAo5qkJ/asagKJZJ14x3R7FuzOrUxibF19YTKSKjPzfCvreo29KiopRNsyLnt6hQHqlhLiEl+o25XnT0Fkf+QTjMJslHs9Q+ejCNE9f1m+TvxaOPmED2aCVTBTJxw4HRnFwj6JruhCj5SsBbXnd18l3Oi7fpRNQFZAXH0u6JenHF5G1VSS+kkx4kskVlBgKwC4xEWnAlwEvNTKnSsaBRBG0ZZQNPdTIlX6lLwERzGPwDxNVJZVrpOyPrt3hXsKMQSsAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB8168.namprd11.prod.outlook.com (2603:10b6:610:186::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.20; Thu, 28 Nov
 2024 11:50:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 11:50:42 +0000
Message-ID: <e5097d78-a55a-48e8-bf01-a1ec930f8caa@intel.com>
Date: Thu, 28 Nov 2024 17:20:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/hdcp: Change log level for HDMI HDCP LIC check
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20241128063427.1792509-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241128063427.1792509-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PEPF000001AD.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c04::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB8168:EE_
X-MS-Office365-Filtering-Correlation-Id: 6151a8a2-78a4-4336-f21d-08dd0fa2e2f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UkJXTXkwZnZhbGxIa2lNNWJsa1YzaDdIWDdkbGROcDJKQm5CZHl0NEc2T3Bh?=
 =?utf-8?B?akVhT2JqUW1XZjJ4K2JmazByRndaRWFaOVd1aktxc0ZXbzNvanRpTENQMEJu?=
 =?utf-8?B?SFlzWEZMRitybGUrRUtBdVlEL3BPTFl2a2RWSmh1YWtCRUNrdGxMTy9pRHRp?=
 =?utf-8?B?Nytza0RpQUM5N0FvTFBvbkRqaDJGR3RIVDNobmE3MERnVnE5TkpLOE5iL1k3?=
 =?utf-8?B?SzdpRzVpQkdpM0RXeURSUS9OVWVRbWhuWkM3cHNiMENpK1BhdTVvK0h5ajB4?=
 =?utf-8?B?RURDcUU4OWpaL0V4eXlvTnV2OE9jejNQaE0zZzNTVFV1a0NoU2xGUzRFakJL?=
 =?utf-8?B?YU4vc0xBNzdnQWxDV2tzU3BkTTB6L2ZsYVpoNXBNVnFCTEtpV1pXRGZjUjky?=
 =?utf-8?B?U2F1Uk8xUVFsdURsMkhwUVU4Q1FHSEtnc0xlY3BtUnlkMTdVczFxdDRObFlo?=
 =?utf-8?B?NzdoN3ZtREIxcElIRmMvMS9XMFgxY3g3Zi9zcThzK3pPOUdxS01mTXFmcHJV?=
 =?utf-8?B?NTAycjRBVXB2amd3cUQvcmtFRGlhd01NNjQzOVFWQ0xYTzZSelRYWU5aWHVI?=
 =?utf-8?B?WDJnZC9UUUg5Sk8zaSt6WngrUVBPY2s0REgyZXR6RkdTdE1lZ3dYbjc4Q0lt?=
 =?utf-8?B?Q2lpWng1R1JuREpqNmxKbEoyS2VKdGxIbnRTZ0czRlRERmlmaUFuVG5FckRj?=
 =?utf-8?B?RlBkU2FUR2RJR0pidDU3NnBsVmx6eGhMaSt2YXdvMndVbWhQOWg2Zm1jc2hC?=
 =?utf-8?B?aHZGOTNpbXdKSlBrUnZxZFFZQnFFVEx0SFVZV2VUMlNzT0JIOW5MMzc4aER1?=
 =?utf-8?B?TktkbEVmUHFaa0tOQ3FxY0ZRbW80RUNQNUFUL0hqVGxPUG1rVy9rem1jQTZJ?=
 =?utf-8?B?emVkS0Q2akQwY1gxV2hDUUdxNU12VEYreUYvOXFTdUJzRFM2OERoQTE0MUJH?=
 =?utf-8?B?aHB1c0VEV1FBS012aU5KbTFYUndSekt6Ump4UTBNSUNjTkRtbkNYOEN5NTdy?=
 =?utf-8?B?Y0VxS2xRT2RzazlVRWRiZVZXSC9RbGhTRmYrT1NrMTd1V3doZ0FIelRBU2pl?=
 =?utf-8?B?Q1NnaVREVElDRWd1djh5a0RlQnRRVWlBbFVJc1J6aUZuTmNTVm5FaEM2N1VU?=
 =?utf-8?B?cXdxZ0xDeEx3RTlXMEw4RUFnOGhoUTFweDBCMkdod3l4eStGM0ZhQ0NpVjJQ?=
 =?utf-8?B?ZEF6OENOL3RORXBuOVJRLzlUZ2pjaDcza0hPSWRvb2ViemE3ZXNtcWFxeVpa?=
 =?utf-8?B?WVk3VGljNUFyVlkwU2h1enJIWXlkRDE1WU5oQ2Q1ZTY5N29aUzQ0N05tdjZQ?=
 =?utf-8?B?aXowQThlRU9NUExTRnEveHhVMkJuSlhyaDZlK2NndWR6ZHcvRE9XTFEvZ3Z5?=
 =?utf-8?B?OGxYUyt1anNtZXQrY0JHVnpXQlhJUmlYSkVONHRpS2lyWjc3TEl2MkIzUURq?=
 =?utf-8?B?NUJJcEtkbVBRamVHbzhzdExrZGRWQ3lxeC9PS0dBN2FFTHRvTi9tQkw2U3lM?=
 =?utf-8?B?dnlJRVhoSnJoL1dJb0VMQ3lyS0Jwd0V0bUFIWWhTUHN6bm1Cd2d1ME1EYjRw?=
 =?utf-8?B?SW9yMm1OL0RycWh4Q2x6bmVKQnFqOXRESHM2R2o2RTBaamtzWW9DakxMcUo4?=
 =?utf-8?B?TUVtOWdhTTNqZHFsMHAwSlAyWC8rSjIxdzNJbTNLL3JzY1h5cGtCUlZjL1p3?=
 =?utf-8?B?NithcXV3cXBXRFZaWTdOTVJ3QlBhRHM0aTMxRGt0ZThuYnVBdTNjcjN2dlNQ?=
 =?utf-8?B?R2ZCME8zdTVQa0ZUb3NjWTgwR2VTS0JIKyswSVNWdzVhUGRwMXRORm1Sa2VD?=
 =?utf-8?B?VWRGOHFSK1djaDBUbWRUZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFFTajE2N2Z6SG53TkdOK1o2ZnMxN0MzTXc3eTVYaDFRQWNIdkpPZ244M1JI?=
 =?utf-8?B?eVM5V2JiTmJmOWxZYzFNc28yd3VaaDhZQ25rdEtYdjNaYWxmTU9raGpvUWY5?=
 =?utf-8?B?bEg1NzJINE5SOXd0eGdKSTZvTmZVNDhpOUQ2Snk2Y2pPc214RUd5L3I5cTA0?=
 =?utf-8?B?TENPSXg3OVpZeGduWXcrRk9jZnpMUHVLN3VqL1NlVWhXSklHMnpVTHA4ZXJQ?=
 =?utf-8?B?dTNreUVBZlBId1kyRXpEWmNONUpQWGVMRy9WZXFvM0J3dW9GbEYwTVF2U0s3?=
 =?utf-8?B?MVlRSXhxMzREVVlLL3F2RDhiK0Y3aDJFczNPR2JqclQrZGUwUVg4MTN5N1ZZ?=
 =?utf-8?B?WTV5K3V5Q0IxWEJtWFF6c3A3NFVhcHJNRnNxZmZQWDlhUWU4QzFZa2lSbDVz?=
 =?utf-8?B?OVNRN3daTlVGOGkyOFZnZGQrdEROYjVSM1BUUS9zd3RucElhRUZIZVY1Mlor?=
 =?utf-8?B?RUxIMG5YVWZCbzJJYTN0d1FsdFM0OEYzZlJZTDRyQkNNc1JScmNzOXVDRHAr?=
 =?utf-8?B?c1VnL3A3RVNVaHFxa0wwbUV5MXdBSFNWcnphVGRNVFlFbkJQTlJ0NzBCYmFq?=
 =?utf-8?B?RFNKVCtkc2ZtWXpnY0xWNTZEOXNUS3VLdmdaVTU0c0pRUm13Qkp4SUJhWVJq?=
 =?utf-8?B?bUxBU2RTZjArTjE4UnJPK0tMZFNxUGk1NzEzdktuYVkrWnZMK1hpSUNROW5L?=
 =?utf-8?B?OFk0dWZnSUZHUUgwamFXUjU0TjFJVVlCaGVFOVB0ZGczWDR4K2MxdExXY09R?=
 =?utf-8?B?SFNpV0FvR3lmMmxpTGxzR0lCeFJIL0lORnUvZkh1RXNyK1FnVjBpT3hZcjl3?=
 =?utf-8?B?ZXpycjNKbys0SUgvZjdiZ2FrdmJoVzJGUjc1emN1NVY2aENMcEdvTUkrdVJn?=
 =?utf-8?B?NzZlcitrMXVhQklwZ3FJR1ljMEpRV3NaVGc3dUw2S2c0eVZncU1kMzZWb1hD?=
 =?utf-8?B?VDdubURJb1dlcG1NUXBqaDA3c3JMdHRqSm5Ca0lkS1Z5WnlpZEorY0lUaGVo?=
 =?utf-8?B?Ym80R2t3eFYwRnpOWS9rcjRTMXpaNWNhRGRuUnRjWDRTWG9GSEg4NkUwM2xk?=
 =?utf-8?B?ZW91VnVMSEhrcFhyOHZNUEpnRWpLbEg0Uk9iUDJIVzZKOWxReEd4c0UvNHNj?=
 =?utf-8?B?ekNxc0g0NitEMlRPL25nVlkvMGRVZTEyZi96cncrVnRXbTExaVNMRmNya0N4?=
 =?utf-8?B?elQzUjhNenBmVFJrazJ4Y29SZEY5akNYTnA5MkJ6OWcyb2loQWpUY3FNeU56?=
 =?utf-8?B?QVIwMkUrVnpEaVpmSFBPQUZYbC9DaVRsUHdpWnQyTzFtNHQxQXJ2Tlp2U0NF?=
 =?utf-8?B?ZStkby9iWkpVbmtNVThTdlExbzVJOGVwaXhWMVlJYkZvRnErVnJybXQ4em1y?=
 =?utf-8?B?Tm15UnpEWTlNK0xqL2RqTGQ0K0NRL3ZMWVhFSkNoZGNkZVdzeWJaamdkZ3Nh?=
 =?utf-8?B?N0czaFB1R0xENEhDM29sR2t2VExNaWJSb0tEZmY2bDcvVUxCbmxRbHpPdGlN?=
 =?utf-8?B?ZllKVUFja1Y5TWxXSHBxRXFxUG1KdWQweEVSbkNSOGdYSURnWDZOay9Lckxt?=
 =?utf-8?B?VkNjRlBaZVNDZGorT1h4ZkN3THJtTnhwY0RKM1ZCVzRHTDhXQVBwSGdxTjVa?=
 =?utf-8?B?dEE4OWt2eHEvTVhvY1dOSlFUMk1XcE1mcUF5TTE4UlRJQXp0ZUlZS3hibXFa?=
 =?utf-8?B?V29Cdzg3MURlTDJKcGhBWFhCT2laZVJPUXVnOERNVmdzTWZ4dlNMWHMrSW1X?=
 =?utf-8?B?UVUzdjk0aGFmTW43M3kxcDY4RVFtQ2NmL3BKVEhvaDRtL0oyOXAzb29mZWdK?=
 =?utf-8?B?RjBXZ0J5M25zcFpSWk5YQ0dMaTllbm1LVWZXWTUzQXF1bitMQ3JVYmZ2cUpH?=
 =?utf-8?B?RzZwNkp2ZjhKZDd3YzdrcjhHQUNIZTc2RUc4WDlsTFpPL2srYnAvR2YxVG9x?=
 =?utf-8?B?MVcvcGgwTXVadktBWXRhcmd4YVhFQlR1a0Rid09iajh5Q0dmNVE3VjgycGtI?=
 =?utf-8?B?amJxeitlSDdXMkM2UDl6aHFzOXFJUnNMYlp2L3h6SWROMkVOQjFJcHdHTVVm?=
 =?utf-8?B?Ri9Ma3hUaUxMNWlFa3hiRWY4a2VBRk0yT1VXTWlnQkxkQThMdG1hRmFKbDBm?=
 =?utf-8?B?N2Y4ajJXV2hzNmV5ZExkYjMzVGV2VTdiT1drS2dQRlUvcGVoZnhJcjdJTFpH?=
 =?utf-8?B?RlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6151a8a2-78a4-4336-f21d-08dd0fa2e2f8
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2024 11:50:42.6705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4oixj+hNz4TArloOT6w4Kst4+vNP//1p94cbI/urdQV+7ciD/IuIOGqcNyeupY5zXgnBJpackTuXOiSHxgFsN41NZ3G0ySgt9n3ymPKAy2s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8168
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


On 11/28/2024 12:04 PM, Suraj Kandpal wrote:
> We don't need to shout out loud if there is a Link Integrity
> Failure. This does not mean HDCP has failed, it is expected and
> taken into account in the HDCP Spec. The real failure happens when
> we are not able to reauthenticate and get HDCP running again for
> which we already have the right logging.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 23c270a8c4aa..fa679b5d5510 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1607,7 +1607,7 @@ bool intel_hdmi_hdcp_check_link(struct intel_digital_port *dig_port,
>   		if (intel_hdmi_hdcp_check_link_once(dig_port, connector))
>   			return true;
>   
> -	drm_err(display->drm, "Link check failed\n");
> +	drm_dbg_kms(display->drm, "Link check failed\n");

I agree, we do re-authentication after this so this is not an error at 
this point.

We already have below debug message in case check_link() fails for 
either hdmi/dp in intel_hdcp.c

         drm_dbg_kms(display->drm,
                     "[CONNECTOR:%d:%s] HDCP link failed, retrying 
authentication\n",
                     connector->base.base.id, connector->base.name);

Perhaps just dropping this message altogether will be better.

Regards,

Ankit

>   	return false;
>   }
>   
