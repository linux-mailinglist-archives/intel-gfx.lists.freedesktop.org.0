Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A67B8871109
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 00:25:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3C71126F5;
	Mon,  4 Mar 2024 23:25:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eiyHqlhQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 027B1112700;
 Mon,  4 Mar 2024 23:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709594738; x=1741130738;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=YCaXwNSIM4PjQ9/hUiLrwbTp21pbn85vsnhbfnFecI4=;
 b=eiyHqlhQfo+zkbNCXJbefo55TPdKKTdGdQ9DResncSz2G/1FLra3ytM3
 Nlk/LtgB2R/9aS0jgS7Ri/H/QcSA5piU4FAaAxYVmTpCgppDCXxiJGPdA
 hX8lqW9ManeHVcnSoM0zv1Yx0c9dd24/1FSyDA+NT5YN14gLJ5u1fqi09
 eb/K6+UXppdEp99Rh/otdRpumAaF1lqs7wuo6M2oDUQN4Gi9st+0/SAs6
 u5o5LfDkWsRANtLmgoW4dauJ7wCdHgzfMrxL6XWbA1cblISGd2VtSo/tL
 3zr7IkcFHWMYwwa8GmQSRlG8KZBUDKyOZD/yYFgBFXMRKr6TodbrQ478F Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="14759444"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="14759444"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 15:25:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="9226845"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 15:25:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 15:25:36 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 15:25:36 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 15:25:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kisvE9KSCRmGLi3cT5jEzhv6SGIvjSCahyrhv4IFDJXy4KfPXb8/wo4744No0UT0P2QXt00079uupqOrYh9Oq51FKnk3+c3V6ijCr2JR7l9aT+4C3t2EHTisWrilm+1ggV7wgFrqKSYRa/Dq2hJDbhKHe+c3LbP4W7yMPdxJe/yhaawhmNqxapVE7gxB3IW5+562PFHyojQfJ79xBq1Pc59Df6C7Nffy/ik6yOYSn/9lxPsAdvn0mZZgn5Bn8M/Of1GAX4pWu7piENiJW5T42wd5qPfP4QuRysRWrJRDb5j9HswGCR9lKw+1vLYYwpJ6Wwzm+480+HlyoLui42at6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7RaWMDNWdlmY454939UEiJx3mruAtGMK21sd+qU8avk=;
 b=HmiOkqtbZmgjWIoswy1jntPb9M1PIfR4rkirpwnikD6A7lN45BVpBoapwbF0IfO3UrRdFswvgptLUI+k9X1D5XppahbpaE7vSyIyQ3aqL6aUI/CwyBoWl5g3n8GrdoILCx5cK2heKHWVvYzLxDLnZTLq2JACt4+SdUIEbOOHI1fq3w/0yKLmVGapqRKWL+Yi76ATRNLrxdmkHB8RrMpKWPeyqAyrhszA2PLVuLYfDE4E8N8yzKPU60ql6696kMFkMX+W9il8HKl0/CORQ4eeqCVALLeIDVk7x2pA1bPI+3FtvZcU0ZpPo/1UFFxTl6N2yqd6+eVm7w0eHl5UvBBcXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA0PR11MB4735.namprd11.prod.outlook.com (2603:10b6:806:92::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Mon, 4 Mar
 2024 23:25:34 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 23:25:34 +0000
Date: Mon, 4 Mar 2024 15:25:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Lucas De Marchi" <lucas.demarchi@intel.com>,
 <vinod.govindapillai@intel.com>, <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 5/8] drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
Message-ID: <20240304232531.GV5347@mdroper-desk1.amr.corp.intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
 <20240304183028.195057-6-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240304183028.195057-6-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0243.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::8) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA0PR11MB4735:EE_
