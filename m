Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC0CAE38EB
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 10:49:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EC7E10E03C;
	Mon, 23 Jun 2025 08:49:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FVdHYXxM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3442A10E1B3;
 Mon, 23 Jun 2025 08:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750668576; x=1782204576;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QbB880VXua2d1gsb4ns1cQsXv4vnBnGGr3NqF4UtraQ=;
 b=FVdHYXxMM402Gyo0/622P2ot5kYV0lRbsS70L4nG0CyNszOVRdwvuXYX
 Sx30mKospr14hjQ4JSRzvlRQv6kSFoZR3r6HvdRjJdVuV8IImpowt6A5+
 7Yh7tSt5fvkQLPLc2Rjtndq4A9ei9ds5cY+abzNP5ovAYBIqO0Rj6P6Z+
 BoOeKWTEp0vOaGWM1T9DWCO+BlnxDDTISmxMpCy+zNDiuWMGBMMsGWEgD
 vA6BigCluDI4jnP43mIZM2NQ6wuHfPGZ3ir7VzJMZZk3YE12ZYlZtBKXc
 Jnh9Gon3VRiFjzvny6XQmiI4GzMnc3864MGsdxGTZS2KXobKXfNvZy+cf A==;
X-CSE-ConnectionGUID: z6nhAZLCRn+2Gqov4PNlJQ==
X-CSE-MsgGUID: KIJZh9+mQ/mVSyEl2wMHSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11472"; a="40473016"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="40473016"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 01:49:32 -0700
X-CSE-ConnectionGUID: INJ4ivEFQzqKxjkoEWoGdw==
X-CSE-MsgGUID: qQjLzJ7SQ/2do9VKH7UmRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="175146585"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 01:49:33 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 01:49:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 23 Jun 2025 01:49:31 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.63)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 23 Jun 2025 01:49:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LKn1F0q8EX3/lid6jhlI2BkngTjEd+FfG/XYzVu8tltfwPD1gwi5ZbV/gmlrrUSkAW+1hh/FKOYelypqPMOcmu4LAbFVjIlEbNh+BfSBvSBIOULSpZmTTksLHJLKvmQXEguBtUjqo0i6KO4wd2t5/174ZoABSZ7P1PgZiHA02JZb1Nc8oaV+vTQ8SDfEeaIx63aEbbiFvt1nKAvyrgx0lcB5jTmvj7NavKT7G9FRjdrlR2AMF9Q28TIztdDjx5veMgdRoohf6c9cVSl1ltvRAe46HnDvjNxFL7MdWqK564gjqba/BtlnDGKWg9LcfqqhzyL566EKoy53qgPHR2d4zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hGP7uRdgjdTWqTt7ELX2CS/6fzppKafGehnmIawpSJc=;
 b=DVY+8U0aNg/hhmgSiqyfMV0eIoeZZYd4b7LApcOyBjVloKtElbK3k9g2J/XD5T0oDSDHKSbTv8tI3iCNPjtIi4xXv0YoCqPddcEDYxHTrBN7Gnlz+4tT+369+p+i5vYxVdjBsP4WYogfDWkd/EoAfg63X3iJ1xjHtLh4o5quuEN0v32B0LihgcUlwevhCPE1HJLw009eLNbCNwWYF67VabfTD7pyE0E4Xdz7izRX4Re14BmOtuynX3pNcwtjfngEe+SEZIYGh5ZWU1x3UJtYHYeZkhPMfdWwnTGgxF3EMnGs3DTVg10odQoo/UCLjO7opg9m20iVn2t4muKY0Rw6Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5690.namprd11.prod.outlook.com (2603:10b6:610:ed::9)
 by DM3PPFB266726CF.namprd11.prod.outlook.com (2603:10b6:f:fc00::f46) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.26; Mon, 23 Jun
 2025 08:49:24 +0000
Received: from CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::6b98:f467:da49:e062]) by CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::6b98:f467:da49:e062%6]) with mapi id 15.20.8857.026; Mon, 23 Jun 2025
 08:49:18 +0000
