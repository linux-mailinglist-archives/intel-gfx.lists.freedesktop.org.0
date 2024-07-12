Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 290C292FEAE
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2024 18:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ABBD10ED4F;
	Fri, 12 Jul 2024 16:38:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cW5jviFI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FF9910E079
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2024 16:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720802292; x=1752338292;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LesWO0TFbeIVZfl4JN52M6p/qtt0kn030odzDfSwQn8=;
 b=cW5jviFIrOKykTTt0Rol0/PDfCcQ95UIt+MexGTNYX15ysmRRRcojFKW
 hK6UJ0YM2W5o4d+abFDgb6PQa8wEtnbty+q8gbjHZeDGJG31bI+qkydOv
 AaICeA6pHc+SETnnWUI2IxcTtkP8tjAyTLul4zG5nMgdAwLMcuuw0rvsd
 LDiOxJ3uZ/pbZ+z5rFGEBjk/lcZVUt+J171p+nuITycDGQrOxSBpbxLwo
 5mK5SCxM1UqiVowkyx9ez0ThcMOTPivHfoxfN1F8HaS9dCkh044+w7BwX
 EgvhcMTRQVIfc/eErKF8szDU6SXSJZ3QxzTG1h1fG+sNO1TzenJWprNqX Q==;
X-CSE-ConnectionGUID: A8YiIHYPTUWQSFi3275ZsA==
X-CSE-MsgGUID: UYFOxJHbRKSHwhFDSDQvBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11131"; a="18122914"
X-IronPort-AV: E=Sophos;i="6.09,203,1716274800"; d="scan'208";a="18122914"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 09:38:12 -0700
X-CSE-ConnectionGUID: k4rrDWI8QXSXU/vQ47pXlQ==
X-CSE-MsgGUID: 8jvD2FRrTzKnQly2OIyTig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,203,1716274800"; d="scan'208";a="48859056"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jul 2024 09:38:12 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 12 Jul 2024 09:38:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 12 Jul 2024 09:38:11 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 12 Jul 2024 09:38:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n9ewAVNYi+zCVLjRmGicPZZLFHhHBAnQ/sadD/EMxm+tDcxEY1cpj8JzQt9YqJEunZBHcyvA7hOo90rvjxzHQnWaWHJVN86RfgOrbCRXx7/7ENS1ED10FyjpDBygKrXdpGp+bvET/BFpxX6IrOwh2jysXhhZBLJhILUa74hVVEto4nXe02xOapX4J+bRPKWimsrkGWvmNISU2IMDwq8h56WjdkRcRf2ja2XOdHEt+iUw+6ktS5IYWOPTXXOdcymwLE3Gl4NfhWNw2dFocc4N1yGJizTQcQ4Uxp9IcEp3ZoQ4C8cTn5mdbXkD3ntlhCblzFuNwSMWTJyEo7sqZkKH6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PTXtYd7bK2UX8WwOTc2SsN5E3FRq11fD0bkEbfppW+E=;
 b=yFxi1TzHeCNPMVUiPwlrWVrUpqyVdchvJD5sfSprbmYdiPogbljwf2exYqaQ5tZ8QXUCTuVLDfV6OJp0qeIxaJcF+Mu1TxAq04tppuMm0RaiRUnE29TbLhWOaNeiINZ2uNG+lvKNNmX3DR/EkKYSZpwi83PWjkCoYovgQDkCEEV+O8aH9lU41xs680lvSuQLaEnlWKmvo50PT0UVh7D3jwKLh0WNLGz49tiMqNI6EVcy9qujhKrL+PiuZ5RkSLKyudjPTteGZf8h+bkvpsJifobtPsXeg5lOJ8EO9CfUdCcpRKtRKc1Z03lcLkNfB+o5nmGq5mdAT5c3euLOigHX/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ0PR11MB4814.namprd11.prod.outlook.com (2603:10b6:a03:2d8::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.23; Fri, 12 Jul
 2024 16:38:04 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7762.020; Fri, 12 Jul 2024
 16:38:04 +0000
Date: Fri, 12 Jul 2024 12:38:01 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/3] drm/i915/dp: Don't WARN on failed link-retrain modeset
Message-ID: <ZpFb6QpTV3LLFpIw@intel.com>
References: <20240712135724.660399-1-imre.deak@intel.com>
 <20240712135724.660399-3-imre.deak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240712135724.660399-3-imre.deak@intel.com>
