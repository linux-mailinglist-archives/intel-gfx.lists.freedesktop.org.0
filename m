Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DFF959185
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 02:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7964810E23E;
	Wed, 21 Aug 2024 00:02:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LHVMcOTA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1548C10E23E
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2024 00:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724198570; x=1755734570;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NeUQqygBYafC42IF9JpWXBalWc3vGlNcJlqJhYyuPOo=;
 b=LHVMcOTAyDCSpX25pFdzG8SGb8X5tK+vIcjepq53+XRaubWfU0QzVGNx
 AE+STAklCRyb1nWKOAgSx9BCkXpQVQAXc1OSmWt10ENITe5nNPRZP4MO6
 ZWkbCoH5AJfmg76ACyiVlWKHl0AiqBNYm02pleW42AeUUofW6orTpvsPX
 ss7jhW36fH0F93kHodq2xsxayU0DqzfoZAje9e9eOCfxOQmAB3P5SyKSR
 Sz2laG+7mMY1AlMUzAXwdMz7mn3vPBNFeY4HR4uzBXZHpQ3YAtn1nZPx7
 +xmbAX/CccMv7YpzMDF2iU+WjJIgtKvCrBv8EMR6FmDje3/5gs9MSiYfJ Q==;
X-CSE-ConnectionGUID: mBptS6lSQPuetEbqxG6m6A==
X-CSE-MsgGUID: DKsf4i1fR4uuvDrPZXkFSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="13122141"
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="13122141"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 17:02:50 -0700
X-CSE-ConnectionGUID: 7ObnhxqLTyONZC6QWqSWEQ==
X-CSE-MsgGUID: HBqn3fiARheo5TO/XhlRYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="98376166"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 17:02:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 17:02:49 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 17:02:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 17:02:49 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 17:02:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A6r1s0ZRep7121oqgW5+BQKaFTExjGnJAaPKNVAxKjazf9A1sW5wnxrk+IBA/fWJ7ppSMjb/v49+nQzS8wPMx0IqNM0K/Lcj3Z37NKDqLcHiBA19Xzn7RWlM13pisnyGC979UQl1nVGf2RVdLR3FfdYD+OZAFPv6zjLwt3noZrPGMaGDO+RMxi/OvryunxfZd/uD1l0q8vQ4VzpRHFuctOAacJwtbQqz7vmBWKwDyK8WUOxbUjDcGxZdmmowQY2QfWZWbKv//ADRmnLViyzBWrXiqeTsVfMhdy+YIwYM+4rq0mV6jPMvEr/WgKwtH2v/JavkuzC+shjG1GU+OIj1Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ncjdhdhfw1uR/V+zY0M8m1DGiGYTqMosMuidrBEQ5kw=;
 b=pIBdeoVV9FfThb8xElbRdZd+eaZW7RlCRefE5O0czQR3yXPrcJkm7fain0ucZi6aosSr5XYjV16LKuv8UD/RYlYOkeykgSob4CgmVl4CAeq2ZpKimeljBkDfCUvPItOeeYXgVHz5rpyCihKy5beo7KxTfhZMsk4BU56p6+9lJ4jo41FwER2PJ3XetdsSp0SaQI4B40FZiK0yVuUMyNi8iDoONdNehMy6Ouoxh5J7GYMAWyuCLZyw/3VZg1nLRjfo9mrb0zaOVl1rUrS5rNi4pc0NSAHpJzsRajene8+DAyLuZ4CTPXNU9uAnC8X5RFhZObHMa3iCJSQsEZ/mOeKoog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by BY1PR11MB8008.namprd11.prod.outlook.com (2603:10b6:a03:534::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.19; Wed, 21 Aug
 2024 00:02:46 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%4]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 00:02:45 +0000
