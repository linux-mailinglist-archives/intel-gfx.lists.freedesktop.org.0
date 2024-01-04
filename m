Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B40C824BCA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 00:25:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4D3F10E54F;
	Thu,  4 Jan 2024 23:25:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 624ED10E54F
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 23:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704410700; x=1735946700;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=A/FkMkNB3NRN5FEt+mvcvutTgRP1aYRQlf0WAqEHrbY=;
 b=gODIhLFLQPKHMzfGvq8JrmS8oy1A4nNVE4xZtbtBCjojRp++1IHhyL5z
 qJ8VtXd0tEMg+aGKxMz9xs/S7DVp4x7ie7vU4Y9BZHJiN966nWVwnQdae
 l20+pib4Xx55F1JS/mhfYOUzADDsGbPJbBpiD/px4lHg+mHqYJqwUh3Sz
 Yu4To8wo1hIKHkd5yv4DXRDifeLn+UXmVlkdyScE0jgs2LWbARjUXZhN7
 MLKe7nj7GyCrr8K0FA/dOI2Kt/WSAVRZlm9LpKY2Zf4Xn+NeKHWhJYi1O
 SkrOhQFUgx/gEjVstBM8wIZzZhzpqtHxujM6x1GKF7VQ557TFV3VJtbxD g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="382366757"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="382366757"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 15:24:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="784036195"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="784036195"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 15:24:59 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 15:24:59 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 15:24:58 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 15:24:58 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 15:24:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OzNWiO8gn2ftwy5swB/B9F3s/JrSk9GJaEy+3mUdRUmyYk7q5nmui0IeYLOkG97FoPDY5zS2FQb4f5ozMdzX9//O545sFhrtbddVlzaT/e8hyRma2ZkU7OcRcOGZ3qLsaBTRBBpfrzSW8cCNk1BwJlSlITSwCExakQdufoQl7yRD/RJy+oWFLTb7dy2HWdqI552u7k6lIJSm1uRgEtI/vzZAnjAUEr8AxKeUjD4EOlhtsWx2FhJW1+YoW3f1xni8FQIoB0aCIyceI74qVqikNJxozx3fBs1WT7i10KZDhZB2tQNFfpjpOA5YqHBq/y7L/enQtrXnDvNUzkn16T9uEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h82UZ7pjXcsWe74jvt9oOU1r83M+sAk9ZpYciugFruE=;
 b=j/CP7yqYDpRCCx+EMALVr3WzEm2B+A88hnf4NwQWUMbPmPSlEjEX0iyawS+zhG4EXzyr5JlYHqLMIvP5JSQKuThPtWUJIF5GX7xYmArO5LUgChGHRJhUR1I8vbKCRkuzSPNkE+BUbNNflsiQx9dpvRrUgBaiozl7hRACQfVCb+uQzZCYg26IIYBkR6tOCx6IUa3PNkcdD6IQnPBP3k2FVI263GWe1NgTYSkjOWkGdiu1k4UJ+zF/wfvUzVyrJekRlROZud+zqL9QDkkqK+sIwF/oTFfACsgyi9vrDAqViv3G5PsULlzQ2Qq/OKuRoEhpS0ztEtW+9wlUpljgZbIF/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB5048.namprd11.prod.outlook.com (2603:10b6:510:3d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.13; Thu, 4 Jan
 2024 23:24:55 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7135.023; Thu, 4 Jan 2024
 23:24:54 +0000
Date: Thu, 4 Jan 2024 15:24:52 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH 3/4] drm/i915/cdclk: Reorder bxt_sanitize_cdclk()
Message-ID: <20240104232452.GY1327160@mdroper-desk1.amr.corp.intel.com>
References: <20240104032150.118954-1-gustavo.sousa@intel.com>
 <20240104032150.118954-4-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240104032150.118954-4-gustavo.sousa@intel.com>
