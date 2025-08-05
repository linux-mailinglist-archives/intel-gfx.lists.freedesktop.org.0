Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2672B1BC72
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 00:17:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A191C10E2C5;
	Tue,  5 Aug 2025 22:17:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FTNJfMZt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C33F10E2C5;
 Tue,  5 Aug 2025 22:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754432251; x=1785968251;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Usbdbx01iR7SLBPZYJZxm+NknIy0QKW+e0VrssJ9cMA=;
 b=FTNJfMZtiDu5xzBRrOyAzRbfjhQW8tMz0dNzIVrFol6rs3jpszVba75I
 y0M+bhnkuV9z44vdno61kSVPClPoDSd1Ta8DeVzCPrirRMSS/+LNu+pmg
 mtMrTXR0vHBU2IAWzkQvElbrQouJpT3hXrlPCn7wg5vZYOIoohn8DVJ7w
 /NByKoTyjymd/SAN7bHQgTeHhqL/p0J8Fk2pI8CijKjIszwnTBB7YuR0a
 ELtuwau70sNJCUybRaxIdtSmhPW8MXwHXSQK3v7XcHFkxWkVdX+iecDMI
 +hunnD+ufY7z3s8d42/MJZCNMo67uxNZ4PerAsF2pNFyK5tbc6y0xwXb0 Q==;
X-CSE-ConnectionGUID: tql5XtvASnS8vpbPbCMBvw==
X-CSE-MsgGUID: VMHI/4NRT2mE2FxurKRjQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56656795"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56656795"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 15:17:30 -0700
X-CSE-ConnectionGUID: SjFaKbzeTlKP2QBWdYeD9w==
X-CSE-MsgGUID: hVuB/vfRSKStOJnsJBM8hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="163848704"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 15:17:30 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 15:17:29 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 15:17:29 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.55)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 5 Aug 2025 15:17:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pd9FfEBV6/DplxmjlBdNtV27ZoPeSgiU7ab4/fFacYlHbsasXS5Lw1krlolgrnDFTmd3qT40vkROfHdkFrr2wE7wlUw+r2tFRhb6wyCnwSEi+wnrFqDBUvtifw/ZjhqeQYA9qj63KuwK7Bp5+iWqaZ9pD8Ik6vyhCkj++Jq8VVwJOrfBze0NVVQnjjETOU1DAN4VetZFQD8YgfKoOMQXZSSFtsGEbGt1O6fmNuaylab9/illPPE6bz9qaFEz06MO8zE/0Lzz3UJnQSLsJHwJWASdqpk4xbYbN6PFP5qv4tgbOdJ4DY0Bc/KqKKPbEjAjjBKnXluh5xa16+M0oNW4aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TmePmG8JwFAu3d6QqllrBbov+VI3O2/8wmRNhzv09Jg=;
 b=Ju3mlKJbY3IIHu+FAamS53bbfYCETjI/4H/wfOATrnuPfH8fat6d5jyS4bFN9/T+ZLzZtdgYk8JxCGHvUDcLuOVr/7YiIxfnUeXQgLyRM81DkQhtvEqytXlVRZVD9AGf1yQ+oO+L4qzw9qYikwYEUf9y/jn9JWDbbTYPx3ykD44dkGXbefYEObnAN2ZXIJS0lFok8Sc1dFWAM9bujgBii9gN4YemKa+n95QlQ21SPGmwSFK+S3OYsQTU1ZHj5Y4qIy6eJQF5nv97NlcSnFF8V/h7RtwqUQ130hZrUzL3fO7q9a5iYYUlxVK3jsrq3LWwSO+D5JZPeVOMbHD13adqLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MW4PR11MB6810.namprd11.prod.outlook.com (2603:10b6:303:207::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.21; Tue, 5 Aug
 2025 22:17:26 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Tue, 5 Aug 2025
 22:17:26 +0000
Date: Tue, 5 Aug 2025 18:17:22 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/5] drm/i915/dram: add intel_fsb_freq() and use it
Message-ID: <aJKC8vKZvibSr_av@intel.com>
References: <cover.1753971617.git.jani.nikula@intel.com>
 <05aff5118d67d1b3426c5337de1e73e523d643f1.1753971617.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <05aff5118d67d1b3426c5337de1e73e523d643f1.1753971617.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0051.namprd05.prod.outlook.com
 (2603:10b6:a03:74::28) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MW4PR11MB6810:EE_
