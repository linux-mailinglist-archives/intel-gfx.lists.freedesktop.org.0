Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 052256D9264
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 11:12:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7076910EB42;
	Thu,  6 Apr 2023 09:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63DCD10EB42
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 09:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680772372; x=1712308372;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=H0u9F3PjJszjctzs2SeNEqOfEP90KSiVuMts1TMPmLQ=;
 b=E1V9EP6bc4we937UVUt0QxG9xN0vR53nSPC6N+xNLRC6wfG4nWI4Cpt6
 UHu/6eymun0BTWgGT7loSPbjLWDvnHTeFsnw/Ovmz7RdH5BHUvtszhGrb
 FN6KbHP+9vlVPVBBZ7npLB9XEeSHoW8tmJTdF/uKl7Yk7hXH94k62oyAM
 VsHYh2wr6st/4WNTY6Mwj2hEUSFTeXcqD1WSl0e+MtvBbooDVXg1x8OQP
 dsAAyodKS8bJ6wjbbNxC+/AQhsAfvtTpIYG+Y921FW0tEuyfVoG3+bH4u
 EWtDCT0rPvI1fEJhahE7Q1W27ckaW7Qq6babgseCrBvz14p6lCeYay0mz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="428974111"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="428974111"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 02:12:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="830681631"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="830681631"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 06 Apr 2023 02:12:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:12:51 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:12:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 02:12:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 02:12:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UDhMa+nJmtYwFMC731fsoG1BIrt9tPcNmXbvkGjl7AH00hABvbfgTiX3fzzKzH5258P3O+q3dc543k44xZ9WG4rQF8d77KPPh/f0ho2wgCdjjjQeYb7bmZ3ic3AiJqi0iCmPHbRs6J8gaUQ7SjiVff67twrr6faW0kpPrMdVkm0DbMeEcFAy6ZJRGI5cav9gMFmPYMQ/2o+aiGkNXchdJE8KtWG+5Ol4T9d8+UM73hPRiJO5WNPZXD2zm9/JgjdQogHcutR1nNEmIfrZQ9pvzGcYtVijdmFow08tfMOOkm8H2edi/+5ISSkEapeidbhsrCnCuHSGgeu4sEy9RLpZ5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mXvwU7bPeyLTxmoRF1vE6/QsLk4xqDokLPay+Nuqqao=;
 b=UEXITu3dvhb+8s0WVoGVFQ44PS0/JqcX3IBvc5+YN1ou21GgEXh7NIEeJjX04wJutb2tu+J14NGNDh1bJ4wA5oCn8j1MnMD6+vefyr1Evg/BQXz9PWuEZmaQaVLCTNNgWLbHvc47eKSgAEceBN/SGFta/GtwB6OV7r9tODH3UJmNyWAPRjds2GfbKpvf3Lst3/7ZdbptcLH4PDzXdS99K+IAt9BGMs/E/GGVbaMOWZ8F3FVN1JXZss/drEZPIoocSAE6MZDRHK7yKeJn0/sTJM2d+fbJrUQkwnIpYCU0w4b9WhciWvM7y7vmF+Ykpm4xz+w+5pxsuhAue30C+QV4Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO6PR11MB5649.namprd11.prod.outlook.com (2603:10b6:5:35b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.35; Thu, 6 Apr
 2023 09:12:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6254.035; Thu, 6 Apr 2023
 09:12:49 +0000
Message-ID: <d7dd36c0-9eb0-3244-a7e9-3bc4ee6611c2@intel.com>
Date: Thu, 6 Apr 2023 14:42:40 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-6-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230329135002.3096-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0091.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO6PR11MB5649:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d68e7b3-2424-49e5-76c4-08db367f179a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gaRpidLchSxCTcL8OsLlDCZxaZd9uTPRwCvufPU6Pcdm2uCVpUe8bwUxvqLXZ08ZfQULQEY0OGSkYa/zDCvnxp1iD7YK1d6giQ/ndSSgUxVRc7y2UECYKHymv146A0RxumDrzh5OVUFsWFb34Uzp5tWABbkjKr/Pd37I0FoIl/BPG8N1IjasA/IgdDiYkD+Ai21fUrW2lNkWYKp+5l8ja4dvZSjczsAwBlLRERiVySnKEgax+gZCVKAlFW479LMWicJWEjBqu7EWPhNJAYfMMB7D09oU5ocF5ScJuENAfAtSVW4uRUI1PBnD6TluHU3q/Yrz4cueeay4UtwNEFpupYxuUY6bsR4r6uODvhISV5lJ54XWveSU/hbMroHSoerCbR7aSd/vfgTEn89KvA2/l3nPBjPLsyb8dbrEFfyGVod5O/zxGpVFbpu8CQeblG1i+NAK77IUyr3LhvnWbNUSrPXP4CKO/VQYd4rGuZ524lMUK29gK1TVTcW+pn0uTupHC3cj1OfWqqSet4DBwnxOQU4yYG9W3Ne0xG0ZU+m6LJ9Xg8rwONBa5OvKE9ChDcts5WYFnIu3cxWvAlLDsQzq3SxkyMauS8bmHE/ebxl7CoNiKy3TLqWdto16MMesPjcXEaJMSq2/B4/FsOT+1T1voA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(39860400002)(346002)(376002)(136003)(451199021)(31686004)(38100700002)(41300700001)(36756003)(66946007)(66556008)(31696002)(86362001)(8936002)(66476007)(8676002)(82960400001)(5660300002)(2616005)(2906002)(6512007)(186003)(83380400001)(6486002)(6666004)(66574015)(55236004)(26005)(6506007)(53546011)(478600001)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUFIMWM4YVNCOU5XZTA0ZDhxQW40QmlCUkpkY2ZRc2lnMUJMT2c2UVFpcElZ?=
 =?utf-8?B?ZVNmQUtXVDhldUZEdnNydmhQRFd6OTFSNjFTYnpmeVRKNEc2SndvNGZtRloz?=
 =?utf-8?B?M1g1VitleUhaNWhnRTVSbElJaVBFRXVuMWd1dHB5QUEzRm13UzU1cFZ6QVJB?=
 =?utf-8?B?SWE0c1NSaWxiazB1THlxOElNcGFyM1cxbkkvdDRrZzlkLzJURWlYNklibHFp?=
 =?utf-8?B?akdrL0JWQnFuTU1DQ1BLMEJsRkZrcTFjdUovRHZPWUVOSmQzTVF6YWYxdUdj?=
 =?utf-8?B?bnpLTUtMcy9sYVU5aGNCbmNxT0VneDdEbmEyQW5LcWxhU2V4eUxMTUtuZ0ds?=
 =?utf-8?B?WEJUY01iQStvRWFsQllib0ZJekMxN3JMaWFwQ3BOK0FLMzVGd05vd3JjOFlu?=
 =?utf-8?B?dGNqemJkVDRXcDZFL1o5ZU15eGJFczZ6Q0xSZW5LNEZVK2haSnBmallTallk?=
 =?utf-8?B?QUhHM0Q2QXdNR0Fac1A3KzhNa2g5ZDhwOW1jUE5HME42alJLQUY5UnZhc2Uz?=
 =?utf-8?B?SFFrR1d6WWxrbXA1RnkwU3ZuVkViRnFjNEg4M0xNY1lMVWt2dkVRZVRlQ3hZ?=
 =?utf-8?B?V2ZIQTg3M2RKR0dYWXZtZ2hsR3JUQWtRdUo0bVpNTlg3WmhPd2NHUTQwNUNE?=
 =?utf-8?B?N085VzM3OFJVdEt1TkkxSEwxMmZmaC9FVTUzeG9PSTFITmdJN2RHTlBNVXBq?=
 =?utf-8?B?NjlGcENPbnZlbnRCTFRVNXNaeEcyQ3VVV09xcXoyM2Q5R1djYXNaS2g5dDhS?=
 =?utf-8?B?UmNGendRR1p6cDdDVlV2VzJKODgyTVhtVUtERk0wemlEODdpYWc2bXp2VUFV?=
 =?utf-8?B?ZldxYVBMZmpGTG9ZTCtnVnp6dXpzUjFpbG9velVLbi9LWktqMzhLTzVSYW1z?=
 =?utf-8?B?cWhWNTE1SzVBUzZSejIxUTVjSm5wNzdXdjQ5UGtWbk1ZUFJybkE5Mng0UEhX?=
 =?utf-8?B?VXAxR2xoTEh3N1N1eGNlbTBxbnNqbGpvbnZ3bDJGbzZWaURhQ1VNMEZGRVl0?=
 =?utf-8?B?cWVYc05nY0FNOGhKWVZDZ2RZRldueHFWUi9pSk05Qjc5ai9KSXpIbisxYURB?=
 =?utf-8?B?cW4weGZVVnZwUzhLeTNWbHo5c3dSV2YxTmVla1FNYkJxbG9mcWtaMy9ibFRW?=
 =?utf-8?B?Um9UcW1RUmtEaTNDSklTUDRzamlDL0tIeFNIa3cyN0U0TDNFOUQ1RkVydTI0?=
 =?utf-8?B?TG1ESzBlZFJhTW5jNlpjcTZPMkE1RzJidkdyaUVFV3h5ZmlWZVJjQVh0M1BG?=
 =?utf-8?B?YVRKdmZoR0hhSTRDVVdiVFAxWTQyMEZYQ3ExVWE0MGQzb1IzTy9XTDR1WElC?=
 =?utf-8?B?SzE3dFQ2YTZxNkZseWhIcTV5aEVuQzNxZ0FYYXdDQzRvUUJYWmFGQlpkVkhm?=
 =?utf-8?B?UTJ5eGR0OUdKcHVWMTdjbkt5Q0xnbk5OZHQrejRsNkNqLzY2Ui9nSHRVQ2p6?=
 =?utf-8?B?dXhmUTFsZklMdkc4Q3VmUnYvYzM5TUlBV0JLeWFHOFVyOHhhV1BmTkw2eHNP?=
 =?utf-8?B?Wk9UT2hRcTRWbXBLblpqQ3FjVHNlRmUzVkR0L1g5U3hSaER5ZTA5Z1ZPUmdE?=
 =?utf-8?B?WFBCNUJlaDBRUUFhL081MTVlbko2a1FpQ1ZJTlZ1M1hEb2dBakRvMjVEZk1o?=
 =?utf-8?B?UGRaK2hOb3JWN2J3Qktobmh6aGNhWDhLeFZJL0VJbmRkNkZCMGVLVVZKZ2tZ?=
 =?utf-8?B?L2VRNnlOYkY1UzRDdlJXdFBBbVIvRGxlMmM2Q3d4U25nck0wS3NUdjN2Z1ND?=
 =?utf-8?B?NUZUN1dOdmFDL0lUTE9kT1ZwckNucWdLRkJwcHZlQ3RTLzkyelJoMGUrSHMr?=
 =?utf-8?B?RVBjWVVuYUFlTFpFalVjMWZ5anZia0wwV3l4dGlodU9HZGxhY3V4SldNUmE2?=
 =?utf-8?B?ZjF1VVd6c2drYzZSUmxaWlBBcjRMOUVwU1FsZ2FUNXpleVoxYXE2cTlPWnhD?=
 =?utf-8?B?N2g1TU55SGJnMzVIdE9QNHlCalJKNE5MWG1WY3FCNWdLUS9NenJZUjVsNTMr?=
 =?utf-8?B?Tk03NlB4NWJNUVBhVnYrVW9wR1lBL2RqbEplZXJZMVpUaWN5RmZnRXVuelRj?=
 =?utf-8?B?OEMvSDBpbThXbTd2NTVaNHE3MnBjamJWdk9jTnJWWWladzhId01LZkpUekdT?=
 =?utf-8?B?UHdWbWU4UVZvMlQ0dFU5bUhmckxsa3BpOTN1d1diVzNsb0NuTVBNZWVGTHIy?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d68e7b3-2424-49e5-76c4-08db367f179a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 09:12:49.2308 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lfIqYs27ZrvHQX7JNjDG37VsdeCcbANaMKck1msPvSBraRSEILVa9i/+OQO6zWN3aMHOHm7YB82y0sChVErU87MJJchNjeziRR3WX9nQoh4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5649
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/12] drm/i915: Store ilk+ csc matrices in
 the crtc state
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
> Embed a pair of intel_csc_matrix structs in the crtc state,
> and fill them out appropriately during atomic_check().
>
> Since pre-ivb platforms don't have programmable post offsets
> we shall leave those zeroed, mainly in preparation for
> state readout+check.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c    | 82 ++++++++++++++-----
>   .../drm/i915/display/intel_display_types.h    |  2 +
>   2 files changed, 63 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index a76cea4ab1ec..a6f7eba59e12 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -158,6 +158,11 @@ static const struct intel_csc_matrix ilk_csc_matrix_rgb_to_ycbcr = {
>   	},
>   };
>   
> +static void intel_csc_clear(struct intel_csc_matrix *csc)
> +{
> +	memset(csc, 0, sizeof(*csc));
> +}
> +
>   static bool lut_is_legacy(const struct drm_property_blob *lut)
>   {
>   	return lut && drm_color_lut_size(lut) == LEGACY_LUT_LENGTH;
> @@ -292,10 +297,21 @@ static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
>   	return !ilk_lut_limited_range(crtc_state);
>   }
>   
> +static void ilk_csc_copy(struct drm_i915_private *i915,
> +			 struct intel_csc_matrix *dst,
> +			 const struct intel_csc_matrix *src)
> +{
> +	*dst = *src;
> +
> +	if (DISPLAY_VER(i915) < 7)
> +		memset(dst->postoff, 0, sizeof(dst->postoff));
> +}
> +
>   static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
>   				struct intel_csc_matrix *csc,
>   				bool limited_color_range)
>   {
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   	const struct drm_color_ctm *ctm = crtc_state->hw.ctm->data;
>   	const u64 *input;
>   	u64 temp[9];
> @@ -303,9 +319,9 @@ static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
>   
>   	/* for preoff/postoff */
>   	if (limited_color_range)
> -		*csc = ilk_csc_matrix_limited_range;
> +		ilk_csc_copy(i915, csc, &ilk_csc_matrix_limited_range);
>   	else
> -		*csc = ilk_csc_matrix_identity;
> +		ilk_csc_copy(i915, csc, &ilk_csc_matrix_identity);
>   
>   	if (limited_color_range)
>   		input = ctm_mult_by_limited(temp, ctm->matrix);
> @@ -351,22 +367,17 @@ static void ilk_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
>   	}
>   }
>   
> -static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
> +static void ilk_assign_csc(struct intel_crtc_state *crtc_state)
>   {
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   	bool limited_color_range = ilk_csc_limited_range(crtc_state);
>   
>   	if (crtc_state->hw.ctm) {
> -		struct intel_csc_matrix tmp;
> -
> -		ilk_csc_convert_ctm(crtc_state, &tmp, limited_color_range);
> -
> -		ilk_update_pipe_csc(crtc, &tmp);
> +		ilk_csc_convert_ctm(crtc_state, &crtc_state->csc, limited_color_range);
>   	} else if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
> -		ilk_update_pipe_csc(crtc, &ilk_csc_matrix_rgb_to_ycbcr);
> +		ilk_csc_copy(i915, &crtc_state->csc, &ilk_csc_matrix_rgb_to_ycbcr);
>   	} else if (limited_color_range) {
> -		ilk_update_pipe_csc(crtc, &ilk_csc_matrix_limited_range);
> +		ilk_csc_copy(i915, &crtc_state->csc, &ilk_csc_matrix_limited_range);
>   	} else if (crtc_state->csc_enable) {
>   		/*
>   		 * On GLK both pipe CSC and degamma LUT are controlled
> @@ -376,29 +387,50 @@ static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
>   		 */
>   		drm_WARN_ON(&i915->drm, !IS_GEMINILAKE(i915));
>   
> -		ilk_update_pipe_csc(crtc, &ilk_csc_matrix_identity);
> +		ilk_csc_copy(i915, &crtc_state->csc, &ilk_csc_matrix_identity);
> +	} else {
> +		intel_csc_clear(&crtc_state->csc);
>   	}
>   }
>   
> -static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
> +static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   
> +	if (crtc_state->csc_enable)
> +		ilk_update_pipe_csc(crtc, &crtc_state->csc);
> +}
> +
> +static void icl_assign_csc(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +
>   	if (crtc_state->hw.ctm) {
> -		struct intel_csc_matrix tmp;
> -
> -		ilk_csc_convert_ctm(crtc_state, &tmp, false);
> -
> -		ilk_update_pipe_csc(crtc, &tmp);
> +		ilk_csc_convert_ctm(crtc_state, &crtc_state->csc, false);

Perhaps braces are not required here. Can be dropped here and introduce 
in patch adding warn ons.

With that fixed, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +	} else {
> +		intel_csc_clear(&crtc_state->csc);
>   	}
>   
>   	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB) {
> -		icl_update_output_csc(crtc, &ilk_csc_matrix_rgb_to_ycbcr);
> +		ilk_csc_copy(i915, &crtc_state->output_csc, &ilk_csc_matrix_rgb_to_ycbcr);
>   	} else if (crtc_state->limited_color_range) {
> -		icl_update_output_csc(crtc, &ilk_csc_matrix_limited_range);
> +		ilk_csc_copy(i915, &crtc_state->output_csc, &ilk_csc_matrix_limited_range);
> +	} else {
> +		intel_csc_clear(&crtc_state->output_csc);
>   	}
>   }
>   
> +static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	if (crtc_state->csc_mode & ICL_CSC_ENABLE)
> +		ilk_update_pipe_csc(crtc, &crtc_state->csc);
> +
> +	if (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE)
> +		icl_update_output_csc(crtc, &crtc_state->output_csc);
> +}
> +
>   static void chv_cgm_csc_convert_ctm(struct intel_csc_matrix *csc,
>   				    const struct drm_property_blob *blob)
>   {
> @@ -1962,6 +1994,8 @@ static int ilk_color_check(struct intel_crtc_state *crtc_state)
>   	if (ret)
>   		return ret;
>   
> +	ilk_assign_csc(crtc_state);
> +
>   	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
>   
>   	return 0;
> @@ -2068,6 +2102,8 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
>   	if (ret)
>   		return ret;
>   
> +	ilk_assign_csc(crtc_state);
> +
>   	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
>   
>   	return 0;
> @@ -2199,6 +2235,8 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
>   	if (ret)
>   		return ret;
>   
> +	ilk_assign_csc(crtc_state);
> +
>   	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
>   
>   	return 0;
> @@ -2261,6 +2299,8 @@ static int icl_color_check(struct intel_crtc_state *crtc_state)
>   
>   	intel_assign_luts(crtc_state);
>   
> +	icl_assign_csc(crtc_state);
> +
>   	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
>   
>   	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 4829399ea700..1683827632ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1032,6 +1032,8 @@ struct intel_crtc_state {
>   	/* actual state of LUTs */
>   	struct drm_property_blob *pre_csc_lut, *post_csc_lut;
>   
> +	struct intel_csc_matrix csc, output_csc;
> +
>   	/**
>   	 * quirks - bitfield with hw state readout quirks
>   	 *
