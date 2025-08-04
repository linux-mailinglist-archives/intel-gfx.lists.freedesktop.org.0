Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12248B19CE9
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 09:48:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9610910E407;
	Mon,  4 Aug 2025 07:48:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZiXK26Hd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADC2110E407;
 Mon,  4 Aug 2025 07:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754293720; x=1785829720;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YF2zMi8GMOwd/F+aBxLzh+unukSZV/lQs6Rl1xMxP/Y=;
 b=ZiXK26HdhwYVVyAVhRi/t+uDRbbnN9OA1O6rvB0rJxWiZ813MqUsw9uR
 /e8zcQAQhNAi1h/vBxrC8xwH/atd1Hsq7IH6+1Djj6x1C5mmEJJgUBr2r
 +3V2I/basTv7WaeKMqXeFAR8aQ1QCcDOAR7p0BfMDbtw6mm8wp3qfQcsJ
 /tHvd4gvJ1MchjEEZ4/4ds4uhZGhk/Z3ciuQNK0zttLXkqX4HAd5QckSM
 7Uhw0V92Ji7tN0QZhBMvetulHtP+dvU5vlxagR7P7Eo5vFa6uXdS4x8oD
 Lo6hr28orQsK2zNUOm4lTBl7E5k/Sb3aytORo6EELZfRrAvIptk14CIyn Q==;
