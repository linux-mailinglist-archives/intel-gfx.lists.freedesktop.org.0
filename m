Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF73860510
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 22:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 872F010EA8E;
	Thu, 22 Feb 2024 21:46:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VefoVQJW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DED7410EA8C
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 21:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708638379; x=1740174379;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=KzZIvjx+VYYuQ9KG6kwkECUOb25zuVBboGFbba/ktMY=;
 b=VefoVQJWE+jUw0KxiqzS0H646U1q3si/t3lPhI+hqv+7VXRTMaQ0EFUK
 Ny5EyaDMguM2Cf1YJwTdCTTY8C4fY+r/JgxKRPxqe46M9AxvM2xWS+6/p
 /8v1r/l2PyUx8gGDfgR/iuDs9eWtrEG4zC8VtFxwaqqmDjanrdX70FApr
 UIWtXnDCT/Jr72zs/XAlQlm7G7xp1/g7UReTrI+th6hIbciO+285GeCOS
 UJmiwE5hp1m05nSGVP41e0u1Ab11p3nfYz3vqshNMfiiLdMF4XVs44lQe
 gWxQYcjZL6YuzJ7FmuferKtX2ysPS+J1sUs+W1eaJkUBLiauiKHGXlA8A Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2765739"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="2765739"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 13:46:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5573258"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 13:46:18 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 13:46:17 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 13:46:17 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 13:46:17 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 13:46:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G2gTTLn0DIf6uEYDupz0mIQaRFuEQ/uNqh3daXYtCkXFbMR/hL1cBeVb35dNJqfnQCZqTxyON5zLwIvyp3dx+h8xgtWxCa6yVv9by0IT3VQFXKgTriGsGUP04+s46ihdAkC1ThYk98hqj23RZHGMyUhX4kCKNZxrjI3pTX854BzJbmSu7mlqOW+RCEo1fcSrzF5I/8JuNo0hV3QIzmt6tm9Z7y6Wm9+lw6HolJ292G+u4Ulxlpf+NnDPykVld1OnYK4BRTkzhQ8zPEGHIS6uvlpcg49KA27dxedN336wa46gtH2TUYKX/iZEDYYeHiUedzClfwRIib26yCtPgP6qCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r6e/quB2GJz6HkN66Qm+C+1uvRVfWpYBLBN0fWflfKA=;
 b=DCgVfMivmDqj0y3U3z6akwAfMFgNsPl3cYAJC66auY5Ok2PPMXS+sQUtgMiRB5hHexLDb8MDFWQIHZfbQuyyvDz/fwVVinAN8neZefaUtxjAG+bXoe9iy78uuQ2WLvs+YT1xf3FPvEowhwW9oLCvFTnxKpzlQczj+AVLi/ygjSpYF9FYDPOheIMxiS8zxxTJGuh2nRE+X8GNWbbkYZaZRbz6K+IFhRR1c2m8vRoi4YQKAESnfLNzjYHd64BMQV82K8+YVn9UhTou7UFrqyc7J8Qo2ImO6Tv9ybHjuf1zNwhLApzO6wfrmDEhH//ddLkUkrnJxcyM8hYsFlK8M1fhNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7360.namprd11.prod.outlook.com (2603:10b6:8:136::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.10; Thu, 22 Feb
 2024 21:46:15 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7339.009; Thu, 22 Feb 2024
 21:46:15 +0000
Date: Thu, 22 Feb 2024 16:46:12 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 01/12] drm/i915: Indicate which pipe failed the fastset
 check overall
