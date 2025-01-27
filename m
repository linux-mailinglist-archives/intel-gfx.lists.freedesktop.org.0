Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4662DA1D6D7
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 14:31:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F1C310E514;
	Mon, 27 Jan 2025 13:31:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N4LVZENJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F48A10E512;
 Mon, 27 Jan 2025 13:31:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737984704; x=1769520704;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Cs1ZK+UNk4yapTEJN+5lHmTuFy7/BNiztjeAq9RtGo0=;
 b=N4LVZENJ10GWhUye97kTRizQJhXbgJL93YgL7vJjf3zCsm9+A5uI/gnm
 +ijdxJtVgpW4edy8AzHzHf8cmJ+3jJ5baXfEa+vT7R9PJ2uliyk8iRW+T
 xPOOzVmmHEreEjNyoA27VOqT/yncbga33gszcdNs9rRJYkRX8aYwFIdcC
 WBzilc9n3+O/Qebh18A/HMDzHOBh/TFRThFFvvTfr6PunwMmvb92qOQQC
 +BKRO23z2RLsCg80dU5udNT4fGQqSGlgS951XkE5Qm4t8xfbuhpp6yCiE
 b1Y9fpV2433SeLl7P6CnsC15Y0NbuSd2MDA22bBKVZeiMxTa0hA7pM6ZF A==;
