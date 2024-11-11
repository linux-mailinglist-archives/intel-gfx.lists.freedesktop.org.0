Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD169C4603
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 20:40:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA0210E528;
	Mon, 11 Nov 2024 19:40:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mKNDFaO5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51A8110E528;
 Mon, 11 Nov 2024 19:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731354008; x=1762890008;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=lMGWCyC5CktOJ2i57Zox09HzK7iLVst3o1Sj4YEXpfI=;
 b=mKNDFaO5i6AF0AvvSl0TS4rhNawZM0rn01/nTorLaV5pXQ1N9VyfuyCC
 U+8t/rx7IM+7mnPGSNlYxMnSlXvx0b/u7ggx4PS8MXWYOoIDfbQyCy8Xm
 b3cV+x9YEHFOx7nrwY98DC/e0XHbLGwvzDrREi7bZIxxZuVXgFIyYv9bG
 ZOpox+8iRzCPeSeM1D+wxVvFi8cjNfSQYfDl5p0f4/ZLeoB5znmfBEgZL
 Mn+pPHpuLxTzYyHUwftau/QkZN6T4QXUL4arRFYMxw0P6aRh+qibTDYwh
 9Wg5amgbbbxXvJ84vrZMa9KVxQEzqApZZ4nLWfGmmjp0jkqsfz01o0poK g==;