X-MS-Office365-Filtering-Correlation-Id: 29012f43-5d76-41c2-5af0-08dc3ca26414
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8Oqcdap9Guutv6V27kZg37O00kFXw0/FVdN3Ee4kPeZa/d9Mc/TJKz7e6NOnnxvqerI7AMJ/sYrrdOlV6ZJBSKt/y9wTXZgg6h1F/ypNMxg15X2gBtIj6mUqyH1WOH6GGWX7lCgkStQMWixWItKXmKZyrLwznKUU8W4+szkIixlxubSfsKNan1EDzQQYlyYcP8rpSOmrmfAycoNHmGhGS44QwJ5YDN3GzMYRwpls71BLhKNu/m0dpAUy63BYSfaUG8ctinU44arxqIaimHFD1zSir2H6Z+4fdf4n8QO5JtcueErtij6WOMXtZzNILi4GcrpUpTvEIBsXNAOAJByTtgOee/T9pIOdRittCIGArcvTVhKjWXXD3YJPt9cuLuM2Wn5zzW13q0B3mDEeTJshgoolz/C6OdIGDsESFO+8ADcA3VUBQVsleCcRiBVlyaaHFqNE+YOldanEklWCYGZtmNPeOEqLM/wTJAK4gH3knJA2t18gAvaVG9fm3WAJkz7EikzE0EClWMX3pKjzHZbxW83ZRy6oHNQy86vxI4VDxBaEwMi/RzA9742R/ZuDjXu8gxFGjEglTloQU6SFqJvuzBEjP9K/5R4a4yuDP/fkz7Xe0G1UfougfgojhwyZPByzywkRNxp0rPeZTzL1ZD5eUuaJRn6ho7q3MltC0SathoU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Y7P14pGRHhBr2rcgmgehwKGMGXOn8oPjMneGTPGpoyJYC4P898PA3KswMsfc?=
 =?us-ascii?Q?3tzf0+xBNf5GVs3kP+nXK0TS4qJqv1tZPsv/maGxnhIh3b1zcl1dlk6ElsFt?=
 =?us-ascii?Q?0tBbyJx3X8WjVrGGHZ0qcDs2EJREzs2tHiH7t4S30StV8UykboGnkkbASwTp?=
 =?us-ascii?Q?C9jRlJjdaBzU5G8xsSJi5t8oNFQcO/G6luqkCWFj3NSv8TisBKPuroBMQRap?=
 =?us-ascii?Q?5dHG6SVhj5W9Q0HAaX5oBSLrKDfAOwvGOyvgqVeqN9ANucGjoJNPZkzbgX2p?=
 =?us-ascii?Q?vZ8XzERbAXYg84cs2XlQks2qq/NYFKtOGPvepKObHglBoIFytgUnDnOzChLX?=
 =?us-ascii?Q?thRYh8Qu3AMz8MBFGsQqnMvfN4nxC5Rm24QO2CUKh+1KY/xi2cdH0zLNABN4?=
 =?us-ascii?Q?vHkJHpuZJl9IY/9ch3RUzSHtxhpZDYPeqIyq2WwHyOCETSP+ZqICceDIQRBe?=
 =?us-ascii?Q?1e4ZFe+l5JB4zljt0Z6vqBwu+H/BUgcWWrwXiw1oZC4kcEmITg2eYhAueVLW?=
 =?us-ascii?Q?d7ywlCpzgu8YP2SFEg9pPEeV+0oA1lqzA9e97UHSqqwm7LDCPxJk2HaL4O7J?=
 =?us-ascii?Q?jiA9W83VtbQk6INjUTEfT3SDsfeRvcxNFss3OAC/YraHDOxwNZHmEemM+RJl?=
 =?us-ascii?Q?0oBHxAgemGdynGRtfDfJYOr4vzFWS8KsPgJw22Wp0XXYIZXkuEQ/PwMuSAd1?=
 =?us-ascii?Q?e6/F3ZmelhxopwMp+g5kFFtX00YYnmy+mXwC/TjGM9r47lMIhZ9RizcybJP4?=
 =?us-ascii?Q?EP003PdU5VKE2IJLF8+MtFWfo+LA3eN9rHhptN0VdZ3pE9UXBTlTnrE8SCG/?=
 =?us-ascii?Q?dw665plNlUDKiN60D6g4vWrLC9zJrgL5gtM4oPbT+B71XcRLdDFYe5dX2jYT?=
 =?us-ascii?Q?yHQX3HswXrvyVc9CJlzJ9r8+SBg+8+9jQNIfuVZ3esA83H2fVx3W86D2DGNH?=
 =?us-ascii?Q?V0flHf2J2iyvOh76Kn79C6JEho4qvEoZBiY4t7gaUyyfUjn4hRa+L9PayUa4?=
 =?us-ascii?Q?/ccbPIu8UlniteNSqEB56CHaFAxuucPbinbpggHfqzl0g0uH+FkrTGphbnNJ?=
 =?us-ascii?Q?T5EJWe4BSGhEuYFhOv4wFf6dJzgqPP4MoT3ZeIH/idhKXTrmpUwEkRk9XjeT?=
 =?us-ascii?Q?LtlW9c6suItgnl9q9+IRzX7hXp9T8E+8sb++gnyXduIGIgiy8tBVAS5BSfWm?=
 =?us-ascii?Q?knjDKELt69JIZUHkZ3bFfblLQvlhuGK/TGC4xjEo17/A3Ol9yr5tn6l+4g7n?=
 =?us-ascii?Q?zeqrL14/iPiymecOpRaDwekrTSEwpq+lA0g5XShnc1IdsryzvKiSkfYgCGXo?=
 =?us-ascii?Q?RFFcXMmq1Ujcvmw/f/Ce20SOjThZSIbuBWvJOuGyHMS9Vbvj0S+SgEAExdfi?=
 =?us-ascii?Q?MSnY6Koss5rmS2BhM/ebg+LrOPq+118CqApSm5PQm46YIgSb/iipvagtifGh?=
 =?us-ascii?Q?ROIsiuvxTu0wlXCT/p5Ld+OrGQ6uxkElH/Ad8bIln93esBOsut9tUWlJx1C4?=
 =?us-ascii?Q?AC4wZTA8pN3m8DRb6l8vkXR2EWQ3qgFlCbeOtYDGW5FMmJkFQ8trfO0rtD7e?=
 =?us-ascii?Q?dkmwbcUm3KLOiZwvGca1rgXVpYOZ9EPlDqePKdhEd7ug/DNeBFsubNDpAsRh?=
 =?us-ascii?Q?WA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 29012f43-5d76-41c2-5af0-08dc3ca26414
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 23:25:34.2526 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UtbH56pXXqbDGurz0qPum2UItmqq96ru+Pl2PZe+vTctRM9q6JkiEpCW4jOUjgAEtlPAV5959UlYVwcY7uxR6AIn2tklq4/k8eNcxtpI3lo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4735
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

