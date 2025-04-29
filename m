Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D34AA3AAB
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 23:57:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9434810E14C;
	Tue, 29 Apr 2025 21:57:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cgxdQJ+m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDF7810E14C
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Apr 2025 21:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745963863; x=1777499863;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dy0H79wxTQqL6F9uACSRcxfXGPY68XZ4yjAzBbKOBH0=;
 b=cgxdQJ+mEAgBAhi1m1lKnL7N97D8wvCEx+ZYH84kbucW0a49X/n2kp1i
 zADyLy4xB1d+GJBonh1TWF9bjncCDxizWlfAPeH8yFGTtESZdhk4X8P6x
 Hr5WG8IEArTOs+bD9YmatMF7WnxRfQXJPQ6lOc+OpUph8+y4RlrMZRam3
 ekOi2r+L97t1K8mL2yYb08U/lqqE0cIEtrlw26jxhZvSO/hLJbpLpMS9N
 wh8fVkpLJR+FkkoRbcMvEAtlhIqmJIUO4opqksVTi68R2xONJPnqqNxU0
 DHxc3nz1skoQclwTzS+u2SFWRQvKSYSQMBY3z7eTfJ9MhNxe9kwmNuaCM g==;
X-CSE-ConnectionGUID: BcV5EfcrTJyJdO1pDiTEag==
X-CSE-MsgGUID: ctT9ujpeSGObUjmf8EQGTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11418"; a="70111820"
X-IronPort-AV: E=Sophos;i="6.15,250,1739865600"; d="scan'208";a="70111820"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 14:57:41 -0700
X-CSE-ConnectionGUID: h1U4Rj9FQl2c9YhosxL9fA==
X-CSE-MsgGUID: eUnkHiqZTqq1jQnu/6ptwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,250,1739865600"; d="scan'208";a="133848790"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2025 14:57:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 29 Apr 2025 14:57:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 29 Apr 2025 14:57:39 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 29 Apr 2025 14:57:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BfFns9bgnHEcpFGwZjuTBLdcWe9Na7eHY9LM6Km+H7coItYbYtYjuLAnoI7qVu/D+xEVsHU1RGxoUfYu95j/DA2Ihh5SdwS2Kr6yFHVuqT7QIjRUsf6scN/vaodOg4DAuspMwaEZC3AYJrjyt64E8lO54UYkJz9vfjL77fPRJ1m18qL3OreyHDxxnLuJLlNmK/sK/m+Pcg4aAlQOsHBHMjBbI5yIVyo1DTzRtpr33k7359qjD3YeNNk+IU5EdyQaR9CaDRZO3Km05OWYbuJEyi0J+gH7H5fxu3f8QYQGKlYm2+8qgdmLwi2UFRRTOFw/yurfCtoUHOalRUfNqu6t5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JrOrOW6oSkBwnYkUqlFbM0tgLLRjeCTZcYyLUEczvvQ=;
 b=WC+GJ25IR6eLZpUMVFw98XDTFkSdV3IoEoyMWaGVf5rh6JYUm/q9WG3k1ScuoPaFqlyqHg2VhDfF7xaDpIvGH52REBUfyxgee7UvCs6iBYrYZi7OvS2s6BVdtbD6WIfD7krzl/6plen4BMjkluZTgld5LkTBQw8cvBNoLHiCu6X6tZ8T9ivHoBFL2ohtgTJOrZIhdPX1e2dcJWSwNR4y0C6mLiTp/N2slNiGVT5wAQtm5dKJzfWocOz5+Z9QaKaWGRM66cWR7iNebszIqITuj6Ok1rw47rtoVdpjYp4b57sGHe4dCZ1df+V7i0oq5IWOP/zYEQy45pynB3yfLvDEmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by PH7PR11MB7450.namprd11.prod.outlook.com (2603:10b6:510:27e::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.23; Tue, 29 Apr
 2025 21:57:35 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%6]) with mapi id 15.20.8699.012; Tue, 29 Apr 2025
 21:57:35 +0000
