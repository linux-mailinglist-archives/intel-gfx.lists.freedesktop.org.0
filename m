Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 181EEA0670D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 22:16:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7DE510E93E;
	Wed,  8 Jan 2025 21:16:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OMKv705L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90FF410E93E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 21:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736371012; x=1767907012;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GOgNQJoobpXynolbCzWKi9V45KiZVn2YdHHyZ6QP3A4=;
 b=OMKv705LtIrH7C4tYWu65ek/gB6dQypzMIjhMgNcrySu/auuXkYe2Ma7
 ie12dD0M/HStgp09I/2kApVplPLRfK3DKWtzNB5vMjh3TIGcmmfOX/HCd
 7YI+JmonG5ZwfWADgRsA40GFE9cfSPTPtHreRLWOUWXTsVvTu31im7xxa
 wObxvFeattMo5xJuQNXxiLp9HXQS+nIkaFpfc7bkUHQKDLHTfdG4oidLx
 2cVumrQ9d212yzm50lniOXcMuouWGQN43wXhll0NmUtYVVQ/e1zeaE+eP
 gaoY4fGl0a04B3UagvwhoPPNKXiOX0mcHJW1igsa7qR+KrrwtK6aip8cg w==;
X-CSE-ConnectionGUID: aBNOaCjnQteDTtzB/DBOFw==
X-CSE-MsgGUID: WLaJTvX1SWaEeOesn5e6yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="36729321"
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="36729321"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 13:16:52 -0800
X-CSE-ConnectionGUID: UfVbfwpcTD6CLeHnSEttPw==
X-CSE-MsgGUID: 5K8qU+CnR3C/S3WkQ7B/0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="126503585"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 13:16:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 13:16:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 13:16:51 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 13:16:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hcIIgctSkw1NvldDt4K6CEILccht39CxANJU31zQnnDo8Z3ZFiMRT13FTe0BXVlAMVFLcJ0TuxXjEri+7J+9Vvbn/i06O5XgcitfmPRjBDlZNuG9kmHqRCzaI8VEm4ZdWhxLkILju2/aijixS4zR1Rc652jzciCG0n8JWHi4Cmza6k9HiD4mWSO5EEg8A8oz6HaLMKCK0o8+pZjTEyFCSEMkeXMkYgI0wCNV1c9G/avVwrduqna40870ydZkg6WtoL4ciLvdz06o6l9646NpcwbDY+ULmNfdfwI6QBXs1Fo5i+xzE7dIDT90PM3TuQ0VVHRyb4GtK00hPJLC4LssVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hctM1AdWntRJRUyORBy9WLj/nVNY/4mmiHzySXVRm7s=;
 b=dHo2G/F6vR/V/ZV7y81B3b5VnwBgsDEUVDiMFYYqRACxA561R7z75hPJ7LGKyj9u+vciE5Yid42ouV2Ixh75imM5v3oMEgYNhGmZ1IWVno3hPlK1nBfZxSXA6jrNHIMdkKddlDZdDnBF/Yz1Rg+u4UUROclsrdcPLhuVDJo0HKQ95h6T/TZyM+nzb74AfLp418zHadb4mW/g4D2cL2MoJ+KkS+qTSWhz7xVm8ii9iAZQ+7tGmlN2KevFOcRAMLerE3aKxuWlcAT8Cow9IsXQ6qt6NGZ6WcVUfDrwgOOr3U2aHKARgGEzay+daIQrV+9o5GFyvPTanuR9UZ8xyWNuCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB6323.namprd11.prod.outlook.com (2603:10b6:208:389::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.13; Wed, 8 Jan
 2025 21:16:34 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 21:16:34 +0000
Date: Wed, 8 Jan 2025 13:16:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/6] drm/i915: add intel_gt_gpu_reset_clobbers_display()
 helper
Message-ID: <20250108211631.GI3224633@mdroper-desk1.amr.corp.intel.com>
References: <cover.1736332802.git.jani.nikula@intel.com>
 <cd347927dadb31a5291fc9f9087ab995a431bc16.1736332802.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cd347927dadb31a5291fc9f9087ab995a431bc16.1736332802.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR03CA0027.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::32) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB6323:EE_
