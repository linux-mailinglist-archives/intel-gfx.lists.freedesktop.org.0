Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 346EC9B3119
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 13:55:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3706510E4A5;
	Mon, 28 Oct 2024 12:54:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DOb7ss0w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E1410E49C;
 Mon, 28 Oct 2024 12:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730120095; x=1761656095;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xRjlB2nAWMCbZzzUYYs35fNdNN7JIffvUjfYAMTL9iM=;
 b=DOb7ss0wdk4bh1+EngHV/LmvxgmY0nYmsRM6kaKYMD4FXJ+rRE7+0Ykf
 /SG5XInurHq2ehjbP3EtYXWxPcyvT+jfeT30avFtsUU1qNhpUaZq0Ckyq
 MUKVrKiqTw019B8dVEcKQDRQ6oe1LIWUSu+r2AHntmBtMKsxIGPSRrBzv
 fsaVXcKeK4sX3aKkUOjDzb8set/OzY1V8FmPN+bkWaoGJH3aKhTuinUbk
 E9hGvPuJQjZqVSCiEO7EtfEKWtM+QP8n1k8PGrBmCExmH8VWFWHL71YQF
 nxgqh4nNKt9FcRPynKAHM57qY5CyUnLnPIcQevTD80O9GHHGj6GAuE4nb Q==;
