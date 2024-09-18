Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE8397B749
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 06:58:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 735F010E146;
	Wed, 18 Sep 2024 04:58:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iAROXUyO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 050C710E062;
 Wed, 18 Sep 2024 04:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726635504; x=1758171504;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DVuiLtA0kdgMpckpl7DamZGY4vorROQeNI09dBYqv/g=;
 b=iAROXUyOWwj7zBvcjfxCON4DrZunAi8rir3efDGbVmftLzF+OpjwuQbp
 TnyWwexQl1iSbY6J6Knx2BUJuOOhFBtRwTs6TKJeGgG48KyIcTf3yI9xz
 gbYK5WWdKRFQsUZwVIKGGbltMhOxcg9dYvbUhAPLNwATcL2UBgRQJMDSH
 SMjuLbSPPf2ch8Qu6LeSo5NCbpB87GaMuFsDfi5WPv1n8ri/IVcgJuRH5
 i/j3Mwp6/a7egWMBBoNZiRpZLwHgZLIP9oUKYNJQuM4aG7xtmXnW3GbTt
 3o/IIibU5spphfrTei3/+s7fORXxfbhIuKPM25oTr9+yISEVg+3P7sX10 g==;
X-CSE-ConnectionGUID: tcxbGi1QQlulLZg6hGnV0Q==
X-CSE-MsgGUID: AwD9g5nEREi+TA8XFlZ7Kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="25014265"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="25014265"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 21:58:24 -0700
X-CSE-ConnectionGUID: cYqqsilYSYqGqzgfg+HOuw==
X-CSE-MsgGUID: M64n475uRDOArCUTUOukyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69279220"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 21:58:24 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 21:58:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 21:58:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 21:58:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=osKhpPY8B9/gfvWShB588/QvFvNqtzvOOOGREbG9gMtgS1BwAF3B+L/nrRGt6eNR1k52GOFR47uWtAfIs8mqXEm36NZanFgbqR9ELcT8yIdSZIGXmdcNVeTqgAb/c0GkD86I9q10HlnIO4dvtlLjwXg6oGEC3zS88awP2CUpbdqLt/6i3b7w4CwK3IPn2S+QFOCZDY7rv+PDyjUyONL57lS9Lp8UJ/z9VkxM/O3ifwP9gXFNo4f1UJBX4SBBLI7vczfgtfFfVigrwoEzbi10+iIP7LKeUwzOTZ+qSAlqtkc2X5URSuPto97h9Trfn4B8/OgKg/2zQWXaxESV7+/noQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4suVkKr/fG4HOQZV6mY1ona76IFxMoZeyvUNpA7Hhfk=;
 b=HYCdLaAFIAbOKcG0+LZbEZ9IBaGWWiz8cpPze4s0QLfKnuNbuypQ7+0IRkmeocOF2grYuIUarJYDF87MhC1BJFOtaMFfVM8E8923BD3ZjZMrgEHWzVA984Qj9caVlvrRGS3w278bMUqbx0rW8QyCsIlxvoL+iyTaWDTAPifNVIy4Yas6ItpKsR/ggJmTsrFEutY9G5CKLwg3tinywU7J5yQ4FJdi59yGf2yplQHdyh4xiu/PXFsgQgI8TFOxlCsfZwrErsIJOUc5sJaRMg+udZCklnA1KCJF4moXdxXMwK10AHlPVLonJXI7gCikqN0zqMw5jlcn3mLkur/oh/zkTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7601.namprd11.prod.outlook.com (2603:10b6:806:34a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Wed, 18 Sep
 2024 04:58:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7962.025; Wed, 18 Sep 2024
 04:58:17 +0000
Message-ID: <1921984c-4824-4c9c-9563-8e4d522b1351@intel.com>
Date: Wed, 18 Sep 2024 10:28:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/display: Enhance iterators for modeset
 en/disable
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>
References: <20240917082359.2383204-1-ankit.k.nautiyal@intel.com>
 <20240917082359.2383204-3-ankit.k.nautiyal@intel.com>
 <ZumEsRf6MS7H_Z6T@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZumEsRf6MS7H_Z6T@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0050.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7601:EE_
X-MS-Office365-Filtering-Correlation-Id: d6b483d7-7a18-4ff8-12df-08dcd79e8204
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SGVFeHJOVVZzK3htSlNBK0FaMlB0aWdUTEZvOFV0MVdrK0hNaTVXTkZCdHdS?=
 =?utf-8?B?VlRhTHBYQVZySWF0Um1KVTlHbVl2ZnR4Q1JXUmJUc3loaVRET2dVbWRwNlZ4?=
 =?utf-8?B?NW5pTjJvdmNNMHdDaEhRa3pnSkFpZXVJTVpacWhkODEzMHN1WDFLNmQxRHZy?=
 =?utf-8?B?MzhKT0NTSms1eWVXQzNaRkRjNDdkZ3lTRzFySmNJZFVkUmJXanc4M01xUURN?=
 =?utf-8?B?aEJOalpmTXJWM3RLK0VEdURWZU53TTdlaEU2Zytabzk5VjVOMkkxUTVzc2I0?=
 =?utf-8?B?RW5rT21jUnVqUVBtK1Z5MzdkcTR0cFowVGlWa0tldUd4azAxb21LV0R6SUo2?=
 =?utf-8?B?NVVudENZTUR4NzJaQkV5ZVdzRStWd0tTdlNGRFllNW5CS08zRkdPUmJadDJz?=
 =?utf-8?B?SFovYStLS2hZUmoyT1N5S2xmdDNOVHJqQ1BsMlVLNFNyNUFuRHdrbktleDZB?=
 =?utf-8?B?WXRuSDNIMEQ4NkVJRTYvTlRObFpUK0tJMTNtUjIwQWQxNGF1ZE1DeFd0SjZi?=
 =?utf-8?B?SFlPQjRpMUM2L1ZXL3dtdEd5WFJGdDF4bEVYRkxrMTNCc0lyTVJDSmx3Vk4z?=
 =?utf-8?B?TGpPdGd5L281OWU3bHc5K05xU1VOQjNhUjE5R2JUUUNHWlAxSDdLQ1dqdDcv?=
 =?utf-8?B?dGJ1aENDcExsN2NDbFBCQWttWDFiSmR1K0pVOGJrblJYWjFlSXpoVU0yTTVM?=
 =?utf-8?B?bGRyMFl5NWlVRFgxd2pPODZjL3JwNFl6cXVWR2s2LzhYQ2pYRW5pOC9oSkZu?=
 =?utf-8?B?Ym5Ud2ZYRTJNN1gxalYrTFFJQnpsblR5RjBjSUR1aUw0TUNyZC9NQVlMalk2?=
 =?utf-8?B?NUd5ZExTYWZVMENabkpkNXpweDFMUWZYTTlpNmNyNTl6aDhOd3Z6aGxJQlpC?=
 =?utf-8?B?QlN5YjFpaFJEVmM5Q0ttVDFqamR6V3Y2dEsxWEFOVWwrMityMHBtNmVsYzlu?=
 =?utf-8?B?WWo5WnBsdGhNbEFDWGVodStvUHZ5Z3E4RjRQUXhoSW5YU1c1TE5VdU1hY0Vz?=
 =?utf-8?B?Y0tWMi8zaEllNmtQRndzNVZYVUgrWmVQaTlUbXBJWjgvT1RoUWhNMXBIM3lN?=
 =?utf-8?B?cXZqV0VDbGRZYXhYektiWnVmbmJpV0pCWFJRT3gxZFpOai9MOS8vWEl2MzFW?=
 =?utf-8?B?Z2pvZ2FUZmxVTVJLSXN1VlhYS2FpM1pDbGdiSXlCWjBSZ0FHOWVWTTBkT1E0?=
 =?utf-8?B?RDVhNVdabkNlOUMwN1VJcHdVbjByYTU0NEpPZGN2WXUzdWhmSGZiTFZrbG1T?=
 =?utf-8?B?YThkQVFWeVBuVCsxcno1VlNnSzFUY1dnRFV6VDRDKzBBZnJoMFBNdm42ZTNa?=
 =?utf-8?B?bDZZWDZrRFBuc1YvSVFINSt5eVNZb2VrckVVcFZRWTFhWWVyRVZRampYUzRs?=
 =?utf-8?B?R2w3NVJ0dGlQUXNXSEtTNkJLK0daUTR5QWhkNlk1ekYvNnlvWlcrLytCcWcx?=
 =?utf-8?B?cU8yU0ZFUlNQa3BoaXFTOHdEQ0d0YTNhNG8wTzNQLzU0QnBFakdZUXRkR3hY?=
 =?utf-8?B?L0JQZ2p5eUVWS1NVamN1dkdPZWJTeCtwdmV0c2xndkJya3lCbms1dUVVMjYv?=
 =?utf-8?B?aFRYLzcrOUt1K1VUMmxoUGJBakdIK1lBbSt1U3BQaTd6OUgyMEJXVmpPU3J2?=
 =?utf-8?B?TjJaTStnQ0VROWZVaDZ0M1RiSXpoL0RmM2hxa0diandob2J2WmdQeWs4S2Jn?=
 =?utf-8?B?Qkt2Q1F2aTA4SGpkVkpadTV6Q2VRdWp6eWJYYUNuSXJJdHh2UUdaKzgrYUpl?=
 =?utf-8?B?MHd0M3pqRWpRdzJXQ0FIc0Fkbm9GM1hJZm0zY1k5SFk5YmJEaGkzVUZwcTFo?=
 =?utf-8?B?dkxTbkRleWdNUy81Ung5QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?czJDYXEzdGxzNmV3QU5kMWE4N0NRY2RoOU5YK08vSG5HS3EzdktLRXlNS3ZX?=
 =?utf-8?B?aE01MGZKd20rSVFNR1VTd3FzSVV1eFpVci9INXVuMnZzV2tIOGxKSnJFU3c2?=
 =?utf-8?B?V2xjRkJ6cmZybUFDeFZ3WkQxT1R3WW1MM2xrYUdSN0ZIOTlRazJCSzhheXZl?=
 =?utf-8?B?OUNlL0lmTFRvYVJDelJ6VFFyZzE0WUpDNDA3NEdoRVpJOGpGUVNJQ1RGOFM1?=
 =?utf-8?B?WjJQMHJmWGRaa3pQc0FVcWNHZ3RaU2c4MXV0TDZhbVJOS0tHZE1MUXFUY2hq?=
 =?utf-8?B?OFlVSjZsZ0hHZjgxeHlpYkhqYVF6U3JpOXorSENWek1kZFdQN0ZWd2Ezd1d2?=
 =?utf-8?B?OWx0RHkzN20rM1BZbERMUFN0SEljTk9McERKRFhZaER0TURFZUUxNFMvRjFB?=
 =?utf-8?B?UlVwMjRkdS9zMjdmT0dzTmx2MUxWUDJtdXVTMW55c0lSU3QwcFAvUlZ6VTUr?=
 =?utf-8?B?OExRYzVRdGg3U0JXKzlGWko3em1RUkd2VGN0ZVF6bnFmbkY4c0V1N0dmKzNI?=
 =?utf-8?B?aFNmcTZMZHZydGhzRWNMdGpVNG5ZUlE4KzVDNFkrbmZIcFpQRnZRVXFHV3Zy?=
 =?utf-8?B?QkpxQUtqZjloTjdWY1RZQmdUVmtkN3lsdEltSWUwYlBzOWhRSjJXZkMyZjBp?=
 =?utf-8?B?dCtqeDNxbld6eU91MC9rNUhsM3BaekRNOUFtVWdLcERPSlpNTHJXbFhKRnlj?=
 =?utf-8?B?dE0rWGhYRWFySzF0NksyQ2dBais5UEdxZm9wREVnYzV4WU9sMHd1WUhwTkNw?=
 =?utf-8?B?OWErOFkrTFpwQXZJNG4wVjNYenJxN28zRUFDK1ozdzczN1NpaG9Qb2syay94?=
 =?utf-8?B?Z3Z0Q3dZeEltUExrZ2hydGdWUitVRGxtRm5vYTY4U0E4UlhhcHNiTDJoQzhn?=
 =?utf-8?B?c2Q5UmVGaFdkcUx4TEtSandYczBOYWhIMmwrT3ZoY1dOQ0dqanFKdXFvR2xV?=
 =?utf-8?B?YnZTdjhjWmoyRHlYMVMrZDRSVW9ZWmFMaXUvQ3lVelBvTUdYWGc2MmJIbU1K?=
 =?utf-8?B?Zi9mZDhIalRYMmcyNktReEpnUlZTK2RRNFg3d0Q5NkZiWkhjazBZNndSZVZ0?=
 =?utf-8?B?Q0Q3c1c0SXBCSTdTMm96THN3cCtiVTlLcEg3YnJOdDFLREdmK1pnS0VESzhp?=
 =?utf-8?B?eFlmNURGVk5BMnNjMTYzSXlCZjQ0cUJxUXo1bGd4Z041eUVvUyttc2lKWkpy?=
 =?utf-8?B?bkFrR215bWdVSVFLZVVseFAvQmZwbFM4OU4yR0NUZkptRkVURmg0c0ljalI5?=
 =?utf-8?B?ak44UXpsd3pZS1lFRzVuMVZIR2JqaXp1cVE0cWhiVzhwK010dk5hUFNlNEZa?=
 =?utf-8?B?NUF1NEFMd29lRTdNKzRMSEdCc0ZLclgxTS9IamhKMUZKUFNlMlhOaWh3OEhm?=
 =?utf-8?B?T0pJQ0tsM2RtdCtBTURxMXZYazJPRGR5c21Qd2hLYjM1MnlqcTNJZ2J6a1dh?=
 =?utf-8?B?R1VQVW95L0JnLy93aGk5K1kySk9XL0liRWJ2SVVUemc0M0RXUTZuY2NYaVZO?=
 =?utf-8?B?Z3NmT0dVaHNpdUxCTGNvUDVTV05WN2hnQmlBSkhhNWZib3huOUxpTFoxWkc1?=
 =?utf-8?B?VWNiaWtLUkVKMDhPVUJaUGcwMmk1V3licitIWU8xbzZ6YkNHZzRKKzNvZmJL?=
 =?utf-8?B?R2ZoaDhBa2EyekdjdmJNcWxXb3VGd09lT01CQ0p3bjgyN0ovai9HZTBLeUMv?=
 =?utf-8?B?bTI3a0ZUSUQ3dkhwbFhDdm9NKytqeWVMSmxLajE4RFUyV1V1U0pVK0RJaEhw?=
 =?utf-8?B?TFJPRnordU8xcVYxcDBrMmVMYml3UG93ME1jdkRFU1cwVXBnTGZNeUFZYXlE?=
 =?utf-8?B?SVRPUjhTVHFVb3g4cXMwU0pUNTZHN1NBbUdzTk40bGEzeTJlM3VTdWYweCtj?=
 =?utf-8?B?T2NyNWk5OE5MZXVjOFlrRzhkUUZWZFhGNW1DdTg2ZDZ4bmFQSDJlOHhJTjdw?=
 =?utf-8?B?ejk1Zzdtc3Q3ZVQyTDM5WU03Q3NZWG1ZNzhuOXAvQ3RXVURRdWRVL0hQUEZG?=
 =?utf-8?B?UnBUMldCTHZTWndSQTAvSmI4ek4zVHpEb2JZUS9DY1E1SFZ2K05nTXdaZldU?=
 =?utf-8?B?K2ZHdVorblNxcDJ5V3Vjb3ZSZ3hxcGNMaDNjdlk3anh6YlJTUWd1anphb2ZH?=
 =?utf-8?B?VHVacVJyQU13U05RaU5YZzZHTkhpejNhOE1GOUorUlo5MEMvc0tzNFk1UUpF?=
 =?utf-8?B?T1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d6b483d7-7a18-4ff8-12df-08dcd79e8204
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2024 04:58:17.0629 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8OOKVo22DlliHEamxuF+rMdVgWngJ7AO8uEdR7132pM0tgpFFEHoxn6jPsM5sQYP0ja66QF6XzEIi3gVmwGoB19lTA6etHtkb34ea7aijts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7601
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


On 9/17/2024 7:01 PM, Ville Syrjälä wrote:
> On Tue, Sep 17, 2024 at 01:53:58PM +0530, Ankit Nautiyal wrote:
>> Joiners have specific enabling and disabling order dependent on primary
>> and secondary pipes. This becomes more complex with ultrajoiner where we
>> have ultrajoiner primary/secondary pipes in addition to bigjoiner
>> primary/secondary pipes. To unify the approach that works for present
>> and future joiner cases, use primary and secondary pipe masks to
>> iterate over pipes.
>>
>> If joiner is used, derive bigoiner primary and secondary pipe masks
>> and use following sequences:
>> Disabling : disable primary pipes followed by secondary pipes,
>> Enabling: enable secondary pipes followed by primary pipes.
>>
>> This works well with ultrajoiner too, as ultrajoiner has 2 bigjoiner
>> primary/secondary pairs (AC, BD).
>>
>> For non joiner case, enable/disable based on usual pipe order A-D, D-A
>> respectively.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c     | 13 ++++---
>>   drivers/gpu/drm/i915/display/intel_display.c | 41 +++++++++++++-------
>>   drivers/gpu/drm/i915/display/intel_display.h | 26 +++++++++++++
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c  | 14 +++----
>>   4 files changed, 66 insertions(+), 28 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index b1c294236cc8..60603839f495 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -3117,9 +3117,10 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>>   {
>>   	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>   	struct intel_crtc *pipe_crtc;
>> +	enum pipe pipes;
> Those should be u32 or something everywhere as they are those
> double bitmasks of pipes.
Oops, this was unintended. Thanks for catching this.
>
> But actually, I think we can just get rid of this variable entirely. We
> only use it once within the loop anyway, so could just calculate it on
> the spot inside the macro with:
>    for_each_if((crtc) && ((first_pipes) << I915_MAX_PIPES | (second_pipes)) & BIT(i))
> etc.

Got it will drop pipes.


>> +	int i;
>>
>> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
>> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
>> +	for_each_pipe_crtc_modeset_disable(dev_priv, pipe_crtc, old_crtc_state, pipes, i) {
>>   		const struct intel_crtc_state *old_pipe_crtc_state =
>>   			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>>   
>> @@ -3130,8 +3131,7 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_disable_transcoder_func(old_crtc_state);
>>   
>> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
>> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
>> +	for_each_pipe_crtc_modeset_disable(dev_priv, pipe_crtc, old_crtc_state, pipes, i) {
>>   		const struct intel_crtc_state *old_pipe_crtc_state =
>>   			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>>   
>> @@ -3384,6 +3384,8 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>>   {
>>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>   	struct intel_crtc *pipe_crtc;
>> +	enum pipe pipes;
>> +	int i;
>>   
>>   	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>>   
>> @@ -3394,8 +3396,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
>>   
>> -	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, pipe_crtc,
>> -						 intel_crtc_joined_pipe_mask(crtc_state)) {
>> +	for_each_pipe_crtc_modeset_enable(i915, pipe_crtc, crtc_state, pipes, i) {
>>   		const struct intel_crtc_state *pipe_crtc_state =
>>   			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index deacdf82e143..179aa7c66081 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -295,6 +295,21 @@ bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state
>>   	return BIT(crtc->pipe) & bigjoiner_secondary_pipes(crtc_state);
>>   }
>>   
>> +u8 _modeset_primary_pipes(const struct intel_crtc_state *crtc_state)
> We probably want to call these "_intel_modeset_..." to keep
> to a some kind of sensible namespace.

Makes sense, will change this.


>> +{
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> +
>> +	if (!is_bigjoiner(crtc_state))
>> +		return BIT(crtc->pipe);
>> +
>> +	return bigjoiner_primary_pipes(crtc_state);
>> +}
>> +
>> +u8 _modeset_secondary_pipes(const struct intel_crtc_state *crtc_state)
>> +{
>> +	return bigjoiner_secondary_pipes(crtc_state);
>> +}
>> +
>>   u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
>>   {
>>   	if (crtc_state->joiner_pipes)
>> @@ -1725,18 +1740,17 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>   	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
>>   	struct intel_crtc *pipe_crtc;
>> +	enum pipe pipes;
>> +	int i;
>>   
>>   	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
>>   		return;
>> -
>> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
>> -						 intel_crtc_joined_pipe_mask(new_crtc_state))
>> +	for_each_pipe_crtc_modeset_enable(dev_priv, pipe_crtc, new_crtc_state, pipes, i)
>>   		intel_dmc_enable_pipe(display, pipe_crtc->pipe);
>>   
>>   	intel_encoders_pre_pll_enable(state, crtc);
>>   
>> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
>> -						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
>> +	for_each_pipe_crtc_modeset_enable(dev_priv, pipe_crtc, new_crtc_state, pipes, i) {
>>   		const struct intel_crtc_state *pipe_crtc_state =
>>   			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>>   
>> @@ -1746,8 +1760,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>>   
>>   	intel_encoders_pre_enable(state, crtc);
>>   
>> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
>> -						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
>> +	for_each_pipe_crtc_modeset_enable(dev_priv, pipe_crtc, new_crtc_state, pipes, i) {
>>   		const struct intel_crtc_state *pipe_crtc_state =
>>   			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>>   
>> @@ -1765,8 +1778,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>>   	if (!transcoder_is_dsi(cpu_transcoder))
>>   		hsw_configure_cpu_transcoder(new_crtc_state);
>>   
>> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
>> -						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
>> +	for_each_pipe_crtc_modeset_enable(dev_priv, pipe_crtc, new_crtc_state, pipes, i) {
>>   		const struct intel_crtc_state *pipe_crtc_state =
>>   			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>>   
>> @@ -1801,8 +1813,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>>   
>>   	intel_encoders_enable(state, crtc);
>>   
>> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
>> -						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
>> +	for_each_pipe_crtc_modeset_enable(dev_priv, pipe_crtc, new_crtc_state, pipes, i) {
>>   		const struct intel_crtc_state *pipe_crtc_state =
>>   			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>>   		enum pipe hsw_workaround_pipe;
>> @@ -1889,6 +1900,8 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>>   	const struct intel_crtc_state *old_crtc_state =
>>   		intel_atomic_get_old_crtc_state(state, crtc);
>>   	struct intel_crtc *pipe_crtc;
>> +	enum pipe pipes;
>> +	int i;
>>   
>>   	/*
>>   	 * FIXME collapse everything to one hook.
>> @@ -1897,8 +1910,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>>   	intel_encoders_disable(state, crtc);
>>   	intel_encoders_post_disable(state, crtc);
>>   
>> -	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
>> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
>> +	for_each_pipe_crtc_modeset_disable(i915, pipe_crtc, old_crtc_state, pipes, i) {
>>   		const struct intel_crtc_state *old_pipe_crtc_state =
>>   			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>>   
>> @@ -1907,8 +1919,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>>   
>>   	intel_encoders_post_pll_disable(state, crtc);
>>   
>> -	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
>> -					 intel_crtc_joined_pipe_mask(old_crtc_state))
>> +	for_each_pipe_crtc_modeset_disable(i915, pipe_crtc, old_crtc_state, pipes, i)
>>   		intel_dmc_disable_pipe(display, pipe_crtc->pipe);
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>> index 894f58ead279..eeee03a9796b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -402,6 +402,30 @@ enum phy_fia {
>>   			     ((connector) = to_intel_connector((__state)->base.connectors[__i].ptr), \
>>   			     (new_connector_state) = to_intel_digital_connector_state((__state)->base.connectors[__i].new_state), 1))
>>   
>> +#define for_each_crtc_in_masks(__dev_priv, crtc, first_pipes, second_pipes, pipes, i) \
> Please pass in 'display' instead of 'dev_priv'.
>
> And if the callers don't have 'display' already available,
> you should declare one at the start of each caller.
>
> For the encoder hooks it's best to grab it via the encoder (ie.
> display=to_intel_display(encoder) since the top level atomic state
> might be NULL on account of intel_sanitize_encoder() being an
> idiot (someone really needs to introduce a temporary atomic state
> to fix this footgun...).
>
> For .crtc_{enable,disable}() you can grab it via the top level
> atomic state safely (ie. display=to_intel_display(state)).
Noted, will change accordingly.
>
>> +	for ((i) = 0, (pipes) = ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)); \
>> +             (i) < 8 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \
> s/8/I915_MAX_PIPES * 2/

Missed to change this.


>
>> +             (i)++) \
>> +                for_each_if((crtc) && (pipes) & BIT(i))
>> +
>> +#define for_each_crtc_in_masks_reverse(__dev_priv, crtc, first_pipes, second_pipes, pipes, i) \
>> +	for ((i) = 7, (pipes) = ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)); \
> s/7/I915_MAX_PIPES * 2 - 1/

This as well.


>> +             (i) >= 0 && ((crtc) = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), (i) % I915_MAX_PIPES), 1); \
>> +             (i)--) \
>> +                for_each_if((crtc) && (pipes) & BIT(i))
>> +
>> +#define for_each_pipe_crtc_modeset_disable(__dev_priv, crtc, crtc_state, pipes, i) \
>> +	for_each_crtc_in_masks(__dev_priv, crtc, \
>> +			       _modeset_primary_pipes(crtc_state), \
>> +			       _modeset_secondary_pipes(crtc_state), \
>> +			       pipes, i)
>> +
>> +#define for_each_pipe_crtc_modeset_enable(__dev_priv, crtc, crtc_state, pipes, i) \
>> +	for_each_crtc_in_masks_reverse(__dev_priv, crtc, \
>> +				       _modeset_primary_pipes(crtc_state), \
>> +				       _modeset_secondary_pipes(crtc_state), \
>> +				       pipes, i)

Here I had taken liberty to change the suggested macros to always have 
primary_pipes as first_pipes and secondary_pipes as second_pipes.

We always shift second_pipes by num_pipes in both in-order and 
reverse-order, just in reverse order we start from the last bit.

Regards,

Ankit






>> +
>>   int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *state);
>>   int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
>>   				     struct intel_crtc *crtc);
>> @@ -429,6 +453,8 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
>>   bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
>>   bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
>>   u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
>> +u8 _modeset_primary_pipes(const struct intel_crtc_state *crtc_state);
>> +u8 _modeset_secondary_pipes(const struct intel_crtc_state *crtc_state);
>>   struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
>>   bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
>>   bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 15541932b809..0be11db7d880 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -1001,6 +1001,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>>   	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>>   	struct intel_crtc *pipe_crtc;
>>   	bool last_mst_stream;
>> +	enum pipe pipes;
>> +	int i;
>>   
>>   	intel_dp->active_mst_links--;
>>   	last_mst_stream = intel_dp->active_mst_links == 0;
>> @@ -1008,8 +1010,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>>   		    DISPLAY_VER(dev_priv) >= 12 && last_mst_stream &&
>>   		    !intel_dp_mst_is_master_trans(old_crtc_state));
>>   
>> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
>> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
>> +	for_each_pipe_crtc_modeset_disable(dev_priv, pipe_crtc, old_crtc_state, pipes, i) {
>>   		const struct intel_crtc_state *old_pipe_crtc_state =
>>   			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>>   
>> @@ -1033,8 +1034,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_disable_transcoder_func(old_crtc_state);
>>   
>> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
>> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
>> +	for_each_pipe_crtc_modeset_disable(dev_priv, pipe_crtc, old_crtc_state, pipes, i) {
>>   		const struct intel_crtc_state *old_pipe_crtc_state =
>>   			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>>   
>> @@ -1253,7 +1253,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>>   	enum transcoder trans = pipe_config->cpu_transcoder;
>>   	bool first_mst_stream = intel_dp->active_mst_links == 1;
>>   	struct intel_crtc *pipe_crtc;
>> -	int ret;
>> +	enum pipe pipes;
>> +	int ret, i;
>>   
>>   	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
>>   
>> @@ -1300,8 +1301,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>>   
>>   	intel_enable_transcoder(pipe_config);
>>   
>> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
>> -						 intel_crtc_joined_pipe_mask(pipe_config)) {
>> +	for_each_pipe_crtc_modeset_enable(dev_priv, pipe_crtc, pipe_config, pipes, i) {
>>   		const struct intel_crtc_state *pipe_crtc_state =
>>   			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>>   
>> -- 
>> 2.45.2
