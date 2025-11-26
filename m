Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A688C8AD23
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 17:08:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95FAA10E0BD;
	Wed, 26 Nov 2025 16:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="URM75yVV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C588D10E0BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 16:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764173281; x=1795709281;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GBOi96VdUfhIY0RTP1sPwkiyz3kX13AGvNqRy48E6OY=;
 b=URM75yVVDbgOkkzmeHANbvLRyKd4pAcmjT4/6N0hLqurCi6R5tyP7NlA
 VXXaCNdOVe0e7s8Qf3ffcckgVLg2oCy3jZqAce5Dr5aIK+RlD2MONG9tX
 hTpIo7IQJPnU0OTIqOApTg8YMwldfiHWJYeyIkxsYo49T1ztduLv2DNiJ
 a/NAA48YUnMVXwce8YNyTmTXCjSGIWurAFt9nZpon6Xb0BGzdGoAX3rEV
 6KzyjTH92p3mq8nXd7/7Pm4pnw/HzUDcGKXrkv481HVhC27euK0f5A8i1
 7loaa0t38dh4Ele8/0YobxWIzmKomR/ZxSJEBZP5AnV53Ysl/+Fc/UT4B A==;
X-CSE-ConnectionGUID: A6ubi9BmS3WeUP3TDLPlzw==
X-CSE-MsgGUID: gBkA5xalROOyNsW62UPjfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="66164117"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="66164117"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 08:08:01 -0800
X-CSE-ConnectionGUID: 3ryPm34CR920BqBy5/i83g==
X-CSE-MsgGUID: XBQ5gB1qTvewRHkfrtHYTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="193072762"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 08:08:01 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 08:08:00 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 26 Nov 2025 08:08:00 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.55) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 26 Nov 2025 08:08:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ML940lRYqzYMxAKEbzI6GbrwRbVPawi4cOgkJPjGBp+RpsVnHLDRIanjs8jjQXmJBBU7EsFYTlQMFY6G3Uq6zeqbNNIKYfHqSahopI9wYRWyy8ffwuXKk1gGIIifRsgtwUBWgsDq1ysynq3dQ9GFIVVGmDDANVCSWNKQZ90Y8kMNREIdvQfB6dQgczb44UDeyZF/yi5zTvljOXRcg2B/aYIAcD1mcGbiyP/TveL+wWbJalJQoVwWEaHXHDWhrb1ZMA6Xxowbo+j91k43v6Ern3awnrN6PmoqygM1TRUvtKSnDamzoLNZxFVWsHwa5u3BEBeiLN6NtrJo7K5tzNbLoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JDv+ZRhbSLSqMshLn76xdRzSY4U41P6es8lnzX1ee/0=;
 b=VBsIHD2GruyTF0BXwCYVXnEBB4bOdKyagap6neeWignp22mFxfDYBPwXLkkZ3U8iAHnx4QoIRyYIfAxx5H2UOQb3kt7FdKpixMUfYCGoany9IDWrLkeKMKdJ658zTjmD8wfesF3hV6SruqKVmXLdHb6BKsOL6A74pfiLFEuRWBHMc7uFnlHDANWvx05dqwTPyRGmSnTKRzBCivt5DcelnEV64rWq1yITsshc96+PDGZidXwSWvxrju8Z7PDv1VdKZvidzD9fAwWB10a0xrJIwouQ9+r6cslucm8Cnu8gW8Gti5fodqESy82497pIyFcX8Eu/Sb/RYWQJ1fTZpmGQRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB7164.namprd11.prod.outlook.com (2603:10b6:303:212::6)
 by PH0PR11MB5047.namprd11.prod.outlook.com (2603:10b6:510:3c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Wed, 26 Nov
 2025 16:07:53 +0000
Received: from MW4PR11MB7164.namprd11.prod.outlook.com
 ([fe80::a972:1395:dd49:1dc5]) by MW4PR11MB7164.namprd11.prod.outlook.com
 ([fe80::a972:1395:dd49:1dc5%5]) with mapi id 15.20.9366.012; Wed, 26 Nov 2025
 16:07:53 +0000
Message-ID: <9b8e6e32-6a2f-43e7-a833-01a7400483d8@intel.com>
Date: Wed, 26 Nov 2025 21:37:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] fixeup! drm/xe/xe_pagefault: Fix potential uninitialized
 fence usage in xe_pagefault_handle_vma
To: Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>
References: <20251125101841.2325554-2-naresh.kumar.g@intel.com>
 <yww5rsowvo4kcfthcdadunedrcobjemskcmbld4ezzbpxfbasb@72lt2tf2btuk>
