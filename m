Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEE9A149BC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 07:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E09D10EA67;
	Fri, 17 Jan 2025 06:35:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="foOskdvw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 019DB10EA67;
 Fri, 17 Jan 2025 06:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737095713; x=1768631713;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+hMOfS8Bv785+VGkgAtr6yBT3BhvIQb7lgTlJ9bzgpc=;
 b=foOskdvwV0fcKOleGtG76nFQQ2vSrkAGxoyC7w76K4xcsLYuI36BGlo3
 X6MZWGon1GqhR7Ujp+PU/W5pfyU0SiiQTHzrEECsCUkMymiID2D7y3nRR
 oJ3e4q3oDpy3EalE5EQb5oYpSmUKTJprAKhRb79q9DcBkcU7H+SQcOQTJ
 ILrjKBe7xVxt2MdAjkPnAnz+gqJsl1YFqpvDM4jgjEubYfTCAn5ypGepV
 2dfuxhlHdgz4fDqnIj81bfDAj+2moO2kDcGTrlaYWTKmbXLSeYphVcf8n
 gxX2eAQyGl/3sneeTdIqMJuY5QWWZ08ddtLL4YoJgQmLwYjCt5BeYzCIH w==;
X-CSE-ConnectionGUID: sI6/mdtjT4+Fkx+pQuQcdw==
X-CSE-MsgGUID: +CU85wLETPG7GUEvCXmKMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="41282928"
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; d="scan'208";a="41282928"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 22:35:13 -0800
X-CSE-ConnectionGUID: ClSAb81FQaedAhXgBKsL9w==
X-CSE-MsgGUID: siSMF2zhSvi6jdZixZP8yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; d="scan'208";a="105902669"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 22:35:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 22:35:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 22:35:04 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 22:35:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=adleLO8BoioNIG9wkmjrgZmax3ToL4+bXu+kpRTIbrCqe3MxuDfV5K0Fw/+pIttvNINAUApqxD3cdNKVvjxfMewwSNflxnT+pr/oe0qCkPxcFxgVIguCfGEIdxcWsX/KNghyJz828LVDMSDviM0lIb/vH9cI30TvDoVwfRotHzNHrGIRKjfWOadMA+Qo9XD8YXzqTONSsdaiJt0WTvEa4r4W15rTFL/U/1dDRgbM2d2IpmtlQxnnDHLwemo7YG+q9m/rbOotPAN7k4tnfJwJCmuoz5uBUxktUXYqzp82WXKQAF1P/aDd9ov8zTstur/AS795y9I9ZpmXhlA6xEWddQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fc+OR7B5OZEt5z/w7NjVskkmKyCHQqxj/v0q79RQ7Nc=;
 b=XdH6bQqKxC2g8D74rlGUolAUipCRHTedZZM0KW4I8be8yqCS6j9RuXvpKAqGtxkNYQCCgQ+oRiUjnbS3FUt7uTUOPZIkDU57VHWLVOPrmE48hFqu4q7x07tA5x3ZvGPF4AQjd4g0cWKFrKG8/envMYs+Key2y430CHAroj0gFgvWELWFgEKOYbkka7L4l8qqiceO4yVU9kufERVppZnQ/ZA7oyjLkZQfGcL07Dob6GPQmiT4FF7W8va+qtcka7BH5m+O8qzHm2wD3nBEOpMcFtYP5SR+d7QAPDRulnwye9NquDs+zLu69q+mW3LqM8Sb324o374fCboppXES79z9sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM6PR11MB4532.namprd11.prod.outlook.com (2603:10b6:5:2aa::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 06:35:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.014; Fri, 17 Jan 2025
 06:35:01 +0000
Message-ID: <6ffe3c7c-a0b2-4886-a53a-109c12243c3b@intel.com>
Date: Fri, 17 Jan 2025 12:04:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 7/7] drm/i915/dsc: Check if vblank is sufficient for
 dsc prefill
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <ville.syrjala@intel.com>
References: <20250116163130.3816719-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250116163130.3816719-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250116163130.3816719-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0158.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM6PR11MB4532:EE_
X-MS-Office365-Filtering-Correlation-Id: 35c2f9e1-2e1c-4a04-3b00-08dd36c11225
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ODVYSytpZ0RHNFhId25SM3ltVW9SZ2FJVWZDZGlmTExpcGZuZlUzTFo4TWRt?=
 =?utf-8?B?a0FhMHMrblNGdndzcUxSQzhhaTJ5em8xM0lPeThhdlhQU05CZmEvNDhlL0My?=
 =?utf-8?B?cXZnMjFsbkpGZVpIY1pmYUhpMVVGT1loTFhtUkhaR3pBQW9IaXRyOXJ3QVEw?=
 =?utf-8?B?NCtyMDVMLzIxM1hqNGZXZ2gvaVhsQVFMcDgzSllHRnMxR0pCNk1SSG5vSGJ4?=
 =?utf-8?B?clB6cHJrR0RJQXdJSTVMdEpwSk8yWG0xZ3ZaSGg4bi9TcHJRZDNLc1Q2aEJy?=
 =?utf-8?B?bkc5Y0JEMk9nVEc1RVJlWEJpSHpEbU8rdzVxVk82MmVjM3NFMHdxN3dwNWVH?=
 =?utf-8?B?a2F5azNQT1Nnbm9PV0FwQ3pLd2lMeU5ZTm9LUTZoMHROYUcra2NZQ3RZYlNC?=
 =?utf-8?B?a0ZZMzJLYWlWTEM1RlpsVHpIQUxpbFNHYk9PN3N5SUphRkZqeWI1L1B5bGEz?=
 =?utf-8?B?NHRNWVJXdUZNc0hOSDlacVpjR3RZMnhxV2VTa0NiT3BSSXEyc1JRSmhYYlJE?=
 =?utf-8?B?RWVLR1pnNm1ja1NnRHdFZEl2VG5vQWx4UnRRVHk2REJJcXg5c0JiU1MvM0hw?=
 =?utf-8?B?b0YwU204b1k3MHZzT01TVlk4MGxoSHlaV1BWRDlCNE50Zk5XaFlWSmJ3bjNC?=
 =?utf-8?B?SE9yajZ2SkJnbXluTVUzWnRmZ09DbEhZTEt5ZE9RWk92TkswOUNoYXZPUWJi?=
 =?utf-8?B?QzZBYTdnV3dQNnhDZk9DTEF1QWlrU3l1U2lFc0t4SURwWmxPdHNQNXRMNmFS?=
 =?utf-8?B?UkxjYnZVSkx6aEJEdU1ST0Y1RkUzdkVVYnJ6SUNoTDFGOTdGMWU2NjRvRXh2?=
 =?utf-8?B?aDZlQ1VJMU9kNjRnWTdFZ1ZEYjFKdllQd3p1MEo4dWo1OWJBMTBTRUNNWWhO?=
 =?utf-8?B?MHo4V2NYRko0YkRIR01wbGdwdzZ1QnpnZGpFSXpMTU16NEtBQUY1ZHYyTlIy?=
 =?utf-8?B?WlVub2owTFZCZmFzdmp1ZnRsOVFoaEZnRTQxVlZuUkoxUDFHbUY4YUo3b2dL?=
 =?utf-8?B?VEhWV1ZnMkRlVy9KaWNqdGMwQkFvVXhjNVo2ZVRQNjdIZHRrbjJac1V3cDJx?=
 =?utf-8?B?L0xmQ3g4SDNMZVVVT0RydmcrRFFQS3k1dENadkRBanZoSjdISmpFRnZJWlVH?=
 =?utf-8?B?Ukt6YTJKckkrdHdJUS9IbE5ScndIbytreXljU1RqSElBdmw3SERkeXBXbWx1?=
 =?utf-8?B?Z09GTURKb1FFa2NPVi9CQkdaOFExc3A1REZhMkgvanVWTElobmMwWjN5ZllG?=
 =?utf-8?B?U1QzcWptT25rL2Z2a1NKOW52Wk1IOU1Fc05uUzFYUmRYYk9vK095ekRwb2VX?=
 =?utf-8?B?clMxTExqZGVCV2U2YjRBTXpOL2lXdXFGeFZYZFZTUW1OdFQ0ZUxrMWoxUTlD?=
 =?utf-8?B?Nmpaem9ETE5obEJVbHZlaVZjZ0JLZWcvTDUwQVAxdjRWVVVzaDZNUkZVK2Mw?=
 =?utf-8?B?SElmUUJSSXNUYnR6Rk8rRDZxRVp3SUljWVNKcDBHSDl3TEVVamNCNjg5T2ha?=
 =?utf-8?B?MHZwd2hyRG9BOVNxaXIyUHdFR1p0R3o4YzJKaFU4c1BiRVRmZ0I2M3cyZVBC?=
 =?utf-8?B?YW1VMHVycTF3T1BnZDRUNG9ISnA5SXVZOTRRUWlHak5RS1Ixc3JXMFR4VHdM?=
 =?utf-8?B?Ym9IWURlRHA5b1BnSE1VWWU4VFU1ZXgvY3h0U2RRbFQza2pBMFJkekV2bWNp?=
 =?utf-8?B?bW8xdjBNTXBoWGcrYWNtSCtSWXhkMTQvaW9BOGRrZTUxaVdyUk85U1hkZmpj?=
 =?utf-8?B?ZFFERXp1OUYvbGplRmZ3NE5iRlZLUEE4Nmk5TG4rN2NET2svUGdNSjBGK1VN?=
 =?utf-8?B?cXJIRXhQTDNHaGZqMmswY1RlQkt5SXM1MWI1NTBxN0dXclBodUVIdDVHNDMv?=
 =?utf-8?Q?ukuHedTx51Lvi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWJiV3hDMVVrSEluU3RIcHZJUy91eHh1NENRZ3pObmtoZDAvTzhYSlVycnBI?=
 =?utf-8?B?THZnVGNKQVNXdnJzWjQ4R3NMZndaNUkvZ0V5cThwbTVlcStiZGxZRjB5RGZL?=
 =?utf-8?B?dFNYVzdSYUo3MXVDWjI3cEdUaEorSDZpWC8rZms2eittZU1yT0ZkUmpud0xu?=
 =?utf-8?B?UmxpZE50OWhqalJkUC8vbUU3YWtWV0lvYmFoQVJFZ2tISWJoOTNkb0NIWVp2?=
 =?utf-8?B?ZDhaNk5NWXpaZjNYaUtFaExHS3hvRExpdi9HWFFyN1EreFhOSEJ1U1FYMXZw?=
 =?utf-8?B?emREbE5VQnpiUzhpeGZkM0lJZGUzSHpBMHhIak0zNjZvcnBIaGtGcUE5U0t3?=
 =?utf-8?B?UWVScTlHQmdMUW1XcGMvUjY0VW10TzVtUWNzVVFkM3BIVzNhM2d0LzNsVmNU?=
 =?utf-8?B?NzdBZWY3b2pHMlN6RmhWUjNhaC9SWjBVcHhKL0RBTDdjclQ1WHFrVkE4cUIr?=
 =?utf-8?B?WTc1bFMwQXBtNlR4Q0F1Znk4WFJJSmRDb2lzWTZjRENqMksyWElkZlpvTHNx?=
 =?utf-8?B?b1NHcEVwN1htcS9nSHg3K0RYdEhzQkhSOENvK0RSM2tjV043bmppaFR0dHlY?=
 =?utf-8?B?ZTJETUJIOHhzb2R5dmkzbE1mUmtsNkQ1R01pYmJvR0hsWi8ybGxBYUNYUzhy?=
 =?utf-8?B?bjhER0NaTHI2MkVBSEs5bkdrb1JxZ0Q2aGlkcU1kYWlYNHNiYkVjSEpFcFhJ?=
 =?utf-8?B?SURCblA1MzZ0S2RtQzlCV0ZtVDJ5c0t1aVprVCtMYk5CaVhiQVhWUXNXWUx0?=
 =?utf-8?B?em5BZXN1RTREZ1hlZVR3Z2Jicm80M3daeUtvM0F6NFBSQzJ4UlRlemZQZVpo?=
 =?utf-8?B?MVhWK0xiVVdlbzFRZkVyVEI3QjlHTjBTQThTUGRhWCtzZTBJWUo4cGZXM0Q1?=
 =?utf-8?B?dmx4RWUrcGJoMERoZXZXVThUZXBwWS8vajlEc0g5SFhTaW96TllXRlpBZ3pY?=
 =?utf-8?B?RFJQaUQyNnZNaVIvRWl5ZDdlZFJLV1d6OUpWR21EZjBHUjlnaFRpVzdEaGxk?=
 =?utf-8?B?UjZSUjZCakd0aDdxSDJkWmpSMVh6c2toRHdOMEJHSHNkZ1RUZkFxS3N5Nkh6?=
 =?utf-8?B?TWxnaHhxVlJqTU1VTlg4RGtDTURSSVRMVXhUTmtJRyswYW51aktsaUYzNHdu?=
 =?utf-8?B?d0lnK1gzSE02aTBSZWlTc1UvN0UwTHk3SFlhcjBOYnM1TkxmbEgyUE9vU253?=
 =?utf-8?B?eVdJMlZBcC96UVJpWHU1d2NKSU5PUWlRZDYyK0JMSTlkajBDRmN1U0lTdEd0?=
 =?utf-8?B?enJLajJyNUl5dEowWXJRZVc2MXEvemQrOC9leGMvNmFJbUIybE1VbUs2N0tT?=
 =?utf-8?B?R2xkU1dWQjBWOEY5UG43cCtmSlRLTFNFV1JTYkJOekkrRDdPdnFDWmtVMHN3?=
 =?utf-8?B?ZVZZV1hEUnBsMjRCNEJaaTBDR1VUNzN1akY3cU5NS2hHQzJEbnhVWElRdTZx?=
 =?utf-8?B?ZHhGdmNac0xoMGw3RWQ3Q1lHMUhNdSs0dndlVWxXN3Z0UlpabGxvcFc2dWNS?=
 =?utf-8?B?anRSYVg3WXMwVytJdHFoSm1VU0hseXFoU3BYbHdSMDluL1liNFpZTVRJU0Zm?=
 =?utf-8?B?Yno0MndmNUVhTW1ZQi9mZUF1YVVBRlFEVnVJR3UrSWRlT0VRcXQ5SkFFWTll?=
 =?utf-8?B?Q2NKSkFiU2dFU3F1Ky85OFVzRnplODZ2MU5VanZwckJqOERZQjdDaWs4UUZR?=
 =?utf-8?B?eFpVWmw5MTBVNUtFSnN5V3FTenY0ZmRmRGN4TXNseGs1eE96YUFSQnRLcm9G?=
 =?utf-8?B?K0tYVlViLythbzFTZEJUZ0RDQnhWWlIyY2VTa3N6YithU21iOWg0dEVRZW9T?=
 =?utf-8?B?TmFvYjU1MzdvN1lLOCtTSUlCNE9JK2lGMGROR2hwYkxXc0wxdlpnemhsUGpq?=
 =?utf-8?B?L1hBaWVqVWowUG1ITmdOdk9nNHhmMUJtWEpPcmtFZHcyRG9Mak5RdHVJTUMy?=
 =?utf-8?B?Qi9uc0xjVlFYeWdjY1FHSUFScTRCVEhkb1FtZS9LN1BzOEVMalErZUJiQVBv?=
 =?utf-8?B?Y25naFdwYXdXeDZQV3o2elQxWUJqY0NhSDMxQ0IxZFM1SnFSKzNOSFg2cWF0?=
 =?utf-8?B?MHJtY0xaYmI5a3oxTlo3REtBOFB6WjFlTysxOG44WHNYcjVkS3lla0pWczJr?=
 =?utf-8?B?RmlncEZ3bmdLWTFIeVZjR3E0eHZ1Z2QwTGZUUGx0NGhEUVJqUVpjVVJIWEoy?=
 =?utf-8?B?bHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35c2f9e1-2e1c-4a04-3b00-08dd36c11225
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 06:35:01.8441 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zS1lYOA4i+pWdQ4UJxb0R39l1t3qhy75jBVeWBJXmuLaFW6zrSxLNh2fDeNujqvE8D+1k5IzW6O4hsCSTwYLtyOE5D/f5FXCwUhdpm3FD2w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4532
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


