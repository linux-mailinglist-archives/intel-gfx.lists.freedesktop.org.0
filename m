Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB39A5BEB8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 12:17:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A862610E177;
	Tue, 11 Mar 2025 11:17:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FZ4R8ZpF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE7110E177
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 11:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741691849; x=1773227849;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vxzl8SrxhSh/VSvRsTPbXkCuVRzb/ky5nr13+zpc5CI=;
 b=FZ4R8ZpFWBl3dkHUzi0zjhiHBEvOKNwXOysHKzzRJwknNP95r/CtDR0t
 c0ILDxhlQQTuQt1grTlYEM1J6L1Wf8kYPiC8CQ7vz7QXbBYfmUrkbriuN
 sqOp3WOuO5dHcyD6uaOe0swUVLR4QgxgnI+2Ig86O8GbvXFn1a6IWdx3l
 BpVJoptW4hxhkvcKELjPOd8juurNZaZn0wda/es0qbhINm7dO3TIpeT4H
 RhwwrNCF8QKX2XUf+EuWUehFR5cxHK0gfLy2fvfrifie+Mdvg18kCx21E
 J/fR0WZxMddViDOkkhDqpcpmtzgYN0a+REYydO5fhvqmKn+JroBDfLdc6 A==;
X-CSE-ConnectionGUID: /vokCdMxRKmqPYqBpY728Q==
X-CSE-MsgGUID: 8rABy3G1RBW/iMUVSeb7ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42579525"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="42579525"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 04:17:29 -0700
X-CSE-ConnectionGUID: 1C+9JY5AR3usVsefb4216A==
X-CSE-MsgGUID: McXgwX8yQVGpfeIMDCRTgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="125498171"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 04:17:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 11 Mar 2025 04:17:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 04:17:27 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 04:17:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pMiqw2zZd8eZ0b1D5bZEeSWJqmgJpZyBp3H53X7gzehnWbZE1HLLMLhA+9+e7rW6Kc+2H1O3qXpbA5fI+dqqkZihPa1g6nzCOtI/0GfuTrbV+8tBvqLxGaA9jPYrryMn4wKLfLfY3al+O+KDAjqQneIt5lHBmEfwxJXi9Pk+eDz0nUFxpDbg5W+WeH4qsha6MHaMaRkDpuM84zdRaNUttDYQ63STzNqOcPaNL59ctU1xoJYLPpuNDcVtsNbu+Moca058fLaKBU1W37H19GvpaCwZXsa3DkyO7V9jxeYhdUAXpIgKURHOnVHqlww0fX6c7g385z49tD2TVQayrgHBnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kSD2oba2vl8J2vxQbYvzOoosxC34WCpl5cucHmn76qs=;
 b=TxTP9Ki3R9HrqPvT2+L1R1H6eOFa84MzX+zGsIAohe82OX9EEv/HNi6KnbI5frW62U9B61wlMEukfdH+pev0Ds2WWhd5+58DtU0s7dQQ4lQtPHe7+SHghj4Wja7uBu7lBmuOx2oq/IajR72hvy6ZL8pSsHMo+OaFHAFEoQ6CX2EyuDS2ErVdDJ+qSzzR49mfBcZqxZzGKBtiq2y7S357WcYJv8P0iMlBWu1HfJtOvhCCtl4xds/lmqbaahHRAR6laCMYBwz2n+z6lmdJf0UFnlPu9uYWQslu770L0CnU+gs94CBd0o7EUjd8TsOM8zN6r9toklJZE+AgTKbQbGDsIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by PH7PR11MB6473.namprd11.prod.outlook.com (2603:10b6:510:1f3::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 11:17:12 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%4]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 11:17:11 +0000
Message-ID: <5dc3a46b-886d-44d7-9f55-42809189dbfe@intel.com>
Date: Tue, 11 Mar 2025 16:47:02 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/selftests: Refactor RC6 power measurement and
 error handling
To: <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <riana.tauro@intel.com>,
 <karthik.poosa@intel.com>