X-MS-Office365-Filtering-Correlation-Id: 61e495a2-eaea-44dd-ccb0-08ddd46ddbb0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?g6FFuVUxP/VxZslZaT4q3bVSFaACp2H+RnBn+spVHw8Mh/ry3JVhxHiRF9MK?=
 =?us-ascii?Q?OQz+Ab9PHE2PoVuT3qUUEgxHYqR6WVVy0PiqJiVcAOAC1SCCfWm6IV3aETJ3?=
 =?us-ascii?Q?b9uqR2lL5kQUBzW0VA0difb9ezwVb54VX7VbBLmSMWMwdWGWX8HTI3bYP4T0?=
 =?us-ascii?Q?swjPhA4yr7FH/LxXQa9rkuucb716eM41YrRRbsYpJcokuqZEFkxzgMGVftYi?=
 =?us-ascii?Q?2gT9cZo4Hrif/00jWzg/CKjwP9x5Q5n4p1O0f3QWWCsUKnmj1TeHZj1l3ypX?=
 =?us-ascii?Q?TdifQ7AmLX9udEGdGDkfjDP/W5w961IVwPmFn7GEEbErNBIYKu0zBGiC3Lza?=
 =?us-ascii?Q?MpINAzjqexOXZUHS372bsOS/0wxVQvOkWivVKceK10SeoD5w8Z6TbIF9FJhY?=
 =?us-ascii?Q?bRlG53z961vqyFeNSoQ6MdT6o1HYs9C3F8PZxmW2DLCnjcadH+byAWMmGtGe?=
 =?us-ascii?Q?6MzBJ9zdrtoRdHPLOrF6Fb7ux3JSfXXaLxNVdYpwoG19SswAFhVYkjjW6X8w?=
 =?us-ascii?Q?UDPfD2JK0TRr4adxD1ScehZwwkMlOXiZ7wE1Gw3tW6tkLs2y9B707/5y9+xz?=
 =?us-ascii?Q?ce7mw5p9GC7VVbTWcHE6gnuCcYzlGzIhTkI74spqNZSulFcofe7cGBEsOGqS?=
 =?us-ascii?Q?HLWGXMmHePxzX93/alY+wDnMMssM1rQNXhtfMcm0L8bLYWHHe8eiUJ993bBG?=
 =?us-ascii?Q?YdtZ+ek5AjC5MV1iXqPSBaa7RQ8JFZ+kIJN5TX3HTvs+yPINNzH7pSAWm444?=
 =?us-ascii?Q?EbvVbt2I8GgQORG4VFo6+qrN2XBMHjRazMPuZItZKg7YXNRTGf48/Bp1j2D/?=
 =?us-ascii?Q?5THPtDhfVbHV1BVL4CtiEBmGXc97G70jk6prjig2oP2KBhGV6l+EwvwB34TN?=
 =?us-ascii?Q?8RRtmp/V8q/I0TxgJXsWTKH9YGWWrBkl3EZ08OC+F4OoKnDDcbHXA+7oMz3S?=
 =?us-ascii?Q?bmtYnXGlM/tGpJemgWdquasopmJ5LNpHI3pZe8cN2IbCSeguf7sHcCAplNzl?=
 =?us-ascii?Q?6eLuSsx5lTwSXzWyKuXN24nvgVAqIhljGgMTx944yfBImhAe6DagiSmL88t3?=
 =?us-ascii?Q?9MRxJHJPVszSYEhQX7TRspPHDZN/dEbdBQPbE3kzYv7z2C2DoOTpEXuVJbmQ?=
 =?us-ascii?Q?FHODaX1BoI2Pjmz9Pr9Q46Twok42Jb7LoEUbxSynr3ZJn+Or5KDDRir9PQdW?=
 =?us-ascii?Q?a684PZzUlyvk2FiZWICkUFH0+kkwJerAm5OEtCKK+QgOc4nXEoxEGXdGnT/3?=
 =?us-ascii?Q?AUdPxpr0tu/l/HVF1XXd/bk1UImYyr3W2Lfb2y2pFrJGN6E5gh2Prgdvq/cJ?=
 =?us-ascii?Q?yMPjKk4daksf1RskpHe5A5S7qWHrnCeBf643zepxmISAUOoUHXkf+3GuDIOy?=
 =?us-ascii?Q?ZAaV3safcAWyY37uR/SSSTdOMuBYYi/G8ZAaAf0KInFsQajy6YReq8l5oMRh?=
 =?us-ascii?Q?vD7sAND2WVM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TOog3ZJLPguo6Cp3xRgEg6IQc7tBJobnmGnRR/jRgr17g7t9SgG69WiZPwj2?=
 =?us-ascii?Q?mQFhKzQybN0l+AEUZhdl404bG3BXrqdXFDFr5kXcoNTK5f/yUTj0mwjzudFV?=
 =?us-ascii?Q?gPsa3BcsNyHqh+CuFmvQups9G5aPCTRK0auh/LFWNKGcy9wd0eV/9SHB9wUq?=
 =?us-ascii?Q?I7oPSUiraJlD6BmUnn3aNWvwjfdaSsG4u8o6znDWEvqC15I3SJJrVaeiNCl+?=
 =?us-ascii?Q?FRWmQ5tZJdVc1jmN0rE4tfKc5ScPjAUE5SHHuDuaRrUWLWx4iy0SJdBMM/pJ?=
 =?us-ascii?Q?Ri1i1mzDx7zbPRgiuHnAEFVTQtjq3Fx+u8gJOOoMaowuJ82kez9Y9kHkiLfE?=
 =?us-ascii?Q?LHgYIS5IQsSRWkcxteIo9XQGJw7nk09+MDKxQ7KQ48JlTEvlGjJYvZMnNpVH?=
 =?us-ascii?Q?n9l7iFxj3o0A9NgsjvatqH/B55T+bHOg3LXibdPpKdQdp9wPpBohpPLBe5+4?=
 =?us-ascii?Q?6gxVqLMNWPzaOiv8z0YfIAtseRUjFSs57thI5UQBMldqbuQmRjgrq3IPheGT?=
 =?us-ascii?Q?t2K2YRu/hIpmMuK5nWFXsWuJMKmyLbWFNXLjO/vJmlLRtWuST/Ul9sBjoq56?=
 =?us-ascii?Q?sOlZPlrEicXW7VSwT95VsQ5yxO4aIQhyfydAlEhd5ZzQq1lGjyrdZsDJWAmA?=
 =?us-ascii?Q?m9dH9k+uIc3NGPxo2LCGSRqSreDm+/2tyTYdVs8bRwmbdNGfd+i8cpSOMQQP?=
 =?us-ascii?Q?fPZbIV5DicsVUXZQZMkvOdUfOvEXnhhsOEIKewN3mt6sBgH7gbSkf8ECKau/?=
 =?us-ascii?Q?L55DokN+DdswtJLUrdwiSX4vdbMRdqFsybaHMH6oHG82RDNP/LbUcxqgMJvd?=
 =?us-ascii?Q?a31MbVi5UJIgJTtHkAPLfO3J7GK9CN7D3UDt6CgGQxNuoqniOKPYLIV/rCqy?=
 =?us-ascii?Q?ZfmTcKkre/HgXLiwLFP5IbaY1CggbMAoU0Sj2aNukjpJMrHTpYOIB2AZAVTS?=
 =?us-ascii?Q?TEKoovLj0OfwIuqWMonBnM/ZRUetBcBYSz5DBuV0YKXxRFqnGWDuvMChKPE6?=
 =?us-ascii?Q?TpiJMYFLB5baF9yxOgJ1K/oVoO6CyQvcz/kKfpMzrKRMTcjb6tZKFDBdYweE?=
 =?us-ascii?Q?9RCEfn/4F1UUpKyBIavumAG9czkZ9C5fET8JE5OYbx0lZzzTAevIgLQSugQ+?=
 =?us-ascii?Q?LAzADCzieTdbg3NaZtYr0xMqLk2Xw5DLwQequzznd2LF6DqHm2GKHWsM1861?=
 =?us-ascii?Q?MoNNxQyCEcIIBhsVmAnJgBL9s9aqdfznBBgPnAgFIX0QCFfq7g3XuKkyAaXw?=
 =?us-ascii?Q?t68HPk5DGhWJBKe/I0RWvVyAQNogQ2OeP3F6/8RenBAoasME+3OyS3U5dtKs?=
 =?us-ascii?Q?gJyHxh9bwrJrpYIMVBQQDZnMD9bjPEkM/nq/Jd7FU1EELXoSU+XBIXnreYkT?=
 =?us-ascii?Q?D1ezwRqIqUHowSPQ+rHGHs10UO5KYzXCigsM8oao7giTbUWCXgKPqqUHYOm5?=
 =?us-ascii?Q?4BGawsZww9CxrPjXP1es6XoWjuoNal9pLXpuYTebRPZg8kKmNJPVtHDLxUUi?=
 =?us-ascii?Q?06xgXxMG56naci6n4gGlF1yNO7WIw8dZf82jgZeFrYJVFMh81xFD7EoZzGuh?=
 =?us-ascii?Q?sMdkYbAjdzMwdxyRY/cYhjSZbGr8FD5jnnIldVM58SyzJzMFItfZFjIhTWeP?=
 =?us-ascii?Q?wg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61e495a2-eaea-44dd-ccb0-08ddd46ddbb0
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 22:17:26.1261 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g0QZQajQBpyiNgEIkXEZ8H5mpDb71n8r4zUiZc5CwUnsY73q5RIb4NOoE7CT0ZNP39IcXsDarwUYcCUfi4gBPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6810
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

