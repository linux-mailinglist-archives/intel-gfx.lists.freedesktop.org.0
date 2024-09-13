Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96238978A40
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 22:54:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4AC010ED8E;
	Fri, 13 Sep 2024 20:54:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DTVVReKK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D929B10ED8E
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 20:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726260860; x=1757796860;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+NRkqoOhCAcuYo92xrb1jXs52u7013dq7F7D7t48Y8k=;
 b=DTVVReKKr0E2WsHBwS3DvVJrMeLS5q0ib1dQHN4v98xt+BA7RoDpDhpJ
 0kkaU/JgzO33bL8k2pkhGdhhUydv+vcUQBO4+WUogaoR2AHUYLxN6rWMs
 vYVOYqaw+jPuGJOLOGrwIEes8+fY+M2u8IIUIl2EMpVBZGSJsI2zMo/dK
 LPsNDnKVcVPwsF123GK6QaLkYU69AMVK0fyWePyPXMOXlwB2O8+jHLgXP
 Gnm4x1+Bqn72wfz3nHLlJWN0aN4xkHuZoggwP3VnKYHtBstbRLi48U1BM
 nZeiZjHByexSwxB1NdTARwlsUEef8cqcL0SXGhJpE+CdfDzf+TL9SW5Sd g==;
X-CSE-ConnectionGUID: uivveXh7QnSi/YRWtbOjlQ==
X-CSE-MsgGUID: X0gX1MWZSGO7Fjf0/swMiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="28959878"
X-IronPort-AV: E=Sophos;i="6.10,227,1719903600"; d="scan'208";a="28959878"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 13:54:09 -0700
X-CSE-ConnectionGUID: D0twueH9SFWA/BHDck2HGA==
X-CSE-MsgGUID: 5v0McD5iSBKcwCz5RsYCjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,227,1719903600"; d="scan'208";a="72567674"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2024 13:54:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 13:54:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 13 Sep 2024 13:54:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 13 Sep 2024 13:54:04 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 13 Sep 2024 13:54:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iC6TL7qtCNUPjRbYJv4ceEofY3pRlIpY5usboSuwY1S4XA1xSfwylvuREl8sfPaFfntrbcqsxRcfvg5VT0es0MCFiWK/mb7P51Rp22ESMT3bULHAMgHl2lHlXm36hqCTkl4xQ/3tdGD96wq+SdqZYqTvhOf00YcAIdipdcB0UoVjBwzSQZbSwfYXy0cROcTySZl/aKjQZxQN34pQSLmBRLgxTzU55YoDMGiKxMbZ9ANhlp/eiyt1yH/MCrWIiC0iA49szFSEVcms3ouDa25ppE6MD64/EeYgAKD8SL27sXeDVHRnRLmP/yDFBPpQ1BoJIaqzFc44YNhQexucYaV4Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pt66H7DbZsldzJpo3pcQJspQPvl73E2Xl1N/zHV7CLM=;
 b=Ad0bHAiDmJV59PFx3bkXl1W7hTA2TPqq/FrHH6wRoQ6/2EYY6ZhLm0Up8ZZrcwZNs7hZY+IijQLVqVkDNAdJDlhKXuHFW15CajOmR/fiaLNMlCNN6fxhnjKVGhfw3PQDAwqhegizqeBJNTPb8DZx6Elh0DPrVTir4zHH4xI9n4YHqRHTbfVvnDLHOjI/ZLtiEtLWpQXmnyE4ht4OCHtST6KSr7g0J/etGbenutAOUZlhIiT3kYCWvMJFkNQ3kPfkO9/fBY4S+W8TAwUtKlZPgLMXQ4iou2cD3qpX45Xtbaq+Po1M+Iob7CC61MWFZTnzk3XEenXHDQUrmIiZtxhZ/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 PH7PR11MB6908.namprd11.prod.outlook.com (2603:10b6:510:204::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.17; Fri, 13 Sep
 2024 20:53:56 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%7]) with mapi id 15.20.7939.022; Fri, 13 Sep 2024
 20:53:55 +0000