X-CSE-ConnectionGUID: skcZVrFxQauVaj5/tqXTJw==
X-CSE-MsgGUID: G6B3VVUZSYKW4QwIgOjEDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11511"; a="56689690"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56689690"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 00:48:40 -0700
X-CSE-ConnectionGUID: aUdQwOyIRUK64zZO95FPkw==
X-CSE-MsgGUID: chjUgsbkRvCYUjlB+Reavg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="164480498"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 00:48:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 4 Aug 2025 00:48:39 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 4 Aug 2025 00:48:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.44)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 4 Aug 2025 00:48:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q6ROvEpRXJHGofusb4BlbuC8Qn3wKfBYnusDxFtOwo0BCvsJvqo+q4WEM+uzwki6tGy64FIu9+yN798umbMpwOoOu4XG8OHvsf5RL3P/vjTpN/vM5dOenHxXedBPMZ98j+UjC4Oj5wv6ONKeQ148MktyxQuJU/6Ykev0iUxmaF65uM5f51w63t11uv4a/1r7aE6TuaqiUVgjEXNnWtxR67gaAwGscwh3AK/Mqw0ASThX/ztKJFhWNc5nqFH6vGGyqAqu43IgwahCWvOaljp6fxoVqf3GV+9tH3tmRxALH5Pc/NsEzicfXVP/t2XL6vmqIFPKr1l1nnoKt1KHstQwpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BnHD+k2ctsQXAruke7b3oB1RLKejgemcBX8mNCGhjN0=;
 b=kNG9+i52jiP3ZtCp/oL1vEgc9otCwDp4iNZy4yk7weUoLtrvLDfrUYiL16I+p+9JKZZyCU7b7uFTjwcneV2yMJFySm+Lor59vPwb5jG+nKiDiC1iam4usEWJGsAIEBBMZgyPmFmCFBhSwqgyXkJlObyEtjC5678XGsne+wO+XJ4/90TqJsjo5zB1l8WLXlN6BfPCX1LDtUYCtuFkFcSLjrim6Uzqw+KXOvi1dnhrZLAdd/JMfCmUq+yGNgy8N1r76V5HVQMHh4LryhqKEAdkVguN1OomfmfKFW8j3PAZThE5CEPO7Y+jqU2w+pzDWkYdoRP2Cjp2JDR1r9BmxUf50w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5164.namprd11.prod.outlook.com (2603:10b6:806:f9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.16; Mon, 4 Aug
 2025 07:48:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Mon, 4 Aug 2025
 07:48:37 +0000
Message-ID: <32e8fb12-80dd-44fc-b729-788028756639@intel.com>
Date: Mon, 4 Aug 2025 13:18:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7] drm/i915/display: Use the recomended min_hblank values
To: Arun R Murthy <arun.r.murthy@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>
References: <20250730-min_hblank-v7-1-179360220ced@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250730-min_hblank-v7-1-179360220ced@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0180.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5164:EE_
X-MS-Office365-Filtering-Correlation-Id: 023b82f3-aaab-406e-889f-08ddd32b520e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXZwSGEzUUFOSTJkOU1ETGpJTG9saWFMWTE2MUl0ZUFTcE9tRC93eGZpRDIr?=
 =?utf-8?B?cW1pNXYxZ3ErVzJwYlFVQnFOUG1UaHFjMXlBU05TaERIaTZVWGtHTHdtZm9z?=
 =?utf-8?B?VXZjdW81Q1cvWnp0cHlEdEtucDR0WjNEeU96WGVwMUh3WDVZVVJacS9DYjIx?=
 =?utf-8?B?SlhCcnE4SWNHZGFNVE5EdVNVMVV6UE5WMGErMXEyWUVVNVZFOGJXb1Mvb25s?=
 =?utf-8?B?UHNQV2xKR3ZlN201QVFPdm1WQTI2d0ZDckpEWkRmZ1F3R1Z2SjhVeENUUDZt?=
 =?utf-8?B?a0dQTDhUUkViV0MyeE1lWmQ4eEZxaC91Y2tTOXF5bDhqRStsckJOWi9uelJR?=
 =?utf-8?B?U0NERzlIb2dzaXZkMHd3b0k1eHFwNHRTNjlVSHZ5S2FUYjNJcFdUVDBnaFAr?=
 =?utf-8?B?U1FYajhxYjdnNmcvRC9WMDh6TktCTTBBQkNUZ2NRbDV5N0JtaXFlRUFJcEtB?=
 =?utf-8?B?amhZanFFQmlhSzB2QmxkY3d2NUhVd0tub0NCYW14UTZFY08yTXRmaitydU9u?=
 =?utf-8?B?OUpSOXhIZnpXK1FKM2daSnRUZ2xjVnpIVTRRendmQW9sTUZvTmhlV1hRVFFn?=
 =?utf-8?B?WmhHM2pkSDM2RjJIVXk2UUEvdlhLZWJZeVAvREwrMHJEemhCcE1MUFJzRzB1?=
 =?utf-8?B?ZllYUTcyRkJxRUF6eFc4R0dUNG5DSCthU0pUZEg4VTRpSTlYMWZaTVJKSVI2?=
 =?utf-8?B?WitOelZsRUwycVZBUm9QZzhEOEQzcXk5d0loN1d0ZUJ4bkxpNXpYdUFBUE5m?=
 =?utf-8?B?aTlnWi93cEpHaTU5RkpyVmI0NU9ZMFNjaG91N1RudDZ0ZENQSWhBQjZrMEJK?=
 =?utf-8?B?RVV6N1hDSXdMZGVkS2RlL2M0cHNDZkwxZnZsMnBZc0djTGYva2V6ZzlNbTIw?=
 =?utf-8?B?UjJiNEdTQktWRWlEYXFubFZjemR4aGo3VEpVMGd4M2d6VHpyQUMySUppeHhq?=
 =?utf-8?B?VkNta0hRSGpxdkx5K243VEN4UW1nQzdxc3ZtajFkd3k1RFdsTFozR3d5QVFm?=
 =?utf-8?B?bWcwd3lzRnBKU1J0S3pKcHBJcVZYeXNtNzVBMHQwK2M1aVlvczBobVB1cldo?=
 =?utf-8?B?RWFLVWtXeG1MWXNSa05UdHJSY0RKd0E5a0ZYOXY1Y1lwZUNLQWRtMW5LamJy?=
 =?utf-8?B?c2djNnpGWDhZdDJhUGRqdlFFdTYwZnQ3YkdEeTEzN0JmZ29aUUZzTVV4Y1hH?=
 =?utf-8?B?aDhSdlBXVURldWU1TTY3cVRMcVA5bW1sREhCRXpOTm5SSFF2bHFlcHlYSWJB?=
 =?utf-8?B?WlhOYUhQR09KekdYdXhGaXpwUEI2d3VwK3Vtby9ySTluem9jUGpybXNkdEs0?=
 =?utf-8?B?MkRtcGUvdytwcFpwdUkzdmordkdEd1pORmpBOG9oM2JsOVovRVNlcTJpVGZn?=
 =?utf-8?B?SU1IMm5VNklkMGNqYm1IMFVLendJbjVwYmVFL08wOXA2SVlEUTRKNS9KTGN5?=
 =?utf-8?B?dDJhK2N0V3JLZnlDZ09xZjhoOHBWcXMrdkxCcU02ZVNmTFVUNHpWYTFMc3g3?=
 =?utf-8?B?MnBnc1g0N21JektLblZXbTBmSHoybHM0UmtaK3hiQWdLVVVGL3c5bDNaMHhV?=
 =?utf-8?B?ZURaNGFCVi93QzFBa3hITWRHSU16SFVjOXpraHBjTUpoVFQ1WHJSTXU2RjNX?=
 =?utf-8?B?VUEyNVhJQnc0K0VSdlc4NHRHbTV5RGJENm1JWE1iaXRJSVh2eStHaEFra1Zi?=
 =?utf-8?B?L2pqVkVJcWZIcVNuQzU2R0E1TkdUNGsydnNnTmh2T3lOZUFuWjllYXVycnQ1?=
 =?utf-8?B?K1hwRU1QVjJLaWpMTkY3STlRY2o1c2JXSGhDMUZaRDhsaUp5NjQzMDZGWERv?=
 =?utf-8?B?bTU3VlNDYm9teEhwOElOcmZCNTRCZDJieCsyZGl3cFRBRHJ3bktWSVFFV3U1?=
 =?utf-8?B?QW5SZW1JNDd2THMyL3hSU0Y1dExNcjA5WDRUZ0ZTeERaZkpmYXBIc1p4RWNS?=
 =?utf-8?Q?f/ofVTwkv7emS85ECZJCMUZUKcwmLnjQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nm0xa3NxTzJ1Sm9Wa3hZL3hLL3haVHB0MG0vMU04UTB6RkJoMjBpV24xSjd5?=
 =?utf-8?B?WUFLVk1YcG1ORk8reUM3SENMcWxwYlBseThrMFoxTUc0Wis5b2NvK0tYeGlM?=
 =?utf-8?B?Yk14bzdCbnRSMFJ6OXRYL0JMdFVzZDRIR2x0VnlBQTg2dVVFSHpCc2p2YVhP?=
 =?utf-8?B?bmM1TWdPN0VEUUdHQmxHTTlCOURDUnVuM0d1U2ZQa2tGaXo2ZXVpb3d2NUxB?=
 =?utf-8?B?NURZTGp2YUViT2xoemgraFFiakF6UHd3RXpla0p5bjJINEJyNmhiU3RwU2t2?=
 =?utf-8?B?SXB1c1J1Rk41UDkyRWJ4NkhhY1RqSHM5ZU5DNUpSZ1NJMWtPN0dGU2pQb3ND?=
 =?utf-8?B?YzMzZVpRY0RsdlZzZDYrTTB3WEd3K0hBa1FBQ1ppRWp3WWdTdVlqRjhCMWlR?=
 =?utf-8?B?d2NOWkthUUs0ak16ejBTY092UmRBMVo1aHp1UU9BSHQ4Zjh4QjdhcVBFMWJt?=
 =?utf-8?B?ci80TWJLQUlGVlhwTUplY2hGUzBxcHJEMWpIVDgxWWIzNDNsUWloQW9xU1h4?=
 =?utf-8?B?UUttanNFamJNMnlhQlVnQ0hPTDN4aVo3dm5vdDVpdFZqRUlTbi81amcwWEhv?=
 =?utf-8?B?c3dUOFhIOGd3aDEzT1FjT1ozMnp1ZS8zYmI3NHRFbEZLcE43a0hnOE15QWsr?=
 =?utf-8?B?azZDMTVqWlY5c0xWT0xQK1laeC85YTRicVlJR21qdlRXNWVCQU4rUE02R1BM?=
 =?utf-8?B?R2FjSElBWE9HdFArVkZXMGdKRW44TWhWMHVObmxlU1hBRHcyTllHSjZXQkhx?=
 =?utf-8?B?Tnh5Q3dUUE1HcUdoVnA5UHFOeXhkbm0rQUhidU1wNnF0SDJDaUVzZ0hjQ2gz?=
 =?utf-8?B?K1hjaWYvQUNJUTVlTXlrRS9ZcndHNXA1dGdhYTFpQTZ4TXl0Q0QvdlVQanhZ?=
 =?utf-8?B?YVNiQThYanZqRmlwRlBCM3hEc2JjOXZ1K0Z0SU9NaS9wbXdKelFGaUsza2xW?=
 =?utf-8?B?RWYwZE9mYkQ2OFpHRi85Z252eFRkYWt0bHgrZU5JdGQ4MXV6UngweEpaUDJj?=
 =?utf-8?B?L3djVkdqWkozd0VxRFh5N2RDRVNIVUwwcWk2MldnaGsrOVZ1M0s2TG1PcTMr?=
 =?utf-8?B?Wmc5ck4xam0xcHk1MnZsMjhoV2ZPbXNLa1Nqd2oxTnMrY3Q2YkNadDQyUnhM?=
 =?utf-8?B?Ymt2TDROcG1jRkt6T0pTZ3VZd0Q4UU0vWDFEWW9mQkFrY0pCMnZGeTluYmdI?=
 =?utf-8?B?QXZITEI4bnFTc24ySnJPV0NqcE5qVkNtZFFOQkEvS1VZVUZkV3NmNnhWWndH?=
 =?utf-8?B?UDlTMGNTajZHTFFnQUdTUGoyd0YyTkw4MU9RTUliTDcvT2V5TVM3M0E3SVY0?=
 =?utf-8?B?UENCc21DWDhyRmJIY2VsQVl5KzNMMFVoN1NVSlI4NXZWaUp1bWtaMk1KeDRE?=
 =?utf-8?B?STVJNkxTMnFhYTk1OEpEWXVhVDBuRTZIYmQvUlJrejVycy9pMUxqU0RWSDRQ?=
 =?utf-8?B?dnZDejlQOFpWSU5KcURHMUwzcjFVWEY3djh1QXFOalBKaytDdkFiaCtqVmFM?=
 =?utf-8?B?RUo0YkdVREtaZkJ1dHFzblpVS3NLUTVpOVVET0krZ3ZrelR6cko0NzFuU3RL?=
 =?utf-8?B?T2s4YVF1VlNlTk80SGpOY01WWTV5ZWN1WFFnMnBjc2pyTVl5L0E4eEJWbWZ5?=
 =?utf-8?B?dGY0RjczTjc5R2trZmtKbHJqOTJmK1RKR3dQQW5FMEpudUgyRWxqdGlzNDNk?=
 =?utf-8?B?MnhJZDVCREJMbjJRV1ZHMGhKS251b2hnajBpdW11UTZoWmlzMDJyeStNeXZG?=
 =?utf-8?B?WDZHenVYdlgwOWZIb1lqNXNhdDlVMUVlREp3Nkl3Y3dYNmMzUXNVQ0ZWY21C?=
 =?utf-8?B?Ry9sZXMwT2VadVdSNlNybmZRSk1OQ0JMM2ZtYWN1Tjc0TDNTQ3lBSXpVWVR4?=
 =?utf-8?B?ZE1Ma0N3cDdEeUovaUtDdm1Yb1BOT2dIdFlmZGlVWWZwNFl4eDVGN3NWYklj?=
 =?utf-8?B?VWZlSW9qK0d2SXp4WjRwUEF3QmVySEdrUWlzNmV6RDJYazNoZ3Jtdk9uY3Ew?=
 =?utf-8?B?cno5WVRnN1pNUVFybnNhVCtvVWFzYlcrTkRkOHBQMWtnVXpzWWRINjF6ZGxW?=
 =?utf-8?B?NUl2TlRyMGZxbEgrMWdGZWtlNWdyTHpZeGRXMXNzRURTWDd0eTF4RDNhYVln?=
 =?utf-8?B?VkR3THhzMEp1VFNwZnJUUmNjRTE0WklzZzYrSllvazdEOGhTQVVaRkpXY3pY?=
 =?utf-8?B?b0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 023b82f3-aaab-406e-889f-08ddd32b520e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Aug 2025 07:48:37.4998 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tbKdZolRAtbifAqUa2ktdbQA7rU4i9vr4Wj3uc0petWQgVQTFf366JOdUZW/fHJVIdka2ow0NV7hmsFLB3CvBfmR9TXrURpfmKx6fLT6Y+I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5164
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