Message-ID: <773eae99-fe6b-4422-83a9-d25d86fdc5d3@intel.com>
Date: Tue, 20 Aug 2024 17:02:44 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Do not attempt to load the GSC multiple times
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "Harrison, John C" <john.c.harrison@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>
References: <20240820215952.2290807-1-daniele.ceraolospurio@intel.com>
 <CH0PR11MB544414648B377EB00A6C0C3FE58D2@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <CH0PR11MB544414648B377EB00A6C0C3FE58D2@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0036.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::11) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|BY1PR11MB8008:EE_
X-MS-Office365-Filtering-Correlation-Id: 4282be65-7d2d-467c-3058-08dcc17495fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QWt3OWxvcGRGeks2VTNGUm9JQ3lOcmczTHhwTGIwK0M2ZUtqVGFZNERzeWtR?=
 =?utf-8?B?RDc3eEV2anBReVFybWtSekVMYjc4ZG9LSmdjR3B5aGlSZS9SV0hpQ3p4S3Za?=
 =?utf-8?B?TG8zRHdTTnl2RjAvYW9XZ1ozV2VOcDJFUUJla05zZE8rSFFma1ZJTUlqRGtZ?=
 =?utf-8?B?UTFSb0F4a1RHSG5BcEs1MDlwYzVSOVl6L2xwS2N0K1NLSHZsQmYvMlB5VWNL?=
 =?utf-8?B?QUVKUnFrMnN0RWltcmhzVHBSVjJoWjIyMVVFbUJIc1FzZDNkVlRMeUlLNEFH?=
 =?utf-8?B?c3BNazdFNXNYWFloVjViZlpaZmo1ejl3dGVFdmxGZEw2emh4b0ZSTkpaYndJ?=
 =?utf-8?B?TTFwRE9CVDhkU29PdDVvM0JnZjF0bjY3b3NMVVdCUFg5MS9EaUhieXoyV1E1?=
 =?utf-8?B?N0hkTkdyYVZ5SDB0Vll4RG84cVE4SjRROEV4aWRlTEhkeW5uaHBOSGg0cThY?=
 =?utf-8?B?YXJWUWlqYVlRMWs4cTF2Wkt1dnRPMjRKWFcyYnc4dlFjU1dvZ29GYTRSeDA2?=
 =?utf-8?B?SGxKa2FhNzVPek5ReXY5dm9aSmhjRmZyUDZTWHNwQWY1VHRRZXJWQS9EUVA4?=
 =?utf-8?B?S0lrR254Z2pIY0ZpUW1sc3kzOHRITmR6aXJNWHJkeWVGSENxZ0c2OWxlYTds?=
 =?utf-8?B?d2xwTWlveHFoSm95M1BqZmdtOWkzVUx3Smx2QlpwQkV0b0JsWmJBV2ZYbFBo?=
 =?utf-8?B?NDIwMGhkdE1UamdjcHRYWkhVT2JlNWd3WnY2ZkZPMW53ZjBnUkYxR0ZSQlVk?=
 =?utf-8?B?b1FhdWhFYXQraEVoUlBpY01sdHBubHI1czgxbFV2OTYweStCQlZFRTh4dGcx?=
 =?utf-8?B?RmRXdmJYNFRlS094TmNmamc5by91MFJvbUpMKy94bkFMZ3g4YkZJUEJCYzJW?=
 =?utf-8?B?UlQ0T0IyWWFQcWJhU25vMk44bDdNeDNFZUZ0cWtrTXE0R05wRHlIRFh4Znlm?=
 =?utf-8?B?eE9nOXljTGNON0NSTlZTbVhPWTFwKzVBNVF1bGR5d1hHK3F1OFU0WExZeFdt?=
 =?utf-8?B?ZTFaenpsWFpLRXFFS1A0eXNxZXZKSXYrdkRXemVEZFdhNVcrZnJ5Zy96b1Vn?=
 =?utf-8?B?OTFIWnpQTlZmWlArb09DeDlKRHRpM3MzVkdROW1mck50R012SHJLbE1jUzBy?=
 =?utf-8?B?bXJNWTFnUk5tQkNXUXJISHg0dFBpZkJUTTNjZjZwRU5sWXR0VVdqWlI4b2dH?=
 =?utf-8?B?UkdHdFgzTi9WVU83bXJxM3NJSm1jQ2tHVVRhWlJiY0dxNkI2NFNZWlA0b1NR?=
 =?utf-8?B?ZGN1N0VpUW9WU0F0YTN3d0R1QjhDV2hEanRpVEh3Wmtsc0VQcjNaMzEwdnR4?=
 =?utf-8?B?b1NIMEVPckNvQWNtbEpoRXlBRU5jRjJMODhlQjlmMjdidWxBQ3ZFcWlWK2VW?=
 =?utf-8?B?Q0dLNWZ5U0lFWWZyUjlFeTFMN3ZtaWhsUEY5MHlPVG95VjBJYU5JZ05JaVhz?=
 =?utf-8?B?NGU0elFQdEZxT1Nkd0NrRjNEUkl1WkZMTW1CSEdGZmcvcjg3aDVHT2FSNU9R?=
 =?utf-8?B?enJFWTV3enNuNjJ0UHc4RnVIZWtnbUkyaEcza1VTOVlDa20rMzV5QzNxdnla?=
 =?utf-8?B?bzZXZHlEeEg2Z2hUaVUzZmx4cDRkdHh3dnNVeE5wcWtQTGF1akZNWWxUSnd0?=
 =?utf-8?B?RUk2TFFBSm5RaGpiVHpqRUZORGNHZVppemF4U2dLYmI4Z2FHM2xyNk0yN2hl?=
 =?utf-8?B?TzdVSVFwdU5HbHp1T1R1VVh3V3pvV1pxN21nNExCKzJqRld1M2dvRlNYU3Iv?=
 =?utf-8?B?T1A4eEF1dkxrR01IeWkyODBLYlVKSk0xd0lpeXlSQUhML1RNVUNrdE9XQUFK?=
 =?utf-8?B?ZEsrYUI0NktGQ2RCcVIrZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SlpqMS9aeVNaOFJOSnFjL1FXZ01la0V5amtRNXJyMEpHdUdQZGFsWHRJZzBV?=
 =?utf-8?B?Z3dYUEZUMkVMTTJjUGZkdUFrVytxdTVRdjltSjF4VGhzQWV4S0VBa1RaY01m?=
 =?utf-8?B?TUs1dGMwSXZndXJQbk1pYkg5bjNJazRNbCtGZXdEQ1k2a3BVVmxnb0hjU1Iz?=
 =?utf-8?B?dUxiVlV6dkZMVUxrNkQwOFJPU09POTZPSno1S3hZc2x5OW4yV3Iwb1lCaVkv?=
 =?utf-8?B?VHZtc3hsaWxjeUJjbjJLaVg3VzVCVzZhbHk5RWJsOTFVc3Q2NXA4OVg1YTJR?=
 =?utf-8?B?Z1A0QzRubDZ6T0JPN2dUYkdzQVFPS3ljV0VmMGRNNkZlVEovZENqZmZpOHpn?=
 =?utf-8?B?NEZTeWczRVluWkFyN1JOajQrM0g4bWM3OHM5SVAwdjE5OFpWaXpyelNPZ2k1?=
 =?utf-8?B?UlZ3emZPQnpFN3ZkcWNwc3JWS1JQNHRCZjRHSTBQTEpVRmNaeVBoVXNZdlBV?=
 =?utf-8?B?TWNwWnZtSWp0VTdBMDFISmkzcVRJMHM2SW9yaTNtc3VZSlVENzI5aTBwSlps?=
 =?utf-8?B?QVM0akY3d0VJQ0huZFZSelpjN2NPWjg0WkhUUEM3TTNUR1FpT0I2SG9ncjBG?=
 =?utf-8?B?b1pzdzNVVWdZTVQ3Qmd3ak5PQmQwN0w3QUovTHhlSE5lMHY3ZDFQM3Z5WlpP?=
 =?utf-8?B?Zm5XWDkwRmtzcDNFblJlZGk2STV0VkVEaDV2YVhFYzYyZFQzUWpmOW4zaytM?=
 =?utf-8?B?VDBibzBKWk9CM05tQVQvSm52Q2I5QmJKNjdZdnltWG1BTG1LdkNCVVB1Qkha?=
 =?utf-8?B?NGwxS0VGalJMaXVENEFwbTJnc1RTQzFLeDVMUFZkbVZlTnVPRHhVMU56KzlC?=
 =?utf-8?B?NUdOeUtTTnhUR04xUWRtVWlxSWZ1eDVPV3d2NFBsdnZvSk9hODF3Uktkczgy?=
 =?utf-8?B?U1dKaUorMEpJdUpLelpXOERKRGxMR0JoSkkybUZSbmMwNU9maG54d3M1TEhG?=
 =?utf-8?B?NHBVQXJiU2RNbXVlSTFETFAzU3NET2x0aUlGMnVoVHBQclBRdFpmWXFROHJp?=
 =?utf-8?B?bjdYbTFEaWJVbjdBaWFwUTM4V3hVcmxJK1pYVEE0RmlZNDRubzhBVUdaWDcr?=
 =?utf-8?B?MGswVkluZVp3ZGhLWEF4cXcydEo4TGhLTWZJRktiNkJvcHpZbmJ5bkQ4REZa?=
 =?utf-8?B?R2x5a2tSWWI3eWRNaXJtZFU3K0FHalo3RC9jYWtSUTRaVHZneHlXL1UxVjNJ?=
 =?utf-8?B?OWlMc3dsZElRVDZXNmJ0Si9HRzAvczRKNnhsM3FNZmdrSzdpSGFtUUliV0g1?=
 =?utf-8?B?TGNka1VkdUIzMzJqdE5EVlIvTzhiYTB4UVlrMUUyQTVISnN0NStCd3lSVHhu?=
 =?utf-8?B?ZjRtRTE2eXdIMitlaE9RREJvU1pZcEUyUUZtYXczQ3RENjVSZkRvZzAzT0pD?=
 =?utf-8?B?dGh0Q1djcnVEd1VFbVRvYzkvM2VLbGw4aFZ3akM2M05QNXhTeXdKa1FWU3Jh?=
 =?utf-8?B?UWhHUE04WWVicm5STEFtcUgxUEd2WXRVQUExaE43ZFY3d3dKMTBndW02YUFK?=
 =?utf-8?B?M0loMEYydmtsUUczNy9hQ01mY0RyamdNSVAwVmxNNjdrR1Z2TER3UVhlRVhX?=
 =?utf-8?B?VG96WHZlK2kwUENxci85STNrRlhlVmdCdllJNE9lSk1zaVdUVGwyOXZ0b1Uz?=
 =?utf-8?B?a2hpUzF0V3lOYlNiY0h6TzQrdmNaanRxMVRkM3h1V2k3Y1hMc3JxTEwvZXgx?=
 =?utf-8?B?UWd5bGc5YUFiTWdtaUhCTGk4MUU0TTVSbTVWWUp1MkpwM3RnWlBmREIyVkxn?=
 =?utf-8?B?alh4K2lMa0NNOEVWSTk4UWhIQjk3OHJCZ0UzdGl1WWxTVGxPVDR5MzNacmsz?=
 =?utf-8?B?ZXBibGJ0aWU2R0VjOVh2SmlyNVhJNXpOeTFYVGdyZmU0elpvQ0Z6RU1NS0dv?=
 =?utf-8?B?MExjQk5VWGtZYlo3TWNQSkE4V2dBQmRNbmNHai9XdVVtRXZuWUdhRWZyQ0w0?=
 =?utf-8?B?ZElMQlpMdmFYbW9BUno2UHkyMUxFT3pWdHZxUnZPMWlWVkZzNnA0OXVqTm5i?=
 =?utf-8?B?VnRwL3l2Smt4bEQxQlZKNzJiZGxtU0ZSN2xyRmFtVWcxL2Z3dW9WVkJ6ekdw?=
 =?utf-8?B?UmxpclNlQUlKQUJ3bklhNTQyR3VHTE1SVDNWWWF4RTlnOWt0eUJrcys1ZzNi?=
 =?utf-8?B?R1gyeXo4MkRFRmY4R2pPMGdQQXREWmdHajdsaGMrMFg4d3AvTnNGNEhQalQv?=
 =?utf-8?Q?1rf5El0Tnk3U3OdZA7LL4I4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4282be65-7d2d-467c-3058-08dcc17495fb
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 00:02:45.7689 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SnbTeiPah3hew17mjQ1iRpiypVkCgeI051JFnHkKt9aEsG8vgCk7R7OUE2n09lWzTvgt6jW2pBvILiQt83QAHkxcX74eVxnkz+hfxUNYgnQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8008
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



