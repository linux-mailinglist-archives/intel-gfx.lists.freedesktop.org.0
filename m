Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4BDA2859A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 09:32:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E54E510E754;
	Wed,  5 Feb 2025 08:32:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Km1wklH6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B271A10E754;
 Wed,  5 Feb 2025 08:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738744357; x=1770280357;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=zqXkucG/mHFQUbQK/5eW5pFFzsPe4bYsBBrlYRFZoF8=;
 b=Km1wklH6bpgAwxIurl0cs0zkiw41HX+UMF7cOdWDTLQAeyJg0p09ZzMV
 G2eRY3+e+0EU12JMjdn4WOBJSYNSWaUzzpDUmSec976kpIAOuIovZMM36
 5RWtCM9YMWaJ9PAio6KMQdkPgdjtOzeE+Pv9wjxD7WpSsE82LhfKqX4/L
 cl4nh7hISXhiG4PC+3npfJbsbQ0iZLxuZz9JJE5/fBk+VcS6bMKxdxFdS
 u4kO+umyoMJSjMBJzoBja98kbapP/WNPNhel0wPV8aUOav/DU8xuaLo8J
 Qc8sMrRdCOETQU44Vc43Sb4B5DpPnQh3YyYgUJJ+H8lH+t+bUXKhBT2au Q==;
X-CSE-ConnectionGUID: 3VRL+Mz3S/GXhSE/vH8+rQ==
X-CSE-MsgGUID: WPHxjc4JRvCIwn4IHDJ2GQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39455833"
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="39455833"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 00:32:31 -0800
X-CSE-ConnectionGUID: SMAPvot6RCWDzFjYBp+5nQ==
X-CSE-MsgGUID: W1yuMFYARmW5ZfsizkiwDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="115831250"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 00:32:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 00:32:29 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 00:32:29 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 00:32:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=feln42Ivdi/K2NK8f8Ux66mz2tvTR+IOZcm2aiNmUVk6+0stJc9SwFB8sF8IWyvw881mnHyLfaoV7nwWbk+P1l7rSzwRjdvECmCKqggPydmbzownOhFolvypMwy0Tj6lnMnjguuueu6XLEqRaoEgYPhjWhyNyU8PBV/VtnlP2dQm6+rkrExs05lglIicRxP9zGdC5Fom050QCo+fIGFb/bVT0gc6A6n5Fvd77XL2y8GbZqEHJGjXF7nNa3Kwqzjm06sxmrSSEcCP9k3M8S5uRHOcnJSrHiGjTHzIaiLrF7bhI/90lqylEAgtq067ZoJvkkzOP+HeCMHX272AYAQBeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c3p8R6TYHyoubQdnWNzsttURHJjrLNKyP8y2Kx4gv8o=;
 b=Qf2pFF7LsdTYc5fllRG+L+BU3cI6EnZGYQ1Koy2v4cAHiS2IUdRRXvMqpQfecjq/Mu0qoBZYL2JU/kXiEhqUVld4jRiXVAuU1D7VYWytPyfQC94yB6wWpZ7pJMznEsbwVogvs1wBCy6xFlkj3xZacQzCeddG3x+JyD49/VG84jmSkzHYnEqwU5WXVb1WggZmGHPI4xE7fupV1DoDMSzT1ohVw5XZ+dcJjKc3Jx96MO9ptRz3TCZiuJcYFKiEhdIEyt4Q4aCWjjUFqzKBbI7ofgpLCJNER1T20sS/14kAekevp+3wyuENBrX1rElGzT7ykDvmIfJjNNkyJsu6bleNKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.10; Wed, 5 Feb
 2025 08:32:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.010; Wed, 5 Feb 2025
 08:32:26 +0000
