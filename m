Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3FD63E964
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 06:40:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DDFA10E0F7;
	Thu,  1 Dec 2022 05:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9315610E0C3
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 05:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669873243; x=1701409243;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lz1GzCD473SlQGtsGBMSi7YpR1l13IK/Jpma4Ezcifk=;
 b=js8JUA2AYf+elLuMg6v69cllJLXQPcVmbebcCOGofwm3KBYLf7vJCNMF
 O9LUqQnqBICTGk6/FzGVAKiTiC4g/XwWZEwN5NJA2n4WXVAtwRFtNOXh4
 xwj4qDgMte3nRhC8h8Lb8saLM7fyJPdY68gJ/Xsg1YaVlDfQgNeCPTisJ
 83CsOmc8VfpxHdErot1uUIQosAi9qUtBu3bNPTYHUT8dPhtIMuTeHW8wD
 mDFyE9DmS5bnqagXVcrSqPcruSnvrOp/oQ/ZPsR5blJx3zFNamurEDHbA
 zUPs5EIVL8WI4sQrnv/qrHtXULT4q2R86KTOJ+vlwNL4JywTUk8KmUhVp g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="317448987"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="317448987"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 21:40:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="675301083"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="675301083"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 30 Nov 2022 21:40:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 21:40:42 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 21:40:42 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 21:40:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lPmaXEJoDycc+/qAPhYMBafxlOZjyBKVZ0J/aqA+8pb9NHQ0zKip/1DIJdh98rf8Dek1PDXuJ8515VW6BFhjyEf2pK9QqoecJu8A3Sj3fh0rAPkthA2br2SRNAf3h8xJ2n5fIPgcX51jRVCLHygYsAfVD/eEIKxsF9ChfY6VS5wpYZP+jTCYhSUA5akP1vuw0uTl+2czo/w/bgTabjXniVBzMEo0ah6BhVL8kBxoh7E6R2m6ytDH0Qwi37zhcoxjZRvlEVZ1sDSwOf4rOMnj7C+mqWAntc1j9WsP0L41btDWhxk+RkCgxlUBpgWYbo+/kstx91MaeR9i9zfrWe3nng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eKNUofZfBY6jmZPC+Bur/0ZWPoHE+WiX1mVShIgEeEE=;
 b=dsmk59JquSfBkqnFgNxo29ajSsyW5k2wIl0uPsFhVytbo5hgnlSXwU1S5aQeu1QsrWwJKHE+y2Jja//Wt8cKPNHJwELdzmwPKEdTK2Jq6AMcxTcKsJAsZ1CldBBa50t1K68BFmfIZJeFhNmCXoFVsjqWgqqK+r7NMP64o4wcfgGxXaQVKJjanKJUVaTeNL/krKbVOcb9A0uowzs4TmPPUS4VC2igHxzfU+8krkYzunyyYWK0DR2LQ8wDTMhhtgz/3irwwnSEFgMDuCzCa+fv4hPLi0amEIvl8NPRy24cdrPszMVl+4KBsQoCgO6qp4gfJiicajJjz81n4G8wevPq+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5348.namprd11.prod.outlook.com (2603:10b6:610:bb::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 05:40:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 05:40:40 +0000
