Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA43ABD243
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:46:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB01310E466;
	Tue, 20 May 2025 08:46:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZHboNPq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 495E610E48D;
 Tue, 20 May 2025 08:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747730804; x=1779266804;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YyvyAWAc0lNNApH25IYCFuPrApLPI/tFNP9kxJArOoY=;
 b=VZHboNPqOf9xcItyxp1L0IEHWnsxWqDIGX02Zi6jRWHfacLgMaGgiaGQ
 9BhU3w6AVtE6BWRbeKS8Eiir6EeF6cJtegeENFCmj/CD5DM1/veR1p67h
 +EUrLLziK/qX9cG8059699NItDmTmO0UwFPyq25mNT2Hv9w5MP+hq8PAt
 WxynWXgRRsbFUEMH8q2wxeXauVcQ2qT3ZBLPRIQbvfS0imAUmim8LIjSd
 /klps1m/1jRzb3teec8CL2MlNJqLSR802Okiq2lVieyNOH98Hdpq0HCPW
 8D6N48dFde6Y/tU198AGPfYOgG2uUxfR9aNxabj5j++fcv0uXQ689WS0D g==;
X-CSE-ConnectionGUID: 3TXjC+ojQgu/QtcpV7F9iA==
X-CSE-MsgGUID: 7XfyMYz7TtiTYkPs3ZjFVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="48768361"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="48768361"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:46:18 -0700
X-CSE-ConnectionGUID: 3yxye5gjSSqvksoH3Ysdug==
X-CSE-MsgGUID: wFKOoyMWROKdtRhA8mx5tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="170644765"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:46:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 01:46:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 01:46:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 01:46:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=st0hipu0TdO0yL1scTzGHGs3zuw8/Z7LLyA7Fjnte+BFFtvku2rMCCYM8XEYAqYGSYm2i/lyjD2zXibu/I3rPAZq/ns3nURdhBZ+RxVBHYbUWE9F+e1xgXcjnP7g5eTuFNFEpXwCCPbukAqL16y2zfp+LVkQq6zqRfw4E+/Cm6ObZJdTpNLyXfgJWvMBRY94rrdowrDOQRAX5IrSBfF2kBz4+nTtUyl+xtrQ6m2ucSNVynm+Mw1RcX1oeI9TXoaFm5q9vfxfIAv7tvoDo8hLlbWuYAFl/VchsZEV0Mmw5z+DlwelAkcyoy+n/0AHcacqpnwjt2XalLq3vrfcaJYJIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K88yEOh4xgLV5YrUAHkMDO+GT+BzDx4P1lq/FztWXBs=;
 b=vsFo+XFsZwKQQqNh19fR2o0La6B1vYwGBbqyR920K0/0Mh8LJ8tP+FMQVuO5nppF4wfXImT3wrksmGk3C5hqd34cUlOaqscq1un4uGu7d4XYZk2Kjz3hGFDKNe3/YZ2li7Fi+8drss9UcJSdo85/MKyUC6YVA8yhQpWfZr0GxEdnZ2xxy5n5lMn6QUOtHg7FOTDfOQnI1YDisuuntmBQO9C2WHWj37iqU5JHnptbBVcmUjU27LHKVIC6WassJ/N06KVCFEA5wom1UZakjyeXwLt9cLDHbrTzPvUr9FoWHtXM0a0pbufPhjmglgP8RszeMAgC7GiiM7MUCC0NcdfmsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7778.namprd11.prod.outlook.com (2603:10b6:930:76::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Tue, 20 May
 2025 08:46:14 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 08:46:14 +0000
Message-ID: <30b6a6f8-18a6-4904-bc32-d100d02200a3@intel.com>
Date: Tue, 20 May 2025 14:16:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/11] drm/i915/alpm: Add PR_ALPM_CTL register definitions
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-4-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250502085902.154740-4-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0097.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7778:EE_
X-MS-Office365-Filtering-Correlation-Id: a9e6aa50-bf7e-4ea5-0f0d-08dd977ac76d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cVJFUHNDeFNaTEh1cmJQZ3o4aUtpcHhZVjdMU0F1VTJIRzVPNEFOVEVScXRm?=
 =?utf-8?B?UUkySTBYSTI5TjJBbEZOWVpMV0E0OWFrSTg4eGRqNUJnclEvdHJKb1dhTFU3?=
 =?utf-8?B?ODlHM0lBVklWU0FoOUNIdlBkUHRsVVpCRnQyeTlZUVlRSk9QZ3c5U3drN3dU?=
 =?utf-8?B?eHJCYVhvMUpVd2tLSTFCem1hWWpHcUV5NW9FN1hvU0tSQm1yelIyRDRBL2c4?=
 =?utf-8?B?RGE0aTlkcUZ4NHNFTVQ2U0Ria2lVdU5TRWNVL1A3RWllNG5VclF1R1liMDJB?=
 =?utf-8?B?TTU3V1czYmdrTXpudDV6TDNnaDhMeVQ2bDFTR2NscHJTdVJzYzhGQzYrTlFH?=
 =?utf-8?B?SC9zZytGNlhmMGJ3MW9RQ3dyTlF2Qy9SVGVGU2J6UTgvaktoRFNpNDRGWVBM?=
 =?utf-8?B?QUQ4OEJmYlVVRmNlSnZOOGxwRk9UWENLSHVncEV1eEllMmYxcHZud1h5eGkr?=
 =?utf-8?B?TEJtdWk1b2NMd0pmTnZzR3Q0SU9aM1VscWJwR3pFa0pmY2RyVGVtbE1McitH?=
 =?utf-8?B?VDRhU3YwM1RVMnhpQ281ZForbUNPTnorQ2pEUnJXeXZhZjEwSHpsMmZhYnVx?=
 =?utf-8?B?akNGRDJDeEZwbFdXbEIwSzYyQWloSENjTEk3RGRLWUNVZUVWQmJZcGhQdDBq?=
 =?utf-8?B?NEtlM3U0STdlYnFNOFJzNTlQc1JJcWdzZXpIYndQTlljdHVYdHliNXVYR09z?=
 =?utf-8?B?VTlpcjZBcnVzeTNzTE5CY09qZUNUa2ZSbXBLYjh6N1k5dHFaZERaTUlBckdv?=
 =?utf-8?B?dmpjblo3VFpIR3BUUVlKdlNLckxsQmI1ZDNOWFdnTDdMakp5QStvM3B1cDJx?=
 =?utf-8?B?YUJSdThud0hhVjRFTWNudlJUcWJINS83WGltcVc5L3htL0tyWFBaMkVob0E4?=
 =?utf-8?B?SUpQU1Z3UXgwYXZrWFhDRTN3amZBcjNpbmRyOVZaeFFkMmZLKzAyVGhtQnlU?=
 =?utf-8?B?MEt6QTlWZGh6TXBuNEo5U1R3VmxIM0VqaGNlUU9mNDFGbnJjTzgxS002V0Nz?=
 =?utf-8?B?eDB6N1JTM1JFSUM1N21yNFBGM1ZaSnRTMFp0QlA1ZVF4dkhRUlE2K2xkMDF0?=
 =?utf-8?B?SVBvUVptVlBDcVA5VVNJL3MwUmc3YmEvTEhpcDgwSGRncEZNL2FncTBndjVz?=
 =?utf-8?B?elo5T3krTFJvMWk5TGxaTjcvTzFRQXg4alRsczhBQU0yRVVISkxqTWNCbHAv?=
 =?utf-8?B?a293clh1QVdQVk84QXF6RHFFZ0dPWDVHQWpzRERDT3IwdDF2L25NTUcxR2E5?=
 =?utf-8?B?OEpJS0QyekdHZ0pDUjZ6V1VUSWRaYkljWkZvTnUzNkpTeG52RU4vNWFtLzdI?=
 =?utf-8?B?U25hR1luRTlTNGF6SmlRZnpCUnJWZFpxV2xSbzI2TzZnMlJvOHVjVkY1a2t5?=
 =?utf-8?B?Tm5FaE0wVWRmUXp1YnZNMkpZQlRGeXN3L1B1RFNrNzJJUGdVTS92emNqUnZa?=
 =?utf-8?B?OHB1dHRnRVR5QktkbzdldEhHN0NVOWxoMEVZbithaDFGeE9DZkNzcGFCSGtF?=
 =?utf-8?B?REM4OWdXSFNhZldscGdaSG5EdWt0ekg4V1h0STcrVGVvd2pxa0JwM1c1dEc3?=
 =?utf-8?B?M0ZDOXlUY2Nza2JiYW1PZmFYRi9pSVQ3cG9wWWtUeldwU29TcE5QL0NIR3RN?=
 =?utf-8?B?dFl2RC9wdSt5WjcyeWcyU095Uk9DelFuVkxaNzF6Nm1wd2gwSUc2MUYwOHl4?=
 =?utf-8?B?dHlVTDhRSk9Xb1hpNG94d3YyaGI4Q2pMVWRZTWc3UDBnSFI3NkgvdGU4bERE?=
 =?utf-8?B?M1o5Nm9BcDRteTBMbDVZbG5HS0FjWkNtbkZSM29uZTJ2LzFpdSs0bTJqZFI0?=
 =?utf-8?B?cnNmODdNZy9HcjZlNE1pWFo1dEE0NVlzOXZSam0wSFlMWHhDeW1wV3V2cGFZ?=
 =?utf-8?B?RUZERytYcGRiN2xBZVV0TXVaTHVTUmZaT2owOW5WVkE3YU5XRy9mK3B4Sy9X?=
 =?utf-8?Q?CE7IoewVEYc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0h0WTkzaDdEMGRnamxBMlIvM2ZKejJCQ1JmNlgrSU4rNEt6STY0T2FjYzRQ?=
 =?utf-8?B?WjBhb3J3WDFUMllHdURWd0pnK3FCN3hnUElOTjhxZDBUQkZ4alpZNFQ4YWNH?=
 =?utf-8?B?RW9aTWdTSFRjWTlGTzUrekh5Y2h6TEdyQmxQaEdYaHpzajhCbE9Zak9rTHlu?=
 =?utf-8?B?bU9FSldlR2pVblByVENCUGtLT0pnU01BTlp4elFsZ293TnZhSEJ2UUV5bVl0?=
 =?utf-8?B?dDVEVnlPU1pBZVduU0N3MUJtYnE1TXlZb3I1SUx6SWRoNk1kKzJIUGdDaXNy?=
 =?utf-8?B?K3oyYXBpbFJQS3I4THBvMk1UNnFqZnB6YUllUHVCTXZCSEpKbThDUGVmZDhM?=
 =?utf-8?B?SkJhVjlyMWZsZ21xRGdnVFFMZmVxNjRiWXQ4S1BCSkNzcHdkbXFoTGs3SHNK?=
 =?utf-8?B?WUUzUkxGVCsxaS9IMmZQQkhMMnRhREdUM0gzVWFCK21SUVdGemlaWWlpV0E2?=
 =?utf-8?B?OEsxb0tKM0c0ZjlUMzhmWnBnL25kNks5NnhLRmw2SExWMno0N3c3bUNKa2w3?=
 =?utf-8?B?U2dGUnllNFFXdy9uQWk5NU1ObzVPNkMzOTlwSE1leFVRQ0ozWkI1bjBlUUdU?=
 =?utf-8?B?TVNWazM4MlRYV0xxQTdZL3Z0TmU2ODY1TzgxaHdtOHRBNHpFZ0JoeDljS3RV?=
 =?utf-8?B?NmFnVm5wRjFDWkZQNnZIaU9rUzZXV1ZYcjNPZC9YN2ttUkNQa1NBL3NtRUVI?=
 =?utf-8?B?Z3pJejMvbTVHakxKZjFFRWhUbzc2cXkvWWNwcDB2M3Rua1JZK0V4WW5YcGk1?=
 =?utf-8?B?RXhjV0dab1BCMkNieXorUUpxWENsSXNQbVF2QjRKd3Fjd29XenRLbnhKZk9C?=
 =?utf-8?B?L2NqZVdJajN5NGg0ajhXclZ1bUlFY2hwb3ZJWnd0blVPZHhGR0tnclF1cVFO?=
 =?utf-8?B?amlHSGRIRU5kZTVsaG1QbWpQOTNFRXA5ZG9OM2lBWUFQdWVXMGJZTEQrbE1a?=
 =?utf-8?B?cjM5cXNEellEWFV0NXloL0pJWjJ5NGxvME5SeEV2Nklvc3pOWmhaQllzSyt3?=
 =?utf-8?B?U2hCT0VwMlpiaDlZVlZpcGgrMml6V0wrNURicXVYRGtOODNTaGpzTkdteUZr?=
 =?utf-8?B?NVB3cStLSldXVU0reHIxSlh2eVlhS1hTTnlYVUlkc0FGN1k1WitldmY0UlhP?=
 =?utf-8?B?ank1MFZUaVhCMjFZcnBqOFJyRHBvRHl0Q0g2dUtHK3RMc0lyd1RwOTkyS0FJ?=
 =?utf-8?B?RHpSNjFvbUZjbndxRFdZeFRsZE92QlJZLzR0dzFpQWpKem1ZUUxpbXFCdzBE?=
 =?utf-8?B?L3VTRmNrSWtlMHZoYXR1bVRpcmJqdnYwZTg0SmRnUVFEV0Nncnd1Z0l5SnYy?=
 =?utf-8?B?QUQ5WUhFYWtyVDAycTN0c1NtWnp2QzQ2QUVXOWkyTVJBMjFyZjRseGtHZEcv?=
 =?utf-8?B?elRPcnpiZmt1WEtJa1Z6TXRZbDJMM0laSFlyQStxemhRbnpoQzZJdDJmMUhS?=
 =?utf-8?B?V3ZzemdQRkRxM3o0U1FrZjlDYjk0TUd1M3dhZDZSV2FkaVJzUEVULzBBVzdy?=
 =?utf-8?B?L3AwRnp2YWpZdmw3WXpTS1dVTGV6NmIrTjhCejJsMWsyamFHZlFFQi8rb2N1?=
 =?utf-8?B?cEwxUC9BbGdrNDhZZHFKOEdUTlRNaDJReXZXcGh6cTgxNkRDL2I3bXRwK0NC?=
 =?utf-8?B?LzBpSkVpNk5iVFh3VkRrdjJvR0FxamptUXNSZ0xGZWVmZWRJMnlISlZ3RHNS?=
 =?utf-8?B?akFmZkNmd2pRamJpMTdOUERGV3UzRjROVWtKVkduOWI2Smlha1g3TGZDZXE3?=
 =?utf-8?B?OFFrYmFGWm5MbDF4b2JQUm9XYUFQUUZTTUVVV1hBcU8vcytmeXRmNHhYcmhm?=
 =?utf-8?B?OGtqb0hHa2d6NFBQMXIwNUJSd0I4VlhoOXFuUDhGUGxzZlhoaDZscGkxZ045?=
 =?utf-8?B?c1NqL1ArV3pISW8vZHRzUjZtTVBpczdNV043cUpGejBLOFlMZ1pHWjBlN0l4?=
 =?utf-8?B?SXJ3dCs2cW1EcXdRVmFOREp0c3FnM1VYbUwwQ2FBYmU4Z0h3OTlHLzFOYXJP?=
 =?utf-8?B?OEYwelFLMUV6ZHBXSEtzVDZnMnNhbEZ0NmptTDZFT1pZNDZ6VmNFMFc4RFdO?=
 =?utf-8?B?SW95a21CdFdVWHBNbkNjUnlTRDRjTUh1RHZpWlZLVkkrUEtFeFh3L201RSti?=
 =?utf-8?B?aDdWVWF5cUp0eTdrZkJuaVhLaWpSUEs0bkZsZmg1YXZiNGRPc0VBWVRXdThY?=
 =?utf-8?B?QWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9e6aa50-bf7e-4ea5-0f0d-08dd977ac76d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 08:46:14.7538 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vMdJu7kb9imhXvIfLJQy9yppHjqq360v+hiHsrrNygNyRMMfb0XGLrcRlQ+yrrngT6fqWzIk3i0pEI1tqoHjXWSoMlDBlD2yqT2xW8HOzXk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7778
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


