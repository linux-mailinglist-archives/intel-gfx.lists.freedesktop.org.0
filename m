Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF9E8FF17D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D23E10E9DB;
	Thu,  6 Jun 2024 16:02:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a3HTuuey";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8032510E9DB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717689737; x=1749225737;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NmK8F+xBRvdW9bZ9/6mzEN0edKGPHol5cYZgdlmbcjY=;
 b=a3HTuuey6rpDQmn5qOs6fbK7VAgV2RNZBOKXgXPr5l1LH4UWvHQUcGAh
 V7j9wH2YOaZ9bQkIZso8xNCe8D/TiGDQREoLNe/G+KfpXtsCKEVqWrTYu
 KU7QGlmajhzMKVcT6mVjsQFXkWoL8UDMkUT0UnqRIn+9EGeqsJihkItGo
 QpRKp5KUwjVU2SNIHC57X+CUCDlSotqphYOduUsy1xuTa4s1OGklM41um
 VwPZorokTVyPKVF80jGblCZXuzbjPVf6HyFlBIdqcNQqjPamKrgDKEFJh
 C90GKovgWGwfKZxIZN5tx6FEO9516Ir6Ar36HrfqHXtMBwIFZiZsicjxM w==;
X-CSE-ConnectionGUID: Rj7gScdbTSuPUK8EdMwhlQ==
X-CSE-MsgGUID: zesLEyoNTZKc7enYub0MvA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14490628"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14490628"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:02:02 -0700
X-CSE-ConnectionGUID: +rAM5iS8Tw6qLLgL9k/L4w==
X-CSE-MsgGUID: ZYFJ2pBnTjO8HaUd+F5cJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="43108104"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:02:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:02:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:02:01 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:02:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PUzbxJEBmcszFaY1bK1sY0lhQtafAVjOqB4/NunaVcRrTT4QtkaCZpLxIWJDaraTRp11UgAZ5Hm/6kIZ79FPaL02r5Eei4oKLfdm4wuq3ePr5L79IzbdN9p00U1XhqFDaX7iTpJUFcTz+Jh0YLXQ6pOSgwkT4EXVouuCmPPs+70PNvTFdiQFSm7pFusfYlkKWj52hGIwxaEONsIeE2RQWmz0bY8j6cBlPTA6eb01EpUoa5oq87Op0i1WedsoCS5IdwUTEQaVUqC/Cyh+Bjq6HQ5kdNie5KkdjNBetgDU3Djzm3n1TtD+AFL5YMx8/Z1dmG6abOqFuWDGqg7PBnubrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wSCUazRUOeWtThJHu5nQ6eO2xBxVuVTE7Ad6shOrlCM=;
 b=cQxM8LLO9+MvHlgwqI6Z3WPUb/LrhuRtwnJ8xyit7TCvuZD3nmALatKC05wPX64FzWL9bIu0UvQV3HbTw1DXo6J3yOvoYiiAMmYaqwks7FTE0r2jmTPlcr9v8RqyC4F+QTsGHyLwz/pmWHE9fKm1jCVqkzv2uzNa3gm6e3b91fnYpjd2vdNUd42Rk7xLfsrbTgXLEJYeKnO7t+N6VwkBxzoz9gPGjZeEtDau6m6fwpjr3HKXH0mp/RogK3eZEY7lYJsooaWhgbfoDEB2zhtpJVMJJ4259XfVrdOYb8oKIljeX8cj3Py38KnM5Yc1/4mwUzMoTaLb6RSFZsT49pKa4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB6825.namprd11.prod.outlook.com (2603:10b6:806:2a0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.22; Thu, 6 Jun
 2024 16:01:54 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:01:54 +0000
Date: Thu, 6 Jun 2024 12:01:52 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 31/65] drm/i915: pass dev_priv explicitly to CHV_BLEND
Message-ID: <ZmHdcPDvyqHjcE7K@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <a2c5064ee3a985f7b7b5c7e672737df447d3af29.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a2c5064ee3a985f7b7b5c7e672737df447d3af29.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0068.namprd05.prod.outlook.com
 (2603:10b6:a03:332::13) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB6825:EE_