X-CSE-ConnectionGUID: PgcmNL31TTO9+MSno27EtA==
X-CSE-MsgGUID: FFo5mHMuQb6EfbDYrcDpgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="42578096"
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="42578096"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 11:40:08 -0800
X-CSE-ConnectionGUID: ME6ooYmyQU6mupred3a2gA==
X-CSE-MsgGUID: BJePm1sfSde8/YPc9VU9lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="124620545"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 11:40:07 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:06 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 11:40:06 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zVmfyLW0l+zlQWQfJB//x0pfNQaU9QCMZN1E+VlCywC4dVzK2csMrsPlK4gxTLGBspcP9YbsQ7G+t+gTcQelRohQt8E07YjEnlHCmcHARM3e8Hf1QlzMbftiws1zM/qsFcV2QmseGfegZMQhN0Ua/4qhThidVteKDHzUEI5JuLB5gkPArpSFuyZ1/uTMcvz9s/81kcUcny8TFn3tOQiWJFjsV6dh2wFKych9oG+NenFykkGRNc7SYMQwnTNcHUJCk4zjFMJubBI4zYwjU3kgpSO7LoaPRGvkcjgjHHG6HbkFv6J3U+XDn+kZRx4oFDjJqdqsfrLRHpllpHHCHXu2Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YZ+cIfdkSdVbMdciniTFBNDOF/y4TXB7ClXjjcTslss=;
 b=JfNjgQkZZsCWmBQBZPtFNvZjMyrvAB3WCIMMtLlzprAWXyqikNiGcZw2NzPGSxWyXH5NUVpWMQ8nNt7MB5kIj2ug78hId0S2p/+l3h11DjzCyoeJBXjeAzcKSnNzPj4d0RSu5C88yfqAcOv1FUzIpX1iCNuFyymEc09UBmQYcombKbP0t5kXq94tv2eALsB61ci7cmZRylPOw1gmMN08940UcWhsJQOR65jula78olJG7UseepCp9V3SQrXCcR56Eq6k73SnTrZnWUe8NOfwc3bYFepdXKwBGvq5HuVCNIHz+hI/GFJNaWRoYWtFr72B1N4SVmG7BzS70GIJg9Sm0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ1PR11MB6228.namprd11.prod.outlook.com (2603:10b6:a03:459::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.25; Mon, 11 Nov
 2024 19:40:03 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Mon, 11 Nov 2024
 19:40:03 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jesse Barnes
 <jbarnes@virtuousgeek.org>, Jani Nikula <jani.nikula@intel.com>, "Jonathan
 Cavitt" <jonathan.cavitt@intel.com>
Subject: [CI 2/9] drm/i915/display: Convert i915_suspend into i9xx_display_sr
Date: Mon, 11 Nov 2024 14:39:35 -0500
Message-ID: <20241111193947.128871-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241111193947.128871-1-rodrigo.vivi@intel.com>
References: <20241111193947.128871-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0114.namprd04.prod.outlook.com
 (2603:10b6:303:83::29) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ1PR11MB6228:EE_
X-MS-Office365-Filtering-Correlation-Id: f75fb228-3be6-40c5-cc57-08dd0288a337
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MStnMVFPaEFUNXc3cFlLa1ZadmtqNzI0RTVadWlab1pkRFRuWVpUdDJzSEUz?=
 =?utf-8?B?MGltd3dqaE55THFlZTY4Y09velBRQzFMRDRCcEpKTUhTbnB1am5ocFlVYnQv?=
 =?utf-8?B?K2I5WVA4UWFPUzFIZVdoWnQ0aUU4cE9aTnpqL0NTemtlNlRGKzRUd2lIREIz?=
 =?utf-8?B?dDA0OXJrS3paSlJuQmRwNDJhY1k5aEY0dnNIdCtSTUltYmZNRFFHb2ZqOWtZ?=
 =?utf-8?B?bHQwNzhhKzk4UkkrSlE3QWVOQS9FRWdVOHQ0cE02cTFWc2dKd09yVDQ5SFZy?=
 =?utf-8?B?Mk12NTdOSVhBNFNNd05qRXBBcm5vcUZPajYzNzA3eDF3VkhwZ2MvbWQrRWNj?=
 =?utf-8?B?RTdWNjNGRDAwem9rc0pkRTlaUW54amZPZ1p5eHA1eDFBNEtwRmJKS0JDalk4?=
 =?utf-8?B?Rm9mNVZxY3RsOTdsUUNIS1l0WHJFY05BaWdrc3pFZEF5Z3R0clNvTkdaUVNu?=
 =?utf-8?B?ZUNjOFZGSlU3STRZOGpVc0h1SUM4amcvVU1EZ1AzNldQSTl2WWZmNXU0Ulh4?=
 =?utf-8?B?NGNLZDlad0ZXWUVKS1owNHBBUnpSRG9MT0RKUkxzTnZTb1BKcVNzZlhmbGdh?=
 =?utf-8?B?V0hUUVk3QVhOQ3c1T3BqOW13VFYyKzFiSWovMUt5Sk1SVG5EWG0wNWkrYXJV?=
 =?utf-8?B?NUlRUnRYWjlXc1N5S1BCbzNNZWFNeHViRk5DdWlMdkNsendQVzhwalg5UTF1?=
 =?utf-8?B?cng3MzAvaUpWSW5DQXhKcmQra3FvN1p5SWE2aWhDdy9jekd1TnNLMzFrRmJs?=
 =?utf-8?B?ZDNhWURQdnRIdWxnZWdjR1RnNjZVWWFad281WHlsNVNnUHl4cFRYQWRCNFpq?=
 =?utf-8?B?bFF5M0RIeHEvRjlhcXFPUEVZOTlDQVpVL2dQSkczajNpVHZxTDZ6Y2JMOURV?=
 =?utf-8?B?TlJvZWlpWm5KZEZFSEpCL3Q2UThVa3R5WTNSRm5zTXh6UTJ4TXdrNGVnOFhn?=
 =?utf-8?B?RzhoNkFIYUE3K2dXNXg0NkhUd1NHQ2pNYWkzaGR6SDZRai9kU2ZXMllPZitM?=
 =?utf-8?B?cGdKeUsrVlM1endZeUUxUEI1OWlLMVBVOXQ0aWJ5KzZQTzN4Y3pEc3BJdGxM?=
 =?utf-8?B?UnZIVkp1M3VuMEcvMVd0NmZKUS8yN2tRUVZpcVN2Qy9mNThSaUdqekZBT1d4?=
 =?utf-8?B?NDdBT0dVSDVQVFBjSE5YVEhITEZ1UUdJdFRZWjY3SGJrNnRmWEJRMFNBUEdz?=
 =?utf-8?B?bnZkRVVHdENIQi95WW5GenUybVA3VGRvS1grM1pzMzFvbzlCby92dlRCMS85?=
 =?utf-8?B?cFg0d3REYm1oU0xWSC9WVDRhUnA4WldGK1JNdnZTUENsZWNyeVVmQmxDUENT?=
 =?utf-8?B?TlV3TzNxd28za2RCaUJNcjhDbU9JK0hEc1hsUmZVVkplMG5LcXVrZi9kS0ts?=
 =?utf-8?B?a1d4aUZKRDlid216SFNrM3pNZTdJdS9XMFBZZndWM1Q1T2dnVlNueTBQeGtv?=
 =?utf-8?B?alJvTmdtTHhseUJNQW1lRWxNUXA1cGU2UktsdUNnejBxUm9XTzIxbEI3U0dW?=
 =?utf-8?B?aU1tcnJscmMxNkdoV1lSUmdYQ0lCT0k3Wmt1dWFpT3drM1AxckVULzBlbVl0?=
 =?utf-8?B?VWs2OSt3eXFpcmxZQmN5VURReEdmeHpIQjNEcEZESDMwK2JXZFBwMEV6RTFo?=
 =?utf-8?B?NENrcEdiNmtDN0FJZ2RKNkNoYzhUaHBHMWZMWWQ5dHk5NUswQ24rQm1sQkNM?=
 =?utf-8?B?REdnbGE4TVM1ckF2OFRZdEZrWmpIU0ZWRmREN3I5TmJVMmxZaWNNTFJRZmNC?=
 =?utf-8?Q?EBYJUxbayARu1LtTUI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aW9iT3FXbnpLSEMxOGdxU0VSUEVWbDhPR3kreG92cm1SOGRWOFl0RFRqOWRs?=
 =?utf-8?B?ZHlVcmV0QXFDZytZcjFEN09zS21tS2s4dG52M0F5cGlkcUJZdlZpNEFIYk5F?=
 =?utf-8?B?K0Ewa09aVnR5QmNKQ1Q2aXFFcms1cndFUFFpTGIwS3UwSEExaitxckxiYVlJ?=
 =?utf-8?B?eXQyYW9MbzF4T0Y2N29SU2hydWZLSEs3aTA0SDJIaTA2ZU4rbkwrWGpJYyta?=
 =?utf-8?B?M05iSlhCYkJDTE0ya1ltTC81WFVpMzFFTUwvbzhWNTg1b0NXZE8xUnMzVEl2?=
 =?utf-8?B?N0FmeWY0RG5iR0p0N0pvMEVQRUxiRTVXYVB4aWEwYndmSHZXMlJBSnQveWJL?=
 =?utf-8?B?WnBJS2MzQ2kxLzFEdU1rTkFJR3lyVDdJYldpMmRROWpIelY3Z1JJSHh4aHlq?=
 =?utf-8?B?c1NrYXVDcEFPQnBudklFRzk3R1ByM0pHQ2U1MEVqbEFPem14ck9BTWU4V1Js?=
 =?utf-8?B?aHZubXpEbDhaclU5eGRjU3Z3YUJlYm5YY0xDbXM1MFJaWk1ldDl6citLUmlG?=
 =?utf-8?B?MWJwSjJFbFkrOWJzcXJMeDlZK1VSUEFIL013MlJVcWlmdTNJSnNTd0lXcUFo?=
 =?utf-8?B?K0szWXk2ZHAvWlR1K0lyVm00MmFoWWJZMFNPZFViRDZuN2liTi82bU1pa3hM?=
 =?utf-8?B?c3pISUw4eXJ0bllXMXpOYkExM1o4ODFVelF2eGFaOWd2MGY2Ukk2TVdZUTUz?=
 =?utf-8?B?QVpaSlkrcDhaR1pLQnpJenZmSjgxa0oxalpBbXN5UVEzOGJHQ3drbDRMbWVo?=
 =?utf-8?B?cFFZSzVvUDd3N1RiQmJBWXk1KzhNZ1B0ZVNVQ2dOd0lvdmsrcnJ5SDRuRE1U?=
 =?utf-8?B?bkdFWHoxZDNpZkltaXlLZm1SNG15SDlKN1pTbFVDTGxPK3AzM25SamhYNHhG?=
 =?utf-8?B?Z1VUYml2NGZheDF2Z3VGSXFsSzZXc2pkaEoya2RJTXN6QmRBcHZRLzk1MWxn?=
 =?utf-8?B?cEoxQUhPU3ByZ1JKNnNiTCtTU09UYlV0TXAyL0E0azZvTzFSREs4bWJhYzJw?=
 =?utf-8?B?Y2Nna0thWDcrNHBNK0tPOSs1NHJFaExyZWVzTDUxaTgwdzJLTzNzL2p1ekx3?=
 =?utf-8?B?ODdsNzNWdTlRcEFZbTRzd2tnQS9OZDlLNXNsYVVOdFJYNTRMOWhYWGc4ZzY5?=
 =?utf-8?B?WlJnS0hmalV4cDMzM2xNbEsrUk1IR2JzanBlaC9Sc2JOWEtRa1JvVmRyQnBx?=
 =?utf-8?B?NW9tbXpBYWpNNDFMc1kraEc2SWY4K2hTUVoyU2pzWHdYZzZQUWxFM2plSGNw?=
 =?utf-8?B?SlZncCtGckhaQzJPTk5ZTjR0L1NUWm9yTnVGSUllYTI4UTJKRUd2NkFUS0hv?=
 =?utf-8?B?b3UvV2FObUxtbEFvSlRpR0tYSm1uclJRU0xqMStZMWRtSW9iSDZmcmxERlFC?=
 =?utf-8?B?d3F6bFRpdXQxbTVsbmYvdEx3YzdKTFNpWVJYWmVNeEU5Njhtc05sSFVpRDht?=
 =?utf-8?B?YklSTWk1NldXWnpNWXMxZGZzTHRiNjFxQTV3VkpDWnZrcTJRQW8rbGJIa1FL?=
 =?utf-8?B?T0hXb2JoNVkzTHMrY2Y0MFN5R2NNUUNEcjJWNXQ0VGFpZnByZUhwaUFrYzFF?=
 =?utf-8?B?Sy84b0xZUTFpZTdkVkJBdUJGdW11NnpBMUdxc1VUTzhsNmRYLys5c1V4ZSt1?=
 =?utf-8?B?SC83M1hpY2ppNjhtY095ZFF0aG1lYncvMU03eVl0L005anRUVU5ZWXV2UWZF?=
 =?utf-8?B?ZjlpYTJIdlZ5NmF6L3NvODJWYTNKUU13UzNiVVJ0STBicFRWaUhvYk1nMC9p?=
 =?utf-8?B?RS8vb1lvQUZVNjI2SU1XTkhsWVE5ZldXNUJkR2ROdEN1OXNldEpvREQxREdi?=
 =?utf-8?B?N2FJaGRRS0JoYzBqbVAzVUdGMytxZTR2SGI1bElXVEs2T29IZ0NtMVo3Z0dl?=
 =?utf-8?B?QXg2OUhGVnFXUFdoK2gwOFZNdmV4emgwRWkvbTFUdjRqbm1IMks0TE14aHhz?=
 =?utf-8?B?dlNhRldRZ3QzOUo3R0t1aUpzd2lvenhHRU1KeGRlVEJReGlvcURHeXVGYmlC?=
 =?utf-8?B?dkgwaVFkZEdUUlBuRnlpYWpBUk0zQUkwL2RuL1BxZ0FsaXZlelpoUVZobmpQ?=
 =?utf-8?B?MXBVcmFiTlVGZXcrR0Urd1NEN2JvaTFiVTU2UWoxeE00USswYlZmMWM0Q3d1?=
 =?utf-8?B?LytpeTdKUmN5d0NhZ2VqbG1yMng4NmRaOUV5RlRBMVVNZVZob1Jld2ZDdHd2?=
 =?utf-8?B?bGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f75fb228-3be6-40c5-cc57-08dd0288a337
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2024 19:40:03.5752 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kzuca8JcoSq7zgT4iaKHlamk29f41DUb2Gpd7OzFFHwqhNk3KIprCraCUvM0wphJVjO2n2wnAxLxloBtdTEBDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6228
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

These save & restore functions inside i915_suspend are old display
functions to save and restore a bunch of display related registers.

Move it under display and rename accordantly. Just don't move it
entirely towards intel_display struct yet because it depends
on drm_i915_private for the IS_MOBILE.

While doing this conversion also update the MIT header using
the new SPDX ones.

v2: Fix Makefile and include (Jani)
    Removed vga and gmbus (Jani, Ville)

Cc: Jesse Barnes <jbarnes@virtuousgeek.org>
Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   2 +-
 .../gpu/drm/i915/display/i9xx_display_sr.c    |  95 ++++++++++++
 .../gpu/drm/i915/display/i9xx_display_sr.h    |  14 ++
 drivers/gpu/drm/i915/i915_driver.c            |   6 +-
 drivers/gpu/drm/i915/i915_suspend.c           | 135 ------------------
 drivers/gpu/drm/i915/i915_suspend.h           |  14 --
 6 files changed, 113 insertions(+), 153 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.c
 create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.h
 delete mode 100644 drivers/gpu/drm/i915/i915_suspend.c
 delete mode 100644 drivers/gpu/drm/i915/i915_suspend.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 31710d98cad5..e465828d748f 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -30,7 +30,6 @@ i915-y += \
 	i915_params.o \
 	i915_pci.o \
 	i915_scatterlist.o \
-	i915_suspend.o \
 	i915_switcheroo.o \
 	i915_sysfs.o \
 	i915_utils.o \
@@ -220,6 +219,7 @@ i915-$(CONFIG_HWMON) += \
 i915-y += \
 	display/hsw_ips.o \
 	display/i9xx_plane.o \
+	display/i9xx_display_sr.o \
 	display/i9xx_wm.o \
 	display/intel_alpm.o \
 	display/intel_atomic.o \
diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
new file mode 100644
index 000000000000..4dd0ce267994
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
@@ -0,0 +1,95 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "i9xx_display_sr.h"
+#include "intel_de.h"
+#include "intel_gmbus.h"
+#include "intel_pci_config.h"
+
+static void i9xx_display_save_swf(struct drm_i915_private *i915)
+{
+	int i;
+
+	/* Scratch space */
+	if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
+		for (i = 0; i < 7; i++) {
+			i915->regfile.saveSWF0[i] = intel_de_read(i915, SWF0(i915, i));
+			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+		}
+		for (i = 0; i < 3; i++)
+			i915->regfile.saveSWF3[i] = intel_de_read(i915, SWF3(i915, i));
+	} else if (GRAPHICS_VER(i915) == 2) {
+		for (i = 0; i < 7; i++)
+			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+	} else if (HAS_GMCH(i915)) {
+		for (i = 0; i < 16; i++) {
+			i915->regfile.saveSWF0[i] = intel_de_read(i915, SWF0(i915, i));
+			i915->regfile.saveSWF1[i] = intel_de_read(i915, SWF1(i915, i));
+		}
+		for (i = 0; i < 3; i++)
+			i915->regfile.saveSWF3[i] = intel_de_read(i915, SWF3(i915, i));
+	}
+}
+
+static void i9xx_display_restore_swf(struct drm_i915_private *i915)
+{
+	int i;
+
+	/* Scratch space */
+	if (GRAPHICS_VER(i915) == 2 && IS_MOBILE(i915)) {
+		for (i = 0; i < 7; i++) {
+			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
+			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+		}
+		for (i = 0; i < 3; i++)
+			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
+	} else if (GRAPHICS_VER(i915) == 2) {
+		for (i = 0; i < 7; i++)
+			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+	} else if (HAS_GMCH(i915)) {
+		for (i = 0; i < 16; i++) {
+			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
+			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
+		}
+		for (i = 0; i < 3; i++)
+			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
+	}
+}
+
+void i9xx_display_sr_save(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	/* Display arbitration control */
+	if (GRAPHICS_VER(i915) <= 4)
+		i915->regfile.saveDSPARB = intel_de_read(i915, DSPARB(i915));
+
+	if (GRAPHICS_VER(i915) == 4)
+		pci_read_config_word(pdev, GCDGMBUS, &i915->regfile.saveGCDGMBUS);
+
+	i9xx_display_save_swf(i915);
+}
+
+void i9xx_display_sr_restore(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+
+	if (!HAS_DISPLAY(i915))
+		return;
+
+	i9xx_display_restore_swf(i915);
+
+	if (GRAPHICS_VER(i915) == 4)
+		pci_write_config_word(pdev, GCDGMBUS, i915->regfile.saveGCDGMBUS);
+
+	/* Display arbitration */
+	if (GRAPHICS_VER(i915) <= 4)
+		intel_de_write(i915, DSPARB(i915), i915->regfile.saveDSPARB);
+}
diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.h b/drivers/gpu/drm/i915/display/i9xx_display_sr.h
new file mode 100644
index 000000000000..30383758f97e
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2024 Intel Corporation
+ */
+
+#ifndef __I9XX_DISPLAY_SR_H__
+#define __I9XX_DISPLAY_SR_H__
+
+struct drm_i915_private;
+
+void i9xx_display_sr_save(struct drm_i915_private *i915);
+void i9xx_display_sr_restore(struct drm_i915_private *i915);
+
+#endif
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 420b54b61569..7ded0f4675a0 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -45,6 +45,7 @@
 #include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
 
