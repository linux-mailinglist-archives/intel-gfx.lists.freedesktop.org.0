Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 828448FF0E6
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:40:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFA2A10E9AE;
	Thu,  6 Jun 2024 15:40:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qx3PSIDj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A24210E9AE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688435; x=1749224435;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8EeiEzAslx7FgB9kXZKFlxU49xZYgAiziGNrl+Km1WA=;
 b=Qx3PSIDjE6YvgOlwP7fcK+tpFHjbCGlYYWInwc395li710oEnlTOb/NM
 MWEkbxs0WGYlqkcDxu0IlgWmlyPom3V7sXOn5kT/IO5bG9Y/TNldxj7Hn
 JXq8UULVhbGIPaaOw8mX8W6J7ks45LnDmOQEYjHmvCVp/uvryxVuHLOOE
 f+j1P4U4ZaL6Bneww9k8wW4GOxPD82WKWCzUnT9m/O2p/AXJGn8DUeLRo
 N0gki8IYfLDq3LYkJbT/+OVw9o7gSRkfEkd9zCyGkaX7snWeQU/hND8kp
 QTAtnyFMkpmDgfkTaoeIazktXwf/y7xORxtaWCun22+Pas3XmrlQT+oXS w==;
X-CSE-ConnectionGUID: VDRhePU1Re+/u/EwabcBKw==
X-CSE-MsgGUID: UY1L71WZTCKJ7yyQjR8IGg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="11945168"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="11945168"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:40:35 -0700
X-CSE-ConnectionGUID: YCOTNxwSTCyE29vJ/rm2/Q==
X-CSE-MsgGUID: uuVtDd+XSTKzAMBfWcw5zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37867458"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:40:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:40:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:40:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:40:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YiOSmDawPk96k7sL2KFM1GsEjuhln7okuki5/9kAeRlx8KHeSOlWLJlpRPNGRnmHRR6TEZtSvxUbqicrOyo+gDv7EKC904VWrZoKderp5dD2+TG7VyF1eb8e09P/GKiphkX6pJLmEGCnjCzwxxa8bjWVUBVvTHKJY3IYIWWITWkEf29u9qjJKKBsAO01uraL7gExKccMUxPxN0pua1hG6wxzTqxvPyme2qzYYrDXJZdwFvvgCNslSIbhDleqhSqdXD6IZT1r1qPYI0ObbIY5wOABEvJkr5WpbQ4vnfymeT287owHOFTQLJ5kLavcRWl9eVVUo+nBkuSo1GVznrBoOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/uyk70uozXXDxB3lWCu7XgsBQACxjMmSIOHjq61NQmg=;
 b=YJ7fpCQewxeFjYsJqZQFCIr3U8LZRPR2bu7ltCrApM2cl2v8cg76pj3YqTCBYtCsqaMe5VxVz3kdIXCIpVlONT9daNLlFOZouAUQ/sL9mep1jDt4O1AmQvK0iZ+aL760kW2hEh3LooIEGe1TlhioI5N4mkXum5dt5twLUaYBx0xLqcyBNeSHRdhCQ5auZIkQ8JQwnsQMcQhYEGxlKkaz1bn/fKbl83nqXaa0NHHLJgRVy8xN73vHPT2Y7BQxHEkYbHvcx3+ges16deU5COYM9l3WoAPFDH7ou8VxhLAUgCVEUhChmpBiGAZt4zVMaJZrIZxr8gDQOpLe9svEFU2fFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8404.namprd11.prod.outlook.com (2603:10b6:a03:53f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 15:40:32 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:40:32 +0000
Date: Thu, 6 Jun 2024 11:40:30 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 15/65] drm/i915: pass dev_priv explicitly to PFIT_CONTROL
Message-ID: <ZmHYbhN6kEVNMAw8@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <fad44d3d987d914c83844cdf172adaa19772e035.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <fad44d3d987d914c83844cdf172adaa19772e035.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0043.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::18) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8404:EE_
X-MS-Office365-Filtering-Correlation-Id: af831d3e-91f1-4783-54f2-08dc863f004c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?EwlDWfOJBm2DnTdGbnKh/xVu9UD9y9oHUt1Z0Oq/L37hsS3Dq9LKgsNb4brO?=
 =?us-ascii?Q?f5quhN8SKUsLxWa4lMTzw8FgF7miYXayaDuSLtIzdkJhcfv+OB/GU/MMUQa2?=
 =?us-ascii?Q?Ejz6r9GtAOZl2XGDjHt6gGlCG/p6KoPHgxWS7Ix7sMMTygiTS/uJCCgVM1nA?=
 =?us-ascii?Q?MCIFnQaiysr3DQULPUcqzwtT+B1eiqislMzsN5xj4g2LIMQagWvOLZPpJ9n6?=
 =?us-ascii?Q?yKV6lXN52HKiDRN1UbJVHK07UcU0ciXWPch4O+Ni4y9dPDAxFM4jkpBrrznw?=
 =?us-ascii?Q?oyCSFtigzZEhkK1CUTEWnfI7f+kEnnu5RIZenTT4lU4XrKrwVHpxrh51h3h1?=
 =?us-ascii?Q?sDoL3wcW/FXq1YDL0YH8BftnuKqQwKMQlBMmRxk7cOd1+ghYTC/n+x1hwdf3?=
 =?us-ascii?Q?lEP/byKdX3EieSaZWf+xs77ASA/Ne5lJC0y6c+PemV5kr4dn1Qlas07L6zwP?=
 =?us-ascii?Q?rN1uy/FnOjD5RRyKeRnbfCTvIIcNc1u84Ez//sJLkqWP8IU43dga4lHqfqdD?=
 =?us-ascii?Q?7b0NeMwM0CBslIyLo2l4Dr1LoGm6fNUJpIv1dC7u9STp+auXHvihW0yFrCAl?=
 =?us-ascii?Q?QU1OkxXph/03J94Lf4cW6OEqFCizncYKPl+l4+V614Jd7uvGCcmqWKcGgCY9?=
 =?us-ascii?Q?gqhpVRSKULmtnUzinzNA5yC0afPTmSSzdTzCUN9iTm/oXbVqnklp7JQxSL4R?=
 =?us-ascii?Q?afQPFHsPjC6q9IoulJvma+FnA6mf8eIMSwjs1qfCKTj19sClpPCjIC+XoVqo?=
 =?us-ascii?Q?LinHQC7wbYpnLo1wHRTVGq00PXXIvpc7/rNrGwbUTZF/Y3bKN1XLNcU9ZtG/?=
 =?us-ascii?Q?XvHbEXNemDDIehdXBvm2Ro6wNIFHCwFC3kGASqanYbUOSvuDSBXdq/BQcY5p?=
 =?us-ascii?Q?BMd63VGX2julu5Q25TZsV/ZVSljj++Jtt9/ly583lvRHc2GUtAtORv9hBQb6?=
 =?us-ascii?Q?KHLJs1nKgvISl6TyXlddSA7gT1InVOPF9mMSuoWFhrlbF6ZThe66cUXWmROT?=
 =?us-ascii?Q?TAuY4+OwfaiUA05XoJ60SIQmLzbty6gh/WID2cyrsfWnRAottByTn6k8ujpC?=
 =?us-ascii?Q?TBeClzvqlw1ibUV0eRRHPwh0AFlDNebcR9TvkTJvjTdQfM0jQrnXr0gy6C3N?=
 =?us-ascii?Q?t1ohYlowyJECry94c6FmppXvQp7BVK3bfPN5MJ8g05LC0ZD7pueoqIb+0BCz?=
 =?us-ascii?Q?svjVeSpCJ6DJXxAtQcmVHCuAEEKUuraPtYyaOarGqeJe+gttX+V0WG2A4CI3?=
 =?us-ascii?Q?JujCXv4g7BGgFcejMxT8ERhUziHslbgaQfjsa91kkNm4OghUiE5InDG+R9C6?=
 =?us-ascii?Q?PBX2c+CRKoeZxzFNxe51FFUw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CNI6DkC0ki1B/tqT4PFLwuzWLpkvkrIKUUwMYVTZu6900VzfK0BNOPspLdOV?=
 =?us-ascii?Q?W86cB107Ig4XWhkQlJN9Yiffwfonsc4t5q7Iv3OkPkoSr8uUNYZGJH5VMM4F?=
 =?us-ascii?Q?v9vcovlEgdnshcOZgNZjqo/r9XGONwgFJwxMsgBLaNUXv//u2HZb065Ec8NU?=
 =?us-ascii?Q?dppPeZv2aDAqIyruOkdQzdOaVTu3n5Y1KNqybf/qaFm6xBzZR/NXei+8yNpc?=
 =?us-ascii?Q?0H5OY57VV8bD//Orx0YlH7ByOVuihsqxYdwOQ78Drny/ZCk+89rjIYWmlhDp?=
 =?us-ascii?Q?M7OzY6HipRWY8gTYpup5GoXUAYhFxc61WL3pXvMFq5vzXTXay8fRUlKCMLMm?=
 =?us-ascii?Q?fqkKyfvqYRSS5y7puy3GPENgWvoSKJXP5oDJwpBSVAv7jBcoyE4KDUSKSvaN?=
 =?us-ascii?Q?FWpKCpiVogmkB3EAt5WhC+h6TJvbTQq4VZu8O97gGvrmHYe9geBDvqSuEE71?=
 =?us-ascii?Q?1TZpDWim8WloI7jy/NARk+XmWvqELw6Vm8s1Z5FTgmxwUybutmYnmS7isffp?=
 =?us-ascii?Q?PXCiJKb0mcbkkjSDwvgtQs+nBn27qyrcF8AqKoZ0GFO74F0+0F7knmCdxOaK?=
 =?us-ascii?Q?UAv9ZepiSuY+1K8E6Osrhf0C1annE97Nbhcn2YdGqwLmGeVnQzUJchPX2wMl?=
 =?us-ascii?Q?85DoMw3UBlCi6DFFHMyftGviV7C8/N/NkQOzTiWYG9GC7i7ZznQxN9r9A2ur?=
 =?us-ascii?Q?hHB6xebzotshjQBobh5iZ63Ldk4lJ0hDUmZmgh+3nOOGNC00//17RhlJIHBv?=
 =?us-ascii?Q?e1Ht/63Qmdcy3tnDTrdqU78bB/FtnkiFWMH6xRrQpjd5W5Mzd85jVe4W9KFS?=
 =?us-ascii?Q?LX70pBlCEORzLVbBaSTePu9Ytmm/GE6vKb0rpH3plLsqZ0nSMIQe8ccX3m3c?=
 =?us-ascii?Q?Ytp6QcxTyLuNcsUWosQF50G1bUn4xWC5RAGKLff1L7xfYFX5s5KvoRRcDjbK?=
 =?us-ascii?Q?sJDtbb9Wxz/4nzIxVOU7xIWuLOLigZlc2Jzt9VRSvotccLKlByX8t25nYU8Y?=
 =?us-ascii?Q?ddZ2b+HfpEklAPbHVAGfwZQ2fQaIc3dpRieIvvA7wZdSSyjjqVzm2XrFnbp+?=
 =?us-ascii?Q?KJ/wHbS7YfSUk6NQBuvuL00SDJjdLYdwEuqSod/ikFf3gTkxc2NJ7HRJCi3Q?=
 =?us-ascii?Q?ZRFdV0pxIIYj/gwYOP+VtLZFeQfU0V+XyYtIkMh4g/d6He92YOCuOPUHP8pe?=
 =?us-ascii?Q?zp3Cbo4Zl6inrvNXlBC3qUl5Vy45pDnwJ+ZXvMU7ww58kiWvDmt4MTcWNPwJ?=
 =?us-ascii?Q?YvqEXO6MEoURSJGqn2bNJJiqrGDKAOaHkhykswHvQIaSKOCgGDswEMaElqIL?=
 =?us-ascii?Q?Kl36I351TvEhq0owdGV+mmJIMs0qGNpFCT4XLv0xs1+DEYIf64IrygGAhSlK?=
 =?us-ascii?Q?kz/i3VtdxB9Zn6D9ry8Ji0k5iWCwyIo9WGjvOGI9aPFq6wobVuY5+tkPMkjP?=
 =?us-ascii?Q?or8mmN4HNqJZqloj/6XMvBhQXD3haslZ3VHUOfkyAkbju6CkRsQ8JNQqlRHU?=
 =?us-ascii?Q?zHIUjTGm/IrheLbSpgvrwgITTzPYJEBlvwnwDsGQPErxHI6/8sTTma4usyN6?=
 =?us-ascii?Q?rijmdySiYVykrsQjx9FqZ7CHyFQAopE/4YMJ86J0?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af831d3e-91f1-4783-54f2-08dc863f004c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:40:32.7571 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: reewBPs6fn+h9qaM79460ieNgvaSQ9XjFpkbO4E+q3PmkSsziAFvx05r/ay7ScCWCa9ZPggg2xmKXZrWMV5goQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8404
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

