Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Y28PK52HV2p4WQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:14:05 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CCC75E887
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 15:14:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=aVTsYqE2;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97BA510F04A;
	Wed, 15 Jul 2026 13:14:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46C1610F04A;
 Wed, 15 Jul 2026 13:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784121242; x=1815657242;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SPesej56rP/Nz4sgKrYTAtC8+FRDAsBy4/uHAmC2Lqg=;
 b=aVTsYqE2nNiC6pDlUq8WLvM2CJyNbBXzr02YNKiX/0kCA5zrw0BNAjpv
 C6rN7yHVK4rwIJ/WU3F4U5TPIndbDIhml8XMxhKBiHCem529tv2l8UQQo
 0xq/IpJ+4E2IUvmc6aMwh7dZM8IE3wLmGIVP7EFGX8zwpt8GTSKqov2sC
 Brlua41zgT8m45W2k66Zv/H02FwIK15qh7JCp/pTaRiPejbZigBQu/eoW
 Kp//z8P2yg8yKOwyUKlKqOsHZRK99fYZLeBotR/cPKQjMg+5JqPkS5nKZ
 ZHdpfg9TnoBRdWXzsaj/dgLo1W2Cska9NOezNykQQOcmnD2b02Wye08Cg w==;
X-CSE-ConnectionGUID: R1WRxT5eQyi9XrRiSTLXeQ==
X-CSE-MsgGUID: yvHq4rtcThqFnAChPNDMDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="95403842"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="95403842"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:14:02 -0700
X-CSE-ConnectionGUID: +uttXcCgQKSOlKVpn3G2yg==
X-CSE-MsgGUID: xy5Jj7J7RMGclGnw4sNC4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="258138305"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 06:14:02 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:14:01 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 06:14:01 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.61) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 06:14:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XGxLW8L0bYZCldPwvwHqItgwmlaVTnvEIa+5lOfOjIzsCfuMgOC1n3lBwFwAxj11bDzGhQcP0TBB5ZMUjT1WHrqqI2b03A10hrhXqstv9u+NceSVnMIunYBrv//GPxG2tUH/RbizGAPB/T5/00BSXbpvIzBLI/9OslFe3xIL9pPXnniYfHvHjp9HQS/u1SQCQ+7ZxtnH5k0obYWQ8iTH9Jk/XyUzasFcmegt3VMTF/tQGOvK9yy2FJuIOcS2xTUyz+v5NfKI2a7+3WHsjj3c32WB2rqxYx8nim7k/m4MXCHN4pJvIdfLQOCyDm5Xy9C7EILDaed5hNkZ63N61cO4Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7jVRz2vsKTTFPVbwEPhCj4PowA92iDYQf613OhaijWc=;
 b=HwOFcnQ2mHAVPsIVr+b5sAjpezk1mnjp7Xk3f7MxzmcSTYWd1b2Z5UWKgWr4y+2+X+i30KJsPRjRaRumd8iiPp2RcM0HzCZMi2IB8om8SdLBDMZK0jdaFbQKd5IameXdybhoLPT3vPhQNfceDGYpi0f1y9zmLpqkGk7gT5MCQ5MKl64ewFHWFdbjAPIbL2XvKSHRQgbslesSDJy81xaFtcgzjhqfF6DI4kB6mmGBTtAlztC6wkF9BzWS5lDUhGFyheILKN6PBK6mnsuH4dQMQAizLeaZglWCCitnmxOGKVHUOkvjQk5NQ4R7xBHmc3nyxlW/+X+kyn56aO6Kie5XsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7636.namprd11.prod.outlook.com (2603:10b6:510:26f::13)
 by SN7PR11MB6558.namprd11.prod.outlook.com (2603:10b6:806:26e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.9; Wed, 15 Jul
 2026 13:13:58 +0000
Received: from PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b]) by PH0PR11MB7636.namprd11.prod.outlook.com
 ([fe80::d611:6fa9:bc34:46b%5]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 13:13:58 +0000
Message-ID: <93810ca2-67a9-4052-bcd2-838b585c5b54@intel.com>
Date: Wed, 15 Jul 2026 18:43:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/8] drm/i915/display: Move CMRR crtc_state members
 under VRR
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <uma.shankar@intel.com>,
 <ankit.k.nautiyal@intel.com>