Date: Fri, 13 Sep 2024 16:53:50 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915: move intel_get_pipe_from_crtc_id_ioctl to
 intel_crtc.c
Message-ID: <ZuSmXuza8wwkvqkZ@intel.com>
References: <cover.1726235647.git.jani.nikula@intel.com>
 <edcf4477e6f38cc1f36a8afc0d09fd98544803ab.1726235647.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <edcf4477e6f38cc1f36a8afc0d09fd98544803ab.1726235647.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0238.namprd03.prod.outlook.com
 (2603:10b6:303:b9::33) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|PH7PR11MB6908:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d636ff6-50a5-4cb0-8690-08dcd4362d79
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3Tfks7EYfkv5+0zh/mIGMOZI5kf+D7pFtV8LlD87naic+nxSIBatULOtGr/I?=
 =?us-ascii?Q?DC7GIl2crJBSAI2pGXIKgAExqIzJCEH6vTXE+3yWNU6XlXEnTMW0awIM4dW+?=
 =?us-ascii?Q?0ni6jOE1baFd3yG0dIeRvmZI9rymCXJOENdVeAK4YP+C+X/sONruTT82ah0Z?=
 =?us-ascii?Q?QWdmBgJYujD8jFXfjDdkhfIiDgopMfNw9KkS2sjQhYnrH8A5ScW0O4wnnU7p?=
 =?us-ascii?Q?7aCktEDLB/cqeMYM8qr2n+jMe30dVGVy+hm/wrpeFxLf0z8e26JqsnSd5/3P?=
 =?us-ascii?Q?vUs23/V/P4J1JBBS/VNAhCHvKpfFrhRLL4LgG52oxQxrXWq1XPFi0FVhTYw2?=
 =?us-ascii?Q?mTO8pPivbgb5pHNtF7jpA5Qf0YXrMy1sg+JEnRzgJF//TqxsDaPGUYoWa9GT?=
 =?us-ascii?Q?pQbef8ZkN9vXf9tuL+Fqc7SRz/F2FQppYjUxHLLRUa95o3E+n35Vajh/O+iw?=
 =?us-ascii?Q?fB58It0EgYYbdMw/uvUSYC4Po9n/9sizqWqJYpoOXmfD7ZX3iOjObPtwtkM5?=
 =?us-ascii?Q?UH0b2ukUi/2HQjHsrL0ixur+EqG34s3J/0e1qWRmBkodo8AleiCxuLr/4Z3B?=
 =?us-ascii?Q?rDOECW+hkYX6nSbArFqw7kJiXbYLbltqMErz/d7sOz6r8XrNGlgbFGr9lopB?=
 =?us-ascii?Q?7tNhZCVlbeCjBLIzQkH+1w8UYw5oM2+XqoFECb/Xyw3qz/3PAR9dvHOTVEsJ?=
 =?us-ascii?Q?G327I9XQogrt8wmE5CePfcYsRD38Kh3TOhp99kyiZ4XNzgoYw27tIHul1MEG?=
 =?us-ascii?Q?S04OGjXrRmWwrfPHs15QbDiUr0KnhQUPZHUrCNm8Mook4L/NUBKhr+rygdYL?=
 =?us-ascii?Q?rpKVS6LI1H7kdDd9e5LsLJCa8amle9gjMQcUBIh5cWw4NZUbUYOdP+CRRrVB?=
 =?us-ascii?Q?oYe27nCnbfYOr4NoK7jM5NVP6Kmo38C88+DrONb1LuhVL+wRuPRx89tpxk37?=
 =?us-ascii?Q?gNBRuAdcl456upUyxFOPILy7XBfhnR3Pcqx+h3ckd/2tS+yl1aAYsQQydx2c?=
 =?us-ascii?Q?mShVapkDfLOsC2JdVm9zxpJON5sA7BMjya8bkZYJN0yoDjskyw9sOXHL7RsU?=
 =?us-ascii?Q?pA6KAtxKM8dhQMFQjWUwPXZh9Zt6qLOpmlb1E/cczbVVg/3+N0ilIlboFl5V?=
 =?us-ascii?Q?hOe1AWTiBuW0UJxQzB32AQe0uysJD/bR3B0kzfSzXrPNoiMNX0/fpvemnUEw?=
 =?us-ascii?Q?LVDVXQzg7m3tPRFaiEiunWEqR6Njxa4cOyLWfzDwNYwGJId6WXz1sjaVyXvX?=
 =?us-ascii?Q?y/OmbM7Y6FZqgHiiR9KzFyUX1rGa0rgxMY7Rv0XikHi/a9F9PGvFuq5GWM+r?=
 =?us-ascii?Q?074CJiWp6DnOy23SvafcBJa1jyzp8u3YfhuXxPa6efrOEQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?B8ze2Zx6WrdzomkXyF7xzqlD+VuQ+7JkmqKPfHZn0ALhgyDDaZnVGQ/NTrdA?=
 =?us-ascii?Q?/EtLhTacUB/ucThP5ApudyN3scyHLeJhCdhQp8+H2UlnApoLQt2Q4fBwOEEX?=
 =?us-ascii?Q?PwapC35HM+TI2zdi0k0b1O3UmzfVUcrLQRvsnlarJabnc4cGo5Nz3uzpzAok?=
 =?us-ascii?Q?Af2Jsl6XESWRlX7AQN4dry4EyImQxeUBGHMbjO27GHbp74Kt/BhY5K9CVIMX?=
 =?us-ascii?Q?nrhynPhKvPkHeLs/OHHgU1QacqYdJvZoIE85D8x9Mkvk8YlJ9HkbJnVQOjU0?=
 =?us-ascii?Q?tbYePLup+IgGGyhPuypPJ3UVDUgylh+KGIJiXD2jh9sKu0NmibGqqxcSqL4F?=
 =?us-ascii?Q?gJub+/z9wk8/peLv1yVES/31mOFKac/txsUGWw+proJ0AQJB6ZdVsS60sQ5K?=
 =?us-ascii?Q?eWRv74QI8eEwRUO0vIGhX7A0GA6O/gm+IEXGafsLK+OUBKto5Oc4dzDE8LZQ?=
 =?us-ascii?Q?1oYs+dTldG20sMIt9+mgAmlLD+4ai2OEbZlQTo3hFhqXUS1jiFGjKwZYv1PR?=
 =?us-ascii?Q?wuz7TOm725ZTVscFBETDTCaHLmTmfGtTv+Lb0CXPdHC/o2yt2DK6wy4t6qEV?=
 =?us-ascii?Q?1gtErmmh75L/nQZZ64iiZKfdFLDP6/BqH2av3fuT+oJj5S60DQTFzFOzyqaQ?=
 =?us-ascii?Q?1POsOFEMmQf/jeB/8xN7BOM74PFou23u18mqOC2lA5JkBaNXR4U2JjKFdCiM?=
 =?us-ascii?Q?TKdnItZxndffkidATTLiIXJMWT0hXZWmu1iW/u+wFp5nDBd8tcLo4XFPdc2C?=
 =?us-ascii?Q?1EvKXCS7klvZd7hJFFxxMeg5CB/5dmOVzYy4cf1Gths/OXDLT/a/ZIzU2vb4?=
 =?us-ascii?Q?tc5jwCCnGBTRU9+jErXf2LKh0lDyF7uYR7azb0JR4JRAroaSPclJWb5qtefe?=
 =?us-ascii?Q?lNnifqdWqjbjFFagC+Dc25uaLvgggcN3yahnwopLV5fefRYV2nLD2cp41zQe?=
 =?us-ascii?Q?uT7hsfVTbd7PVMG08pzxZmym5XhScm5ivt2BkgFIeZR10cNKmbGVMLeY03if?=
 =?us-ascii?Q?YXSbXjpPIzvseq5ie+MSHUmmAOQM9m5XPBxuKqPZiC4t2ppY+3qBBsy0gw93?=
 =?us-ascii?Q?FGZjq1NtGazF66I0zNWI/bFR//1t/MQRuQGYXMxlWO2q8ENPdfXBjUbQaEIz?=
 =?us-ascii?Q?sq1iHLyuMF8HiUhdD7WZTrjaFBqfLR5qsIn/Gf/kO/3D4ujyVhzu2yjqqz10?=
 =?us-ascii?Q?wrRT4lTDgWyYu8uwtr5U2hpL4PlrnqmkAONEj5p/NbucIT843O5c2L+CUN1A?=
 =?us-ascii?Q?FoGw4kM8G5I1WkW2W5wVqk92FOEK1ZXViDAmoVMUTCpoX3jpDkgaIB2gk1uV?=
 =?us-ascii?Q?vt8HgA6zEQ57jzOjX44nfAmUxOYJmNrzfvXejy2/ywr8OqTNwuRH4beEEB/2?=
 =?us-ascii?Q?Q5qBBvLgM7bfWRc8qFnVau62+aD0A6idVxD05E4qacWe8Tc+d5fPO2IP+sKJ?=
 =?us-ascii?Q?D2GcHsLk9RdtydgkfY60MO0+6sNmRy/YRUHvURWEf6GHvLtRYT6sxlR1Ibj7?=
 =?us-ascii?Q?peXAiwpUHfwWSeT8CxlNJyzx53/Yf0R5vZ4eT0J63eBL+AY8nxJjaoUo6h66?=
 =?us-ascii?Q?hAoZ1fZ+XIdu3e5rLcCq9q3L0Dm3tQcOq08v4M6lDwWn+68hSxiBa8nJSg5c?=
 =?us-ascii?Q?Ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d636ff6-50a5-4cb0-8690-08dcd4362d79
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2024 20:53:55.4384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YLAslU5IH4SLCQn3YgyJdAH69jZ7TQLJhl6RC+caGTKrbojkjtoDr0RDByriY49JDy/q31NF65XF62EMI0T7wQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6908
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