On 7/30/2025 4:03 PM, Arun R Murthy wrote:
> Use recommended values as per wa_14021694213 to compare with the
> calculated value and choose minimum of them.
>
> v2: corrected checkpatch warning and retain the restriction for
> min_hblank (Jani)
> v3: use calculated value to compare with recomended value and choose
> minimum of them (Imre)
> v4: As driver supported min bpc is 8, omit the condition check for
> bpc6 with ycbcr420. Added a note for the same (Imre)
> v5: Add a warn for the unexpected case of 6bpc + uhbr + ycbcr420
> v6: Reworded the comments and check fo anything < compressed bpp 8(Imre)
>
> Bspec: 74379
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Reviewed-by: Imre Deak <imre.deak@intel.com>


Thanks for the patch and reviews.

Pushed to drm-intel-next with minor checkpatch fix.

Regards,

Ankit

> ---
> Changes in v7:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v6: https://lore.kernel.org/r/20250728-min_hblank-v6-1-8c8bae7db250@intel.com
>
> Changes in v6:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v5: https://lore.kernel.org/r/20250728-min_hblank-v5-1-54cb7ea5cd74@intel.com
>
> Changes in v5:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v4: https://lore.kernel.org/r/20250728-min_hblank-v4-1-b9d83bf03025@intel.com
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 20 +++++++++++++++++++-
>   1 file changed, 19 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 54d88f24b6893e1f8009f00dda87d8dae5dfc137..0d0d12413441bebec05139996c208116da3d776f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3182,7 +3182,25 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
>   	 */
>   	min_hblank = min_hblank - 2;
>   
> -	min_hblank = min(10, min_hblank);
> +	/*
> +	 * min_hblank formula is undergoing a change, to avoid underrun use the
> +	 * recomended value in spec to compare with the calculated one and use the
> +	 * minimum value
> +	 */
> +	if (intel_dp_is_uhbr(crtc_state)) {
> +		/*
> +		 * Note: Bspec requires a min_hblank of 2 for YCBCR420
> +		 * with compressed bpp 6, but the minimum compressed bpp
> +		 * supported by the driver is 8.
> +		 */
> +		drm_WARN_ON(display->drm, (crtc_state->dsc.compression_enable &&
> +			    crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
> +			    crtc_state->dsc.compressed_bpp_x16 < fxp_q4_from_int(8)));
> +		min_hblank = min(3, min_hblank);
> +	} else {
> +		min_hblank = min(10, min_hblank);
> +	}
> +
>   	crtc_state->min_hblank = min_hblank;
>   
>   	return 0;
>
> ---
> base-commit: eb0c2b25072b5c56e8c41d7099050bf53bebaa14
> change-id: 20250728-min_hblank-263ceb40508c
>
> Best regards,