X-ClientProxiedBy: BYAPR08CA0011.namprd08.prod.outlook.com
 (2603:10b6:a03:100::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ0PR11MB4814:EE_
X-MS-Office365-Filtering-Correlation-Id: 9cf8bae4-4a4c-4cab-5332-08dca2910085
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/banqzVoTy0osfHFlip0VDP2bXnn7Nqh8KaGdsrwUQ+a974As7V1zOqgzxgA?=
 =?us-ascii?Q?fWBCm6BIzPZP/KFcH5sQwDB/sOPcpRsgT/1NgQt0p4eKuy8eEkHbtWVZRUSe?=
 =?us-ascii?Q?E0dGKziIhljr3b3DBRub1z2lR1EVS/Z5Je7iwIIOjOtcMiQoqAmnfGWgedcg?=
 =?us-ascii?Q?boaXPMh8QhYVc3uRqVtlZrXccYsEHMSslVYi8lcPtUkwTMJDwhDJp85AUF14?=
 =?us-ascii?Q?F6gQPNx6+TqnwL8iJaHKe1NmvWUH3EsRKIJNBJcYUlxY0wFwFwVg0ztmNp/Y?=
 =?us-ascii?Q?Im9jPsPLwfneQknLPAcgd+rSFrrdKw8HS03aElEf0Bi0FchxMxFJ3DvdLPH5?=
 =?us-ascii?Q?LoL5TWbmmDZLT94IdhwaZ/BycnWhJkzriE3bhYixxEwuk56XdrHcc+qIO0i4?=
 =?us-ascii?Q?72wDhl6i76LkqTYwZRFAnb+5kJqyqHzU83y40Y4A2zReUwGUr1dPvTgnS1Sd?=
 =?us-ascii?Q?ZVzIvjw09tiiQCK1EgGiRldhon+fkbeRvosCNogkqAmyPMIGKedxZWyMz4HC?=
 =?us-ascii?Q?YLPez6b0EpmJGDTjFu/5HA3UdsiZIvJhTzvCJ0Y6pdg84DkLkzNlTF1XuJfo?=
 =?us-ascii?Q?QA9QG936+Pa6+4dMdLk2uGvJYeN0FrouPkCSLMiFYInyZfZElZxA3LBsaA3G?=
 =?us-ascii?Q?zALrm036c4yPRx/nwX+T2j8fV79ubUN1HBWVNKnDvMTy+so4MhdXgr+2ZgLc?=
 =?us-ascii?Q?g+9xUd/1vr2zoWHuxenmZ6M8pUkVOYG5NogwwT3kWjaccJ0r8pt2dYpe4l2C?=
 =?us-ascii?Q?PFbaZw7iP/ZR0YYNRt05X5bjmPFBMEVoAep37/r7Jf+aI4t3bTeNgzgi+wlN?=
 =?us-ascii?Q?/jpZhl1rxjbD4yzaujA4tmZRM89hq32Tw7ZCtwGdfui2cEoDL+/DUIB7AuDD?=
 =?us-ascii?Q?HLIOvpuT4BaSPPmd3Dzny5wiwSa93K/SJ2P5FWncU1Z8g4WVCG+ybu2Ma36t?=
 =?us-ascii?Q?a8VP2ksYtTGsxBnUbQ2jhTGS3XDfoa/zqhAxPW3ilPk4djj7d6GvPyfdQa0q?=
 =?us-ascii?Q?bQ4oAJuDjWwQt6mfKOlQTMl3eN0wIynCAG4JdtWm2P95rL3hiheyJ05bUUjA?=
 =?us-ascii?Q?6dxW+q+dAIXsJ7uMVsIcPkEQ4K5DerQpvmvqlGtBUMW2NRhTs6XWHOjhKJki?=
 =?us-ascii?Q?+IfOU287/dxyS6sjGqjA/XDvYpUKMqyy890ndDskss0HE4pdOAnyP+Z2m962?=
 =?us-ascii?Q?uSVgnBxtqQ05lphjScEGLxsL/DI2MYqaTGzdVSYipNrKAWbH53BsgCu3fLLC?=
 =?us-ascii?Q?wPy/hSH39i7pWh2lN6xD7OqtyZWDGs202+WfLAUUVzk+b8w7aaCpgA+S8eLJ?=
 =?us-ascii?Q?FUBgwHhpSqIkUJfjqs/FLIjAgHOAYHbboI5lqGKZQ3cfog=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZG/UNv3pR0NeOGKvRCqTgK7U4PKd26+Hg8GfUSZ+jPAvgGdy+tEYVZZiD/lv?=
 =?us-ascii?Q?wzuTrBWVQ2OxcQly2y6vwNyJvvv6OvuqglpB5qs5vyW/3J/V7rH00a/smUpK?=
 =?us-ascii?Q?fzJ+hAnD3UvjQXsNS2fOidz34w/RWe2iNHQIsOf/HFVEm0C8ISiUBHXuyoyU?=
 =?us-ascii?Q?q7pFgbhaIharq+Zhf8s1W6ozoWI4ZseGB3Bw9yS2COVhSit25/Bjc7bV4Clz?=
 =?us-ascii?Q?2YnOrZGkpTp6wqB4coFvoMlD/NauQtVQeyGIfNgcJkxhGLdvgAziyJ1FYH3B?=
 =?us-ascii?Q?b1Cqy8jHC9/jC2bVCux1tOmkQuO7h4n97CqJXDeXuHLukork12TrnYtM9Wrz?=
 =?us-ascii?Q?AW2U2/I14WFtXsJTHdLjfz/X9VWjRGkeIeJhHoWv7IfmR6LOcqdeCEn+7E83?=
 =?us-ascii?Q?8JWSgIxUfwaJbUbjTNRvKPf3nzZ9DP6UFt1a9LPdkcKvx0JNhri+J3BRBpyR?=
 =?us-ascii?Q?t2Td6oDIuZ/FUJSvLAlylyPU4hkfZ0NEPMRDeY0PT39bFRO7d61UgzZKGsQv?=
 =?us-ascii?Q?MHXiImhyrSvHjfUH1Pm+o6UwkM8og39Zf+/9yO90VcBz/1pPatyPY25hVw2/?=
 =?us-ascii?Q?X2NuxN0Sa6ZcPL+aD06ufRk4kF75tLXxKlW4ZR3J7eNjsa3SM7v/PqUViuub?=
 =?us-ascii?Q?2r1O47wO8bJDix3/x4BmZBV7lj1oSHqaCn2u8o49dLvS6AJh66Tml2vpO0lY?=
 =?us-ascii?Q?DJ+Xsh7ti3tDYPXQBgXgJICk343h/XMUiSAcx5p50sWankjVEKdS7Y5EpxyG?=
 =?us-ascii?Q?5xtkOFr3o7og/pgeYcSFJ1cJ4Hu87ZY9ag+SH4x8Pt2VnIsJvwP8XDvswgO8?=
 =?us-ascii?Q?IVOz6YYD2pLIu6GZA1qr+GwARgiwDxGGhYVjUEt6WAH+uK5Xb3bPNvpT4tLh?=
 =?us-ascii?Q?in81Ho/Jus/E4SCopbxFAzFdDfAVtQk6Ic3Qp15aMmlKOOel/zWSob8hQRqB?=
 =?us-ascii?Q?Sb2O1LdqC6sHRI82eDT3ov7p9ZcHxgmPbe6kda63hC2kXFyBVjzqLln8d7FQ?=
 =?us-ascii?Q?x0P/lJUh/uL6Ojq3ATa8trSCmxErObWqsjonGjjEv9Uq1CMRoSCF/eeOyqMF?=
 =?us-ascii?Q?gj9IE9kXVnkDE8KxRNADF4eu5xdJH1RJdBI33A0NNFPP+y2Kt6kExNwPAuK0?=
 =?us-ascii?Q?zXYHxWQBj33HlwEENfeYZVP1X0NjibAF+XVZ2XKm6KH4HhiJtuVTIUV0gP0z?=
 =?us-ascii?Q?rPuzgEAWngRD0yWVhg4WLtj0KLS2PpdUBsjzLWJVe/jrbQEGvlUifJ1TieQF?=
 =?us-ascii?Q?+pgUFHF5r22eRFkK22FE9o5tYQb8zux8AZiiiulGf9L4JcoL63GjG/vkmApe?=
 =?us-ascii?Q?CQRynefFlJ1NWT4uUmUyXMdYPKNaC/VCOylSv0WEOLK1Wdo+buxoA7IqF6DL?=
 =?us-ascii?Q?ldkEyqNFwWqFR9pEMxqqnZSvhYLA+8El0fL6euFYiiqAfke9RIs3kVvK0oq9?=
 =?us-ascii?Q?giijmepjAaNBCFH2Nvr0j4pXUCpmDw65IAVnTzuPwJk7CFvztDcXr7CGJB4j?=
 =?us-ascii?Q?hkGJ0RglwDPglPGEsHMeQcSAZ01TS41QkpEqu9ZqWtDjbILlJwCOVL133WN+?=
 =?us-ascii?Q?W70OhLc/OrC4RHwEM3j0W89bf9S+SIS1QYT4a4wsh/RI7jw8xkHqNFAiuaE/?=
 =?us-ascii?Q?qQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cf8bae4-4a4c-4cab-5332-08dca2910085
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2024 16:38:04.5053 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8IOhA7wlQqA4HebfevFSc6XrxzX872ldl/Cbr0NdhOOvQ0OW1hyVI/8UbWipK7IzXy3UnRfhK3IpJctzZr90vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4814
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

On Fri, Jul 12, 2024 at 04:57:24PM +0300, Imre Deak wrote:
> After a bad link state is detected, the sink capabilities with which the
> link was originally trained could have changed: for instance another
> sink got connected or the retraining was forced after the rate/lane count
> got decreased (as a fallback). In these cases the retraining modeset
> fails as expected also printing a debug message, so don't WARN on it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0365fb1e77eae..1e43e32e05199 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5282,14 +5282,11 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
>  
>  void intel_dp_link_check(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct drm_modeset_acquire_ctx ctx;
>  	int ret;
>  
>  	intel_modeset_lock_ctx_retry(&ctx, NULL, 0, ret)
>  		ret = intel_dp_retrain_link(encoder, &ctx);
> -
> -	drm_WARN_ON(&i915->drm, ret);
>  }
>  
>  void intel_dp_check_link_state(struct intel_dp *intel_dp)
> -- 
> 2.44.2
> 
