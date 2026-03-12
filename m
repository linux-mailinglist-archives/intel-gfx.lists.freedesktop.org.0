Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEIDNZuxsmmYOwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 13:29:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D49271C18
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 13:29:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BAB010E229;
	Thu, 12 Mar 2026 12:29:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l4SVPlaX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9358910E229;
 Thu, 12 Mar 2026 12:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773318551; x=1804854551;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8eXNzVPpFJGLftb3gfRsLHGG+IA7XpQZt5rVzX14mLk=;
 b=l4SVPlaXuwLVfCyHDNmg+fkQP9A0j/xgOREQDWJA2Uj5CsjvmizeWRhD
 ji7aenWJxzn+x1WCkcYiXGgHIfq3sZLo2adiACpruaaj+Bh2THh0gEp35
 9WLbBMFDZPyYDK/NTU4iQq2piw+zR0kg4uD//Zvc/T0qNgAM7eMzKbCjp
 PW2pK7zAtBrHK6HhMr2HXvBAdB24wQr1xjVG0aAJYsgoeMeANxmBrPJKU
 5KnlrM5KBJrPjWSSB3tG/PBuXy/LVg8fy00OqEgatqjKlqBCKtuMvTHZF
 kW+Uf73tyl0YQjDDNxrkI06lmc44xI6a3oCRhkppa6JeUd5Zv7n3icD/W w==;
