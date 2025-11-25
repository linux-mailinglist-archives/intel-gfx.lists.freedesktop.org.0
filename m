Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0900C857A8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 15:45:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4715410E2A5;
	Tue, 25 Nov 2025 14:45:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cfOCdUbL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF54210E2A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Nov 2025 14:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764081914; x=1795617914;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Qh6LmmpXN58ga1L/CsoaNgOcWXr0MB/JBeomLTSaWX0=;
 b=cfOCdUbLmmsgN/yeAu2nF5lzx+/w4NiPXMFTTYtYPzbs9FeMw0UIF4wU
 5d6YvjtA+le5S3YO9a2vF5RR3cHf+h18iLDeL20N2rtihBY51e4rRJ1bf
 hu+PwPgf4fOFYumSiJzd2Di50tXELU3rnPW0o2cbcMq12a8oD2R/KZxO0
 cZsya5haUWu/z+BvxFKc7j18E+i0Yp4repWjPlXNRNiLGzyWP5T4tJzZP
 Fn090r/RogfYTtPBpI1usogXjLwvZd1c618wZ3GqgFLZ/phzpcJIozhJq
 J1zGlv7ace7yMyab6I/tXhgfw7xsGOrZ/K7VIBPaFyDf6VRRDTZQ1Owex A==;
X-CSE-ConnectionGUID: 8fc5zDEFRryguaeR4BwGGA==
X-CSE-MsgGUID: a0j+zIUJQWSOz6y+OwTZVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="68689570"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="68689570"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 06:45:13 -0800
X-CSE-ConnectionGUID: /wVF8BzsSFC03VnlNgDV4Q==
X-CSE-MsgGUID: D2BGezEqRJeCnig6ISU8WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="223329150"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 06:45:13 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 06:45:13 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 06:45:13 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.56) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 06:45:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ezg5lxRM/kNI1ukeOHAKYq3Dl7Jbv6lbokzDhhBcvQ6GtGGqF+OOai8Y2FMwSwEJ3hcRpz73xKfgn2meg5cQcxNrfg0algxb0kGZ1fPwAp9vAaqRgEMWFPl7rbLv2CVcbtvjDlmCCREeE1p7mTP4Xqo5mj0+n7qUulud62cXwhYSMaJTc5OnlT4byhiq4YEjzlUWUE15DcK+rp+RgXkQy6BMPIjQ+JbqpOGyPsnhC8b4ZdmRuYJFYwGZ6THKuSLK0zpBsHMTG4tu7qCzDpNdI9AxC1zIwrknCJGnO33Rt0asw1P6RYO+OrpIOdEL/bjqDq2g5oumA4F1QxF0by7cXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ddHqTGUsZIt/uqcxydDRUp6ht1JuEGTUxxlO48Vc2TQ=;
 b=YO5niTv9x/c4IylxdHHOsoECW4sLgwkzp7IyTwoY74cvexDEPUb6gye5KfFfwglGouiNrPaQG/snVChOpojAVhwTTWO4gTOyFPW10K2KKotU1E7XWJtW6NojB3ZP3kugc6EEtXqihdsPcdIMqDubVcaK9R+LeMmMDq2zOkF6h3ZCK3cbuJ9DFvJcPXWEJURncpGk33YhhfvvM9iWcA88JWVojKH0Wc8C1/c2xvHwcyrKnng2/BPjQfASL6bGzysFyksYG57PaDBFkrwr1MKYIYSGDh7KOzAbAEVwZG9hRd8s+rz8yJZApgGo9RWM9JjwaZeuj1p3Faozd+S8PI0weA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 by DS4PPF0442004E1.namprd11.prod.outlook.com (2603:10b6:f:fc02::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 14:45:05 +0000
Received: from MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::bbbc:5368:4433:4267]) by MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::bbbc:5368:4433:4267%5]) with mapi id 15.20.9366.009; Tue, 25 Nov 2025
 14:45:05 +0000
Message-ID: <b1424360-ad58-4e16-adb5-e6c7dea834e1@intel.com>
Date: Tue, 25 Nov 2025 15:45:00 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [V6 PATCH] Due to SLA agreement between PF and VFs, multi CCS
 mode can't be enabled when VFs are already enabled. Similarly, enabling VFs
 must be blocked when multi CCS mode enabled.
