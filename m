Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALPRL8Wle2lWHgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 19:24:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 125AAB389E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 19:24:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78C2110E2C2;
	Thu, 29 Jan 2026 18:24:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PPBQC9G2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4A1410E2C2;
 Thu, 29 Jan 2026 18:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769711042; x=1801247042;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RGoeKQ5IU84+XmeNSLN4c6xbk5zlTdysbDi7k1m/6is=;
 b=PPBQC9G2shLnbUdBHEBjBcaN5LEjZ0rn7oiw+gwSh19NSYwa3nzDGWuQ
 AwWda+vKKryB+sdecakjIcFkroqfwza98d+/63V7u35g75XpTJUplijSz
 a3dfZJMHNEF5w9Nz2Arklwqq2h5rrGr/Rzsn/x+MjLiFFEqDxyfUj7LYJ
 YSdyoQgaqvF/tkFRAaWmzYu7bwn8Yuz+kCtnbJZyiIqftBywcgwM98j96
 iE6lcVvYZoAegLBClMo4D53k90jHpAQCc4aWz80wFbTtRDb7H8ZDAjj4s
 whIurE0VnzRAuIWOmPJHwNMGnl5fNdLJQ0XHMsmlQo9C6Hqg0xYeDAjx7 A==;
X-CSE-ConnectionGUID: q66dRol8Sua7Cw8S72MmEw==
X-CSE-MsgGUID: OGB/o4FITv2bWEE01WtqEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="73555316"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="73555316"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 10:24:00 -0800
X-CSE-ConnectionGUID: F9tDgFo2QmO5MPMn+G/qVw==
X-CSE-MsgGUID: NbJ+vZyPR1WbfY1WakSQNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="208662501"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 10:24:01 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 10:23:59 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 29 Jan 2026 10:23:59 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.62) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 29 Jan 2026 10:23:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bwu5yWmK3qK17QmUHqzbm7hrzTlYL0nWiv9prdFCLO13gmsdEZufW0FIeqL5dThePDBI1LzkM4f8eh1Duf4nmba2PbzYZFhZtdRceCfGBgFQRJ03uZA4qBwBD5awi55sDpGlkwKN93UZff5XHWA+7dKygkZw2SmeVOhzfVdH28nqQ3Zk4/79JhKjvp6+iRjWZLP44oZKReqxG0/CRgvzKOk3lpfREWwy5isa71EV80oFm53a9mdHt1MqYVs9gtjop0SSlNCxhPY/dAIz1IgK9JqfazJAO270U3qJQ2iqYkjTKCny1FUJgAimlOEmhUuvA0UZBY+vqcX8ZlPnVIzMhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C7DbssrOko8I+Cd5ged6Xpa/sczN323HVL4CC+pYAL8=;
 b=Vl9dcs1H2Fa97/Jo/X1ADiz2aWLinExwhxEpA+BJTYscBqzwkHO5bJD8qcT05t7YMHsDrGGiCoqrwTRyqxIJePpTr7WJt6EikMP0djTCGOhwF6Otd3j+A8qXRlZIX1T3RI7ExJUWJGW3TTCXYQV0zwFr07xm6ZmCFPHjWKjjsE8WAT9WkNPD8yFhrRt3w2j7ga20WLvo4zoGSrPcRZPhCd0LN3KxQ3kBLDo7YOWV4hUG+el0p5se94JZKuq70NuR6ipGAN9reCt/uWE3Uql6r2fI2RtD5CxNYxumZY2Si2bsYbeRRLGelKniFh5PyKdw2R0whI/82bLLSfYcssBIHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by DS0PR11MB8231.namprd11.prod.outlook.com (2603:10b6:8:15c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Thu, 29 Jan
 2026 18:23:57 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::48d7:f2a6:b18:1b87]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::48d7:f2a6:b18:1b87%4]) with mapi id 15.20.9564.006; Thu, 29 Jan 2026
 18:23:57 +0000