On Tue, Jun 04, 2024 at 06:25:33PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PFIT_CONTROL register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 ++++++-----
>  drivers/gpu/drm/i915/display/intel_lvds.c    |  2 +-
>  drivers/gpu/drm/i915/display/intel_overlay.c |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h              |  2 +-
>  4 files changed, 9 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e7ee4970e306..49672694293f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1861,12 +1861,13 @@ static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
>  	 * according to register description and PRM.
>  	 */
>  	drm_WARN_ON(&dev_priv->drm,
> -		    intel_de_read(dev_priv, PFIT_CONTROL) & PFIT_ENABLE);
> +		    intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)) & PFIT_ENABLE);
>  	assert_transcoder_disabled(dev_priv, crtc_state->cpu_transcoder);
>  
>  	intel_de_write(dev_priv, PFIT_PGM_RATIOS,
>  		       crtc_state->gmch_pfit.pgm_ratios);
> -	intel_de_write(dev_priv, PFIT_CONTROL, crtc_state->gmch_pfit.control);
> +	intel_de_write(dev_priv, PFIT_CONTROL(dev_priv),
> +		       crtc_state->gmch_pfit.control);
>  
>  	/* Border color in case we don't scale up to the full screen. Black by
>  	 * default, change to something else for debugging. */
> @@ -2195,8 +2196,8 @@ static void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state)
>  	assert_transcoder_disabled(dev_priv, old_crtc_state->cpu_transcoder);
>  
>  	drm_dbg_kms(&dev_priv->drm, "disabling pfit, current: 0x%08x\n",
> -		    intel_de_read(dev_priv, PFIT_CONTROL));
> -	intel_de_write(dev_priv, PFIT_CONTROL, 0);
> +		    intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)));
> +	intel_de_write(dev_priv, PFIT_CONTROL(dev_priv), 0);
>  }
>  
>  static void i9xx_crtc_disable(struct intel_atomic_state *state,
> @@ -2974,7 +2975,7 @@ static void i9xx_get_pfit_config(struct intel_crtc_state *crtc_state)
>  	if (!i9xx_has_pfit(dev_priv))
>  		return;
>  
> -	tmp = intel_de_read(dev_priv, PFIT_CONTROL);
> +	tmp = intel_de_read(dev_priv, PFIT_CONTROL(dev_priv));
>  	if (!(tmp & PFIT_ENABLE))
>  		return;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index 891777481dd9..9f018503d4fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -148,7 +148,7 @@ static void intel_lvds_get_config(struct intel_encoder *encoder,
>  
>  	/* gen2/3 store dither state in pfit control, needs to match */
>  	if (DISPLAY_VER(dev_priv) < 4) {
> -		tmp = intel_de_read(dev_priv, PFIT_CONTROL);
> +		tmp = intel_de_read(dev_priv, PFIT_CONTROL(dev_priv));
>  
>  		crtc_state->gmch_pfit.control |= tmp & PFIT_PANEL_8TO6_DITHER_ENABLE;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index 1c2099ed5514..e41881f08d1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -950,7 +950,7 @@ static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
>  	} else {
>  		u32 tmp;
>  
> -		if (intel_de_read(dev_priv, PFIT_CONTROL) & PFIT_VERT_AUTO_SCALE)
> +		if (intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)) & PFIT_VERT_AUTO_SCALE)
>  			tmp = intel_de_read(dev_priv, PFIT_AUTO_RATIOS);
>  		else
>  			tmp = intel_de_read(dev_priv, PFIT_PGM_RATIOS);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 166c7f4f9c6c..b0dbe6113bbc 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1588,7 +1588,7 @@
>  #define   VIDEO_DIP_ENABLE_AS_ADL	REG_BIT(23)
>  
>  /* Panel fitting */
> -#define PFIT_CONTROL	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61230)
> +#define PFIT_CONTROL(dev_priv)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61230)
>  #define   PFIT_ENABLE			REG_BIT(31)
>  #define   PFIT_PIPE_MASK		REG_GENMASK(30, 29) /* 965+ */
>  #define   PFIT_PIPE(pipe)		REG_FIELD_PREP(PFIT_PIPE_MASK, (pipe))
> -- 
> 2.39.2
> 