On 5/2/2025 2:28 PM, Jouni Högander wrote:
> Add PR_ALPM_CTL register definition and bits for it.
>
> Bspec: 71014
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_psr_regs.h | 10 ++++++++++
>   1 file changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 795e6b9cc575c..aad3ac5f502ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -266,6 +266,16 @@
>   #define _PIPE_SRCSZ_ERLY_TPT_B	0x71074
>   #define PIPE_SRCSZ_ERLY_TPT(pipe)	_MMIO_PIPE((pipe), _PIPE_SRCSZ_ERLY_TPT_A, _PIPE_SRCSZ_ERLY_TPT_B)
>   
> +#define _PR_ALPM_CTL_A	0x60948
> +#define PR_ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _PR_ALPM_CTL_A)
> +#define  PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU	BIT(6)
> +#define  PR_ALPM_CTL_RFB_UPDATE_CONTROL				BIT(5)
> +#define  PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE	BIT(4)
> +#define  PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_MASK		REG_GENMASK(1, 0)
> +#define  PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1_OR_T2	REG_FIELD_PREP(PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_MASK, 0)
> +#define  PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1		REG_FIELD_PREP(PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_MASK, 1)
> +#define  PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T2		REG_FIELD_PREP(PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_MASK, 2)
> +
>   #define _ALPM_CTL_A	0x60950
>   #define ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL_A)
>   #define  ALPM_CTL_ALPM_ENABLE				REG_BIT(31)