Message-ID: <ef558527-50f5-46f1-a4a1-0844efe89065@intel.com>
Date: Tue, 29 Apr 2025 14:57:35 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/guc: Enable DUAL_QUEUE_WA for newer platforms
To: Julia Filipchuk <julia.filipchuk@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20250429010230.49398-1-julia.filipchuk@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20250429010230.49398-1-julia.filipchuk@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0341.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::16) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|PH7PR11MB7450:EE_
X-MS-Office365-Filtering-Correlation-Id: 2572cbb0-8151-4f56-9356-08dd8768d9c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZWxYV1FYZzRKRjg5eHAzeDJpQmtGbE4zMHRHclVtTGxENTV1VkZuRjNteENi?=
 =?utf-8?B?SlI4V0t5NDlHb2dkcVkwMUtqWWFzWm9VVUd2Z2J4azhzem9hSmpmZWw1L2lj?=
 =?utf-8?B?MkhkNm1saDZsdS9pY1FlUGR4enh1Zk9RclhQYzFRUlVmS3YyR0d0LzV1M3Z6?=
 =?utf-8?B?TnNxeUE0MTkxSm5HaDdIN2l5VmUrRGVlSlZoU21HdW1kdUNBbkllQmZiWHhn?=
 =?utf-8?B?U3N2U3dmTkhsY3lZc1MwejBzWDhlODlDeVhQZmF5bGN5WC9IcVBMSHVkT0F2?=
 =?utf-8?B?NlFzQWZRdlBBaFh4MWROSE4yamx0VVJoc1VmQTFRMEZuZkRLbDNGdjNRUko5?=
 =?utf-8?B?WStybm03YkZ1TFUzZHFOaU9qcUhMNDVaSi9PcFAvdld5Y0R6aUZXb3FqOVc1?=
 =?utf-8?B?UytTY2VwNE5GNURvSkJTMVlrYVhpRWk5ZVdLNWY3QU9pVW9XTHFlQ3R6U2hn?=
 =?utf-8?B?Ty9UMWl3ejA3Rlk4Ymw2UTdnS3ozKzJoZ0FzdUdUYlV6MGovcGdzalQ0emp3?=
 =?utf-8?B?ZktTNGJqcysyZVV5V2dUd1pDNlRxS2FJa0QxNUNQdWJ1emN1b2doTUlENklk?=
 =?utf-8?B?MnVJVnIzRVd2VVlZdEEwN24rcmRiY0hZYkppaW1ZVVJpdXBhZG5tcEFLM3dj?=
 =?utf-8?B?YUE1WG1XL0pWcm0vcXlQSkVjVk44MGhFaXVka3lma1NleUMyby9XK2lzb0Q3?=
 =?utf-8?B?WGhWTlZ0cnlTVVp4OWd0TFl6RmRuRENDSVl2VFhYS01DbGtFODVaYW1FMDFL?=
 =?utf-8?B?bnlBNXpmdGJJdlozR2FGeUxQNkhjcnZmZFlQSWw1L1B4Z2lDOW9KZ1NVOVhz?=
 =?utf-8?B?ZWxQbm9wVGxINW91TTRGMUxFaVZ0WXMxeDZLS3BoTXE3Z3ROaEZsUUlGekpn?=
 =?utf-8?B?UWJVUjhleXh3V3pYQmlZcVpCNUVLeXpyWG9YVVpMMGhsdTVBRVJKZnlPZVUr?=
 =?utf-8?B?KzN4ajBOUUhGdUM1MnZzZDJ4QmFHWVhSdi8xS1dnL3Z5ZmsyVkt3Qlhwek1Z?=
 =?utf-8?B?UzZXdDByNTRTWW1BSjFjUXA2UE9RMm1sK21CSG1MbE1lTUFTYVlVNytPdjNB?=
 =?utf-8?B?S2dzS0F6WWdjc295QStqS3Frc3NYL05XRkhlVEI2Tzhyc0ZlZW1IZGFBVXpG?=
 =?utf-8?B?NVA4K0c2a0RyWlhmYkxlTHNnTGhTdmdNTjJlNjFMNVBCR2NrZHZpbHJTYUZk?=
 =?utf-8?B?dnRQTWg2aW1zaGd4bzlhQ0NUbkwwRjNlRUdUZTFVYVZUVmY0YlVjYU53MnNL?=
 =?utf-8?B?VWQvSm5xem0reGFYYVNBYjRWQi8yY0VVYXRJRmhKb1JZSDNybyswRlQ0TnlI?=
 =?utf-8?B?VUY4S0RYR2orbWk5aXlTc2dYWVI0NHpnUjVGR05VcVBzVktjYkxyaDVGSnhF?=
 =?utf-8?B?OU1sTmE5YmNqbDhtQUFNSU5EWlVPWGJaNUVodDU5NmZnTWxENkV2NGl0TkNv?=
 =?utf-8?B?a2F6c256ZUFpVTBjQTlidlhVN25LS3hwV1A4b2M1U0JTcTI2SDdsTnNDdlEx?=
 =?utf-8?B?bk9oVXd2RGYyNStvN1FvdzJiaTNTTE5Dd1hwZUhZZTJqeU4vMTZiNGp1UVdG?=
 =?utf-8?B?SWVuTVZiM1RLdnFScHNkRmQxMnhGbHZieGk5MmdJMUJFNGs3b3EwZ0E4V1Jo?=
 =?utf-8?B?OXJqalhFQnYzN0JnWUs3VU1vSDlVWEFZUi9HUFVQN3o4U2pkQld2ZW9tRW9I?=
 =?utf-8?B?OE5vQktwZlFMYlBVRGdQcDZYSEpncGhSQUtaUHpFZWxoN214NHN1YUc5TzYv?=
 =?utf-8?B?TUxKek1KM3VpUVdGbDFjZ3Fka20yQU9JVjNoSzdpd1MwVVFHOVorUTUwWW5P?=
 =?utf-8?B?NzdETk9qa3B4VExyUGJmVVR6WU83N0N0dGRXb2JTRlJhTnNoYmNLdlpkTzVu?=
 =?utf-8?B?bHVDb0U2U1JtUnZEL3hnMDRRNjZFMGF1b1Z5alJ1aHBtR2xrdG9zTE90VW1U?=
 =?utf-8?Q?XVEq5Vn9LAY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z09pYmN5ZXdjVW5hRDVnd2xORExYaHk4bFFPbnBEcUw0TVhZVklONnV6ZGZL?=
 =?utf-8?B?NzlLaG1URWxzSVBYNE0zOGphWkNNSDg2NGx1UFpod3JEMHNialliMFloWkFq?=
 =?utf-8?B?WHpuUXFOeG5hRFNiejFPSDZ6VFVCdm44YVY4V3ZzMzJZTUVQNHpMa3hJVnNw?=
 =?utf-8?B?KzMzNVlEdDNDdlVkOVlwOUxSZ01hK3dia0V0bDdmUGY1YXVTRVJ3OU1UWXRy?=
 =?utf-8?B?VWNoQ3ZUc3pDNTlFRW4rOHJsbERvRXFyaEVDeUc4cGtLamdlKy9sY0dtVHNU?=
 =?utf-8?B?VHgrKzIyOHZMeXdDcllNM0M1ZUVWVHNGdCt1SURCbDYvR2s4cTBwMWt2OGZ6?=
 =?utf-8?B?a3l5N0RrNFB3RGl1MlU5YXFTSk9aaEM1OHpHVDFvUk1Tc3o5ZEp0a1JjWFFQ?=
 =?utf-8?B?L3NhbDRtVWZQNkpZaXJqVFdBR2ovT1o2ZkdvUWx0ZXZFYmV5K2pVUWU1SDho?=
 =?utf-8?B?ekdEK1EyTFpXZi9uYXlwa0dXcysyZS9jRkdHaFZ2blZuSEhjWVJLekZFR1FX?=
 =?utf-8?B?SzloYStsb012WFZLYUdPc1UzVXUwbTVSUnpnT016dDBGNDZmWDh4c0o5eWd4?=
 =?utf-8?B?cnZmOW1tUHZhTlR5bW1PYVVmMWQ1TnRpYWxrN1BpeVNnOGN5NTdFbGlOVlZS?=
 =?utf-8?B?aUMybm5ybHExeGxlV2hrSEVLMW5LbzAwaVFkMTFIcHhOYU51SEJ5d2dFUzNO?=
 =?utf-8?B?dkJLZC9ybWY2WEZCR2VQeVlibGJBaWRBeUZHcEZRaUFiTjRIYThMOTY5WTVX?=
 =?utf-8?B?YUtHR3JGQnA0VndlbGo1aCsvVmNtUEoyeEpXd3A4NlFTdDl6VXkyN3ZxcEc5?=
 =?utf-8?B?a21DZ003TnZtUzNyM2tPb0FoeGpHL1grZm1IL1hBbEhiZnI4d2NHRUg5dDRL?=
 =?utf-8?B?ODVpRk5KZGd1N0RYSnVwMmVjUkNKL3QyTzdmWlZmbnN5S1J6WGIwVVFaTHNH?=
 =?utf-8?B?clg2ZFI0dnNTMW8yZHJZRHZka0tFQzZCbkd0SlBHWHdsQUxhYVltSENOYVFD?=
 =?utf-8?B?RmM3cWN6eGpGUUpoY1ZkSGV3QitxMnB3eFkyajk1Y04yaTNJSjI2R2c1M0F4?=
 =?utf-8?B?UnNUMll0ems1dWQxMVNtWHlrelBBN2xnbUwyaTlCcGFlNDZwNGdSd2FlYmpN?=
 =?utf-8?B?akVCZUtoRFNUeEVQQ1VCa1QvaVBZdXlZbWo2blhocU9WdlRMai81MVRKVWtV?=
 =?utf-8?B?ZXRkMTBXVEFCV3dQR2o1L0pQY2xEaGw3c29iVUNxd0k2MzgyMC9uSEdBeEZ1?=
 =?utf-8?B?Y3hiMDQ4OW1FKy9Ic2lNZ0xaaUJJMmlQVThwVlZ6cnJXS3V1WS9hdDNMZzZI?=
 =?utf-8?B?VFZydTRPQnMvT2pmeThoaG02WGN0anVTTDBBeDZ6M2xNNEY5M3dIc2dtVlJh?=
 =?utf-8?B?SlorUVdsVGpRamlxbmVNUVZwbGZMMGwwVDJjVzFrcGl6M3RtTVlMMmdxK0RF?=
 =?utf-8?B?SUUzVXJLVHhzRWIyclpmL3ZpUkZ6V3A0dmMwV2F0dWhJRnhtQ2luWW5CNHR2?=
 =?utf-8?B?MEEySVN5RGxTNi9sS0t1dWdzY01ScmhtbzBUNWYyZEZ3UzlqMTY2Rkh3UFVa?=
 =?utf-8?B?VEVEeFdXQ2VOQWxmd0NIWDZxZmIwK1hac0lZQ0ttRXpCVCtFQXoxSUJZdGtM?=
 =?utf-8?B?Rlpaejh3aXAzQ0ZJcytvejNNNHRrSnNjOVlLdVF4NnhNN1JpNXRiU0Z5bVcz?=
 =?utf-8?B?bDliT1hTRUdHVUZhb3prT2NoTTNWQXR5bFJpT0NpT05ueThoNUlTK0lHTzYy?=
 =?utf-8?B?UDgyL2JVWHI3by9sTFp2c2MvZmliSlRscXpoRjNFaVRMM0dlbnJqK1AxL2Mv?=
 =?utf-8?B?a1dZTFhZV2lWOW9ZRXF0OTZnbUF2K3dMT203K2ZtNVRHTzV2TDgwdit3dlpk?=
 =?utf-8?B?aWdqRTNEdkZoZVBJWUtoTThSM2lCMGFQbklHWmdPTUFBSHlZbjZJUlByZmd3?=
 =?utf-8?B?TXJHU3NXNTZlYzlMcUUzc2lrZkpId1N5N3F1VmJVa2tYYkpwenlqK3Rsa1V3?=
 =?utf-8?B?UU1xVjVFV3JtZHY1SzRrVlF4bGU3d00xTnYweHBIQmxyWkcvNFR5akYvQTI1?=
 =?utf-8?B?bU1pYWFLd25peStDb3dsUlFqUHNZRE5xWmo3OFhiODdZTkRNc05QSVNxVGRT?=
 =?utf-8?B?MnN4T3MwcTZCSlVEMjg1Tko5MlNqdk5aNGtwYkxKVm5ncVhCbW9sMzFsOFIw?=
 =?utf-8?Q?DiqU7hxvqPdSDDLAsqZXBwM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2572cbb0-8151-4f56-9356-08dd8768d9c1
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2025 21:57:35.7526 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qGTDIibD8vrQsWTNYt+tT6xuC7G4AXM6bOJAQApQd4FJr5kXnT16jrD8n9aY5d/Zl6Vzp0SmsYrUv0svacbRz9U8jrdMGtUq7Nl5AoAN7sQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7450
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