Content-Language: en-US
From: "Kumar G, Naresh" <naresh.kumar.g@intel.com>
In-Reply-To: <yww5rsowvo4kcfthcdadunedrcobjemskcmbld4ezzbpxfbasb@72lt2tf2btuk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0143.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d7::10) To MW4PR11MB7164.namprd11.prod.outlook.com
 (2603:10b6:303:212::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB7164:EE_|PH0PR11MB5047:EE_
X-MS-Office365-Filtering-Correlation-Id: 64ff635e-8836-4911-9181-08de2d05f49b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TWFJSGVBZW4xY2xveStiVnptanhTWlRlM2pIR3pwNkVJekhZRmR1VGtjekRl?=
 =?utf-8?B?d3V5K0IrTnB3K2orRVpDeHFLT1prOUlZMVRJL1FVSVVpcnVBWXlrSThvY3Fz?=
 =?utf-8?B?L2MwWGdZKzFvN1Z2Z0VJWXRnRWtYSXdrYkhHZmdUdnlFSDc1K1lMeDdycDVa?=
 =?utf-8?B?d3hDdW8rYWxBK2tZTytjTkdOZWVTQXNVOGNZbG9RcEo5U2pna0pGc0hOM2Z2?=
 =?utf-8?B?VDg2WUNhL3hBb1VKV3FEeTNzaWxKK0pPcHhTWmtoMlRnRE5aYXdmWXlpYmMx?=
 =?utf-8?B?OGY5bDZXdlpJUEVuTVRleDBNNHFQdk4wVXV0UDc0Vjlvd1dHekVxUUFMVkpE?=
 =?utf-8?B?MWs4SVdzQ0xuZnVkTlZCQXAvdFh5aGxOYU9GUktxekFHSGRleHNyQW9aeER3?=
 =?utf-8?B?WXRnUU8rejFyOUVtYWZUTGFNLzA1U0kzcVhBbTg4dkVpMWhlL0FQYWdDOWd0?=
 =?utf-8?B?eDdHYjBGZE5WRXdBWVZwQTdLMkt5cjhTa1B2K1VRaDRmTDdWM3lYbzdIbExR?=
 =?utf-8?B?bFpqMU1wVVNQNytNYjkxdXdqMzZlMmo1N09WWlBoTWZ1RVR0d0ZHSWFCSEFX?=
 =?utf-8?B?cEdwS2x6ZkdwcC8rNmhUZ3QwUEE2dTRyV1pDYnRCQldXOXlRY1pnQmFVc2d2?=
 =?utf-8?B?L1VWRVZZZ2s0UGVDejBobWcrd2JFc3Rid25tSjlOakFXanNYTnVWd2lUb0F4?=
 =?utf-8?B?ZDByZGIxWXF3NWZqOG5lZ1NWL2VLZHVqNkJ2S2VWVFRVeWM0UDR1TU9RM2hr?=
 =?utf-8?B?UmJjWW9jNE5ORjljbWFBK0F2U0NJN1JQaDNIeFhaWnhUMERaejhEQXRWUVNK?=
 =?utf-8?B?cDhFMDBEeGZrRDl2cEUrMWYvNmFmZ3hTYk1JR1d4dG5qNTRCbFR1ZlJDNkF2?=
 =?utf-8?B?QzhjbjAxOUhkajhWSkJDcU82UEhtQlhZRC9vcmxjNitYSkN6N1ZkMVlHc21t?=
 =?utf-8?B?aVJXbjlDQjJBdmlZRkYwZWVqNDZzVGU5Tlh4S01CWlRuU05XaU9LNVU0VThk?=
 =?utf-8?B?RU5kVTRqelI0Umw2bi8vK3BlZmZnNGYzNldkT1pTWHloTUVXSU1xOFZDTXZl?=
 =?utf-8?B?bFU3NW9TMzJpZnJHRmRlNnRLZkN2U2FoRjR0Vlh5YWJNNkdtUHI3bVdxWEJW?=
 =?utf-8?B?OVhMKzhXZ0V0bE1UTWNPNUtVeWlmV1JnNnFYdlFOdklzVHRYVDgwMVBlTk1h?=
 =?utf-8?B?S1lOc3czWVNJMTFndW4xVjhiMFkyMm9ndnN1ZkZVaUs1SmRBVlltVUxzdU1n?=
 =?utf-8?B?eE0yUVNzaUkzUnRlS0pDUHVuY1lEbDBraG0wN0NQam9CRGpEemM1Tnlzc25s?=
 =?utf-8?B?YWhXL1RNMXhqd3I4MFROQzJIbGtlZHdxSEJaYkdiNXVDbzgybFFWNW00Y0h5?=
 =?utf-8?B?MEJTSngzc3ZoYWJmV1IyY2ZtcEkvVnNSTnZzaWR0bUt3UDg0V2puTG1hSWww?=
 =?utf-8?B?S2M3Q2ZqM1pDWmpIVzN0NTVQckFuekdIaUIxZTBDR2Q1VzZCN2llbm5HaVNj?=
 =?utf-8?B?dzZoMk9XWFA4R0tCVFdTWUt2eHg2d0dER1pla3QwUkxUOVZ5Qkw1VEExcmtt?=
 =?utf-8?B?RER2b09IU1hNbFFLdXEwMXpRejRabWxHYzVJdWcwOWRvOVREOFFCQVYxcW9p?=
 =?utf-8?B?bnBxSk5PeXRvRzRndkp1cmFuV3hORWt6cWhTakdmUzJ2YWVKSnJUbGlEbDVY?=
 =?utf-8?B?K1hnNDFIcFRUeVJhcG40MDB1OWV2aVVxVzZFdm1hekhhK2NGaHF6VU9tL0hh?=
 =?utf-8?B?ZHNlOURxRlAyUnRjd0l3MmhUVzVpaU80ZDdUa2pRMXI0TG1TSnQrNm93Q2tp?=
 =?utf-8?B?eCt6NEdSV3k0dlNKZkVxNE84dFdkQ0JwdlQ2NmdNTk80VDVyc3kxUmlqT1BL?=
 =?utf-8?B?QkMwVjRLeUtqanEwQVUwTXhDRkhCUFRwUVRVRHJWYVNjbnhqSE9aVzlKdUFQ?=
 =?utf-8?Q?EPJyp6JGL3ssG0oAYwQcvr1T1maKS7bp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7164.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnIrdDZJUmQ5dTVhdkZJVlQzZnhSTENjNzZPcjZ4eXI3UWJZN014S1ZrY2dZ?=
 =?utf-8?B?L1JVZVhKWVVlbm8yQ2FnMFVuaUMzd1haY25IbmhqRkRzMkJHK2JjQmNWYSs3?=
 =?utf-8?B?MDg5Q1paUThYWHo4b3l5cmp4bVc3VGVhc2UwTVBXczA4ZGt3TXpCRFhhYzZB?=
 =?utf-8?B?clR2WitvYUx3bm1PbHd0QmVnd3hwTytxK2xMdmwxOWwwNUNoWXA1aUQxRGRa?=
 =?utf-8?B?TVNzSGY4dThnTUhGZnc2VXA2d2E2dkZEdnFibDJTb0JmclI1SlFKalV4ejI4?=
 =?utf-8?B?UnoyenpKeGozYVJid3NJd3VpMk0yaGM4V0pPZkpBVDQzVTNMK3dMU3N0SlNR?=
 =?utf-8?B?V0tBTEhDUnJiTDNGYThDVnhQNDBXZDQ4dS9pc3Rmcm1qN3Vha01JSUNybUdh?=
 =?utf-8?B?aEdncUpoL1hjYWZ4Z0hGcU54QndDYVdOQ3RYY2Q5NWFSY0lvKzU4NXBPTTNW?=
 =?utf-8?B?Rm41OVo4UUxHbzQ5cmdHcGJ4RFRESHZJY3BocXIyUWQzSUxXamNQNHo0cHE5?=
 =?utf-8?B?RStjQXM1MG1yRlRmbFh5SnhVSEsrQytRVWdwUnBCMEJtbENZQkdVajhodWxG?=
 =?utf-8?B?MHg2ZDRrTW04OHlXdE1xemVlMXljMzcxY0VIbU9yKzFvdWdaVjFoMG9URUdn?=
 =?utf-8?B?N3Jvc3FZbnBsOGQ0eE5XNW1rQkRSUUFvZ2N2bVF4UzI0NWlONWRpM3RjNUtt?=
 =?utf-8?B?SXk2S3laY3BKRW12OEcwb2NpWXg2d3pnb3NDZTB5K3c1WCtQZjMzUG5KUldr?=
 =?utf-8?B?SFhHWXd4Wlh5WSs4MUt3S0NNdDJkdEFPYmFMYityWlNSeDN5QW96TEhiSndk?=
 =?utf-8?B?aUlIRkpScGVXelVUU25FcEdpeGVOZ3YrQkRPSVlyWmJBMXNEbGMvSDdoSTNN?=
 =?utf-8?B?bWdtaEV5Z3Bkd1BFMkJOdFRNUWVBLzk1QmRZWmxLS2t2YUQvZ2hOZTI5Nnhw?=
 =?utf-8?B?OGE3aHFVbjMrb0drc3hRSHN0bjMrTHUzbEw1R2gybXlOR0ZIMEdzdXlzV25G?=
 =?utf-8?B?ekI3WitwOXd0RlZDWEFaMHVReUdYanJXWGM4YTFrV2NMa2ZtV3hxenR5aUFV?=
 =?utf-8?B?TFM4d2FMcUJ0b3FVeE1zRTMvRmFnZllPc3MxTlNYVXlmUGgzcmpUM0o5bHRz?=
 =?utf-8?B?SFdEbHRkVnlZZ3h5emhybVdUN08xZzFUY0RtSzkyUFFHTVNKU0NhN0p2ZmZq?=
 =?utf-8?B?RjdZNTN1MURDV21XTWpsVHo0VHdWUTh6SjVJaHYyc01kaFlUalFaNXBzRzN1?=
 =?utf-8?B?NUhzeldwTkRDdnNaVHUxb3U5ZWxFZUw1SFRCdzVhTXV3cUM2SU5vaXA1RUk4?=
 =?utf-8?B?anRoYmtBTno1SlQrZ0FLR0d6RExxZDZzd0NyajFOajVFODB2S2kwVDB0alJz?=
 =?utf-8?B?RkpMZjdFNVlCcGs5Y2w1TFBUQVdNUituU3RmRDQyUWNReVhwWVFmV1EwQk53?=
 =?utf-8?B?OUpQOHhhbDVPdEZ1Y21uSzVjUHdvUmFFMWlJUUdQOG1NVThiMTRnYlZrOEpT?=
 =?utf-8?B?NUE5ZTlSYUhKd08zL0ZhamIwMGVFZE11b21iZGcwdWFwZjJHSWRJRWxhZ0du?=
 =?utf-8?B?cktsQjRMamdPLzdteVRQSk5QaDBnMGU4bDR1UXdqK3E0S2piNjNMU3ovU2RQ?=
 =?utf-8?B?Y3lpcGRYUjFuS2x2WUUwMnNHRHhoQXd2RjAvSDYzK0h4eDVBUnRKWSt0YUU3?=
 =?utf-8?B?VEFVSFpQOEFVRlVYQXFxVmg1dVg2NHpTcGl1S0xLdXQ2ay9RbHpaZVlERU9Y?=
 =?utf-8?B?bngxL0hqQlRHcytBYURST3Vva3JhTllkeFVscktreFJUaXhEWWVmZHZIOXpu?=
 =?utf-8?B?dVpBUHlvRzdzbExoRnJQNmRVZ2pDUVBOWEN4TnUzZ05Qa1lLcnRZN3V0b1Bv?=
 =?utf-8?B?NGxHaE10SCtndk5wWnhySzBHUzArUFVlREdab0JLdVkyTXJ2UzVydHBuMkZD?=
 =?utf-8?B?OFowNUJJMTJFdE14YndodzFDdEtzYVJBWTRib29jUVpKb2wraHRrUndZVzha?=
 =?utf-8?B?dlkzdVl0ZWhqSGQ0UjZNMTlTWHBhaTJmNFh2THpnKzlXdFVGVUNCYmhtQUNP?=
 =?utf-8?B?bXVwOHBheWd2UmRlMWtYYjFnbFBobksxbGJMOXA1OTUxZkZvVFpRSTVoUWQz?=
 =?utf-8?B?Z2tPeVpONFUzdU9LV052Y25pU0M3UGtDeUhpcm1leTJ0Sk1uQVNTOWh5bDVK?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64ff635e-8836-4911-9181-08de2d05f49b
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7164.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 16:07:53.8216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pt4KxbfMxDTEVHsjRF0fmo7GA96GENqsPxK+3tjWhqyDglU++gc2Lcp1IsnZPNBAxa8JffTMI6Mw9B9VuNQMwG5ov5tTGVQqJKUYQneCwTs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5047
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

Hi Andi,

Do not review this patch, have dropped this patch.

Thanks,
Naresh

On 26-11-2025 21:20, Andi Shyti wrote:
> Hi Nareshkumar,
> 
> On Tue, Nov 25, 2025 at 03:48:42PM +0530, Nareshkumar Gollakoti wrote:
>> The variable "fence" should be initialized to NULL,
>> and any usage of fence should be guarded
>> by a check to ensure it is not NULL
>>
>> Signed-off-by: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
> 
> is this a fix?
> 
> ...
> 
>> @@ -122,8 +122,10 @@ static int xe_pagefault_handle_vma(struct xe_gt *gt, struct xe_vma *vma,
>>   		}
>>   	}
>>   
>> -	dma_fence_wait(fence, false);
>> -	dma_fence_put(fence);
>> +	if (fence) {
>> +		dma_fence_wait(fence, false);
>> +		dma_fence_put(fence);
>> +	}
> 
> have you seen a case where fence is NULL at this point?
> 
> Thanks,
> Andi