On 8/20/2024 3:28 PM, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Daniele Ceraolo Spurio
> Sent: Tuesday, August 20, 2024 3:00 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Ceraolo Spurio, Daniele <daniele.ceraolospurio@intel.com>; Teres Alexis, Alan Previn <alan.previn.teres.alexis@intel.com>; Harrison, John C <john.c.harrison@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: [PATCH] drm/i915: Do not attempt to load the GSC multiple times
>> If the GSC FW fails to load the GSC HW hangs permanently; the only ways
>> to recover it are FLR or D3cold entry, with the former only being
>> supported on driver unload and the latter only on DGFX, for which we
>> don't need to load the GSC. Therefore, if GSC fails to load there is no
>> need to try again because the HW is stuck in the error state and the
>> submission to load the FW would just hang the GSCCS.
>>
>> Note that, due to wa_14015076503, on MTL the GuC escalates all GSCCS
>> hangs to full GT resets, which would trigger a new attempt to load the
>> GSC FW in the post-reset HW re-init; this issue is also fixed by not
>> attempting to load the GSC FW after an error.
>>
>> Fixes: 15bd4a67e914 ("drm/i915/gsc: GSC firmware loading")
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> LGTM.
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> -Jonathan Cavitt

Thanks!

I was also missing:
Cc: <stable@vger.kernel.org> # v6.3+

