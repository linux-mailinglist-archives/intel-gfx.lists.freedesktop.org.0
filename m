Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A78DCCC403
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 15:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2847F10E9F3;
	Thu, 18 Dec 2025 14:22:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BdIdFwcQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB41C10E9F3;
 Thu, 18 Dec 2025 14:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766067750; x=1797603750;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dQsJSQUd16nc0g8fuNPDWN0U/cCM6KNwce4bn+KPr2s=;
 b=BdIdFwcQvWg0zZwuxK+nZudlc/U2s/Py8qSbWzdCGh2Q9CZJNepGcOa1
 EsT0XaM93ckjcdwTGfkAq5qc+jg9zqt44rpnYeYump3gQoTB/IZRagV88
 970OVUxTT8862RH0/1jbsRoKeHj7u3K98VI4I85TNziaAU6X121ZRV6bs
 rYZzL0dl2Wvk8J1RnY8hbRraBSI/IgaOzgUTeVou9+kYzZD37OPmTCtLr
 ydTapOSZplnoMoWkBpDCf7/WoE12kY4KoliYzd1MIil0ZhWy3vT7Tk5Pz
 cAb0zirzMpv0VEWTm3yKkmEeh8xz626pv7+zhRA2ip1P5SZPwxPEDW5Ac A==;
X-CSE-ConnectionGUID: x2rwz/IKRD6PG+HMOaNknw==
X-CSE-MsgGUID: kiyC8VhCSwqThV+JMkSjxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="55596820"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="55596820"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 06:22:30 -0800
X-CSE-ConnectionGUID: 3q1vA3UORZuSgj51KB6EsQ==
X-CSE-MsgGUID: c99uTUmbS2GySoWsPUva4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="203494429"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 06:22:30 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 06:22:29 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 18 Dec 2025 06:22:29 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.68) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 18 Dec 2025 06:22:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ieWOPfBjkuP1zARmQw2cSe607Kug6V26nervCdevqCY67zRRc3t7Kj8/FaTwa/VA7x+gpwdVVz6IbvnIUBh3azRP/FaAd2v4Obka9CQRsVgfDvdn8xoadLyJe2m4STVLzi0E6gtekBz/bEu4Ic/CQPqCPygdOdd9eqB0uVaY4+euuERQoyqPe5XrI/0LwOk1jobBfVq1Sn1zAgHLVLysZhbap0ZidcdYJjkSs/asOI3OMVaTqUB6vZ488sUHYjqucdVRfic4m3lBg45Mb2vhiVZSnBBsaOnFuTQzJgOtW9X5H+fny4uxrQ+oaFYxFP/kJNHv4ITDJBacfs4THaXiDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=//m+F/rDqVr3iGhsyxSuOq0rUprln8oxJfx1eSIevV4=;
 b=vghItyJKdNk/gH4E3PqD9IFYqZQOPfVcGP2EjBe9vAPJojI5NQw6XufuMZue+Bs9vUqIfh8Jgm80ycznKyAk10ONOAT1VPtBLBC7RMxoCuxdjGrS8WUazuerE0TIFHVrkVev/1JgGpb0ADQcAaf7rqcfVVm639nqIwYNXS9oR9u0f+PIs8P2s65hXPE8TNna6VJ3z4O2qWA5L8oEPUmPlAFWmcI+3DVvSYfNhSw2rWrOQvIH4eNuEHGPtEbyVD36ia9i7CMNFqFwR085sSRnhUPCITadmvbbPr11WjOeu0UXOu2gD1FtUxggAxbTBMBmBWzk/tZVa9DTC3uxYW5saA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 IA0PR11MB7283.namprd11.prod.outlook.com (2603:10b6:208:439::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Thu, 18 Dec
 2025 14:22:27 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f%5]) with mapi id 15.20.9434.001; Thu, 18 Dec 2025
 14:22:27 +0000
Message-ID: <c52a0666-d980-4462-bdf3-1e842fbf6c02@intel.com>
Date: Thu, 18 Dec 2025 19:52:18 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/colorop: do not include headers from headers
Content-Language: en-GB
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Suraj Kandpal <suraj.kandpal@intel.com>, Uma Shankar
 <uma.shankar@intel.com>
