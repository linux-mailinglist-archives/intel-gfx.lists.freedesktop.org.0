Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B568E78BBFE
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 02:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29E5F10E381;
	Tue, 29 Aug 2023 00:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFAF910E0DD;
 Tue, 29 Aug 2023 00:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693268172; x=1724804172;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=w4f8PeIWzrIPjH49/ONXn5S39x5jvsp4D3g0tdTFhKU=;
 b=fg4qyV/LEkNm3mS1hY8Jtq0ftaPSXhTQstae4VFlHMQMVXpY6bN2x9Q1
 ZHzm0vz3ospkQA8MTfHyU/+jFekRkeFExtgpkwGUHzIKt0nDDegaoNl4d
 Z7Sd5BoD8yyUpFOc3QTMJovrFqpDeck5HOHiGemrW/P3j1hmP+MkpohxQ
 gLCblYWPxPSAfs0uaYIMfYrQX7ctYZXGG+dqpFE8AblNEpFqrO9M74eDN
 cQlwe4D+6o3tn2kfqq5ff3Tabi0cgxq7avQ9lDpz0BapMVvBlyFGiJVdA
 NCG13H7mud/4DYjA738msmaizmtkB/Dr1eJIIJXiNzkQJlARsQs4GqOZC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="360240504"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="360240504"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 17:16:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="741607234"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="741607234"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 28 Aug 2023 17:16:11 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 17:16:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 17:16:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 17:16:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D1LKJDp6lELa9oR5DCiwUE6bXn4CizkEJmWuMTdZ3IZrDzR+P2m1un+XJxBRBu5VEm6wMWOll6D5KLyy5sZgjodJ9SupfM7O+0CYqHgr/bwWKuzyqw2VNG8OVkAo60Pr9pnk0I4hAv7+4lOPDxYCqvfM3wBn0D4ftFfdrcK+iaGPo5M0RwC9SQQ7nxG06hUKMasKAxe8LilfYBD+IleaCR9o00bt1WYatG6TQG6FVw9P2EUyYhWVDXbu/N1tX5H+6oXBhaHITPbOrOMT3+5McySsZnzJ3a6HAmt1gShB8l9rLJRC9kR8jXrR/dOEE6djeL+fTRBDmEeKIJFxqm31fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SK/BoETZ49g2tcNSf5/NxnMx/ZWtLo1Nw9UrAk8LIqg=;
 b=dOFHpQ2vCTO6Pq7oKa1FcbQerOGhTq/PGkblrULdD0qu63eLZeRjq+BwLMLbsVfTl4MzHglzIlEcYYUFF+9SR/4qBdM51rIAHSQLt+ibE4MGqMZCrQ+MtVaNENlak0/xc3BP8FkNPJBxADLUetEgwOyPQvIzKuJTl3g5Yo3vfZ/nZUQ0VjN1HNA/TRM8nwediNYHLf5dua/ehamwCKlgwecB74PtOI/PeNjpdazXYZRJmRK4BMpZ/sQEJyDh65/Io6WOXxxs+WNvvHiDJePAzDDmuf+z6BPDxP7KRrz62EP5nwcUHY4dfek/AXilv50uTmCoog9hpi8YqPEEDlomMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MW5PR11MB5858.namprd11.prod.outlook.com (2603:10b6:303:193::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Tue, 29 Aug
 2023 00:16:07 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.034; Tue, 29 Aug 2023
 00:16:07 +0000
Date: Mon, 28 Aug 2023 17:16:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <20230829001604.GQ6080@mdroper-desk1.amr.corp.intel.com>
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
 <20230828062035.6906-4-vinod.govindapillai@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230828062035.6906-4-vinod.govindapillai@intel.com>
X-ClientProxiedBy: BYAPR21CA0001.namprd21.prod.outlook.com
 (2603:10b6:a03:114::11) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MW5PR11MB5858:EE_
X-MS-Office365-Filtering-Correlation-Id: 688a5789-631f-4f1d-5b1f-08dba8252403
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z/pLcLpcN/ozmzV/5xDpj1TMC6yF8JrxdvhBVgB+q+odepe6l1WxeGs051+X1cCm75EGdJelO2PNt8GDaUYCBzg7JwHPKI48r6knRKtHtAaRBdd6va9fyM8ChLrUUyzHbWAObB9Q7TM9BTzYWI9mhZE+tQEuPiMZVipNIUyLmyYc2HS5kE3slsjhIrA6f64RGeFsf03ObJ9yZLuBn8QvHG+nBbrBmnmMtwnRplwp0Xn2ELifYvCRZ1g5GpagHGpvVWd/et5cxfyDAXh9VpwOpaUrQe8LvnkEXT1wvqPRvLpk5DRtgJkldi3Ef4ZcnC7QT4nmsyXPCDZgbby7DzdWJPcKpQ74Pg8/eHEbbZsypqGBTSEmxVzZY0BdPgmQghb9tt7XVr5JWKeNeJkPncikk5o8pWR3sEZZ1xnwuE/Amtp0OS5fmW/uvjJ0HWH9Stc4zfbVbU+avcXLr1skigA1Jn7mwKa1RvvGwnLVgZpjEaoYqSl5y6UohbrCAossn4Lfnf7QAwcg/FiZk6WYh/vqDWVPULO5AXefL7DOQUhtlnUnYP56hnCzIy6g1DhJAKkv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(136003)(366004)(396003)(346002)(186009)(451199024)(1800799009)(6666004)(6512007)(6506007)(6486002)(478600001)(83380400001)(107886003)(1076003)(26005)(2906002)(316002)(6636002)(66476007)(66946007)(66556008)(41300700001)(6862004)(8936002)(5660300002)(450100002)(4326008)(8676002)(33656002)(82960400001)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zN8yxlFu/PMnID8/oQ43kf8RjNY0ELQk3REGWf2/5zQQ0tZATx2aErTn2xI/?=
 =?us-ascii?Q?HNycbgk5cThVPskESQhHbDg2YZfFbnjmqHLThzfLBaf4Zb7ApmEObs5youJr?=
 =?us-ascii?Q?VtHkUdG4MPfHMRGraCubSnSd7R6Fr1GTyuM/USWsBFgxVNDzq7Rj1CE114oE?=
 =?us-ascii?Q?zYBtQR+AgPKeXKck2qbasu9M3i7BSzEW2kdCSNeI9Kpb872wMuJDWUSlRH8M?=
 =?us-ascii?Q?FKB9ETRZy14G0StVA9CNtjcs26MXoFSl1FJdgDNzGubdT0Jyf6udx1ZAc1fn?=
 =?us-ascii?Q?iJyf9y3jv7pgRHfOXdPEcUDJKYOvnvd0qZT7C7hWOIYikg/ZnOZdogbaABm5?=
 =?us-ascii?Q?rAr3W6XTZNWk0ei90vCTW3PVx//HlRFFpTymsfxy7L0L53e9Ox07b5rURm1R?=
 =?us-ascii?Q?HKTBO5YoOxaT5i2WpZmAmsGysOwSXTgLtrmb22gY39xh93Zujk2DOESLFO4f?=
 =?us-ascii?Q?oBnHIXr+4+Oz7NjoL14c/4ZQgbbCT43pO5YiBX9s9f3Xu1aOluqhao/Fxloy?=
 =?us-ascii?Q?+p8zhGVscGyMdrcONFYbvJnK2+dYpxD4dsG2KZRQj8A8OfvSY+GOiI4CoB+I?=
 =?us-ascii?Q?+ix8cH/yjjro6/Cg8xEJUg7gJrboe5CeZLph/++1Z/w/imKwyUiJayGDiGRf?=
 =?us-ascii?Q?yAiNOwdUoLsiwiFmHXafyaFAy6HlrAc3fJzmG3EY+q6NUSB6L4sZOkMaoXzC?=
 =?us-ascii?Q?fqrBaGXoGyt08y5jXmIEwl99XFlAkKp7cnlX1W/FhjpQ5ShhJXOnHh4Kwz6C?=
 =?us-ascii?Q?v5q3ii+URukFPe/kG/X4b2mdK5vi18kJI+bfQolk2BE3lIOJy3xBIoa5mYWg?=
 =?us-ascii?Q?adjia8TRRoJ/gkAqmDCxOunNXC1JM2hH1B+sO3khWCnL+/9dPSFfIWaQGEi0?=
 =?us-ascii?Q?RvbtbJS1vIH4qNbiIW8vmhzshB6+yDgPmy5UZvOHZdb6IfJjL/d6Ga/ZfQox?=
 =?us-ascii?Q?KvC7IsHXjIlvflTqG+r9REKPmT3mnQEDLGlsDzZNMQCHqpNJIq7xEIhkaIN3?=
 =?us-ascii?Q?fk6BSqRbStsAkvqnXS2JB4Kzhg3z4NxnQMVdPVCPfluuU1IheQm80VTKEI4z?=
 =?us-ascii?Q?10ghkGnX8q3D5jvYe9VTToRARHen9nWW0wt2uv1HmkAhd0h11YYr/og1IHtQ?=
 =?us-ascii?Q?+Yi3pFIQDTx1ECeBIfk3m0OAlwB4MBWUET5ff1O0a8pYB+N4ZAecIYvwfKec?=
 =?us-ascii?Q?MeH+JowLZhD5z1XAKMaclL5VgU0TO5PK7ve1Hrw6Hxxzp6cB3Iw2LQ2xik66?=
 =?us-ascii?Q?JxpnzOhr/loM0oihQ8TbnWnonntg2QVrDvHiLabIsOROpLq19XO9OLMX1xpU?=
 =?us-ascii?Q?nn5F7KceXNUUsnE1MUL4O2MRURRE78WK02a02cHKqSMI03hwo4xkS3jAQGnZ?=
 =?us-ascii?Q?GtoUCWuyqEeo+U53xy869jwbsupOaQKXGoxWwCNUnvbxpPgdOVnoERKo+WFA?=
 =?us-ascii?Q?pjifVys+Bm1TDTNU4zsJ2VhmCrOYVI/nzsOnxJFdW4VnxYT+0tbGA9NpgdlX?=
 =?us-ascii?Q?kObp7MuuO89KdP3eOpw8XtuND1miqrF+1r7WgiFufE9eYpcxJgd+wO30iWen?=
 =?us-ascii?Q?jkaTV1MYFRU80uE9UMPPPJuou04OwInmX7Gva/J/KzNB0BRYie+UvV6IDZ0j?=
 =?us-ascii?Q?9A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 688a5789-631f-4f1d-5b1f-08dba8252403
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2023 00:16:07.6800 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XWGAvACXIES2j1rjq6Rsgt47QYtUDAmDj7IuLTD27VGQTaMXG+qENy4QEKZHgqeyGWLd/LDtZcFByZdFYQgaFPSwTK6xTDbP69PREiOevqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5858
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 3/4] drm/i915/lnl: support FBC on
 any plane
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 28, 2023 at 09:20:34AM +0300, Vinod Govindapillai wrote:
> In LNL onwards, FBC can be associated to the first three planes.