On 1/16/2025 10:01 PM, Mitul Golani wrote:
> High refresh rate panels which may have small line times
> and vblank sizes, Check if vblank size is sufficient for
> dsc prefill latency.
>
> --v2:
> - Consider chroma downscaling factor in latency calculation. [Ankit]
> - Replace with appropriate function name.
>
> --v3:
> - Remove FIXME tag.[Ankit]
> - Replace Ycbcr444 to Ycbcr420.[Ankit]
> - Correct precision. [Ankit]
> - Use some local valiables like linetime_factor and latency to
> adjust precision.
> - Declare latency to 0 initially to avoid returning any garbage values.
> - Account for second scaler downscaling factor as well. [Ankit]
>
> --v4:
> - Improvise hscale and vscale calculation. [Ankit]
> - Use appropriate name for number of scaler users. [Ankit]
> - Update commit message and rebase.
> - Add linetime and cdclk prefill adjustment calculation. [Ankit]
>
> --v5:
> - Update bspec link in trailer. [Ankit]
> - Correct hscale, vscale datatype. [Ankit]
> - Use intel_crtc_compute_min_cdclk. [Ankit]
>
> Bspec: 70151
Avoid blank line here.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/skl_watermark.c | 34 +++++++++++++++++++-
>   1 file changed, 33 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 792e59685578..22fc81a61977 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2292,6 +2292,38 @@ static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
>   	return 0;
>   }
>   
> +static int
> +dsc_prefill_latency(const struct intel_crtc_state *crtc_state)
> +{
> +	const struct intel_crtc_scaler_state *scaler_state =
> +						&crtc_state->scaler_state;
> +	int latency = 0;
> +	int num_scaler_users = hweight32(scaler_state->scaler_users);
> +	int chroma_downscaling_factor =
> +		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 2 : 1;
> +	u64 hscale_k[2] = {0, 0};
> +	u64 vscale_k[2] = {0, 0};
> +
> +	if (!crtc_state->dsc.compression_enable || !num_scaler_users)
> +		return latency;
> +
> +	for (int i = 0; i < num_scaler_users; i++) {
> +		hscale_k[i] =
> +			max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
> +		vscale_k[i] =
> +			max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
> +	}
> +
> +	latency  = DIV_ROUND_UP_ULL(hscale_k[0] * vscale_k[0], 1000000);
> +
> +	if (num_scaler_users > 1)
> +		latency *= DIV_ROUND_UP_ULL(hscale_k[1] * vscale_k[1], 1000000);
> +
> +	latency *= DIV_ROUND_UP(15 * crtc_state->linetime, 10) * chroma_downscaling_factor;
> +
> +	return latency * intel_crtc_compute_min_cdclk(crtc_state);

As mentioned in previous patch revert to older version.

Other than that patch looks good to me.

Regards,

Ankit

> +}
> +
>   static int
>   scaler_prefill_latency(const struct intel_crtc_state *crtc_state)
>   {
> @@ -2331,10 +2363,10 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
>   
> -	/* FIXME missing scaler and DSC pre-fill time */
>   	return crtc_state->framestart_delay +
>   		intel_usecs_to_scanlines(adjusted_mode, latency) +
>   		scaler_prefill_latency(crtc_state) +
> +		dsc_prefill_latency(crtc_state) +
>   		wm0_lines >
>   		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
>   }
