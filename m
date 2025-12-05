Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6337FCA8321
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Dec 2025 16:31:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C5FD891CC;
	Fri,  5 Dec 2025 15:31:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T2xFNUF+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A84D7891CC
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Dec 2025 15:31:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764948690; x=1796484690;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Pn0UWboTU3QCoYaRq14/Xo7TTF10/Q3IQZ1vXkhhWus=;
 b=T2xFNUF+E7jIoNiU4s5zlvviL4Mf+wyqTzwG2UiGqz7R2dvCGWD2tLtq
 lDN//JKahX3/hVxaCo1vxyc6rLvTRGu3EgEo4KN88IZHDHeioIQSkCanW
 DU5hnsb5f80FngyNQr/KUHuZ33jiSVV6MWae5sSOEIAGp34YZVPLURwPY
 tMr9tNOS3a2NaoGBvFBLc8NxC7kMT8Q1laMOd5mn4SbKi3f2fiG8waAmz
 amHnu5z2f6C9QYTBSYTy9bpgBXdhg9tStjYJZS2PMAGNjU82r5hfafjod
 yMJudro2QGbYp6zW+Ep/Oa9ho8TobgxnNE/Buc6wMwqb6vXhvpFmXu6nX w==;
X-CSE-ConnectionGUID: cpX0y6W4Tc2D1zB1CQ8dLg==
X-CSE-MsgGUID: AIsGOtT0RaGlN61RvDMfhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11633"; a="66708389"
X-IronPort-AV: E=Sophos;i="6.20,252,1758610800"; d="scan'208";a="66708389"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 07:31:29 -0800
X-CSE-ConnectionGUID: okX2vVaxSSqAohJ9eJnfLA==
X-CSE-MsgGUID: m51LCruvToK9BnHQqPgHMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,252,1758610800"; d="scan'208";a="200452676"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2025 07:31:30 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 07:31:28 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 5 Dec 2025 07:31:28 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.62)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 5 Dec 2025 07:31:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tAQQ3vy7H5K8HRNxY0RVN/6Fq/2M5ErCTWfrDNPxMJC8xcdi/ldnseE8aDO6l/jYetMn8aK8pnfliMK0z8EZu4cuAVJk8JZcJ7UcfUIrv5UjcMZ2cZ0DzbSPjD/8PyYdIYROXleo5rdIYYU0dTad+gSdXhlAViJzIQyGiFfRF+UElOJ10t+J4jpG3uyKm2C0nGZMAqet57iXsR6Eet4oZoorblXtd0lfEoox05wJN1PuXEzgzIbNom/lLQrhU9dbUJDohMAgcHWkGIWC7vppfDdYpPc1FjHqdgTxaW3voygMXI8Ca91XfuTEkhqlttTEb/LMJcF9gUVR3qrkuLi5Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LAlKaajSKG2XM5HF/yOUhuoFdj+sGgse1vZ/iHLNld8=;
 b=XqCi1ySN8r31C4daqszqAP5QzLZ93vBnzvxZHtJSzWx48M2UIJmm9QvLHaYXyHB/tYGgruxCNBX0i8f8s6q4uOzdg+B9ewTx4iHgQe4fAPDaw4OXM554xQeY8VNX9Gs57ty7eCidE2cXjekohfqiq+c91ceI8bbSmNxMWHUmHmLaNcwUP/xbG4jIlgfSYHiJLMCE38snlhvxpbFkQp0IIUM/i9vrEowjkBoOWjge0IvTx6/mVjs5p2YDj5yq7A4wjAKOOfZ+ELCmpTbmVCgnferlp3lKlX/z48pSa9lmyqA66W5fS8hC8DdUccgak8X3COxUMyiIaB6ZlFCP+ESu5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by IA3PR11MB9039.namprd11.prod.outlook.com (2603:10b6:208:570::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Fri, 5 Dec
 2025 15:31:26 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%4]) with mapi id 15.20.9388.003; Fri, 5 Dec 2025
 15:31:26 +0000
Date: Fri, 5 Dec 2025 16:31:16 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 1/3] drm: Warn and return before division by 0
Message-ID: <w5qrtfywlr7mxhu3tf5btj5q2qqfkwbeewkmilv6o6rxrbvmcz@7yvmrpksh3sl>
References: <20251204143827.111428-1-krzysztof.karas@intel.com>
 <20251204143827.111428-2-krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251204143827.111428-2-krzysztof.karas@intel.com>