References: <20251218141807.409751-1-jani.nikula@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20251218141807.409751-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0012.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::22) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|IA0PR11MB7283:EE_
X-MS-Office365-Filtering-Correlation-Id: 831b95e1-4301-4965-485e-08de3e40de20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YmVZQXFjSVpmRU1VM2FXaDM4cDIyWlJCMG1CR25xSGxOa2RyY0hyM1ZKZTkr?=
 =?utf-8?B?cEh4Y2ZOclJTdENaRjdTdUVHbW5hc2hpbzIvL2dTd3NwdjRRU2hraGRUUThQ?=
 =?utf-8?B?T1NzREtDYm02d25uZlozZTBuSUxzRERvamcyUlIwdEpBZUxQTndSaHIyZmp6?=
 =?utf-8?B?c3dQaUt3ays2L3AzdG5kUGw5L1U5NzJhWmdqSGVqeE5taTZ2aWJpY01pcmd3?=
 =?utf-8?B?MmZvNnovamVDOHJKUU5yT2pKallPSEZid3E2SitHUVpkbkl5cGhIRXRBVjBD?=
 =?utf-8?B?bmI5eEhHcVErUGR6WVJIaVR0SkFRK1h3WVR5WHlDUWpsUDdmSUtDZ0czR2xM?=
 =?utf-8?B?NTdRRUcrdElZeWRTa1VqTDZJd0JMak1VdUNSMU5wWXhPbElzSHg5Rk1QTnlP?=
 =?utf-8?B?RXl3clM4OUVjQmdpeFZTejVLTmQveWtGaWtGTTVwQmNaNlk2c3ZpaG9YaXUy?=
 =?utf-8?B?UGlsZWVhQU5QVmFyRkZjTkFwSjNUNWplMFloL252NGZXbUNwNmVmK3RUMklT?=
 =?utf-8?B?YkZ4bURnSmd3eWY5ZlU2c21NQ1JjY1dGbkNXNG80RTNKbDZNL2R2UHkrR0JX?=
 =?utf-8?B?UGNHdWtmcnFEUzlPWlNJZUU2TjhUT0RyMjBuOHBzUWhMNW5SY3Z1ZGhSUFhL?=
 =?utf-8?B?ZEJCQ2RkM0VPY2RZcGtHMTRxZ3hSaW1zVUJCY3YvV3FBOGFDYzRqbEpUNG1U?=
 =?utf-8?B?VVMwdFU2Vmpvak50RHdzR0ZDcmJmcFRpN3dxUk1uelNnOStCRWZEa3M5czlC?=
 =?utf-8?B?VDU0WnAyNGpXL0VGR25mazBlc3MxSHBqb0VSalliWTdwN0kvejVoeGlPU0t1?=
 =?utf-8?B?UHBEV1BBd2xOUEJmN0Z1TldlNHQxczUyNERiT1lPTEY0bWE4ZmRiWUw5RUkv?=
 =?utf-8?B?YnBqTC83UUl1bmsrT05yd3NTeGc1QWs5ZHJnRGJxTjBvMWdxUFpWdEJtMk4r?=
 =?utf-8?B?Y2NhbFdUYmZyNFlXYmRUeVRkNDgwZitIRFo0U3NQS2VmdnhKVnYvUGhnUzI0?=
 =?utf-8?B?SG5yZFFZbW5HVzVZVWlsVHd5eVorWUJYV2hkcXkxaXRlbXZhcEliT2lVQjli?=
 =?utf-8?B?b0lHODdQZy9BeWlSMEJNZEpXNDVvSktLaDArRERpNXh4YnE5eHFOZFZVejdF?=
 =?utf-8?B?Q2oxK2VyRnFIZ29aQ1p6L1ZRUkd6M1c4RUFERU9BbDJzdG1ENlBuTjVNR3U3?=
 =?utf-8?B?VmxaVkIyZ09mNjBFMVk2Z1V1QktSUHZLMGRGQy9yYlJjTCtGNFU0QjdYRGNy?=
 =?utf-8?B?Nlg3cllXc3drU1NEZjBTOTRpYVM2VkdLN2dWNWNZT1JxNE9LZEVrZUNzTm5O?=
 =?utf-8?B?TDVxdGFBTEtWQWxocmlSajM5YnFvMFExY0lZcHVTaWhtL2FhVUxibDUxM1lU?=
 =?utf-8?B?S1RMMXFIb1pSSnNtMTlnMG5neTg3TTZhejNBZk5uRTlkSHdGb1UxcmRQMFJ5?=
 =?utf-8?B?SDZVSFZxK1Q3MmtaNzRQNGx6ZXBaS3R0MTRDWVRIYzhWOGdiMEJ0ZVRwWEE2?=
 =?utf-8?B?Y2dGNDFwbC9vRDlWNlAvSnBQU2hxZDRFSnUwK3MwYWNzRFllZzlzWDRpR1o2?=
 =?utf-8?B?MWtpNFJnWXIwUlVnN3lkNVVqZXdsdExTbGFtVjI2ODAxUWVSSHdwSHZYaFpV?=
 =?utf-8?B?RXJFd0Iwb2ZlQk40TzQzZDN3Mzg0QWgweFJrcHlGaHpZMWlaeWZJdlAyd21J?=
 =?utf-8?B?Q1BkZzdaZ2d1aStUM2FXbG5iUkRiQ0pVY0FnQzZ0ZFRaVnlwRDJxZGhwNWpz?=
 =?utf-8?B?dWMyWUxxdXVSZ3lhZnRGamV2SHpvVTRPaE5pUGF5clhhVjI5YVk1b0xpQmhR?=
 =?utf-8?B?TDV1NjZxVHpNUWdmNU1VMmdVWnpKd2pXQkt3QnJxbVVzOTluVTVtSlY2M01y?=
 =?utf-8?B?S2RETEdCSzR3QVBDV3JBWmF0SldBV3cvdUlCMEREN2lybm1Jc21wTzhzK3ZS?=
 =?utf-8?Q?glprO6KwG2YptCloGpDgg7ocV0vG33o3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXlBbzhBS1ZMYXZpcnBEeGprMFJwRUpTREZKWWZCZVk3TS9mYVpKYytVaEdL?=
 =?utf-8?B?bWY4TUtCem1YUXVzclcrRUpZLzRGK0V4UVAyeFNDbXpmaGYxN1pMaGg5enJo?=
 =?utf-8?B?RjNXbGNteHZ6WkRncE1hSGk5Tjl5M1Z0ZUc2TkJQcHNUMUpOZGc1Z0toeE54?=
 =?utf-8?B?anhBZUlWRjFZQ3QwTUNqazhQblFBdDgvNGJ1aFVWQzRFcmxlRDZSbjhEWXUx?=
 =?utf-8?B?eXhReHBVYWtSVk1ReXdyNHRIZ3ZUaU10K1F5M08wQ0lDb0ZNQVhPdjlCQWp4?=
 =?utf-8?B?Rk1qUkRUbzhqYW0zb0tUSWNHTFdiTjB2VytCejQrajBUazRYTG5kSkRYM1l3?=
 =?utf-8?B?WUo3QjIwejRTdnJ4Tkg1QTdhZkdYTEdVcUdGcFpzTHRKbjQ4Ukh1bTJBWHBj?=
 =?utf-8?B?OUFOc1BUSm9rZy84N0twSXNFZ3dscCtXV20za21DVml3UUFQTmU4VEJHMzNs?=
 =?utf-8?B?TU5lNHpOWkVBV0orQ0Z4bHFGUTdDdHZLZXRod3lLM1dJVDFrWGxtZUtPMzQz?=
 =?utf-8?B?MFJRSVRKU01pdXNiR1gxdkhmVVBtdDlVYjk3SENoa3VsSGhqdk1GQi9WeTRv?=
 =?utf-8?B?MWRRc0VpQlFvWWRoWHpvYXBFYnltWCswR2dRTEdqTlVid3B6NHkyU090SEJh?=
 =?utf-8?B?MkY3TFp4MDdBaEhLNUR5VDZ3QkpYRWVrMEZvTWtIVG5qa05JN3NpOWppb1Ny?=
 =?utf-8?B?cERXb05EYnJXWXlwQXpnbkhldHFZZTNKL0JydkF5MGFJcUJHTnY4b1ljdjRl?=
 =?utf-8?B?NFpuU25ISHNHZ3dhKzJFb2h4citpT0xZMmErZmN1R1ErZjNkT01oaE9wNlZi?=
 =?utf-8?B?elhaT0ZWUUdXaXJlR2d3blNYYzJMbkJiRU4yak9hR2NyQ1JOU2dYcERpUndN?=
 =?utf-8?B?ZHVXTVJna2s5SnAvYjVYdHorMTdncGdFMmVwY0ZjNUwvcGlOY25icG9POS9r?=
 =?utf-8?B?OGxCcGhYMVpuT1VPdVpvWDBRMjZ6T3dxajAzQmZhVGd5cGM0cjBVT0pFMHVr?=
 =?utf-8?B?OEMwRktzYXpNdVJUVXRvNFYrNDRJNVRhOG5FZHBuMXNwODBSMWYrNGs0RndR?=
 =?utf-8?B?Y3gxeU05M0lRSTlxU2RNLzY3VlRnNll2enBPRGRKYjN4NHIrRmZHMG9lNUtn?=
 =?utf-8?B?OGt3K1g1WTcrU2dEUlJJalhaMzdWaUJtUUUzbytIbDVmMklET1RVMlprR2hH?=
 =?utf-8?B?R0pJa3lmWVY2YTBrQUhqSFN0Vi9hVlRlYTJvTmZqaUM3Wm5wVmZNeFQrTG8x?=
 =?utf-8?B?NlhCSHdlZDFVVjdUd05sZmRFUzlaalFZWVp3N0huNGVLZlQxZ0wxVUxhcG5h?=
 =?utf-8?B?b0FGUlV4SnlhSDZxQXZoYTdqV2RuOTd2SVFsOTc1VUJpWXcvTmxVeVdpdGFh?=
 =?utf-8?B?YitwaGpUczlLVFB4aTk2V0dZS1hDdDNCNzk1OE91RkpqRlJCZHRXNkRBN1lZ?=
 =?utf-8?B?a2xxTGFkazhMVFdlODhTQ0gwUWFIYUpxU0dGZTNvbXpYNHRkQlFZS2Q5Rm5G?=
 =?utf-8?B?M3BrU3pSNk1tTGpka0Y4S0o0MThVeHJiZGlZVHVxMDByZlNHN1NMMGFDR3RG?=
 =?utf-8?B?YXBkbDY2NHFQaE5QK2VGc05OTDVJdkgybkpPUndld2hjMmwwWDE4dkFCQWhx?=
 =?utf-8?B?eHdxdWFtY1ZMOGg2RXhBQkVPQ0o0WlRVNDQ0Uk12WHRGMjZtRXNPYkNIcGp6?=
 =?utf-8?B?Mk84cnNrR21TMWtLOE8vMXFSb3FJSnZ1T0JuWitFZ2ozSnFkQmZVcmp4OThl?=
 =?utf-8?B?NEplcUxkOXR0QzZVU2hiaVkvT2llTEFVdUtjdi9Fb1kvOWtTYzkzcHJodnBW?=
 =?utf-8?B?ZWRjNjZXcUQ3dUZrQUJqNmFuN0RBbEUvQUk1TjB1SjZVSEFqTkk1ZFpuc0k5?=
 =?utf-8?B?QUxMV2Jxc3hKbVRINC8xTFFaNE85SEd0ZUJEbjBvcGhibkxqZEZvMlRHVS9L?=
 =?utf-8?B?aTJSaEVHT3dOTGR6ZjRhL3h2c0wyeDRrUi81RlhmMUt2SzFBcXA1ak1ISjhZ?=
 =?utf-8?B?dkJMWXhCZ1phbmNlZXBYZVZ6QmRzMGc5Yll5VC85cjgwdGJNa2J2dUZqYVBz?=
 =?utf-8?B?MWJFWllHOHY2UFgzTVdQcVRkUXBCMWhNbDVkblNGbE42aHJXY0FzZ2lZUzdN?=
 =?utf-8?B?ZlBDa3BIQTVEMzI2UFpFZ2Qzb2t4Q1dWaS9Da2Y3RzZjUVFhWVRYQVJib0Ro?=
 =?utf-8?Q?/Ev0o1dJNpCDamx1X/gOj6E=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 831b95e1-4301-4965-485e-08de3e40de20
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2025 14:22:26.4949 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8q84999b/J7ti8GIl6H8NEYgVJrt625MhLBywFUpXVMHam+Q2/Use/DTaVhKqR2P68xdg0ef8fzr0A/QzxbaqBGYFsrAaCs04X3gdkG0vRY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7283
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