X-ClientProxiedBy: BY5PR17CA0020.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::33) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB5048:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b4dba98-bad2-4188-7046-08dc0d7c5bdb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F4vg3/FFOdYlxtGKlgsB1wT/48roEd9lz8TlBLQW3Vj9/spl8og/J6tfStCEsJEiep7LgITV6N+0zBOEbb1gVFu7Pr8zHhLyP6Dir7fDJx8cJW4p7bjeJp7zK0Ngs9ZGDdHHJo0JnFeByVQ9UqQctU6RFliJwH2ecJf/Ze4jDDFPitWX6bwFeqRudI6H5mb50TtGBu2aMUOKcaVEw/u0Hhn3ShTwHGsD57nFEZ8jEh5diBddMOnK1GP2bY1bR5V75STPV/LNrKiFPpVNL4DMWFkTsJF5dB6L1ycdej99g0K9/OL5Qma62MP/UQzO1nemSDhphO4B0bLhfPq79lut9cuA5KyMlZ14O9XAnOgTOvnrX3USRMSlHLerHBRTy4Xttp8PS97ziVvH+2HpC5GYqUCH2laeWmfsm+fCWsuo+6QzZQXlDEr8gmEi8bA5rhIN5MdgkaTMl8yNpWELAMG6t4tYsGbFK9kMUOTpIQzuH0VQgu3RNAnqDlHhlhtJQFHt+GrYgleU7gE4w8xlGG07JGK/wtZc3ZXuLT4ytcVHWQGYYkuRZLMybn9NzfYl4bgB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(346002)(39860400002)(396003)(366004)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(6862004)(6636002)(5660300002)(82960400001)(86362001)(2906002)(316002)(33656002)(41300700001)(8936002)(8676002)(478600001)(38100700002)(83380400001)(1076003)(6486002)(4326008)(26005)(6506007)(6512007)(66556008)(66946007)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PpZr58cQTnoQP2yIk5n6qcZgLxWl9RvNeRY2V3owm/b2+rmXBBc23m8MKTs2?=
 =?us-ascii?Q?34gPfD7rjf9BNX5jK0fQN6Cth8hr/z8lVpjxVZ6Yh55abVjCVsX1FqvySE11?=
 =?us-ascii?Q?gsm8CX1JC4lx+qR+czObXvZNX4giHRxF8uZ/QL8AP4upZuYft9ao/mJ+jwIW?=
 =?us-ascii?Q?U8ASmHj9B78SpC5vl4XYkDHi0eRXHSlQu+b+hHRXZgYcBMJWQblEieZI0yW2?=
 =?us-ascii?Q?EWldE4rUd9O2diX8JAKtuvBzrbZh+SQ4/U5nRWJkCG1nNJR73w1iP3goSGTE?=
 =?us-ascii?Q?bEhpqWkXWFMzpGhtRQH4ro59biA62i8z0dL8lCEf6sYpqMmRC96Y+WfWYdbA?=
 =?us-ascii?Q?NSUlNWTEf3eCbfyxFP/+fe9Z78HgUQpcjHbwuKKkFubf5C1jlxYx1JFhdWAk?=
 =?us-ascii?Q?JkQIe8TKkfvc/4UW16utN6yDw18Ql5kST+sg6YYMu1J5gjgAb6KAFGdUvNsY?=
 =?us-ascii?Q?6/UBA+6HfnJs1Ecqgr9qEA5EwdSudA7cJEGIXIK8lrkc+Ig56J51tsiG/qND?=
 =?us-ascii?Q?BXtd0fSE5zAG8xlZwBzTUtkgGyD2RKCxY0E23ULv8BZc9gyaKiUnR6+nzxfn?=
 =?us-ascii?Q?XM2J3GE5Dvid/52ls1CP0J1GAAQ9XLhW+upxsT4rE3Lui5InIG9KR91/epiM?=
 =?us-ascii?Q?s0wLPQ3Ocz+/QD8vlKRbdxho4i2/FqHSbf2N7YsAa6A44LBhqt+vRT/WjwQC?=
 =?us-ascii?Q?Wwk1THU9/EQXVhXqesEou9zb9TMw/KQ/jM6UqJcNdODBzShVsgNc0kYPqO6P?=
 =?us-ascii?Q?Mcwq4QZT1BfbFBZtLb0Ap3u/OeAnxxBKLO7PyotE6sj7Ob0zLdu0OS+q/9fl?=
 =?us-ascii?Q?Eu6qCtP5jBFgko9Ettu39iYdfoKOQwJlD8C+C4PccC5K/0lA8tPFoXKfUVyg?=
 =?us-ascii?Q?WFPKfAFYv35mFBKJn2Ya6VJQzmlE4RYtG9kUFcu+9DqbO41ihlGpVnU+oVzf?=
 =?us-ascii?Q?45M6w81boThXMfXiGOsSSsV8Pl49BTHDimAj/UUCMeYLTsqKAqhqAV6qDxv5?=
 =?us-ascii?Q?cGre53L0CoJPEwOeF3ilQSNp7zQpQqDkD4ZlMk7smlsZsHe+NTrI+AhTdeZx?=
 =?us-ascii?Q?lpfkbXG/Ya0bRpLjHAjbSMONnE0Zb18ky4Ls3/NpjshHuh/3jLE4OoSbIvpd?=
 =?us-ascii?Q?COmNn4z1oN7CiJof4MM/I3sf98iqyTtycYGtID1EH2FDSJUv/qzsPhn7UflQ?=
 =?us-ascii?Q?7g03cLnSEfoqw5tMAs6nLAffrOK958LHOK/jr6HZTehP7hqPEicOR52C1Djh?=
 =?us-ascii?Q?u+a85xu3tPCuGOvcfCZFmcMWDBYAQCvTbyHdf9Fhw1Uf295RF5rNoEj8vbPV?=
 =?us-ascii?Q?zhShQYwSykRaARH23cKmlLTKJeeJyxaGeep2vRXDzeM9v8cbE715DEAZgMmf?=
 =?us-ascii?Q?VZDcBP7hzn/EvT4ta1CbeFSJouxzTl/2ka/PPDDblL9d50ArpJdqiTmu/Yyn?=
 =?us-ascii?Q?I6eLUjCP+wEJAsotlCKTOKu7o/XnhX/2gLesx2UHULq0NlnH37cuJck+vyWu?=
 =?us-ascii?Q?RXXAdppmz7M/oAGnIbH8z4uDICGFcjBgZQFALKmf3rvKjvn64F1NKafbo25v?=
 =?us-ascii?Q?iN5mzT2IA2921Ixo01F5t6Wu9R9a5xuSe/mjoinNXM95ih6pYPyFdKhUlCDl?=
 =?us-ascii?Q?8Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b4dba98-bad2-4188-7046-08dc0d7c5bdb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2024 23:24:54.8898 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3HPOf70FPZWit/xX64paRTjOrC066fjiB2EpH4NO5yXs3EYwOyiJnVNz/qmAaR0WbJp+2qt4DSfR3r+I/YO6nCPaKjcezbvZMZZdOd6e4Hc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5048
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 04, 2024 at 12:21:49AM -0300, Gustavo Sousa wrote:
> Make the sequence of steps more logical by grouping things related to
> the check on the value of CDCLK_CTL into a single "block". Also, this
> will make an upcoming change replacing that block with a single function
> call easier to follow.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 24 +++++++++++-----------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index b9354ad46fee..fbe9aba41c35 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2060,13 +2060,23 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
>  	    dev_priv->display.cdclk.hw.cdclk == dev_priv->display.cdclk.hw.bypass)
>  		goto sanitize;
>  
> -	/* DPLL okay; verify the cdclock
> -	 *
> +	/* Make sure this is a legal cdclk value for the platform */
> +	cdclk = bxt_calc_cdclk(dev_priv, dev_priv->display.cdclk.hw.cdclk);
> +	if (cdclk != dev_priv->display.cdclk.hw.cdclk)
> +		goto sanitize;
> +
> +	/* Make sure the VCO is correct for the cdclk */
> +	vco = bxt_calc_cdclk_pll_vco(dev_priv, cdclk);
> +	if (vco != dev_priv->display.cdclk.hw.vco)
> +		goto sanitize;
> +
> +	/*
>  	 * Some BIOS versions leave an incorrect decimal frequency value and
>  	 * set reserved MBZ bits in CDCLK_CTL at least during exiting from S4,
>  	 * so sanitize this register.
>  	 */
>  	cdctl = intel_de_read(dev_priv, CDCLK_CTL);
> +
>  	/*
>  	 * Let's ignore the pipe field, since BIOS could have configured the
>  	 * dividers both synching to an active pipe, or asynchronously
> @@ -2074,16 +2084,6 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
>  	 */
>  	cdctl &= ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
>  
> -	/* Make sure this is a legal cdclk value for the platform */
> -	cdclk = bxt_calc_cdclk(dev_priv, dev_priv->display.cdclk.hw.cdclk);
> -	if (cdclk != dev_priv->display.cdclk.hw.cdclk)
> -		goto sanitize;
> -
> -	/* Make sure the VCO is correct for the cdclk */
> -	vco = bxt_calc_cdclk_pll_vco(dev_priv, cdclk);
> -	if (vco != dev_priv->display.cdclk.hw.vco)
> -		goto sanitize;
> -
>  	if (DISPLAY_VER(dev_priv) >= 20)
>  		expected = MDCLK_SOURCE_SEL_CDCLK_PLL;
>  	else
> -- 
> 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