X-ClientProxiedBy: WA2P291CA0015.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::28) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|IA3PR11MB9039:EE_
X-MS-Office365-Filtering-Correlation-Id: 17394662-74ea-4f67-f761-08de34135a98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NFpJSHRwaU9hVTNna21hd0ZoektlamR1YzIwVjdqVDNYYzV2c3kxaUJyYUNY?=
 =?utf-8?B?Z3IyOGFkVXJKZXRhWHVDNWZaSGc0U2hwL3JJaEI5c2UvU01hRXV1L01qZFdo?=
 =?utf-8?B?cTlpVk01Znp5aE0zWGhGSFBham9xWk8wRFV2ZkFXdkVvNDBwbE9CUUVIam5q?=
 =?utf-8?B?c0NXWVRLSGNyNGRHSUJ4NDVZN2l6dlllRTh0YUMwNXRQTlFaMnZuRHVyTlFU?=
 =?utf-8?B?MVpLYU01SW9FREZLUTc4UWUvOWZNYzllZXFGMWhFek9pVTByUXdreCtCeWJF?=
 =?utf-8?B?cFROTkRXcW54UzN1TC8vcHg2TkFGUEdXQVdpbHZVam5peHZMRFl1d2pOTUl3?=
 =?utf-8?B?cnE1b0pleUVyaWZKQ2JvazB3TEx5WitRZ0dJNllWT2JCcEdYWURoS21CcTZh?=
 =?utf-8?B?b1ZNL09qTk1WNFB6RmRhNjRYcEpZR3NiWVdQdUJqbGNOVzJDNDhrMXRTTlRB?=
 =?utf-8?B?VnRXZ1ZWWkt0T1d3cVRyQlBXc2txZStKUEtIWFllR2ROVUhJTEZkQTN1bXV2?=
 =?utf-8?B?MDlZQUdtTHR4Y1hKOSt3RGVjU3RJZUJHSHFPMW12N1JlMHdlQUFUL0dhSTNh?=
 =?utf-8?B?WGxmRDlqNW1aZXBuUkNkWTBERUt6dFlNdEhTc3ZJZjhaUXdzL1NBYWRoSHZv?=
 =?utf-8?B?d2p5emtYQ2FxUW0vSmVDTlRuRHZIY1p5UDZ5VStlczhFbmhDTy94U2xLSlNv?=
 =?utf-8?B?RHlUV0Q2Wnh1YlpUeXlqeG5UdzU0aGhEeEU2OUpDcEdXY3JpcVdONnhnRE50?=
 =?utf-8?B?NjVJUEdQSnFROXE5R2FyQkV2WDJ3Y09MZjdWdm1hRzh3ZkRDL0tlS3JOdmFN?=
 =?utf-8?B?b05VcnRrajdPUW9tQjVXWkoxYVJJYXNtVkJLM2xyN3Z1cjBYdGZsQXpWTTJT?=
 =?utf-8?B?RS9VVHl1RDd0K0xKbjE4YzROK3J4SGZBSUxFdXd5VUE4S0hyTjBMVmVlT21j?=
 =?utf-8?B?a01sR2p3b21IMWxjaUZGS1Q1aVhkRHBtUnh4THltR0p1RUQ5YUlSeHhBeG54?=
 =?utf-8?B?NXJsL2RnN0liRGtNbVBlS2JBU213bkg2bG5aUzkwWjJhcmtIaWJaTGR3aGdL?=
 =?utf-8?B?ODZZam8rU2E0a2kzcmRZanJ3My9PeWNOTkF2Z0N5c1Z4S0FhWGswZUFNOEIv?=
 =?utf-8?B?U245bEJzNXkyTEdKVVJ3RWE2bEdFVnpVdXJjUTBzU2tGZXZxS0VUMDNNL1NY?=
 =?utf-8?B?SVhINTlPQjQyQWtZU2xHM0szM2x5M2QxamNndXJTV3ZPVjhsRVlEWk5NY3k0?=
 =?utf-8?B?U3h4N1Z4dURsTkhxY3c4V2FLUHpkaHJHalNkSHNCQTlCeWRYQTJtOWdxK2Vu?=
 =?utf-8?B?RzU1eUZNTjNuanVrendWR3VTNWtMUmlFbmVhaU8zNllKUXdNNkUvZmsvRW1F?=
 =?utf-8?B?SStoZFdha2FBR0UvVTV0VklXbTZyd1drUjlaSGYySjZNLzlDVDhCVGtYazAz?=
 =?utf-8?B?STliUGFLUG1PRGswMVQ2S3poNGptRUV1eituSG90S242d0dYR0JZZ3pKWmxT?=
 =?utf-8?B?cXVFenBlUHRWS1R0bnk4YXp4d0VJN3J1MjV6TGFyL2pvVU1za2tSR3B2YU5X?=
 =?utf-8?B?Vi9RQnRHTWozb2QvR2xHWWVUVUxUMnE3MGNWRytSZGJ3aFdYUkhDRVdpOURN?=
 =?utf-8?B?Ly90MWxPWmpzVXh2ZktkZ1FRSy9WMlR2d1hsQzArT2h5Z09CaUZvZmd1cVVz?=
 =?utf-8?B?UUZ4YmdmYjFXa1RqN0NEbnRaWXFXTE4vamxIS1ZQOHJWZGFkblBRaDB6b1N4?=
 =?utf-8?B?clRkSDZtUVBEcWpWdmNzVFIzSjVMN3FnMmVkYXUwdEh6ajZMVWlPUkhmY0hQ?=
 =?utf-8?B?Sm5pUE1kMUkvYjRPOVBCaVVZcytLRlJYZ1c4YW9VK3d5bkc1TzRQUkhwUHdo?=
 =?utf-8?B?T1ZUS3Zod2ZJRWxGdDk4RXN6MXJMaFFxQnNIazZYMTVIMnFMeXpPTE1LMWl2?=
 =?utf-8?Q?vV2q6GtA35D4YOvHeZmhvX0fhci3Ts4S?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTgyQk5EYW9wRUdkWDN5c01FdnBRNGVaZCtzU1dPdVI0b09iUmpmQWtEWjl5?=
 =?utf-8?B?THhxaFh6RW91R0JjNzlJVmhUNVFDZERUemF0d0k2WWhCanQvMFNzRVl0cFRL?=
 =?utf-8?B?VWZyLzBJdWxFREZIQitmQ0RaSXBQY1R5QVpzS2xmU0ZhR2ZXVkxaOVlQd29C?=
 =?utf-8?B?eXNhZHhYLzIyZFZvZmd5UWNRMlZPSGRvMjhENHNoOGJ5VTNKQ0ZiMmpJazJY?=
 =?utf-8?B?YVd4Q050ZzZucTBVWFVNWmMyUkl6Z0VOWE50S1ZaUWhBTlVoVGxzd1NIcVFx?=
 =?utf-8?B?RmZxeUZQQWg1eGJiZE4xQjhSSyttYVRnZ1orMU5ZQXNMZ1FTSXNLdnVFWGpU?=
 =?utf-8?B?NVU2WGpDVng5UGlVdndBdjFxSmdhbTFZOW8zdE9zR01UWFQxdnUyU0pUaXdY?=
 =?utf-8?B?U0NDa2NiMkVsM09Fd0JucENEQVU2d3U3dm94c3BpeTRnbDc0T2RFcndBVVhT?=
 =?utf-8?B?c0VHTHRYbk5Nb21VUDA3Yk5UL2RmeUNrYU5kR3RTNXJZNi9zWXBJVGVHRS9V?=
 =?utf-8?B?c1l0TEZjcHR5ZUdiVENvSUhaSDNPWERZY05OdTZzaEI5bjNVVTdRNm1jb1Zj?=
 =?utf-8?B?bHJhYkpyaEJ3TWd6RTh0dDE2UW1DVzdBbHl6K2ZLSFUxbjZDY3hXdFpPTkZJ?=
 =?utf-8?B?RHJHLzU3Vzh3Q0JRaS81YmxGcGVpVkZvcGRJbER2WldHZURVNTVrU05qak1z?=
 =?utf-8?B?dHNpTi9wNHpyTEh6Z211T1hoTzNTUzA1ZEE2VkZyQ24vTVpsQXJtZ3EraENw?=
 =?utf-8?B?ZW84MU42R0pTYmh2NWszc054djdvVC9YSElVN3VvejkrckFsSlBXajJieTZ3?=
 =?utf-8?B?OFJUUDZROG5uQ1BmdTFzZ1ZjaFNBUTlRd2prMEw1T3RhUmNWRGZwSHg3NXly?=
 =?utf-8?B?RjB5L3dVdVgzb01BQVM3TWpGZFpuVkk5T1pRQTNscTlVR09iWFRKMTg0K2dQ?=
 =?utf-8?B?LythclkzUzBuZ0V3aFRUa3lRY0l2ay9QUE1kdnAzNzJGelhreGFwd1hhT1B1?=
 =?utf-8?B?RE9rRUtPcnIzS04zcUhmUXY4dDZHc1lHU3BVcUF3dHYvQ20vS3p3K2h1UHVK?=
 =?utf-8?B?TUF0THpGSXY5bUpNUUI0dTNxNDdjdFZzcTZKb0F5YzNiK2hRY2QweEw2NWpE?=
 =?utf-8?B?Sm9OQzZUQkIxQ2w1SjZhODE1U0lna2FTbG9DRkRjWlpJazhva2ZmOVV6ek1L?=
 =?utf-8?B?bzdlMkhvSk4xNUR3OWRxQ3hmd2I1enc2cEdpckd1R25xL2FxMnc4Y0NRZCsr?=
 =?utf-8?B?T1RSdUI3L0RPSWs0ODQxNnpyaU1GM2lFSG5uYjUyVEM2QmN4RUFJNVpudi90?=
 =?utf-8?B?dENWbWlsV0djeGhuTCtCSjhKV09Rekg5QW4vemlSTzQvT2hMTUlaN1JIVXJT?=
 =?utf-8?B?dVlLWUt4YVltQnRVaVJycEVNZFVMTlBGcTBKK3pYZzB4QmFLcXhxM0NMUHdK?=
 =?utf-8?B?UTJzc003bzNqUGhkZlVUYkRycm1nWkFtVFpCWkZKRTFUbiswRzZMOUJ5SGp1?=
 =?utf-8?B?ZTVETDZjU0d2TTFMVm5LRGIyNVNKWUxYVU8yNDFUTTlnajZyZ0w2SFVPTDRy?=
 =?utf-8?B?SU1laVUzRmxaMWYrTTR0blhLd3RNN2YzUnc0ekg0L0VJblZabUtqdEdYczdq?=
 =?utf-8?B?Ky8rclVsUjFneFdwTTRaQWdZSTcrTHZGaGJVY3pEVjJDeXAveGJVQ1dTRTE4?=
 =?utf-8?B?T2tabXJqV200UGVoMytUUWYrQVljMzJmN0ZxdmxWczluZVhVUlR6YXZmdjFy?=
 =?utf-8?B?L3I1Ulo2b2tHdkc3eTIvYm12VW1heFdCY002dmNIYVRaa2FCQjJDblBVSjAr?=
 =?utf-8?B?RE5ocklxdUtqbllxSXhDMTcxNGZpOGlTbVpTUGNRdk10alRUQnJldGJtRG9M?=
 =?utf-8?B?UFhsQmgwMHZEc2tKSEJqZGsycE9NZWdYVXdSUmhEOFZsbzFWMytRWUFhTHRY?=
 =?utf-8?B?c0JZREl3a2FxWlRWMkphK0NzVXZqcXBNbWNKMjYrMlhzblIweGs0M1JrRktl?=
 =?utf-8?B?SXFkVnVsSXRJWS9ZNllucklyOG5rWk81RWljNWlYcWd5UVp0Tm5IL0J1UHRN?=
 =?utf-8?B?VDdtMEY4T3dvRWpKWFZ1TlVBRjZpM2pYM2Vpc3lTVTd2eHpvSlU3WklMT28v?=
 =?utf-8?B?RHMzS2tFWGJ5RzBXNEJWcDdsNjIvdTNTWXpPaFlGK1JCSGNFNjVaSHRLbWIr?=
 =?utf-8?B?N2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17394662-74ea-4f67-f761-08de34135a98
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2025 15:31:26.4153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oZVnaVeF73fYaS9YT0e2+0PkxUnrKH781QTPBrZzGVIJooF22vMK0S9DyC+Y1C22ztPrXVbikmO/CPq5enteKe5Nwd+TYmUq6DipozAg1Rw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9039
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

Hi Krzysztof,

On 2025-12-04 at 14:38:25 GMT, Krzysztof Karas wrote:
> drm_format_info_block_width/height() may return 0 and cause
> division by 0 down the line. Warn and return early if any of
> these values are 0.
> 
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof

> ---
> v5 (Jani):
> * split first two patches and revert back to early return;
> 
> v4 (Andi):
> * use WARN_ON_ONCE() instead of returning early;
> 
>  drivers/gpu/drm/drm_fb_dma_helper.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_fb_dma_helper.c b/drivers/gpu/drm/drm_fb_dma_helper.c
> index fd71969d2fb1..2b2513188001 100644
> --- a/drivers/gpu/drm/drm_fb_dma_helper.c
> +++ b/drivers/gpu/drm/drm_fb_dma_helper.c
> @@ -85,6 +85,9 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
>  	u32 block_start_y;
>  	u32 num_hblocks;
>  
> +	if (WARN_ON_ONCE(block_w == 0 || block_h == 0))
> +		return 0;
> +
>  	obj = drm_fb_dma_get_gem_obj(fb, plane);
>  	if (!obj)
>  		return 0;
> -- 
> 2.34.1
> 