Message-ID: <db73bb4d-64c4-37a8-c47b-c551fb4c538c@intel.com>
Date: Thu, 1 Dec 2022 11:10:31 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221123152638.20622-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0103.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5348:EE_
X-MS-Office365-Filtering-Correlation-Id: a36ae3ab-d3d7-477e-f83e-08dad35e94cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /xMDFiqm/HqX/dJ8kSiw4T8O8W0hwYFefVCXAwZMG203WQdHmLSCt/mt/I3Ec8LyoZ7z9bxNHvggehb3kpcJ3WpGjxajezYH32P13ckxuH9v9Bk+kEhqcPl5kfGpQPr9Z8wRClzbxTNJW2Umvl1OwOy8vUc7W+UQmKto+LZ9ahC8F2hkYnEUAw5C8/W7Exxi4AjU2iBvxOZtWkhlTRPKtWqa+ZRD4Yh3jVdj8GfkG3D6hUMauHEeSEQSRoBZvT2bEmweMyG2Ep0WU1l2ee06H8rqtCb8KrB0ohbK0lhdeG+Pt8pkblBzVFhNTKotUKL6Lax7zzpK8BgoXQGkXb7RwrB34grsNyAJPy3yvsdtq54baulmzju1G5ghIG/gn2DR17iUPvqh3bToQqw0Do8P1Ijg9xlo6vtOmDnesbD7VYBuHARK4bI5mfyC0nc0F1jtzoFKCigsp+MR1p+NWmBlKebbgEL2NNwhC6rEg9NZrDF0oFo5SQV6pEYNTPjXEcmep4s6M8g9rV2SWtG1L5YCvsAKy9OEAEBlLUNnhEeNUrlkz0bOeZ4E5spp3wNjd9IKcjsIoVLCgfCOVQC37spbnhA0GqlGrXtP6n3XuZ97P7olrYfemirm40of7OE2GS4tgQVD7hLclx6FObroPmT+Xs2QASakTvar9fXG8VMfBUrTHEI/PGr1j+WDv3dHYnKAeuhdEBjoMcIA0ruz3Mqf5FS+JGyG0S8V0XDcjSsG/XU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(136003)(366004)(396003)(346002)(451199015)(31696002)(86362001)(36756003)(2906002)(6666004)(83380400001)(6512007)(6506007)(6486002)(53546011)(55236004)(41300700001)(66556008)(66476007)(316002)(8676002)(8936002)(66946007)(38100700002)(26005)(82960400001)(5660300002)(478600001)(186003)(2616005)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NVFWTjhPdm1VL09YQmF1Q2hja2ZGRWNQS09naDRXTVRqL0UyTnBodEw2VDdU?=
 =?utf-8?B?RDk0UWYydnFQWEdlaEtMazBJdlhXUlhwSmdXL0p6V3V0WmVhbUo2WEVIU1dP?=
 =?utf-8?B?SWk2RmNjVExwM0NTME0wZ1c4ZTljY3lVWENZaVd4VndMV3VvVUl1b2tuQzk2?=
 =?utf-8?B?bmVWQzlYbm9aZDRad1NSWncxbjNqc0svS3ovcnY1a1ZobFFLS0hSK2FHcWVj?=
 =?utf-8?B?aE50TFhsWkwwM3AvWmgrQkRiUG9DT0RNT25ybjlHdVlrNTlaYU15OXJuR1Zp?=
 =?utf-8?B?Z0ZEbUtHZm1UNEZaeGdRTDYzTlZGRWRmRDlmVENETVZDOTlsTzhIMjZtZkVX?=
 =?utf-8?B?KytxN0pkUzhwLzdOL0xYMUhIeVc5QXNJdHJjMk1aSFlIZ2tPbGdyaFNxQWpX?=
 =?utf-8?B?N1A5UFBxN0gyUS9FWW5aTEVIQ0QxekhWdXJGR3E2ZTR3OVIwQ3F3WDJxM2Z1?=
 =?utf-8?B?NWtsNU1yejNreGwvdVZ4ck1hRmhPcE1xNEtySFp0STgyaklSYmoxWmVMZmgv?=
 =?utf-8?B?WThzbHUxbldYNXRSbVRIM1JoWG5jYUIzVDV6aUtQeGpTZEJQbStjdWdGZkJY?=
 =?utf-8?B?anVQeldOU29nTmkyUzdDVm5jK0VTb1p2ck5WenF5OXZHdDJiZHd5aFFoYUk0?=
 =?utf-8?B?YW5jRDJBTDUzUi9PK0VDOTVYUEdKbjREVEhKSEJCb1dzWDJrbWRveXMweFdv?=
 =?utf-8?B?MjFDcHJLU2dhNzJJckdXcHhoTEJOMHErTkp3U2lXdCsyUURrbUdadU1kWnRp?=
 =?utf-8?B?aGhHZHRGTllJNVd5WmFiZHBqSlpDc0w1Y2VXcFZRUGNiOW1hcWt1RUt6ZXM2?=
 =?utf-8?B?T2dQQitiZGZmUVFmQU1PM0lNZVc4ZU0wb2pHL1BIR3d6NXBVdjh6T2szaGI3?=
 =?utf-8?B?Q1cvMUtwM3oweXNXeThoQ1ZvUm5kRVE1dmtmUXJUMnI5bStDaitZeGltRE9p?=
 =?utf-8?B?c0c2MUcvM0laUVJSa1NlanpINHlCMDh2dHJHd1pJQmVld0RPRVBKbmFUWmRK?=
 =?utf-8?B?Rms0cHpBa2tlV0tXY2hLbEp3V01HeEwrUVlnTEEzR0p3MWJRdGtBSllGTEEy?=
 =?utf-8?B?R1BFelh4a2EwejdFUXhYdGg3dkhWeU1nMm1ENlZyTElGLzVZRit6d1RhUStM?=
 =?utf-8?B?NFl4MEJJNlc4cVRNTmJPMW94QnoyeGw0S3lBbngvenVlWDFTWU84aEcvUUhD?=
 =?utf-8?B?QzZpWTVyOWVnMmU0UTdEc1RYWkwyWktiMlhYcVFnSmx6aW1Wbys4bWZIb2Jr?=
 =?utf-8?B?dU10MkYrR2ZidHhxMlgzbFhxUmtwRW9BR1NaQ1YxbER1M090MysySEFxKzRJ?=
 =?utf-8?B?U08yZzRJUjlia0dLTEZ2eDZPV1czTTBMR090bW90cFF2Vk1qbjBvTWtZUy9s?=
 =?utf-8?B?b0Y1NWNPZkFaYm5vV1lXc1JDd3k2ZkFvamNuRlVFT2ZiVE55Mm1CTTBzSG5Q?=
 =?utf-8?B?TXZTWjNDYXlxamsyZVBGbGVIdmFFbWJZQUtOZ2lnaGZoMHplWGZIbGNWOGlI?=
 =?utf-8?B?YVRwcitrU2puZ1Z6UXgwc2NqWld0aG1OT09ZQzNoaCtNT0JsbkNSaUtSdm02?=
 =?utf-8?B?bHlrUENUcEpNSlRTY3E4OFBZT0hBV3FuOWpDVGZVNnE3VlJVUG02dnY4KzZm?=
 =?utf-8?B?RUJuSmxJYXBheC9Qek9TRGdOTXZQbENQS3lFeEFRL2NUOE13QjNIenVVY2Ju?=
 =?utf-8?B?R1hkdWp0SU5vaE5NcUJlUmk3K1gzdmVyVit0UXZWYzREUFJIZ1NKeTQrK0do?=
 =?utf-8?B?WnQ2UHNRMnQzQzVWSzczc1JNaEo4MFJJYjR0OEZYb1hDYllpa3dpZWZlUkM0?=
 =?utf-8?B?ZEN2cEkwM09ZQzVkTkpaMWRoQzJLYnlPOTJTak4zVnZDcXd6QXVlRjN4KzZ6?=
 =?utf-8?B?cXI1M2tBNCtRc2F3QllSSDlxbXROT3Z4N2hUYzlIZUtRWTNoY3RSYUNhRm5t?=
 =?utf-8?B?YWxyZTFuUUxuWW5qdDZqcnd5aUh5bllvaEs2YW5BK21xS0xoekM1QTAyN2lV?=
 =?utf-8?B?c0JqS3JXbEtXY2ZyOGlKSFpKdjhTUjRrZ29XbXoyUVhaU0NhNHErUFc3SmpF?=
 =?utf-8?B?U1BGY2toUGx1TkJBbmZ5WTdrdXE2NjFvOVViU1NhOFd4Q3F4TStoVEFBc1hJ?=
 =?utf-8?B?MjRzZnhobVZYcU11WUM3cG0yWHllZm5zam1DRXY3elk2TExhWk0rN2hKQUNI?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a36ae3ab-d3d7-477e-f83e-08dad35e94cf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 05:40:40.7920 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sx6mPfkFMi/K5/ZeUi5ECpJZFtqC0GmHx+ouqLZJR1jt3SSxLendmGAxQ/sdEi201w0NG3Wty03oUaEHrptYI9wAVvNoPTJA4YB16t9jwhE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5348
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915: Shorten
 GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED a bit
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

