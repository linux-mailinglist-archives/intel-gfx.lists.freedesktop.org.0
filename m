Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 494AD409844
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 18:03:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED2706E19C;
	Mon, 13 Sep 2021 16:03:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F38B86E0E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 16:03:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="208945381"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="208945381"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 09:03:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="469502475"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 13 Sep 2021 09:03:28 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 09:03:28 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 13 Sep 2021 09:03:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 13 Sep 2021 09:03:27 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 13 Sep 2021 09:03:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CqptHY4hzpnBWHFcRniQFAXN7qGI6qW7nUEewNwdQMdTAgkfU5kL1t7fEwhwueENTg1jPMksFIOmhdCtxkuAtFw5luh2GyqrAMW48bzPAon8UfTMoPfzcgCluQqmT+bNnLAoUZjagp+qNamV6F9Kfkfa5bFvCWLHPBE/PhkRHfbxlGzS0YKeHlloa7yq84U8vmrtnc4y/m1MEZvGxIfpY6xi1kje9KoS8wdCQiXWfu5KfTQnFRdECPGkENiOHt9Ee84zESaA5RSVOHl8ynVtdUD+XorHXPzd9+XOEFfpS06yOjIpipwr0BhltRnkHSRMWt8fbp9BlaucMN/UMc1wRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=BdGOSqPRpCJXZvmG/rnV0wctaLMGV4OEgJOH3OeQCeI=;
 b=XkuYoAySkCskWWdmEPT+qHSTrxwtDYNjUCXU/E7RcXcUGVhaZmjimceEthl64NIZXxni1Xwh7LNr6brD3zGgpUClCHU1y6yjUovtlz67Ta0+XlKTOtaczz5dOTwuKc1ryCsORmeRwDLuYoc4WtwRJ3pHIIm31YbCPdjz61q8U9clNyKKzdSna0e+VvWuBEK3sdqVzYHsvpNWgi7HIRwZvQUlclurtxEAqqafCIICHnpFOPf2Uckz2lHBTjYUGsaOOjH/WahysfEx9nIBuWl8OK69UAprssGhvHE69jjrCNvmjqdmBF/ZyTyMdLZa7njjy+Jf6BCgcBWXAVzfYYv6iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BdGOSqPRpCJXZvmG/rnV0wctaLMGV4OEgJOH3OeQCeI=;
 b=pMUmfeFegs0E0BEovflraCEeHe04Va/DpXG4/zXoQ9uf/soxJ8gxSXDAILbvTuR0XfzNtnne6uCBF/ueN0otcm4w9YN6d2bX17BysS4BLI5eTy+o/Da3f8nOKPoim0N5Rg+XsS/xSk1GToL1hLJZzq+Jye7SRa+Kc9xIE6m5niY=
Authentication-Results: ffwll.ch; dkim=none (message not signed)
 header.d=none;ffwll.ch; dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH2PR11MB4470.namprd11.prod.outlook.com (2603:10b6:610:4a::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Mon, 13 Sep
 2021 16:03:24 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7%2]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 16:03:24 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Daniel Vetter <daniel@ffwll.ch>
References: <20210909230725.33735-1-jose.souza@intel.com>
 <20210909230725.33735-4-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <4fe68cb6-41cf-6ecc-2dd8-f5081fffcc00@intel.com>