Message-ID: <ZdfApN1h97GTfL1t@intel.com>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240215164055.30585-2-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0055.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7360:EE_
X-MS-Office365-Filtering-Correlation-Id: 67480ca4-0759-460b-d7c8-08dc33efb1c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 20qQjuvO5+AOW+bMP0fzQFOB+aQzGBh2MqrCoKZBa8bj/zzvVsB/xpyCaMKS2Fbb3qxiGAf2VJpfk3k+NwnzAQxjrGHnnf42GjhsLqwdo9DruTfDKHmOwtIMZKHMD/egm8GcgLuVuX7KmlwEBhJD0Uznbzpa/YqpMgFgKsD26Nxie6psBttDjn5rBMB+TrlLcv1sDPHMX9iFGL+x1WWcs76lidtWNK6b0iwuJJWB5IUvkjPKMm0Zf7UUV/q+p59cxx72I9lwF10BGmVes5bvAYLp0nsgduvJ42PF2t/iQ5oUYi2iqHVljlztYLOya4v0hJ0fMfWXX2e3RPJ+aBzmQ4I9CLFE1uZzVmuqnlINIGipg4q6vQzj/RQYKr2tuaGeXxlT+x7sZy2Rr7TIXV/ZmIbZ5qZJegrFnW0TXAtbHni0ghQ9kshru7Z/NGGW+DR3RsUpCpiCpQuSr5bw6vmUWLnm01TqlNw+n5Z9GJkCgRMLLKCbiq3vMuBmU7nj+C7/UI0RyXSwPeil474XwKeAK5l+/PXL3FpJP424grTvU3I=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?NpbIA+X9ygexPuD/IZC5OoYSDlTRdJH+q0EV3nG+9SwN/eDGjE3V6tVQI6?=
 =?iso-8859-1?Q?JODAXRkvCULsNYzBpKOATZ/rEWtChWomiG0ixDrzhkZi/+xgYYMkZ5B5+S?=
 =?iso-8859-1?Q?orDfCy8wfsbQe+bFYQLy+pU4D38ab6AYVJicNBX4WM9sfxx1Y+TjAK3EmS?=
 =?iso-8859-1?Q?eZqbDSDgv6GefThBLdk4wUtK5Uk9ZOU51Ik9M2wkUIle1VxihfA2tFZqIa?=
 =?iso-8859-1?Q?SLwIPg/6hmIIxEhtaZhFk5yVujjUYKeZEQj3ZdJ6bc3F5SdubqwY5S4fXz?=
 =?iso-8859-1?Q?I25oPboM+HwXde9Ar795/bQqFioiJQT6qAAmdQBbKznV+Ju39vkOncJNs4?=
 =?iso-8859-1?Q?Uw9lV7AKE7LENrWGcgPhARs84shXZOnCz3qww7JdzKXL2RCwaB/j9omVcZ?=
 =?iso-8859-1?Q?nANFJFkkoAsrgli6cLoOKFu0lplESHZLK6dL/q6poe3bdhxjO2F0/KxPZB?=
 =?iso-8859-1?Q?mBZw0CaLYclmIk0chGkT/N/HFlDc+vuhX6zg6Yhm4pTE/NY2DghYiFaAFk?=
 =?iso-8859-1?Q?Fs70qtfR1VjJKMlrvviFgH3uSGO1hM8GDgke7XK9G3V+CLatQIAuOq5vS9?=
 =?iso-8859-1?Q?CMegVMv2/AehgizfTiTwRD6WjE5e624xcUG0jbUsCRi9HjrgdphxJ3Lxxr?=
 =?iso-8859-1?Q?Zp1bP4k7C7ssIjEZekX9qJ9tr5naiFmctR++FEqyQOJaq1zuQs82rb9hFZ?=
 =?iso-8859-1?Q?8sQF7IUyRHt4+qWlkT2Ie5FyZsIfKD665YbVKfAAo7VKpEcUdfC4kBDKyX?=
 =?iso-8859-1?Q?mr2m8tucxowrJn+D82fRwKNCSGOxOMPg257pondIbk8nuvWsgHd2yb6sjl?=
 =?iso-8859-1?Q?U49y5AJbanLO1F2LkH2SL3LxlBNJinwNtjD72h8wKC1ULTmKurcU3gFLi+?=
 =?iso-8859-1?Q?8kdj7nr4bz0yxkxBa50fbM+NUuOr9nFN02FT5lrr6XmDDPCMG5hUI9lpb3?=
 =?iso-8859-1?Q?e7o4wTt1sdnyGYo5+0NJHXJ05BTizDC6Y3vo511/u5nfb69qij+FSoECWB?=
 =?iso-8859-1?Q?F5xGQK010GdsPPmAMeSENqqnBmJlmXJUsnOuMuAO35kpz8qJ87DJVAwb5S?=
 =?iso-8859-1?Q?BDYfk0s7KwaObqP7FUk5JunYvyALlOyEYgJ/eE5gIt6gJbkPOSLqSzfTLy?=
 =?iso-8859-1?Q?I74dejEw5WT1toAWfrDL8khOGnR43WhzZ1OjKck3CRV03QmlOfcIVSRYrS?=
 =?iso-8859-1?Q?+xAljcZNf1MKakVUU/heLrp9uicY3iooqVU1ZGgUhHkh56dsG8q9XzPzo+?=
 =?iso-8859-1?Q?MbEn94spOTNih5cBtd0U4VpA+YL+CWmHrgS6FMmWtiKWejw44Mc7DmPXha?=
 =?iso-8859-1?Q?eJP9Z9KGqaMvwiXCn5nimev8VwDWcabHha+pemOF4NgDDLWStr9qmv20bD?=
 =?iso-8859-1?Q?/lGAn0R2bxNW9hQPscb82osRyVfVKdTL9wLwgaQGtOQFQ+LvlzbMxCbwYe?=
 =?iso-8859-1?Q?edn8cPR/fSshhrNtVt5BPQg9xD3NgSmoKNQ0OO70/nizgGTlxqAD4cUvT1?=
 =?iso-8859-1?Q?UaG4aWHr5dem9CRaWb56ykoVmc7JZBmTd4D4I4wWLGewNsJdK2b2hlyq9c?=
 =?iso-8859-1?Q?ewxFWqLPOR+MTyWqeoNLVnwT4MGVOlQmfWmpROAxdSsdj1knRdcy7qppyM?=
 =?iso-8859-1?Q?5REFyoDj2axeAYm9sLdLFmh/xbrG6GKXqyVAB9jpZ4Q7FlKXPKtV0xLA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 67480ca4-0759-460b-d7c8-08dc33efb1c8
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 21:46:15.4499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3d/1lhEol43b1qEqwCeuZMr/0qH8UZSzyUwkkvrgnYPY2G4YgjEsxwH7sEfk1NM+zV9zva5TNWTHpONRM9XuCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7360
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

On Thu, Feb 15, 2024 at 06:40:44PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> intel_crtc_check_fastset() is done per-pipe, so it would be nice
> to know which pipe it was that failed its checkup.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 00ac65a14029..a7f487f5c2b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5562,14 +5562,16 @@ static int intel_modeset_checks(struct intel_atomic_state *state)
>  static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_state,
>  				     struct intel_crtc_state *new_crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(old_crtc_state->uapi.crtc->dev);
> +	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  
>  	/* only allow LRR when the timings stay within the VRR range */
>  	if (old_crtc_state->vrr.in_range != new_crtc_state->vrr.in_range)
>  		new_crtc_state->update_lrr = false;
>  
>  	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true))
> -		drm_dbg_kms(&i915->drm, "fastset requirement not met, forcing full modeset\n");
> +		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] fastset requirement not met, forcing full modeset\n",
> +			    crtc->base.base.id, crtc->base.name);

looking to other patches in this same series, I wonder
if we shouldn't benefit of a crct_dbg(crtc, "message") that would print
[CRTC:%d:%s] underneath.

But anyway,

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  	else
>  		new_crtc_state->uapi.mode_changed = false;
>  
> -- 
> 2.43.0
> 