On Thu, Jul 31, 2025 at 05:21:21PM +0300, Jani Nikula wrote:
> Add a more generic intel_fsb_freq() function instead of platform
> specific ones.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c     |  2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c |  2 +-
>  drivers/gpu/drm/i915/soc/intel_dram.c          | 14 ++++++++++----
>  drivers/gpu/drm/i915/soc/intel_dram.h          |  2 +-
>  4 files changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 228aa64c1349..50f8e8e7b2a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3569,7 +3569,7 @@ static int i9xx_hrawclk(struct intel_display *display)
>  	struct drm_i915_private *i915 = to_i915(display->drm);
>  
>  	/* hrawclock is 1/4 the FSB frequency */
> -	return DIV_ROUND_CLOSEST(i9xx_fsb_freq(i915), 4);
> +	return DIV_ROUND_CLOSEST(intel_fsb_freq(i915), 4);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> index 6c499692d61e..88b147fa5cb1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
> @@ -148,7 +148,7 @@ static u32 gen4_read_clock_frequency(struct intel_uncore *uncore)
>  	 *
>  	 * Testing on actual hardware has shown there is no /16.
>  	 */
> -	return DIV_ROUND_CLOSEST(i9xx_fsb_freq(uncore->i915), 4) * 1000;
> +	return DIV_ROUND_CLOSEST(intel_fsb_freq(uncore->i915), 4) * 1000;
>  }
>  
>  static u32 read_clock_frequency(struct intel_uncore *uncore)
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index deb159548a09..6be3618d4885 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -153,7 +153,7 @@ static void detect_mem_freq(struct drm_i915_private *i915)
>  		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
>  }
>  
> -unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
> +static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
>  {
>  	u32 fsb;
>  
> @@ -235,13 +235,19 @@ static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
>  	}
>  }
>  
> -static void detect_fsb_freq(struct drm_i915_private *i915)
> +unsigned int intel_fsb_freq(struct drm_i915_private *i915)
>  {
>  	if (GRAPHICS_VER(i915) == 5)
> -		i915->fsb_freq = ilk_fsb_freq(i915);
> +		return ilk_fsb_freq(i915);
>  	else if (GRAPHICS_VER(i915) == 3 || GRAPHICS_VER(i915) == 4)
> -		i915->fsb_freq = i9xx_fsb_freq(i915);
> +		return i9xx_fsb_freq(i915);
> +	else
> +		return 0;
> +}
>  
> +static void detect_fsb_freq(struct drm_i915_private *i915)
> +{
> +	i915->fsb_freq = intel_fsb_freq(i915);
>  	if (i915->fsb_freq)
>  		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
>  }
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
> index 2a696e03aad4..09a7a581d949 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.h
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.h
> @@ -33,7 +33,7 @@ struct dram_info {
>  
>  void intel_dram_edram_detect(struct drm_i915_private *i915);
>  int intel_dram_detect(struct drm_i915_private *i915);
> -unsigned int i9xx_fsb_freq(struct drm_i915_private *i915);
> +unsigned int intel_fsb_freq(struct drm_i915_private *i915);
>  const struct dram_info *intel_dram_info(struct drm_device *drm);
>  
>  #endif /* __INTEL_DRAM_H__ */
> -- 
> 2.39.5
> 
