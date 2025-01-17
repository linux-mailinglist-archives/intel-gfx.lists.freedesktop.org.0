Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B91A14A8D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 08:59:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C677B10EA81;
	Fri, 17 Jan 2025 07:59:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O949m0xy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7CCC10EA81;
 Fri, 17 Jan 2025 07:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737100745; x=1768636745;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=T1V8MAldZFX4fJdB0IK4BRhCT8vWqVKPxhRFWEUFZhY=;
 b=O949m0xyT2XKcUrSl2cnQ6tYKo6q1bF1/JVtgU8ru2TGQxhDKffqIHoy
 BJGfxvpeHXBls2FQGqHAz4Ok7gSEmSj3MNR9ZSgBxBG0Wf1FFTotT0a6C
 zKMu7+4uEdqzueZJnvzHGvIbAXaWNZSWu3YQy+AnL975iWOKx9J5/BLLW
 8cKNxterFBlAPyx0oaNpfxEc9XZgWITzjtd2edwbiB59bwMU7Pi+Q/vNI
 U6+iismQUTp7nicc/53PVJVfEnr+ZPI3NvA7RvnDvtbZpL2hYs/02HYTj
 DYWglOl+IV24HcOVs0alEY+BCuMyaQE2kTwKCT47U+gQWtTUBQPSp5frV g==;