References: <20250306191110.2582025-1-sk.anirban@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20250306191110.2582025-1-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0170.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::20) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|PH7PR11MB6473:EE_
X-MS-Office365-Filtering-Correlation-Id: df8a8efe-b469-4fcd-1b87-08dd608e449e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dEltdXBPNVgweEY4WDVPaTlUcjQvQmpPYWc5NnJBT214dHFHZ0pFUXhNZEFr?=
 =?utf-8?B?aXV0c2VyYUtCTG5IYjYyYlAwaTFiMWpSbHNqNjVzMENrZ1ppS3Znd21ydzBY?=
 =?utf-8?B?c2xvb281QUNnV3l4dktFZ2hVVFRWMGNvY2JHV29tVHJYNUVwTjkxaFF1VVp5?=
 =?utf-8?B?UWRjSEdTVlZOSXZSM1dLNFJ1LzhXRE1vRjNNQ3lENmk4UW5ZdEsyR0czWjQz?=
 =?utf-8?B?RWMzMm9DU0pSRWpnbXZNTjQ1c002L2dENXh0dTR5Y2loZmRvUk1HRlREczBj?=
 =?utf-8?B?NmF2ZXpoR25aNThxTUlteDIwQUpYTUw2eFFNQVBhcFl3cThlMDU2Q0tWM3FK?=
 =?utf-8?B?eno3WXI5UzR3M0R3RGVEaGFQclQwM0FVTDJudHoyaVdFbitDVWpLYU9UT0dX?=
 =?utf-8?B?RjZjMXpqQmM5WDhMUGpPcjliUlRiSkEyUnE5QVUydHYvZTAyYklnUk9sOTQy?=
 =?utf-8?B?OW84SjNlNXhCZUlDYms0VFNWTUpDWHRPVXd1Ri9CaU1OTGpNMllkSjM1U1cy?=
 =?utf-8?B?K014bm5WZDRNakwwWXhLeUVDbzdhalB6SksyalZka2lySXU5a0xNbHFwWnRH?=
 =?utf-8?B?OWlCdFBxbmV6QU8yOERDNllTTXRDdzZVOXh4ZEdrYlhTR2ZsWndUSE1tWmJ0?=
 =?utf-8?B?R0hscU10Rmp4Z0RMaHc2RWlKVCtERm5TYmFwRURtUDc5N2g5bGdMUFhJVFFy?=
 =?utf-8?B?bzF4ek1hN0ZzTmRHek5ISUIyUU55SWp4aUdQK1lUYWNjVUlSb2htSThpbysw?=
 =?utf-8?B?ZTR2clFmSVEzdEoyL1lFZ0lreHBTRCsvaExIa05jQ1QxVFhGOUlRVExQOWJB?=
 =?utf-8?B?OEptZ09YOVd1alphdE9yYmo2Y1E4RDg4M2kwdWk1RTJqR2Vtd21ML2lnYk5D?=
 =?utf-8?B?NTQ1OXFtVGwwNm9BUFpaQlVjOVhrcnJFOG9Iem1IVGlIVXVPS1p2ZGx3UVRa?=
 =?utf-8?B?MXdDK0pJR0VkaHZnRC9MYzJqSDV3eWxpN0hHRkQrWHI5ekFBYW1MdGtHbE90?=
 =?utf-8?B?d1I4YkpUVGtOQ2JUNXhMK2FkN0d6eDJ2RkhnY2g4c2M1eHE5OVpESS9obzVz?=
 =?utf-8?B?cjNRVDROK0d3aFhIQXRzajRaZ2lkaGlYSDd1a1o5L0psSnhoamc1dkE2K09x?=
 =?utf-8?B?ZFhDaEl1Yk5jUk9qVjkyUWZDZFkyZ2ZIMzg4MDRGRW56eVY0dXdIaUdJMVVB?=
 =?utf-8?B?WjRldFo3ZVBDM2NFMFFnQ2NaMU12dUJuOThuK29rb05McklyTzZ1YmFrSXNq?=
 =?utf-8?B?ZCtPNTRiemIxVi9hb01yLzdJQnVDVExuSmlpWVRNU3RxazVhRzNUQ0tTM1hW?=
 =?utf-8?B?VGJPVCtSR05pa3o5TFRRUWN4UC9DR2VCY2Ywb3dodWV3YWxCcFl6U3ZLQ3Fp?=
 =?utf-8?B?RzNpMzZwVWY3ZTdiQ0N2aFd0SzlQVnNZVEV5Qlc1QnQwY3puenZ1dDVZa3li?=
 =?utf-8?B?dWk5dFJkbURQNkpBNTB1Tm0rMHI2a09ZL2NyOUw1TURub1YzeFplL3dSYjk4?=
 =?utf-8?B?bEYzOTdqcEkrY1U0azROL2FFeHJrVXR4YkkxUExYSExib3crRUhTMGt4NVFO?=
 =?utf-8?B?S01DNHpNemMyM2hVSnI2c3BsKzRFVjMwRGN5czE4dTBtSDkwNk9iWHhvaXhL?=
 =?utf-8?B?L2kvOWJQOEdDOUowMk5SbCt3QytpWDdjOEl5MG9RdzhwQ2ZPUlZBYVpaVWF2?=
 =?utf-8?B?b3o0LzJrY2hDWVVIYlZnRll3aWJnSkhkNmJ4ditzb2xEeDZXSWV6cEFJM3F6?=
 =?utf-8?B?TVhiUnFFUzY2VG8zTGl3NW13dnJXUUZjWGZ1d1pXZkNxTzloMHVJdm02YUdX?=
 =?utf-8?B?QmZDMEt5cG4rTklhL3l6V1RNVzJVRUpQZkhVMUtGWjkwbzVvRGIrNXJnbmJi?=
 =?utf-8?Q?+RCFur1wIC0za?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVJRcGRPalBqUmJpM2lsVFNjcDZZME5qZ2ZuWDRPZnJFWDRYMHFZOS9PUVA1?=
 =?utf-8?B?OWJ0T1NnRko3QmZRZU12dHBYb1VldVV6ckxBOUd3VUhkSUMzTHcrMWJYRDBM?=
 =?utf-8?B?K05HVXU4MjRnbWFTeTdrUjNzbndOVWdzblRpeUdpakl4ODRtWWpaeFBzN3I5?=
 =?utf-8?B?RklrTFcySGhIYXBEQTRwZGZnak1mb3Z2bmY4NFNLZlBqWlQzRHRPSE1neXpS?=
 =?utf-8?B?K1BNcUsrMmdpQzM3dmpPUy9iSlJrM08xMDhIV1pWR0VFeExLV05DenpwNk9O?=
 =?utf-8?B?WHBVRDRXUEl2VkNlcWJWU1lHbWd5SXhiL0QxQWpUeFVDQ0JNamxVaW16TmJW?=
 =?utf-8?B?bVIvcW9rcXY0WEtKMExxdjc0V1FDeDFpM2RzYkkrN0cwVGR2ZWlKb3IrK2RF?=
 =?utf-8?B?Uit6QURRMjRvN09pMVBJUy9IYmtBd0p5UTJGTVV6YWVmRThOcXlKMDE3MDVQ?=
 =?utf-8?B?VE9wUkhsRlhvMkhDR0FNVEJyVUM3NXdmTUk2TldBTnJDa3g1bE4vQit0b1l0?=
 =?utf-8?B?dXg5ZmFNcFdMbHBrcFc5WTFKaXJ0YmtOOFZIU29oU00rZDZNY24yWmc2ZEtW?=
 =?utf-8?B?NktjaWcvUkJkYnRRY1FncU5DbkxFT0lWWmI2ZzlmVmlzMjBvbXppSzMzZTVL?=
 =?utf-8?B?UmZnaDY4MGJYa2RMNmJzcktXYWU5dk9PR2dqeVQxb1pPM2U1Q0c0NmxKcWg5?=
 =?utf-8?B?b3I2Z2xaclRnZ2tMMWdhVTZHUHRTZmVBS1N2ZGtaVmhIWTJwWGJYeHQ1K2g4?=
 =?utf-8?B?M1ZhWGVXWUlTbjdta01CTDhaa1QxY3JoaWRMMkFmK2pJRHQ0OHJLenNvcytY?=
 =?utf-8?B?Y1A0dkFYN2xDYVQydHJwbkhnYzFFck5uZnpGbDhBdStTOFpmNE1FV3hGTUJn?=
 =?utf-8?B?ZWw2K1NZR3kxWU95amx2aWtuUHBZd2dQb05IVFQ3bzg2b1BpTmxMSjAwaWNQ?=
 =?utf-8?B?S1BKNytBTlBCRWx2R0JEczhuOHQxSUFMSkJpL1Z5VDRReFBMOEJOdEoydTdB?=
 =?utf-8?B?eTdmTWh0MksxL0drdjk2VzVRQnpJUlBBQktiWE5wQWNFaWplYUwvTkZXczFj?=
 =?utf-8?B?SGRoYU5vVm4yVXArSTFwR1N2QU04QldzVVpZZ3l5MkhoSEtmU1JsempOVGdW?=
 =?utf-8?B?UGZjUHowc2RnN2FjSkdkTm1OQmZqb001Mnl1QmZoVDkzNlVuR0JIYW8xTVdP?=
 =?utf-8?B?TC9wSXEvODg2Z2ZYNW43eVZSMC82RnZCblhxVWYwOSs0RTJRMkdJcytTc3pR?=
 =?utf-8?B?NFlIRU9MNTRxckJpUW5DTTFHTTdCSXFtRlFIeUFiQVVLa3k2dVo3QWxxaEJT?=
 =?utf-8?B?SldGcUJmMkxmWTl3czBoWENLU21hU1M2eThIRlUxNjlVQ3pPejJPTTVNK0Yr?=
 =?utf-8?B?NElaZVRoNGhYbFhnSjZ6NGxVVWUrWXpXSG5MRktVYzVNSzBvK3F6U2dyZEsr?=
 =?utf-8?B?blhBeVBCYy9sRjNYUVhrS1dMYTlVYnNxNlpjMENtVEZJL3JMSGprS1pYM1F6?=
 =?utf-8?B?UE01RkNvaEorcnloSUNEbnhQNW43UHk1QTJxNHpreEk5VUZGTm1aWnJqRW9n?=
 =?utf-8?B?REVlMCs2VkFJVnM5ekhUVENZdmhKTytrUE50WDVFTlIydmpyMUZLd2ZPM013?=
 =?utf-8?B?UndmdEpWTlRDR0UvSzlzVXRCOHdHT0lxUmRWbVZTNnF3S1c3b3k5WjZqSUhR?=
 =?utf-8?B?MGQ2QWxuNWxueEhXdDZ6NUZiTVduVVpJanFqbnVvT3NGRG5tS3JSWlBQYWNi?=
 =?utf-8?B?T1JkSTRobnVpcGpRUGcvSHBiZHYvZnBpVVJpUVBHRytXUnpRa3oxS0FtZUhw?=
 =?utf-8?B?ZUcwOHFZdnhQdEU2MVFES2ZSaGE4emZabGVaNjRPK2w1cm5qakZCazZ5NnBq?=
 =?utf-8?B?Z2syVitPV01ENktDcmVQYjN2MVR4WTJ0NWc3bndTdzJHVnJBSE5PY0Z2cHhn?=
 =?utf-8?B?czZWZ2FGWm9EdHYvLzFoYnlveEdvM2svbGRCUnVWZEdXNGE0TXlGVXhEOUt6?=
 =?utf-8?B?U3lwbk9vZmFGZlU0UWhIZTBqemRzWWNyZ1MxVlhUbXIxTmMvZ0lJbXRSZGx0?=
 =?utf-8?B?aGljZEQ1QytxdW1YbDJFMGtMS1RVT1pGajlGZU1qRHRDYjVUV2doWFNWTXkv?=
 =?utf-8?B?SHZ5cXJodVhWd25mWWFqeW1PREEyc0RoVXVBR3lvaU5Ja29hb2hyeWZETzhs?=
 =?utf-8?B?NkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df8a8efe-b469-4fcd-1b87-08dd608e449e
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 11:17:11.3092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QjW6G8GdC/hRi6RglPcdWZew8akmcty068fSUYHGNEgxzADfZ6sw05Fi+eqUSEYYNue+L4oIRJLo0iJt/KCbmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6473
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