Message-ID: <486d60ea-176c-4874-8e71-5e22a190fe79@intel.com>
Date: Mon, 23 Jun 2025 14:19:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Fix macro HAS_ULTRAJOINER
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jani.nikula@linux.intel.com>
References: <20250611053039.377695-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
From: Karthik B S <karthik.b.s@intel.com>
In-Reply-To: <20250611053039.377695-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0108.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::13) To CH0PR11MB5690.namprd11.prod.outlook.com
 (2603:10b6:610:ed::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5690:EE_|DM3PPFB266726CF:EE_
X-MS-Office365-Filtering-Correlation-Id: 0632a913-da39-43a0-8b5f-08ddb232d73b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S0ViNlkxV3pNWnhMcUFFL0J3NytHWkFGT2VyZnpsbjJleHFRbyszb2EwSytq?=
 =?utf-8?B?OE1HTUFaOU5SWnVsblh5allwK0lmaDhzcVZZQll3cndWOVlOVWFIMXZFbmFP?=
 =?utf-8?B?UU1oUUNpaU50QzlvMXN0cTdad1k4RGFjeEFMYndId3ZTcTlGL3VrcHE5Vkky?=
 =?utf-8?B?MytRMURUWkNCY3ZpSnFFdzVGL0taNWR2WmtDU0dFZitpdmZveDJnOFhFYXFU?=
 =?utf-8?B?dXh4STQwSDlmK0JzNUxacG1NUlIwZDArcnlWKzFTQVBtS2dNazMxNHo4WHJU?=
 =?utf-8?B?Tm9yL094T3EwbC96bnRjWjFCR0ZVZ0lWU09lU09HRUZrcjFoYWRJd0FvcWZn?=
 =?utf-8?B?dVM4NTM1d09ZWkFWTTBqTi8vdlBaZk4wOGdDNUpqZDBIa3lwdCtlOVFkc2sz?=
 =?utf-8?B?TCtWNnBXb2g0SmNKUkZRVmN0TCs5czFEYlFqYmJhSDE1WGZQZEllaVc4Nita?=
 =?utf-8?B?MS9BQXM1TVBsazF3dDF6MDUzVDB1bFI4a0t4K3FmaG0rVzAzY2ZzbGZlSkd1?=
 =?utf-8?B?dy9aN29BNUQrWlFab001bjBIVFdLbkh4ajY2dWlDWXpHZmlCTDVlVkZGaVZ6?=
 =?utf-8?B?U2FYNnNuNWFaQk1PYmdleWw3amdnREpZejg5Q25LUzNpajk5WWprTzBvOUN2?=
 =?utf-8?B?M1RqaFN2MStBMnBpY24ya09vK0tKdngvdFFuT3lWSHorVWJjRmNvVFZUNHEz?=
 =?utf-8?B?cUliSjhDODBHakRVdCswekZ0RUlIaElCbUFQY29NYi8zYnd3VnlxZWZrVjRs?=
 =?utf-8?B?T2FUU3hOUjNKQmhrakozNEc0d01ZYUMraXJuUEIxb1ROMnJZdGpnVDlmR0sr?=
 =?utf-8?B?bGJuQzN2OE03aE9kc3NINHp1ejczVGZFTWd0OC9yYlVBaHhMWGlIV1BBay92?=
 =?utf-8?B?OEcrY0s2c0lVdU1IclROVkJFZmFvejhOUkVsdjhwTlJvZzZidFVQVEZwRllF?=
 =?utf-8?B?b3ZhMi9rSUlFK0VGRVlncVNmY0FYL29OVFR4RmxETGdHcStYTjd6ZzhkbWR0?=
 =?utf-8?B?T0FhZEhHR08rZnpuMlM1OHN0SU5YcVhlYS80SU1IVERrOE5ML0FRR21ZNVZN?=
 =?utf-8?B?SmJlY3FpUlJtZ3lJbXR1M0VXcno3bWZyTnJBK0tRNmJ3Ykd4eTZyT1VBcWh0?=
 =?utf-8?B?ZXJpeFlHdUVQUEVtS0Z3eFplUWVDTTg4SXZyM0lQeE9PcWk4d0tYRy9BREty?=
 =?utf-8?B?V1hpVEtDU3FuTDFQaW1HZnUzYWllOGFpRTA1OEFOOTJybVF2OTg0TXF0d0R2?=
 =?utf-8?B?c1RyWXkyZDNyaVNOYzYvN0ZXRjBodE5xUHZMcVJDWHpTKzA1cG40T3hURWNm?=
 =?utf-8?B?YkljaHl6cTNpaFo1Y05RVVNkR1BiLzIyUkNSQWdBYU5YQlZRRXJrbno1ZVBh?=
 =?utf-8?B?RDZraVdxVEljM1J5ZDBJcFlkV2VMdGdCYXdteUV2bVF4QzV1Ym85NTNQWjhs?=
 =?utf-8?B?ODdRa0tGY3FRa3FDTlpXK0JLS3BRRW5ZWGxQbFVDWVd4ZE9zdlk5N3d0RjVj?=
 =?utf-8?B?eUE3NnlNZEtqUnpoZW5McFVKYk1TUllnVG45RUpkd2VCT24vL1U3TDNjQWxk?=
 =?utf-8?B?blBGQjh2a2pzUExGWE0zbWpJL3VsbkNVWFBSamtLVWZUMkIxWXBEODJsL3c3?=
 =?utf-8?B?RVhUM1Q1aEoveit4NXNseUNZMGRNNTZMQ3U3Q1ltVVVwdXprQmtEVHJSMUVk?=
 =?utf-8?B?YVE5dTV4YkxmUlE5aTVXMUpVa2w2VlRJWHQwZHQ3cHl6OGNSV0lSZ2FLbFJo?=
 =?utf-8?B?aVR3ZyswdC9mVGI5Y2E5QzhLeTJKM0ZWZFErK0JEN2JraFFRaXJmbG1jNkcy?=
 =?utf-8?B?N2hUOS9yaS9yN1d0RE02bHF5VjI5cjN5TzZ0cjdFandEYVVuWmdyeUdveDQr?=
 =?utf-8?B?b2VvNVp2TVJqa2pFY0VZR0hxZW5jamF0UXRoWHB4REgrZEE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5690.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MG42NU8zOEk1RnNkeG4zTVd2WVdMNld2Qm1JQ3pIek91SkN0WTdTY0YwQWYy?=
 =?utf-8?B?OFZ0QXlkNkk5WHFTVEtaYVQ3azZmVWxBUHNvN0Q2NDM3RTZvUjMrZUkzV29G?=
 =?utf-8?B?aUtndk9HSU9La1B2K0xYZkoxc0F5ZVJZZDVhRVZpZlJoWHkxNEZqM2ZPT0s1?=
 =?utf-8?B?dGJsR24za1ZDNXNQbUtZVVM0YVMyY3NoSUQxUTJvL2l3RnF1cXM3SFBVWVhy?=
 =?utf-8?B?OWJETEN4UGhIZHVXcXNNQ2NSNXBUeUNFZ3U3MnJmYzRuY3Q4SVhXYkcvRFJh?=
 =?utf-8?B?aVV1Nks2K3NCUW9CTmFyZnBaUmpKeWcycXlIU3NBUlRZMEJCRVdPTmtobis3?=
 =?utf-8?B?aDBkeThqd2dieEUzMGI2ckd2NHJ2TUxpNS9JamliZHdOWjQ4VE0ycnBKT0Jp?=
 =?utf-8?B?NzV0UGFvWHFvYy9QOTN1NGFhaW9RL3BiVk15YmVZLzNTWExPSXdDekE0dTdF?=
 =?utf-8?B?b1Z3OFpaT3VDUVBtUnRLKzJnT0h0bXVSOTVxMVdjM0lMTkNtdk1BeGNuOEUw?=
 =?utf-8?B?dDlxQ0x6d1J1dDQ3YWtmZ2pQeEptVTR0SDczS0hSNldibXJzcjNFUjhuNFk4?=
 =?utf-8?B?Z3ZOOENSSVhtL0FKaUtiMHFNTitzMFAwREErdFh3RkljRXVpaXZSaE5WSjg4?=
 =?utf-8?B?YUxKaS9OVVNFZzlyczh2ald5QVdDTDM0UlN1RkZacC84eTlSYjVGdmkzRno4?=
 =?utf-8?B?YXo0YWlNajRNUTNJbFpNVnd3eTREQzdXaW1FUmdKdkNCNWZqT2VORGE4L0tJ?=
 =?utf-8?B?bEJCZXFubEk4TGFMWXdFYjhVa1FVaUFTY2IvYk55bytDbk0yZzd0V0JKL1FP?=
 =?utf-8?B?K1UxV0wyS1lTVWJLNldWS0Q0RENTbDhXdERHMzRpUU9peWNEL2JiTmY3aGRR?=
 =?utf-8?B?NDQzYlJLNnZqL1dXK09VUDJBcHhSdWZjcXZEcm5vWFBteStpb3FKNGhOKzI2?=
 =?utf-8?B?QnBhQU1XU2RpNTZRd1FSTVI2S2VKZmtwYnN6bHl5Q2ZXb2hwNUYvaVJFRS9k?=
 =?utf-8?B?T2hEZHJFeEtPck1lYjhFYjhWTktUdENNY1JJZXpZaFdycHZUYVhBS3Z0MC9U?=
 =?utf-8?B?SmVaS3ZWVi9sRUxxeTlyWEZMWGQwQThUbmg5RHdYa3YvR01nd2oxMEZDUllx?=
 =?utf-8?B?ZFh2OWwyMnd5STNRWDdJMFBVQXhidFlJVVUwNS9nR2Q5QWpBbmtEQ21URkNp?=
 =?utf-8?B?aEZqRUJBOTVma2lhTkdrcnBmdm5sLzd1RGVody80YWRNSHdLbzh3Ui8vZ1JG?=
 =?utf-8?B?cnRwSDN0VVpOUEFvMlV0OVplblg2NnFDcU5BeHBMbURodHlHUEpCYjJkaU5I?=
 =?utf-8?B?V1BsMU5vQkpMQkl0Y0VxWWYrYU9iMnJ6a2F2aXlWam5ta1hXQ05zYjFsWHNs?=
 =?utf-8?B?RTFkNlJUMFQwa3dESjdKK2p5N2hlWUhvOXl0TzBqLzBaTm5GTk80MHQzd3lD?=
 =?utf-8?B?WThZK2ZmdzRSa2xVK2VxN0NMRDNpbEtkbDVSOXhGam1WbzY5M0F3UkJ0bGE1?=
 =?utf-8?B?aTNBbkcvaVlpY3FsekJQQUxuR1VsRVowdWNaSFpKb0hCRjh2NHZWOFUvdlJs?=
 =?utf-8?B?SHJtVE5MRmpwQzlES0gxU2RQWVNFcXl0bUZEbEx5YTVCYzJnUzg1MXpJZEV0?=
 =?utf-8?B?cW9JU3pDcTJQVXp4bXQwZVJ0RHFvaE5YY2crYkFTVEdPYWtZdlQ4Rk1MVTh2?=
 =?utf-8?B?Yk1mTlZ3R0liQjV3dUVYUTNqYVhMcEFSKytFQk5kbExxL29FSTV1LzBJQjdR?=
 =?utf-8?B?MFlEVHoxSG8xS3JCLy9LZ2J3WkM1SEltYXA4am1IdlNoSDhtY2Q0WTZKOFpE?=
 =?utf-8?B?b0l3dHhrbjBKT1ViOThZVFdvRU9qQWhpZnU5amhiLzlzOVlDMjFITmxqRmRw?=
 =?utf-8?B?QXE2YW8zUkVoY1E5UzY3a0k0dUZ2TUs4ZExEV1R0K2UvdDAyVURtVGtNbDM2?=
 =?utf-8?B?aFRQcWhpSlJpS01FbnFwSitsV3dNTXo3NGZsaFRuMTBqM043VFQ4bFI0UVE2?=
 =?utf-8?B?REtoSFQvSFRKbm5ZMk96Z1ZibFJDUlMxOVhmMk1GNmhKTVZPbSsramh2U2Ju?=
 =?utf-8?B?VjFGbFdjeFVTcjBCd283Y3ZuOHRrOXpvUmsveFUwSUFUa1QzRjVVbFZLbjV0?=
 =?utf-8?Q?M90DM3+WxW1ogFn9NVpQuPP49?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0632a913-da39-43a0-8b5f-08ddb232d73b
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2025 08:49:18.7017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0ykIvALhfalkA0dROYh4PpXCVjFRlZ+NLbiVHz/lyAyUu+CHbMwiON8G4gIgYbF6KeaeQzm/9cHfhVJMZy76qg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFB266726CF
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


On 6/11/2025 11:00 AM, Ankit Nautiyal wrote:
> Currently, Ultrajoiner is supported only on Xe2_HPD.
> Update the HAS_ULTRAJOINER macro to reflect the same.
>
> v2: Clarify the commit message to specify platform. (Jani)
>
> Bspec: 69556
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM.

Reviewed-by: Karthik B S <karthik.b.s@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_device.h | 5 ++---
>   1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 0ac5484c0043..4308822f0415 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -192,9 +192,8 @@ struct intel_display_platforms {
>   #define HAS_TRANSCODER(__display, trans)	((DISPLAY_RUNTIME_INFO(__display)->cpu_transcoder_mask & \
>   						  BIT(trans)) != 0)
>   #define HAS_UNCOMPRESSED_JOINER(__display)	(DISPLAY_VER(__display) >= 13)
> -#define HAS_ULTRAJOINER(__display)	((DISPLAY_VER(__display) >= 20 || \
> -					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
> -					 HAS_DSC(__display))
> +#define HAS_ULTRAJOINER(__display)	(((__display)->platform.dgfx && \
> +					  DISPLAY_VER(__display) == 14) && HAS_DSC(__display))
>   #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
>   #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
>   #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