On Fri, Sep 13, 2024 at 04:54:38PM +0300, Jani Nikula wrote:
> Reduce the size of and dependencies on intel_display.[ch], and move
> intel_get_pipe_from_crtc_id_ioctl() to intel_crtc.[ch]. Rename to
> intel_crtc_get_pipe_from_crtc_id_ioctl() while at it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c    | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_crtc.h    |  4 ++++
>  drivers/gpu/drm/i915/display/intel_display.c | 17 -----------------
>  drivers/gpu/drm/i915/display/intel_display.h |  3 ---
>  drivers/gpu/drm/i915/i915_driver.c           |  4 ++--
>  5 files changed, 23 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index aed3853952be..f95d169fc324 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -389,6 +389,23 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
>  	return ret;
>  }
>  
> +int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
> +					   struct drm_file *file)
> +{
> +	struct drm_i915_get_pipe_from_crtc_id *pipe_from_crtc_id = data;
> +	struct drm_crtc *drm_crtc;
> +	struct intel_crtc *crtc;
> +
> +	drm_crtc = drm_crtc_find(dev, file, pipe_from_crtc_id->crtc_id);
> +	if (!drm_crtc)
> +		return -ENOENT;
> +
> +	crtc = to_intel_crtc(drm_crtc);
> +	pipe_from_crtc_id->pipe = crtc->pipe;
> +
> +	return 0;
> +}
> +
>  static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *crtc_state)
>  {
>  	return crtc_state->hw.active &&
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
> index 0de8c772df2e..a58ecd11bba2 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.h
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.h
> @@ -10,7 +10,9 @@
>  
>  enum i9xx_plane_id;
>  enum pipe;
> +struct drm_device;
>  struct drm_display_mode;
> +struct drm_file;
>  struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_crtc;
> @@ -32,6 +34,8 @@ int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
>  void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state);
>  u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state);
>  int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe);
> +int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
> +					   struct drm_file *file_priv);
>  struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc);
>  void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
>  			    struct intel_crtc *crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index fdf244a32b24..7bba54a31eda 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7706,23 +7706,6 @@ void intel_plane_destroy(struct drm_plane *plane)
>  	kfree(to_intel_plane(plane));
>  }
>  
> -int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
> -				      struct drm_file *file)
> -{
> -	struct drm_i915_get_pipe_from_crtc_id *pipe_from_crtc_id = data;
> -	struct drm_crtc *drmmode_crtc;
> -	struct intel_crtc *crtc;
> -
> -	drmmode_crtc = drm_crtc_find(dev, file, pipe_from_crtc_id->crtc_id);
> -	if (!drmmode_crtc)
> -		return -ENOENT;
> -
> -	crtc = to_intel_crtc(drmmode_crtc);
> -	pipe_from_crtc_id->pipe = crtc->pipe;
> -
> -	return 0;
> -}
> -
>  static u32 intel_encoder_possible_clones(struct intel_encoder *encoder)
>  {
>  	struct drm_device *dev = encoder->base.dev;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 7ca26e5cb20e..d10608526eee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -471,9 +471,6 @@ bool intel_encoder_is_snps(struct intel_encoder *encoder);
>  bool intel_encoder_is_tc(struct intel_encoder *encoder);
>  enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder);
>  
> -int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
> -				      struct drm_file *file_priv);
> -
>  int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
>  void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
>  			 struct intel_digital_port *dig_port,
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 943e938040c0..7f98f2dbd881 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -48,8 +48,8 @@
>  #include "display/intel_acpi.h"
>  #include "display/intel_bw.h"
>  #include "display/intel_cdclk.h"
> +#include "display/intel_crtc.h"
>  #include "display/intel_display_driver.h"
> -#include "display/intel_display.h"
>  #include "display/intel_dmc.h"
>  #include "display/intel_dp.h"
>  #include "display/intel_dpt.h"
> @@ -1724,7 +1724,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
>  	DRM_IOCTL_DEF_DRV(I915_GEM_SET_TILING, i915_gem_set_tiling_ioctl, DRM_RENDER_ALLOW),
>  	DRM_IOCTL_DEF_DRV(I915_GEM_GET_TILING, i915_gem_get_tiling_ioctl, DRM_RENDER_ALLOW),
>  	DRM_IOCTL_DEF_DRV(I915_GEM_GET_APERTURE, i915_gem_get_aperture_ioctl, DRM_RENDER_ALLOW),
> -	DRM_IOCTL_DEF_DRV(I915_GET_PIPE_FROM_CRTC_ID, intel_get_pipe_from_crtc_id_ioctl, 0),
> +	DRM_IOCTL_DEF_DRV(I915_GET_PIPE_FROM_CRTC_ID, intel_crtc_get_pipe_from_crtc_id_ioctl, 0),
>  	DRM_IOCTL_DEF_DRV(I915_GEM_MADVISE, i915_gem_madvise_ioctl, DRM_RENDER_ALLOW),
>  	DRM_IOCTL_DEF_DRV(I915_OVERLAY_PUT_IMAGE, intel_overlay_put_image_ioctl, DRM_MASTER),
>  	DRM_IOCTL_DEF_DRV(I915_OVERLAY_ATTRS, intel_overlay_attrs_ioctl, DRM_MASTER),
> -- 
> 2.39.2
> 