On 4/28/2025 6:02 PM, Julia Filipchuk wrote:
> For newer platforms (post DG2) hardware intentionally stalls on
> submisstion of concurrent RCS and CCS of different address spaces. With

typo submisstion

> this workaround GuC will never schedule such conlicting contexts;
> preventing detection of a stall as a hang.
>
> GuC specs recommend to enable this for all platforms starting from MTL
> supporting CCS.
>
> v2: Use existing macros for version check. (Jani)
>
> Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 9df80c325fc1..a4019d3e71a8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -313,8 +313,12 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>   	 *
>   	 * The same WA bit is used for both and 22011391025 is applicable to
>   	 * all DG2.
> +	 *
> +	 * Platforms post DG2 prevent behavior in hardware. This is implicitly
> +	 * enabled to give guc management over CCS scheduling.

Saying "implicitly enabled" here is a bit confusing, since we're doing 
an explicit enabling of the flag. Also, GuC already has management over 
CCS scheduling, we just want to change the way it does the scheduling. 
Maybe just say something like:
"Platforms post DG2 fix this issue in hardware by stalling submissions; 
to have the GuC avoid such stalls, we enable this flag on those 
platforms as well."

>   	 */
> -	if (IS_DG2(gt->i915))
> +	if (IS_DG2(gt->i915) ||
> +	    (CCS_MASK(gt) && GRAPHICS_VER_FULL((gt)->i915) >= IP_VER(12, 70)))

Unneeded parentheses around the gt variable

>   		flags |= GUC_WA_DUAL_QUEUE;
>   
>   	/* Wa_22011802037: graphics version 11/12 */
> @@ -322,8 +326,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>   		flags |= GUC_WA_PRE_PARSER;
>   
>   	/*
> -	 * Wa_22012727170
> -	 * Wa_22012727685
> +	 * Wa_22012727170 Wa_22012727685

unneeded change.

Daniele

>   	 */
>   	if (IS_DG2_G11(gt->i915))
>   		flags |= GUC_WA_CONTEXT_ISOLATION;