Date: Mon, 13 Sep 2021 19:03:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210909230725.33735-4-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB9PR02CA0003.eurprd02.prod.outlook.com
 (2603:10a6:10:1d9::8) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.198] (134.134.139.71) by
 DB9PR02CA0003.eurprd02.prod.outlook.com (2603:10a6:10:1d9::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 16:03:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9f301f7b-9dc3-41f4-b684-08d976d0040c
X-MS-TrafficTypeDiagnostic: CH2PR11MB4470:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR11MB4470BDDCD09D0D302E4243B4B8D99@CH2PR11MB4470.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZGos3ivdYCTwTHcDOmXxvfw14SE7zRSa99NrCRfJnJy4Q9cIxpqthnQ60U0Wohyd8rCx9xbyISNfhcHITsZz+CtPy49FvTYdMeWAdebW4HOVVxVvzTxpk3A2yRcPdMAdf3UqhXMznMZRn+AbvsltaVCX+isDwiOXPfNvYsZWf1er7MMHxkSfJs3bR3ZP52nattORk2KuAKHlesUnTJbro/NzwHlEokUBRpjhImNzS3WvgJSoTZ/veWOfk0PjcTIXa9SU+mVTYdfN1WM9eba9Q587nNlSbPBElXvk49snzlHaI+nFU/FQTyjdRhA6lKpkTlGdMqgcMeKy4mrry2N4p+8nz+1gcxSTRR2WXP1w3jAwK/CyhbKaMy2+t/uyhGD3Fw5B+xFYhqYs0AJ9f/NUPlbOUU5I+iDWqc2UWkpdTWAANBHqLwVom9wKlb92HRbWVYN6YpFKKT58cbDJVaoeEYLN3gY6vr6b/YQnosIRPAXb0vRlbolUPVWOcpREoqUKJfIqdsF1RBdHvmA5ki+Ok2ZtVw3Gc0Kloc9r6ORarSECYx546DUMZ1gHShjxg9vR//DedjBhuyvti8lnscFVy+h7cN0oOElDV47dJyUaPf9s5/kvatcomGYofyUHBZsA037V7AX26xs7YrMk1MX0RWrtyUukbJL/cyLOb8E8o84YLY8LYRVdLKLvyMqfwWdQ/Khe4K4qK4R2NPACLSwDUZJM5/kt41qTS7uaBumPzFw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(39860400002)(366004)(376002)(346002)(26005)(4326008)(83380400001)(16576012)(66946007)(66476007)(6486002)(316002)(31696002)(956004)(53546011)(2616005)(186003)(38100700002)(5660300002)(478600001)(2906002)(6666004)(31686004)(8676002)(36756003)(66556008)(86362001)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1plbUpLZTJicmFlazNyMUVSU0ZMOUJydDExd3FmYTBqOHZGYWJtOER6bHQy?=
 =?utf-8?B?bEUrUlFvdlFweDR4bTZxQ1VkVElRUEVxQ3BlcWxGZktnVjQ5Zm05b0hqSVg0?=
 =?utf-8?B?Uml4M0MxaUk1ZzF2bTI3MXp0QTBUa3VPTUpuUTBCOXNNUkdKUm9kWklIdmdt?=
 =?utf-8?B?VmtTR2Z3bTRzL1pHeitQQXJiWjcxQ3o0YjdQWXNXbk40Z3JyMzRuZ1Q2Vncz?=
 =?utf-8?B?R1hBN0p1WGVGbGlTUHRXWlhVdzVBczVCbHpvem9kYWx3MzdORm1pUDFCUkh4?=
 =?utf-8?B?dlNPbHpmdncwMk5LWWp4WVRRUk9kb0hIOERETEtsbllrem90VmpOZUp5ZGU3?=
 =?utf-8?B?YzJ1OXhxZitXKzZvQk5ubjBrMUFMSmVPVkp0L1ZTR3VhbElvRmdoT1F4TzA1?=
 =?utf-8?B?M0JXTGptb1Uzb3R6aGFMekZXdnJmNEtKYmNnc0NTVXFULzZ0ZzlMbmlpNmVL?=
 =?utf-8?B?aVhibDk5eWtsY1FNYVJyTUZmT29tSVdJVURpaW1tUi9MeUhTcTkybjdGbFNy?=
 =?utf-8?B?VGxqMzErZVhidDZRT0ZGQ0hlR0xXK1N1Ky9HS2hkUVpDbXpQM1crbExhZ2Ro?=
 =?utf-8?B?RkNNeDkxR051VzhpdUhra0Frdkt5bzdQLzNXZjJpNis3amNrQ1FzTEdDUzRG?=
 =?utf-8?B?eGR2SlhwdW5mZ3F0TWpKNFNVNlFnSU9ib05Ra3FDb0JobkVzOTY2cURJcGUv?=
 =?utf-8?B?QVJEWFY4dWFRcUFEYnU1Y0xNR1oyRUtYczFoYTAxbXZTOXBEaFhUUEF3bnFj?=
 =?utf-8?B?S0RyNGZhbWdtNGxoVzNXT3ZGRjA3K0thWldLQkNmTVFPYXBjY2s2Q1JHMS9E?=
 =?utf-8?B?ZFllcVdDQUZHQlcxZ2xCbUlPenZhcGg1ejFnZWtibnVtaE9qeUxJQlRlWjQy?=
 =?utf-8?B?aUJnYUw5WlBlSnc2OXdvZDZwR1U0Q1hBR2tmOGZBWGhSbGNoMmNSRkpuSVdo?=
 =?utf-8?B?YjEyN2RtanptQi9wUG1BWXBPRWZWSVc2aDVWUFkxWW8vUXZqNjVacFhOeTI1?=
 =?utf-8?B?L21XSmdDaFRvMVR2OWFkWkZzSlE3aERLN1RJNExEbnFhN0FOSFJCYi96Mnls?=
 =?utf-8?B?dnlFMTBZRkljY0tBU3JNQnV3cXVTQXFTbWtaSXZZZjV5YmZ1RjJVUmFUYm5t?=
 =?utf-8?B?bnFiQXlwOTZxOGFjU2JISVlsYWlQbC9ka1VtS3phV3V1UXpydHdwY0JSOUNR?=
 =?utf-8?B?SmhvNGZsZm5ZYkRtRlRGOE1paUNEQ1R1Um9LTlBYWUswK01oQkxORlN3eUMy?=
 =?utf-8?B?SFl3Y0U0YUJJYmVFc1VSbjgram54KzZ3UE9VZ2MwUVgrM05YQ1FuUWQ0Y05v?=
 =?utf-8?B?ektsNlR6cnNZS08yMEFBb0dWUzlVYTZIUmRzclVwbGhsajd5YWJ1UUQvWFlh?=
 =?utf-8?B?RWluejg1eHZDdUt4RkcrTkNMSzhsdnhIRTdlUldubE9ET0I1UkNqWnNjMDNG?=
 =?utf-8?B?bGNOc1FGOW1GTFRaVitvbVZqVmZsOTltakxLN1Jtdm41dE53M3ZuWUlvajJu?=
 =?utf-8?B?ODRWandxSDhDbEsyUGNLRFhmNlQ2RGY2SHA5Yi9xMHU4U00yZlBaYlVyNEEx?=
 =?utf-8?B?eFdFcWFQYXpUK2dIRUVsN1dRMnowYnB6RjRnUjZrZzlUQno3YzNqMWY4c2F6?=
 =?utf-8?B?L2c4TzY4NkhQWkh0WjRyZitRWXBBVUxtcVoyNEdweU1aa0dlOTRXSGM0dkpE?=
 =?utf-8?B?VHd3emRZQ2pFUlI4QW1aSUlicVFTbExWQldnekR0WTc3UEFFakNpMjRWLysz?=
 =?utf-8?Q?3yg5C/We6wxbz8FnzHvWUkUl/8XJ/0uFMWMlghw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f301f7b-9dc3-41f4-b684-08d976d0040c
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 16:03:24.7213 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zZfx37zezq5c0AzfJWgUdVhdpENyHqTQh2aqbi/NK2CavRbHD4ONxp8SOn0E3+nnohPh5KRIFpJoHj+MhR/FbyTozlS9iGRAEyr+yFfjKB4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4470
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/display/psr: Use drm damage
 helpers to calculate plane damaged area
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



On 9/10/21 2:07 AM, José Roberto de Souza wrote:
> drm_atomic_helper_damage_iter_init() + drm_atomic_for_each_plane_damage()
> returns the full plane area in case no damaged area was set by
> userspace or it was discarted by driver.
> 
> This is important to fix the rendering of userspace applications that
> does frontbuffer rendering and notify driver about dirty areas but do
> not set any dirty clips.
> 
> With this we don't need to worry about to check and mark the whole
> area as damaged in page flips.
> 
> Another important change here is the move of
> drm_atomic_add_affected_planes() call, it needs to called late
> otherwise the area of all the planes would be added to pipe_clip and
> not saving power.
> 
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 37 +++++++++---------------
>   1 file changed, 13 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 1a3effa3ce709..670b0ceba110f 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -22,6 +22,7 @@
>    */
>   
>   #include <drm/drm_atomic_helper.h>
> +#include <drm/drm_damage_helper.h>
>   
>   #include "display/intel_dp.h"
>   
> @@ -1577,10 +1578,6 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   	if (!crtc_state->enable_psr2_sel_fetch)
>   		return 0;
>   
> -	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
> -	if (ret)
> -		return ret;
> -
>   	/*
>   	 * Calculate minimal selective fetch area of each plane and calculate
>   	 * the pipe damaged area.
> @@ -1590,8 +1587,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
>   					     new_plane_state, i) {
>   		struct drm_rect src, damaged_area = { .y1 = -1 };
> -		struct drm_mode_rect *damaged_clips;
> -		u32 num_clips, j;
> +		struct drm_atomic_helper_damage_iter iter;
> +		struct drm_rect clip;
>   
>   		if (new_plane_state->uapi.crtc != crtc_state->uapi.crtc)
>   			continue;
> @@ -1611,8 +1608,6 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   			break;
>   		}
>   
> -		num_clips = drm_plane_get_damage_clips_count(&new_plane_state->uapi);
> -
>   		/*
>   		 * If visibility or plane moved, mark the whole plane area as
>   		 * damaged as it needs to be complete redraw in the new and old
> @@ -1633,14 +1628,8 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   				clip_area_update(&pipe_clip, &damaged_area);
>   			}
>   			continue;
> -		} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha ||
> -			   (!num_clips &&
> -			    new_plane_state->uapi.fb != old_plane_state->uapi.fb)) {
> -			/*
> -			 * If the plane don't have damaged areas but the
> -			 * framebuffer changed or alpha changed, mark the whole
> -			 * plane area as damaged.
> -			 */
> +		} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha) {
> +			/* If alpha changed mark the whole plane area as damaged */
>   			damaged_area.y1 = new_plane_state->uapi.dst.y1;
>   			damaged_area.y2 = new_plane_state->uapi.dst.y2;
>   			clip_area_update(&pipe_clip, &damaged_area);
> @@ -1648,15 +1637,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   		}
>   
>   		drm_rect_fp_to_int(&src, &new_plane_state->uapi.src);
> -		damaged_clips = drm_plane_get_damage_clips(&new_plane_state->uapi);
>   
> -		for (j = 0; j < num_clips; j++) {
> -			struct drm_rect clip;
> -
> -			clip.x1 = damaged_clips[j].x1;
> -			clip.y1 = damaged_clips[j].y1;
> -			clip.x2 = damaged_clips[j].x2;
> -			clip.y2 = damaged_clips[j].y2;
> +		drm_atomic_helper_damage_iter_init(&iter,
> +						   &old_plane_state->uapi,
> +						   &new_plane_state->uapi);
In the description of the drm_atomic_helper_damage_iter_init() function 
says, in order to use drm_atomic_helper_damage_iter_init(), the driver 
requires that the drm_atomic_helper_check_plane_state() helper function 
should be called in advance.
However, in i915, drm_atomic_helper_check_plane_state() helper is not 
used, and intel_atomic_plane_check_clipping() handles src.
And i915 is not using the atomic_check callback of 
drm_plane_helper_funcs. Is it fine to use 
drm_atomic_helper_damage_iter_init() in this case as well?
> +		drm_atomic_for_each_plane_damage(&iter, &clip) {
>   			if (drm_rect_intersect(&clip, &src))
>   				clip_area_update(&damaged_area, &clip);
>   		}
> @@ -1672,6 +1657,10 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>   	if (full_update)
>   		goto skip_sel_fetch_set_loop;
>   
> +	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
> +	if (ret)
> +		return ret;
> +
>   	intel_psr2_sel_fetch_pipe_alignment(crtc_state, &pipe_clip);
>   
>   	/*
> 
