Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 175F9B1DFAD
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 01:02:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A04BF10E4A2;
	Thu,  7 Aug 2025 23:02:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F6DrIhNQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E227910E4A0
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 23:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754607737; x=1786143737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Pi6NdA84Lka/JQCEiL/dG9HuX1HSwr2PcZvDNdJjfhs=;
 b=F6DrIhNQ99/Yo4rfIAbNyTM4pxdEnH45s9WKj6P2xg+RlbUFU5zxe9zL
 iGskk+SzozbTflwb/bHq3/embycfQ0LnA6chORMPzvznh4B4qXVPqZCZ2
 fAyQZol57DtLHj68bWCooL3OPD5qjU4z2tJdJoKtoaG35p8QayePo5esK
 9gEcaORznSn0+zb7gIhgrI/JaqgDX/Wri22lJqykPVhe1hggx9fQFY6cH
 KBhkOWl7/IVWYKD3t8UA/CPmHXdLtKgBrZWjSXyIAIHY0TsDNKw/GeXQv
 WV/58BF1mB9YXeXpRaTzTup779HDB4EU/9SaSbhWQpb7gMWeXREkedQ/g A==;
X-CSE-ConnectionGUID: yeSZguNOSmS8uYOJsESGlQ==
X-CSE-MsgGUID: cHPb4tbNRU6FB/q6eZCfEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67221976"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="67221976"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:17 -0700
X-CSE-ConnectionGUID: brMYR3sYSWGStuTYlq7WLA==
X-CSE-MsgGUID: D7J2dFT5SFC/T6++9qUvqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="165519490"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:17 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:02:15 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 16:02:15 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.46) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:02:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kn40lZStnMQD9abApCSf7SuEzA4/aJLG9LcIozZBXARO4OA130w2ZwG8e76m83o/OY8KzRWSgNqcM6+zQa9kv0Tw3qWtq6JOPsZFPgSSuJgmsVIOkOVZBZEoFwzbnTjymg0Xs/tm55G4PrQ80FshDP/mQnbaePVXQs7UMn0yaOsFxDK5Xu2GXf3cHSPrwcEhCJ82mU9VYumwZOfzdOR7pi2uMn35Wrl4C/J/PCPgBp856W6rJ+bZbXvXl/sx1a62eONL2kpA3rT/2NkI8CyQB7vFq6rnvqJqtXp+fckKN/qOlXsMM/l3TAAJuW5TDHkQ8ihqaS/ecgz22rTPQ7I4OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CWdDfZRV/M17CzQLZruwr5ozBbbUC4TGahI0X3g2v1o=;
 b=MCDhMFFkYG+NMiQtOC8+3XcvcLnYFcx4hcZ9pZncgJwIzyKK60RSryaLD0dH1TwtywSs8iKfP8OkLrWNP21mUZxMV1CWwRHxBK1KgTiGUh4AyAp12sqF8wqxuJBrYgcVl04s6YnImMWUYsUnnrofzq6bncbm0n6IHb2ubKEAEgJWs2oolKF/fENG/PlxCwSXUAbuStm7Jwf093gUVn8Sa2nYuA01WCArvPnLB+CEMaUbbJ9UwdFPhrzFuNkzVPmKqmwgUIeCE2qR0Ed++Y+MLOYkIl7zy2dAoza2bC0JsgwoF/0mQhydycH31Ziw9/VjlOYQd036r6j8WQE2tzaOXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SJ0PR11MB5134.namprd11.prod.outlook.com (2603:10b6:a03:2de::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.16; Thu, 7 Aug
 2025 23:02:13 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Thu, 7 Aug 2025
 23:02:13 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: [CI 9/9] drm/i915: Remove todo and comments about struct_mutex
Date: Thu, 7 Aug 2025 19:01:53 -0400
Message-ID: <20250807230146.128362-20-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250807230146.128362-11-rodrigo.vivi@intel.com>
References: <20250807230146.128362-11-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR21CA0007.namprd21.prod.outlook.com
 (2603:10b6:a03:114::17) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SJ0PR11MB5134:EE_
X-MS-Office365-Filtering-Correlation-Id: 615c6a15-1875-45ec-4349-08ddd6067285
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NUsvOW15ZHZnVFhQOExSRHVpT0F5aVdFZ29JNjNnUk1nQ3M2dFhuMGxzR2Vo?=
 =?utf-8?B?U0QxZk9wb3d2WmtPVnVPaWhtOUcyd0JrcWJmSWtYRVNTaitsSGtCUHY0cnJj?=
 =?utf-8?B?ajBwQzk0Q3VRajhibG5GMTVoMzRpRDNkeHJLdmpHSGF0RDRiUDVsWVQ5TVlF?=
 =?utf-8?B?dVNGS3U5MExpcXUzQzV6ZVBLWGV5UHRBUVpwekpKQkxXY1kzaEF5Q1NTYnRt?=
 =?utf-8?B?ZmNsLy84SmFBYjg4c0RmcVM3UmlVMTJ0RlZkZDJnV2lkT2MySlo2L1Q0NkpC?=
 =?utf-8?B?RitUTG9pcXdES1RRK0ZxMmxEKzd5R0s3STZSMkdaakxsVDlXWk0wd2FSRDZ1?=
 =?utf-8?B?MVNzS2FuWFl1YU9MUXVlWCtaQlFId3NGVmdGMGlFRkIyYjVWTGoyamg2N3pP?=
 =?utf-8?B?N0pTOVoyN0RzTTV5Mjlad2NMOXVWSW9TV0UwcU4wWGl0dUlrZlZXSkdjUXla?=
 =?utf-8?B?Sk4xUi9LQmRGMzN2Wmh5U0FDVTBiejhsRmU0ai9hVHhHOWV2aWt0SGtYUVZK?=
 =?utf-8?B?bi9ybitlR0tKWUFJbWtYaDdEVXBMV3pVVXNHTGcrSzR2SXczUUJYTjI2SUIx?=
 =?utf-8?B?SFBPVkl2L2RRV1JORjRVVVd1M0w4OUN1T0JPZGcxbXM3QzlIRTl0TThyK2J0?=
 =?utf-8?B?cUNJNmlwZGtNUEhzUG5xeGNYM0NFUGVEeWxJRjJ4M2FIWndLVENyM09ERGlT?=
 =?utf-8?B?MjdSMG5GdnR6TzB4WXE1d1Nrd0w4QTVtUlNwZjlaTmpIZFZlU3FiTktiZXF5?=
 =?utf-8?B?ZmZ2aTNxOXFMcW54RklzOXR1RW93d0lzWnBuU2tpQ2E3ZStQSUNjVVRSczIz?=
 =?utf-8?B?YTFWM3pPenBBekMwekRKb0g1emNRbHFrZjczQml2aTZycDhTam4xZm81ajE0?=
 =?utf-8?B?Y0o3a0h3V1haaytHS0tUQ1BSa1l3MWkxbDIzTExoUUNyaFg5UWxJVittaFF5?=
 =?utf-8?B?RDZoT1QwcElDbGZJT0VaeE5FWm51OVhITWxjNmpXd1hkUUJOSEFhQUFzeDVt?=
 =?utf-8?B?VEsvRnFWZjFWOWNJYmJSVmVRU2FnSEhuRWVrQStNOXZiOXJaVzdDbENndHlq?=
 =?utf-8?B?OE85S3ZCOUo2cGt5VVJIQmxRZWhsT0QrMWVJTk1FZGRRd0lHMm1VdW1ZanBW?=
 =?utf-8?B?WmV4WlVjL29DTmtZRFRLcEFlcUpyMlpyMm9sSVZXM3EyTjZ1UUdZcFY2b2lz?=
 =?utf-8?B?cXRhT01rdVQzOWtUTlNQdGNEOFFzL05Zc0YxNjJNcTlqU0xMRWlXN3B4L1Rj?=
 =?utf-8?B?bHNWVzZiTjVveERvNEdRRjQrUllGdGMyeHhLZWV1UnJTY3ZoVmNmenhIQlBS?=
 =?utf-8?B?ZW5hNnBqSGJNc3piUCtkb3QxVVpmMmt2QTUzQUdxa3BGYlVBbVFJdjZNdHV2?=
 =?utf-8?B?YU5VWEVUc0w4bGh2RnJBRllNZ2JlUm1DVlpzTVoxeDB1QjRkSUV2eURsMExG?=
 =?utf-8?B?bWw2SHpNdnVKcWV1dzlFT3JMS0lNZUdwMjdZZDB0eFFadnpjTjl3bENIWmRz?=
 =?utf-8?B?Vm9sUFZkS2dGQXA5cWpJS044a1VJbW5leVpOVFI0QzlmWGRuMjlaWjJ3bTR3?=
 =?utf-8?B?NHl5ZjE4SmdqbWhnMEUvdXA2MWV4VWJNRlNlTGNBdENJbGNhUGtCNmVLbVY0?=
 =?utf-8?B?ZVhLRmpEbEdlc2h3Z0UxTFd1OGpMMDFIUmI4WDI5blR5MzZFRWlEb1lIcEsr?=
 =?utf-8?B?b3JKWE50TERTRnhnalpFLzdaRkY3ZzVjclozeTFudnJJZVFuNzZYdnNqVUFK?=
 =?utf-8?B?NGJld1RHNlRoTWp4bjRpay9oVVBrdmF0ai9jSVcvazRXM1BlVWZjbFcrRUcz?=
 =?utf-8?B?aGhVRmFwRVpuNVcrMHVLSElXNWwrZGZSZHVNS0I4V2l2dDExUFgwbzgvdHJv?=
 =?utf-8?B?ZDZSSHg0T01UN0tEL05CZmt0S25RWjlnbnA5WHlZR0s5b0hjRFNlSWgyTXhW?=
 =?utf-8?Q?1OXoMF3RAIM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SnFjempVV2xOWTVLeXZZV1IxaXdjZktRN3h5T2h3d0hYM3dwRHBaR3RwSytY?=
 =?utf-8?B?L0hJeDVWTVZ4WTlLTDFBVm1RN3FoUFZQN3JTdE1zY1N0OFFDU2Q0K0NnTnIv?=
 =?utf-8?B?b0M2eXVPTkxsbXNmMHgweWd2b0FEdVFYREJXaWdQa0lIUG5abjJxcnYreDJF?=
 =?utf-8?B?dHY5RC94bjlNZHF0RjJXdlBPUTc2MGpKK3h2eHM0T0prSG11bTdhelFCT2lN?=
 =?utf-8?B?NVdxWUtCT2JpRERGckxVc1JzeEdHdThtb29YMnQ3RWcyWGhwVS9OelJQQkhz?=
 =?utf-8?B?UXdrb1M0dWVHdVlJTTkza2lIakdGVkpBa0QvRGdSV2QzMG9WVTYvS1NQcnlY?=
 =?utf-8?B?akRmb09ENDBYS0F3NXF5QXVkUVU3SVBBSDJEcktZZGhyd2J3a3JvTE9Pa3Mx?=
 =?utf-8?B?WTIxeEsyWkdKaTlEbm1FemJLWDZ4bSs4KzhRUUczY0RBcE9nOGNpZ3k5ZGp3?=
 =?utf-8?B?Q1YrZWMyaFZ5OU1LRDc4ckdSUUJUYnBrYlQya1NtUHRFNC9SWFlMU1Y0ZTIz?=
 =?utf-8?B?UExqb0ZaTW1ITHF3SGF3Nmo4VkQ2MGRaL2dGZXJ4cXdiVWtWRjhuRkZDUUs5?=
 =?utf-8?B?S0Fxb3B3dThuRk1OQmFwcThxaDRuYVg1L3JKVWRBek5haEx4SzJ3VmJpTnAw?=
 =?utf-8?B?dlV1Q0RzVFVpbHloa0ZEalBqT1RwKzc4cHhyNWFCN0k5bHBZWUdoR2FHL3hz?=
 =?utf-8?B?RUVod3pXaTFJMGs4U0dEdE9CbnNuZG1nK1FqMFpwSTVlY0FZUS9YQ3ZhMkpl?=
 =?utf-8?B?Rkl2QTZLU3BLZ2lHNGk5K2l0dVhlbXBJZjhBWVNoenlLTjRIK3pvak5hdTZN?=
 =?utf-8?B?d2kvVkVDbU1FV2txdUdLQ2pIWmtGUVBaVFYvZ0pDbU9JdDhKRm92MDR1QXBJ?=
 =?utf-8?B?K1Fsem1RdEY5ZEcwYzd3STJ0N1Y3ZVFjanJmSUxMWTk4WWdJSkVLZ2FPUGlE?=
 =?utf-8?B?NmlSZ09nZHZEaFd0VkcrTlFsRTY4TEoxVUIzNjRYaDVqV3VRZCtWTHZQZ2lv?=
 =?utf-8?B?bU45L1VYMDlxWC9mOUNMUWR1cWM1TW5JdzJLSXhDYytLdlY4N3U4QTRzaGtx?=
 =?utf-8?B?OW9sbzFZditmTXF2bitkQTREYU4zV0hmcEpLR1NaSjIvalUrbDltNk53aGJ0?=
 =?utf-8?B?S29WVUxSem1VTFowQ2VNQU1UUnFha2pyejJLNE9NSUdLYi9ta0pMV0ZQMlZm?=
 =?utf-8?B?NDRRWDVLZ0w3eTBMYkFCMnIwRHJMUHkyUWswRlpudzNuVHJlb0lHK3BzWmda?=
 =?utf-8?B?OFRBcml5QmdLRXBNRTI3VU05a3N6TXcyeHZOMnRMNFBNYXk3eGVhclQyYWxO?=
 =?utf-8?B?Q2g5RG1scWYxMGkzTG94STVyRlRXbElVUTBWeXA3WWZGR1NoZnE0UDlRUURB?=
 =?utf-8?B?SG9tS0JEbDViM0gvQXB0bFpzQmVEQ25mSVRxdVpVQ2VNYVBYQk1COHQ1K1hi?=
 =?utf-8?B?Mm5uYnZuZHlHOU8wYjlwUzZIUERKZ1I4eUY2bHovUXpaOTkyNzYvYmVtODhp?=
 =?utf-8?B?dDZxRTJhWEhxRWVKeCtjVDBiZVZkbm41aWV3cGZqVHluT3VReTE1cWdaWDc4?=
 =?utf-8?B?Qi96VGk3andyWVRTUkErL096OFpmZXFhdnlBamVYZUVwc0FEbFZXSklXUGc0?=
 =?utf-8?B?WXV6dWpTNE9KYlRTeWVsSkxxT1FYcnc0Zk4vNm41dmpCK04rL2gza09jVito?=
 =?utf-8?B?bG94M200aENUKzhnMXdhKzRTaG1JL25JcDlVRi80eUdFNnJrWi9oWWJxcUZu?=
 =?utf-8?B?dUM2ZUtJWVRzcmpqMnQwY3MwU0dIaWtpS0FFOE80S2ptaEJlZExUSkE0dElM?=
 =?utf-8?B?Y1p2bk5iNnBXVkFjbE9EYXRJeW1JZmYzTVI2cnUvUkMyTUtRZDRTUmdPQTRF?=
 =?utf-8?B?UkVMSDVOdEkxNDFlN2JtRmF2c25TelRORTZKMEFJOTdIa1E5OEVSVXpXaGRT?=
 =?utf-8?B?RGNob3F0L2toY2ZiZjFzSFh2ZEM3TFh3UytScU5ScTFLNFlaU0lVd25kS2Qr?=
 =?utf-8?B?YzIwK1ZQT2tCK1pTZWViSkNqdHlaYkpaSk1mTGxFNDFCNm95M2x0Q21wUjlW?=
 =?utf-8?B?cEh5Z1MzWGREM2UwR0tvb3p0a010eVBoajlBWUpCZ2lTY3BJZjl4OXJPT0sz?=
 =?utf-8?B?VG1aMGJqNWpGNGl4V1JubUFYZ2ZQRHczSGIxVko0ZGNnVC9aM25jYTMzcFRZ?=
 =?utf-8?B?Mnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 615c6a15-1875-45ec-4349-08ddd6067285
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 23:02:13.7956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TvomNpSGAXIS7VcFojdd90LaqR0aHclWY3iRdcNGCdDUGbSHzmJ6RfbeL0Co0ssv6XmWwub2XJJ/gXvN0EajjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5134
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

From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>

This patch completes the removal of struct_mutex from the driver.

Remove the related TODO item, as the transition away from struct_mutex
is now complete.

Also clean up references to struct_mutex in i915.rst to avoid outdated
documentation.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 Documentation/gpu/i915.rst |  7 -------
 Documentation/gpu/todo.rst | 25 -------------------------
 2 files changed, 32 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index 72932fa31b8d..eba09c3ddce4 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -358,8 +358,6 @@ Locking Guidelines
 #. All locking rules and interface contracts with cross-driver interfaces
    (dma-buf, dma_fence) need to be followed.
 
-#. No struct_mutex anywhere in the code
-
 #. dma_resv will be the outermost lock (when needed) and ww_acquire_ctx
    is to be hoisted at highest level and passed down within i915_gem_ctx
    in the call chain
@@ -367,11 +365,6 @@ Locking Guidelines
 #. While holding lru/memory manager (buddy, drm_mm, whatever) locks
    system memory allocations are not allowed
 
-	* Enforce this by priming lockdep (with fs_reclaim). If we
-	  allocate memory while holding these looks we get a rehash
-	  of the shrinker vs. struct_mutex saga, and that would be
-	  real bad.
-
 #. Do not nest different lru/memory manager locks within each other.
    Take them in turn to update memory allocations, relying on the object’s
    dma_resv ww_mutex to serialize against other operations.
diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
index 92db80793bba..b5f58b4274b1 100644
--- a/Documentation/gpu/todo.rst
+++ b/Documentation/gpu/todo.rst
@@ -173,31 +173,6 @@ Contact: Simona Vetter
 
 Level: Intermediate
 
-Get rid of dev->struct_mutex from GEM drivers
----------------------------------------------
-
-``dev->struct_mutex`` is the Big DRM Lock from legacy days and infested
-everything. Nowadays in modern drivers the only bit where it's mandatory is
-serializing GEM buffer object destruction. Which unfortunately means drivers
-have to keep track of that lock and either call ``unreference`` or
-``unreference_locked`` depending upon context.
-
-Core GEM doesn't have a need for ``struct_mutex`` any more since kernel 4.8,
-and there's a GEM object ``free`` callback for any drivers which are
-entirely ``struct_mutex`` free.
-
-For drivers that need ``struct_mutex`` it should be replaced with a driver-
-private lock. The tricky part is the BO free functions, since those can't
-reliably take that lock any more. Instead state needs to be protected with
-suitable subordinate locks or some cleanup work pushed to a worker thread. For
-performance-critical drivers it might also be better to go with a more
-fine-grained per-buffer object and per-context lockings scheme. Currently only
-the ``msm`` and `i915` drivers use ``struct_mutex``.
-
-Contact: Simona Vetter, respective driver maintainers
-
-Level: Advanced
-
 Move Buffer Object Locking to dma_resv_lock()
 ---------------------------------------------
 
-- 
2.50.1

