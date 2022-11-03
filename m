Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9468E6177B5
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 08:37:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3341610E5B3;
	Thu,  3 Nov 2022 07:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BCB910E5B1
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 07:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667461062; x=1698997062;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+FlMnkooBVhvrgV9NfScxJZKP+EZzWa7q/PW1CEzBg0=;
 b=VZXu7elws4WwEYzE5fU/GaJKI28XAQkyy3oIaxIxia/JAN4rUYzHSMjj
 ZKIhiVLtd/1El2d4xJFrbC1Rya+17KL9ZwzXGy2/mCft3XDm7bqwrefA5
 egigZJTggXctEpYsMIxz/s8Aqdw/Ym2uV6CuQ2HPjzNyTzdVmRI8qNeMZ
 qh+o4iMZ/mDvZ9msrq/DWr2my+q8TVC3QJtoPETaHzZiGlv2x9r5CFcbK
 YQZ+dIWIYy3UFAInKQ5XD987eukrkQW59nxk3NqyKJCTl7kkfg7hwe/ZC
 qa/o1NYcSkgnTaAQDS4GKxtjKtc3ekevnRdQMvr87Oosj4mnhwqgD5gnk w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="311338932"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="311338932"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 00:37:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="698117985"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="698117985"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 03 Nov 2022 00:37:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 00:37:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 00:37:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 00:37:40 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 00:37:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D5Ce0h4SBwCbkzlR460snQkrSm/jmObdIeaQKOrxSFUN03TyX8ZVy4aSVTr+HCalOmhrKXJfC5Y3SjIo4iOjh0XovfH4vSOIYp86Uf0nPbjyAV1SMfPHY0sCWUITEtchAmj++JZamjJHwhKg5uJaQIHObyTEQJa5Fj7FpQoC02iLnvchUWzkM19+lcNNeYNIk7Yf5rle0s1qlXgLHLdOczt72gu4F6kRVqjLnQ2cUWF4vrQCrEXb+TWFCQ7MGytu3W6GupxaUZ2Qx6T+zJdhkriu6KhU4EL/TPWYMapPeu++oH0Sv1Esyg4zumwUaBlozw0I8DNl8qHoIMuboMm4pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MjyvrqSCivU3TJ0H7mXtduAa7/2TSDUOMtrzAEJT9iA=;
 b=BtODos9p8i+x4DrfZbcHdg6sXmvAqOOFuA6RkPXCEk3ta/UYh4g4Ph5m2HtTp5CuLjWLNZqhxJnWetIKgWnNCDU7fDVWy84aWjPlXjnTaFYRHKMTZFAyynO9/Vu5klfH8QeOlJ7MG191a30NnZAt29y52oXOfRyIn1YwJ1fhWW0s7i8jnr1Mvw30mp/nQ2r8LnkTCaKtljhrABHMidVQ86F4orexQiSAld0YFBPbTBOarw1JBmNRdVr4CKjAWOWCWGPUjTvBFWAlGUkGRPyv4IY83pg6xALv96QNW9K939eKca2zX9p+FAAq1aoeWQo2Blgl+grh+fpIIBl0QopBmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL3PR11MB6530.namprd11.prod.outlook.com (2603:10b6:208:38d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Thu, 3 Nov
 2022 07:37:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 07:37:36 +0000
Message-ID: <decb82b2-9124-d210-36a2-85b9d41525c1@intel.com>
Date: Thu, 3 Nov 2022 13:07:25 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-7-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221026113906.10551-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0181.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL3PR11MB6530:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b510be2-6686-4418-166d-08dabd6e46cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zVxO3/EoXyXDEhMj9cEYQUzlYP3e9qj3NB9NdI0MmXn5sc5ZsCX49XqrY198RGhwSj82KWMIg2CmriAj+s9QYf9fjje8oA1udT3C+EYMkvpJEphhTiBg0hq8H9N2VrjW1jBH5w5NrZYm8zlWRh6Dzc02LWV6vO7LYFxxW4egpGzxzzrADnXYTs1X6qmD2xThV22heA9XG8VK9g4DTMNDoGwcDsvtySsdKTPay4nSAPt5r4RWP3M+Ms3m6zTkkrSR6aS3Z3IpB02P89RTn/7gx61odzLIWs/VMU+YlK7CITtFZwUq2+cx7b7MSoGeQgTke7JQS7H4HZ4zWBXHW5ww/ExQSigk7c16BJVqbqTzt/MPG7qYVRsGWC3OzlCzdlcFCIuiv1gMSrgct2dAW9IJzA/5qNZChMYx09l5yAGOMQjOJw8AoxpI9fk1Lu9NXdyIQ318AWjeRPUSmln0OTmzIYAV9Dz1HMTGsLHoaEHwtPLcT5cQeTRANHlysEHXdSw4e3v7wgvObpeoy7hQ2t/vEy842d7isLWHJ8Iea9fiFTf6q97eGxnL6nZz91NQXfkG5cxSKjbZ6vs3W65/eixOYcdaFzsvWjtA0MCYRDxBmcl7mTWmKpWqyX8fQHraWGlUR2XzlAyA0x6ORqwX+bxBLB5JMII/t4aZ6Hn9YPqc6xkirLak4vt4SeUlMGpPhpPMrE04UQrIhkFAr+YwcZouBUqKoddaN+B3yjk7WLn84nnkUITw9RBdBfZ+q0XKWZSAUDmc3GAUZ8Go2OgkBwvLZvPDOp9NqasVFbdSww0blvA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(376002)(366004)(136003)(396003)(451199015)(2616005)(83380400001)(82960400001)(38100700002)(31696002)(86362001)(36756003)(6666004)(66476007)(478600001)(31686004)(8936002)(316002)(6486002)(2906002)(186003)(5660300002)(53546011)(6506007)(41300700001)(55236004)(66556008)(8676002)(66946007)(26005)(6512007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WjJUZFZ2eXQ4U1dWdjhvQjJqRFRzVnh0SzN0RFZ3emxXTUU4M0NEd1pIZjlq?=
 =?utf-8?B?U3N3N0tTZ3oycW53NjhrMUtGQ2ZkNDJjNUVnQWJmOGdJMzVOcUR4cFdOR2Ey?=
 =?utf-8?B?cVJvelhEdFdoWndyMDdMTWtiVDhwRG05MmdtaVB1MGhmSjJuVjhMY2dEeGpH?=
 =?utf-8?B?YUY5OFNodWN5Y1ZXdGcyakF3V3lIeThZT1E5L3pZWlBHTnNUamxzU3kwaTBr?=
 =?utf-8?B?WWNBc1JPZkZhcnB1eXVSdkVELy9DcFM3REprUHNTQVpBYWNMMTc2anNNNnFJ?=
 =?utf-8?B?V3p5OXBCbExJMWQ4c2JsVHFFNlRoMWxZcXE3M3VsN2hYRklYV0x5Qm1mNFc1?=
 =?utf-8?B?THpnM0FtYlZuMjlLWmtJdVFkSFpScEIwQUpJZlJ2R0N5Qkk3Wm01QlZNUGo2?=
 =?utf-8?B?U1NRd1FMcVZxVHJCVkpFMm5IZTVvMjdXdjBkdFB6c01GVCt1N2lXekZaVmZG?=
 =?utf-8?B?bmZyS0ZTT05ERE16dkVUYUNsemFHWlZzdmM5cHlCZDh3TnhKVDJZZnk4K0ZR?=
 =?utf-8?B?bDBueXZnaUt4Wm02YVVRdFpEZVUyUGVYdTR6aU1McmNWZ21mcjl1K0ZnMG1X?=
 =?utf-8?B?aHR0Vm9TT0I1dHpyQUJsdXNsNG50UXpDR2ovcGpsall0L1VSdy9pK01iR2cx?=
 =?utf-8?B?MitxdzZNbnpIS0UxaHhCTFFsMFgwZytQdU5HNytRU3BmY1FtMU1IRkZabnRW?=
 =?utf-8?B?T0grbjdDRXpPSkFQbVJibkxJNWg3QkNQUzNDSHBzLzE4NWQyYXZ1ZlJnTEFR?=
 =?utf-8?B?a2ZMVFBZcW4wd3labFJKd09lcnlISTRYMHhjMjdUSmt5OEV1UUpoQW1jN3Ux?=
 =?utf-8?B?dkpKYnpPOWZiekdnckZ2YXlIQnFHNDY0cmxLeStmWlVOaVowRXh5WmsrTTFa?=
 =?utf-8?B?cTRUYUdxZ0JWTTR4T3RNcXpRSzFncnV2SEZDNjYyTjhySmV2S1V0QkpmeWNm?=
 =?utf-8?B?Mml4T0ZrajFXZHd4YVFLUjFpNGhqVm1FdmpTQy95S1NLZDkrc1Q2OVVTNG1Z?=
 =?utf-8?B?VWd2M1dHdXNGdDdiVGhwYTQyK3pNRWh6MzQwUHc3a01pTkVHTk9mOUFqeVJ5?=
 =?utf-8?B?Z1lseEFsMlZ0WjA3M3Rid1RTYlFHK3FPbjNCTkFRbUdGTXVSU3h2TllOcHox?=
 =?utf-8?B?UGtjNlBrQ0pNQ1NyYndqMW5Uck9jcm1mcVlDUUtYZGRhNVg2UVdXRG1VVVpm?=
 =?utf-8?B?dWY0WWtFbWRNWU9uUW1OZHFkTXA4MlNJNERUaE44VFg1TnFFRllibmg2NUI5?=
 =?utf-8?B?V1pEajlEeFk0Nnk5V3dBYUFHVXVZU3lMS0ZiZEp4c1kxbkhDU2gyeFZJTGFN?=
 =?utf-8?B?NzhnbEIwY1JIUTlmQThxaXhkTCs1ZXhHMWJOcVI2QWJIUEZNdUYrY0V6UTgw?=
 =?utf-8?B?NHVrS3JDTUs2QitpRVdpZzB3ME4za050ZnVsaDFZQnpqZUtvSENGa2U5K0Iy?=
 =?utf-8?B?TUJnWDF0elhyeUlRYjIyM2FRYlJRdUtRaDFWV1dFWUJvNG1UWTRxemY4eFhY?=
 =?utf-8?B?M0xrUVRiU1czRzMxNWZGYlZxS2dMbEhEa3pUZ2tQREdSUS9tYUhKL0FYczJ2?=
 =?utf-8?B?NTJYOVVzZTh0L1VnS0ZJRTFISmsvYjZSd090cUxYU0tVczRkU01QTXJkc2wy?=
 =?utf-8?B?blU4N2g0MGRWTzRzbDZLVVBJbWhMb3YzTjdrZkVlOVdRMzdDTVpVVkxMS1pY?=
 =?utf-8?B?ZEc5MUU0QUtXMzFjb1ZQbnJjSTZ2cTZORzJqY3VjMWZBbWNOazFCbUtpWFhw?=
 =?utf-8?B?QnlwYzZwdkZXWlFRSlZ1N1JSc05zeXZ0bktJWmxPMC9OZ0lKak03b2xHWHZs?=
 =?utf-8?B?RStXbUNIMGwxZzZleWwwM0t0UEw1RmVVQW45WEY2TnhKQzRkNEEydmZ6SmlV?=
 =?utf-8?B?bUZ1ZnhMS3RiK0tab3R3SGtGL1FNSWxZdDZCSFphelRvZ2RtT3RPc2ZSVytZ?=
 =?utf-8?B?WkV2MDdiaWwrYXRTMDJvNjVNMnJnRU5jSUxqM3h2VnI1S0ZheVBzOTZoS3Bx?=
 =?utf-8?B?cFMvUTBSWDZRdjIzbTAzRGdSckFLUHNWaWxHd2p0ODhwNDdOM1AwUkltdkxU?=
 =?utf-8?B?YlN3Rk5tTkFvUVlVQWprSXN5Z2dzYngwRmllRWF2dUtlbXA1djlGM2l1REtt?=
 =?utf-8?B?OTNQQ2l5Mjd6NnV1Ym1OZ1hOMUFidTh0bVVrS0d2RlhicnVUNXdNQ0phUnNp?=
 =?utf-8?B?SVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b510be2-6686-4418-166d-08dabd6e46cd
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 07:37:36.2619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qiAm2En6EbvyWJ3q158+KnAvMsXMAygnvJGMyxEEnoekqxpjLLJlA19fd3BgDO02eiDXmbzVRI/y0aKw3/3r8moUb/i+NXCZI/8ooWmLX2A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6530
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/11] drm/i915: Deconfuse the ilk+ 12.4 LUT
 entry functions
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 10/26/2022 5:09 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> s/icl_lut_multi_seg_pack/ilk_lut_12p4_pack/ since that's what it is
> and group the corresponding "unpack" functions next to it.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 38 +++++++++++-----------
>   1 file changed, 19 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 3b78b882e0c0..e881c95ee451 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -482,14 +482,28 @@ static void ilk_lut_10_pack(struct drm_color_lut *entry, u32 val)
>   	entry->blue = intel_color_lut_pack(REG_FIELD_GET(PREC_PALETTE_BLUE_MASK, val), 10);
>   }
>   
> -static void icl_lut_multi_seg_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
> +/* ilk+ "12.4" interpolated format (high 10 bits) */
> +static u32 ilk_lut_12p4_udw(const struct drm_color_lut *color)
> +{
> +	return (color->red >> 6) << 20 | (color->green >> 6) << 10 |
> +		(color->blue >> 6);
> +}
> +
> +/* ilk+ "12.4" interpolated format (low 6 bits) */
> +static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
> +{
> +	return (color->red & 0x3f) << 24 | (color->green & 0x3f) << 14 |
> +		(color->blue & 0x3f) << 4;
> +}
> +
> +static void ilk_lut_12p4_pack(struct drm_color_lut *entry, u32 ldw, u32 udw)
>   {
>   	entry->red = REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_UDW_MASK, udw) << 6 |
> -				   REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_LDW_MASK, ldw);
> +		REG_FIELD_GET(PAL_PREC_MULTI_SEG_RED_LDW_MASK, ldw);
>   	entry->green = REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_UDW_MASK, udw) << 6 |
> -				     REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_LDW_MASK, ldw);
> +		REG_FIELD_GET(PAL_PREC_MULTI_SEG_GREEN_LDW_MASK, ldw);
>   	entry->blue = REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_UDW_MASK, udw) << 6 |
> -				    REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_LDW_MASK, ldw);
> +		REG_FIELD_GET(PAL_PREC_MULTI_SEG_BLUE_LDW_MASK, ldw);
>   }
>   
>   static void icl_color_commit_noarm(const struct intel_crtc_state *crtc_state)
> @@ -917,20 +931,6 @@ static void glk_load_luts(const struct intel_crtc_state *crtc_state)
>   	}
>   }
>   
> -/* ilk+ "12.4" interpolated format (high 10 bits) */
> -static u32 ilk_lut_12p4_udw(const struct drm_color_lut *color)
> -{
> -	return (color->red >> 6) << 20 | (color->green >> 6) << 10 |
> -		(color->blue >> 6);
> -}
> -
> -/* ilk+ "12.4" interpolated format (low 6 bits) */
> -static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
> -{
> -	return (color->red & 0x3f) << 24 | (color->green & 0x3f) << 14 |
> -		(color->blue & 0x3f) << 4;
> -}
> -
>   static void
>   ivb_load_lut_max(const struct intel_crtc_state *crtc_state,
>   		 const struct drm_color_lut *color)
> @@ -2151,7 +2151,7 @@ icl_read_lut_multi_segment(struct intel_crtc *crtc)
>   		u32 ldw = intel_de_read_fw(i915, PREC_PAL_MULTI_SEG_DATA(pipe));
>   		u32 udw = intel_de_read_fw(i915, PREC_PAL_MULTI_SEG_DATA(pipe));
>   
> -		icl_lut_multi_seg_pack(&lut[i], ldw, udw);
> +		ilk_lut_12p4_pack(&lut[i], ldw, udw);
>   	}
>   
>   	intel_de_write_fw(i915, PREC_PAL_MULTI_SEG_INDEX(pipe), 0);
