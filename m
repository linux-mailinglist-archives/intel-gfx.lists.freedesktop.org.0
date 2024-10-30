Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D10AF9B5867
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 01:15:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A242310E3D2;
	Wed, 30 Oct 2024 00:15:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="joSIRWil";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1FF210E3D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 00:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730247303; x=1761783303;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eolZMxERfeKM4w1iwz+ipjNfQjzO8PQ3LfucfE0GYUE=;
 b=joSIRWilGtGiUAUpfYy9KnBxL/UrS7a66BBWYdjMdzOfi09nTu/Pkc/w
 SUjUCWm7/+hZHUlU6KoTqI9T+dobZcLFUz8uRpRfHc0QJmwzGdLWW2fns
 crinuFM7Ku+ZAD8SL01uzSQhNX2xtknWKMaXAt2xbhptTlKMGCcVSMult
 OPAF+tmnHp3fFFIW5ksRp8Gn5TmqI03MeONkKljP7UBOxZWvJFbZqFgqD
 1nJ4PIFI+YLy4TQ0y0gUjtMzCBiTDVb6uASF1YHoLMhi7UqFSPUWK9p9A
 vKBrMZWC1r+oMqACWoYLiB6kDjXszmdZGFEjpIW6HA+wnuLrZlvTj3RkG w==;
X-CSE-ConnectionGUID: vUaugbvYQZGM/c1Jr1s4Qg==
X-CSE-MsgGUID: Zq18HdyjREO8IZD+V9uTxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33624118"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33624118"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 17:15:02 -0700
X-CSE-ConnectionGUID: ZODTTKOASKaVqeCWx5nKmA==
X-CSE-MsgGUID: IhLoxTJSSna2qLhJCqXpQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82049101"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 17:15:02 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 17:15:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 17:15:01 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 17:15:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=baalgsO9sxTkwLSgFDyP5UrJN2q8tbTtWd0KSDjULK3tw203Y9yO46A7zWw7Qkjp32R6+98iRGR7oPbrOp+URsgSC8xdr2BberayN2OZWdxS5uSpO2wW44T7e9VF+Il19YIFTfi6SEP/cUAy56kB8cvKrfAsJcylRVlqmlpNHd9xhnmfYs7QiYF15ant3chqOYBSLyoFwVYMtxGizx1Mxchkkc/Ol4ibiage2IUA4mMstoCusDYcE/Dkuh36yV31OyQB2QMa56kTR5uWaTH9j+biLO2Gsb+O9v9jNcAKKnk40n63TiLCtDFYkBrHbNqeAPZtg7EFF28K1hDyDrpxsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8NQKNlNhUt+ww54ajpHeqPmx4iNqzdhu5pq1tpEcuL4=;
 b=BFU26B0M+pKx8xWGm7vp4tsnaECipXZgmi+6DO/q7rqyrkm+fY1yEcmjkqfCoIYFylZV6i6MGIQ47ACQfnIFwY//ZdgQ3LlBb3MdGb7HYliz4xr6DzE8zkHr0+NCJDMGn1jc91sok0T8+ris/9DS4nx6blUwCxcg4V/00CztO2iBWQNIysN9bCKlmADN61hWz37UDcMbAYNwXPOajLkmV86W25gxWk1Y7tTZ6okViVGGKxbmzTgR485rGSRlF8WDwcLgOgQ3lJPCrIVP8nxNyWB/HTjZliNoJl/oGI57AvZqVWDkqZGCs3k5TU+v2JJl4TsSIhXCNbKhCoaMSYT+Tg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB8000.namprd11.prod.outlook.com (2603:10b6:8:128::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.18; Wed, 30 Oct
 2024 00:14:54 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 00:14:53 +0000
Date: Tue, 29 Oct 2024 17:14:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>, Umesh Nerlige Ramappa
 <umesh.nerlige.ramappa@intel.com>
Subject: Re: [PATCH 7/8] drm/i915/pmu: Remove pointless synchronize_rcu() call
Message-ID: <20241030001448.GE4891@mdroper-desk1.amr.corp.intel.com>
References: <20241011225430.1219345-1-lucas.demarchi@intel.com>
 <20241011225430.1219345-8-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241011225430.1219345-8-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0005.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::10) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB8000:EE_