X-MS-Office365-Filtering-Correlation-Id: 27ed19a6-f499-4a69-b2d5-08dc8641fc63
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?lNSU7+UNOfLrXqarLAio0cdabRR1u6RrJqQEJfA34PW9EKF2uxYRzyKj27Ox?=
 =?us-ascii?Q?OJgzNrByVxZxev3/QC5imqZdnEf4hVK8jRlnBPjTD56JFB/1vjPipDiM2ZmV?=
 =?us-ascii?Q?OEAQzIkNoBs7x/1o1mOKsrD2zV5B81SMv8ygWgmM9p5M+Z1oWRQnNLThuND5?=
 =?us-ascii?Q?0HLUDx5lyNegSNFnsbsZ0VOHWiufvGUJbwzcr7i0iuY7RQVPetJRbcLz8cuA?=
 =?us-ascii?Q?u8dpIan/GfxlUfbRfmICP5yhme7i0Ib3JBrAxWTxdugCJSIZpMZ3gmgJQM3o?=
 =?us-ascii?Q?8BX4+kRIsavF1wMfdupwtbk9jfoRVenTCutihg2roMsuDMgr6Hr6nWobGnqz?=
 =?us-ascii?Q?HN6/R6MU42IDR+Fq0cfQ1N9o2XMH2ycS0DQDiJY6rXliHx3Fb5BkqbtrKXVC?=
 =?us-ascii?Q?tGeiDp67AdC/axEO4/+UGWho7rNWyXxFo4CPtRYRpqLky0SVWkGidogGf+V3?=
 =?us-ascii?Q?IXyVO1M80M4sqKyx1O6pWUuBLdnDWwEseFBIg/q4SvCv5TyW9Hq8q/+gQy1V?=
 =?us-ascii?Q?mq4rCw3/E2z+lEHd9R1mY1OAXJrrbyE9uWtYUgvruyLpIFtes1Q8qc0zZ2cK?=
 =?us-ascii?Q?+273cohs6MEcR/gzvs6XB/SzotLK6feyZzirjSsZu5gsj574hDq2JsBmbdRi?=
 =?us-ascii?Q?6QiQXEcPOv57XadnycJZ91ofD+1SCbHXdKR7rw+nyPdiOz5l0/UJ7W+wMayu?=
 =?us-ascii?Q?cds+fnawhaVicWQ2H/toISzHK/QlxREqSfj+LpgbmacH2CafL272CqgEWLBN?=
 =?us-ascii?Q?+a0s0vLIHH6ZTPyvpK0Pu+N0dDfCDXBrAuLuPyMk+uUg6savUqPSRmXYOEL1?=
 =?us-ascii?Q?H6MdjrqlR+sUwWipglPRqEd55/Jy+QkGNXPnb/3tPgijUqlKfxrjsYhein6y?=
 =?us-ascii?Q?74tuFwt4GReWIq2B5B9EpGbGT2atn/u7oNLBCS3GCs0Sh9YPofDRJBo2UaJ8?=
 =?us-ascii?Q?p8+p3cYIUzbB/UhHsv1OZRGZaZvnMVoC91UPirPJw/nG6KnKBm56wXm+e9W2?=
 =?us-ascii?Q?zr3ROlwohO2mFw1kkyYvnNYoUl5hPFgnDKFVka8m0sjBnr54pU9LIF5vQtP3?=
 =?us-ascii?Q?kcSUe14DZDfQ+vs0jhKNYRHu7B+T6JTgjOrTqEPNbWsQ79D2aAhvHKQnCaWw?=
 =?us-ascii?Q?a9kHd1xvXj52llmss9stFN3bz8hPKYf/a4n+RtLQ50AsoiscCm215Jy4P0NS?=
 =?us-ascii?Q?Y0Du4NLHG9uDrnSMvYZaHK85tebDxl+qSbruPNZJatGb6EqJnltZGP9egYkR?=
 =?us-ascii?Q?4A0fXlzcRtnlB51D4u+cz1vDufTFvdrzRBKkOuMYMs8v+hhZie/U3kWlFznm?=
 =?us-ascii?Q?YjPJK/0qKEpOppEH/ktGli0M?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jZU/ZDzx2d6Sy6UqeK/iFrhaVBKTv5O9leGh5nzWV7DXSFWeR7K9+sHzmfOW?=
 =?us-ascii?Q?0ngt9SxQk3SYCIFCEQ7kP6P7yMP8ZBJQFq1Ji+9ec44gJs01X27yNtd5vQvj?=
 =?us-ascii?Q?CDFmrIslzteDud8C7/ves3/EIo98XgIfqiUG1jtqylFvzAVY6GpwgRCetx4u?=
 =?us-ascii?Q?nM+0ePHNKRXubI/HDjDKIwW2a57jthUkN6wpoqLURU+jWg4xPMKrDafPSPYm?=
 =?us-ascii?Q?B7iFJoLO4beFcOwKJ6Aw0U4gbRb/KbtieI+j2Cr43A3/c9luWEQyn2ftafBG?=
 =?us-ascii?Q?bGw/2j0IrJJhAIyN1LB01T0iEquVZ7jr379Rctfb5kSHv7LACn8JpbXo5e9p?=
 =?us-ascii?Q?DK97qYCKlzzGXpOkLbcocx8NGtxAJvppzyccpPA0V0xXQkeQCYJCGxHvAVnK?=
 =?us-ascii?Q?2/nGYb2dmwS8WIhH4U9JLn/h3KUYrpTnTLxDLqH1h7lG96EXX5I4sLLW0la8?=
 =?us-ascii?Q?sy2nAuh08qghXHrs84fLcNQpWBQY4KVutX51tKI9mp8vCEwHsN8DUfx4f3cZ?=
 =?us-ascii?Q?2mDVVD0xU/JHO4RZ2m9SHaurCUcfMyfuAIJIV2oDHir8Woip5NmnF8xQCAv2?=
 =?us-ascii?Q?B+iEORuw1CCrR1103JqWm0f4yKy1h6+5FLAf8XdkFM6OT4WXngz/kshYutQP?=
 =?us-ascii?Q?8sI2eVidD6umfDHoXlAAXZ9j+RHecrZOs2DLCqxVPy0rsyyGKaxdNfIxzbUS?=
 =?us-ascii?Q?iXTsyRCY50j10UsOYNvE4ZCLXYmCTMBD9kTfp7E2ozBYU7JV3hJYhfpofOqe?=
 =?us-ascii?Q?4mg94TCCl2OZPk7YtkR0qbNsCby07njFHheE3UOvo7RX9eok7D+i0t2l6PBX?=
 =?us-ascii?Q?SPJURBODXNCSnlOfjRpDV560c1k3KXRUb4IqAgM+UafYjMnbLvsvau6wd5XL?=
 =?us-ascii?Q?HI+PKfCAE51x5TeJYzbWjfPSghZV3e8vUCQJXcP0CAa7HjjiX2vTsLe27kwd?=
 =?us-ascii?Q?B6+m8cnSd8hspIvYd5PhCAmX6gwiTk5lCFO+7z1GzzY5ogJ419dhcNtY6pxZ?=
 =?us-ascii?Q?huAW9iQKZe7qtB56THdI8Xb4tw05zIR9MlN0N5OchiV8wNg2fv6RLfysY8cr?=
 =?us-ascii?Q?LyyTD+mj9LGrpqTsSDJA1NswD4NFk744whFo/0WYcVBEVGGqR5QjgWqHjZQO?=
 =?us-ascii?Q?tuoDUJGnev5fRqEZx3LTvnjLHtiJAYP4jVVlGMLY/bTdiO1GXcVPI0FOq5gU?=
 =?us-ascii?Q?BlYJzqP0wW0/ADiGPMGaXGC6L28KvJngVrG8u9A5iDFAE/NeLl548PGSUM0e?=
 =?us-ascii?Q?6+sHKmbYNc+EHb1FknjowjcPwoRITD3r8hRYfhNP3ilehLoQTkLLc1+rNwNF?=
 =?us-ascii?Q?7gjUqCdeP9Q8uzBi5EOGELigXNq6UVlC6EMI1KSUaLpspfmrn1TTWx0FwYNT?=
 =?us-ascii?Q?Yi4KBDT5J2xUVfYbXOJHXhbWVrinzKI/Izj+FBGVF2hUxshammzxBa6ZzdcV?=
 =?us-ascii?Q?TlOgVjQhAa0/+H7PChH4UEJOuu8/12BrWLVrA07MCkmPadZNZirEB5p8KYZo?=
 =?us-ascii?Q?B+LRqsLuWI5hjZEmJTgmLX8VThnwXHGFmeYuleVxMZfSfX7RhHCouAjGN4H6?=
 =?us-ascii?Q?Mpxix5gx5uP/7tTSF88RLpf/VoQOtUea+gEv6j5N?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27ed19a6-f499-4a69-b2d5-08dc8641fc63
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:01:54.7034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OseXsdED4zV2SCjmvC67sTzCHlAWwnLnAEYXoceFZmjfYibqFAz3dimN6xtCc2oFLXrNuSi4ZCqqHYon0zOWcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6825
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