Message-ID: <4ca3a767-300b-4fbf-86cf-a50e172b060a@intel.com>
Date: Thu, 29 Jan 2026 10:23:56 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/guc: Fix kernel-doc warning in GuC scheduler ABI
 header
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
References: <20260129103730.2289942-1-chaitanya.kumar.borah@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20260129103730.2289942-1-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0230.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::25) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|DS0PR11MB8231:EE_
X-MS-Office365-Filtering-Correlation-Id: e9e25c01-91f5-4b72-a041-08de5f639103
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VG5ydEJBeDZyOTRTQ0txTnVnd3liUUVIK1VLMDU1RURnNFcza1g5ZlR6dTdp?=
 =?utf-8?B?SkFreEwycTZCWTUyVmtzeElheUpYUWFtTGh6a1N3cnMrUS93QlQwTURPYUJt?=
 =?utf-8?B?VkI2aTZEcWdxQ2Q2YWcrK0xmTVdlb2RybWlIV3hMSlFLTnh0UlNjY3dmL2ZT?=
 =?utf-8?B?MVhWcEoxekd4cUowdzNzVXQ0RUVNcXJtZGRjWmZRWnY4eTd0cXlJdkhMMnIr?=
 =?utf-8?B?S0hhZHNmNENRNG5YUFVWMEFhaVhqNTJtYktRcXpzTWlBeG9VK3RQWTlZcHBx?=
 =?utf-8?B?M2xsRzEwYWNLOGpvbFVMSDN6dmZXWlc3cnRoaUFaaXZGODFESnRHMElVdE45?=
 =?utf-8?B?Mlo2K0hpQUMzSlcyZXVZRllMMlZhM01SUnB1RkczZzNFdmVIOXdtR2QxaW0y?=
 =?utf-8?B?aFhhZEc2dnBXTHMxQkY4Ni9HdW5WT1BPKzhsdFZSY3ZxR3IwcDl1K0pTWWVU?=
 =?utf-8?B?RE5ta08vYm91dGJzREVDYU9TQjVMczU1YnYrK3RzRnZJR3BvdTEzNlY1dVhK?=
 =?utf-8?B?K1V4OVhDMDM5QWd2bWJUZmxDZEUwSWlMMUtTaVJRZVo1U1Q2Wk5SNUluSDVm?=
 =?utf-8?B?UHZBSjZZb2lUV0hiNzRzaW1BZlY2amRkdFQxbTlNOERzVmRjUWVVeTd0UFhn?=
 =?utf-8?B?Ym0wRzdaT09pOSt6TmFhaVovS1FUY0RvSXk3b0FDdE1USmhHa3crU0h1SkxT?=
 =?utf-8?B?NXNDUSt2T21CektTbEM4alhiVjJtSjlST3ZYalMyalhEOVpCWGdIZTRLdklz?=
 =?utf-8?B?QnZZQjgvRml0RS84eWpSMEk5R05NSXQwQjVpQU9MNlhGWDYvSE5pb0lra3VO?=
 =?utf-8?B?T2hUSHdIWDdiODBiR2psWlhTUW5iZVUxRHB0TTJzdjNMYW1sUXUvNjBkRmRQ?=
 =?utf-8?B?RlR0QTd5S3NQQlZJSHFuSFBRSWVLNzdYWk14NnFFdEthZWpzNzhJMmNCUjk0?=
 =?utf-8?B?VWtQNFFhZkFYdWI3MDh0N3RtbnROcDZPOXlkYVBIMGFsY3lkRHJKNWpRdkxP?=
 =?utf-8?B?T1I0b3BYMlhXU01SRUZBVDdQbnc5UGVZN1VLM3pjdUhxamZUZHdKd01XQUl6?=
 =?utf-8?B?SEJYaU9RWmhjWUU3eUxDbXIyZ25relZJRy9JbnJRZUdLVkFZNWYzVG5mVzN2?=
 =?utf-8?B?QmJBc0RMcU5ySjRlajJzamVGRTMxZ0RaRXhYQm84Q3hlQnZXeFI1b0hSTUxQ?=
 =?utf-8?B?WWJoQ0NKMmtQOGdHd3NIOVpUSFI5L3lDc2RweC9UQkdFY1dhb2ZjWENhdUxr?=
 =?utf-8?B?UjhFTk15ZUZUMlR4cE9qSko0b3QrSkNFaTVNelVYWVR4Wkx6d2FDQVBCUW9u?=
 =?utf-8?B?d0ZJcXU5YWtYellZRzkwcm9OOS9sbGpXTEVHUDNmVFFNUnIxMHdYVjRabTRO?=
 =?utf-8?B?RHBENjZoVXlHTFRPVUtGUUY5MmRLalBTQUdnN29lUHlyWnRFNFZiczFiNlNW?=
 =?utf-8?B?bHFCbFZRK2dJbzNsalZNNTg1NUhCeFBMOG5qSXJiNzhDZzcweU1XcXRiWjds?=
 =?utf-8?B?YUlFcFNsZjZnNCtzbGxGa1F2OTFiY2h4Q0loV01XNzlrdUF5dkp3SFdjc2sv?=
 =?utf-8?B?U3c4WDZzZ0dTMG1VUTBnL2R1dlFQK3NLZjF1cGl3a2dlWjBqSmp0ZEFRVTVC?=
 =?utf-8?B?Qm9FeG9Pa2VTVE1iaCt6aXVVQm9CT2pJcGNtcHlFcFdBUHh1cHpOUytXOE93?=
 =?utf-8?B?UTllWkJCSFdkRGNhaE5PNVhFZkdYSS9yVldQdkpkajBtZ2MrUEFSR05TNFgy?=
 =?utf-8?B?MEZsRkZJaXh0T3JmMVhpb3hXL09hSmJFRUZvRmY5OGRSb010NFB0ekNvNkJu?=
 =?utf-8?B?eEZOcnBrdUlYdnpZemlaNldCWlU3VWMxTDY5Uk04SmRlM1IwNXpmREloTkJQ?=
 =?utf-8?B?VUtxbEx2RFdJK0dRaFlYbzF2dVpIR1BzQU5ieWc1T0p6SkpKM2l4ZHozMHk1?=
 =?utf-8?B?WXhoOG1VWTRpN3FoalVxTHBVWmI0aDZ2RUUydGxVUExtdCtjMk5OcStNeXIr?=
 =?utf-8?B?emNYc3d1dW9jQ3pqQzVYd2FFdzZKd0w2VlF3TW81NE5td3Q5TFFPSW9TY2ZP?=
 =?utf-8?B?MnZ0S1g5aDFwWkE4N2d6RmpoUno5enNSUW9BM1hNRDBlWDFxanNOeVMvOWQ1?=
 =?utf-8?Q?EhbQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2loYkcyMWtXZjdhT25zRnZOWThmY0Vnb1hHWndpb2ZMcS83eVRWWERRWFpO?=
 =?utf-8?B?WUV5QW9zQVEvWko5bTlTSm84Y3lwV2RJZ1JKN3lRb0pPWW12aWk2LzVxR01R?=
 =?utf-8?B?d2NrV3d6TWhYd1FRbVNRN1d0VXVTY3lJdy9veUh3Nnh5Ti9GZmhMYnUwU2tl?=
 =?utf-8?B?VEFadzlLbmRmOWtQeG84MWlCQmw1SDBPbC9oSHJ3N1FiTkUzLzNGTWhCTnNm?=
 =?utf-8?B?WUJ3RWpnd3VNL3REdmpCVEFWVXczNXFONGVUNVFBRHVCOE1YNGRZMUdtK21O?=
 =?utf-8?B?blF2Vkc2WkpLZzM0b0g2WDV3cVRyWFYvZ0JPYmdKOTNTclM2cmJNaFFveVNE?=
 =?utf-8?B?amtYZkFrcU84YUdaZk8zN25xZElXQW55OWtGQlB6d1FkTnNOd0laMnhnWWJw?=
 =?utf-8?B?VEJ4ZUljdEVoMXpPS0RKL2s3U0V6WFIxV2gyeVBxaDJOQlNOZkdzcTd0Um1D?=
 =?utf-8?B?VjFrMHd2UGoxVjRiV1pwWTNnZ0ZoVDRBaEhocXlneHVkRjczNmJIWVl3SkJ4?=
 =?utf-8?B?b1ZiOXZ3K25SS0JtU1A2VTBqdHV4ZGVVTzZvTU5yeXJyZDNJVmJFbXVvRXBp?=
 =?utf-8?B?eEJwd0VHSVdsTDBLMFc3RzI3R0xrdHNMWVJoRm5VK1NUUmlhT09NMXNCelpa?=
 =?utf-8?B?aTNIRHFHWThGS1AzaGNxQTkzVnkvcEt4MDJUSnJNN1NZNWdYOWdLSkpkTm02?=
 =?utf-8?B?RWozWEd4OXdGdFFIc3htUkY1REI1V0lmWk1YcGpzRXE1c2drb0hpblZrWFFz?=
 =?utf-8?B?U1hYZW4yWXB5YTRXNTBEdENxMVhBbDNnNHVTalFwTitMcGtHYzc5d0Y0TVpC?=
 =?utf-8?B?Z2l3Y1FETTVHMVpDazNVYi9PK1RzM3lpTWVPR29FQndVc1IrVUJnc0M0M3Jv?=
 =?utf-8?B?WWZvVElWaVBTTW9qVU5Ha25qcENZVTFML0xLYktuT1VVT0xCeElQM0JtMDZw?=
 =?utf-8?B?dWxWbzM1MFlyYWczRktpTjhIVTdCTEUzMUJtejBpd3hFVng3SUE5TkFma0d1?=
 =?utf-8?B?R3lISHhsengrQzNFNkRGeEJlSkdTVkxVZHdHaXN2VWkzSlBaSFRnbWdZZ1VS?=
 =?utf-8?B?cUtYRncvYU01WEhadjBpb3hZbHZGdXpLcWF1NEJabkw2azFERWVWMUtNMjhF?=
 =?utf-8?B?cUNVYW9iV1MvdG8yK1p5WG95bTZNQithdkUveitMWk91ZEpxOUtUS3RJMnF1?=
 =?utf-8?B?M3hmWm5mVG5oT3FjZmQrVks5VGVxbDVYcG00N3MxbUF0NS91MWdLMEY0VWJp?=
 =?utf-8?B?clRENFpyNWM2emtBQ2F5Ym0yWVd0cnl6VjRIOEpqN2xTcm9lVGFHbmhQbXFi?=
 =?utf-8?B?czZnMURYVGM1VmY3NnVqblFsUUV4dXJBWWRIT1poMk4zL0ZHS1lHRkNOcU52?=
 =?utf-8?B?cTNYWmp3eWE5QXQ2dUdpaCtGT3ZndHJpY1oxOE00dEJiWkJ3dFRCN2dMZE93?=
 =?utf-8?B?STdJMTNHTzE5cVExK1FIVUp0VWRSWUhIc0ZCMEJBM1hZMFBGS1R6cHlNRTJD?=
 =?utf-8?B?WUxZNGZxdndpYVFLbUVpU3RWSnZtUzAyRWViQjZzNGQ1dytWSXc4TzFMRXYx?=
 =?utf-8?B?SVMzdS92NGRhNjNqTmVsTFZUcERkbkdGUG9RTmoraW94UjhSUG1CU2dQdHo2?=
 =?utf-8?B?U2N3YlcycW1WMUh1L0RhcTRxbTBETkxaYk1QT3VLMjRIZUV0cHU1ZDFTREk0?=
 =?utf-8?B?OFhJaFpqM1J3bVBYK0VsM1ZrRTdjN1QrY2lBcGlGcmd2YndpYXdZbjBlZVQ5?=
 =?utf-8?B?MHdvUEJlT1RBakpRVmJUZkNWY25BTFUxS0g5b2p3bzRPaXNIeDJzY1poUHAy?=
 =?utf-8?B?RksyWTkxbzE0VE54bUhWek1CUUhHSnVpV3ZLcTdnQmFhNVlTSkdBMHJYbUZw?=
 =?utf-8?B?OUFrQ3Y2LzM2RzRKQW9CVXJ1czNJclYvcVUya1l5MGRsaTg1REFrNFhLMGJt?=
 =?utf-8?B?OFljMGhIZyt0VHBLZXRYendTS0o1Vi9hOXoxUEs2K0lJdHBMSE5QQ0haT1Ni?=
 =?utf-8?B?SEZnaDNYVXVwZnhYeXllYThuNCs0R1dqYVU1cGRoemRuc0pXQzMzbXNnMnpV?=
 =?utf-8?B?SXZMdmoxT3RZUXNES21VcU5pd3pZRzQzYWFtUkFrWUJhcDdyMUU1MkowUlhj?=
 =?utf-8?B?bmQ5ektNaHRjWlhGbUlWZXJzaEtkcGR2Q0VQTUJkbGpTbFFnZm9vTkdsTUYy?=
 =?utf-8?B?SUw4R1VIdno4ME9SQ0VjUm9qY1lVdkFxT094WHNaeUEzSFowYjh6NlNpTEdP?=
 =?utf-8?B?cERYNDZHWmVSQS9PNTlPQ0x4UVVnMlFZOG90bFFJR05RTzdZSVNqVCtXUlVs?=
 =?utf-8?B?aXRKYzFpS2RtaEFxWXpzdVFCMnF3TXF4a0hpMnJQd1F0eHAwSE9iNXJkY0Nv?=
 =?utf-8?Q?BVn1rwmBUsHhjalg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9e25c01-91f5-4b72-a041-08de5f639103
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 18:23:57.3710 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L0SU727XxUEKdXpeEKPXWyo2dDtdRd8wOxOyZTZ2Spg828LlVPVaVfS6xWK/OL9BI2BBX+3wrVsv5yvVBe1HZay5jkcxIXBqlxFBtPXN+dA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8231
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[daniele.ceraolospurio@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 125AAB389E
X-Rspamd-Action: no action



On 1/29/2026 2:37 AM, Chaitanya Kumar Borah wrote:
> The GuC scheduler ABI header contains a file-level comment that is not
> intended to document a kernel-doc symbol. Using kernel-doc comment
> syntax (/** */) triggers kernel-doc warnings.
>
> With "-Werror", this causes the build to fail. Convert the comment to a
> regular block comment.
>
> HDRTEST drivers/gpu/drm/xe/abi/guc_scheduler_abi.h
> Warning: drivers/gpu/drm/xe/abi/guc_scheduler_abi.h:11 This comment starts with '/**', but isn't a kernel-doc comment. Refer to Documentation/doc-guide/kernel-doc.rst
>   * Generic defines required for registration with and submissions to the GuC
> 1 warnings as errors
> make[6]: *** [drivers/gpu/drm/xe/Makefile:377: drivers/gpu/drm/xe/abi/guc_scheduler_abi.hdrtest] Error 3
> make[5]: *** [scripts/Makefile.build:544: drivers/gpu/drm/xe] Error 2
> make[4]: *** [scripts/Makefile.build:544: drivers/gpu/drm] Error 2
> make[3]: *** [scripts/Makefile.build:544: drivers/gpu] Error 2
> make[2]: *** [scripts/Makefile.build:544: drivers] Error 2
> make[1]: *** [/home/kbuild2/kernel/Makefile:2088: .] Error 2
> make: *** [Makefile:248: __sub-make] Error 2

Given that this is a build fix, I think this patch needs a fixes tag:

Fixes: b0c5cf4f5917 ("drm/gt/guc: extract scheduler-related defines from 
guc_fwif.h")

With that:

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>   drivers/gpu/drm/xe/abi/guc_scheduler_abi.h | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/xe/abi/guc_scheduler_abi.h b/drivers/gpu/drm/xe/abi/guc_scheduler_abi.h
> index 513b22a87428..19ec89bf39c5 100644
> --- a/drivers/gpu/drm/xe/abi/guc_scheduler_abi.h
> +++ b/drivers/gpu/drm/xe/abi/guc_scheduler_abi.h
> @@ -8,7 +8,7 @@
>   
>   #include <linux/types.h>
>   
> -/**
> +/*
>    * Generic defines required for registration with and submissions to the GuC
>    * scheduler. Includes engine class/instance defines and context attributes
>    * (id, priority, etc)