The title of this patch shouldn't say "any plane" when the reality is
that only the first three support FBC (the upper two do not).

> The FBC will be enabled for first FBC capable visible plane
> until the userspace can select one of these FBC capable plane
> explicitly

Even if we add new Intel-specific uapi to select this explicitly, is any
userspace actually going to use it?  Would it make more sense to try to
come up with a heuristic to guess which plane would benefit the most and
switch to that automatically without userspace needing to be involved in
the decision?  For that matter, do we have a real-world use case lined
up where we can see that switching FBC to a higher plane is beneficial?
Even if the hardware suddenly has this capability, it isn't necessarily
worth adding the extra complexity to the driver if we don't expect to
get real-world benefit from it.

BTW, I'm not super familiar with all the FBC-specific details, but it
feels like if we do go forward with this, the decision to select a
specific plane for FBC usage should be handled more deliberately during
the atomic check phase.  Right now it doesn't seem like we're really
making a firm decision on which plane to use, and we're probably not
handling all the cases where the register needs to be reprogrammed
if/when the FBC moves from one plane to another (potentially on a
per-frame basis).

> 
> Bspec: 69560
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 29 +++++++++++++++++++
>  .../drm/i915/display/skl_universal_plane.c    |  5 +++-
>  drivers/gpu/drm/i915/i915_reg.h               |  4 +++
>  3 files changed, 37 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 45e205a0f740..62f59630d410 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -649,6 +649,21 @@ static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
>  		     CHICKEN_FBC_STRIDE_MASK, val);
>  }
>  
> +static u32 lnl_plane_binding(struct intel_fbc *fbc)
> +{
> +	switch (fbc->state.plane->id) {
> +	default:
> +		MISSING_CASE(fbc->state.plane->id);
> +		fallthrough;
> +	case 0:
> +		return DPFC_CTL_PLANE_BINDING_1;
> +	case 1:
> +		return DPFC_CTL_PLANE_BINDING_2;
> +	case 2:
> +		return DPFC_CTL_PLANE_BINDING_3;
> +	}
> +}
> +
>  static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
>  {
>  	const struct intel_fbc_state *fbc_state = &fbc->state;
> @@ -660,6 +675,9 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
>  	if (IS_IVYBRIDGE(i915))
>  		dpfc_ctl |= DPFC_CTL_PLANE_IVB(fbc_state->plane->i9xx_plane);
>  
> +	if (DISPLAY_VER(i915) >= 20)
> +		dpfc_ctl |= lnl_plane_binding(fbc);
> +
>  	if (fbc_state->fence_id >= 0)
>  		dpfc_ctl |= DPFC_CTL_FENCE_EN_IVB;
>  
> @@ -1250,6 +1268,17 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  		}
>  	}
>  
> +	/*
> +	 * From LNL, FBC can be assigned on any plane. Until a provision is
> +	 * provided for the userspace to select a plane for FBC, lets select
> +	 * the first visible plane that is FBC capable.
> +	 */
> +	if (DISPLAY_VER(i915) >= 20 && fbc->state.plane &&

Isn't the fbc->state.plane here redundant with the plane check on the
next line (since a NULL plane wouldn't match there either)?

> +	    fbc->state.plane != plane) {
> +		plane_state->no_fbc_reason = "fbc enabled on another plane";

If you set this here...

> +		return 0;
> +	}
> +
>  	plane_state->no_fbc_reason = NULL;
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 4d01c7ae4485..1291351c9941 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1962,7 +1962,10 @@ static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
>  	if ((DISPLAY_RUNTIME_INFO(dev_priv)->fbc_mask & BIT(fbc_id)) == 0)
>  		return false;
>  
> -	return plane_id == PLANE_PRIMARY;
> +	if (DISPLAY_VER(dev_priv) >= 20)
> +		return plane_id <= PLANE_SPRITE1;
> +	else
> +		return plane_id == PLANE_PRIMARY;

...and also point all three FBC-capable planes at the pipe's FBC
structure, then won't intel_fbc_update() see the non-NULL reason and try
to turn off the pipe's FBC (even though it's being used on a different
plane)?


Matt

>  }
>  
>  static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index aefad14ab27a..b207774f3c33 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1327,6 +1327,10 @@
>  #define   DPFC_CTL_PLANE_IVB(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_IVB, (i9xx_plane))
>  #define   DPFC_CTL_FENCE_EN_IVB			REG_BIT(28) /* ivb+ */
>  #define   DPFC_CTL_PERSISTENT_MODE		REG_BIT(25) /* g4x-snb */
> +#define   DPFC_CTL_PLANE_BINDING_MASK		REG_GENMASK(12, 11) /* XE */
> +#define   DPFC_CTL_PLANE_BINDING_1		REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 0) /* XE */
> +#define   DPFC_CTL_PLANE_BINDING_2		REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 1) /* XE */
> +#define   DPFC_CTL_PLANE_BINDING_3		REG_FIELD_PREP(DPFC_CTL_PLANE_BINDING_MASK, 2) /* XE */
>  #define   DPFC_CTL_FALSE_COLOR			REG_BIT(10) /* ivb+ */
>  #define   DPFC_CTL_SR_EN			REG_BIT(10) /* g4x only */
>  #define   DPFC_CTL_SR_EXIT_DIS			REG_BIT(9) /* g4x only */
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