References: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260714103938.2371448-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260714103938.2371448-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0023.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:177::15) To PH0PR11MB7636.namprd11.prod.outlook.com
 (2603:10b6:510:26f::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7636:EE_|SN7PR11MB6558:EE_
X-MS-Office365-Filtering-Correlation-Id: b92c39a8-9e67-40d4-e4ba-08dee272ee26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|4143699003|56012099006|11063799006|22082099003|18002099003|10067099003;
X-Microsoft-Antispam-Message-Info: GPqBfx/ADY9aGRWvUCkHF1o3l1w6pVshJYxMeu7Zj2K/qu7syW51EDRN4+iOCDaVDoU2wBhhiZbbvuUlPEsceEyt2Es8BXmjTZXscMkAcrQQc8qCjScrdrCSwjDAjAKmILs9yclo2vB+VN1ef4CvaO9yGXHo2wcAvh2LbESD0JtZGxn2KQyQCHfI5uRshbLSmSxSYbE7dwEhjMxEuAW/eG6G9wAmrdsuKCy2TcBG9IPGMa8pE7W/08trdj61kWeabCvJ7vngFCBrnnNIUBV03QYtZAsvZvOneEfhjwZmbcU7UlDBj1ql35A7iW12M1zQb2m8wqzgEbeexlun/UJBIlmPGDMqmGHcikRk0lYO/jUIvKQBIOPsBi1e5bWWpSr9E55wtSQjBF9zGeiJ8VW6RljRN1jV/ISGJJbX1HOEV1rF1B4+HmWvQ6O6/vaUB1nTNqnHNWCfDC5wZaIMViSstYMFYFCRit2GQD+s4lFAjBwdnYoURWGnfB5Xgw1VLbEHSUZKyY7sqebT70TwW5zCLFXygVWsREkJknwDnUVkKEL5CjAS71t5tpkTdlcZXALjuzwyuEG8xIbbcOKY5ZKKT8vFS+tmYARw2aPoBX9xn9cGD6pSIkeyOr577t9tv2omemPhjoZNzoBkaaPPc7u934Qja7KUS1QsaMb76v6/XEo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7636.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(4143699003)(56012099006)(11063799006)(22082099003)(18002099003)(10067099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2F4N3BCb3FkM0Q1bVJ4Y2JzNE5vWnp6bnZLVWxjZjZqVWVWUDhFTWFGOStM?=
 =?utf-8?B?dWVibnZQOTZMSXhFSmloUUtNZnZRVVdDQm9vSi9nejg5M0RvbDl5d3VmcU1m?=
 =?utf-8?B?T0dkRDAzdDJzMWpSV2RSMlB4RTR6MkVZdlZudENBQkZGdWc2T1paZFFUZUt1?=
 =?utf-8?B?RUdaK3YwdDg1ZXhobzJKYWcrUW80L0V6Z0w3Q0o1MkZvckJqaS9DN0h1aWJk?=
 =?utf-8?B?SSt6SGlzdDZROHlsZHNqWlZCa0w1cnhTTkNEVlVkTUZuMDhlNlBzTzlJcFI0?=
 =?utf-8?B?TVo3NkpXWHR5a1FiL09WNHFWWHZaLzF2UUhnRXZ1d2NnblhtM2NRdzJRaFBr?=
 =?utf-8?B?T3E4VzN5RWgxM3lJSWtpWGZldi9XN0FyUDNoTXZmUmh5aVBQQTllQ3JXanZE?=
 =?utf-8?B?cFZGcjFEVEFSZ1hpZnZ6L2MxYnBpbWx4cDI2bnZDdG10U1VGUjBmSUVLRXNX?=
 =?utf-8?B?MC9EUjhTWVNXUnF1U2phaWlZMm5Mck9DTUVhVlVwMDRpSnExMjY4NTdZaWhr?=
 =?utf-8?B?SjMvU1NMcDZmTnluUmNudlBXNzZEMUxWVmRic1AwWU9nUlRjVHduK3pOclgx?=
 =?utf-8?B?OVg1M2luVy90eXhGaWtTdVNpcXFJcTBRc3puYTJkWFQxaHMwajh1Nlpja2sx?=
 =?utf-8?B?SnVvMU5HeU1OL3ZrWWdaclk5UnpYTGZXdXRsSHhKMnRqWkV4a0ZCcmZBUWs1?=
 =?utf-8?B?ZGhFRE93YnJUOU1kcGtZSlFha2h3ZWVSVFhiQk8yS1Q2RmRxdStzNnJqN1VD?=
 =?utf-8?B?S3k2MXBWSFZ3OHFPTENCbHJaYU8xbHlramYwdCtRMzEvQVd5RUVubHlwZlJ0?=
 =?utf-8?B?T1dOOFI4R3I4NlBkT1NQZU1Ld1BMV2ZpbVN2Q0lSYmVvTmJVcWRKWkF6aVQr?=
 =?utf-8?B?RERGc0NvMDZpQzY4YUd1dEdnNzFLazhOcWRUQjRNSFEzV1NOTWlveWhoK045?=
 =?utf-8?B?dmpiOWJKa1A0dWxYN3ZNT05wUGpaTXlmR0V0Lys3Y0lUUFVwYU1BOVlZRmRp?=
 =?utf-8?B?cHpTTVd4S0szMGhjTHNlcmU5WWgwV0drcnQ2QURxTFdDeE5kWVJEdUtXL202?=
 =?utf-8?B?UUphYm02NURyRW5JWEROT3YwaGhpUUhjRGVVNDFPSC9DdXdJZ04wUk0wSEV3?=
 =?utf-8?B?N0dZZnZ1VGhRNncwU08rN2cvM3F1dG5sazBYcGR1UUIzZ3FpYUpOdnMwUUhi?=
 =?utf-8?B?SXJiWUpSZmlSMUpTMzdLTlRSM2hZWnJwN2tuSmZ2NGJvYnNiNG1KUkM5TXBq?=
 =?utf-8?B?QzBtd0tZQTA4SjN1Z3poTytubDg5MWlqbW9oWHZyODM1aXpoNVB6ZGcvVFpm?=
 =?utf-8?B?S2pMdFd4Y05wQ0xieUd1UnlBQ2NpZFdEcjlHbkJUYTNDd2RMNzNkRDBTVnN1?=
 =?utf-8?B?RVR6QkpscncvZFd3dysvd0xrQWx2ZGUwYUpZakkvZmdqYmpkb0dRcU84LzBM?=
 =?utf-8?B?bEN2UXJSUmx6NUczS05BN0k0bEYzTkNrYmdwdm1oU1pZc3JDWlQ3MS91T21V?=
 =?utf-8?B?UjhIeWJ0VHM5bFk4cCtWb01XYVpCd2RCaHlJUm03azRxcE1URGtoQVRCdFZz?=
 =?utf-8?B?cGkzQ1dTc2podk5WOWFjdXEvbUJic05BbXpTR1UwWFFubVVsRmYrYlhzaUJt?=
 =?utf-8?B?WElRQnRUTWlyMzRXalFYczIzOXpqTXpIY3FHUUV3WUsxQ21tY3FFUW9ySllr?=
 =?utf-8?B?UlFJdldaSFdpMWpCaElZUEkrMzZXRTFhZXFVR1Z0VmtlSmszdDVxaVFYdUR1?=
 =?utf-8?B?L01Ea0gvd2pSb2daTVgwSEtwZGV2RlllSnFwOEFlbE1hVjVoQzdST0tnZWpC?=
 =?utf-8?B?Tnk0aEE3SWppQWwxTXlubWx0UzREc3pMYi9qM1ROUUpYanpJSjd6U0Fid3Rq?=
 =?utf-8?B?VDBEb3JrNDFQb3lXYjZDR2VLSUNSZUIxVVdFdU5PVE5hZXBzVmVHNTh2R1Bw?=
 =?utf-8?B?UXRCUUxISjZOT0Vocy9qa0RrTjB0ZlNQZE5OMkdpaWY0VDhjT1JCejF0VTJW?=
 =?utf-8?B?V29pWmtlUlBtZ3Y1Z1ZISnVITWt2UHpOejNEWWxnWm5CSndwRTJpMVNVT0hF?=
 =?utf-8?B?aTJYQjlCRUF2VmZuREVzeS9SQnFvRHZwblQ3SjVaQi81NjFNdkF4NVJ6L3ds?=
 =?utf-8?B?VjgrN1NuMWw2czUxQTVIV2NpaE1xVHVPQ1hIZ2FKLytnNFhROWdzVHZwZk5y?=
 =?utf-8?B?SFNoZ04wSnlvTFQwQ3lLeG53eUFaTjh1L0drMnhWQ29wRDYwc2pEQ0t3UVdB?=
 =?utf-8?B?ekZvS3NJdVV5Mi85YTBMdSt0TjBlN2ZkSGVPSndOUDNCdFBFVmtSOXBFYnpY?=
 =?utf-8?B?OUh1dUNhdFd4Q2hva1NicmhsS2FxU2piSnNmUXRIKzU4TlEvbG84RWFQZVQ5?=
 =?utf-8?Q?s+/kIFm2EksHPvyfKBQoqPrVOIiqtW1K5oP9j?=
X-Exchange-RoutingPolicyChecked: sIzz/bGEtN6UoawyhGYxeuMzkEZz83+6bdAf+LoG/SENLsElfHwLTjWMeuKrbx9mFd3Z1fDqYfUDjA4q4l6jxgJb6mC1vXy4FsRQ5NghQkIDbjF1kuq63WMbCtE9wwbPzqFPeqATZdaIHPeJWQzLH8rYYGBddbfnbHh6AzAQKfA+dk2U8yGbgAaTG9MHTfC7JlzG9KRCloNrNpa8+VOQGvQra6pr7GWaLj1AeaMF6KOMLifa8GBJ7UeTe8+v3pnc4H/2cceznwP/Zfw/c3KXRWVvNpeXaaBjdfIjxAxNH6GI10x+/V4Ucl6EQIPpToQcz+4mRL5oqVpQa92yNk77hA==
X-MS-Exchange-CrossTenant-Network-Message-Id: b92c39a8-9e67-40d4-e4ba-08dee272ee26
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7636.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2026 13:13:58.4066 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TS3GL10+wtdPr3IM1D3/eQ63y1u7TmdhI6Ii+2XU1hYJKzknugzpaey0TZSSRn5KyDtjd6pUiQ5YHezqO7H2bKlSJU7GBt3uv+QoHTBasYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6558
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 14CCC75E887
X-Rspamd-Action: no action



On 7/14/2026 4:09 PM, Mitul Golani wrote:
> Move CMRR crtc state members under VRR infrastructure as
> it is enabled during fix refresh rate  VRR timing generator
> is enabled.
> 

it is enabled when the fixed-refresh-rate VRR timing generator is enabled

with that,

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> --v2:
> - Move cmrr structure under vrr umbrella.
> - Remove dups. (Jani)
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cmtg.c     |  2 +-
>   drivers/gpu/drm/i915/display/intel_display.c  | 10 +++----
>   .../drm/i915/display/intel_display_types.h    | 12 ++++----
>   drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 30 +++++++++----------
>   5 files changed, 28 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index c8e0f90af910..3c0f5b2fb2e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -326,7 +326,7 @@ void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state)
>   		  XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
>   
>   	/* TODO: The code below may need to be revisited once CMRR is enabled */
> -	if (crtc_state->cmrr.enable)
> +	if (crtc_state->vrr.cmrr.enable)
>   		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
>   
>   	intel_de_write(display, TRANS_VRR_CTL(display, cmtg_transcoder), vrr_ctl);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 214454f419e9..96e77e6a8725 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -950,8 +950,8 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
>   static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
>   				const struct intel_crtc_state *new_crtc_state)
>   {
> -	return old_crtc_state->cmrr.cmrr_m != new_crtc_state->cmrr.cmrr_m ||
> -		old_crtc_state->cmrr.cmrr_n != new_crtc_state->cmrr.cmrr_n;
> +	return old_crtc_state->vrr.cmrr.cmrr_m != new_crtc_state->vrr.cmrr.cmrr_m ||
> +		old_crtc_state->vrr.cmrr.cmrr_n != new_crtc_state->vrr.cmrr.cmrr_n;
>   }
>   
>   static bool intel_crtc_vrr_enabling(struct intel_atomic_state *state,
> @@ -5495,9 +5495,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		PIPE_CONF_CHECK_I(vrr.flipline);
>   		PIPE_CONF_CHECK_I(vrr.vsync_start);
>   		PIPE_CONF_CHECK_I(vrr.vsync_end);
> -		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
> -		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
> -		PIPE_CONF_CHECK_BOOL(cmrr.enable);
> +		PIPE_CONF_CHECK_LLI(vrr.cmrr.cmrr_m);
> +		PIPE_CONF_CHECK_LLI(vrr.cmrr.cmrr_n);
> +		PIPE_CONF_CHECK_BOOL(vrr.cmrr.enable);
>   		PIPE_CONF_CHECK_I(vrr.dc_balance.vmin);
>   		PIPE_CONF_CHECK_I(vrr.dc_balance.vmax);
>   		PIPE_CONF_CHECK_I(vrr.dc_balance.guardband);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 84a6d016e226..644a3f32fb5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1401,13 +1401,13 @@ struct intel_crtc_state {
>   			u16 max_increase, max_decrease;
>   			u16 vblank_target;
>   		} dc_balance;
> -	} vrr;
>   
> -	/* Content Match Refresh Rate state */
> -	struct {
> -		bool enable;
> -		u64 cmrr_n, cmrr_m;
> -	} cmrr;
> +		/* Content Match Refresh Rate state */
> +		struct {
> +			bool enable;
> +			u64 cmrr_n, cmrr_m;
> +		} cmrr;
> +	} vrr;
>   
>   	/* Stream Splitter for eDP MSO */
>   	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0922d23b284c..01ef34d9d358 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3090,7 +3090,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>   	as_sdp->revision = 0x2;
>   	as_sdp->vtotal = intel_vrr_vmin_vtotal(crtc_state);
>   
> -	if (crtc_state->cmrr.enable) {
> +	if (crtc_state->vrr.cmrr.enable) {
>   		as_sdp->mode = DP_AS_SDP_FAVT_TRR_REACHED;
>   		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
>   		as_sdp->target_rr_divider = true;
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 8b6e36ee9f55..b36026183399 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -229,12 +229,12 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
>   		multiplier_n = 1000;
>   	}
>   
> -	crtc_state->cmrr.cmrr_n = mul_u32_u32(desired_refresh_rate * adjusted_mode->crtc_htotal,
> -					      multiplier_n);
> +	crtc_state->vrr.cmrr.cmrr_n = mul_u32_u32(desired_refresh_rate * adjusted_mode->crtc_htotal,
> +						  multiplier_n);
>   	vtotal = DIV_ROUND_UP_ULL(mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_n),
> -				  crtc_state->cmrr.cmrr_n);
> +				  crtc_state->vrr.cmrr.cmrr_n);
>   	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_m);
> -	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
> +	crtc_state->vrr.cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->vrr.cmrr.cmrr_n);
>   
>   	return vtotal;
>   }
> @@ -252,7 +252,7 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>   	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
>   	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
>   
> -	crtc_state->cmrr.enable = true;
> +	crtc_state->vrr.cmrr.enable = true;
>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   }
>   
> @@ -645,15 +645,15 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   		return;
>   	}
>   
> -	if (crtc_state->cmrr.enable) {
> +	if (crtc_state->vrr.cmrr.enable) {
>   		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
> -			       upper_32_bits(crtc_state->cmrr.cmrr_m));
> +			       upper_32_bits(crtc_state->vrr.cmrr.cmrr_m));
>   		intel_de_write(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
> -			       lower_32_bits(crtc_state->cmrr.cmrr_m));
> +			       lower_32_bits(crtc_state->vrr.cmrr.cmrr_m));
>   		intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder),
> -			       upper_32_bits(crtc_state->cmrr.cmrr_n));
> +			       upper_32_bits(crtc_state->vrr.cmrr.cmrr_n));
>   		intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
> -			       lower_32_bits(crtc_state->cmrr.cmrr_n));
> +			       lower_32_bits(crtc_state->vrr.cmrr.cmrr_n));
>   	}
>   
>   	intel_vrr_set_fixed_rr_timings(crtc_state, cpu_transcoder);
> @@ -974,7 +974,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   	intel_vrr_enable_dc_balancing(crtc_state);
>   
>   	if (!intel_vrr_always_use_vrr_tg(display))
> -		intel_vrr_tg_enable(crtc_state, crtc_state->cmrr.enable);
> +		intel_vrr_tg_enable(crtc_state, crtc_state->vrr.cmrr.enable);
>   }
>   
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> @@ -1071,12 +1071,12 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   				      TRANS_VRR_CTL(display, cpu_transcoder));
>   
>   	if (HAS_CMRR(display))
> -		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
> +		crtc_state->vrr.cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
>   
> -	if (crtc_state->cmrr.enable) {
> -		crtc_state->cmrr.cmrr_n =
> +	if (crtc_state->vrr.cmrr.enable) {
> +		crtc_state->vrr.cmrr.cmrr_n =
>   			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder));
> -		crtc_state->cmrr.cmrr_m =
> +		crtc_state->vrr.cmrr.cmrr_m =
>   			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder));
>   	}
>   