On Mon, Mar 04, 2024 at 03:30:24PM -0300, Gustavo Sousa wrote:
> CDCLK programming Xe2LPD always selects the CDCLK PLL as source for the

I think something got a bit muddled while rewriting this sentence.
Maybe the first two words were supposed to be dropped?

Otherwise,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> MDCLK. Because of that, the ratio between MDCLK and CDCLK is not be
> constant anymore. As such, make sure to have the current ratio available
> in intel_dbuf_state so that it can be used during dbuf programming.
> 
> Note that we write-lock the global state instead of serializing to a
> hardware commit because a change in the ratio should be rather handled
> in the CDCLK change sequence, which will need to take care of updating
> the necessary registers in that case. We will implement that in upcoming
> changes.
> 
> That said, changes in the MBus joining state should be handled by the
> DBUF/MBUS logic, just like it is already done, but the logic will need
> to know the ratio to properly update the registers.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c   | 26 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cdclk.h   |  2 ++
>  drivers/gpu/drm/i915/display/skl_watermark.c | 18 +++++++++++++-
>  drivers/gpu/drm/i915/display/skl_watermark.h |  3 +++
>  4 files changed, 48 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index cdf3ae766f9e..04a6e9806254 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -39,6 +39,7 @@
>  #include "intel_pcode.h"
>  #include "intel_psr.h"
>  #include "intel_vdsc.h"
> +#include "skl_watermark.h"
>  #include "vlv_sideband.h"
>  
>  /**
> @@ -1891,6 +1892,22 @@ static u32 xe2lpd_mdclk_source_sel(struct drm_i915_private *i915)
>  	return MDCLK_SOURCE_SEL_CD2XCLK;
>  }
>  
> +u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> +			   const struct intel_cdclk_config *cdclk_config)
> +{
> +	u32 source_sel = xe2lpd_mdclk_source_sel(i915);
> +
> +	switch (source_sel) {
> +	case MDCLK_SOURCE_SEL_CD2XCLK:
> +		return 2;
> +	case MDCLK_SOURCE_SEL_CDCLK_PLL:
> +		return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cdclk);
> +	default:
> +		MISSING_CASE(source_sel);
> +		return 2;
> +	}
> +}
> +
>  static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
>  						    const struct intel_cdclk_config *old_cdclk_config,
>  						    const struct intel_cdclk_config *new_cdclk_config,
> @@ -3281,6 +3298,15 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  			    "Modeset required for cdclk change\n");
>  	}
>  
> +	if (intel_mdclk_cdclk_ratio(dev_priv, &old_cdclk_state->actual) !=
> +	    intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual)) {
> +		u8 ratio = intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual);
> +
> +		ret = intel_dbuf_state_set_mdclk_cdclk_ratio(state, ratio);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "New cdclk calculated to be logical %u kHz, actual %u kHz\n",
>  		    new_cdclk_state->logical.cdclk,
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index fa301495e7f1..8e6e302bd599 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -62,6 +62,8 @@ void intel_update_cdclk(struct drm_i915_private *dev_priv);
>  u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
>  bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
>  			       const struct intel_cdclk_config *b);
> +u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> +			   const struct intel_cdclk_config *cdclk_config);
>  void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
>  void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
>  void intel_cdclk_dump_config(struct drm_i915_private *i915,
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index d9e49cd60d3a..4410e21888ad 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3057,6 +3057,8 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
>  	if (HAS_MBUS_JOINING(i915))
>  		dbuf_state->joined_mbus = intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
>  
> +	dbuf_state->mdclk_cdclk_ratio = intel_mdclk_cdclk_ratio(i915, &i915->display.cdclk.hw);
> +
>  	for_each_intel_crtc(&i915->drm, crtc) {
>  		struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
> @@ -3530,6 +3532,19 @@ int intel_dbuf_init(struct drm_i915_private *i915)
>  	return 0;
>  }
>  
> +int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8 ratio)
> +{
> +	struct intel_dbuf_state *dbuf_state;
> +
> +	dbuf_state = intel_atomic_get_dbuf_state(state);
> +	if (IS_ERR(dbuf_state))
> +		return PTR_ERR(dbuf_state);
> +
> +	dbuf_state->mdclk_cdclk_ratio = ratio;
> +
> +	return intel_atomic_lock_global_state(&dbuf_state->base);
> +}
> +
>  static void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
>  						u8 ratio,
>  						bool joined_mbus)
> @@ -3574,7 +3589,8 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
>  		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
>  		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
>  
> -	intel_dbuf_mdclk_cdclk_ratio_update(i915, 2, dbuf_state->joined_mbus);
> +	intel_dbuf_mdclk_cdclk_ratio_update(i915, dbuf_state->mdclk_cdclk_ratio,
> +					    dbuf_state->joined_mbus);
>  }
>  
>  void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
> index e3d1d74a7b17..fed4d12df584 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -58,6 +58,7 @@ struct intel_dbuf_state {
>  	u8 slices[I915_MAX_PIPES];
>  	u8 enabled_slices;
>  	u8 active_pipes;
> +	u8 mdclk_cdclk_ratio;
>  	bool joined_mbus;
>  };
>  
> @@ -71,6 +72,8 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
>  	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))
>  
>  int intel_dbuf_init(struct drm_i915_private *i915);
> +int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state, u8 ratio);
> +
>  void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
>  void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
>  void intel_mbus_dbox_update(struct intel_atomic_state *state);
> -- 
> 2.44.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