Message-ID: <c27c5e61-309d-46f0-a611-4e979e3bd558@intel.com>
Date: Wed, 5 Feb 2025 14:02:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 4/6] drm/i915/display: Enable the second scaler for
 sharpness
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250113104936.1338290-1-nemesa.garg@intel.com>
 <20250113104936.1338290-5-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250113104936.1338290-5-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0117.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: c21afa50-7daf-4afc-e24c-08dd45bf9ec0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SzFYYnZ4bVhnNWVQeE02TFJTUUlhUnlhTmowbGhQdHJTeitPNThvVWtXU3pZ?=
 =?utf-8?B?enQ0OGhjSmlJQk9KV3dhY3plOW5uNDhhVXgvN2Fhb3hZVjkzeUtwN3NKYXpB?=
 =?utf-8?B?cTFFaXZiSUxaWk0xakJEam9aZE1PL0FWc1lIRXdYMXk2MGQxMFJpcHdyY2Vi?=
 =?utf-8?B?cEtUUlVCcWRZNHg3RGU1a01MT3JPMlBNdDNwc0RjTm5qeHZya1VaQWxDdHh3?=
 =?utf-8?B?L0pycWhzMzRyQS9DbGhZTVZXTFNwcC9VcklVVVV6VVhZVlEzRndxejhETCtH?=
 =?utf-8?B?YUFRSnc0MCtQMTBYQ2lPNURJK0tMZnV6bWo3bXQrVnE0L1ZnbWNITjZrK1V4?=
 =?utf-8?B?dnF5ZjRJRVlPZFQ0aHUrdmptRUFUanZYRWwyQUo0ZmhsWUJ2d1FLcjdoTWFZ?=
 =?utf-8?B?SjNNS29TWUpLUHE3eGVTNkRTc2Mwb1pmeUYvalBsZnJRWWRHU20xUklXWDIr?=
 =?utf-8?B?bEJ1YjBaeWJqNFU4R1pOK21zR1UrQlhxcHlsejFwSXJMZEIwRE41VE9EeXdj?=
 =?utf-8?B?UXM4SlZISFgyR01kQ3hDclJJb0FxZlFPd1hVREtKVXkyUHhWb1V3bVROcTN3?=
 =?utf-8?B?c1pocUFlV21ianJmaU1zTDNaT2g1QmlkWWgvc2lVVitqVXpYNUhadExzblpj?=
 =?utf-8?B?eTRCMWpWVDY2ZUpIMUVSVVNGTEtWOTJpYm5sSmVCWWpIQ3JxMlJFM0k1ekc2?=
 =?utf-8?B?OUtFSlZpbUJ5cmxiMjVRakpKczBPU1VYRjRqelpkQy9yN2xCbVVJd1dZWXQ1?=
 =?utf-8?B?U29zZE1VblpFL2ZZY2hqRXdwWGRBcUZRaGlBemwwMlhrb2IrQ3o5ZzVtemNj?=
 =?utf-8?B?NWtIWWtscEcvZzluOGw2elJSWnZKdDE2bmJUUm9pejlNVGVFSkExM3VObXRW?=
 =?utf-8?B?K0dzbDdXSkIwaDMyNERiMCtySlJqMDNMNkZwejd0WTFQWEZtRWIraXp5RjNE?=
 =?utf-8?B?Skpoc1hCeWtwMDExM1E4TE5tU05UUFlzSGlYVVNGYTIzL01JRWN0YWhGc1Uz?=
 =?utf-8?B?N08za2pKdC9zRk1kc1ZIUUJNT29WUzMrb3FOcHJUM1pNbStyWUF3QnRVZ0Mz?=
 =?utf-8?B?V1JMeUhkSVp6OUNSMTE2ME1ZZlR5bzNveFdVRFpsdWViNWNDQ0VpTm9ld2w1?=
 =?utf-8?B?ZFpBMFllWlJIRHVQbWNScS9pMEFoZGtTZERObmV6d1hKMC9HRWk5bXJQTFRD?=
 =?utf-8?B?M3k1aVo0Q1hYUU5VNVFJUER1N3RLeHA1ZXRPOG5TYkZaMW11UE1OZUliMk1V?=
 =?utf-8?B?d3UzYTh1dXRsSkQ3NUxOUzJsMTBpYllQb0U5Ui9XWDFvVHNJdlNQQ3l4L1lO?=
 =?utf-8?B?TnRJemNCYTF4cjBxOUFZcUkzODEyek42RDd4dWFZUzVWTi93b1kyZFBvK2h2?=
 =?utf-8?B?UkNBRlYwaWlNYTRraXdLSTErWVVLT2tLcFlxeGcyT2FSMzM3VjVzcW5wZDI3?=
 =?utf-8?B?ZnlEQytzNHNkSi9ienE3WmZ6cmYzNTFNUCtlcjlnbHpHZW0rSjRlQWRmOEhw?=
 =?utf-8?B?MDhTZ1JKa0dTRk1aTHhxVVYyNDNZTHdxV09SRHBycWlTUkZHV3hXQm4wWktM?=
 =?utf-8?B?NEpqVHFqVDB6TDcyK0dnTS9rOHovNDVnWlh3M0xQSFloTkxQQ0NNa2s4MG1v?=
 =?utf-8?B?aXROUkZSVUd6SEduTGdJYVJXNWtnNzhLWEIySWcybHJndHErUyszdExWUkJm?=
 =?utf-8?B?RjFVWkl0bytVVzlSYkh6L21PWCtxdjJuQ29Jdk1ZbDJYWHVCYmhCQVdaK2Mv?=
 =?utf-8?B?WHN6eWZoNm1uQmkvSEVSNlU2clI3OTBBYkxnYU9RTG83bXdtcURmRmhpZUoz?=
 =?utf-8?B?dzgvZ3BxWkNyTkhxbUxYcURsNEd2VTRaZ0tuc09FSzloWk80Z2ZvdnBaSWZw?=
 =?utf-8?Q?4rXRv9/277LY6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1lueCtPeU53dnlvUFNXeCtHenBRSU50QkFDViszTUU2dyt6SlBmUHlhZHFq?=
 =?utf-8?B?RXhoYWdabkk2MFFRVW8vVjlLY05KQ1VDUitkOU94MGJLalVwZStqSUg5S2dK?=
 =?utf-8?B?UFVMd3A2eHZXbElSSUtldk94QjJySDFEOHBpYnpWanNmUmZqbzh1VFQ4WUxm?=
 =?utf-8?B?N0U3U05oTkRTUkluMGZmeGNObnl1cXVFTHdGcmFRWjJnV2NSREZpeGJNaTdH?=
 =?utf-8?B?UEU1djRLbHFMMEY2Snh0dXpPaGtHdEcvZ0NNK2JONm4yTmZYWk1zRFFQMEl3?=
 =?utf-8?B?MGttMThOUDBGOHN2MFFMYjQySEh1T3RjVzVDOTVyTlpVOXNoVDF2WGhQWmNi?=
 =?utf-8?B?cDk5UEpjS24yMGZoWmpGMEhJUkNkVVorRE43VHY0czUzdzA1dENWWHVYYWha?=
 =?utf-8?B?dmFOSUJvekNLc1JPbU5sdzJVa2ZIcVhKcGZ0dEoxQzBObjVkSWNicXFSOVI3?=
 =?utf-8?B?QTI4VHdtdnF5SWdtRHRTM290VUxEdlBVUlgzcXN2L05YclhwT0l4MHNybG1q?=
 =?utf-8?B?RDdSeEdaWE94TnllK2taWmM4TXkzMURBdzFIRTB4eHJJU05YSGxGRmI5ditL?=
 =?utf-8?B?bHN5R3VBNy9LeENLQ0J5S201VmF4VGZ4SnNTcUo0UStZRXlybDAvajUzb2lR?=
 =?utf-8?B?ZFlHYTB1QzNRUlVvbEhuWHU2SUN0K1M4R2EwdHNHc215d1Q4YStaMHY0ZmZp?=
 =?utf-8?B?N0FSYUdHZDlJaE9LMVBuZDNIaVVEc3p5K0s3d0xiT3VoSGo3bnkzRFVkKzk4?=
 =?utf-8?B?b1FCQlczTW5NNlVEbUdyeHJKK2x6YXAybVZVYjB1UlRhdE81OG1PUnlNREgz?=
 =?utf-8?B?dXJZeTU3RWRYV0hNNlFENURqWWdzU0EzOFV5T3ZOQS9adU81VDRwQnRaMG4v?=
 =?utf-8?B?eXd4ckREYWdKOUd3TDcwQ05yWTN4ZVpSQUJjY1RUNk15cE9DSGUxNDc3aVkz?=
 =?utf-8?B?TURDN2FhMlY3QmkyeDI4akhncHYxUjhEMzQ5WVV3ZzhnNFpOdDdXSm02dURp?=
 =?utf-8?B?YmIxdDMwR04xck5zRll3R0FsOGR6bkJORTU5MXV0c25YRVhwSFpFU2xjb3M0?=
 =?utf-8?B?ajRCUVFzbGN5U1dCWGJBQ2RrNGZ0aTJ6WkJTN0JjMDdxRGZnQXFNT3hVdG5H?=
 =?utf-8?B?ZXlYSEFFci9tM1EydlVaZUw0ZWcyMnAyRE5KSS9WajFkUXZPQ0p4VmdYU0hE?=
 =?utf-8?B?QmdNMWtuMDh2SDR0akVnemVkMHJ5YWRtTzhDRVlpaDU0S2ZTdDdRWVA2RWk2?=
 =?utf-8?B?VnQ5UkMvWFFlcmZKdWY1UWh2RVBmTWc4aTJuMzJaNjkxT3RISEVQNkpaNkto?=
 =?utf-8?B?anlQK0ErRjNuM0Jyalo2WWVQVzQxdk4yZXNNNGh1M2xUVDB1M1JEeGVGSWFa?=
 =?utf-8?B?c01ndzJrSXltMzlidUxHSExNbzUrY09YaUdzZmh0OVh1QndTVXUwSkZsT21j?=
 =?utf-8?B?VDM5Vmk0SjZpOFNGWlpxOXcxbmk0Nm5rRTlWOGNlYXBpdUJ4dWpFYW0rc2h4?=
 =?utf-8?B?UDcvYUxaTFUvV1BNVTBCMUFMdGhzdWgzeFJkWEc3ellscm5uRGZhM090U0VS?=
 =?utf-8?B?VGI2NUtNK3d6eThwaHBOVmpWMlZxSFYxMk5KNnhQcDUxUCtnQ1RmMnEwS1hK?=
 =?utf-8?B?Wlh1enRyR2IxR3VsTDVsa05vdHpYV2dxWTVPYld4c3FzdXZoT0F6U0dobG5t?=
 =?utf-8?B?MjEzT003RDVFNlVXTVRoRTFSNWdJYnhuaWZjeGFkcE52RDR0WnZIblFRcjd5?=
 =?utf-8?B?akZ1KzV5SkIrMmQzd04rODVuOUJYT09GS3prK2xkYTBvK1dSUXpjUjJoQnJm?=
 =?utf-8?B?Yks2TE1EdndGZUtIamlkL1RxcXFrTmhqOXZObHJ3S05MV0czbjhIMWV6MU1j?=
 =?utf-8?B?Zy80bWF1bk9WVWZkbmN1aitzaXRpRzBYazd2S0VKdXNObXpoVTdQMGtYQlV2?=
 =?utf-8?B?OXJlNjFyc1JhQmdFTkZzYUhOejBCRkZOR0VpL0sxYW5TYkdQYkdIM24yZXEv?=
 =?utf-8?B?WU03cjQ5UjVqK1RXaEtRS3NZUUlZRGE1Y1hDbEloWEo3Znp3YWNzRXdJbDZx?=
 =?utf-8?B?aVQ5Z2ZuTDY2b3lab3BUNWJNd243RlVvT3lwZkVYVHI2ck9VL0FUSENTOERV?=
 =?utf-8?B?bzY4aFRTV2xQZU5Uc2NQYTNaZTBpUVlxbjZBWWpWYUQvWmZobFFBUEpqcWxF?=
 =?utf-8?B?b3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c21afa50-7daf-4afc-e24c-08dd45bf9ec0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2025 08:32:26.6415 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ho7nZCDsuB2G5O7jY7tUKhb9YOlfxObzvaj1zcVGqPtGgCo91ICCXLGYGOMnytKZbi/MBCY1LW0PKTjr+GdRUlZG2gDWRAZUfzRRaLEc+Rc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
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