On 12/18/2025 7:48 PM, Jani Nikula wrote:
> drm_colorop.h doesn't need the intel_display_types.h include for
> anything. Don't include headers from headers if it can be avoided.
> 

LGTM
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> Fixes: 3e9b06559aa1 ("drm/i915: Add intel_color_op")
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_colorop.c | 2 ++
>   drivers/gpu/drm/i915/display/intel_colorop.h | 4 +++-
>   2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_colorop.c b/drivers/gpu/drm/i915/display/intel_colorop.c
> index f2fc0d8780ce..1d84933f05aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_colorop.c
> +++ b/drivers/gpu/drm/i915/display/intel_colorop.c
> @@ -2,7 +2,9 @@
>   /*
>    * Copyright © 2025 Intel Corporation
>    */
> +
>   #include "intel_colorop.h"
> +#include "intel_display_types.h"
>   
>   struct intel_colorop *to_intel_colorop(struct drm_colorop *colorop)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_colorop.h b/drivers/gpu/drm/i915/display/intel_colorop.h
> index 21d58eb9f3d0..9276eee6e75a 100644
> --- a/drivers/gpu/drm/i915/display/intel_colorop.h
> +++ b/drivers/gpu/drm/i915/display/intel_colorop.h
> @@ -6,7 +6,9 @@
>   #ifndef __INTEL_COLOROP_H__
>   #define __INTEL_COLOROP_H__
>   
> -#include "intel_display_types.h"
> +enum intel_color_block;
> +struct drm_colorop;
> +struct intel_colorop;
>   
>   struct intel_colorop *to_intel_colorop(struct drm_colorop *colorop);
>   struct intel_colorop *intel_colorop_alloc(void);