On Tue, Jun 04, 2024 at 06:25:49PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the CHV_BLEND register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 48ee8aee21be..a6d7928fbe37 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2108,7 +2108,8 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
>  	intel_de_write(dev_priv, VLV_PIPE_MSA_MISC(pipe), 0);
>  
>  	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
> -		intel_de_write(dev_priv, CHV_BLEND(pipe), CHV_BLEND_LEGACY);
> +		intel_de_write(dev_priv, CHV_BLEND(dev_priv, pipe),
> +			       CHV_BLEND_LEGACY);
>  		intel_de_write(dev_priv, CHV_CANVAS(pipe), 0);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 5d9429bf17a8..ddfa77231426 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2271,7 +2271,7 @@
>  #define   CHV_CANVAS_GREEN_MASK	REG_GENMASK(19, 10)
>  #define   CHV_CANVAS_BLUE_MASK	REG_GENMASK(9, 0)
>  
> -#define CHV_BLEND(pipe)		_MMIO_TRANS2(dev_priv, pipe, _CHV_BLEND_A)
> +#define CHV_BLEND(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _CHV_BLEND_A)
>  #define CHV_CANVAS(pipe)	_MMIO_TRANS2(dev_priv, pipe, _CHV_CANVAS_A)
>  
>  /* Display/Sprite base address macros */
> -- 
> 2.39.2
> 