To: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20251125101345.2324973-2-naresh.kumar.g@intel.com>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20251125101345.2324973-2-naresh.kumar.g@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0177.eurprd04.prod.outlook.com
 (2603:10a6:10:2b0::32) To MN0PR11MB6011.namprd11.prod.outlook.com
 (2603:10b6:208:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6011:EE_|DS4PPF0442004E1:EE_
X-MS-Office365-Filtering-Correlation-Id: 58907d4f-c18f-4d8b-9572-08de2c31385b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R0ZsTWF4SjNybUNhUXBxT013elV1dXVRbnFEeDJ2bERLSjBDTXBHMjhTK1ly?=
 =?utf-8?B?Rml0bjk0NFVpcHBPSXRHUmhrcEYvTU1oa2x6aUZFc3V3Q2VPUE5NMkpqYk84?=
 =?utf-8?B?aGR2bzhXRmVQUmRhdTQyRmpRcmZYT2cwR1A1ZmRCUHM1RWd1amhwbXExY04r?=
 =?utf-8?B?SG11UzYxUnVzdk0zb2RQaFQxRC93dXBLUE9xYnZhMkZRTkpYT2JGUUZ2TXNi?=
 =?utf-8?B?cytlWGhNbHJnWFNobzlHWG01RTNab1V1ck1nTHoxdVNvN0JoeFBRd2dMRm1N?=
 =?utf-8?B?SUExR3dzRms3Nms0em9yTGd2cmxWbUhMSEZTOXQ4Rmh6ZG1tYzNMaFpTc3BL?=
 =?utf-8?B?endhaE5UZCtoWi81aUNmOS9URlBRNkYzdHp6RFREcVo3cDdiZ1E4aVJPaTAr?=
 =?utf-8?B?VHdHaWFPS0Q5UEFxM1NOTWNtbkZXcEhmUjVPcnN6OUpUUmhhRjJ0dy9PMnVr?=
 =?utf-8?B?cWlQZjlINGU2RGI4cXRJcEdSOXorZENzR2JQS2RFZHFodE9rMFF3SnJUOWFO?=
 =?utf-8?B?Z1ROMldHa01sV3RUY08rdTZTNHNKM2FCQzhBajdQOVVRS0YzOUZDMFpMRmtQ?=
 =?utf-8?B?QU96U1JSUTdCWUJFV3VNVEVrbnMrVC9QWGFZSWI4NEM1U3NJWEVUZmw3bFpl?=
 =?utf-8?B?U0o2ZUxFU3loMzZkM0dhQ2VFbDAyS2lyVzBLeXFERWdIKzRNbXl0bjNmdUQ1?=
 =?utf-8?B?ajhiRDZtZTlVV1dJaXhLN0VHZ3JEcDJiWHBMdGFwVHd5N1VncXJ3RGdQdXM0?=
 =?utf-8?B?T0ZvOVpPdC9OYUhzT0ZKWWRLSXVrNWd6TXpqc2N0ZkpWSG9OdnpHaEEzUXJm?=
 =?utf-8?B?RXR2ZkZsUVJsMURTeG5JQytXdU1SMXFjSXV2dEFJekJmTHh4Y2ZPRGVYNmNP?=
 =?utf-8?B?NUdpQVJEM0x2WEFma1BzV0liakNPOG5ZNlA0VlhTSmYwZlJjbGY4TFVwNEgr?=
 =?utf-8?B?Uk5vS1RRZUxnVlpmOGcrRG5NdS9WTytCNlkvSEx0VlVSZllRNEszZGx2Mm5R?=
 =?utf-8?B?WldYWTFjVDYzbHhLekZkVlhrcVJlQ04xMnFmMm1FQkx3d252NnNTcGFBVGZk?=
 =?utf-8?B?cU80Tkkxb1Fjb1JrTHVORnRXRzZ4SkhJZzJzUno1clpZOFVnS1MwWHVHTnZy?=
 =?utf-8?B?djZmR1Y4dkE5cExJOVQ5RW9kazh2bm1UaE5TbXBVYWhhMG9zSFFEUVVNVGoy?=
 =?utf-8?B?NmV6Q2FFQUdOZUJZL2lyWCtwSVVZUjhydlFFendBV0RSWk5LVW93ZmZ1NGtZ?=
 =?utf-8?B?S3haYzRVUG5EbnJZOTdvNWdZTDNLTm16NitKVERTSVlPOUZNbTd4b1hvZmRH?=
 =?utf-8?B?MTZNYU5XdjhSM1lEd3FDQlNtUTlNSHRadVBSeFVGZmJlZnRPWVhMNXNudVVE?=
 =?utf-8?B?YUVSOTJpY0loTk1SaVkrTU9YKzVZVVZIVG1BWGtEMzlzR2dqZi8vc2hSeXNB?=
 =?utf-8?B?amQ1ZFRnUXpzNmlrZ08xdkhoOGR3VmM1aUF0cVFDVW84aUtaNHJvYmgzZ1Zx?=
 =?utf-8?B?SHFvV3dpaVVNd0R0VEZRUnhGRWR5aUhjVWROV1I0cDNyZlZkUjV0SDRsTU0x?=
 =?utf-8?B?Uk9yUUExaE55RzE4MHBWYnI1UW1JanlzMEtWZFJqT3NWV2lqWHRyQnEzOFd6?=
 =?utf-8?B?dDRpTDhYblNhSHdZSnlVNnUzVG9TQU0wNitKRkxVUFRDWllFcWlhNFZIaGpr?=
 =?utf-8?B?NWtTUlNoaC9US1lPQlB0SWdET0hLNHFZVG1BSWlUYmNLLzBLU2h6MHlNZERx?=
 =?utf-8?B?Tm9Xcnlia3lBZUU2MGozalo0WEJ4RUNYMjZoUTVWN0tPSUJ3M3BaZjcvcWM4?=
 =?utf-8?B?bmpBV3p6S3FOd096WENEWEkrL3Z5ZWh1ZlR2OVl1SVVqZ09tbWhXZzNFaVVa?=
 =?utf-8?B?Z2tzK1lqUjJRQUxCZmptY21uNjh0YlA4eW9LUTdTdllzOEpmZjZudHpNMHlI?=
 =?utf-8?Q?AHLvA/FeSG1FNZj56tCqP+VogpTxqqQi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6011.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZzRJTmV0d0lFNU9mRi9sUXF2VUVLRS9CdWZ4djdSLytSd1BOdkszeHgwNGRI?=
 =?utf-8?B?SVMzWmVNTjlKLzdqTW44c2MzME91ditBZENTRTZydmRTR3JLUEJCWkNrcjZG?=
 =?utf-8?B?bk04MWV2T3E1S0sxNU5veFVReUlOM3dyL240NmR2NFEzZFhIVS93ZVh1eGN2?=
 =?utf-8?B?Tll3Z2F3clhZSDNFa1ZOb09Wa1NvQVREZi9Lc2ZmWndId1VING1BYU9TcGVF?=
 =?utf-8?B?Y01Nbi9xRHpFei9rSVd5emRUcEVCOHIxVWs3S0xqT0ZIRjRhY0ViUC9lbHlu?=
 =?utf-8?B?OTB0YVBBOGRVeDNucEg3L1dxazR0dFJQTGRXVjhDakkwQkJnaDBBU1VwWEhD?=
 =?utf-8?B?NFA4N0lNR0p3YURjYkJUQXY5a0RsRklhaHJZN0tkVGF2U3pRMUJsTFBwaERN?=
 =?utf-8?B?U2g4NTZlN2ZsMGZRSlBtN2FFM0h6V25yaWFNcDRsaXpwWEgyVWNPaEJnZTh6?=
 =?utf-8?B?VUZLREs1OUE5M0tGMFFjUVVvOXdIVWs4a1lacGF2OWVJMkl4TzRlVXpRU1Rt?=
 =?utf-8?B?bkxNWFd0NUxBU3ViUmlrNmVoZ2dkMzM0KzdoOHFhVUREYUJ0anJlR3MwdSti?=
 =?utf-8?B?dWZGeklMam01RytvcDFNaWkva3ZtbXpDQjlIN0NRTkZmUHR4MHRMRmVFV1NX?=
 =?utf-8?B?S1pnR3Vwb0d2cGtML0pKTk9wWjJFdk9YRjhVNkVOL1pTUXlEcVZrQ0ZmS0RT?=
 =?utf-8?B?eVNCMUNpTzNmWnc5Z04rY1BubGZTUXZnYk1ncGJCMGl0bHd0MVlSL0hRclFj?=
 =?utf-8?B?b0QreStSQ2JWOEFaNW9nQlVCcE01M3dCcklzc0xMck1tYSt3ZzV2QU5DMzB6?=
 =?utf-8?B?czJJTUJpbkFScHRocjhmOHZDZXVJOVF3SzdFRzN6cUJPdHdzb1MxeUtaL25r?=
 =?utf-8?B?b3NPamFMSHlBc002c0dhbUtMSklJa2tEZzFSd3JPNEJOLzNYOWVwUUp2ejhI?=
 =?utf-8?B?TXVuOExYTWFwRFptQUQ4YlhXcnRvNEo2REtuZEc4eFI0NFg1c2NPQjlmd3RP?=
 =?utf-8?B?Q0EvVi8xeDhDNkU3cWNqYVRVQ2pwOTV4ODMzUTRpNUUvTHhXOWovb3VLZTgx?=
 =?utf-8?B?UlY2YU92dkI3MlRTU2wrL0F1bnpFdE5kVnIwbWFWdXpIRXFGTUk4dUhUR3Zr?=
 =?utf-8?B?bHZMb1FTRzVzdFRCRFppWHIyR1FuN1RpdmttdFZUWkUxZEZPSTU5ZEFYbStC?=
 =?utf-8?B?eFNVa1dMdlJ0Y0wxeStqeEFkcFcvNk00ZzNCeHFXSHB5a1gwbm5aYXh3eDhm?=
 =?utf-8?B?cHgxQ0cvVWo2dzY2Skk5VkR2dUhxVnhVK2dIZXlkQnd1emxqNVR2eEtYcWQ2?=
 =?utf-8?B?czV3dmZpNGlUQ3RqTXJka2pIQmp3SE05RC9NWjZCempnQUk3VksxMWFJb3Nz?=
 =?utf-8?B?d3hkdVY4RVJNRlhUelJPTm0zalg3VjFuQnFBSENmekRybGFheXI0L3ZCVUlW?=
 =?utf-8?B?d0ZocE9URmZlNGg4OGZ1bWlTdUxBWHpsU2hnakx0NzMxWnZmNTRscXVRdERI?=
 =?utf-8?B?enVuVEpwN1NEZFU4MnowVStaTTBRWWFmSi8rMjI4clB3cEhTYkhaYm4yU3pw?=
 =?utf-8?B?Y284ekdadzhjamxnL1Q4eG9uTjYrb2lZaDlJdEtTR3BCWXducTlaQmdiTkRN?=
 =?utf-8?B?cHY0QVFSZ3E2dU45cDlocTM1ZGZMbHVLNFlIWWFsOUkzOFcxaXZtZStQd2lV?=
 =?utf-8?B?OUdlbDM3d2I4QlZOZlp2d3YwOWVDU3BQQmRLcGV1V3FBYXdyN2swUnZtL25h?=
 =?utf-8?B?WnlJSGFhVkIvdFlFV2wyOE9DRWtxbk1pa3pVakJBcFh2NG9LYzdYZDZzUUtJ?=
 =?utf-8?B?cmRpOUZ0VnU1SkZLdDJLLytHVjBnajBCc0lYYlJ4RHhaVkQramtvZ0RTMmpx?=
 =?utf-8?B?TUpiNERkVGlQa09MdlF1TUFyb0NVY01kQ0lLWGJWTVJKVDVWa1lNWHlLdUh1?=
 =?utf-8?B?UEJvU2wvaXZhRm5YRlhWVjlub1liSlJPSGo5TUowVjQyN0ZiRWJ0M291M09O?=
 =?utf-8?B?dkRadG0xeVNCeVBtazYrTmw5K2Q3dUxuTStkMGlOVWE1RVVlb1IwNng1THZu?=
 =?utf-8?B?NmFqRjlybkpJRUdhL05UajZBQlRta0ljWWZ3WDNHSjhod3pHQVNSdGJCYllo?=
 =?utf-8?B?L2FMaFNvOCsrcTY0LzRabnZvbXBWNWtwR2w5ZGc0U2RxOTc5eE1NdHRjdjVi?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58907d4f-c18f-4d8b-9572-08de2c31385b
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6011.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 14:45:04.9806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cto9Mz4xZ/XsYXZZOGhx7dgCOVyaYCYHNPwq3qntVYHrKSPVDw3Hnk+YDrDI4fdSdxlXZp4b9wmGACPGgufImwZkRcFsj7LDHnefxkS3sQQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF0442004E1
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



On 11/25/2025 11:13 AM, Nareshkumar Gollakoti wrote:
> v2:
> - function xe_device_is_vf_enabled has been refactored to
>   xe_sriov_pf_has_vfs_enabled and moved to xe_sriov_pf_helper.h.
> - The code now distinctly checks for SR-IOV VF mode and
>   SR-IOV PF with VFs enabled.
> - Log messages have been updated to explicitly state the current mode.
> - The function xe_multi_ccs_mode_enabled is moved to xe_device.h
> 
> v3: Described missed arg documentation for xe_sriov_pf_has_vfs_enabled
> 
> v4:
> - sysfs interface for CCS mode is not initialized
>   when operating in SRIOV VF Mode.
> - xe_sriov_pf_has_vfs_enabled() check is sufficient while CCS mode
>   enablement.
> - remove unnecessary comments as flow is self explanatory.
> 
> v5:(review comments from Michal)
> - Add xe device level CCS mode block with mutex lock and CCS mode state
> - necessesary functions to manage ccs mode state to provide strict mutual
>   exclusive support b/w CCS mode & SRIOV VF enabling
> 
> v6:
> - Re modeled implementation based on lockdown the PF using custom guard
>   supported functions by Michal
> 
> Signed-off-by: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_gt_ccs_mode.c | 47 ++++++++++++++++++++++++-----
>  1 file changed, 39 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
> index 50fffc9ebf62..495bf517a6d3 100644
> --- a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
> +++ b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
> @@ -13,6 +13,7 @@
>  #include "xe_gt_sysfs.h"
>  #include "xe_mmio.h"
>  #include "xe_sriov.h"
> +#include "xe_sriov_pf_helpers.h"
>  
>  static void __xe_gt_apply_ccs_mode(struct xe_gt *gt, u32 num_engines)
>  {
> @@ -108,6 +109,30 @@ ccs_mode_show(struct device *kdev,
>  	return sysfs_emit(buf, "%u\n", gt->ccs_mode);
>  }
>  
> +static int xe_gt_prepare_ccs_mode_enabling(struct xe_device *xe,
> +					   struct xe_gt *gt)
> +{
> +	/*
> +	 * The arm guard is only activated during CCS mode enabling,
> +	 * and this shuould happen when CCS mode is in default mode.
> +	 * lockdown arm guard ensures there is no VFS enabling
> +	 * as CCS mode enabling in progress/enabled.
> +	 */
> +	if (!(gt->ccs_mode > 1))
> +		return xe_sriov_pf_arm_guard(xe, &xe->sriov.pf.guard_vfs_enabling,
> +					     true, NULL);

you shouldn't use PF's internals directly, there are public functions:

	int xe_sriov_pf_lockdown(struct xe_device *xe);
	void xe_sriov_pf_end_lockdown(struct xe_device *xe);

which should be used instead, and just make sure to call them after check:

	if (IS_SRIOV_PF(xe))
		...


> +	return 0;
> +}
> +
> +static void xe_gt_finish_ccs_mode_enabling(struct xe_device *xe,
> +					   struct xe_gt *gt)
> +{
> +	/* disarm the guard, if CCS mode is reverted to default */
> +	if (!(gt->ccs_mode > 1))
> +		xe_sriov_pf_disarm_guard(xe, &xe->sriov.pf.guard_vfs_enabling,
> +					 true, NULL);
> +}
> +
>  static ssize_t
>  ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>  	       const char *buff, size_t count)
> @@ -117,15 +142,13 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>  	u32 num_engines, num_slices;
>  	int ret;
>  
> -	if (IS_SRIOV(xe)) {
> -		xe_gt_dbg(gt, "Can't change compute mode when running as %s\n",
> -			  xe_sriov_mode_to_string(xe_device_sriov_mode(xe)));
> -		return -EOPNOTSUPP;
> -	}
> +	ret = xe_gt_prepare_ccs_mode_enabling(xe, gt);
> +	if (ret)
> +		return ret;
>  
>  	ret = kstrtou32(buff, 0, &num_engines);
>  	if (ret)
> -		return ret;
> +		goto err;
>  
>  	/*
>  	 * Ensure number of engines specified is valid and there is an
> @@ -135,7 +158,8 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>  	if (!num_engines || num_engines > num_slices || num_slices % num_engines) {
>  		xe_gt_dbg(gt, "Invalid compute config, %d engines %d slices\n",
>  			  num_engines, num_slices);
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto err;
>  	}
>  
>  	/* CCS mode can only be updated when there are no drm clients */
> @@ -143,7 +167,8 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>  	if (!list_empty(&xe->drm.filelist)) {
>  		mutex_unlock(&xe->drm.filelist_mutex);
>  		xe_gt_dbg(gt, "Rejecting compute mode change as there are active drm clients\n");
> -		return -EBUSY;
> +		ret = -EBUSY;
> +		goto err;
>  	}
>  
>  	if (gt->ccs_mode != num_engines) {
> @@ -155,7 +180,13 @@ ccs_mode_store(struct device *kdev, struct device_attribute *attr,
>  
>  	mutex_unlock(&xe->drm.filelist_mutex);
>  
> +	xe_gt_finish_ccs_mode_enabling(xe, gt);
> +
>  	return count;
> +err:
> +	xe_gt_finish_ccs_mode_enabling(xe, gt);
> +
> +	return ret;
>  }
>  
>  static DEVICE_ATTR_RW(ccs_mode);