X-CSE-ConnectionGUID: fu4FKDSoRyOdD2QhLPXHiQ==
X-CSE-MsgGUID: XWobyynTS4qw3FYirQJG5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="29926265"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="29926265"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:54:55 -0700
X-CSE-ConnectionGUID: N4Hu/OatRsy96GFDAcp5Zw==
X-CSE-MsgGUID: 96nimrScRye9/Ytjb/RifA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="82038987"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 05:54:55 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 05:54:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 05:54:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 05:54:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HB2SfnaMbsjK/pvhbfT5BlprLbFNW1lbttuA6uByb98sMp5EjrH1G1wRpBYIbvJNWRwB88t2uw/Hgt3708ro+6dCY61M2P9dVlpbnQJhKpm9dhr8eDr8I0kDjN0HTs4G+8L6C//MHxrfYwC6bq2KKv6KPadW1ecL4wqR/gjRSGl87lx9oeDNkQeh8iTAcdcIqTOf3iCAfvErLyArDSAWwrYq2UwaLOgoQMjnT9BPaKYR2xfPuohKZemKvMF8B2r3LS0WQ8L+PpmiybTypOU2rxz2MhRDKrfFWjzAmNlMHys/diAApilTKWuQGUsJAwoGhqMw2KhEx1Yq7bH6TSKJ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/bbylXSB8nH94bGbP44hYltresbNP1dvPRiNgzFwwko=;
 b=Q3scXfwxyHfP0Lx7/xDCOPBO9ZwupDP7OPD/nmIsOv6pgoFf1QI7jXmCWlVBjs3rJdDOXN7DDeITTHiovgzeEz779sSWs2g5b4/og6+LL956XLzZYYocOwzAQLdjnHpJqmWC1FX1RW8Bhlx+w1OeypmUU24oZuMr5duE9Qm4bffNACQhZF1goh0hat1azANXhEXBKwsGmngW5o7UeLCunl6vnKqgINhmCYCiAuVlCUOBW4tKnb+zXzNG7TNalAsV6wwmSoduFQpPteco2b1HcfD9GhXCLw5uyhjpobhZ+lxIQBXeWj1+sCbuTNAPQrkYMJZF9WZVuMc8UO87CFOmOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4552.namprd11.prod.outlook.com (2603:10b6:208:263::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Mon, 28 Oct
 2024 12:54:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8093.023; Mon, 28 Oct 2024
 12:54:51 +0000
Message-ID: <a1f6f1fc-4bbc-4172-974f-b0eba2752a21@intel.com>
Date: Mon, 28 Oct 2024 18:24:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/i915/psr: Change psr size limits check
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <matthew.d.roper@intel.com>
References: <20241028074333.182041-1-suraj.kandpal@intel.com>
 <20241028074333.182041-3-suraj.kandpal@intel.com>
 <9bea7900-aa6a-4b2a-b82e-4e83bb7e728f@intel.com>
Content-Language: en-US
In-Reply-To: <9bea7900-aa6a-4b2a-b82e-4e83bb7e728f@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0020.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4552:EE_
X-MS-Office365-Filtering-Correlation-Id: d61578c9-ad7f-42ab-1da5-08dcf74fb623
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bSs4bGVHTXRaQjlyVnByRVZKR1VwZTA3VVpEd2hkaWszZWpBNUhiTFZjQXNN?=
 =?utf-8?B?cGpDTUQvVVdnaTU5MlV0QzNHaUl2MitHQjRlTFUzNmZFc1E2djZjUjdjOTdI?=
 =?utf-8?B?SlNoemUzbDFFOTlZc210Z3RTQm94VERJaEcyd3NmSHBZUjNYZUhsTFoxQWU2?=
 =?utf-8?B?a0NleTdMVWEzNFNCRnhLY3kwdm5xZG5lTUViL2dTSWxPNFh3ZTVBS1FJM2dy?=
 =?utf-8?B?cEk4bi9GVjZPWm1RbEtQNTdjd1owZ0EraGZPYXBHSGsvN1QrNTRIK0ZEdllM?=
 =?utf-8?B?eVBmeEpTRTJianhkVzFVMFpRZnlDV2FDeTU3MDFKcTBab0RZWHFvT3dQNnd3?=
 =?utf-8?B?b3pYL1l5NWxDQVJiUmZVMndXaUpFZDV1b0tSRHRRSGxpUms1ZWRFeGp4VnZI?=
 =?utf-8?B?V2pxQjdwWUo4TlRxUVpsNVcrcHUvVkh4VFVXZTNHa3dwV2hJVmpnVGZmcVh0?=
 =?utf-8?B?VlNuNlA3QkR1enJQREc5dGNLUDQzUUd2Y3YwV2pQV1pKRWZPU25oYlhKdURv?=
 =?utf-8?B?TCtGQmdSUGllN2d2ZmtzSWNXUWNEOEFjUnZnc1FCQWY2aXdqa0RwNzlXdGdk?=
 =?utf-8?B?cUVuaHhZeVFJYVEvRVcyKzVUSlpvN2EwNTFJUTdlejlocHRpUVVnSkFmS2Rt?=
 =?utf-8?B?U3p6Y0dhQ3kyUVdBdHU4MVF4RWhLOC9GSDlMWE5UbHVyZWF5UGt5L1dGUk1s?=
 =?utf-8?B?dGpuK0xkZFdpeXFTbEFBQ2RBRHJUMXRuQzArMXMvejZGYnVWQ3hLLy9wVzZU?=
 =?utf-8?B?UHZQNjhzZ2M4ZWcrVm9zTFljRy9Oc1NEN3lhMlkwc3J4dnB1RzBSeHA2bG5U?=
 =?utf-8?B?SlFyN29QZ1JmWjduM1ZRL2J1NkxLRDRSSXQ0SG1CMDJOYmFEVlhoc3psMTJ2?=
 =?utf-8?B?OGRpUnRiVjhQN0tWSGhLbllYSU5sQW5tbjIyVWdBdEk3WEdYT1lJVnFQZ2tD?=
 =?utf-8?B?V1NOSkRLeXgzK2RhYUFPa1VzcnQyU3FFTEhYODN4ckQ3VmhvMU1LS0hTek5K?=
 =?utf-8?B?b0FSQTJvM3FEV1RTNDFJRUV6TmY1QmJoOGE0RG9kaWNxQkthVW55NUJvQ2g3?=
 =?utf-8?B?ZjJNdTkzdmdudlMwVm9Qb1lvbEJ5NTYrM3pybWJGdGNnTnp0Ly9QTTNOTXNs?=
 =?utf-8?B?NnY0Z3pPbWRwM1ZPOSt0VEp2c3dQQ1kwOVJ4dXRKTTlyME5iMUwvak5DOXBT?=
 =?utf-8?B?cWhySUFwSnZzQWF5dEJsR3AwMVhSbk9TQ0laeVZqYWl5RkRGalJDK2NSWURR?=
 =?utf-8?B?WnJxSUVTQXZ0ZzBGYzI2QTU4cC9BL1J2NmdYWHpSY3VzOHhCOElJNy9UZmhZ?=
 =?utf-8?B?Ym9rb3krL0dZT085VkpVZWVqT0Z4c1Z3RlllRVhaL2tyM1FEMVFoQzIxaHpq?=
 =?utf-8?B?cWVMS1RSQ3FROGRPWmZ5b1R0TkhTZGM2dzhHOGdwa2poNk9kWTlja0JYeklL?=
 =?utf-8?B?TjNPVHY4dDFSVHZVNXZtTlE2RU9Xd05BTTEwbFF1V3hTTTE5MGRobkxVM3dK?=
 =?utf-8?B?Z2duMzV4MmZiMlkyMTlFbVBFQUt5aHkwekh6N1hwVi9kWXhROFIrU3JENmJF?=
 =?utf-8?B?OTNpaTAwd1NyRWsvVVlsOTZkMjl3THBESGJRNDlXQUhBb1lQcExGTG9ueG83?=
 =?utf-8?B?c1RoWWNqcGVvN0VyaU1weWg2QXBaSzhrQlhUMDRoQ3lZNllkd1RaNDROQmI5?=
 =?utf-8?B?U1VOR0h0VzZEWWhhSld5aFNYU0hpdnh3RU5QRU1oVStUeHZDbzBiQ2ZDUTZ6?=
 =?utf-8?Q?K++Wn7vXOV+XLxobiWoiFfp2u52zcYZHe0N8rrl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ck0xUjBQbGl2MEtacnUzYzc1bzRrbk5OTTB0aXlqdUJicHpOcTVEQm5xN2Uv?=
 =?utf-8?B?aVV6U2l5WjdiM1poZmpJYVFtdGZvWWZPZ0ppWThFSlU1V2FyYXpTd1JTdkRy?=
 =?utf-8?B?RGRwOFp2b0lBRWlBeWxnbUQ4cHM1cGdlK2JFZXUzYUNsSXZsNEFaNUdkb3J4?=
 =?utf-8?B?YjZuSzJPSmhtSTJ2dVJzQnhXN3lRbGVFV1Zua2JkVjBYMEhMYnI5QTJnREg4?=
 =?utf-8?B?bHJaYVZsUVBMQ0grZWx4cGgyaVYvN2ZFemxaeFBXQ0t0NlNJSlZ4Sko3enhz?=
 =?utf-8?B?USthRVZPdkZEY2o3eDlMZXVERTJvam5STCtudmtIRHN5bEhnNzFWeFpncUdT?=
 =?utf-8?B?WXZIdm53VXhKbjBrQWMzT01jUHZCK0k5Z2pHMGZHN0xiVjg5cGFDK3RTdzM4?=
 =?utf-8?B?UXRxSVBRdXBiSmpXNmRNNy9ZeXFwZmg0Y0p3SUswT1NjdmdyL2FSdy9rREg2?=
 =?utf-8?B?RWh6TU0wT3FZZjBwVk9RQXdCdXU5ZDNSMlRTck9XRS9oQjEwSmM5NUdXM2s4?=
 =?utf-8?B?TTNZTlZueWZqRnRWZFM5NUVLZGk3aEllODIrc3ExWHpObDZRd21WYUQ2YVhm?=
 =?utf-8?B?b2hsM29PM05IN29CTkFHekRuVElJZzhjNUhhSWlkd21KeFhRaUp2SWh3Tkpn?=
 =?utf-8?B?QmZZTUxBdHRaVDk4bUgyaGtIVTNrTSsxMW5pZFlxVmpjbWdMbVk2R2hCUkNF?=
 =?utf-8?B?QkN3N25YRGxDb2Y4WFN2OTFlZDMwMkU2Yy8vL3k5S0NvWnVaM0x3V25zeGxm?=
 =?utf-8?B?TjN2Nk8rZVU4eVVDMHRpMGpiTWMrVE5DMkozV0Z5WUN1NEpPaHZMc3lyOFBK?=
 =?utf-8?B?TmU2eXJQNU1Ib2kvWUdVOXlBOEsvMlZvQXJrUzRscVBSa3d1ZDczeDlMZlNY?=
 =?utf-8?B?NzUxNloxUGcrZ2l2UFIvR3dqdHZiU1JNb3Mxdk9XTGI0YTBpSVkrbHdHcTFw?=
 =?utf-8?B?d2VZVk1LZE0zQ0RLWS9ZQ2JLMzRTMTYrVE1KTDNra1l0UzAwV1UrWitHZjc4?=
 =?utf-8?B?NWtHdUFjbXJ2Wm1hZDFVTmlDRlpKVDFHNEtZMWJSU29waURiOUtqN1lmOFlU?=
 =?utf-8?B?dzF5czJZWHhmdHM1TUVYekw1cWZyeTkvTHBFNUNiOEtiN1lLeVRiTWo0R0F6?=
 =?utf-8?B?MHkwZC9FaDUwU1pMeW5rMTR4ZFpQU2RvQ2I0VElsS2xUQythYWpyN09sQVkr?=
 =?utf-8?B?MUxjTHN2K0JxWlpMSDJLc09FU0cxMnRuOHhURU40RGx5dmNPcm1ZckR1ZENx?=
 =?utf-8?B?NHVhcWRLWCsxeWtpQnA2WEtHMElVT0E2QXR3MStMRUtEUGdDenR0d0N3c2da?=
 =?utf-8?B?ZDZzb3F5TzFEdGZabTZSYlhKMDJCbVRzcUFOUklmLzFSQkgrRlBJZVo4UXNK?=
 =?utf-8?B?SjUzSnJISlB2VHc5cEFBTnV6TUpsKzJqV0E3dmNVRUhmTG1YcE5qZzBwcjJO?=
 =?utf-8?B?NUdnYW0ySTc5Qmo3ZlZZRW5uT05Xb25YM0lVV0lReHVRNVRJU0I3ZUl1ai9L?=
 =?utf-8?B?WVZxa3pSYmxORkhFbzZXSmM2Sm0vUTV4dFZMekkybXRUZXdJY1JNaVRhSmZR?=
 =?utf-8?B?Yk5FNURRazNGaGRRd3hoQzluVlh1amljM2lUMUVLNndIV2ZKNWRuRjBIRTM5?=
 =?utf-8?B?SVNuMTRyaHBCbk02UDNiZGlyMC9qOHdnVnVGMnlNclFEZXpJQ1BqSklSck5L?=
 =?utf-8?B?WmVQaDkrV2k4cUJhdythRDRhaGhjY2g4RGxGS1dGZm5jeVFRMEVGOEpOdmg1?=
 =?utf-8?B?azJCTE9lTk5JREk4Y01GQXQvTnhtanFkaFlJSVBaaEJVL3kvZ1ZGK0NlU0pU?=
 =?utf-8?B?aEFBdW1zZHo4ZVRYUk4rS0FiQSsyZFV3MWtPdS9qUFZjM1pQeGs0WFN6R3Rn?=
 =?utf-8?B?NnNPczgwcWhEcFZ6ZUVHTW05dFgyNG12VERTYi9INGdwbnZaNy9zb1hYVWMr?=
 =?utf-8?B?cTV3OG56NkcvS1RpTU4wQmtTUEZRc3pDYUJhT0pJaUJFcExXbGRoaGJKQXF4?=
 =?utf-8?B?VFZJVXJEKzJTdjJLc1pFSHRQMWFIOXgrTEJJR0dhOS8zNG81bTFmcDBqVkJt?=
 =?utf-8?B?QmoxUjBaQlg2dG80MW1Wblg3cCsrY0Y0bHF3RGNZNEI1MUwxbEQ2b0lqVVlL?=
 =?utf-8?B?NUpBNlV3Mm1SaktXTU5vYk5mQTFpNFdaNWkrSEt0ZjR4bDJDc1hRT1hjKzR5?=
 =?utf-8?B?SUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d61578c9-ad7f-42ab-1da5-08dcf74fb623
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 12:54:51.3438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q9oH9OQTBMdKgAxcWTzXHFTVphTV701IDDkfQ6nL11dP01c9VaIQZQXt0am3NL2lXlD7c+EKRcDQ/wg8qtlPclSDci1x7tgW52ap7yzuviQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4552
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


On 10/28/2024 6:14 PM, Nautiyal, Ankit K wrote:
>
> On 10/28/2024 1:13 PM, Suraj Kandpal wrote:
>> Change the check to only check for psr size limits till Pre-Xe2
>> since after that the psr size is equal to maximum pipe size anyways.
>>
>> --v2
>> -Check only size limit until pre-Xe2 [Matt]
>>
>> Bspec: 69885, 68858
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
> LGTM.
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c 
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 4176163ec19a..7bc64eae9c8e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -1453,11 +1453,11 @@ static bool intel_psr2_config_valid(struct 
>> intel_dp *intel_dp,
>>           return false;
>>       }
>>   -    if (DISPLAY_VER(display) >= 12) {

I think you missed to initialize psr_max_{h,v} and max_bpp with 
crtc_{h,v}display and crtc_state->pipe_bpp respectively.

Otherwise those are all 0's and will fail for Display ver > 14.


Regards,

Ankit

>> +    if (IS_DISPLAY_VER(display, 12, 14)) {
>>           psr_max_h = 5120;
>>           psr_max_v = 3200;
>>           max_bpp = 30;
>> -    } else if (DISPLAY_VER(display) >= 10) {
>> +    } else if (IS_DISPLAY_VER(display, 10, 11)) {
>>           psr_max_h = 4096;
>>           psr_max_v = 2304;
>>           max_bpp = 24;