X-CSE-ConnectionGUID: ICQFzRurRwerm9ChWoQGoA==
X-CSE-MsgGUID: N+9nSvryRGqVTqv82UsKVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="37410040"
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; d="scan'208";a="37410040"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 23:59:04 -0800
X-CSE-ConnectionGUID: gGwNMyUzQoKjWYcI4EX+9A==
X-CSE-MsgGUID: YbYoUUSnRNudaxXJ5DAdoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110846181"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 23:59:03 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 23:59:03 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 23:59:03 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 23:59:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EbG36lVrE+asRg8/fmUHU/jND7poqMU3I518+E+KZ6wArF4V3ZBzKlaHf7IwYuwTLfuyNbz2TRcSWsX6Myk4qjdqGlgK0IjFC8cSiPiWbrr839gJleOf653F+bDzZ5DigrHuB17A+4C96tKZlR73oiIhdS8Gkhq5Kqs0L4qDk/agpzjumH+XEmVJkd2YpLLbbKfj+eD7dIKim0N8DEhh0XM+nsM57vwDsPirJ5HfeSRP/eS64gcVk5ZfRXOYjadZaKBci8dM3qDvt3waolPAXGwlO2+jnVTQcO+gxWu7gqmMCsgsUHOGi3qdz+WxUiNMqA9xEQ1Vx+xTr/+U2TlK+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ECr/be4RfqM77x+/rfuN45Dm3EPKUoh0ppSmCycMdTQ=;
 b=NDPcGT8eKzpgXNOcsoS2W5d+tMi+luCMdmsDt5/KpDdHhFJ6ObXIN2bC6tbDPrYEAu6XxsJwNP2aq9JSHk39PmwghiIOauC2enZk0TirBs34qCzLAkerpO4BrFsBRPO1n+tRH5AQL5cq1U6UjTJajm92BTnmNnkU2PQfg2ClECNP3FwiKYCr0/y4H6arVoo/z10BKMBvtGI1VtAw/wc9r40zCTzeorFY7yBHWOAA1B/zpK3e8O+sBaA05sjDRdUY6tSO/nxo5IDFDbqIJGsLPWF5H6kl+5OwkRY7Yw4bIs7tvXRv2DoUtxP7iUcdv/QFO4NCV6bGwd2q/vAY06vAyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB5165.namprd11.prod.outlook.com (2603:10b6:a03:2ad::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 07:58:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.014; Fri, 17 Jan 2025
 07:58:55 +0000
Message-ID: <1d9f52e9-53fa-455b-8df2-af7f502d0c30@intel.com>
Date: Fri, 17 Jan 2025 13:28:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND 0/2] Add helper for range_bpg_offset and minor fixes
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <krzysztof.karas@intel.com>
References: <20250110044131.3162682-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20250110044131.3162682-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PEPF00000186.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c04::4c) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB5165:EE_
X-MS-Office365-Filtering-Correlation-Id: 52fc49cc-f4ab-4afe-5bb5-08dd36ccca10
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L2EwMjhHTmxRNFp0MktWT1IxSW92eU5xc3BpejMvZ0xnSFh6bUxndkhNNjds?=
 =?utf-8?B?RFNsbjJHSnVkbG5JYXVNT2QrY1NDVSttM3NuYUZEVFFtNkhKNmNsajlxbno0?=
 =?utf-8?B?TERyQ2tvN3RPbDEwMFdiVmZHdHlXcVE1d09EekUrSEdQL0k3MGM3N2xOM1R6?=
 =?utf-8?B?YmJJbzJXaGFSaWhCdGp3RlJucFpremorakxxWjlKNmdXMEFYYlN3alFzSnJr?=
 =?utf-8?B?SE50SkxmWXh6dlUwclhWTmI3bFJDVzZTY1ZkY2lCbGJjM3lYRkhaS0pkVlRw?=
 =?utf-8?B?c0RaTldIeVBkUU1peGxYQjBMOGFlVndqSkM1UGRKa3Z3b1hBOHBxV2dMT1JH?=
 =?utf-8?B?KzRLT2JOVEhtN1hQT3hFYUNMVzRkUkd6aHlyaTA1ZnpJTkNlLzNISysyYURG?=
 =?utf-8?B?M3JXTEZZTXNrVUJJS09NODJaZTIwOHR5UThFMjlmeExRZ1NUUjh6NEI0RERy?=
 =?utf-8?B?aWxSaDFaMktLU1E2Uk5VL3ZGS0ZtclN3RWJvbWNQeklGeHBZeDRiLzlYL1Fy?=
 =?utf-8?B?eEZVRUROMEVhZml4VVJOOUI3WGhFV1ZXbFJrY0Fxa1hzd1oyQUs5NjY4aWMw?=
 =?utf-8?B?ekpYelJmWE1SYWROWndEVE5IOGcxdWhZOWVWMHR3WnczdXdpTEFDNDlWZ3Zw?=
 =?utf-8?B?N0VOS0ZncnZNTjBoSVgyTmxXWHlUTVdvR2x5UmdNK3MvakhERko0VWVJelhz?=
 =?utf-8?B?VG14V3F1bjd2WXpSU0FIVWU0cE1QRUZTVU1JV3A0NDk5WWx2L3lsZVpOa1p3?=
 =?utf-8?B?RnEzWlFrNjZzVjlYTGlLeXJKckhXZVFWMW9NY0lWSVVEV0U3QWo1V2cwekJM?=
 =?utf-8?B?VGFFSEtENU5FL2RNREJHQ0hzRmI0YVdaZlhTakJFa3gwckt6QVZoTTI4YVJz?=
 =?utf-8?B?MDliVHRJQ1ZpWnBJallrZmxTRXVaTDhCaTNCSEttSGZPSjNVbU4xUlJXR3dq?=
 =?utf-8?B?K1hZT2pDM3RVb0tRRTZPSS9Xb1ZVb1JuUmxGNXMzcmQyZXhudWJZOW5Zay90?=
 =?utf-8?B?MklOVUZkREZrVDFIYVRyL3o2WkJxd29KNUhoQWlIVy9hSmZWWnFCZ1h3ZVFE?=
 =?utf-8?B?dVNsS3FNV2FyVHRyUTNFZzV5Qy9QTUFINlIrck0zRWZhTDdyT3FMRnQ0ZkdX?=
 =?utf-8?B?cGlCNGp4cWgxT3duQSsxUlJhTW5xYURkRDlBNXVlYVdibTZlcTEvRFBpcU5O?=
 =?utf-8?B?Smt2QkcyMCs2MlFxeXRadWM5WmYycUJ1VE1QeXU4cVc4amNaRnBHRjFBZ203?=
 =?utf-8?B?enkyUnErN1NLVFdFWmM1bFZUbURybk5HWjViczBCZ3lob1JxckVHZzNhNVRT?=
 =?utf-8?B?SVFuTHJxcG5oRmdhM0taZXVsNXlJZFlQdGt3bnBaNzIvV0ZWRGp0aEpLNWt5?=
 =?utf-8?B?Y05CRFVpTkxUWmo3aUhCT1hyUEtYTWdBSCszR0p3L0UwcXNLRVJ4UjVzZjVB?=
 =?utf-8?B?QVZCdVp4WUdIWU9aWU4vVnAwOGs4TDNveTgyM01hdWZnRHhvOGtuNnJmbG1C?=
 =?utf-8?B?bFIwM2NWZW50d2V1UkdYekhNV0hXa0NSRm9ZRTdRWXkrdFJBdVl0MnVuVG90?=
 =?utf-8?B?R2tsRnh6MzEzd2pUeG5ONTBKa090WXNrMGE5Uzd1Y2pRQ0h2MUljNmJkUmpQ?=
 =?utf-8?B?WWFSbi9lek00bmduQWl0Y1h0UDh3WlB4b0VsVlViYk1qd0x1K3poRlQ0TXg0?=
 =?utf-8?B?aW4vUEV0bnJ6R1MyNXdrcGxkK3hRT2pvODN4Y0J1cWJRYVo2TCtzdXVTbTFi?=
 =?utf-8?Q?32Fy9EFnmMq7Otw28F06D5EIj8I025kGQ3M6Adv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amQ0WS9lQlpyaE1RQzVacm1QUDlManVCWDJjM2xxREFwNklzQTRpRVBWKzV5?=
 =?utf-8?B?V3VYZzFVVG0rWE1CL2N2YWZsNjVoaGN2QUs1NXc5SXUxeXdCVU9kNGJaQjRh?=
 =?utf-8?B?UEhHOXo4QkZMcVN5bkcwL0JLNWZ2dldRdmhSMHB6T2w3TXB2Rk00V0tVbUV0?=
 =?utf-8?B?am5jTU5rRng5QndEaW0rQ2M0RngzUjNEeXR1aUdnZFJ1eW9ZL2pGODB0Q1hY?=
 =?utf-8?B?N2g5cGVMcitmelBvL3ljVCtUcDEvSXE0VVEzNGZDaUlTOVhIOEE0U1FGWmtJ?=
 =?utf-8?B?T3NPT0RUMzgza1Azalk5MVRkOTZmWHhkbFNSeTQ0UzRrM1JMbzFtQkYxMzcy?=
 =?utf-8?B?Vi9rUjFuSDR3QWIzaWcvVmt1bndVVGh4MTNrUktrSmZTNDRJNkJNQTdyNDFG?=
 =?utf-8?B?ZGdWbWpSOEFyVTV6UXdDclh4TDR4eUpPZm9iWFk0dnlUMFBLcEN4d1dFNkE1?=
 =?utf-8?B?ODZiWXpPOUtlWVFUSFVYNmxETjI4ZFJ5SHZ0SUJVTGpqNFBtUFVnTEZQVHRR?=
 =?utf-8?B?by9xaGZ1UG8vUlVrUE1MTG5SKy9lMUFYWm96WWJOcnh3b1ZoNkk5UGt5RGNu?=
 =?utf-8?B?RkNmQldtS3RiV1pzQmRDSmM4S0QvdnRUL1AyMnFCZmFJTWJRN0M1cHRUQmh0?=
 =?utf-8?B?aXhBdk0rVUtSVjVkUzdIUHl6MnVuY2hZYWNvamwrbStvY2R3YS9oUnhhVVds?=
 =?utf-8?B?TURZenhMRStqQ1FkNU9KL2pQVFVaR3VhTHY1NG44RkNPSTVmWTlTdWF5S2c1?=
 =?utf-8?B?NW5HMnNlR1l3Rjk5RWZuaDJLd2xQcHpsSHhzUW5rL3M0OHhlV1BPMmNqVEtY?=
 =?utf-8?B?T3FSMTdKWTQ2SGI4bm8yWEdsYlhWOUV6RlFZWWNVWGgvUWoyT2JUSWZSWFdo?=
 =?utf-8?B?N3ZRRktnVUVLczR6YzYvdFZjWmxlTlJXRTVGNUZLeHZEYUVGWUVtdTZnckFY?=
 =?utf-8?B?bGx0YXNHYXBJWE1QdEVvRGVYMEhja05BRzl0S0xabFFLYzdld2d4ejZqOHcz?=
 =?utf-8?B?aHNnOVhOclFBRkR1QmM4Vjcza3hCQ0krMzdGYkhIT1Ivc1NOOWtKR01TMmpJ?=
 =?utf-8?B?UjVTbHJrUSsxN2duZnhKaHh3VmlIcjRlS3JNYVZBUTlSZU9jOThwSklNQ0Rm?=
 =?utf-8?B?QVZqMTRUMC9DUCt4RGxnN0tYTkFNUm9NZWtRM09zT3MyZVFmTW80QThROXQ4?=
 =?utf-8?B?VjRaQko5NmZlSzdZLzJwKzZlTy9tTlpEMjJZUXk3dXZwa3ptVTVaZGpCMFkx?=
 =?utf-8?B?ZmlveDRzQjhJbG9yNllrMmRueHpaNHNsMkZuYm5SNC9Zb0dieDNoOUIyOFBp?=
 =?utf-8?B?NmZqdFV2RTgrR1IrMS9lUEdnbFh1dVNoZ1B2NFp5aXFZS1htSExmLzBva2Q4?=
 =?utf-8?B?WXFGK0RTb3JDczlWdTlvZ0RrczQrQm9ld29VOGVRSXplSmdzM0w3Rm9CMmov?=
 =?utf-8?B?cGE1RUlkRkp0aHFQdnRWMDFOdEwzS1pCV0U1ck1YMXRHaHpvZ1lST3VxM1Zx?=
 =?utf-8?B?dUVyNGt2UEg1K0VVZzI0WmFnWnFrQ3EwbHp3djBwRGJkR3NuTTZkODBFUGlu?=
 =?utf-8?B?RXhIMC9Gb0lkc2dNc3JlVEVmL1h2YTJTY3IxdGlwUXpkQ2wvN3hPdTVpNlAx?=
 =?utf-8?B?bDBYMDQxaHlVdHp6SmRqbVlDU09mdzR2NldST3RUcmhQUm52djBjU01sejBw?=
 =?utf-8?B?bjUwYllQekgyTi9QWUhBRWNTZWxPY3VUQ1ZZanVkUm85Mk56bmEzNnlmNkdF?=
 =?utf-8?B?Q25GRjZCSFZCZDI4dlloclBtT3pFcVplVC9TZFJRSWFzV2FFaFFzeUd3NTNS?=
 =?utf-8?B?Q1BESjJIZStYamlkVFFNK1RDT2lmRDhtSkFET1d4cE51RFhCcVU1N0lLd2NK?=
 =?utf-8?B?VGpXbDdBZkJpcVVaK1lnMWlJVTBBZGZpSloxRGc4enBYd2xUQUtNNGNQTTVT?=
 =?utf-8?B?MUJtZzRHcWZMMVl0WTdQUE1ocHVtVGI2RGR2bG1OT3Jja2NTNGNZTmFZQ1No?=
 =?utf-8?B?SVZLWTlGcWZVSTFKYXpWcGNFS2wvbW50QWRyc0tmUUxVRDN5SCtsWUZQSUxr?=
 =?utf-8?B?VUU3dUl6eHc0VXVtajlMMEZQTTk2SjhBSmNhRXhxNmNJRiswamxpV0ZSVnFz?=
 =?utf-8?B?OVlzTGVZdVpacHgrc2lGZC9DVVdKN2R5bWx2aDlJb215Ui9CMkNTMEtHWkp1?=
 =?utf-8?B?aHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52fc49cc-f4ab-4afe-5bb5-08dd36ccca10
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 07:58:55.1212 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dfMkWl7PJXIoC6APNFeW9DOw3s5Z+kuEMRpkkySM70ux/REMyZtIl0C9T1qJlj663+yIensv1wBv9/N+xcHoCxJFhbBAFPRkuFlp0AxSQcI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5165
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


On 1/10/2025 10:11 AM, Ankit Nautiyal wrote:
> Simplify calculation for range_bpg_offset.
> Remove old comment.
>
> Resend from old series https://patchwork.freedesktop.org/series/125159/
>
> Ankit Nautiyal (2):
>    drm/i915/dsc: Use helper to calculate range_bpg_offset
>    drm/i915/dsc: Remove old comment about DSC 444 support

Thanks Suraj, and Krzysztof for the reviews, patches pushed to 
drm-intel-next.

Regards,

Ankit

>
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 60 +++++++++++------------
>   1 file changed, 30 insertions(+), 30 deletions(-)
>