X-MS-Office365-Filtering-Correlation-Id: 905adb1f-d1c0-4fc7-bd9a-08dcf877e091
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?aiWmGM6woMo7OzD4pIE1h0qfIhYrJ5epmXCu9xvIvQVFdj7SP+LSzvmMLDpA?=
 =?us-ascii?Q?a/D7r8U25M/IPlhkHiwgrVEtlCb0h24Ywjf9dk5f1IJKExirwQ9HD6fsQvtG?=
 =?us-ascii?Q?quCuylIgdaZbOFqXWeZHPstYVm/KTkVyEMvdJJzk4aGarU73e8sYH1e9fr1c?=
 =?us-ascii?Q?dy5EoZxH2BiFxWCgyYQ5EPOfrFH3DirYkc7kmRPJleNd9Jjw0NFf9NKTFbhN?=
 =?us-ascii?Q?e7XH14zr3QwSJAaWeFYn9K6lst4/r2fc9eBNl4nPXvujUkGLpXbcuDvIQ87k?=
 =?us-ascii?Q?wibCADKzabI7qabGuzA5gDFKmu1uzfHSRm26DGTbhuWcZxaje1KsugExc9Gu?=
 =?us-ascii?Q?06ldnM2U+ai2GYgD99mFrWd/sNqjLTdH03sbkqPnZCsPSMFrwk/WVe6im4EE?=
 =?us-ascii?Q?6hD7Ehho7QQmP7GALZBU5crWS0VA5nOIjEvT1qM7DD4OnKuD3eIIIJLugpQ2?=
 =?us-ascii?Q?eLdLRSfmwF2cyOdZmB3osq8XpT3RU/7i1gyix3J7eFXBh/rmGMKFP6/xPsL2?=
 =?us-ascii?Q?5QUOds5nKbM43FgXuei8iDaCnT4iWMt6tI03u96fp6PC2srXjAzAENb/ldcr?=
 =?us-ascii?Q?B4mP3kb5Cf3gcliesBxujROlcBbw/chwc5zyrjZip54DOa9hWu0OISzff1pk?=
 =?us-ascii?Q?YJT/vl+fvRGHmMvut3fF3eN4rWwLJdtfJQJd62DBmr9dbBDwKU1PNf9KKUFc?=
 =?us-ascii?Q?87x8iXcarDqN9fFH/DC3TeJrIlWGwYmrgMotZf1fdd4eWSGyRMuCpNoaxc3B?=
 =?us-ascii?Q?/sW3pamVZglvMXcYkSzHU30m+wAn79GR7KvKIUtUvu1U5cgtHALVugvKRk+w?=
 =?us-ascii?Q?U+JjvhJix08gxZLxDP2PAZOcyvPHo9bejLNywINEtexg3pvBZb0u+mbr/iL2?=
 =?us-ascii?Q?ZVN9r8BGEaVpQ0EjpHIhKvUH5OjoqSJwzZLFE5IHPyGPHYPIM/FvmAmeOtV5?=
 =?us-ascii?Q?+r49W6jn7x3DPsnb/F3VqFx1VdR55/TCID/Vlf0uIkm5fZqDHKRurcb/bMpe?=
 =?us-ascii?Q?MtE+TZPSd6ZIfnYOfMcuC1J/Igii8Csh9JJ2K3KnHMQ9ywWUZVp/TvHwaHSs?=
 =?us-ascii?Q?sZ80R4kI/HP/655w2dGLFw8NylRVahe9aHAC4D9qPXCf1iURw9NSTV0bKEW0?=
 =?us-ascii?Q?h6OznJ+qPh7FRWAMcq27R6rJjEhBQy6Oatngqp9Cfn0J690kryHAcle3hAAq?=
 =?us-ascii?Q?uEJT2SgMhQ0AVwO5MpMd1BLKXwW8UZ5/pQCUr0vhSHQ9Bp0fj78T1KetBFmX?=
 =?us-ascii?Q?nsjXF2xH6Rip5WcCDgydERfr7BWvkFf+0KXWL8OPMj65zXwx+2mXZ208Tnfn?=
 =?us-ascii?Q?32HFaYOq9wWbgugtqSeTIeKH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kLcfgOPw4pqybgbzrm28Xf9wyO66ac1q1130M5XaWWhOBG47ppfRFy2Ouctw?=
 =?us-ascii?Q?LDKfG4NZQA5rCfygWFOuOEOZPzdLB6j3wuQWmBH2nwMSaRKOHnNsOZGhfVd6?=
 =?us-ascii?Q?pMnRB8C39kgULibgjZUabmxs4GFaRUhyQT5jl3IArUK/chrU9d2GQOJ1W2VE?=
 =?us-ascii?Q?kX58T+Fum00ZrhgHhMx0g+jXtBfeDjnJfxZB1CjLChmuPucdAuLxCCSnRw6e?=
 =?us-ascii?Q?TcevDbNmGS1mgiFmZtdx5PVLmrReXl3xeLF5QWoiQ2J9nwlWzTWu/svbtUX9?=
 =?us-ascii?Q?oeAsss7amNKg0eE+rxiXoAaB/lKgunT5sLAmFC6utRy4whZdY6V6x5KwyneB?=
 =?us-ascii?Q?5nLNWuNo4xyIINw6wFj1WzesB+4W6D9Rl6RUc7RzOichoPbJ4FHDq9nS8k+M?=
 =?us-ascii?Q?rIhAyIK40jF4bPeoLmJFkwRRdPjyuEqwCigycz7RwVAGrAHqKmqObhAl94zS?=
 =?us-ascii?Q?lQGs31chM21uRW5Naj0Mc0xm1L2Er7MLSX78Gbaaboaa0Kgk7cL96J56HUKM?=
 =?us-ascii?Q?NqWVaObYEoofOJbquyy1/7gaBrbEwgDEgO1YdYcqSQK1nC6JoAZ6kqLr4WK1?=
 =?us-ascii?Q?VdDKAwIIZ5KIsyJBXrAKSWjSVGT5WpHjk82ItBCG+/eVq5Va1fDMtgsEULz8?=
 =?us-ascii?Q?G4oZd+2NGCOxVU7zq5IegRiVULDISiebu1voaqwBxRwYmmR4zrwE3l4i85ky?=
 =?us-ascii?Q?jAn/Lf+DGwtB/VhtTHg8ePAHkPf+dhA/aIUVPpM1oQJtnEZUB8xblGJSIwUz?=
 =?us-ascii?Q?RykCefGZrJOdGShjIc5Vk5TR7+6DqGx+RgTaYxiz0DvMvPRSigywuo7VB2/Q?=
 =?us-ascii?Q?ewhVz3CwtIb/hqRIaeOOdqiuw1dRjupd86sstlzJzqphIlj4Cm8NbIjepGRV?=
 =?us-ascii?Q?3GVcEhf3UzNk1O6DKDS1jyMqX51KQsAYM+L0KJxdEYfc4RMJlTA45F02g7XS?=
 =?us-ascii?Q?oX6Hk8HtPZbEo4DjKB7veAjMs9S53XspZFCO5d2/tQTU0GuGrDBNqBZv4xLR?=
 =?us-ascii?Q?qbBnuZCK0wUPHvUSj3kysNNLWFfRInJqr4PFjjYUG6sLhddTM6OIteeVIhjg?=
 =?us-ascii?Q?2GSWoQLhhJPVwEjjYGPQ8PXXBnWkoWx9BAoc6edJbx0VeJcJutbZ/rIW6B35?=
 =?us-ascii?Q?gPDkrjMXrNmgriLIryXlog9CvNlnis8tJ3D/7Wx/Pe3ssgc983WchiQ1wn1m?=
 =?us-ascii?Q?bC4DcbB476uvwC9GpCP0lIapc2knkYzw0B5ED7Sq0qSH//rjDiIGTVtPk8W5?=
 =?us-ascii?Q?LnvXdolthVpGZKam9CPdqIEiN47jUX2J/ioBNXCYdbIAbLy/m1VOGrum13RI?=
 =?us-ascii?Q?sYznUUgrAIj9Z0+f8BSuKTJToknGzrW2WbJipQT4OQdNK0S65hDYsu1EVK7U?=
 =?us-ascii?Q?rppbTbleGzm3xIv6m3X6/QDK/Rh3PXyybL/EZ7212+sCKnRElOmM/hZkfXqs?=
 =?us-ascii?Q?2vFj5m/fFV34obLG2Si+exk9Air/ljdm40fTU3eB2nD8NfQ4IMGSFdvuWUyU?=
 =?us-ascii?Q?qpGhKAYUerqsFIyQfc6WRGiKlJQRlKsNN1dEYOt/WSmADeFUaENop6ZiYbpR?=
 =?us-ascii?Q?4y6+AzsasCESanLdFCxsULWq9G7H2v/gaX/u5Z+w+Auja13eurLXiZPbIVIi?=
 =?us-ascii?Q?0Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 905adb1f-d1c0-4fc7-bd9a-08dcf877e091
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2024 00:14:53.4420 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PeKdYemjJfEewhKU/w7ivTOg3q3yavoPfXtHRSfmP87eQICJSQXJ64jHZyaWLwGrINa+EPM5u+fsysg55CMmMrwJ/OuemJIQb12EyHNzmx8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8000
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

On Fri, Oct 11, 2024 at 03:54:29PM -0700, Lucas De Marchi wrote:
> This is already done inside perf_pmu_unregister() - no need to do it
> before.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index e28c29bae2d9a..2f8004ade6d36 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -1338,13 +1338,8 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
>  	if (!pmu->registered)
>  		return;
>  
> -	/*
> -	 * "Disconnect" the PMU callbacks - since all are atomic synchronize_rcu
> -	 * ensures all currently executing ones will have exited before we
> -	 * proceed with unregistration.
> -	 */
> +	/* Disconnect the PMU callbacks */
>  	pmu->registered = false;
> -	synchronize_rcu();
>  
>  	hrtimer_cancel(&pmu->timer);
>  
> -- 
> 2.47.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