On 1/13/2025 4:19 PM, Nemesa Garg wrote:
> As only second scaler can be used for sharpness check if it
> is available and also check if panel fitting is also not enabled,
> then set the sharpness. Panel fitting will have the preference
> over sharpness property.
>
> v2: Add the panel fitting check before enabling sharpness
> v3: Reframe commit message[Arun]
> v4: Replace string based comparison with plane_state[Jani]
> v5: Rebase
> v6: Fix build issue
> v7: Remove scaler id from verify_crtc_state[Ankit]
> v8:Rebase
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_casf.c     |  7 ++++
>   drivers/gpu/drm/i915/display/intel_casf.h     |  1 +
>   drivers/gpu/drm/i915/display/intel_display.c  |  8 ++--
>   .../drm/i915/display/intel_display_types.h    |  1 +
>   drivers/gpu/drm/i915/display/intel_pfit.c     |  6 +++
>   drivers/gpu/drm/i915/display/skl_scaler.c     | 41 +++++++++++++------
>   6 files changed, 49 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
> index 773abaad74ca..aff7aa6d3eb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.c
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -101,6 +101,13 @@ void intel_casf_enable(struct intel_crtc_state *crtc_state)
>   	skl_scaler_setup_casf(crtc_state);
>   }
>   
> +int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
> +{

There should be a platform check here.


> +	crtc_state->hw.casf_params.need_scaler = true;


You are using need_scaler as a CASF enable flag. It would be better to 
name it accordingly.
If we need to check crtc_state->hw.casf_params.need_scaler == true at 
multiple places while configuring the scaler,
consider creating a helper function intel_casf_needs_scaler(crtc_state) 
that returns crtc_state->hw.casf_params.need_scaler.


> +
> +	return 0;
> +}
> +
>   static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
>   					  u16 coefficient)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
> index 8e0b67a2fd99..568e0f8083eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.h
> +++ b/drivers/gpu/drm/i915/display/intel_casf.h
> @@ -12,5 +12,6 @@ struct intel_crtc_state;
>   
>   void intel_casf_enable(struct intel_crtc_state *crtc_state);
>   void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
> +int intel_casf_compute_config(struct intel_crtc_state *crtc_state);
>   
>   #endif /* __INTEL_CASF_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 413b7fd7e287..beef3a76eba4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2137,7 +2137,7 @@ static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
>   	set_bit(POWER_DOMAIN_PIPE(pipe), mask->bits);
>   	set_bit(POWER_DOMAIN_TRANSCODER(cpu_transcoder), mask->bits);
>   	if (crtc_state->pch_pfit.enabled ||
> -	    crtc_state->pch_pfit.force_thru)
> +	    crtc_state->pch_pfit.force_thru || crtc_state->hw.casf_params.need_scaler)
>   		set_bit(POWER_DOMAIN_PIPE_PANEL_FITTER(pipe), mask->bits);
>   
>   	drm_for_each_encoder_mask(encoder, &dev_priv->drm,
> @@ -2386,7 +2386,7 @@ static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_state)
>   	 * PF-ID we'll need to adjust the pixel_rate here.
>   	 */
>   
> -	if (!crtc_state->pch_pfit.enabled)
> +	if (!crtc_state->pch_pfit.enabled || crtc_state->hw.casf_params.need_scaler)
>   		return pixel_rate;
>   
>   	drm_rect_init(&src, 0, 0,
> @@ -4584,7 +4584,8 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>   
>   	if (DISPLAY_VER(dev_priv) >= 9) {
>   		if (intel_crtc_needs_modeset(crtc_state) ||
> -		    intel_crtc_needs_fastset(crtc_state)) {
> +		    intel_crtc_needs_fastset(crtc_state) ||
> +		    crtc_state->hw.casf_params.need_scaler) {
>   			ret = skl_update_scaler_crtc(crtc_state);
>   			if (ret)
>   				return ret;
> @@ -5750,6 +5751,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
>   		PIPE_CONF_CHECK_BOOL(cmrr.enable);
> +		PIPE_CONF_CHECK_BOOL(hw.casf_params.need_scaler);
>   	}
>   
>   #undef PIPE_CONF_CHECK_X
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 7cb58bf56907..e5d28377bd0b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -939,6 +939,7 @@ struct intel_casf {
>   #define SCALER_FILTER_NUM_TAPS 7
>   	struct scaler_filter_coeff coeff[SCALER_FILTER_NUM_TAPS];
>   	u8 win_size;
> +	bool need_scaler;
>   };
>   
>   void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
> index 4ee03d9d14ad..dce86fb22c70 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> @@ -183,6 +183,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
> +	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_crtc_state *old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
>   	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
>   	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
>   	int ret, x, y, width, height;
> @@ -193,6 +196,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>   	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>   		return 0;
>   
> +	if (old_crtc_state->hw.casf_params.need_scaler)
> +		return -EINVAL;
> +

Should mention here the reasoning. If sharpness is already enabled, then 
panel fitter cannot be used.


>   	switch (conn_state->scaling_mode) {
>   	case DRM_MODE_SCALE_CENTER:
>   		width = pipe_src_w;
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index 0718210de910..40584bc19dbb 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -271,7 +271,8 @@ int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
>   				 drm_rect_width(&crtc_state->pipe_src),
>   				 drm_rect_height(&crtc_state->pipe_src),
>   				 width, height, NULL, 0,
> -				 crtc_state->pch_pfit.enabled);
> +				 crtc_state->pch_pfit.enabled ||
> +				 crtc_state->hw.casf_params.need_scaler);
>   }
>   
>   /**
> @@ -310,7 +311,9 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
>   }
>   
>   static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
> -				 struct intel_crtc *crtc)
> +				 struct intel_crtc *crtc,
> +				 struct intel_plane_state *plane_state,
> +				 bool casf_scaler)
>   {
>   	int i;
>   
> @@ -318,6 +321,11 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
>   		if (scaler_state->scalers[i].in_use)
>   			continue;
>   
> +		if (!plane_state) {
> +			if (casf_scaler && i != 1)
> +				continue;
> +		}

A comment here will be better to explain the reason for this, namely: 
CASF needs second scaler.


> +
>   		scaler_state->scalers[i].in_use = true;
>   
>   		return i;
> @@ -330,19 +338,23 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
>   				     int num_scalers_need, struct intel_crtc *crtc,
>   				     const char *name, int idx,
>   				     struct intel_plane_state *plane_state,
> -				     int *scaler_id)
> +				     int *scaler_id, bool casf_scaler)
>   {
>   	struct intel_display *display = to_intel_display(crtc);
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
>   	u32 mode;
>   
>   	if (*scaler_id < 0)
> -		*scaler_id = intel_allocate_scaler(scaler_state, crtc);
> +		*scaler_id = intel_allocate_scaler(scaler_state, crtc, plane_state, casf_scaler);
>   
>   	if (drm_WARN(display->drm, *scaler_id < 0,
>   		     "Cannot find scaler for %s:%d\n", name, idx))
>   		return -EINVAL;
>   
> +	if (crtc_state->hw.casf_params.need_scaler)
> +		mode = SKL_PS_SCALER_MODE_HQ;
> +
>   	/* set scaler mode */
>   	if (plane_state && plane_state->hw.fb &&
>   	    plane_state->hw.fb->format->is_yuv &&
> @@ -462,7 +474,8 @@ static int setup_crtc_scaler(struct intel_atomic_state *state,
>   	return intel_atomic_setup_scaler(scaler_state,
>   					 hweight32(scaler_state->scaler_users),
>   					 crtc, "CRTC", crtc->base.base.id,
> -					 NULL, &scaler_state->scaler_id);
> +					 NULL, &scaler_state->scaler_id,
> +					 crtc_state->hw.casf_params.need_scaler);
>   }
>   
>   static int setup_plane_scaler(struct intel_atomic_state *state,
> @@ -497,7 +510,8 @@ static int setup_plane_scaler(struct intel_atomic_state *state,
>   	return intel_atomic_setup_scaler(scaler_state,
>   					 hweight32(scaler_state->scaler_users),
>   					 crtc, "PLANE", plane->base.base.id,
> -					 plane_state, &plane_state->scaler_id);
> +					 plane_state, &plane_state->scaler_id,
> +					 crtc_state->hw.casf_params.need_scaler);
>   }
>   
>   /**
> @@ -889,16 +903,19 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
>   			continue;
>   
>   		id = i;
> -		crtc_state->pch_pfit.enabled = true;
> +
> +		if (!crtc_state->hw.casf_params.need_scaler)
> +			crtc_state->pch_pfit.enabled = true;

This is only clear after looking at the last patch. I think its better 
to have the whole get_config part together if it makes sense.

Regards,

Ankit

>   
>   		pos = intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe, i));
>   		size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, i));
>   
> -		drm_rect_init(&crtc_state->pch_pfit.dst,
> -			      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
> -			      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
> -			      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
> -			      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
> +		if (!crtc_state->hw.casf_params.need_scaler)
> +			drm_rect_init(&crtc_state->pch_pfit.dst,
> +				      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
> +				      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
> +				      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
> +				      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
>   
>   		scaler_state->scalers[i].in_use = true;
>   		break;