On 11/23/2022 8:56 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> s/GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED/GAMMA_MODE_MODE_12BIT_MULTI_SEG/
> to make this thing slightly shorter.
>
> Also fix up the platform comment while at it.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 10 +++++-----
>   drivers/gpu/drm/i915/i915_reg.h            |  2 +-
>   2 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 842d58da3128..956b221860e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1212,7 +1212,7 @@ static void icl_load_luts(const struct intel_crtc_state *crtc_state)
>   	case GAMMA_MODE_MODE_8BIT:
>   		ilk_load_lut_8(crtc, post_csc_lut);
>   		break;
> -	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
> +	case GAMMA_MODE_MODE_12BIT_MULTI_SEG:
>   		icl_program_gamma_superfine_segment(crtc_state);
>   		icl_program_gamma_multi_segment(crtc_state);
>   		ivb_load_lut_ext_max(crtc_state);
> @@ -2091,7 +2091,7 @@ static u32 icl_gamma_mode(const struct intel_crtc_state *crtc_state)
>   	else if (DISPLAY_VER(i915) >= 13)
>   		gamma_mode |= GAMMA_MODE_MODE_10BIT;
>   	else
> -		gamma_mode |= GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED;
> +		gamma_mode |= GAMMA_MODE_MODE_12BIT_MULTI_SEG;
>   
>   	return gamma_mode;
>   }
> @@ -2283,7 +2283,7 @@ static int icl_post_csc_lut_precision(const struct intel_crtc_state *crtc_state)
>   		return 8;
>   	case GAMMA_MODE_MODE_10BIT:
>   		return 10;
> -	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
> +	case GAMMA_MODE_MODE_12BIT_MULTI_SEG:
>   		return 16;
>   	default:
>   		MISSING_CASE(crtc_state->gamma_mode);
> @@ -2455,7 +2455,7 @@ static bool icl_lut_equal(const struct intel_crtc_state *crtc_state,
>   
>   	/* hw readout broken except for the super fine segment :( */
>   	if ((crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) ==
> -	    GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED)
> +	    GAMMA_MODE_MODE_12BIT_MULTI_SEG)
>   		check_size = 9;
>   
>   	return intel_lut_equal(blob1, blob2, check_size,
> @@ -2971,7 +2971,7 @@ static void icl_read_luts(struct intel_crtc_state *crtc_state)
>   	case GAMMA_MODE_MODE_10BIT:
>   		crtc_state->post_csc_lut = bdw_read_lut_10(crtc, PAL_PREC_INDEX_VALUE(0));
>   		break;
> -	case GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED:
> +	case GAMMA_MODE_MODE_12BIT_MULTI_SEG:
>   		crtc_state->post_csc_lut = icl_read_lut_multi_segment(crtc);
>   		break;
>   	default:
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 0b90fe6a28f7..b1c314093737 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5316,7 +5316,7 @@
>   #define  GAMMA_MODE_MODE_10BIT	(1 << 0)
>   #define  GAMMA_MODE_MODE_12BIT	(2 << 0)
>   #define  GAMMA_MODE_MODE_SPLIT	(3 << 0) /* ivb-bdw */
> -#define  GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED	(3 << 0) /* icl + */
> +#define  GAMMA_MODE_MODE_12BIT_MULTI_SEG	(3 << 0) /* icl-tgl */
>   
>   /* Display Internal Timeout Register */
>   #define RM_TIMEOUT		_MMIO(0x42060)