I'll add it when merging if CI is good.

Daniele

>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c | 2 +-
>>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h  | 5 +++++
>>   2 files changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
>> index 453d855dd1de..3d3191deb0ab 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc.c
>> @@ -302,7 +302,7 @@ void intel_gsc_uc_load_start(struct intel_gsc_uc *gsc)
>>   {
>>   	struct intel_gt *gt = gsc_uc_to_gt(gsc);
>>   
>> -	if (!intel_uc_fw_is_loadable(&gsc->fw))
>> +	if (!intel_uc_fw_is_loadable(&gsc->fw) || intel_uc_fw_is_in_error(&gsc->fw))
>>   		return;
>>   
>>   	if (intel_gsc_uc_fw_init_done(gsc))
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
>> index 9a431726c8d5..ac7b3aad2222 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
>> @@ -258,6 +258,11 @@ static inline bool intel_uc_fw_is_running(struct intel_uc_fw *uc_fw)
>>   	return __intel_uc_fw_status(uc_fw) == INTEL_UC_FIRMWARE_RUNNING;
>>   }
>>   
>> +static inline bool intel_uc_fw_is_in_error(struct intel_uc_fw *uc_fw)
>> +{
>> +	return intel_uc_fw_status_to_error(__intel_uc_fw_status(uc_fw)) != 0;
>> +}
>> +
>>   static inline bool intel_uc_fw_is_overridden(const struct intel_uc_fw *uc_fw)
>>   {
>>   	return uc_fw->user_overridden;
>> -- 
>> 2.43.0
>>
>>