On 07-03-2025 00:41, sk.anirban@intel.com wrote:
> From: Sk Anirban <sk.anirban@intel.com>
>
> Refactor power measurement logic to store and compare energy values.
> Introduce a threshold check to ensure the GPU enters RC6 properly.
>
> v2:
>    - Improved commit message (Badal)
>
> v3:
>   - Reorder threshold check (Badal)
>
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rc6.c | 59 +++++++++++++++++---------
>   1 file changed, 38 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> index 908483ab0bc8..5364e50be638 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> @@ -33,15 +33,20 @@ int live_rc6_manual(void *arg)
>   {
>   	struct intel_gt *gt = arg;
>   	struct intel_rc6 *rc6 = &gt->rc6;
> -	u64 rc0_power, rc6_power;
> +	struct intel_rps *rps = &gt->rps;
>   	intel_wakeref_t wakeref;
> +	u64 sleep_time = 1000;
> +	u32 rc0_freq = 0;
> +	u32 rc6_freq = 0;
> +	u64 rc0_power[3];
> +	u64 rc6_power[3];
>   	bool has_power;
> +	u64 threshold;
>   	ktime_t dt;
>   	u64 res[2];
>   	int err = 0;
> -	u32 rc0_freq = 0;
> -	u32 rc6_freq = 0;
> -	struct intel_rps *rps = &gt->rps;
> +	u64 diff;
> +
>   
>   	/*
>   	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
> @@ -65,9 +70,9 @@ int live_rc6_manual(void *arg)
>   	res[0] = rc6_residency(rc6);
>   
>   	dt = ktime_get();
> -	rc0_power = librapl_energy_uJ();
> -	msleep(1000);
> -	rc0_power = librapl_energy_uJ() - rc0_power;
> +	rc0_power[0] = librapl_energy_uJ();
> +	msleep(sleep_time);
> +	rc0_power[1] = librapl_energy_uJ() - rc0_power[0];
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
>   	rc0_freq = intel_rps_read_actual_frequency_fw(rps);
> @@ -79,11 +84,12 @@ int live_rc6_manual(void *arg)
>   	}
>   
>   	if (has_power) {
> -		rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
> -				      ktime_to_ns(dt));
> -		if (!rc0_power) {
> +		rc0_power[2] = div64_u64(NSEC_PER_SEC * rc0_power[1],
> +					 ktime_to_ns(dt));
> +
> +		if (!rc0_power[2]) {
>   			if (rc0_freq)
> -				pr_debug("No power measured while in RC0! GPU Freq: %u in RC0\n",
> +				pr_debug("No power measured while in RC0! GPU Freq: %uMHz in RC0\n",
>   					 rc0_freq);
>   			else
>   				pr_err("No power and freq measured while in RC0\n");
> @@ -98,10 +104,10 @@ int live_rc6_manual(void *arg)
>   	res[0] = rc6_residency(rc6);
>   	intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
>   	dt = ktime_get();
> -	rc6_power = librapl_energy_uJ();
> -	msleep(1000);
> +	rc6_power[0] = librapl_energy_uJ();
> +	msleep(sleep_time);
>   	rc6_freq = intel_rps_read_actual_frequency_fw(rps);
> -	rc6_power = librapl_energy_uJ() - rc6_power;
> +	rc6_power[1] = librapl_energy_uJ() - rc6_power[0];
>   	dt = ktime_sub(ktime_get(), dt);
>   	res[1] = rc6_residency(rc6);
>   	if (res[1] == res[0]) {
> @@ -113,13 +119,24 @@ int live_rc6_manual(void *arg)
>   	}
>   
>   	if (has_power) {
> -		rc6_power = div64_u64(NSEC_PER_SEC * rc6_power,
> -				      ktime_to_ns(dt));
> -		pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
> -			rc0_power, rc6_power);
> -		if (2 * rc6_power > rc0_power) {
> -			pr_err("GPU leaked energy while in RC6! GPU Freq: %u in RC6 and %u in RC0\n",
> -			       rc6_freq, rc0_freq);
> +		rc6_power[2] = div64_u64(NSEC_PER_SEC * rc6_power[1],
> +					 ktime_to_ns(dt));
> +		pr_info("GPU consumed %lluuW in RC0 and %lluuW in RC6\n",
> +			rc0_power[2], rc6_power[2]);
> +
> +		if (2 * rc6_power[2] > rc0_power[2]) {
> +			pr_err("GPU leaked energy while in RC6!\n"
> +			       "GPU Freq: %uMHz in RC6 and %uMHz in RC0\n"
> +			       "RC0 energy before & after sleep respectively: %lluuJ %lluuJ\n"
> +			       "RC6 energy before & after sleep respectively: %lluuJ %lluuJ\n",
> +			       rc6_freq, rc0_freq, rc0_power[0], rc0_power[1],
> +			       rc6_power[0], rc6_power[1]);
> +
> +			diff = res[1] - res[0];
> +			threshold = (9 * NSEC_PER_MSEC * sleep_time) / 10;
> +			if (diff < threshold)
> +				pr_err("Did not enter RC6 properly, RC6 start residency=%lluns, RC6 end residency=%lluns\n",
> +				       res[0], res[1]);

Check if BAT failures reported are related. Similar errors were seen 
with other selftest related patches too.
Otherwise this looks good to me.

Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>

Regards,
Badal

>   			err = -EINVAL;
>   			goto out_unlock;
>   		}