X-CSE-ConnectionGUID: fI+Ml3iwQSGs1/vtgAiGFw==
X-CSE-MsgGUID: AilsmVybTaaCS9IoSqC3wQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="55867444"
X-IronPort-AV: E=Sophos;i="6.13,238,1732608000"; d="scan'208";a="55867444"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 05:31:44 -0800
X-CSE-ConnectionGUID: jH4OQKjDQayhXZ/rf2rS0g==
X-CSE-MsgGUID: VJtjxj5IQ6GVRBRtrwea8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109347284"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 05:31:44 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 05:31:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 05:31:43 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 05:31:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cqvayNnVpnzC8zbtiXhRUXwxebKiNqlonHrPhgHhApLQwTjkQFsvUjegKWe/5WMnQVJVCBq7VDb/d5tVqd4jdehTmwUjmfFwDM2jRLWDD+Xxr5REJpXAbQV2dcsR3wao5nz6X8IciMndEqXFdNjwVdNY4L4fbc+OEnORuELWCmg1sozlVHoyMgXv2kz3iAsVzf8Vs52KREppgBzBoS9DbdXK+ETC4khTM0qiQ5mc5cRUUb+qc73rIVeeluzbaDGyaqUfg5b5wFra7hCyjXOnEgLmnA1Ao8P5Z9yOnBxo/M07NHnUILlCRXxkRj1WS+7izZnDPArTX9WFRwg1Q50xrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gig9tqfcfKGANpQsODu0c+RUyoq4apfaiqAyCbrTw8U=;
 b=nH4Bjd+m+Kka2xevS6/s4Cg3aSVi3H0bmfcQbty8vgamKdQRN6zSv720P0CSNxsmPK+iyfVfBYDfbo2bpwmKy7W5ISvP2czuaDNhzArRaZlhUz/S9sc1jREsmutJd+IqtQnA3Dtk/2ID2jTq627Q+/giHth/qsD6RQET1eZyj8Nnf8Y1/uoyTH60VErcWBohb+Y3XnDq2Yry5WWFD2f+2lrQbd2VMLC3c6jbhkTb9deEwgfNP1UN9AynObcLE3r7+b1ilZtIzqukCh3Ob5DoDAg00iG9Qg2tMxo6RU0bDRwSDU8nuTyifz3ea5n5bIdr3bwo1w+wU5lCtcXyrZk13Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB4888.namprd11.prod.outlook.com (2603:10b6:510:32::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 13:31:13 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 13:31:13 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173775376198.3232.56473874925376161@b555e5b46a47>
References: <20250124191250.56833-1-gustavo.sousa@intel.com>
 <173775376198.3232.56473874925376161@b555e5b46a47>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.BAT: failure for drm/i915/dmc_wl: Do not
 check for DMC payload
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 27 Jan 2025 10:31:09 -0300
Message-ID: <173798466909.2736.18370419027586461001@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0104.namprd04.prod.outlook.com
 (2603:10b6:303:83::19) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB4888:EE_
X-MS-Office365-Filtering-Correlation-Id: ae02a5c3-504d-4363-ce8f-08dd3ed6de60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?czdrSVRqUWt6b0dIeTlvb2pwRGJ1dWgwVmN2bEY3ZExQaWgrV2plN3grUTJX?=
 =?utf-8?B?TW1VcG9vM0V5MUtKRFpHYVp2SW9laU56UDRNUE52UC9QcmpFMDJ6Vm9yU0Q2?=
 =?utf-8?B?MEtjTVhRS2lVRytncnc2dzB4RUNiZmZRbVowZWRoVS9UM1JObkN0SktZb3dq?=
 =?utf-8?B?bkRtMzNPTDJpQmE3WGhhVHA5clF6ZW9yTE5XN0pncVJMK2YvVFRVV1BlbVZK?=
 =?utf-8?B?am9NUy92enFXaWEwb2hSaTgwMUJyWHMwZ3hrbUZPVDhIZEdockpxQmtUck1C?=
 =?utf-8?B?RlRuSlhzRU5jM2VhV0UzbVhzS1NKVFhFalFLcjVDenBteFJXMllUeHF4V1Vi?=
 =?utf-8?B?U3FkNHIya2EvVXduRERFSmI2Y3dlMzlEZ0JWNFl2ZzBFeitTMXdLbG5IbFhS?=
 =?utf-8?B?ZGtScWJuUytFLzU5MlBVb204SFhMV0NOcUlCbDZ2MnhLamVMWWEwSytyNDRu?=
 =?utf-8?B?SFZiampiOE52VWM3cnU4RnVpcFhvd3NPaVdieGkrVDhBTWpGdmoxY0o0a05t?=
 =?utf-8?B?ZFlWdEZ2VzhqQy8zQ1h1YVpqWTNCV1JmQWZaRlc2SVVKV0tPYTl6SjFVd2My?=
 =?utf-8?B?eE1vd3FCWktCL1VIdUVvSEU0Q3VLMmFJdWpIZ2RUSlZMMzRZZkRXTlRONDFP?=
 =?utf-8?B?K3FJMHpRV3FjQTVKN01leTBIb1p2cXoxNTFsKzNZUC9zNENrWGJudWdPK1Iw?=
 =?utf-8?B?Z3VPdzdFSWprSEZJUzlkWEtlSmdrd2tka3hKSlB3bUY1WUU0QTlHeEFVTnlC?=
 =?utf-8?B?SDU0TWdJOHpYYTVtRk9jT2w4TGllY0tNZ1hoMVRNM0FtdVVNRnpTc1grOUVt?=
 =?utf-8?B?dFZSL1FJaTJlN1FYbUlaTmZ4TlI4N2w5NGVVeUFCSmllZmM2WVp4eGR3R2hS?=
 =?utf-8?B?cEIvU3VZczBEaytmM0pqeVRUaE1UTTYzTDQ5aFdqY3RjMXgyaDNCQStxemtY?=
 =?utf-8?B?Znk2NTB3RktvQVZ2ZWlZYTNBeWxSUDdtekszTjdDT29RQW5lSmFpdnJ3VkdR?=
 =?utf-8?B?RVUvbGlBSGNwQndUdHZBNDlBVW5yQnozeUwwMU9sMGFlSGZ2RUt2elNzOWdE?=
 =?utf-8?B?ZzhRcWJObEx0emgzUklqbHJFd3hYOTZ6SEJJa1Q0bVpWclJEbnFCN1ZYU2lY?=
 =?utf-8?B?R2FvR1A1SGhsN0ljM3oyc3R1Y1BBV0hYUlhTTnFoVE9kUDllSnlMaDJnOGhq?=
 =?utf-8?B?Mk1DWU5BTE5ZTENyeGFnZ1BkM0liVmlWQ3VTcy9uTTZSNng2cGRuTW84ck5p?=
 =?utf-8?B?N0o5emdBVnpiRFRvWXc4aXFMdktPaWI4L08yS0F0R3oxNmRzWm5wSVkyQWEz?=
 =?utf-8?B?R09yejZpM3hFNlZNamhpZmNxWXNMVk1Qd2RYbE5XNjk4bG9RazM3L0tHQ3Rr?=
 =?utf-8?B?dVhrNGpuanhuUU8zZ1BhZGljZGRtMVk4eHA1QXphZzByY2pvdUIvaDZBbDBw?=
 =?utf-8?B?TjVQL1M3djFETFRmbTMvL0NZeEN0RGZqZGVkSlZlLzQvbGhqbFd6QndHVVc1?=
 =?utf-8?B?Qzdoa3VCUnN1UFhLMjM3VzFRTGFHb2J1TnRHbFZZT1R4c2ZjREozYUs2YjA4?=
 =?utf-8?B?bjNSNjdsSWJnSHQ2bVo0cGp0R3Rob2RvMnByQ1JLdHp1ejdYaWpLOEdyVnZk?=
 =?utf-8?B?LzhnTEN6NlFxRUxzRXlpeEQ1NWoyU3BKZ0Q2UWVVREVQSXN2YzF6OG9jc0xD?=
 =?utf-8?B?VkxwSG9MMlN1VTUzYlZpLzlzQWZXNS9uWDJ0WlNWeTd1eEY5VXE0Mnk4T3JF?=
 =?utf-8?B?VWFJU09GclZXMzFLWkNWTkxOM09hRWcyNTFYZmIwdkNGZG5EQXlQSzNaa1NO?=
 =?utf-8?B?bzB3MnE2T0ZkbTdTb3hLZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWM0ZG9jQSthRThBOWJFMEVCbkFXUlV4QzdMOXFKNU1PZ3p3ZTRJMGNkTFJZ?=
 =?utf-8?B?RDAyRUZyc3pqMmxnQy9yQTFCdDRZVUN3ZWZERll1WkFmYjZiRHBWWHltSkx3?=
 =?utf-8?B?bUhmYzBjbm9YV3E0bitKNWJyYlNFY0xmYVBYTXFsa3RYYmhFMTh0VDB5bC9M?=
 =?utf-8?B?RVM4dyswQXkvZHJicERzTXphL0dXMmVONExVWXBjY0VZUDRuNXVkckhvSDZS?=
 =?utf-8?B?NThRVWQ2Umx6TVNVSVlmUi9lZi9BTXplTTdOSlJGMFpiTFFBa0gxbHVKSlg3?=
 =?utf-8?B?WnRVQ2NuY1BHb29Sc0VuQ2t1RDRxV3FQRHdSUzBnbkViN2JqTVUram5jRCtB?=
 =?utf-8?B?dTQ2UWgrZWlUY3VkenpCZDNQVjA1cUtIZndVYXZSK25YS3NoN1pKaFduVGJy?=
 =?utf-8?B?VUFDRmZtVWdCOFJ3RTVBSnVvMGV6ZUU1RGh4ZHNqVVNiMzIxNHd0ZTVXNFdn?=
 =?utf-8?B?MjJsMW5pSGJFMHFxWjBNQnZDTnI1VnhiV05HK1BtY1ZwV1JTUEFDM3Q3U04z?=
 =?utf-8?B?djcwR2d0VnBzZnB4MkFmTTBjcTBQZDl3QzJ4U0RwN3ZWT1lDcndoL1pjU3Uz?=
 =?utf-8?B?akREK0tiMmFTdjlrTHV2YnNtYUZ4bmRvaVQrS3QrNE5mZFo2MUtScVVlUXNG?=
 =?utf-8?B?SzlsYkVtQnhWeGhZU2R2NjFUOWhrTS9Wek5uemFmOVhGN1h4NVIzRDRlazZ0?=
 =?utf-8?B?NCt1N0RyWUwzb0w4WStUd0ErUXhIRWpLbEMxcXBZM3F2a0RPRFNQQnBNNUNC?=
 =?utf-8?B?bk9XMTFYZjJ0NHZJUlIwZ0kvbkdnRVN2N1V1eDNkb0lUNjRJNU5XRFZDcnY0?=
 =?utf-8?B?OEVJaEdKUDB0K0dZa2cwUVEvbUpXTG1vaFhTOUdHdjFYd01CL3U2Vzcrazhl?=
 =?utf-8?B?ZWF0clRZSEJPc0pMcDkyL0libnorRnltL2pSTmJNQ2s3U0NjWnREVnNxbWVn?=
 =?utf-8?B?d211aDFYUmFyT0I3bjNzcFZGWCtZU1ZzVkNnNW5ESXBDKzdhNHEwaE5JMUVM?=
 =?utf-8?B?SElSb3FmL3JNc1FpUjBVSGNJVytEaW5seVJvbnpXQnoyRitnSEFkbzhDWnRN?=
 =?utf-8?B?NDc4UnN1cGdVY2x3U2QwZU9JSlVYV2k0Z0lWVXViMGxSRnNJYjFRNWRmZFRt?=
 =?utf-8?B?dU83a2NlT3M3WFY3U09WMTZ4QlFRVmFLK0kxTGNFd0tqNkFEd2FnTnJCYnVG?=
 =?utf-8?B?VTBFOWF4UlZmSVRLYVlmOUFyVytiK1Zua1Q5L0JDRzE4bHJmYXNUYUJQNGRl?=
 =?utf-8?B?M1VpUjF3WDVCSFIvNjJxZTdabVVIY0huNk9VMlUwOTB4Qjg5TTZvL3pTSEd2?=
 =?utf-8?B?TkcxTi9WZVZLcDljMWN0ZjM1WCtGNDBTclRhRTdvNjhBSjRYTThLbWV3SUhY?=
 =?utf-8?B?alZUbDJ4Qm1tZEs5WE9BOUJlRUQ0YytVMTY3Y1FHd2pBcDVvNmJRWmRUb3BL?=
 =?utf-8?B?YU1LbTNqOWt2Zlg5clZONmJmcTc1NnlsbTFxMWN0VDAyVDlzTGwwMWREeWVU?=
 =?utf-8?B?T2hTUTloRkptYmg4b3dQT0NlR25aYko3VVpvUGh6TENEMkwxY2VjZEJ1cnhI?=
 =?utf-8?B?VTR5amNYakU5dzgyMHIxVTNHVHZTUk12aW9XRzlHTmlmV2hKbXAwbFlHRlFs?=
 =?utf-8?B?ajdGZDJuUWpyS2tkN1pZZ3oxKzNwWHhJVDZjZG9kVW5NdXlsZmlXZXZ1WDdZ?=
 =?utf-8?B?bU9VVHcrM05vTS83MHBzcjRBUEJ5eGtaUzkyb1pEajlRdVlwR045dDg5VE5G?=
 =?utf-8?B?bjgxM0g4TE9QNyszWFJEY05TMVpURDI1RER5L0kvMkdrcnhNTGhucWxOQ3hW?=
 =?utf-8?B?YU1uRGw2eElseFFiYVRZTmhXZ1NXb1hOZTBJN1B0K3pDMHhJZnRQaWNSY2Zm?=
 =?utf-8?B?UHJkR1VjNXg4eFZNakxYRVgzSmdENytiRUUwREtsN2JSdEdoTkl6a0lKeUpH?=
 =?utf-8?B?NCtURGV3cVNFNW44Z2FUYWRUQ1dHOUNSeFN2L0J5amFBU1o2QkJaTXpqVjFL?=
 =?utf-8?B?ZWtOZ241SkJ0RXI1ZUlaUGJPVzkrb0hDcXJJV3VrTEVhckhHNk9takMrbU82?=
 =?utf-8?B?K2ZnQ0NLRlBIUHl2cVBrSFo5UXJUWUUyUDM2M05Vd0kyUWloMWtlbk90THV4?=
 =?utf-8?B?WG1FZlVnNXVvK2F6QVRDZW1xUTE5S2NUT2NiV0NjajRHbWluVFkrNXJWYVNk?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae02a5c3-504d-4363-ce8f-08dd3ed6de60
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 13:31:13.2578 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XuR74AwcRohX2vK6emIcKev8zJypDxV4sfsD640/TGY20d5r+iKT9+7H8L5lpm4UkiedE6qG6jTzMIgD2BYV+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4888
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

Quoting Patchwork (2025-01-24 18:22:41-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/dmc_wl: Do not check for DMC payload
>URL   : https://patchwork.freedesktop.org/series/143951/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_16018 -> Patchwork_143951v1
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_143951v1 absolutely need t=
o be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_143951v1, please notify your bug team (I915-ci-i=
nfra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143951v=
1/index.html
>
>Participating hosts (38 -> 37)
>------------------------------
>
>  Missing    (1): fi-snb-2520m=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
143951v1:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_pm_rpm@basic-rte:
>    - bat-apl-1:          [PASS][1] -> [DMESG-WARN][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16018/bat-apl-1/ig=
t@kms_pm_rpm@basic-rte.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143951v1/bat-ap=
l-1/igt@kms_pm_rpm@basic-rte.html

Hi CI Team,

DMC wakelock is not exercised for this platform. This should not be
related to this patch.

Could you please re-report?

--
Gustavo Sousa
