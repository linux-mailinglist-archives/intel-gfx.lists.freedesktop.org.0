Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7560291B5E4
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 07:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B781510E1E7;
	Fri, 28 Jun 2024 05:06:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mx7A2VFl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C202E10E1E7;
 Fri, 28 Jun 2024 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719551214; x=1751087214;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FrqqmkV1YrqRrxJi5Bitlf04/yprsXi/bAN51Y3dQg4=;
 b=mx7A2VFlwF2ybPPHyJuRo9DQjDXj5+gbwQnefE+cPgBwwncl5JCbS5G0
 5yKZf4dTxSGDmoMaW3ySPvdVIWk2z4/UDjxlxT2+aVjQnzHT1h3prno7X
 3BN07gW6o4mGxM2KKPHlZSWvwQ/AHqFT8sdc4uB2wKVqUntm9VtruLYRj
 TJf2LuePv4eW+2A66Yz94KDx7yZ+pl5Yxoxk5jddcUqFDFo9tYsnSZb/R
 jOOsYgyJY9jhveum+OsT0/eXM+c1q3n/Rrb2yzFeDctWt5XDGtXNqQfQy
 vMPKwAHbvLFUzH78wBBI9i5WYB9iPAbT+ZEiCjhNZv6GIwef3m0vFozC0 w==;