X-MS-Office365-Filtering-Correlation-Id: 74177df5-e77e-40e3-5f25-08dd3029babc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eKtB18OwZ/f4jlskeX7lhtsMOEgobtXp7xUxtwQX9+zfJ/0k3zX8bTxLTRNH?=
 =?us-ascii?Q?Mc586dlCQvVVhX0sfRVAjIMYkHa3K+G3b46CrRbGU+NJe0TEZQMtppu8RPpf?=
 =?us-ascii?Q?+eyoi51VhSCIiAzjX+bn5OFPEDCZAv+oWGMbPD/mS/onfcbj0h9swfxeTVwm?=
 =?us-ascii?Q?czCfiaVjzGWLVlp1M6pZNyP+NdI4dm3fnUVdceyB//5xdw+oEEqPvQfbH3xI?=
 =?us-ascii?Q?E4DrP0BPu/hOhfoDBLMvj3T1IZnj1ovtWJ+S3OOCfMrQIQ3Hr6GoE/JWRidp?=
 =?us-ascii?Q?8reC7QF/M/z++MzOGVHw/psM1At5rP+I3zR0DwddrDXxpaIbHXyANVsXV8Nz?=
 =?us-ascii?Q?OH4mLIYBb+yBKVaUkIirfeLWYnh2qfUAQq7OzQ6NRtwMpWAt0MMg924tqw6W?=
 =?us-ascii?Q?GfyDoMZEtfYqyV0b0PV/szROQmk5XnPu8MNRvrzobKoUqiT0Z03/H0HHmBvZ?=
 =?us-ascii?Q?xia/ksLWVhQ7gHqz5Vmt58pDgHOD4tyPDevuxyzBpCqpVDI4nK/drRQN+Hel?=
 =?us-ascii?Q?V6yb1hGxkxl1p3wBRFjWK3TMixCSp7xK1O/7s/hBLzVKgCTvBP0SYIiImFLO?=
 =?us-ascii?Q?wr7Os5cDqvkEQ3shracYpqMjKG9VLQ09r4YrxNG09o1j/vBXAmkwJrlNP/Vw?=
 =?us-ascii?Q?28UbYYa2UL5b04FoA7+uZ5CyKf6uvneIfsbYcQqWqbCqzZN1kXX1na26slQS?=
 =?us-ascii?Q?3m2dFFjzg2ogt/d6Cyim+qVFm5pCax9dPKyhczbPF3W08O13wiRilEmmCmiW?=
 =?us-ascii?Q?8aVKCHwQFwa/SuGa6PxJlO4mAchs87BhkEHB3fAG5iFP+xubFQEGX9jbxXog?=
 =?us-ascii?Q?DWo7z1pqzmI+gV6uzC1vwpZ4of6PAfM0rvzZc/Pgi7uPcnzf7oHEdC28Ma/G?=
 =?us-ascii?Q?BpiRjUbjGoKoFU+LcaYn0kyrVFiito6QDmygJFPx0Bd3AIni7kzhDimgTt3/?=
 =?us-ascii?Q?kq+BoVUfTu5fsKo8hqFd3n6nstHDmj6imBONFpNQasmZjAc3J0AZQ7ltvnGA?=
 =?us-ascii?Q?xcnF0KLURwSfEKIY3isBa2w2eG5dt+Y8GMkWNuLXTi3LefBKkZXk67zPiFWm?=
 =?us-ascii?Q?s1X2yZhmHU0YGi26hB34969Ma9IRzMzixgWtsb5PU2YwOXFmall5lzOXbcHk?=
 =?us-ascii?Q?hGMWlN7SuzucnTNM7yUrFMo2ZTW7PlP3bnpNGZGHvmmxHdEZcYRP8vvDMobm?=
 =?us-ascii?Q?MyeXJMZ1VT61UH7a8kSXcPvDNfan6ipTnNQvynMSTFWPQOO86eqVghU3bG/U?=
 =?us-ascii?Q?qYAAuHiAEJCuNE89wEgv4jOQNjSYbGqxbUtbgp2qeD3/588OmBJsW4VewiwT?=
 =?us-ascii?Q?6twITp44CUPBaukYzoEXUOYigL9OMXF73Nho8S7pHAf+RJGFrTzZGYsKuowv?=
 =?us-ascii?Q?r8BBgJUzlUiUPNIS6aqNQzJcv2Ek?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rlJGipo56yJ398nSg0p0TDpvGQxhrYF+DlRNTzx3hZ7zRiFMXlGS0Vkq67JW?=
 =?us-ascii?Q?4Ht4ODcZVSRjSVrDaQwf8wGP9IJnoygnHMHo24EXE030g6l7b5ItJ3zr3AmX?=
 =?us-ascii?Q?gOs3GqsW7ggJwb22BOqIKdAhxxH5jw6f3pL09e2z/4lbs2u4PYbuWzTEgYnw?=
 =?us-ascii?Q?HKy9LN9OhLiADC4RJa0tDMhMbkitjbKpjIGVEWrOOoVbERbS8pRrwemjw+KZ?=
 =?us-ascii?Q?CVGwabmZGZ7YZ+ePXFpPr3NIhEcXRFfIQPjJzeTYQ7PUCvPLDv0TKniRx2CY?=
 =?us-ascii?Q?LmzpsEjtPeuOpsigfQS48mAG77cKCMNnEz8IDzH13z1xsPZDpU9E+zuSeooB?=
 =?us-ascii?Q?5HU/doP7tAVzPpbOsbcRwIShb1Z52QuqiLy3fmG/fM6z3KgZ4s1JDJbRmAFD?=
 =?us-ascii?Q?r1mRIbVGNSpvXIyGwU7SpkYrMl6NkPr84I2PvpFeL2mwI3hFhEeuAfXuwwUD?=
 =?us-ascii?Q?IwPhKAmqqqJ2EKyvGBaewotwgro4eTO0APwpPY3ryH7IJGV0yvmUTIsHZHlj?=
 =?us-ascii?Q?yla09CJ4eBc20fhvjlsFTqgcB5w0zaxqggovvW0o4XPVyBSCaItET27bDf6L?=
 =?us-ascii?Q?EKPrAyNH22b2K5Y4yHcnld7kVcrz2JTwZp6osCB21/YdDOxAe0HDYBaO6Tul?=
 =?us-ascii?Q?Xc/xhdnbRX+6VgZw2yZERCUq6TFm2V/QXY7L7py00IW5atcvJGztFdLdAy8B?=
 =?us-ascii?Q?ZVrw7OgLAoBA+29moChFzYIUHe/XuRt8pSrMh+UvygfTq8BvyZiIzsqTlbiq?=
 =?us-ascii?Q?HuZSKIoMl3kpnHWMkQAgj8/tdnLEIgPjnXPzRFcvt5mtw2kgJk3EnG8G2nJs?=
 =?us-ascii?Q?qBFLFQUWf4vjpTEP4GozVecxl2iuhe6OoXbYBl3qx7ky0kKlTzBCcFXbvbkg?=
 =?us-ascii?Q?MztriNdVImDTBGxBLyQIp9DMQFBAElvlek/uchWhWqZZIL9nUByj6gHWnts1?=
 =?us-ascii?Q?Jdz2xah1cfl5fPAElSau8+KkmrcSzEv4pxJkP/dZNB1jZnV2OU+jpq7LdtsC?=
 =?us-ascii?Q?sKLRwtsVkRxxGDbMIG39JPEfTT6W0nuzlcpA2nQaf8t0Y0OYOB9vnprUzWOR?=
 =?us-ascii?Q?2cVw3ANKPdrwQrYzKsIhwskXrEGq2ptrwSH3GSzdfGn12qSG+4lyugw0VDWn?=
 =?us-ascii?Q?UHGr3UUosCYYb6TmcpH1dsmF5+qjxNuXn7DQbj3Mb1344KEOo2eyAYkXoVDT?=
 =?us-ascii?Q?YEkpqspBAIk+kFqnZt+9JssIYNbDJm+QwhCeb0fTmK57CnKp5ocn9SmPXEod?=
 =?us-ascii?Q?B4YyjY/9OAbC9EvukPclbBW7CfrmdAq5Lr0ftMqEHaC4uB6ikZculsKN/hDG?=
 =?us-ascii?Q?J1seGtnaKMUqd1mwPhAjxLhMu6wrZ0VboOHztR7xoAvvQtyQ6+gbmLpNiFTA?=
 =?us-ascii?Q?w8Jb39X5DmQHGC6b9daqtxmS20Qj+fUkq2rwASsJqLoK6+Luncz/t2PoV1JM?=
 =?us-ascii?Q?PJvM/MNxNXPGU+tu43gkdAjQXDoR6z69kLFu7mUf+7hP+0fSkyH1krbrBGBT?=
 =?us-ascii?Q?uPMyi14XrOJ3X2ZxmYJi9+U7BCi6FMYVP+w/QowFl3a0deavvyqlS7mCT9ax?=
 =?us-ascii?Q?s3I715cs0QFqUXF9Y8jZa60oxwgl9e49zwiZBIoHCLeKaj2as/5xwMAYtJI6?=
 =?us-ascii?Q?QA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 74177df5-e77e-40e3-5f25-08dd3029babc
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 21:16:34.2391 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wZsOCbjXcoBX3LsA4q9UGyCEXg1jslVXfGFKi/YslLuNRcZJrRAV2taxYcVcc6/BDTWTdUpSsAsVQKTOrnC5r11i3XnslwlHTZxD3Kq4bo0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6323
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