X-CSE-ConnectionGUID: 7UPrNuUWRWODk62BedxNJw==
X-CSE-MsgGUID: WnOAN/TzSgKi5Hbf+gPlBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74375011"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="74375011"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 05:29:11 -0700
X-CSE-ConnectionGUID: YfhieQ+BR4KvvmQy9FHZEA==
X-CSE-MsgGUID: RGdb5yfxR9SABsFJkVhkGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="251298277"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 05:29:12 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 05:29:10 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 05:29:10 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.15) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 05:29:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A+hGgQINnvk/f1h48lsmXa0JoQwyf2AeMvTH1KmOWVuv+F5En+ZpiRoAhXjqmdKkVAh8BhAuc6DAB0E209TXsoH3umaYb9PYok0+QNG/OlVMQzrG7VHawBRckA2mHopKgPbE7cKvriUxSSBShiNBD1loaZPy4F7g8c4WVZ50+lvr1ux+NdYi39zVE6iq3PVF1S707nP9KbgjgbNsLLsbvg3i4TsJoTZI9rnWwWpkGWjM5zExyG/rLXik8uBjNLFor7SnJGq99M97ps3mFaRq1A37kVEN2Z38AGFhBr4rTQ84K2rNTHv6Z6SkdJ5bXENexySI6vI7L0gmPhvN31+bmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/xx4G7FpR6SDJaG6C0XjA/p/SiYlDQ+y+QanLy8vqaU=;
 b=SepqRCol7UFHHLG6UEWxWdr+gnupdfqRtvE7k6gH7Sz3noC0qaBnH5Jqlqd3HnOTF4Xi6XDl/5Ru5s1Cd34TLUyjYhKVZDNVoALsomqjDu0gzUvS6+V1w0eZ5HmQpqbGuQst2hantCgHcI/KCraswmIEf8gWPke0r1UCUCmH9VOdJ2OyviUwvlntpI2vyxeVOFn4QA8K6s2/fnuyhI2br/Qc+9d5RvfsRAggps8SlcuLlQ3yAb7lGoAfcH2MMavExfZLrhjGsukPM5HO7aPfYB5Op6pkkYRcECaLuxLbYWBe9tu2bLoi53R+G21JUgm++lTTUkszRcsJfwcrAtGmfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by PH7PR11MB5915.namprd11.prod.outlook.com (2603:10b6:510:13c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.6; Thu, 12 Mar
 2026 12:29:07 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9723.000; Thu, 12 Mar 2026
 12:29:07 +0000
Message-ID: <dcba6eaf-1f57-4094-be69-0c8d116f92a7@intel.com>
Date: Thu, 12 Mar 2026 17:58:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>
References: <20260311063259.2608206-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260311063259.2608206-3-dibin.moolakadan.subrahmanian@intel.com>
 <DM3PPF208195D8D8D1894ECDE4A41681332E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM3PPF208195D8D8D1894ECDE4A41681332E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0185.namprd03.prod.outlook.com
 (2603:10b6:303:b8::10) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|PH7PR11MB5915:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a2cef01-07ed-4e5a-2006-08de8032f45f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: CCUFY8LvmdZD5+fong/xwa5qAqYr3AY8L7GiHp7DsXXAngXpruW7nmcAjIEJpS2M1npfrjgsyV+wJpsvCe6GJP1E1b2iYJC/Dn9dSalkzrAWhJqRWeHIwZPj3KfBLFyxxQIpLR5xL6HGrtCDlUf7cAkSEwR6tgeTQGg+ZnXE6bT+Tqcn8/hzrn3e6Lhw+vA9NpDRmhDArFfuy0n133oZxEP8s1JLo9dK5DTpvnodHqmt6LRi0geeidNJZI6sAsa///sPKOiTXHXaUel+gV7k2i5tBVP8XPuVKDkOXzPDSkAr85X94IyhmAS+BPLSfvQvVlUxRGrCzY+p9A/qKCVVezP5LhlJbiKJnbwO6q9t42cxssAQNMqtbGyLdj/jzqg2VGd4H4g26jwzUqkL+2NrXXIUBJq4Qa/8K0EkVtH4mFLw/JSGGpX+KLG6ozW7kReKpIzr/hlA8Wdf+mO7PnY1sRQrNo7WV6U190VAVCfpTwnKh3fHLonUzgfgJjSSpjYNVT+yb90gz/PbKBwzEhZbp9I0oLJNu8Nr+hOfn/Krnihj4TkrUOHVHYDnlQiwQZ2GoqdgmozJXhj4LA0YnCSD/M0XCEEGd/6Ms69sfjlCpAZcQ4MI9974CN8WFG5Q2u0JIbsT1P/THtH7u4NfXRCeUfSS4Ij5Vc3PSeq6eVibF7thCclj10I5DpQy8tuRpfRsY3az/kVssOEtDCUQWOUH/A3AvI5fEunU+qC7bpT9SFE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHdmNFNFTDRqOVBDQjl0V0NYT0FVMHljKzRxbi84M1UvcWtMNE9BMUovUVpE?=
 =?utf-8?B?TlVhK0NUUHBCQWlQS3luUWloNjVRR1RzMGFzNk1iWEhaUTR2RXVSU3VpMFh6?=
 =?utf-8?B?QndtNGlkcGdMSkpGYzlwVmNaajFTRnhDMHI1WnJ3RUxaU0todHQzUG5FN3lX?=
 =?utf-8?B?M3Q2U3BoMkpub3QvUm51aUlHdXJGby9JeDdCWFE2aVN3anoxZGNxNGVBcVl4?=
 =?utf-8?B?ZmcxVTJURkI0L1BDeDMyL0s3TjJiV1pObnNSV01laWd6NDlBZitEblV0Tllo?=
 =?utf-8?B?dWgwbldIMmswWlFDYXF2eWZtcjE0QS90dnBYNU1Ld05kTEErc1ZOaG9VVkZs?=
 =?utf-8?B?VFFMU0M5L21YcG0xeTJPK3hjOVE0c0taN3dtL0M2bDlNL2tZQTNCNmx0VXh0?=
 =?utf-8?B?b2RlSHovMVVaMy9GYU1aSkNuQjI0aGxXTFhYdEhCcmNUU1FncTlldDh4aXp6?=
 =?utf-8?B?WU8wbFRoSk0zZUlQdTZpK0d3TXNtczBwZXYvYTNKY01pYVNJbmRwN0JjSUxq?=
 =?utf-8?B?eTU4cE5EWkV3b05XZC9sZEVkcU5MY1VOR1F1RXJtS0V2em9pdi9UTjJsWlpl?=
 =?utf-8?B?VisvVFBpNWNMSHpOMFdjU2dNdHZkZEVsUFpVZTl1TjhyZ3FNNkFGSGFIb2Jw?=
 =?utf-8?B?SlByZCttd29yd2w5TnVGL0kyMXllVGhvd2I0cmE5NEdZR1N0U09nZUJ2cDhN?=
 =?utf-8?B?R2ZhSWg5SE9KdmtwYXlsemt4d05rTUdEdmdJNjU4VHdQOElFd1hjYzVqRVJW?=
 =?utf-8?B?aUFwTmUzMjkzMFJ5b3FnK3RRRkhtd2hYQS9YQTJteEVURmNSRGxtSzZBV05R?=
 =?utf-8?B?MkFVcGtMTGNNYWpWVUZTeFdYd1BYdVd3aitZOEtNQ2hRL0YyOFB3bEZzUDJj?=
 =?utf-8?B?a2tBV3RUR1Z2MnJ3c3NoWkhOdHJZd2x2bEFFc0NsNVNuWm1FV2VXNHNZZTRK?=
 =?utf-8?B?Sm5jK3VnZE5HbStiWUpHUlVIVkY4Z2dDdlo0T2xqS0gveHRick4yc2ZxVldY?=
 =?utf-8?B?RTlkd0N0VFRvUVM2RW5ZVllacTRORXBpR041UVFJSUJWWFd0alNRMzZBcHhB?=
 =?utf-8?B?aTEwalFjUHRSSnE4My9xM3ZsNlF5aE0wVHh4ZzIxYU9lZVVIRGhsdzZqaUNn?=
 =?utf-8?B?M0pvaUdBdXRuanNUWTc2RXBKVVI1a1ozcVp1M0RWNCtOVlh0SXNlNXc5d1I5?=
 =?utf-8?B?alhwdHZmZXZrM3pBNHNxK0VCUUs5RXZVZnlRQzFXcHZjY0VSUTA5cE1qUkFl?=
 =?utf-8?B?alhrWWtWdDhNbkc0WVhRUUZrZVQ1blJTRFFEdUxycU9zdE80SkV3Y3hGWi9u?=
 =?utf-8?B?aktQb21VaVV1YUZGVy8zR1d6UCtuMTE3eFgyVmdYUFhIVGZlaGVjTUE5bmxu?=
 =?utf-8?B?eUxYL0dHbWt5Mm4rQnJyNHc1NUV2ci9JVVoweTlBTW9kVzlVYWtUTXFZbmpm?=
 =?utf-8?B?SmR0MU9EQ0tNOUdLVDBQZ1F0Qjd2bnNrZW5Rcm8zWFV1SXZWRll0R2N5cGpl?=
 =?utf-8?B?SHU5VTBMVW9pYU5ubytKTS9uRURsb3R0UDZpNlVFaUJhVk84dnQ4a1I1a3lR?=
 =?utf-8?B?ckxCN0FBMzVHcCsyb1ErblFLQS9SYTRSekR1VWE3Y0E2U1JVT0FSSHNTdVgz?=
 =?utf-8?B?N3FHRW5SRUozT252NkUrbjkrVS9WZDFhcW15RXBpc0FibTRjbzVVUUxaZUZh?=
 =?utf-8?B?WDVOQkpLRUlKRnhNcFl1d0RTVUU4OUNybTZncjJxWmdFMndNaWVXd3ViemFl?=
 =?utf-8?B?bmFENmlUOExNZ0VOclFUU3NBZkx1VmYzREJaT2gvMVhNb3NtWEJTcTd5NERn?=
 =?utf-8?B?aDd4UEM3MEpiZVV5WlkzcUJOOWZ1N1U3bnkvZUdUSlArdHVkSlQ4eGRjVnJS?=
 =?utf-8?B?L2tDV1dhSW05MGhtTklETW9abURoaXQwK2FmRDZBMk1zbnZ3WTh1enBOOUkz?=
 =?utf-8?B?WkpNMG9pRlZaU290RnV3WG1ySnRiNjM3aSsxTWhod0tqOGJWdHVsNFRMYi9h?=
 =?utf-8?B?b3d3UlJIUGltQUR2azJUc0JBREZmd1hnQ1NsSGhVd1J0U2ZUYUhGRFNUUTZo?=
 =?utf-8?B?UzVEaUs1UWt0YndnOE9rdURreWNYOWtwN3ZNcWF4dzRhRWVGcnJIRDgvTk1Q?=
 =?utf-8?B?LzloR3ptVEJrUnNRV3pidG12QWtEYnM5bW9NcUNjSVVDb3NhTk5UcGs1K1Js?=
 =?utf-8?B?bThyVDJrcG1ZTEV4cEhEOHZlWGQybmVDQXBPVFgvQmFHK0tvWmpoZUNkZ1lT?=
 =?utf-8?B?amlEQ04reHhtM2czQVFBWTFVSmxuWU80bGlsM3ZLTXFQc1YwRC9Ib2hBRldG?=
 =?utf-8?B?VmFIQzllQVJ6T3RzQzk3bkNxQVBoZFZSOHRZbmRpMlFVWTRaWTYrcG1udk1t?=
 =?utf-8?Q?c6F6KKZ1SbzhDLu3/lmxtyYqmI6pTOZRAsJAum+OJ9RMp?=
X-MS-Exchange-AntiSpam-MessageData-1: aScNHmEi9CgXPw==
X-Exchange-RoutingPolicyChecked: MxJXhEGnUhJW1sREaxDlYHfHAuLwBAWZWAr6yp68PKdhxx6xy7H4d/3ESHjlv9f0HfuATMSwAGVGO9gzzimLlHESHBSNODZh79Sma1/mkqsvO0CqTi/5Tr6d4WhBMop8HV8IyYJRN7NtDYj1gTGSMQViscCO5+bu9P92sBv2JjczL29fTQ2QrWdppVJvMs92roGFJqJt7lY9KgzBD6rvc4oe6k6w1sJkva0Z1v1wFmu3MqwAvqa21ddC7KFObOcSAEPHoIAF4ZtRdp8x1k50JGAc9+UPmDRS0baudjw+pIAv2Joc2H54rtlWLXP7Gym5ehwuGNVWGgNuTUFwRJkyxw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a2cef01-07ed-4e5a-2006-08de8032f45f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 12:29:07.1645 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l99oyrYmXzXxZWqZ8vhAxX3Ay7MznmknxNmzzxr7QMeEsjz51lhakAj+0T3H8EbFsC2g3EWo7MkTSkzM8hkY0IPfgqVzQg6Zy4BFxjKLXl4D5pglZimRn396DLAK1BLo
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5915
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 43D49271C18
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 12-03-2026 08:48, Kandpal, Suraj wrote:
>> Subject: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
>>
>> Enable PIPEDMC_ERROR interrupt bit for display version 35+.
>>
> Add same Bspec link here too
>
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dmc.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
>> b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index 38b284a0db82..e60f1f977070 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -510,7 +510,8 @@ static void pipedmc_clock_gating_wa(struct
>> intel_display *display, bool enable)  static u32 pipedmc_interrupt_mask(struct
>> intel_display *display)  {
>>   	if (DISPLAY_VER(display) >= 35)
>> -		return PIPEDMC_FLIPQ_PROG_DONE;
>> +		return PIPEDMC_FLIPQ_PROG_DONE |
>> +			PIPEDMC_ERROR;
>>
> Mostly looks okay but here's my question:
> I know LNL pipe B had an issue with PIPEDMC_ERROR being triggered on LNL pipe B,
> As I can see from Ville's commit message, but is it still the case for PTL ?
> Can we have that tested ?
> If that works we can add the PIPEDMC_ERROR from PTL onwards.
> Then here we can change code to create a mask and then return it finally like :
>
> mask = PIPEDMC_FLIPQ_PROG_DONE
>
> if display ver >= 30
> mask |= PIPEDMC_ERROR
>
> if display ver < 35
> mask |= PIPEDMC_GTT_FAULT |
>                  PIPEDMC_ATS_FAULT;
>
> Return mask;
>
> Obviously that is if PIPEDMC_ERROR works on PTL properly.

Thank you for spotting this, I think its better to add above  logic in new series
rather than combing with 35+ bit mask update.

Regards,
Dibin

>
> Regards,
> Suraj Kandpal
>
>>   	/*
>>   	 * FIXME PIPEDMC_ERROR not enabled for now due to LNL pipe B
>> --
>> 2.43.0
