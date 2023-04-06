Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7616C6D922E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 11:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEF1610EB3C;
	Thu,  6 Apr 2023 09:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90EA310EB3E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 09:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680771614; x=1712307614;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4P3LsVUPXd7JJ3G4zoQMcJwPWj3LjaAPyoehswCXdtA=;
 b=dc6z1mRTMyTMDF5IzHSOpCYeAyw9sHwN7RAmOLIFZOY41V7TvCeiShju
 hrMVaDg13RVUBsZXgCRAVSqCayADL0/zTRPvTDim1Z7YZ4Q5I2C7XrHsu
 ROOlE9ekHjxp5ndyhIEaHlIYmny4gqm0LnqfKl3/cDKsOjCTNvZ5gdmoo
 9f+1dWUB+Skuo7caXRqDox1EBe6qsXevlcY/hsGRVvDDsRwgooxtbS57C
 3fjPnoQFMPEsIKiBE+ykU4/EBmLNTpndkSKoowczaY9JQyGGDTgOoL5HQ
 AhWPNGH0xYZ1NJbe/hgpmwnn/N7g4Lcl/RgHenCV7anL92fSyu8lcmz47 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="370520173"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="370520173"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 02:00:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="1016798048"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="1016798048"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 06 Apr 2023 02:00:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:00:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 02:00:13 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 02:00:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fovUv4riV1+NFd+iEHUjgoKFQhS7JLNeZw/qIIzt2LNA20vaCeZEwa+TkJDL1EfA3ILi11roOrdOvcMX986hBk9Zh4cGXICgqtJhfJgDBQTqvFB6Nj9QBzeXK+ULcvo7xPRIuFC126jkZPILFZ+WXwbYuAskCXAbCEMTowrjhjMbn9SYpDNhidMzCKJg1CpQvv3OmZqmScPcOqm15gQO0LFmoVOKeuTzp7nV4k521ei9/lA5OsJdrWu8unMUp+jgnSTIvTvMMdTo+sKHHdfFhEKdbbGV4oxnfzuIAcJFSgVPrQonR/Ol8uO5jhLkCV7Lw6bF7WAAoYYGg0ZPtKmYDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jczvV3//1Fv4GWQvZSC3K09QEAsAHX7UfMI6JuWZaJ4=;
 b=jLk0ExBLIWTg7KGM7Rv8NXHFAOuWdtpfZXoAU44rKfoqxLsU+l7VrXV38Px/IY+2Cn6NkkSOoonYfDzEusk4EVydw59zEQhoFSZIoBxJVcjXdQcx3+1m/o+O5W6XXps8djHAuKdAXqs9yzXJzeQLMg+1ps4LTlt7eUZVfo9D/AajNm6iIr3CFGnAfB1oqTtaeh9MmbaMFtjFXHMP9qvUQX0tPxCPqHX6vaUwi78b6qZOGfeGKUkmJCo8cDMFW5sBP7K2QncmvsX7BKHoei4W9ee9mHu5YmHGwcOJxYN88sYVji26k9xqvtxCQs4uJKHlJbGR7EkwI4aLsiIestkE4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB7426.namprd11.prod.outlook.com (2603:10b6:a03:4c2::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Thu, 6 Apr
 2023 09:00:10 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6254.035; Thu, 6 Apr 2023
 09:00:10 +0000
Message-ID: <1e25f41e-9c6c-e6b5-e56f-fc49a441176e@intel.com>
Date: Thu, 6 Apr 2023 14:30:00 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-3-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230329135002.3096-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0195.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB7426:EE_
X-MS-Office365-Filtering-Correlation-Id: dbe5b5c7-347c-43d3-a657-08db367d53af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8Hw80co2WBSsXOxvQujZCv+0+BUCimMqwIrjkbrgti1aL3pYJ2aiq1fcH7B7/SgII+JZaz81M1Np020XgmekJCVUVG4T+Ec8rNc6O99Us/OD1vGwYir1wNM11IucwVlz8PHdeQB4vSFGxmow6ITQp1REk+YAsFUk+NLVRJpCHdsLr9eFwo0yCmlPAoad1FSnOns5lAzLoiqM/J99CqeZ3TDkoO75W3z0S+xZi+AmQovaNYEKVc5/Eob+RRSMdCep7KtQ2+EnEf2iIdyvMY5K1xGv50Fim84kCaOQpXEUEDOIQQGJK2SCrl/2uTPlRG7FurBq5yZ2pA2MVYAWA8RuJDqG1k04Zgq9IrF5sDu4DNk8PdR/Mbf3vOuAe+3LnHjUiOF+2QFXBJyHzAZqrWMyRegNLL2aH6MoW1pbRjSRdR/av3lgFSSCPhBfMxBNLCvKPq2FWvplFoUd1juJynWg0pqoPjBVHbn1LenSg+dhajUNMzpHQpKUVxYeYb5theRRXkFg+IFFDWkYWCugLotT6dnnGAUb6zo5kvESNQr9Q2X29gC6k9DfNU4Tj4o0ROIWxgZOKvZkETrNYzLckVNEKC3eyZVtu1HE8LqDj18+kb5hJX4+9C7kX6Fv1zT1jfLvl2A7j19aLYoKQ9/EON/UHA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(346002)(376002)(396003)(451199021)(55236004)(186003)(6512007)(53546011)(6506007)(26005)(6666004)(30864003)(36756003)(31686004)(38100700002)(478600001)(66946007)(316002)(66574015)(66556008)(82960400001)(8676002)(83380400001)(31696002)(2906002)(41300700001)(66476007)(86362001)(5660300002)(6486002)(8936002)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDZ3MDRjZmhYcDQ0T2djaFQya3V0MnVOOUs2b1hBRWRybFJCNlhLS0lVbnNR?=
 =?utf-8?B?TEdqSkR6azA1S3VwSDJsQ1RNdmlhK3NHQXJHcGhYZVdkWFdCK1lyZmVXWTh6?=
 =?utf-8?B?Mm43TU5SYndUTDdFZmRoNFhtR1ZEeFc5dElCZVBWNGxqWDlYWkJYMTRwaGQx?=
 =?utf-8?B?TDBtSEMrWnVqU2QrYzJBM3hnMGpXdXJuckN5RjJtWjVVNHV4NHQ3ZGNYVjgr?=
 =?utf-8?B?U2dLSlNCdENJV0k1eEpnb25MOWxuYTI0a0lQZWtIWmUvQ0Iyem1LREVMZHls?=
 =?utf-8?B?L1hQTkJyVUtNOUVNbmkrckF2RHRDTjRFRnJQTDlObUhhc0RZbVlNUm9CVDM1?=
 =?utf-8?B?V2l2NXJkUkxSV0lOWUJsNFhweGVsYzVMUVhRNWNLQW02T2IwWXZMWDZsQzhT?=
 =?utf-8?B?QXR4UEFGSlE5Y1I0Z0RjUEdvZWY4QzdlcVNCZWIwMDRtbkpRNVpQVDBWZ3ND?=
 =?utf-8?B?TU5RSG02WmpGWU5IU05oVzN6VXRwWlV5QXpuSFVKQ3kwOXlzVUpVRGpBNXFW?=
 =?utf-8?B?OGFsK3k0VStGcFhrR3YyY0VXbGhrckNuZTlSclV3TXFaQ3Z3WlU2YzJOWFlw?=
 =?utf-8?B?cEJpTnhLNi84UldLblM5R0VXTkd1TFA2M1lTM1BIZUJVUW5jMWY3aVc5VjhH?=
 =?utf-8?B?S0JTRVJVUXh6UThteG1oOVo0eFMyK3cyR2J6Y0xuc1pSZm9ZWVBRNHkyUnl5?=
 =?utf-8?B?WVNHT0QwaXFkUjFCbjNkZXppZTlaVVhXcWVvSnl6R0FycW9WODBWRU9yb0NR?=
 =?utf-8?B?SnRoWkp5Tkl4QmwwTHJQYXBhQnJvS1VMOHFlc2cwNkczVTlpVTRFd0Z4bXJ6?=
 =?utf-8?B?bXAvUkFSZU8yeTFBU0k1em1WMWY2Mjl4d0VZSHBueVVCT2lCRGZVWVZaVlR2?=
 =?utf-8?B?bWVPOTNqZUw3eGJiWTZIU2xDeEpEak1manNGeDJsNGc0S2tXM09sRkMrNERX?=
 =?utf-8?B?SjA3TkVHOERUUkdoZTRNcjkrcy9CbktNK050bEtGa3BQMnFUTlk5V21QSnBw?=
 =?utf-8?B?Y0krdFRiRW9iajFOM0tUb24rOUNFanUrbDRNRHFHZzRCRjVmemtEb2NYUHkz?=
 =?utf-8?B?SmdQL2hPSi85cnFaN3lkaUVJV21PeWZkWm1IL2lRV0x0WHh4dk5KY21ZeDR2?=
 =?utf-8?B?cUVjdUVFcHpaaUE3YW9FZWVORm9BR2tZZncrQzZEbXVxQ2JKa1pZaEdteVg3?=
 =?utf-8?B?OGJ2ZGpEcCtmUm9ic1FPNFJ2QjRSb1BuelFLSlpKakxlbXRWRUVuSysvZ0Zk?=
 =?utf-8?B?eXhiYXlLYWJySis0b00rZ3liYXl0UXJzZDk0YmVKVzhqV3dXMWJJSTJjQjU3?=
 =?utf-8?B?RW0ycHpDOFN0VzZZMEhNT25mQXhqS3lsWnI4WlFUTTJCaXVUTEFDYW9abE84?=
 =?utf-8?B?N2hLYko0UGlHemtEbzNlcHRHd3FHNUNJM3FwZmRtV2Y5eXhFUkhtRUlTZStQ?=
 =?utf-8?B?SzEycS83aXVoVDdzYTJYQzlQUFNYMEVkWHZ3c0NoTmRPa2N6dkRwRi8wMTBx?=
 =?utf-8?B?dVAvbFgwb2I1ci9WWmhRTVRKRTVQK0UzRVR5R0JlKzl2KzRCT2tJdCs4eklm?=
 =?utf-8?B?a0t4K3R3Q1gvbytUYmNRd001SUV0cHdvV0l6b1Z4Zkd1bmxERmplNmZEMjhU?=
 =?utf-8?B?MG9OTEdsSkZNRkFnSmRid01XYThTTGIrT283RW1EYnFXT0l1R0lGZG9JWkto?=
 =?utf-8?B?MDFjSER6MktwOHVTTUJDb2JjaVdzQW13ZHJwWjFOdjFVK3g1WGVtcmk1dWVm?=
 =?utf-8?B?dGxQc3JQaXl2YW50QnVKdUFkNWs1dEorT2k1djZmamd2Q2R3WENVVEc3ZElX?=
 =?utf-8?B?cUkzdG11eEhmWmlWQkhPVmtTT1BLY0E0MjgyQzkxNTdBNUNLQisvaXdZRE4v?=
 =?utf-8?B?TndRclZMa1FEbTNLSDF0SlFDOTBQZElXeXduMGkra1lxdXdPZGpmWld4Y1pF?=
 =?utf-8?B?RGdqbitDdzIrOFB5VGZTQ2p5VkM0MFYwUUNMUmE5QW1qQUxMaHRBcXZ0NURE?=
 =?utf-8?B?NUhlNisyMGxHVkw5QlBDVEhFQnRYSHNidnQwTzhQSXJITGJiSHRqdjZXUlM0?=
 =?utf-8?B?TjdsTE5acjliN3BXOE1Gd3BpNi9ZWWQxaGxMUmJrRFdpMGJSZUFRK3RNK2xr?=
 =?utf-8?B?RHRyWWo0UFg0SXFOVkRzakxzU0lmcU83VllrM2RVYlo5ZGNnVEtYdWdhZzJv?=
 =?utf-8?B?RFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dbe5b5c7-347c-43d3-a657-08db367d53af
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 09:00:10.7483 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /8qQJIxE/9RYFKzRj1Bfsg9qu9ZdFKgPRFwcW3RZJrA/eE7Qnasw9RQ69EGdrIBz/c3XiDqSAGKZKAGLzNioQlYih2aGt9N45OizdmtHAbg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7426
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915: Introduce intel_csc_matrix
 struct
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


On 3/29/2023 7:19 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Introduce a structure that can hold our CSC matrices. In there
> we shall have the preoffsets, postoffsets, and coefficients,
> all in platform specific format (at least for now).
>
> We shall start by converting the ilk+ code to make use of
> the new structure. chv will come later.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c    | 188 +++++++++---------
>   .../drm/i915/display/intel_display_types.h    |   6 +
>   2 files changed, 97 insertions(+), 97 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 3c3e2f5a5cde..b1059e0c0665 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -120,40 +120,42 @@ struct intel_color_funcs {
>   #define ILK_CSC_COEFF_LIMITED_RANGE ((235 - 16) << (12 - 8)) /* exponent 0 */
>   #define ILK_CSC_POSTOFF_LIMITED_RANGE (16 << (12 - 8))
>   
> -/* Nop pre/post offsets */
> -static const u16 ilk_csc_off_zero[3] = {};
> -
> -/* Identity matrix */
> -static const u16 ilk_csc_coeff_identity[9] = {
> -	ILK_CSC_COEFF_1_0, 0, 0,
> -	0, ILK_CSC_COEFF_1_0, 0,
> -	0, 0, ILK_CSC_COEFF_1_0,
> -};
> -
> -/* Limited range RGB post offsets */
> -static const u16 ilk_csc_postoff_limited_range[3] = {
> -	ILK_CSC_POSTOFF_LIMITED_RANGE,
> -	ILK_CSC_POSTOFF_LIMITED_RANGE,
> -	ILK_CSC_POSTOFF_LIMITED_RANGE,
> +static const struct intel_csc_matrix ilk_csc_matrix_identity = {
> +	.preoff = {},
> +	.coeff = {
> +		ILK_CSC_COEFF_1_0, 0, 0,
> +		0, ILK_CSC_COEFF_1_0, 0,
> +		0, 0, ILK_CSC_COEFF_1_0,
> +	},
> +	.postoff = {},
>   };
>   
>   /* Full range RGB -> limited range RGB matrix */
> -static const u16 ilk_csc_coeff_limited_range[9] = {
> -	ILK_CSC_COEFF_LIMITED_RANGE, 0, 0,
> -	0, ILK_CSC_COEFF_LIMITED_RANGE, 0,
> -	0, 0, ILK_CSC_COEFF_LIMITED_RANGE,
> +static const struct intel_csc_matrix ilk_csc_matrix_limited_range = {
> +	.preoff = {},
> +	.coeff = {
> +		ILK_CSC_COEFF_LIMITED_RANGE, 0, 0,
> +		0, ILK_CSC_COEFF_LIMITED_RANGE, 0,
> +		0, 0, ILK_CSC_COEFF_LIMITED_RANGE,
> +	},
> +	.postoff = {
> +		ILK_CSC_POSTOFF_LIMITED_RANGE,
> +		ILK_CSC_POSTOFF_LIMITED_RANGE,
> +		ILK_CSC_POSTOFF_LIMITED_RANGE,
> +	},
>   };
>   
>   /* BT.709 full range RGB -> limited range YCbCr matrix */
> -static const u16 ilk_csc_coeff_rgb_to_ycbcr[9] = {
> -	0x1e08, 0x9cc0, 0xb528,
> -	0x2ba8, 0x09d8, 0x37e8,
> -	0xbce8, 0x9ad8, 0x1e08,
> -};
> -
> -/* Limited range YCbCr post offsets */
> -static const u16 ilk_csc_postoff_rgb_to_ycbcr[3] = {
> -	0x0800, 0x0100, 0x0800,
> +static const struct intel_csc_matrix ilk_csc_matrix_rgb_to_ycbcr = {
> +	.preoff = {},
> +	.coeff = {
> +		0x1e08, 0x9cc0, 0xb528,
> +		0x2ba8, 0x09d8, 0x37e8,
> +		0xbce8, 0x9ad8, 0x1e08,
> +	},
> +	.postoff = {
> +		0x0800, 0x0100, 0x0800,
> +	},
>   };
>   
>   static bool lut_is_legacy(const struct drm_property_blob *lut)
> @@ -188,69 +190,66 @@ static u64 *ctm_mult_by_limited(u64 *result, const u64 *input)
>   }
>   
>   static void ilk_update_pipe_csc(struct intel_crtc *crtc,
> -				const u16 preoff[3],
> -				const u16 coeff[9],
> -				const u16 postoff[3])
> +				const struct intel_csc_matrix *csc)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	enum pipe pipe = crtc->pipe;
>   
> -	intel_de_write_fw(i915, PIPE_CSC_PREOFF_HI(pipe), preoff[0]);
> -	intel_de_write_fw(i915, PIPE_CSC_PREOFF_ME(pipe), preoff[1]);
> -	intel_de_write_fw(i915, PIPE_CSC_PREOFF_LO(pipe), preoff[2]);
> +	intel_de_write_fw(i915, PIPE_CSC_PREOFF_HI(pipe), csc->preoff[0]);
> +	intel_de_write_fw(i915, PIPE_CSC_PREOFF_ME(pipe), csc->preoff[1]);
> +	intel_de_write_fw(i915, PIPE_CSC_PREOFF_LO(pipe), csc->preoff[2]);
>   
>   	intel_de_write_fw(i915, PIPE_CSC_COEFF_RY_GY(pipe),
> -			  coeff[0] << 16 | coeff[1]);
> -	intel_de_write_fw(i915, PIPE_CSC_COEFF_BY(pipe), coeff[2] << 16);
> +			  csc->coeff[0] << 16 | csc->coeff[1]);
> +	intel_de_write_fw(i915, PIPE_CSC_COEFF_BY(pipe),
> +			  csc->coeff[2] << 16);
>   
>   	intel_de_write_fw(i915, PIPE_CSC_COEFF_RU_GU(pipe),
> -			  coeff[3] << 16 | coeff[4]);
> -	intel_de_write_fw(i915, PIPE_CSC_COEFF_BU(pipe), coeff[5] << 16);
> +			  csc->coeff[3] << 16 | csc->coeff[4]);
> +	intel_de_write_fw(i915, PIPE_CSC_COEFF_BU(pipe),
> +			  csc->coeff[5] << 16);
>   
>   	intel_de_write_fw(i915, PIPE_CSC_COEFF_RV_GV(pipe),
> -			  coeff[6] << 16 | coeff[7]);
> -	intel_de_write_fw(i915, PIPE_CSC_COEFF_BV(pipe), coeff[8] << 16);
> +			  csc->coeff[6] << 16 | csc->coeff[7]);
> +	intel_de_write_fw(i915, PIPE_CSC_COEFF_BV(pipe),
> +			  csc->coeff[8] << 16);
>   
> -	if (DISPLAY_VER(i915) >= 7) {
> -		intel_de_write_fw(i915, PIPE_CSC_POSTOFF_HI(pipe),
> -				  postoff[0]);
> -		intel_de_write_fw(i915, PIPE_CSC_POSTOFF_ME(pipe),
> -				  postoff[1]);
> -		intel_de_write_fw(i915, PIPE_CSC_POSTOFF_LO(pipe),
> -				  postoff[2]);
> -	}
> +	if (DISPLAY_VER(i915) < 7)
> +		return;
> +
> +	intel_de_write_fw(i915, PIPE_CSC_POSTOFF_HI(pipe), csc->postoff[0]);
> +	intel_de_write_fw(i915, PIPE_CSC_POSTOFF_ME(pipe), csc->postoff[1]);
> +	intel_de_write_fw(i915, PIPE_CSC_POSTOFF_LO(pipe), csc->postoff[2]);
>   }
>   
>   static void icl_update_output_csc(struct intel_crtc *crtc,
> -				  const u16 preoff[3],
> -				  const u16 coeff[9],
> -				  const u16 postoff[3])
> +				  const struct intel_csc_matrix *csc)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	enum pipe pipe = crtc->pipe;
>   
> -	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_HI(pipe), preoff[0]);
> -	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_ME(pipe), preoff[1]);
> -	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_LO(pipe), preoff[2]);
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_HI(pipe), csc->preoff[0]);
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_ME(pipe), csc->preoff[1]);
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_PREOFF_LO(pipe), csc->preoff[2]);
>   
>   	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe),
> -			  coeff[0] << 16 | coeff[1]);
> +			  csc->coeff[0] << 16 | csc->coeff[1]);
>   	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BY(pipe),
> -			  coeff[2] << 16);
> +			  csc->coeff[2] << 16);
>   
>   	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe),
> -			  coeff[3] << 16 | coeff[4]);
> +			  csc->coeff[3] << 16 | csc->coeff[4]);
>   	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BU(pipe),
> -			  coeff[5] << 16);
> +			  csc->coeff[5] << 16);
>   
>   	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe),
> -			  coeff[6] << 16 | coeff[7]);
> +			  csc->coeff[6] << 16 | csc->coeff[7]);
>   	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_COEFF_BV(pipe),
> -			  coeff[8] << 16);
> +			  csc->coeff[8] << 16);
>   
> -	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe), postoff[0]);
> -	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe), postoff[1]);
> -	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), postoff[2]);
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe), csc->postoff[0]);
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe), csc->postoff[1]);
> +	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), csc->postoff[2]);
>   }
>   
>   static bool ilk_limited_range(const struct intel_crtc_state *crtc_state)
> @@ -294,13 +293,20 @@ static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
>   }
>   
>   static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
> -				u16 coeffs[9], bool limited_color_range)
> +				struct intel_csc_matrix *csc,
> +				bool limited_color_range)
>   {
>   	const struct drm_color_ctm *ctm = crtc_state->hw.ctm->data;
>   	const u64 *input;
>   	u64 temp[9];
>   	int i;
>   
> +	/* for preoff/postoff */
> +	if (limited_color_range)
> +		*csc = ilk_csc_matrix_limited_range;
> +	else
> +		*csc = ilk_csc_matrix_identity;


Lets merge this if block with the below if block, as we are again 
checking limited_color_range.

Otherwise patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> +
>   	if (limited_color_range)
>   		input = ctm_mult_by_limited(temp, ctm->matrix);
>   	else
> @@ -319,28 +325,28 @@ static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
>   		 */
>   		abs_coeff = clamp_val(abs_coeff, 0, CTM_COEFF_4_0 - 1);
>   
> -		coeffs[i] = 0;
> +		csc->coeff[i] = 0;
>   
>   		/* sign bit */
>   		if (CTM_COEFF_NEGATIVE(input[i]))
> -			coeffs[i] |= 1 << 15;
> +			csc->coeff[i] |= 1 << 15;
>   
>   		if (abs_coeff < CTM_COEFF_0_125)
> -			coeffs[i] |= (3 << 12) |
> +			csc->coeff[i] |= (3 << 12) |
>   				ILK_CSC_COEFF_FP(abs_coeff, 12);
>   		else if (abs_coeff < CTM_COEFF_0_25)
> -			coeffs[i] |= (2 << 12) |
> +			csc->coeff[i] |= (2 << 12) |
>   				ILK_CSC_COEFF_FP(abs_coeff, 11);
>   		else if (abs_coeff < CTM_COEFF_0_5)
> -			coeffs[i] |= (1 << 12) |
> +			csc->coeff[i] |= (1 << 12) |
>   				ILK_CSC_COEFF_FP(abs_coeff, 10);
>   		else if (abs_coeff < CTM_COEFF_1_0)
> -			coeffs[i] |= ILK_CSC_COEFF_FP(abs_coeff, 9);
> +			csc->coeff[i] |= ILK_CSC_COEFF_FP(abs_coeff, 9);
>   		else if (abs_coeff < CTM_COEFF_2_0)
> -			coeffs[i] |= (7 << 12) |
> +			csc->coeff[i] |= (7 << 12) |
>   				ILK_CSC_COEFF_FP(abs_coeff, 8);
>   		else
> -			coeffs[i] |= (6 << 12) |
> +			csc->coeff[i] |= (6 << 12) |
>   				ILK_CSC_COEFF_FP(abs_coeff, 7);
>   	}
>   }
> @@ -352,21 +358,15 @@ static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
>   	bool limited_color_range = ilk_csc_limited_range(crtc_state);
>   
>   	if (crtc_state->hw.ctm) {
> -		u16 coeff[9];
> +		struct intel_csc_matrix tmp;
>   
> -		ilk_csc_convert_ctm(crtc_state, coeff, limited_color_range);
> -		ilk_update_pipe_csc(crtc, ilk_csc_off_zero, coeff,
> -				    limited_color_range ?
> -				    ilk_csc_postoff_limited_range :
> -				    ilk_csc_off_zero);
> +		ilk_csc_convert_ctm(crtc_state, &tmp, limited_color_range);
> +
> +		ilk_update_pipe_csc(crtc, &tmp);
>   	} else if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
> -		ilk_update_pipe_csc(crtc, ilk_csc_off_zero,
> -				    ilk_csc_coeff_rgb_to_ycbcr,
> -				    ilk_csc_postoff_rgb_to_ycbcr);
> +		ilk_update_pipe_csc(crtc, &ilk_csc_matrix_rgb_to_ycbcr);
>   	} else if (limited_color_range) {
> -		ilk_update_pipe_csc(crtc, ilk_csc_off_zero,
> -				    ilk_csc_coeff_limited_range,
> -				    ilk_csc_postoff_limited_range);
> +		ilk_update_pipe_csc(crtc, &ilk_csc_matrix_limited_range);
>   	} else if (crtc_state->csc_enable) {
>   		/*
>   		 * On GLK both pipe CSC and degamma LUT are controlled
> @@ -376,9 +376,7 @@ static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
>   		 */
>   		drm_WARN_ON(&i915->drm, !IS_GEMINILAKE(i915));
>   
> -		ilk_update_pipe_csc(crtc, ilk_csc_off_zero,
> -				    ilk_csc_coeff_identity,
> -				    ilk_csc_off_zero);
> +		ilk_update_pipe_csc(crtc, &ilk_csc_matrix_identity);
>   	}
>   }
>   
> @@ -387,21 +385,17 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   
>   	if (crtc_state->hw.ctm) {
> -		u16 coeff[9];
> +		struct intel_csc_matrix tmp;
>   
> -		ilk_csc_convert_ctm(crtc_state, coeff, false);
> -		ilk_update_pipe_csc(crtc, ilk_csc_off_zero,
> -				    coeff, ilk_csc_off_zero);
> +		ilk_csc_convert_ctm(crtc_state, &tmp, false);
> +
> +		ilk_update_pipe_csc(crtc, &tmp);
>   	}
>   
>   	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
> -		icl_update_output_csc(crtc, ilk_csc_off_zero,
> -				      ilk_csc_coeff_rgb_to_ycbcr,
> -				      ilk_csc_postoff_rgb_to_ycbcr);
> +		icl_update_output_csc(crtc, &ilk_csc_matrix_rgb_to_ycbcr);
>   	} else if (crtc_state->limited_color_range) {
> -		icl_update_output_csc(crtc, ilk_csc_off_zero,
> -				      ilk_csc_coeff_limited_range,
> -				      ilk_csc_postoff_limited_range);
> +		icl_update_output_csc(crtc, &ilk_csc_matrix_limited_range);
>   	}
>   }
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ab146b5b68bd..4829399ea700 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -985,6 +985,12 @@ struct intel_link_m_n {
>   	u32 link_n;
>   };
>   
> +struct intel_csc_matrix {
> +	u16 coeff[9];
> +	u16 preoff[3];
> +	u16 postoff[3];
> +};
> +
>   struct intel_crtc_state {
>   	/*
>   	 * uapi (drm) state. This is the software state shown to userspace.