On Wed, Jan 08, 2025 at 12:41:18PM +0200, Jani Nikula wrote:
> Add a helper for checking the gpu_reset_clobbers_display flag to make it
> easier to relocate the flag later.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c     |  2 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c     | 15 +++++++++++----
>  drivers/gpu/drm/i915/gt/intel_reset.h     |  2 ++
>  drivers/gpu/drm/i915/i915_driver.c        |  2 +-
>  5 files changed, 16 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 4d30a86016f2..6e6ceb0de019 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -677,7 +677,7 @@ void intel_engines_release(struct intel_gt *gt)
>  	 * in case we aborted before completely initialising the engines.
>  	 */
>  	GEM_BUG_ON(intel_gt_pm_is_awake(gt));
> -	if (!INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
> +	if (!intel_gt_gpu_reset_clobbers_display(gt))
>  		intel_gt_reset_all_engines(gt);
>  
>  	/* Decouple the backend; but keep the layout for late GPU resets */
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index c08fdb65cc69..7d7a93e6db8f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -156,7 +156,7 @@ void intel_gt_pm_init(struct intel_gt *gt)
>  
>  static bool reset_engines(struct intel_gt *gt)
>  {
> -	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
> +	if (intel_gt_gpu_reset_clobbers_display(gt))
>  		return false;
>  
>  	return intel_gt_reset_all_engines(gt) == 0;
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 686be6edd2e3..0d863aa58fb6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -986,7 +986,7 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
>  	awake = reset_prepare(gt);
>  
>  	/* Even if the GPU reset fails, it should still stop the engines */
> -	if (!INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
> +	if (!intel_gt_gpu_reset_clobbers_display(gt))
>  		intel_gt_reset_all_engines(gt);
>  
>  	for_each_engine(engine, gt, id)
> @@ -1106,7 +1106,7 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
>  
>  	/* We must reset pending GPU events before restoring our submission */
>  	ok = !HAS_EXECLISTS(gt->i915); /* XXX better agnosticism desired */
> -	if (!INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
> +	if (!intel_gt_gpu_reset_clobbers_display(gt))
>  		ok = intel_gt_reset_all_engines(gt) == 0;
>  	if (!ok) {
>  		/*
> @@ -1178,6 +1178,13 @@ static int resume(struct intel_gt *gt)
>  	return 0;
>  }
>  
> +bool intel_gt_gpu_reset_clobbers_display(struct intel_gt *gt)
> +{
> +	struct drm_i915_private *i915 = gt->i915;
> +
> +	return INTEL_INFO(i915)->gpu_reset_clobbers_display;
> +}
> +
>  /**
>   * intel_gt_reset - reset chip after a hang
>   * @gt: #intel_gt to reset
> @@ -1234,7 +1241,7 @@ void intel_gt_reset(struct intel_gt *gt,
>  		goto error;
>  	}
>  
> -	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
> +	if (intel_gt_gpu_reset_clobbers_display(gt))
>  		intel_irq_suspend(gt->i915);
>  
>  	if (do_reset(gt, stalled_mask)) {
> @@ -1242,7 +1249,7 @@ void intel_gt_reset(struct intel_gt *gt,
>  		goto taint;
>  	}
>  
> -	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
> +	if (intel_gt_gpu_reset_clobbers_display(gt))
>  		intel_irq_resume(gt->i915);
>  
>  	intel_overlay_reset(display);
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.h b/drivers/gpu/drm/i915/gt/intel_reset.h
> index c00de353075c..724ea6d64f33 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.h
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.h
> @@ -28,6 +28,8 @@ void intel_gt_handle_error(struct intel_gt *gt,
>  			   const char *fmt, ...);
>  #define I915_ERROR_CAPTURE BIT(0)
>  
> +bool intel_gt_gpu_reset_clobbers_display(struct intel_gt *gt);
> +
>  void intel_gt_reset(struct intel_gt *gt,
>  		    intel_engine_mask_t stalled_mask,
>  		    const char *reason);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index c2ae37d6b94d..be44b66da310 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -201,7 +201,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
>  
>  static void sanitize_gpu(struct drm_i915_private *i915)
>  {
> -	if (!INTEL_INFO(i915)->gpu_reset_clobbers_display) {
> +	if (!intel_gt_gpu_reset_clobbers_display(to_gt(i915))) {
>  		struct intel_gt *gt;
>  		unsigned int i;
>  
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