+#include "display/i9xx_display_sr.h"
 #include "display/intel_acpi.h"
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
@@ -94,7 +95,6 @@
 #include "i915_memcpy.h"
 #include "i915_perf.h"
 #include "i915_query.h"
-#include "i915_suspend.h"
 #include "i915_switcheroo.h"
 #include "i915_sysfs.h"
 #include "i915_utils.h"
@@ -1052,7 +1052,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	intel_dpt_suspend(dev_priv);
 	i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
 
-	i915_save_display(dev_priv);
+	i9xx_display_sr_save(dev_priv);
 
 	opregion_target_state = suspend_to_idle(dev_priv) ? PCI_D1 : PCI_D3cold;
 	intel_opregion_suspend(display, opregion_target_state);
@@ -1171,7 +1171,7 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_dmc_resume(display);
 
-	i915_restore_display(dev_priv);
+	i9xx_display_sr_restore(dev_priv);
 
 	intel_vga_redisable(display);
 
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
deleted file mode 100644
index fb67b05cd864..000000000000
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ /dev/null
@@ -1,135 +0,0 @@
-/*
- *
- * Copyright 2008 (c) Intel Corporation
- *   Jesse Barnes <jbarnes@virtuousgeek.org>
- *
- * Permission is hereby granted, free of charge, to any person obtaining a
- * copy of this software and associated documentation files (the
- * "Software"), to deal in the Software without restriction, including
- * without limitation the rights to use, copy, modify, merge, publish,
- * distribute, sub license, and/or sell copies of the Software, and to
- * permit persons to whom the Software is furnished to do so, subject to
- * the following conditions:
- *
- * The above copyright notice and this permission notice (including the
- * next paragraph) shall be included in all copies or substantial portions
- * of the Software.
- *
- * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
- * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
- * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT.
- * IN NO EVENT SHALL TUNGSTEN GRAPHICS AND/OR ITS SUPPLIERS BE LIABLE FOR
- * ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
- * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
- * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
- */
-
-#include "display/intel_de.h"
-#include "display/intel_gmbus.h"
-
-#include "i915_drv.h"
-#include "i915_reg.h"
-#include "i915_suspend.h"
-#include "intel_pci_config.h"
-
-static void intel_save_swf(struct drm_i915_private *dev_priv)
-{
-	int i;
-
-	/* Scratch space */
-	if (GRAPHICS_VER(dev_priv) == 2 && IS_MOBILE(dev_priv)) {
-		for (i = 0; i < 7; i++) {
-			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
-								      SWF0(dev_priv, i));
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
-								      SWF1(dev_priv, i));
-		}
-		for (i = 0; i < 3; i++)
-			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv,
-								      SWF3(dev_priv, i));
-	} else if (GRAPHICS_VER(dev_priv) == 2) {
-		for (i = 0; i < 7; i++)
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
-								      SWF1(dev_priv, i));
-	} else if (HAS_GMCH(dev_priv)) {
-		for (i = 0; i < 16; i++) {
-			dev_priv->regfile.saveSWF0[i] = intel_de_read(dev_priv,
-								      SWF0(dev_priv, i));
-			dev_priv->regfile.saveSWF1[i] = intel_de_read(dev_priv,
-								      SWF1(dev_priv, i));
-		}
-		for (i = 0; i < 3; i++)
-			dev_priv->regfile.saveSWF3[i] = intel_de_read(dev_priv,
-								      SWF3(dev_priv, i));
-	}
-}
-
-static void intel_restore_swf(struct drm_i915_private *dev_priv)
-{
-	int i;
-
-	/* Scratch space */
-	if (GRAPHICS_VER(dev_priv) == 2 && IS_MOBILE(dev_priv)) {
-		for (i = 0; i < 7; i++) {
-			intel_de_write(dev_priv, SWF0(dev_priv, i),
-				       dev_priv->regfile.saveSWF0[i]);
-			intel_de_write(dev_priv, SWF1(dev_priv, i),
-				       dev_priv->regfile.saveSWF1[i]);
-		}
-		for (i = 0; i < 3; i++)
-			intel_de_write(dev_priv, SWF3(dev_priv, i),
-				       dev_priv->regfile.saveSWF3[i]);
-	} else if (GRAPHICS_VER(dev_priv) == 2) {
-		for (i = 0; i < 7; i++)
-			intel_de_write(dev_priv, SWF1(dev_priv, i),
-				       dev_priv->regfile.saveSWF1[i]);
-	} else if (HAS_GMCH(dev_priv)) {
-		for (i = 0; i < 16; i++) {
-			intel_de_write(dev_priv, SWF0(dev_priv, i),
-				       dev_priv->regfile.saveSWF0[i]);
-			intel_de_write(dev_priv, SWF1(dev_priv, i),
-				       dev_priv->regfile.saveSWF1[i]);
-		}
-		for (i = 0; i < 3; i++)
-			intel_de_write(dev_priv, SWF3(dev_priv, i),
-				       dev_priv->regfile.saveSWF3[i]);
-	}
-}
-
-void i915_save_display(struct drm_i915_private *dev_priv)
-{
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	/* Display arbitration control */
-	if (GRAPHICS_VER(dev_priv) <= 4)
-		dev_priv->regfile.saveDSPARB = intel_de_read(dev_priv,
-							     DSPARB(dev_priv));
-
-	if (GRAPHICS_VER(dev_priv) == 4)
-		pci_read_config_word(pdev, GCDGMBUS,
-				     &dev_priv->regfile.saveGCDGMBUS);
-
-	intel_save_swf(dev_priv);
-}
-
-void i915_restore_display(struct drm_i915_private *dev_priv)
-{
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	intel_restore_swf(dev_priv);
-
-	if (GRAPHICS_VER(dev_priv) == 4)
-		pci_write_config_word(pdev, GCDGMBUS,
-				      dev_priv->regfile.saveGCDGMBUS);
-
-	/* Display arbitration */
-	if (GRAPHICS_VER(dev_priv) <= 4)
-		intel_de_write(dev_priv, DSPARB(dev_priv),
-			       dev_priv->regfile.saveDSPARB);
-}
diff --git a/drivers/gpu/drm/i915/i915_suspend.h b/drivers/gpu/drm/i915/i915_suspend.h
deleted file mode 100644
index e5a611ee3d15..000000000000
--- a/drivers/gpu/drm/i915/i915_suspend.h
+++ /dev/null
@@ -1,14 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2019 Intel Corporation
- */
-
-#ifndef __I915_SUSPEND_H__
-#define __I915_SUSPEND_H__
-
-struct drm_i915_private;
-
-void i915_save_display(struct drm_i915_private *i915);
-void i915_restore_display(struct drm_i915_private *i915);
-
-#endif /* __I915_SUSPEND_H__ */
-- 
2.47.0

