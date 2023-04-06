Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A516D92B4
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 11:30:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6365B10E066;
	Thu,  6 Apr 2023 09:30:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 987DD10E066
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 09:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680773439; x=1712309439;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ysTsIgCGRzSOKyHyuvrfykg2//J6WE/A0eLo5Dn6yYs=;
 b=RU9l5WNFpVSrW/ueuJ0lpouVepBpUmK9Fl4U3gLtHBdwzKkTq5afFoxm
 ItXQKK8Ox3ZAPZ++nWdXDJ3W5RYmGv08v7zyN1d0HYCa/0GipF5HnCS/B
 dIisQZ28Mw1SC0qKgiCP25ULh/kSNbDnnsnf7gcQCWcwNnmNIjVKOD0fE
 CL/BCnuU/oKuyFVKSmX3byK+l7W2eshgTLDEsKDXyWnhNPat1iOxD4VU5
 55PxZ6mTzq5lWf2NpCX4JuvnMMhY2ZeSyA3aXWnD2cc1328+GLvwOWOHi
 rwWhubO3BWZwFMKzva0coWm4GqAx+Ljzl4WmQK3fgMDJdi0w37IXecp4k w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="322343982"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="322343982"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 02:30:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="680601491"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="680601491"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 06 Apr 2023 02:30:38 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:30:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 02:30:38 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 02:30:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q2IumNiyLSf2c1JLojebcpPeFX3KP4TpM3B/pGZ7ZydiU02kBYAKRhNRRk7XvnQ0qtigwGbPirXCEiZy/O0wzgmBm5OYgEEikPzeg4FE2f6p00142Xy4qq9kUKzOEeh+sRO183zhP2j1UPT8WS0iyTXl3dDHa1+oXaclQWznNfL8SFZX4ZCFPxpGHnOAzB8gFW/UV8/82xBTK3yyUExDbK+FhMapGnB4nkK5m7Y/hiamXkaZaZv+3SGpnTgX5FZHTvAHWSgsjuKYMGXwwo+cxCuebI4xGD1MPS5io61k1HtV6KurIy+hc/SakrRHn2f/Rsnu+a9IsQw0N3Q9rj2maQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KyyVO5Q2Z93jAh6JP/62KgPf15ZSZH/rncKTl5HVeX8=;
 b=Tlc7MB1ftosKYzA+78onNipXVOkFb40Sx+xRW5r6kzCQ6bnHeJUTk6Fh4dLSM0nIbYCyEYxagG7YdEh0EqBVzO3E0ItQqMPbbSxpxyANgjnxof6PqEZu9ws5xuOSRXm7zgqJQ+YbqmjWBgmkmVYjORk9pW2DxHio4VZccuq3zH1Ro+S+WflqUXr0b8wRNtckg+jnuRAhlWLW5FWddotKqdxtJqDDMNGpkDNIHePsrgxtxg3sDQbSXOL7/sQKicUaZb7WK/UC0Hj18q202ZyDbOgCNBvOwrofABeDx+bIJFMSvwyZbmLwR86Sp+JdCXRGk3jCYp7Rp8uqUr9YOLxGmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB6887.namprd11.prod.outlook.com (2603:10b6:303:225::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Thu, 6 Apr
 2023 09:30:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6254.035; Thu, 6 Apr 2023
 09:30:36 +0000
Message-ID: <6a205f94-9f38-ce6d-25f8-bf003f146b74@intel.com>
Date: Thu, 6 Apr 2023 15:00:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-9-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230329135002.3096-9-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0191.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB6887:EE_
X-MS-Office365-Filtering-Correlation-Id: 794e8989-c353-424b-af55-08db368193ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fmH4icd9BNaigXsX+iS18pJaRXWtwTgw75WhPmkklqikKvKTfYtHtuVuG58X8o2nW9y54OUdlMjbeStDaju57TVO11g8KHx7kDovK5DlBMaR4J/h2KNJXwcI4pCYJGaaXtHTvL5Jt+9xMktyq3q2vmlcQDCcvdTYVZzgRx0Z/bUwge1uN5u4eiTVozZrnBn8wT4SrBTq86WJNINtrV5CtPiJMpYbk1b555WuO8k8fNvsbREPq80qClX0wbCq18u2nvWH4ticTMkgzJYf+OFEB3gwhAxi/7PSOBjzc5Je8L6Iosficu8IhSPL6g2zeegW+9rE6cbm8/Ae6spvhRFVEifbvnge5crQgS9+qHr9BHeR9aV0NzBw9eWVXp3QBvEE0SoUGjs8W6vl7YGlMcd1pk+i6VgcxD6ssqh3DJwvY9BG0xWJpkWNywYKnkrc8YWkRjS0J0WENiBJmQR6n28yIAn0qwzwRhLe1sk6iUz+K1B5DcwQog89wcIN98/5m28KnE3rBGkD9y91jnnN2Us4MHyia1RoQaK5N2oPZZDMlsjd9cMx48Ol2yPyHCD+sCybS2ma8vm0fGoD+1bt7oThgqUvxwSL2SJWECB2EB+Wqn7cErPRNhCvTBqFaAoRpX4f8Mcw289PjQrKJswt+pLyKw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(376002)(136003)(346002)(39860400002)(451199021)(2906002)(6512007)(6486002)(316002)(26005)(53546011)(55236004)(6506007)(2616005)(478600001)(66574015)(66476007)(66946007)(31686004)(82960400001)(186003)(86362001)(8676002)(66556008)(83380400001)(6666004)(31696002)(30864003)(41300700001)(5660300002)(38100700002)(8936002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MXVSWm1JRit1cExKei9uakIzQXllWnR0MXZBa0UrS0xBSFpldUpyT3RxT0Jv?=
 =?utf-8?B?KzNncFk0WnlTLzN2OU5VV1MrU1JaTG9oeTl6YWJmK3hQSGlpYzJrZ2FUdk94?=
 =?utf-8?B?SS9VUlZlaVNoTGxHaTVybSthZGh1ZmFvSEZNNlFmbG1pZ2ZtZGNJdDBPRGlN?=
 =?utf-8?B?NWs2K0dDd1hQdmEwOE5CMnNYOENDTWVIYnhnN2JhYWlvWDRCWXZOTG1tMmIy?=
 =?utf-8?B?MEx0TWpQN1BWODdER0Z3d2hXdGRuM21RbzZaUklpcmdHNFRqdnd5TndjckJl?=
 =?utf-8?B?ZTdYYmd0UEczSzY3VUtmRkFxbzJtVlZ5N29xZVF5TUF6emxZR0RCTDRFVnZG?=
 =?utf-8?B?cnpJdmEwRXFlenA5OVpydVRHdkZEUlBYbkxnc2RIQ3BrSW9GdExQUGtBYTBJ?=
 =?utf-8?B?UERsY1pxRG42S1c3SEJFT2paRTQ2a1NOR2RMU2tNZnZXbkNCN09NZUhpTnQw?=
 =?utf-8?B?c05XbkpJUzVtMWt3SlkzRlVhQ25wZ24zWUFuOWZqWHZpOC82VDdRMlprd0dV?=
 =?utf-8?B?MFcxMVZMOTF2eWV2RGNpUTJTdVJiMTlVbWpZa1BzNGtoNkRzb1QzZGp5RGNQ?=
 =?utf-8?B?Y0xZQTBIcGkrWFRVTWtnWWlHclk5VzArS3dJZ2xNdjFwMExjcnhSbEdrZEY2?=
 =?utf-8?B?R1dXdDB5THdrQVh3UWtqWUFxUEEzejUwMGoyeWlXVmZQZjMzUk9VV0FWWFpy?=
 =?utf-8?B?cXhjQnB1V2hMbFhhUzVVbGo5QlJ2R3BqNnlCWFI4cm1zWFI2d3dnaElRZ2Jl?=
 =?utf-8?B?K1BEYVFzVk1sUUcvNk1Da2VDeUxJTERMa3N6a1Zab2xUY0oxN1Y2STV1WnN3?=
 =?utf-8?B?VUNlamxnRUdYTkpuS1ppUnZHcm9Uc2w3L21WWjRIUW9HZDd1REdpV3I0Q1hW?=
 =?utf-8?B?T25HbGRjMnd5aVEzTURnZ284dVBwdUl1aWJQV3k5OGdxS3dmTjc3ai9NeWVO?=
 =?utf-8?B?ZmtYamZ6MXM1ZytMYmtrWmlPM1RSZlRyVUg1ZEM1ajFoa3RHdDN5VEFyTmdC?=
 =?utf-8?B?WE5nbG0yUmJteEg0MmlUZzZ1UkNYOC92bXAxaE84YXZnN3ZKMmtXeVFBRlNp?=
 =?utf-8?B?bnVoM3dFRzFxcU9FNzB3c25TVmNmd0VhL091ZWo2eXhuSzg3dE5DSHlLZ3ZY?=
 =?utf-8?B?aW5YVlNnaW1nTkY3d2JBN0hMZldnV2NtSHR1bHc5d3B3UVEwclJWWkUxQ3A4?=
 =?utf-8?B?ZW9Dd0NBdCtieXpkcEFkeXZYbmZ1eDBjczg5T0t5U0c4QjUyVFRrWU9RemlZ?=
 =?utf-8?B?Q2NHd3RCanRhdFloTEJsd05PTFFHMm4rN1pnTFpSdWpBZnVjckIvQ2ErZ0l4?=
 =?utf-8?B?MlllZTg0alhyN0ZhZDRWZ0pZSmpjU2V2ZVk2Ni9aemkzYnJFTjFULzNHUmJQ?=
 =?utf-8?B?ZEdLVlFTZzdEdFpxOGdNQk0yeUJQYU91M0NPdU9WUUVYZDQ2ZGVueFBIMk5p?=
 =?utf-8?B?Mk1qbUFhcUpkWWNIYUdOcWhYZTBnSDRMV3FVVk9YR1BzamVlUUNxZWJoUUhR?=
 =?utf-8?B?QVlQZDBpUTJyTnpYRXR2dldkU21xWlFwUVllbGdZNU1vb2tiNDI5WjhhMEZJ?=
 =?utf-8?B?UUpHd1gwU3VXTjJDa0V0ZkxZekxqNFhSWGtTby9ONzZxbmFibXJpSE9nT3pU?=
 =?utf-8?B?NWhmTmxpYmMrVkpwc2tEbEN6cThKTkZvZFJMeFgzNklkRUtXbmJqdHgrT0Fr?=
 =?utf-8?B?V29ERFgzaFZGYU9zSG1jNk9WRVA5T01VT2FtMDYxaXoySGpDa2RtVVFIL04w?=
 =?utf-8?B?bGVrczhzZTQ4TG1uWVdrN3FBOHhVbm1CeTBHS01CTitkWnVRS1FqRngrV09T?=
 =?utf-8?B?NURDcXdRa29hcUoyaUFOT0dGQWxjdzhlcllsUXV1VDRNd21GSi96K1pVZFJr?=
 =?utf-8?B?UkVYTVNiQXNjalZKZ0NlL3hiVTBWdm9MUFc0VXpoZDBVR2x5elNEblZsY2VG?=
 =?utf-8?B?T081TEc1aXJ0MTJlU2pBOFhkWFFQQlo3MHlFUXFMWFEvMmRqQnNEc1dQa2py?=
 =?utf-8?B?ZmR0NktpOGZScW5FQlNIY3Q0UGZUV2JMNWNrY0lGd3FPbHlSZTk3OE5wSHhE?=
 =?utf-8?B?QlE2dlpVS2ZxQjhjcTc2MWZpL25KSDlJSHVHN3J1UlpKQUM2eGJ0K0ZabTFB?=
 =?utf-8?B?dWo4Q1dVdU1BODQxeCszeVJtNVlvWlp3bUd2aW9wVDdlSVFwTHN4QVU2RDZm?=
 =?utf-8?B?OVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 794e8989-c353-424b-af55-08db368193ae
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 09:30:36.0900 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lCetZAIP7tt3lS+CePTMEecvmWf5uZ3CA/FVEVlaVkEeqHqABfb+slS9bVKthrv1u+L5/7r3dVv9gyVYJ9OGEOWofDz8jlGbr/KAwXE7mBM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6887
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/12] drm/i915: Add hardware csc readout
 for ilk+
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

Patch LGTM.

Perhaps TODO part, to check for case of PSR and if DC states are already 
off can be taken as separate patch.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 3/29/2023 7:19 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Read out the pipe/output csc matrices on ilk+ and stash the results
> (in the hardware specific format) into the appropriate place
> in the crtc state.
>
> Note that on skl/glk/icl the pipe csc unit suffers from an issue
> where *reads* of the coefficient/offset registers also disarm
> the double buffer update (if currently armed via CSC_MODE write).
> So it's rather important that the readout only happens after the
> csc registers have been latched. Fortunately the state checker
> only runs after the start of vblank where the latching happens.
>
> And on skl/glk the DMC + CSC register read has the potential to
> corrupt the latched CSC register values, so let's add a comment
> reminding us that the DC states should remain off until the
> readout has been completed.
>
> TODO: maybe we could somehow check to make sure PSR has in fact
> latched the new register values already, and that DC states
> have been off all along?
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c   | 133 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_display.c |   6 +
>   2 files changed, 139 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 2988c91d8ff6..86b0d8260574 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -25,6 +25,7 @@
>   #include "i915_reg.h"
>   #include "intel_color.h"
>   #include "intel_de.h"
> +#include "intel_display_power.h"
>   #include "intel_display_types.h"
>   #include "intel_dsb.h"
>   
> @@ -70,6 +71,11 @@ struct intel_color_funcs {
>   			  const struct drm_property_blob *blob1,
>   			  const struct drm_property_blob *blob2,
>   			  bool is_pre_csc_lut);
> +	/*
> +	 * Read out the CSCs (if any) from the hardware into the
> +	 * software state. Used by eg. the hardware state checker.
> +	 */
> +	void (*read_csc)(struct intel_crtc_state *crtc_state);
>   };
>   
>   #define CTM_COEFF_SIGN	(1ULL << 63)
> @@ -227,6 +233,72 @@ static void ilk_update_pipe_csc(struct intel_crtc *crtc,
>   	intel_de_write_fw(i915, PIPE_CSC_POSTOFF_LO(pipe), csc->postoff[2]);
>   }
>   
> +static void ilk_read_pipe_csc(struct intel_crtc *crtc,
> +			      struct intel_csc_matrix *csc)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	enum pipe pipe = crtc->pipe;
> +	u32 tmp;
> +
> +	csc->preoff[0] = intel_de_read_fw(i915, PIPE_CSC_PREOFF_HI(pipe));
> +	csc->preoff[1] = intel_de_read_fw(i915, PIPE_CSC_PREOFF_ME(pipe));
> +	csc->preoff[2] = intel_de_read_fw(i915, PIPE_CSC_PREOFF_LO(pipe));
> +
> +	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_RY_GY(pipe));
> +	csc->coeff[0] = tmp >> 16;
> +	csc->coeff[1] = tmp & 0xffff;
> +	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_BY(pipe));
> +	csc->coeff[2] = tmp >> 16;
> +
> +	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_RU_GU(pipe));
> +	csc->coeff[3] = tmp >> 16;
> +	csc->coeff[4] = tmp & 0xffff;
> +	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_BU(pipe));
> +	csc->coeff[5] = tmp >> 16;
> +
> +	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_RV_GV(pipe));
> +	csc->coeff[6] = tmp >> 16;
> +	csc->coeff[7] = tmp & 0xffff;
> +	tmp = intel_de_read_fw(i915, PIPE_CSC_COEFF_BV(pipe));
> +	csc->coeff[8] = tmp >> 16;
> +
> +	if (DISPLAY_VER(i915) < 7)
> +		return;
> +
> +	csc->postoff[0] = intel_de_read_fw(i915, PIPE_CSC_POSTOFF_HI(pipe));
> +	csc->postoff[1] = intel_de_read_fw(i915, PIPE_CSC_POSTOFF_ME(pipe));
> +	csc->postoff[2] = intel_de_read_fw(i915, PIPE_CSC_POSTOFF_LO(pipe));
> +}
> +
> +static void ilk_read_csc(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	if (crtc_state->csc_enable)
> +		ilk_read_pipe_csc(crtc, &crtc_state->csc);
> +}
> +
> +static void skl_read_csc(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	/*
> +	 * Display WA #1184: skl,glk
> +	 * Wa_1406463849: icl
> +	 *
> +	 * Danger! On SKL-ICL *reads* from the CSC coeff/offset registers
> +	 * will disarm an already armed CSC double buffer update.
> +	 * So this must not be called while armed. Fortunately the state checker
> +	 * readout happens only after the update has been already been latched.
> +	 *
> +	 * On earlier and later platforms only writes to said registers will
> +	 * disarm the update. This is considered normal behavior and also
> +	 * happens with various other hardware units.
> +	 */
> +	if (crtc_state->csc_enable)
> +		ilk_read_pipe_csc(crtc, &crtc_state->csc);
> +}
> +
>   static void icl_update_output_csc(struct intel_crtc *crtc,
>   				  const struct intel_csc_matrix *csc)
>   {
> @@ -257,6 +329,56 @@ static void icl_update_output_csc(struct intel_crtc *crtc,
>   	intel_de_write_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), csc->postoff[2]);
>   }
>   
> +static void icl_read_output_csc(struct intel_crtc *crtc,
> +				struct intel_csc_matrix *csc)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	enum pipe pipe = crtc->pipe;
> +	u32 tmp;
> +
> +	csc->preoff[0] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_PREOFF_HI(pipe));
> +	csc->preoff[1] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_PREOFF_ME(pipe));
> +	csc->preoff[2] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_PREOFF_LO(pipe));
> +
> +	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe));
> +	csc->coeff[0] = tmp >> 16;
> +	csc->coeff[1] = tmp & 0xffff;
> +	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_BY(pipe));
> +	csc->coeff[2] = tmp >> 16;
> +
> +	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe));
> +	csc->coeff[3] = tmp >> 16;
> +	csc->coeff[4] = tmp & 0xffff;
> +	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_BU(pipe));
> +	csc->coeff[5] = tmp >> 16;
> +
> +	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe));
> +	csc->coeff[6] = tmp >> 16;
> +	csc->coeff[7] = tmp & 0xffff;
> +	tmp = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_COEFF_BV(pipe));
> +	csc->coeff[8] = tmp >> 16;
> +
> +	csc->postoff[0] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe));
> +	csc->postoff[1] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe));
> +	csc->postoff[2] = intel_de_read_fw(i915, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe));
> +}
> +
> +static void icl_read_csc(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	/*
> +	 * Wa_1406463849: icl
> +	 *
> +	 * See skl_read_csc()
> +	 */
> +	if (crtc_state->csc_mode & ICL_CSC_ENABLE)
> +		ilk_read_pipe_csc(crtc, &crtc_state->csc);
> +
> +	if (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE)
> +		icl_read_output_csc(crtc, &crtc_state->output_csc);
> +}
> +
>   static bool ilk_limited_range(const struct intel_crtc_state *crtc_state)
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> @@ -1581,6 +1703,9 @@ void intel_color_get_config(struct intel_crtc_state *crtc_state)
>   	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>   
>   	i915->display.funcs.color->read_luts(crtc_state);
> +
> +	if (i915->display.funcs.color->read_csc)
> +		i915->display.funcs.color->read_csc(crtc_state);
>   }
>   
>   bool intel_color_lut_equal(const struct intel_crtc_state *crtc_state,
> @@ -3229,6 +3354,7 @@ static const struct intel_color_funcs tgl_color_funcs = {
>   	.load_luts = icl_load_luts,
>   	.read_luts = icl_read_luts,
>   	.lut_equal = icl_lut_equal,
> +	.read_csc = icl_read_csc,
>   };
>   
>   static const struct intel_color_funcs icl_color_funcs = {
> @@ -3239,6 +3365,7 @@ static const struct intel_color_funcs icl_color_funcs = {
>   	.load_luts = icl_load_luts,
>   	.read_luts = icl_read_luts,
>   	.lut_equal = icl_lut_equal,
> +	.read_csc = icl_read_csc,
>   };
>   
>   static const struct intel_color_funcs glk_color_funcs = {
> @@ -3248,6 +3375,7 @@ static const struct intel_color_funcs glk_color_funcs = {
>   	.load_luts = glk_load_luts,
>   	.read_luts = glk_read_luts,
>   	.lut_equal = glk_lut_equal,
> +	.read_csc = skl_read_csc,
>   };
>   
>   static const struct intel_color_funcs skl_color_funcs = {
> @@ -3257,6 +3385,7 @@ static const struct intel_color_funcs skl_color_funcs = {
>   	.load_luts = bdw_load_luts,
>   	.read_luts = bdw_read_luts,
>   	.lut_equal = ivb_lut_equal,
> +	.read_csc = skl_read_csc,
>   };
>   
>   static const struct intel_color_funcs bdw_color_funcs = {
> @@ -3266,6 +3395,7 @@ static const struct intel_color_funcs bdw_color_funcs = {
>   	.load_luts = bdw_load_luts,
>   	.read_luts = bdw_read_luts,
>   	.lut_equal = ivb_lut_equal,
> +	.read_csc = ilk_read_csc,
>   };
>   
>   static const struct intel_color_funcs hsw_color_funcs = {
> @@ -3275,6 +3405,7 @@ static const struct intel_color_funcs hsw_color_funcs = {
>   	.load_luts = ivb_load_luts,
>   	.read_luts = ivb_read_luts,
>   	.lut_equal = ivb_lut_equal,
> +	.read_csc = ilk_read_csc,
>   };
>   
>   static const struct intel_color_funcs ivb_color_funcs = {
> @@ -3284,6 +3415,7 @@ static const struct intel_color_funcs ivb_color_funcs = {
>   	.load_luts = ivb_load_luts,
>   	.read_luts = ivb_read_luts,
>   	.lut_equal = ivb_lut_equal,
> +	.read_csc = ilk_read_csc,
>   };
>   
>   static const struct intel_color_funcs ilk_color_funcs = {
> @@ -3293,6 +3425,7 @@ static const struct intel_color_funcs ilk_color_funcs = {
>   	.load_luts = ilk_load_luts,
>   	.read_luts = ilk_read_luts,
>   	.lut_equal = ilk_lut_equal,
> +	.read_csc = ilk_read_csc,
>   };
>   
>   void intel_color_crtc_init(struct intel_crtc *crtc)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b53a1d969344..aa22241c971c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7384,6 +7384,12 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>   	 * 7. New _arm() registers are finally written
>   	 * 8. Hardware finally latches a complete set of new
>   	 *    register values, and subsequent frames will be OK again
> +	 *
> +	 * Also note that due to the pipe CSC hardware issues on
> +	 * SKL/GLK DC states must remain off until the pipe CSC
> +	 * state readout has happened. Otherwise we risk corrupting
> +	 * the CSC latched register values with the readout (see
> +	 * skl_read_csc() and skl_color_commit_noarm()).
>   	 */
>   	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DC_OFF);
>   