X-CSE-ConnectionGUID: 39eXbacQSQiI6JT8xf5/Jg==
X-CSE-MsgGUID: XEvd+MJwTleg6OnDFWdp9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="27405279"
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="27405279"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 22:06:53 -0700
X-CSE-ConnectionGUID: W8s+KVAcQo6GenyKt0H7oA==
X-CSE-MsgGUID: 22d9I9ZNRuuy2H1dlBgWMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="75367924"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jun 2024 22:06:53 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 22:06:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 27 Jun 2024 22:06:52 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 27 Jun 2024 22:06:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GT184pG1MCHRDI7mJR2qsLqsyiPSYFr/Ch4o1SY/P/Mx1PyiLzI9jKOCg0TAsc2J7KyOrmB9ru8EyhKn3Q8qPeWsULfj5NkFTXlsMtmFXGwrYVICLxiQsAcV7DFhN+f79MBd98/bTZjx4cJJkI4hyXA5ZfZx4+nhcMd57t4lJ4ZdsMMsRvkzQxpt+Yu7e2DQadoS/OdoSlfmNdgw7Maa68w7Ws3pbMZQ7WgabJd/bikBBM2GPwSipXODP0umijYK4gq+wItPMoO42ueaZ74ADnAZr10j8zZUxdjzJQHIrZCr7jJRVEv3CyyDT0Fp35U/EW1MESukVSglnJJUIChSLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=udQGDBSPr6TJTYIg+zRSmafnvLc5GljgF0+LQDxALw0=;
 b=ZJuRVYEZq2m9uS90MxmLDcX6el6i3Kcmh7ubayNFn8PLhd2okpiL6SPMij/VzSU0Q5L+vHZP9yNBNx3nhiPHnc0kUCImq87fEDwm5o8Dl/xijjWVIlzkczGGKz92AX25tbGaJjR6f11Jba7mewmRnquUw0Ac8LQo3aW+i1hvOezvtUWtLGlwGUfv/QCYLZuRWPo0ckv4BaNKLg81WYv6rvjBqO6t5pASO/uiyl/Y00NU47o0uxJb2UleTLi+OgqHc2JmD/6bJkpvYrvazo4PvmRNB2KqU+N6Z2z5g9EbKP/476ZOuwZSoqaUMFykvzaa3LR1V0ez8NTIc1PlYEa7PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7079.namprd11.prod.outlook.com (2603:10b6:303:22b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.26; Fri, 28 Jun
 2024 05:06:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7698.033; Fri, 28 Jun 2024
 05:06:50 +0000
Message-ID: <32613cb4-583f-48a4-95b9-3256033efa37@intel.com>
Date: Fri, 28 Jun 2024 10:36:40 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <mika.kahola@intel.com>,
 <matthew.d.roper@intel.com>
References: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
 <20240626050056.3996349-3-ankit.k.nautiyal@intel.com>
 <87v81wc904.fsf@intel.com> <0d2f4cb3-c418-46c6-b0ca-8aa1650aeeff@intel.com>
 <87zfr6b5m6.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87zfr6b5m6.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0180.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7079:EE_
X-MS-Office365-Filtering-Correlation-Id: 05a3775b-4000-46eb-539e-08dc97301dfa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M1VCcE5oVXM5SExQNzQvbktMc1FpaUR1YlpiQnV2cHdDNTFRdmd5L2ZFKzFR?=
 =?utf-8?B?ZjV3aFNPdU8vN0EySThaaUJxRXRrRWNBYzhPWGpRTDJTNFhnTk4ySzRQZ3Ay?=
 =?utf-8?B?WDcySkVEZ2lRS0JmZGViUXVBcFhWSnpwT0NTWU56UjVpd2laZSsyT1JSZzFF?=
 =?utf-8?B?NGk2cXpyWEVGdUk2VnpMRjlQcWdlWlNkeGNLZUxrM0t1dGNmRU5pSWdNZFBD?=
 =?utf-8?B?ZFRTWXZOZVlNejk5ZTlDUlBhVHdEQ01pN1Y5NTlRWjVDMGo4QnRSNHoxTUdh?=
 =?utf-8?B?QU9oQmVDTVF0L0hKcHRhVzcyTEwxd1dMODJVNDFPeWd0b29yYU1uQ20yTUZ2?=
 =?utf-8?B?S1BvbytMaXpVeUJxMVZIdWlIb2wvdTBuSFpISHA5SFlhQ01LZ3BNMEkxSTUx?=
 =?utf-8?B?RWdFZ1BkQWM4OFN1NlFNaTFrWlpzSkYvMTZ2c3p6U1YyUE1LU0FoVXJobVFE?=
 =?utf-8?B?Nk55Qm9zeVRxdWhSVm1LMDhqbnRZeERqZ1FkcDJMRjlKS0pIS2F4UHFiZDRw?=
 =?utf-8?B?ZlkwVjZUaWhOMk5MTjZlVjZYd3VTbnVNOVlMUSsxOHhhUGM4Y2xUd1FOTkVx?=
 =?utf-8?B?SE1YNzF2VUlnSmFHUW1aeXlKNHV5RFNreURoVnUvUnZIV2pYMFVTRTlWdUtr?=
 =?utf-8?B?dURBcG1XNGpka1BaZG9HaHQzemxzQjJzdm5QL2I2bzVQNkJ5eUpxS1FPQVdo?=
 =?utf-8?B?TlRjY2poVTExUTBJazV4SStVcDRpamxURUFvblBLRnloYytjUlpQV2FQbWxW?=
 =?utf-8?B?Z2N3TDB4bnRwRzgwaW5Vc1BoSHdKblF4ZnpIc3JLbVBsbGcyNlZaUnlHalpH?=
 =?utf-8?B?L1AxdzFNTFg0a0Q2UmF3SnF6emgzZE44M1kzbzY1RUpTRmpSTzRhaDVZR1hU?=
 =?utf-8?B?ekU5Q09tcEdRSzl3S1Q4dUxFRmJKY1l5Q2hnbFdzUTZjU05IKzh3RXVsYzli?=
 =?utf-8?B?aS91VkM5T0tLU1lHNVVGQ3RONjZsTzdlZFZRODFJYkNjaXhZSkhwdDNzU3ZO?=
 =?utf-8?B?WUVoN1ErVDdTWWtsTWVib29DdHJVRFMxb0x5UWNzNjBOMDhJZU9HMHZLV1RR?=
 =?utf-8?B?WUNVa0Vuc1hSak5ldmw2bDB5aVdsaVRTZmdWSUlwaUJZb1c0bzJMUHJoN1Mz?=
 =?utf-8?B?UmladkJyRDZ1RS9RZmErUGt3b251RkJHb3BlNlk1WDZNN05tWmRVU1NRVFpE?=
 =?utf-8?B?YWhJQno0YmlXczUvMUkweExvQURCRlFOb0d3RTc2U0wyTnd2NVNjOSs4aVJN?=
 =?utf-8?B?RUNoRng0bWcvcm1ENDV2TzRDL1cyU0tWSzI3RDk5RXdRNzh6YWRTeW9uMWto?=
 =?utf-8?B?T0JYRGhmV3ZwM3RJeTBuUWVNMWhKM3c2S21BenYrdGVkc0JCUS9YaCt1OVJU?=
 =?utf-8?B?a3pOeEdPajFzT242M2laMm03c2VaSmNPa0srSUtmUnBvV0Uyd3dMRkN1Z3ZF?=
 =?utf-8?B?dnBmZjZGeXBlaXYwRXFPRktWYUlMV0xkcGNLVFNqTE01MEpBMkZtSTJ6Q2ha?=
 =?utf-8?B?WlIyTlRiaFJOYy96UFYrRDluY1c4dzBneGUremFhVERoUkxhTzROSmFTdysy?=
 =?utf-8?B?eXdyQzZrdUJsb3ErZlJ0RlNGME91c2UxUW45c0ZQeVBzSUtIb1lIc0pKYTZ4?=
 =?utf-8?B?K0pSK0NYWTZ1MkNtSGtWTDQwSnZVeGpEOWJxY040RXdjOTRFVlBCbUlmYktU?=
 =?utf-8?B?MmI4WWVuMDJuajJHeElqeEZGdXRVNjVmU3N3ZDZLemNBUEVpOFA0Ty9hazNa?=
 =?utf-8?B?cUFPUkZpTWl6RlN0aGFtZFE3OEFCTDlUZTNyS0lMcElGUW9uZHlRTFR6bFVi?=
 =?utf-8?B?c1EybzB4SXVyQnJyU2YxQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHhvZzBYOVlFZXRxby9uZWV5aHhKNzVwdTFXcWdVVjRXeXFhL3lwemc5ZFE2?=
 =?utf-8?B?RnQ3MHBveUkrQmZRY21vV2liREplRFBPUGRTRUhQT1Z2blVUU3N1U0NLelhI?=
 =?utf-8?B?QTB2eWZNdElFOEJ3eWhuMzZxbDVJdUVHUnlQdjJXeFgxRGNiZWRPOWNzZGE3?=
 =?utf-8?B?cFJZVkw0RUEzUHJyakFhbG9zQTNIQUtpVG9uMjVQMHJwVFZNYVdYK3ZnRmhh?=
 =?utf-8?B?WlhxeVZhb0hPZ1RXREtEbEduZnMxdVpKamExellsMjBGUm1sRkFOVzlBTVhM?=
 =?utf-8?B?aEkxYVhiazMyRUhhUU1CazZwNFVkSUFZK25mUjBZS1J0MUNyQm1FVnJuaTBN?=
 =?utf-8?B?TkNld1BSQmtTK0JGR1NqZkQwZEVRbEFvMHlWUU0wd2RsZXhRcFJWbkdBcGpl?=
 =?utf-8?B?VnBvck5wd2gxN0xuRnpKMEFOTXRsRGhkTStQbHNEVlJmSitjbjZLUm5OWXJh?=
 =?utf-8?B?MHhiM3ZsVlVwU3drakhzUnRpeVduRUd5QU5uTFVIanJWbGU1MzNmTG0wU0Nn?=
 =?utf-8?B?U3pBV3pTNmJmSUxrVmhqb3Q4ekNjclZDTUxnc3g5NFVCUlp1NER0THRzcU54?=
 =?utf-8?B?dUM4T0xPaEhQWFVsOXNTQlpWUWU4RmYrMlhaRzg1aUVRZ0c4b2tVWjNoOWJw?=
 =?utf-8?B?L05LYyt0Q0RIcGlYNFZuTjF1bDB3M1Y2aG5QSDFsVU1hT08zY0w2UzgrZXhw?=
 =?utf-8?B?cVh2MHo4SE1XYkRYVWpFQ0hheXhBbFlsQVlmOEo0K1l3bTBLN1RwUG9SNGJH?=
 =?utf-8?B?WXcwaFFuTzNlU0g5QWpmcWREM09tTmhSMjU3cDcrc1orYnVWSzBhUlZkeWIz?=
 =?utf-8?B?WVdnWHF2V0d0WldGRE9KS2xERk8vNmw2bGtZblNhQ1Y0MHdIeWZrYUhPTTFH?=
 =?utf-8?B?UzUxT2FweEp2dUhQTHFPakdma2VqOUZWNml0alhEK2J2UzVMYzlFbkRneHRX?=
 =?utf-8?B?UC9zd2ZGei9LRC9CdklmWHJKNmF4bTJXZU1OVExZenAvVzBZZ0FBZ2Y2azlW?=
 =?utf-8?B?cERucCtjUWg2akI4akpYUlhreUlQU1dXRXVZM1lLOHNPSzN2ZEh0RGF1OE5G?=
 =?utf-8?B?d0dVUGwxS2pkSEovT0FxaUpyc0o5T2FOWWUwUnNxQ2tJWWdyRFZaNGx3bE9W?=
 =?utf-8?B?c2RlajZlRE9pZW1OTnpGRkJqWlZZZ3ByNGMzU1M2SkZzZlpBNzczQzNnRHpO?=
 =?utf-8?B?OEQxb01vaHdKdnNZRDd3TmQ3YVdDR0pZb2RBMVZ1Rm1vaTJZbElBNi94cmpU?=
 =?utf-8?B?V1VhZkJaWXAwQ2QzdFNkTEFvRlo3dEdLaENzeFFtMjljZU45Mm1kbUQ2WjJ3?=
 =?utf-8?B?THhoN0lMK2VCQ3JiRWtFZXZiZ3RCUHRsbkIwYytyNU5uTWppU2VtTDdRVjhN?=
 =?utf-8?B?MUFqWUJveHRoU3hEbVM1OHFYM0l5dytsdW0wWmt2TjVCVDJVbk1yTzVBOE1x?=
 =?utf-8?B?aDhQV1c4ZnFnaUlPck1SOUxTdWFXSmZuQnZHNlJhaDV2b01MaVdKSm51cXpU?=
 =?utf-8?B?MHMyODhNZFRSbG13T3BxYXc2bUhrTGh0Yms0NjJnRk41ZTQwNlZIeW9CaVk2?=
 =?utf-8?B?REJKVlhZc2Zjb3hBcXErTFFCQWRNcUVtQ2d2cmdFMUJ4TWoycHNhZlg4dVUx?=
 =?utf-8?B?M2hFdkl5NlZFdTN5QVgyZUJ0UUEvNGZpVnVKSWc3NmdWbGh6R2ltV2o3MVZv?=
 =?utf-8?B?emJScE0wVUlzLzZrZVVrUDdNRHVsK01aOTRUVlhJZnpzVzZUNnErcEVpaDBH?=
 =?utf-8?B?NWhSODJtS1RHaWR2bVdUczYzamM3amdjRC9vRDF3ODVYK3djWXo5cHdhcFNq?=
 =?utf-8?B?UUtjZXZUcnNFMmZhMmNvZU1HMHR4Q3lzUTh5MytRZ3djYStIZnRQZGN3bWRJ?=
 =?utf-8?B?S1psblJtQ0U0dXhSTUtjb2tpV2RVRGdGbGRFVGJkaG01WDUxVkNVcFVRQS9n?=
 =?utf-8?B?a2JlL3d1VG10R0hLdVpQZWZQajB3R1FCNVlPYmQ5WFdXb2dSaG1HQzgxVVZD?=
 =?utf-8?B?NGtPbHAzdkVvNFg1UXFHMTNUb2gwMWFpUm9qMXBCSDVPR25UTjJNenRoNkk2?=
 =?utf-8?B?enRRbTdteGd2R21WVmpJQ01URXk2SWt0SGpIWUpLeks1WFVHYXQ3NmtaTWph?=
 =?utf-8?B?QVk2T214NGc3aktEY0todEFHNTJ3SE1OQzA1YjdlMWFmbTJWcmVPeVpxNzJX?=
 =?utf-8?B?V3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 05a3775b-4000-46eb-539e-08dc97301dfa
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2024 05:06:50.0241 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NxM6XXMxj/nNR7ZUjBBs8PkQuWecluo7KeGnaTP6un8g6aa9zVCY2L3d7gkAKoodxaqy/FFZx5w2HQ2Hx2ZbeWsujIa839bV5Ntapid29tE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7079
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


On 6/28/2024 12:00 AM, Jani Nikula wrote:
> On Thu, 27 Jun 2024, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> On 6/26/2024 3:37 PM, Jani Nikula wrote:
>>> On Wed, 26 Jun 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>>> Try SNPS_PHY HDMI tables computed using the algorithm, before using
>>>> consolidated tables.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_snps_phy.c | 20 ++++++++-----------
>>>>    1 file changed, 8 insertions(+), 12 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>>>> index e6df1f92def5..10fe28af0d11 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>>>> @@ -12,6 +12,7 @@
>>>>    #include "intel_display_types.h"
>>>>    #include "intel_snps_phy.h"
>>>>    #include "intel_snps_phy_regs.h"
>>>> +#include "intel_pll_algorithm.h"
>>> Keep includes sorted.
>> Noted. Thanks for pointing this out.
>>>>    
>>>>    /**
>>>>     * DOC: Synopsis PHY support
>>>> @@ -1787,22 +1788,14 @@ intel_mpllb_tables_get(struct intel_crtc_state *crtc_state,
>>>>    int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
>>>>    			   struct intel_encoder *encoder)
>>>>    {
>>>> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>>>    	const struct intel_mpllb_state * const *tables;
>>>>    	int i;
>>>>    
>>>>    	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
>>>> -		if (intel_snps_phy_check_hdmi_link_rate(crtc_state->port_clock)
>>>> -		    != MODE_OK) {
>>>> -			/*
>>>> -			 * FIXME: Can only support fixed HDMI frequencies
>>>> -			 * until we have a proper algorithm under a valid
>>>> -			 * license.
>>>> -			 */
>>>> -			drm_dbg_kms(&i915->drm, "Can't support HDMI link rate %d\n",
>>>> -				    crtc_state->port_clock);
>>>> -			return -EINVAL;
>>>> -		}
>>>> +		/* try computed SNPS_PHY HDMI tables before using consolidated tables */
>>> Computed tables vs. consolidated tables? Huh?
>>>
>>> Anyway, I think we have two choices here:
>>>
>>> - Always use computed values.
>>>
>>> - Prefer fixed tables, fall back to computed values.
>>>
>>> But we definitely should not try to compute first and fall back to fixed
>>> tables.
>> Hmm I was not sure if we need the fixed tables after this and whether we
>> should remove them altogether.
>>
>> But it makes more sense to use prefer the fixed tables and fall back to
>> computed values.
>>
>> I'll make the changes in the next version.
>>
>>
>>>> +		if (intel_snps_phy_compute_hdmi_tmds_pll(crtc_state->port_clock,
>>>> +							 &crtc_state->dpll_hw_state.mpllb) == 0)
>>>> +			return 0;
>>>>    	}
>>>>    
>>>>    	tables = intel_mpllb_tables_get(crtc_state, encoder);
>>>> @@ -1991,6 +1984,9 @@ int intel_snps_phy_check_hdmi_link_rate(int clock)
>>>>    			return MODE_OK;
>>>>    	}
>>>>    
>>>> +	if (clock >= 25175 && clock <= 594000)
>>>> +		return MODE_OK;
>>>> +
>>> How's this related to the patch at hand?
>> Currently we prune the modes if the clock does not match that given in
>> the table.
>>
>> Now that we support all clocks between 25175 and 594000 we need this,
>> but perhaps will add as a separate patch.
>>
>> Perhaps I can remove this function all together and put the condition in
>> hdmi_port_clock valid, in separate patch.
> But we already have intel_hdmi_source_max_tmds_clock(), which also takes
> into account platform specifics. For example the fact that 594000 is not
> the max on all platforms.

You are right,as per Bspec platform overview and port clock programming 
pages maximum is indeed 600Mhz.

I am wondering, we need to fix existing 
intel_c20_phy_check_hdmi_link_rate too, as per Bspec:74165.

I think we can remove the intel_cx0_phy_check_hdmi_link_rate and 
intel_snps_phy_check_hdmi_link_rate checks from hdmi_port_clock_valid.


Thanks & Regards,

Ankit

>
> BR,
> Jani.
>
>
>
>
>
>> Regards,
>>
>> Ankit
>>
>>
>>>>    	return MODE_CLOCK_RANGE;
>>>>    }
