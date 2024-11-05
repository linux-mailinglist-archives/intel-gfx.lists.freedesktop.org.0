Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 631369BD79D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 22:29:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94E6610E622;
	Tue,  5 Nov 2024 21:29:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DLkhl2Sf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6361010E622
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2024 21:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730842149; x=1762378149;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Kw8pnCjTZ2lZF2lCZMbwlwau+46cwbEKfmh/l/HQWw4=;
 b=DLkhl2SfPn1wrPBUhZFyieq3hwU7tpuQq82Xd7lQYYdBGNYZIPHhQsnC
 vxaw/RLUExWdpuV8MWGaA8g6urg01IJUKDuqJeNL3Zs/NXmPiuY6KmRmn
 Uxr+ktnjxXtcxLmHCZ+ImLXOKjqQlpLzbn6XqG52n6SRCNiL4L5DfyNf3
 bRhq2O6ptx60rcTCKI1Ecgato6+Z8sQkisJXBCZIOjGDSqd8iYNm133el
 /o3dVxg1vZumvlsxhkmfkaR4NCquUu7erHWTJdb4XS/9fI2j74SqaS36V
 ljopAuTe46ZzpB1KlCW/3ePjh998KdlcmJmOpqlmI/vkXv14bdApZDAN+ w==;
X-CSE-ConnectionGUID: aGBktITgQHCtnTQDEGNs2g==
X-CSE-MsgGUID: VJoFvaf3T1CYAe9f13KctQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="30723989"
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="30723989"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 13:29:09 -0800
X-CSE-ConnectionGUID: LiJZGHYzTKGbuwIZCZ3vxQ==
X-CSE-MsgGUID: ZyCMk3+nQt+r0DffqI6s1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,261,1725346800"; d="scan'208";a="121668357"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 13:29:09 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 13:29:08 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 13:29:08 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 13:29:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x90J6mEMUxbwUibQc4DdFgXkAa0N1Y3vhFg4p2Mh0yEseWrHwqxJ/k98lY0e6Ew3aliH03STKebjohfWIv8Tgk5qdWTsnzl/GTmf+pO3O0nx1AdNyOkI2ot1Eq6VoR3uH3hjyBlIwN9oYb3/9qNSZ5hxnuxTEXlXM8fUn3/knhuqRFMj6e11DNKh320xPNGrk68TFHya5oqtGtacmTkm4HJGfTfwl6q+te+0glXTFdgdjuVNIntseMm+oNwVepbG1Zb83DyBzQV8Wsavz/6td0ojkL4wG1j1+k8q8GRgzFbDGOYhi+02G9sdev9vceFCNUv0hBoniYLZSSdt/U+SPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Lg6TKgxbRl0V+LIOqRRlHuPvfZN1ORfqV3VzCqt75Q=;
 b=crOLumDE6yavtDlEgbz+MOkWOwQoGHsOzyamgAo5KwdcGRCYEONvOFzSls4H6h428GRYDGKrkKVFbuRhEVJBkz0O5suF18Eyz8BT7Cs/ItjrU2cy0kAwyFlNb3LVjDyardQVgZBD4RsxvxuNEaPTNINQmos6zm7GfikY5EQ0HR8hr7PEKoZMZlhNQsYjCYps2z5d0ZJoKRh8BvcO83ry/DBaYScw7tI/3pN26rKrre3mmttpt7YqlL7nqwHhjI5kSZj/9Vq8PQz2r3e6DZKozHMsClUKRamTG+NbsT+MnnR0H8yDk+fjPi1nlpuiUo2ghAhzoHoqhaMGIlbiAjVhig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB8200.namprd11.prod.outlook.com (2603:10b6:208:454::6)
 by SA1PR11MB5947.namprd11.prod.outlook.com (2603:10b6:806:23b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.29; Tue, 5 Nov
 2024 21:29:02 +0000
Received: from IA1PR11MB8200.namprd11.prod.outlook.com
 ([fe80::b6d:5228:91bf:469e]) by IA1PR11MB8200.namprd11.prod.outlook.com
 ([fe80::b6d:5228:91bf:469e%6]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 21:29:02 +0000
Message-ID: <cb35200d-0a5e-46f9-945a-a8b012d3b983@intel.com>
Date: Tue, 5 Nov 2024 16:29:00 -0500
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/guc?=
 =?UTF-8?Q?=3A_Flush_ct_receive_tasklet_during_reset_preparation_=28rev3=29?=
To: <intel-gfx@lists.freedesktop.org>
References: <20241104214103.214702-1-zhanjun.dong@intel.com>
 <173083254132.1413687.6556015858456790693@2413ebb6fbb6>
Content-Language: en-US
From: "Dong, Zhanjun" <zhanjun.dong@intel.com>
In-Reply-To: <173083254132.1413687.6556015858456790693@2413ebb6fbb6>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0054.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::29) To IA1PR11MB8200.namprd11.prod.outlook.com
 (2603:10b6:208:454::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB8200:EE_|SA1PR11MB5947:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ec28a54-35e4-4d2e-f132-08dcfde0de58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UkVJelVDclkxL3hSMGRkZ2hMY3FNazVsTHlMRkkwaGprWTMvT29aOG9Tajc5?=
 =?utf-8?B?c1Qyeml4NG1OcEx4b1FqQmJicDZWRk9RWTlHL0FaNUhFY0FTRUQrV2pIMG1s?=
 =?utf-8?B?SkoreWNSVHpaNTJNZnZWUTJwUGU5anl4d0JGazlGWDBOclBhMURtSVpxZWls?=
 =?utf-8?B?UU8rTjlNdi8yZER4bVE0UHZkM09tWVoxc1M5eXI4bXUwS2c5eXlpVjV6dUtS?=
 =?utf-8?B?eGhKcWNDaDZ0ZXNEbWV6a3hwQzEyeVJWaFp1c1BidkdhWUVZRzF3bE95VDFu?=
 =?utf-8?B?enBFSzcwb2RkU2w2dy9kMkUzaGFMNDVma0xRRCtiUjg0c2ZBNGlOLzVlQmlh?=
 =?utf-8?B?TWFRRkhPOUVmQlZRRXdodEIzQ3YwOExpSjlPZExXT255YjBkeUUwaFRlODFB?=
 =?utf-8?B?MlBEUXhuY2lBZ1JqMURrRWJRbFhWL1BxZGYyQnlJYVhDMUZkU3k3MWYyd04x?=
 =?utf-8?B?U0UvL0MwMHhTVUlDSEZZOU9EcXBYZFFlenJzWWttckRMalhUcTMzUmlMYUR5?=
 =?utf-8?B?NGlVZm9TUnQ0eXFIbFZERkJncFlRN2hKWWZmUmlPS1JLM1VVUXdrWXgzbVJT?=
 =?utf-8?B?bloxVHgvc1YrZU9VZldEYkh0eDQxbzZuUnhpdkJwUWRUODg3b0NCNDZhY1V1?=
 =?utf-8?B?VklhUkRtZHRjSmtnWVpvVW5nM0N6RlZXNXkwQTZ1eHVWeVFUVHRHbEdTQ0hX?=
 =?utf-8?B?UzZuNXd5blFPRDBoaWo4bnN1R0xRem9Vb0NNcjEvQTNNZkw0b21tVmRsQWFv?=
 =?utf-8?B?eVdPdW55RjF0YUZFcmhpdmFaWjdSUml1bE03aE02T3Z6MjdUWkFmeEQxV3Fv?=
 =?utf-8?B?VlRaN0Z6UVZ0M2R1SXk2Q2svT0E5d1hYeUdjZDZIZUR0Y0srRVBMRGVKRU9v?=
 =?utf-8?B?MFRGbkxhanh2RDlXZVI4NVVNZ3BEY1plSnhlamhKUlZTa3V5RExndlJteFJx?=
 =?utf-8?B?OWRteWFicDNTZk8rZzgvQlFRNURUKzQybUhzazVOT1U4NVZRWUlrY2Y3Y2VZ?=
 =?utf-8?B?RUd1dVgwWlg0a1h4bk9SY2tUUkxmTHVDWVhXTHVuclRqaWtiazBwNm1Zd0s1?=
 =?utf-8?B?UHhjeGl3TmFYSlp1WUp4QTdhK0dDVldhdk5ZZGFMN1BYNXh6cmo3K1VQVytV?=
 =?utf-8?B?aG9QTm9BQkp4MTMwUmVRdnp1NHhnY3ZKWmZnekN6RXNQUkZXZzdVYmZjMElX?=
 =?utf-8?B?UmNDK1M0dDZ4U05EaDQ3bGZqZWROZU5EZTZnUlpOYVpEb0FOdUc0RGhiUDQ4?=
 =?utf-8?B?OWdSZTl6TitkL0UxMk9kU1hoaFh1SnNBNTQxbTI0VEpUZkpYTm5VQ1hWaE9u?=
 =?utf-8?B?MExnWDZGQkVCZXJ5eC9xSWUra29ld3FBRkhFVDRRL0wwWGd1SzdadWcwbXhv?=
 =?utf-8?B?WDV3aHlSL2ZLdWV0QnJWdDJOMjZBYlhPMUNUQ2owcEIwZUlZM2NuZTBPS253?=
 =?utf-8?B?SmdBbHM0OGE0YTFtQWNjSEFFTFBIZGR3c29ZNjhYNzdDdTIxdkEvdWFLdTdX?=
 =?utf-8?B?VjE1bDJnYm5aMm1LRVhXVWtxOXR4SnR1WmRsOVA3SHZ4VmwydWVhdWU0NEZ1?=
 =?utf-8?B?blJPUzJ0ZmptQmRXNHdkV2tzTUNvZGFqUWcyZXFmSWxwZnNnc1V5Sy9zWVVV?=
 =?utf-8?B?QjQ2MEgxNU5LRllMMUZpVGVoSTVNaVQvdU9iK0U1MnNSRlB3WUR6eHBEeUF5?=
 =?utf-8?Q?xwbdz1MqE6mVp8A1N4dq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB8200.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWhpQXR1Ym5QWEViWXlKc1paa1kwQ1VTZkdqYXpOWkFnRmplQXlxOFhOYVRl?=
 =?utf-8?B?bWZhN0FER2N6c3dFaDU0U0w5QjBnYm9ZdEVRYndnSWdBVlhYZ3Rqc1F6cVhO?=
 =?utf-8?B?eGsyekEwb3UrOEVYR0dtQ0VWT0M2d2dpdElEeVNKZnZ2OVpEdjBsNGZQK2Zk?=
 =?utf-8?B?OTlqRDlSTGdJbndUOC9yTXJRMTJKWGUzUk10R3NkK2FuU2JreHBkeUJ1dk1p?=
 =?utf-8?B?SVgzQyt4SkdST0NrUXo0azBLbHVGUG9nb29lN293Z1hOenZvSUZLcmdPV2Zh?=
 =?utf-8?B?aTJidGNsQ2hwM3QzR1ZDNlZpNkloWWM0OUhPc3FuSUdUZ1dobWhHUmY2NUtI?=
 =?utf-8?B?WE1MNTVrSWRXeDhFd2lQdTZmaG91dGswTXJUSWR6bFg5NVY1Q2UzS0Nnb08y?=
 =?utf-8?B?NmpybExSTEpQeWFVT1J6ZVdIVVM2UUdsVTBHYU45bmZtNGtxL1BKd09DUlRs?=
 =?utf-8?B?cVQzYWxFdnBHbEJwUDZscG5ZSDAzS3RIM1M3MXIwaEp1TEFhYU4wNEZBOWZv?=
 =?utf-8?B?UURGQmVNeE8xU1A0UWhMUUw0ZWxUMzBVU21YZS9ySURldnYzZG4rRnR2WkVk?=
 =?utf-8?B?Nmc5SXZXK0FRYjdQS2hLb242VGxJMGovMmJ4LzlsRkJFTExNOEFnVWN1SkYx?=
 =?utf-8?B?QUl4WTh1Z0lwUUZhSW9TY1ZDVDRUcHo2SkxEK3MzZ0JvQkw3L0FvK0t0WmVX?=
 =?utf-8?B?TE1DVGp0blp3OWZJWlF1b293UXgxWTNla0VUZmZIb1BITlc1Mnh1d1lPNkoz?=
 =?utf-8?B?d3lUcldaT1V1Sm84b09XdXdobTVQRFdXZmFmNEp1YVQ3ZzNoUXpETFFYOCtD?=
 =?utf-8?B?K0xJSTI3WHBmVzdtdnBOcFoyeFg4L1hxeDZoVWVTeSt3TzZtN0FUcm9pekRB?=
 =?utf-8?B?VC85dkVxTDNBejhGK1NrYVpZM1I1Z3FrQ0cwejV0KzJ4QXNSd3hqcUZXVjY2?=
 =?utf-8?B?SlBEK3EvTjZIQmo0U3Z2dmUzdHBxVkM0T0ZnWE8zUzZucS9QUUdFKzF1YjVM?=
 =?utf-8?B?elZJUW5WU0hYWFlRRTByQWFlV0JXZldsWGNqUWYyS2VMU0NmZTd0TnM5SWVy?=
 =?utf-8?B?ZFpCTFlSVDRjK1ZkTG1taTlqUEVpay9KSmhzNDJ4YWdHcnQ1Z2I2YkJSYy94?=
 =?utf-8?B?T0lpUVJLZW16K3l6RjhpcHJjWVUzVG9kUmhJY3ZIb0RVbTJEOGt0RkI0aFph?=
 =?utf-8?B?ZjlmZGhFR2xWUHJZRGtTUGFFL0Uycm5kWldEK29oNXd2RXdoSEFpc3VmOVp2?=
 =?utf-8?B?bHE3c1l1NnoyY3JEc3ZJWUZoSWFCUmszdjUzWDlsMjY3KzZvdDBPUG5Rd1FM?=
 =?utf-8?B?SUpUVVVDN0ErVGxPOXhHK2JHZ0RhdGwwM0pHdXFZUUZJVHBKRUtYOXFtdy90?=
 =?utf-8?B?ei80dGNUd2lIWkh6dzJxVEVLNG9OUkwxT2hsZFozYWx3bThHOG9DYW9PZWNu?=
 =?utf-8?B?azFrTEEydkhkMlNYT2tYbEZkRzlrOWN6SHVGTlBBTzY4ZVAwVjhrQ0Nic2pj?=
 =?utf-8?B?UzJkVGF1YTJvNUZGMWRwbTBuYTBhZm5qQUFEajdGRW1kL0hiS1k4K1l0c2dH?=
 =?utf-8?B?MUsvM3ZXUktCbkMyVjhKdUdHLzVpS3RJWERKL3dlU2x4OWxDT0hhRzdkREIv?=
 =?utf-8?B?NWV2Y3VhQ1ZxOERVNDg1aTFoa2ZYUUl5aE9VWDFKMzM1MDlFSHBTajl6blVZ?=
 =?utf-8?B?WUtVK3VieERuUHFvS2NnaG84SVl4dUoxejl5R0tMYVZzcmYrbS8zYk1hUFVC?=
 =?utf-8?B?bG5tQU1XTktlcFFEM0xod1VBakI5T2V4USs5R3I1TWU1K0liOVNUb2s4UXQv?=
 =?utf-8?B?N05RNk9aMjJxVUVrUWhSNFBQS3N0WS9hNnRicEpzdmN1RUU4eE9xbC9sREc1?=
 =?utf-8?B?bHM4dWtrZk5SeElmeW44TFUxYWUyZGliZnA5Y0xCbTZnd01DYU1wR2ZmdlEy?=
 =?utf-8?B?cWRhYlZrdElmcFp6TjNza0VGRm0vb0RCNjc2V05NU1kwNTUyYlpDeWpiaXo3?=
 =?utf-8?B?U0pCVjNEYTNIZ3hBSFFHcHVNcmZDcHI3ZUhPTHIzV0ZENUFiek9GcVB6UDJl?=
 =?utf-8?B?MEt6TG5BT3J6QlViLzdzS2tpRlFHdklFN2dzNmU1eWhMMXUzUzc2Mzd4ajRx?=
 =?utf-8?B?WUtUNi9MeG9xQmxlaU9aUlhMbmxjRjhwOEFlN2V3OFlkMFdNOWQybVV6MHow?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ec28a54-35e4-4d2e-f132-08dcfde0de58
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB8200.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 21:29:02.7668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 18Gj0Ap8ZMOXY8XRj+UY2qS70rjTVlMF7IjG2JPdAIbNSND+OFT0wQojBaQy4Cnr62ijWbD7etXnuw0EEJkrVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5947
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



On 2024-11-05 1:49 p.m., Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/guc: Flush ct receive tasklet during reset 
> preparation (rev3)
> *URL:*	https://patchwork.freedesktop.org/series/140741/ <https:// 
> patchwork.freedesktop.org/series/140741/>
> *State:*	failure
> *Details:*	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/ 
> index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/ 
> index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_15628_full -> Patchwork_140741v3_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_140741v3_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_140741v3_full, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (9 -> 9)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_140741v3_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_140741v3/shard-glk7/
>         igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-
>         mmap-cpu.html>
> 
The incomplete test looks not related to this patch.

Regards,
Zhanjun Dong
> 
>     Known issues
> 
> Here are the changes found in Patchwork_140741v3_full that come from 
> known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@api_intel_bb@crc32:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/
>         igt@api_intel_bb@crc32.html> (i915#6230 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230>)
>   *
> 
>     igt@drm_fdinfo@most-busy-check-all@bcs0:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@drm_fdinfo@most-busy-
>         check-all@bcs0.html> (i915#8414 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/8414>) +7 other tests skip
>   *
> 
>     igt@gem_basic@multigpu-create-close:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@gem_basic@multigpu-
>         create-close.html> (i915#7697 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/7697>)
>   *
> 
>     igt@gem_ccs@suspend-resume:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/igt@gem_ccs@suspend-
>         resume.html> (i915#9323 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9323>)
>   *
> 
>     igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-smem-lmem0:
> 
>       o shard-dg2: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_140741v3/shard-dg2-2/igt@gem_ccs@suspend-
>         resume@tile64-compressed-compfmt0-smem-lmem0.html> (i915#12392
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12392> / i915#7297 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7297>)
>   *
> 
>     igt@gem_close_race@multigpu-basic-process:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/igt@gem_close_race@multigpu-
>         basic-process.html> (i915#7697 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/7697>)
>   *
> 
>     igt@gem_compute@compute-square:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-mtlp-2/igt@gem_compute@compute-
>         square.html> (i915#9310 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9310>)
>   *
> 
>     igt@gem_create@create-ext-cpu-access-big:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@gem_create@create-
>         ext-cpu-access-big.html> (i915#6335 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335>)
>   *
> 
>     igt@gem_ctx_engines@invalid-engines:
> 
>       o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-glk5/igt@gem_ctx_engines@invalid-
>         engines.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_140741v3/shard-glk2/igt@gem_ctx_engines@invalid-
>         engines.html> (i915#12031 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12031>)
>   *
> 
>     igt@gem_ctx_persistence@heartbeat-hang:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/
>         igt@gem_ctx_persistence@heartbeat-hang.html> (i915#8555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
>   *
> 
>     igt@gem_eio@hibernate:
> 
>       o shard-dg1: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg1-13/igt@gem_eio@hibernate.html> -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-dg1-14/igt@gem_eio@hibernate.html> (i915#7975 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975> /
>         i915#8213 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8213>)
>   *
> 
>     igt@gem_exec_balancer@parallel:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/
>         igt@gem_exec_balancer@parallel.html> (i915#4525 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
>   *
> 
>     igt@gem_exec_capture@capture-invisible@lmem0:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/
>         igt@gem_exec_capture@capture-invisible@lmem0.html> (i915#6334
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334>)
>         +2 other tests skip
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o shard-tglu-1: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@gem_exec_fair@basic-
>         none-solo@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2842>) +3 other tests fail
>   *
> 
>     igt@gem_exec_fair@basic-pace-share:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-16/igt@gem_exec_fair@basic-
>         pace-share.html> (i915#3539 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3539> / i915#4852 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852>)
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-rkl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/igt@gem_exec_fair@basic-pace-
>         share@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2842>) +3 other tests fail
>   *
> 
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       o shard-tglu: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/igt@gem_exec_fair@basic-
>         pace-solo@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2842>) +1 other test fail
>   *
> 
>     igt@gem_exec_fence@submit:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/
>         igt@gem_exec_fence@submit.html> (i915#4812 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>   *
> 
>     igt@gem_exec_flush@basic-uc-set-default:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-3/igt@gem_exec_flush@basic-uc-
>         set-default.html> (i915#3539 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3539>)
>   *
> 
>     igt@gem_exec_reloc@basic-wc:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@gem_exec_reloc@basic-
>         wc.html> (i915#3281 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3281>) +4 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-wc-read-noreloc:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-17/igt@gem_exec_reloc@basic-wc-
>         read-noreloc.html> (i915#3281 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3281>) +1 other test skip
>   *
> 
>     igt@gem_exec_reloc@basic-write-cpu:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/igt@gem_exec_reloc@basic-
>         write-cpu.html> (i915#3281 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3281>) +3 other tests skip
>   *
> 
>     igt@gem_exec_schedule@semaphore-power:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-17/
>         igt@gem_exec_schedule@semaphore-power.html> (i915#4812 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>   *
> 
>     igt@gem_exec_suspend@basic-s0@smem:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg2-7/igt@gem_exec_suspend@basic-
>         s0@smem.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-dg2-2/
>         igt@gem_exec_suspend@basic-s0@smem.html> (i915#11441 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441>)
>   *
> 
>     igt@gem_exec_suspend@basic-s4-devices:
> 
>       o shard-rkl: NOTRUN -> ABORT <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-rkl-7/
>         igt@gem_exec_suspend@basic-s4-devices.html> (i915#7975 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975> /
>         i915#8213 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8213>) +1 other test abort
>   *
> 
>     igt@gem_lmem_evict@dontneed-evict-race:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/
>         igt@gem_lmem_evict@dontneed-evict-race.html> (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613> /
>         i915#7582 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7582>)
>   *
> 
>     igt@gem_lmem_swapping@heavy-multi:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/igt@gem_lmem_swapping@heavy-
>         multi.html> (i915#4613 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/4613>) +1 other test skip
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-verify:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/
>         igt@gem_lmem_swapping@parallel-random-verify.html> (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@verify-random-ccs:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@gem_lmem_swapping@verify-random-ccs.html> (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>         +4 other tests skip
>   *
> 
>     igt@gem_mmap_wc@copy:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-17/igt@gem_mmap_wc@copy.html>
>         (i915#4083 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4083>)
>   *
> 
>     igt@gem_mmap_wc@write:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@gem_mmap_wc@write.html>
>         (i915#4083 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4083>) +1 other test skip
>   *
> 
>     igt@gem_partial_pwrite_pread@write-display:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/
>         igt@gem_partial_pwrite_pread@write-display.html> (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +3 other tests skip
>   *
> 
>     igt@gem_partial_pwrite_pread@write-uncached:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-mtlp-2/
>         igt@gem_partial_pwrite_pread@write-uncached.html> (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>   *
> 
>     igt@gem_pread@snoop:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@gem_pread@snoop.html>
>         (i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3282>) +1 other test skip
>   *
> 
>     igt@gem_pxp@create-regular-context-1:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@gem_pxp@create-regular-
>         context-1.html> (i915#4270 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4270>)
>   *
> 
>     igt@gem_pxp@fail-invalid-protected-context:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/igt@gem_pxp@fail-
>         invalid-protected-context.html> (i915#4270 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>) +2 other
>         tests skip
>   *
> 
>     igt@gem_pxp@reject-modify-context-protection-off-3:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@gem_pxp@reject-
>         modify-context-protection-off-3.html> (i915#4270 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>) +2 other
>         tests skip
>   *
> 
>     igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/igt@gem_pxp@verify-pxp-stale-
>         buf-optout-execution.html> (i915#4270 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>   *
> 
>     igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@gem_render_copy@y-tiled-
>         to-vebox-yf-tiled.html> (i915#5190 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190> /
>         i915#8428 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8428>) +1 other test skip
>   *
> 
>     igt@gem_set_tiling_vs_blt@tiled-to-tiled:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/
>         igt@gem_set_tiling_vs_blt@tiled-to-tiled.html> (i915#8411
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>)
>   *
> 
>     igt@gem_softpin@evict-snoop:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/igt@gem_softpin@evict-
>         snoop.html> +11 other tests skip
>   *
> 
>     igt@gem_tiled_swapping@non-threaded:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@gem_tiled_swapping@non-
>         threaded.html> (i915#4077 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4077>) +4 other tests skip
>   *
> 
>     igt@gem_userptr_blits@readonly-pwrite-unsync:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/
>         igt@gem_userptr_blits@readonly-pwrite-unsync.html> (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>   *
> 
>     igt@gem_userptr_blits@unsync-unmap:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@gem_userptr_blits@unsync-unmap.html> (i915#3297 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>   *
> 
>     igt@gen9_exec_parse@batch-invalid-length:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@gen9_exec_parse@batch-
>         invalid-length.html> (i915#2856 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2856>)
>   *
> 
>     igt@gen9_exec_parse@bb-large:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/igt@gen9_exec_parse@bb-
>         large.html> (i915#2527 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/2527> / i915#2856 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>) +1 other
>         test skip
>   *
> 
>     igt@gen9_exec_parse@bb-start-param:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@gen9_exec_parse@bb-
>         start-param.html> (i915#2527 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2527> / i915#2856 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>) +3 other
>         tests skip
>   *
> 
>     igt@i915_module_load@load:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/
>         igt@i915_module_load@load.html> (i915#6227 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6227>)
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-snb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-snb4/igt@i915_module_load@reload-with-fault-
>         injection.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-snb1/igt@i915_module_load@reload-
>         with-fault-injection.html> (i915#9820 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820>)
>       o shard-mtlp: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-mtlp-2/igt@i915_module_load@reload-with-
>         fault-injection.html> -> ABORT <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_140741v3/shard-mtlp-7/
>         igt@i915_module_load@reload-with-fault-injection.html>
>         (i915#10131 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/10131> / i915#10887 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/10887> / i915#9697 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9697>)
>   *
> 
>     igt@i915_pm_freq_api@freq-reset-multiple:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/igt@i915_pm_freq_api@freq-
>         reset-multiple.html> (i915#8399 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/8399>)
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@i915_pm_freq_api@freq-reset-multiple.html> (i915#8399
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399>)
>   *
> 
>     igt@i915_pm_freq_mult@media-freq@gt0:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/
>         igt@i915_pm_freq_mult@media-freq@gt0.html> (i915#6590 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590>) +1 other
>         test skip
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle:
> 
>       o shard-tglu: NOTRUN -> WARN <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/
>         igt@i915_pm_rc6_residency@rc6-idle.html> (i915#2681 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681>) +4 other
>         tests warn
>   *
> 
>     igt@i915_pm_rps@basic-api:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@i915_pm_rps@basic-
>         api.html> (i915#11681 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/11681> / i915#6621 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621>)
>   *
> 
>     igt@i915_pm_sseu@full-enable:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/igt@i915_pm_sseu@full-
>         enable.html> (i915#4387 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4387>)
>   *
> 
>     igt@i915_selftest@mock:
> 
>       o shard-tglu: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_140741v3/shard-tglu-2/
>         igt@i915_selftest@mock.html> (i915#9311 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311>) +1 other
>         test dmesg-warn
>   *
> 
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@kms_addfb_basic@basic-y-
>         tiled-legacy.html> (i915#4212 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/4212> / i915#4215 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5190>)
>   *
> 
>     igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-
>     a-3-4-mc-ccs:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-7/igt@kms_async_flips@async-
>         flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html>
>         (i915#8709 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8709>) +11 other tests skip
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-3/
>         igt@kms_atomic_transition@plane-all-modeset-transition-internal-
>         panels.html> (i915#1769 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1769> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:
> 
>       o shard-dg1: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg1-17/igt@kms_atomic_transition@plane-all-
>         modeset-transition@pipe-a-hdmi-a-4.html> -> FAIL <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/shard-dg1-14/
>         igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-
>         hdmi-a-4.html> (i915#5956 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5956>) +1 other test fail
>   *
> 
>     igt@kms_atomic_transition@plane-toggle-modeset-transition:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg2-5/igt@kms_atomic_transition@plane-toggle-
>         modeset-transition.html> -> FAIL <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_140741v3/shard-dg2-10/
>         igt@kms_atomic_transition@plane-toggle-modeset-transition.html>
>         (i915#5956 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5956>)
>   *
> 
>     igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-dp-4:
> 
>       o shard-dg2: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-10/
>         igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-
>         a-dp-4.html> (i915#5956 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5956>)
>   *
> 
>     igt@kms_big_fb@4-tiled-16bpp-rotate-90:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@kms_big_fb@4-
>         tiled-16bpp-rotate-90.html> +1 other test skip
>   *
> 
>     igt@kms_big_fb@4-tiled-32bpp-rotate-0:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@kms_big_fb@4-
>         tiled-32bpp-rotate-0.html> (i915#5286 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) +4 other
>         tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-8bpp-rotate-180:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/igt@kms_big_fb@4-
>         tiled-8bpp-rotate-180.html> (i915#5286 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) +4 other
>         tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-addfb:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/igt@kms_big_fb@4-tiled-
>         addfb.html> (i915#5286 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/5286>) +2 other tests skip
>   *
> 
>     igt@kms_big_fb@x-tiled-16bpp-rotate-90:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/igt@kms_big_fb@x-tiled-16bpp-
>         rotate-90.html> (i915#3638 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3638>)
>   *
> 
>     igt@kms_big_fb@y-tiled-32bpp-rotate-270:
> 
>       o shard-dg1: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg1-16/igt@kms_big_fb@y-tiled-32bpp-
>         rotate-270.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_140741v3/shard-dg1-13/igt@kms_big_fb@y-
>         tiled-32bpp-rotate-270.html> (i915#4423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>   *
> 
>     igt@kms_big_fb@y-tiled-8bpp-rotate-180:
> 
>       o shard-dg1: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_140741v3/shard-dg1-16/igt@kms_big_fb@y-
>         tiled-8bpp-rotate-180.html> (i915#4423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>) +2 other
>         tests dmesg-warn
>   *
> 
>     igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@kms_big_fb@y-tiled-
>         addfb-size-offset-overflow.html> (i915#5190 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-mtlp-2/igt@kms_big_fb@yf-tiled-
>         max-hw-stride-32bpp-rotate-0-async-flip.html> +1 other test skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-
>         hw-stride-32bpp-rotate-180.html> (i915#4538 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5190>) +1 other test skip
>   *
> 
>     igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-5/igt@kms_ccs@bad-aux-stride-4-
>         tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html> (i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +76 other
>         tests skip
>   *
> 
>     igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-2:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-glk8/igt@kms_ccs@bad-pixel-
>         format-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-2.html> +15 other tests skip
>   *
> 
>     igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@kms_ccs@bad-pixel-
>         format-4-tiled-mtl-mc-ccs.html> (i915#10307 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6095>) +140 other tests skip
>   *
> 
>     igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/igt@kms_ccs@bad-
>         rotation-90-y-tiled-gen12-mc-ccs.html> (i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +34 other
>         tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@kms_ccs@crc-primary-
>         basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html> (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +29 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-8/igt@kms_ccs@crc-primary-
>         rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html> (i915#10307
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/10307> / i915#10434 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/10434> / i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +1 other
>         test skip
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-13/igt@kms_ccs@crc-primary-
>         rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html> (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +136 other tests skip
>   *
> 
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@kms_ccs@crc-sprite-
>         planes-basic-4-tiled-bmg-ccs.html> (i915#12313 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
>   *
> 
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/igt@kms_ccs@crc-sprite-
>         planes-basic-4-tiled-lnl-ccs.html> (i915#12313 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
>   *
> 
>     igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-3:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-13/igt@kms_ccs@crc-sprite-
>         planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-3.html> (i915#4423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6095>)
>   *
> 
>     igt@kms_cdclk@mode-transition:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-3/igt@kms_cdclk@mode-
>         transition.html> (i915#3742 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3742>)
>   *
> 
>     igt@kms_cdclk@mode-transition-all-outputs:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@kms_cdclk@mode-
>         transition-all-outputs.html> (i915#11616 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616> /
>         i915#7213 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7213>)
>   *
> 
>     igt@kms_cdclk@plane-scaling:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/igt@kms_cdclk@plane-
>         scaling.html> (i915#3742 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3742>)
>   *
> 
>     igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/igt@kms_chamelium_edid@hdmi-
>         edid-stress-resolution-non-4k.html> (i915#7828 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +2 other
>         tests skip
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html>
>         (i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7828>) +5 other tests skip
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd-storm:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@kms_chamelium_hpd@dp-
>         hpd-storm.html> (i915#7828 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7828>) +1 other test skip
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd-storm-disable:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/
>         igt@kms_chamelium_hpd@dp-hpd-storm-disable.html> (i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +7 other tests skip
>   *
> 
>     igt@kms_content_protection@atomic-dpms:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/
>         igt@kms_content_protection@atomic-dpms.html> (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118> /
>         i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9424>)
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_content_protection@atomic-dpms.html> (i915#6944
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944> /
>         i915#7116 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7116> / i915#7118 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7118> / i915#9424 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>) +1 other
>         test skip
>   *
> 
>     igt@kms_content_protection@lic-type-0:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/
>         igt@kms_content_protection@lic-type-0.html> (i915#6944 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944> /
>         i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9424>)
>   *
> 
>     igt@kms_content_protection@lic-type-1:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/
>         igt@kms_content_protection@lic-type-1.html> (i915#9424 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>   *
> 
>     igt@kms_content_protection@srm@pipe-a-dp-4:
> 
>       o shard-dg2: NOTRUN -> TIMEOUT <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-dg2-10/
>         igt@kms_content_protection@srm@pipe-a-dp-4.html> (i915#7173
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>)
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen-512x170:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@kms_cursor_crc@cursor-
>         offscreen-512x170.html> (i915#11453 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453> /
>         i915#3359 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3359>)
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen-512x512:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_cursor_crc@cursor-offscreen-512x512.html> (i915#11453
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/11453> / i915#3359 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3359>)
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-32x32:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_cursor_crc@cursor-onscreen-32x32.html> (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +3 other tests skip
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement-512x512:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/igt@kms_cursor_crc@cursor-
>         rapid-movement-512x512.html> (i915#11453 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453> /
>         i915#3359 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3359>)
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-32x32:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/
>         igt@kms_cursor_crc@cursor-sliding-32x32.html> (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +4 other tests skip
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-512x512:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/
>         igt@kms_cursor_crc@cursor-sliding-512x512.html> (i915#11453
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/11453> / i915#3359 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3359>) +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-max-size:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@kms_cursor_crc@cursor-
>         sliding-max-size.html> (i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other
>         test skip
>   *
> 
>     igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-mtlp-8/
>         igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html> (i915#9809
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809>)
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (i915#4103 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4103>) +1 other test skip
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
> 
>       o shard-snb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-
>         varying-size.html> -> FAIL <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-snb1/
>         igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2346>)
>   *
> 
>     igt@kms_dirtyfb@psr-dirtyfb-ioctl:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@kms_dirtyfb@psr-
>         dirtyfb-ioctl.html> (i915#9723 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9723>)
>   *
> 
>     igt@kms_display_modes@mst-extended-mode-negative:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/
>         igt@kms_display_modes@mst-extended-mode-negative.html>
>         (i915#8588 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8588>)
>   *
> 
>     igt@kms_draw_crc@draw-method-mmap-gtt:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-17/igt@kms_draw_crc@draw-
>         method-mmap-gtt.html> (i915#8812 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812>)
>   *
> 
>     igt@kms_dsc@dsc-fractional-bpp-with-bpc:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/igt@kms_dsc@dsc-
>         fractional-bpp-with-bpc.html> (i915#3840 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *
> 
>     igt@kms_dsc@dsc-with-output-formats:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/igt@kms_dsc@dsc-with-output-
>         formats.html> (i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555> / i915#3840 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@kms_dsc@dsc-with-
>         output-formats.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555> / i915#3840 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *
> 
>     igt@kms_fbcon_fbt@psr-suspend:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@kms_fbcon_fbt@psr-
>         suspend.html> (i915#3469 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3469>)
>   *
> 
>     igt@kms_feature_discovery@display-2x:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/
>         igt@kms_feature_discovery@display-2x.html> (i915#1839 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839>)
>   *
> 
>     igt@kms_feature_discovery@display-3x:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/
>         igt@kms_feature_discovery@display-3x.html> (i915#1839 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839>)
>   *
> 
>     igt@kms_feature_discovery@display-4x:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/
>         igt@kms_feature_discovery@display-4x.html> (i915#1839 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839>)
>   *
> 
>     igt@kms_feature_discovery@psr1:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_feature_discovery@psr1.html> (i915#658 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/658>)
>   *
> 
>     igt@kms_flip@2x-absolute-wf_vblank-interruptible:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@kms_flip@2x-
>         absolute-wf_vblank-interruptible.html> (i915#3637 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>) +3 other
>         tests skip
>   *
> 
>     igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/igt@kms_flip@2x-single-
>         buffer-flip-vs-dpms-off-vs-modeset-interruptible.html>
>         (i915#3637 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3637>) +3 other tests skip
>   *
> 
>     igt@kms_flip@wf_vblank-ts-check-interruptible@b-hdmi-a1:
> 
>       o shard-rkl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/igt@kms_flip@wf_vblank-ts-
>         check-interruptible@b-hdmi-a1.html> (i915#2122 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122>) +1 other
>         test fail
>   *
> 
>     igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1:
> 
>       o shard-snb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-snb1/igt@kms_flip@wf_vblank-ts-check-
>         interruptible@b-vga1.html> -> FAIL <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_140741v3/shard-snb5/
>         igt@kms_flip@wf_vblank-ts-check-interruptible@b-vga1.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2122>) +2 other tests fail
>   *
> 
>     igt@kms_flip@wf_vblank-ts-check-interruptible@c-edp1:
> 
>       o shard-mtlp: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-mtlp-6/igt@kms_flip@wf_vblank-ts-check-
>         interruptible@c-edp1.html> -> FAIL <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_140741v3/shard-mtlp-8/
>         igt@kms_flip@wf_vblank-ts-check-interruptible@c-edp1.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2122>) +1 other test fail
>   *
> 
>     igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1:
> 
>       o shard-tglu: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-tglu-4/igt@kms_flip@wf_vblank-ts-check-
>         interruptible@d-hdmi-a1.html> -> FAIL <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_140741v3/shard-tglu-3/
>         igt@kms_flip@wf_vblank-ts-check-interruptible@d-hdmi-a1.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2122>) +2 other tests fail
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-
>     downscaling@pipe-a-valid-mode:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/
>         igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-
>         downscaling@pipe-a-valid-mode.html> (i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>) +1 other
>         test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-
>     downscaling@pipe-a-valid-mode:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/
>         igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-
>         downscaling@pipe-a-valid-mode.html> (i915#2587 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587> /
>         i915#2672 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2672>) +2 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-
>     upscaling@pipe-a-valid-mode:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-3/
>         igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-
>         upscaling@pipe-a-valid-mode.html> (i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>) +1 other
>         test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-
>     downscaling:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/
>         igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-
>         downscaling.html> (i915#2672 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other
>         test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/
>         igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-
>         downscaling.html> (i915#2587 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2587> / i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-
>         upscaling.html> (i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other
>         test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-
>     upscaling@pipe-a-valid-mode:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-
>         upscaling@pipe-a-valid-mode.html> (i915#2587 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587> /
>         i915#2672 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2672>) +1 other test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/
>         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>         upscaling.html> (i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other
>         test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/
>         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-
>         downscaling.html> (i915#2672 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other
>         test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-mtlp-8/
>         igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-
>         render.html> (i915#1825 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1825>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-17/
>         igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-
>         pwrite.html> +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu:
> 
>       o shard-dg2: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/
>         igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-cpu.html>
>         (i915#6880 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6880>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-tiling-4:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/
>         igt@kms_frontbuffer_tracking@fbc-tiling-4.html> (i915#5439
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/
>         igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-
>         mmap-gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8708>) +3 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-13/
>         igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-
>         pwrite.html> (i915#3458 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3458>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/
>         igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-
>         blt.html> (i915#3458 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3458>) +2 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-
>         blt.html> (i915#1825 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/1825>) +22 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html> +64
>         other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-16/
>         igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html>
>         (i915#8708 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8708>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-wc:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-16/
>         igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-
>         mmap-wc.html> (i915#4423 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4423> / i915#8708 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/
>         igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-
>         blt.html> (i915#3023 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3023>) +10 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-16/
>         igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-
>         mmap-cpu.html> (i915#4423 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4423>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/
>         igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-
>         blt.html> (i915#5354 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/5354>) +12 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/
>         igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-
>         mmap-wc.html> +68 other tests skip
>   *
> 
>     igt@kms_hdr@invalid-metadata-sizes:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/igt@kms_hdr@invalid-metadata-
>         sizes.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3555> / i915#8228 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>) +1 other
>         test skip
>   *
> 
>     igt@kms_hdr@static-swap:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@kms_hdr@static-
>         swap.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3555> / i915#8228 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>) +1 other
>         test skip
>   *
> 
>     igt@kms_hdr@static-toggle-suspend:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/igt@kms_hdr@static-
>         toggle-suspend.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555> / i915#8228 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_joiner@basic-big-joiner:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/igt@kms_joiner@basic-
>         big-joiner.html> (i915#10656 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/10656>)
>   *
> 
>     igt@kms_joiner@basic-force-big-joiner:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/igt@kms_joiner@basic-
>         force-big-joiner.html> (i915#12388 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388>)
>   *
> 
>     igt@kms_joiner@basic-force-ultra-joiner:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@kms_joiner@basic-force-
>         ultra-joiner.html> (i915#10656 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/10656>)
>   *
> 
>     igt@kms_joiner@invalid-modeset-force-big-joiner:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@kms_joiner@invalid-
>         modeset-force-big-joiner.html> (i915#12388 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388>)
>   *
> 
>     igt@kms_joiner@invalid-modeset-ultra-joiner:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@kms_joiner@invalid-
>         modeset-ultra-joiner.html> (i915#12339 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339>)
>   *
> 
>     igt@kms_plane_lowres@tiling-y:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-mtlp-4/
>         igt@kms_plane_lowres@tiling-y.html> (i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#8821 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8821>)
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/igt@kms_plane_scaling@plane-
>         downscale-factor-0-75-with-rotation@pipe-a.html> (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>)
>         +4 other tests skip
>   *
> 
>     igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-c:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/
>         igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-
>         c.html> (i915#12247 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/12247>) +4 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-
>         factor-0-25.html> (i915#12247 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12247> / i915#6953 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953>)
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-
>     factor-0-25@pipe-a:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-
>         factor-0-25@pipe-a.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>) +3 other
>         tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/igt@kms_plane_scaling@planes-
>         unity-scaling-downscale-factor-0-25.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#6953 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6953>)
>   *
> 
>     igt@kms_pm_backlight@fade-with-dpms:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/
>         igt@kms_pm_backlight@fade-with-dpms.html> (i915#9812 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812>)
>   *
> 
>     igt@kms_pm_backlight@fade-with-suspend:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_pm_backlight@fade-with-suspend.html> (i915#9812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812>)
>   *
> 
>     igt@kms_pm_dc@dc6-dpms:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-3/igt@kms_pm_dc@dc6-dpms.html>
>         (i915#5978 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5978>)
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-17/igt@kms_pm_dc@dc6-dpms.html>
>         (i915#3361 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3361>)
>   *
> 
>     igt@kms_pm_dc@dc9-dpms:
> 
>       o shard-tglu: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html> -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html> (i915#4281 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281>)
>   *
> 
>     igt@kms_pm_lpsp@kms-lpsp:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/igt@kms_pm_lpsp@kms-
>         lpsp.html> (i915#3828 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3828>)
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@kms_pm_lpsp@kms-
>         lpsp.html> (i915#3828 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3828>)
>   *
> 
>     igt@kms_pm_rpm@dpms-lpsp:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html> -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html> (i915#9519 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>) +2 other
>         tests skip
>   *
> 
>     igt@kms_pm_rpm@modeset-non-lpsp-stress:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@kms_pm_rpm@modeset-
>         non-lpsp-stress.html> (i915#9519 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>   *
> 
>     igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/igt@kms_pm_rpm@modeset-
>         non-lpsp-stress-no-wait.html> (i915#9519 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>   *
> 
>     igt@kms_pm_rpm@pm-tiling:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-mtlp-8/igt@kms_pm_rpm@pm-
>         tiling.html> (i915#4077 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4077>)
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-3/igt@kms_psr2_sf@fbc-pr-
>         cursor-plane-move-continuous-exceed-fully-sf.html> (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +2 other tests skip
>   *
> 
>     igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/igt@kms_psr2_sf@pr-overlay-
>         plane-move-continuous-exceed-sf.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +4 other
>         tests skip
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-16/igt@kms_psr2_sf@pr-overlay-
>         plane-move-continuous-exceed-sf.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520> /
>         i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4423>)
>   *
> 
>     igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/igt@kms_psr2_sf@psr2-
>         cursor-plane-move-continuous-exceed-fully-sf.html> (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +4 other tests skip
>   *
> 
>     igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@kms_psr2_sf@psr2-
>         overlay-primary-update-sf-dmg-area.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +5 other
>         tests skip
>   *
> 
>     igt@kms_psr@fbc-pr-cursor-mmap-gtt:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-13/igt@kms_psr@fbc-pr-cursor-
>         mmap-gtt.html> (i915#1072 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +1 other
>         test skip
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-mtlp-8/igt@kms_psr@fbc-pr-
>         cursor-mmap-gtt.html> (i915#9688 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688>) +2 other
>         tests skip
>   *
> 
>     igt@kms_psr@fbc-pr-cursor-render:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@kms_psr@fbc-pr-cursor-
>         render.html> (i915#1072 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +4 other
>         tests skip
>   *
> 
>     igt@kms_psr@fbc-psr-no-drrs:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/igt@kms_psr@fbc-psr-no-
>         drrs.html> (i915#9732 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9732>) +16 other tests skip
>   *
> 
>     igt@kms_psr@fbc-psr2-sprite-render:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@kms_psr@fbc-psr2-
>         sprite-render.html> (i915#9732 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9732>) +13 other tests skip
>   *
> 
>     igt@kms_psr@pr-primary-blt:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/igt@kms_psr@pr-primary-
>         blt.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +10 other
>         tests skip
>   *
> 
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#9685 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9685>)
>   *
> 
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-2/
>         igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html>
>         (i915#5289 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5289>) +1 other test skip
>   *
> 
>     igt@kms_scaling_modes@scaling-mode-full:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-13/
>         igt@kms_scaling_modes@scaling-mode-full.html> (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_selftest@drm_framebuffer:
> 
>       o shard-rkl: NOTRUN -> ABORT <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-rkl-3/
>         igt@kms_selftest@drm_framebuffer.html> (i915#12231 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12231>) +1 other
>         test abort
>   *
> 
>     igt@kms_setmode@basic-clone-single-crtc:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/igt@kms_setmode@basic-clone-
>         single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555>) +4 other tests skip
>   *
> 
>     igt@kms_writeback@writeback-fb-id:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_writeback@writeback-fb-id.html> (i915#2437 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>)
>   *
> 
>     igt@kms_writeback@writeback-pixel-formats:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-7/igt@kms_writeback@writeback-
>         pixel-formats.html> (i915#2437 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2437> / i915#9412 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412>)
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/
>         igt@kms_writeback@writeback-pixel-formats.html> (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437> /
>         i915#9412 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9412>)
>   *
> 
>     igt@perf_pmu@cpu-hotplug:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@perf_pmu@cpu-
>         hotplug.html> (i915#8850 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8850>)
>   *
> 
>     igt@perf_pmu@rc6@other-idle-gt0:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-4/igt@perf_pmu@rc6@other-
>         idle-gt0.html> (i915#8516 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8516>)
>   *
> 
>     igt@prime_vgem@basic-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-11/igt@prime_vgem@basic-
>         gtt.html> (i915#3708 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3708> / i915#4077 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>   *
> 
>     igt@sriov_basic@bind-unbind-vf:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-rkl-4/igt@sriov_basic@bind-unbind-
>         vf.html> (i915#9917 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9917>)
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg1-16/igt@sriov_basic@bind-unbind-
>         vf.html> (i915#9917 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9917>)
>   *
> 
>     igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-tglu-1/igt@sriov_basic@enable-
>         vfs-bind-unbind-each-numvfs-all.html> (i915#9917 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
> 
>       o shard-dg2: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-
>         compressed-compfmt0-lmem0-lmem0.html> (i915#12392 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392> /
>         i915#7297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7297>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_140741v3/shard-dg2-2/igt@gem_ccs@suspend-
>         resume@linear-compressed-compfmt0-lmem0-lmem0.html>
>   *
> 
>     igt@gem_ctx_engines@invalid-engines:
> 
>       o shard-rkl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-rkl-2/igt@gem_ctx_engines@invalid-
>         engines.html> (i915#12031 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12031>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_140741v3/shard-rkl-4/
>         igt@gem_ctx_engines@invalid-engines.html>
>       o shard-mtlp: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-mtlp-7/igt@gem_ctx_engines@invalid-
>         engines.html> (i915#12031 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12031>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_140741v3/shard-mtlp-6/
>         igt@gem_ctx_engines@invalid-engines.html>
>   *
> 
>     igt@gem_ctx_persistence@hostile:
> 
>       o shard-tglu: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-tglu-9/igt@gem_ctx_persistence@hostile.html>
>         (i915#11980 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/11980> / i915#12580 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12580>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_140741v3/shard-tglu-2/
>         igt@gem_ctx_persistence@hostile.html>
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-dg2: WARN <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg2-10/igt@i915_module_load@reload-with-
>         fault-injection.html> -> PASS <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_140741v3/shard-dg2-8/
>         igt@i915_module_load@reload-with-fault-injection.html>
>   *
> 
>     igt@kms_atomic_transition@modeset-transition-nonblocking:
> 
>       o shard-glk: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-glk8/igt@kms_atomic_transition@modeset-
>         transition-nonblocking.html> (i915#12177 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-glk9/igt@kms_atomic_transition@modeset-transition-
>         nonblocking.html>
>   *
> 
>     igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
> 
>       o shard-glk: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-glk8/igt@kms_atomic_transition@modeset-
>         transition-nonblocking@2x-outputs.html> (i915#11859 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-glk9/igt@kms_atomic_transition@modeset-transition-
>         nonblocking@2x-outputs.html>
>   *
> 
>     igt@kms_atomic_transition@plane-toggle-modeset-transition:
> 
>       o shard-dg1: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg1-16/igt@kms_atomic_transition@plane-
>         toggle-modeset-transition.html> (i915#5956 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-dg1-13/igt@kms_atomic_transition@plane-toggle-modeset-
>         transition.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-glk: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-
>         atomic-transitions-varying-size.html> (i915#2346 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-
>         transitions-varying-size.html>
>   *
> 
>     igt@kms_flip@2x-flip-vs-suspend:
> 
>       o shard-glk: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-glk9/igt@kms_flip@2x-flip-vs-suspend.html>
>         (i915#1982 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1982> / i915#4839 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4839>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_140741v3/shard-glk7/
>         igt@kms_flip@2x-flip-vs-suspend.html>
>   *
> 
>     igt@kms_flip@2x-flip-vs-suspend@bc-hdmi-a1-hdmi-a2:
> 
>       o shard-glk: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-glk9/igt@kms_flip@2x-flip-vs-suspend@bc-hdmi-
>         a1-hdmi-a2.html> (i915#4839 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4839>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_140741v3/shard-glk7/
>         igt@kms_flip@2x-flip-vs-suspend@bc-hdmi-a1-hdmi-a2.html>
>   *
> 
>     igt@kms_flip@wf_vblank-ts-check-interruptible:
> 
>       o shard-dg1: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg1-16/igt@kms_flip@wf_vblank-ts-check-
>         interruptible.html> (i915#12517 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12517> / i915#2122 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-dg1-13/igt@kms_flip@wf_vblank-ts-check-interruptible.html>
>   *
> 
>     igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1:
> 
>       o shard-mtlp: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-mtlp-6/igt@kms_flip@wf_vblank-ts-check-
>         interruptible@a-edp1.html> (i915#2122 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-mtlp-8/igt@kms_flip@wf_vblank-ts-check-interruptible@a-
>         edp1.html>
>   *
> 
>     igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-a1:
> 
>       o shard-glk: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-glk9/igt@kms_flip@wf_vblank-ts-check-
>         interruptible@a-hdmi-a1.html> (i915#2122 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-glk1/igt@kms_flip@wf_vblank-ts-check-interruptible@a-hdmi-
>         a1.html> +1 other test pass
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-
>     upscaling@pipe-a-valid-mode:
> 
>       o {shard-dg2-9}: ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-
>         xtile-to-64bpp-xtile-upscaling@pipe-a-valid-mode.html> -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-
>         xtile-upscaling@pipe-a-valid-mode.html> +1 other test pass
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
> 
>       o shard-dg2: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-
>         primscrn-pri-shrfb-draw-render.html> (i915#6880 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-
>         shrfb-draw-render.html>
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
> 
>       o shard-dg1: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg1-15/igt@kms_plane_scaling@planes-upscale-
>         factor-0-25-downscale-factor-0-75.html> (i915#4423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-dg1-15/igt@kms_plane_scaling@planes-upscale-factor-0-25-
>         downscale-factor-0-75.html> +6 other tests pass
>   *
> 
>     igt@kms_pm_rpm@dpms-mode-unset-lpsp:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-
>         lpsp.html> (i915#9519 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9519>) -> PASS <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_140741v3/shard-dg2-8/igt@kms_pm_rpm@dpms-
>         mode-unset-lpsp.html>
>   *
> 
>     igt@kms_pm_rpm@modeset-lpsp-stress:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-
>         stress.html> (i915#9519 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9519>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_140741v3/shard-rkl-4/
>         igt@kms_pm_rpm@modeset-lpsp-stress.html> +1 other test pass
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs0:
> 
>       o shard-tglu: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-tglu-8/igt@gem_exec_fair@basic-
>         pace@vcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2842>) -> FAIL <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_140741v3/shard-tglu-7/
>         igt@gem_exec_fair@basic-pace@vcs0.html> (i915#2876 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876>) +1 other
>         test fail
>   *
> 
>     igt@gem_exec_flush@basic-uc-set-default:
> 
>       o shard-dg1: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg1-15/igt@gem_exec_flush@basic-uc-set-
>         default.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_140741v3/shard-dg1-17/igt@gem_exec_flush@basic-uc-set-
>         default.html> (i915#3539 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3539>)
>   *
> 
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg1-15/igt@kms_ccs@crc-sprite-planes-basic-4-
>         tiled-lnl-ccs.html> (i915#12313 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12313> / i915#4423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-dg1-15/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-
>         ccs.html> (i915#12313 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/12313>)
>   *
> 
>     igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg1-16/igt@kms_ccs@crc-sprite-planes-basic-
>         yf-tiled-ccs.html> (i915#6095 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/6095>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_140741v3/shard-dg1-13/
>         igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html>
>         (i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4423> / i915#6095 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6095>)
>   *
> 
>     igt@kms_content_protection@srm:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg2-5/igt@kms_content_protection@srm.html>
>         (i915#7118 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7118>) -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_140741v3/shard-dg2-10/
>         igt@kms_content_protection@srm.html> (i915#7173 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>)
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg1-13/igt@kms_cursor_legacy@cursorb-vs-
>         flipb-varying-size.html> (i915#4423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-dg1-14/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-
>         size.html> +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg1-15/
>         igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-
>         pwrite.html> (i915#3458 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3458> / i915#4423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-
>         pri-indfb-draw-pwrite.html> (i915#3458 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-
>         primscrn-spr-indfb-move.html> (i915#3458 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-
>         indfb-move.html> (i915#10433 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/10433> / i915#3458 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>) +1 other
>         test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg1-13/
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-
>         mmap-wc.html> (i915#4423 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4423> / i915#8708 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140741v3/
>         shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-
>         pri-indfb-draw-mmap-wc.html> (i915#8708 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>   *
> 
>     igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-
>         pipe-crc-check.html> (i915#4816 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/4816>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_140741v3/shard-rkl-1/
>         igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         (i915#4070 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4070> / i915#4816 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4816>)
>   *
> 
>     igt@kms_psr@pr-cursor-plane-move:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15628/shard-dg1-16/igt@kms_psr@pr-cursor-plane-move.html>
>         (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9732>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_140741v3/shard-dg1-13/
>         igt@kms_psr@pr-cursor-plane-move.html> (i915#1072 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> /
>         i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4423> / i915#9732 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9732>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_15628 -> Patchwork_140741v3
> 
> CI-20190529: 20190529
> CI_DRM_15628: a4532bcf5eea0cfdb56fbdc3195a2d15d193727b @ git:// 
> anongit.freedesktop.org/gfx-ci/linux
> IGT_8096: f59a71218300ff6ebb4522f6b45156b09bece5f5 @ https:// 
> gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_140741v3: a4532bcf5eea0cfdb56fbdc3195a2d15d193727b @ git:// 
> anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git:// 
> anongit.freedesktop.org/piglit
> 

