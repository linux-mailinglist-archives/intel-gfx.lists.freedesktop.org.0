Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E057C628BDB
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 23:15:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFEF110E331;
	Mon, 14 Nov 2022 22:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F9D910E331
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 22:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668464151; x=1700000151;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=gbivyIEt9B/T6ji4YdeZCB8yayzZpFHKNePNz0qEzAU=;
 b=J8hFLhwSsOQG+D0pvW2MPU8X53A11S19YdPh6ZiHr+2+P8m95+6kVviS
 Q/Mv+Zkzy3iLDNMc5unb8G5d3YtOqBpZGXgKIJrb1TGjrxN0mwKnnyX+O
 k8A/KwpIawvUFLEt0hFvBOJEYDVwdgSlr96pJt/1eFsTqfn6ErSU8/Yif
 tHzXwXhHT7005Ob/CwpGdWTOAovV8VD7grlTcfqU3ktpg9nhLa/3kmVxX
 ToNe37ZV9LqyTsIZS+hKBTsVs/34MZ9Rs1+QVGe78MnvuTmVYrAKEMGbS
 Ci6lWrjZUREmTnX8uWdVgsYzu/mv0CIXS8s4b8+Mh6G9b+CW7Gx3vSNKY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="295458180"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="295458180"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 14:15:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="640952574"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="640952574"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 14 Nov 2022 14:15:49 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 14:15:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 14:15:49 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 14:15:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZMtRd+cBBRhL6eA8ldCaisf2wm3NqsPY8m6Vd9tvcN9GuTezUjoYmfjjJOJB19dDOE2+PozmiAYkSKVHXL02r4RJox+hRQs9XcQVilVQCuoAr9r7p/ezvNCowRCctVbdKSdAcTA0Ze9IMIgc7ri+4oqrGUKpc4jFOvXddQJGrOV9/aUsIGHnA7geLWJ8jW+VNye4XzoyvOrMVSBWtbxELGKR7BUjQmXV+kRTIuErJUx/W761p2fpoy6vZjjXcIk+DnSsvdPSxmnWQgaJoFSB8OqzNVxdPP60A4vHZGL+uXjXfDHbgxptA35ad0oUKBlH2u3zatgZqSE/p1P8F6vxZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=12IxNc4HL3aqSDK/oUy2/JEGG8SA0ksGAS2YtDiDSWI=;
 b=B/DiPTusC5fhSZTKXwFb+dRBD1VrCt0XuWwZvtIMNeR+jUmPs+ZOANa9ZvZDUjHP9FMF+ChhnnlZZsVZvxUoh0OWYAh4XYy53lt8e6cMrYBgsawLIzqh2sTxeVlkFQA8WiVyQbZS9cpKEu8o/0jVbbhIapZDaLRtae9ANuqsX2A5vR73OLRRwbRByvKN8/VxurhsOUv02N1I7TrjyFXVulYZTBdehMvJBp+7awBjjSr0grt8Pq6ni0XtQ8SOtvjeqSEI1Pjo8Nw0krWzvpi8HvHlEmTAMMOegIfNGWPXmuz6K1XVTZHIr5/EPeSVCFIGXTCNcOT61aqI2Pu0ilwg4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by MW4PR11MB6787.namprd11.prod.outlook.com (2603:10b6:303:209::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 22:15:47 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5813.017; Mon, 14 Nov 2022
 22:15:47 +0000
Date: Mon, 14 Nov 2022 14:15:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Y3K+EWdQwpKSLm1L@mdroper-desk1.amr.corp.intel.com>
References: <20221114205717.386681-1-anusha.srivatsa@intel.com>
 <20221114205717.386681-2-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221114205717.386681-2-anusha.srivatsa@intel.com>
X-ClientProxiedBy: SJ0PR13CA0197.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::22) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|MW4PR11MB6787:EE_
X-MS-Office365-Filtering-Correlation-Id: 4def49c8-c583-4836-a4ea-08dac68dc80a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ydjPpp5OhuflVUHSj9DNW44VAGyscZd3Kb56RxvadtbwDjKnE4EGK8R4LVpqrSMKiZVZymgset7yHDhOqIB3Z9TO6PN0K3eU7hTr2qJT8FkUUBqdU318lFGYxxnknSSk5WsAKkGXRh8lbdXR6ac044OSIZtlLbolS/nCQ1n55i0zlAfUMzAQM2n1npXhQxlSuDi2sruBSkOTaQ7b3FOj0SAkD+5Q0wmDWi/XD7Y5WC76zBvhTulloo15kNy6N5xacIG0pap3ldWL1zdGNWZ78Rc8j8DYR+HKYb8JCriVhJz5UEL9V1NleK65VelzEhbbclnZalmx2H4N+xzM6g1WyGSFRcikq5drR1HP87L7UJcjLHU2sYlQOR4+HdBaIl9abUkKX8fFokO9ROr+nAd8aW+IQjnMqGkBHlxr9CgGXgce59/8tZ4UfR4fOGc2E8tqIOQcW3rUsXXphDoojoiQaPPUTJ1VjHfkgEtJJeV6DlxLf8nWDODg8I3bt3uIl4drFO1tM5E8DaFZFMEGD17RyFHFlGMX45Prji2gxhgA/fMojeQcu9PWpD3W+Rw8Y5yi6KV45/vxFPqeL+zGAVZ+iQf6PIS/rGzge3Q1YMR/OOJtjznm+AAgjpHVUSDS8Qa+amIaCXG3vcHO/uek53fgR2Sad45+OMhM3nGjVSA8dF3fc7hp/TxHuYY4CeF6mVEbfw3UrDwUivMC2krgMu2HHS+HIVlRXd08z1FOStgRAsWIq+tMcToayJERIzZfLEVeXtPQ6lAYASEGfoEsovaFDg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(346002)(136003)(39860400002)(396003)(451199015)(6512007)(86362001)(2906002)(6506007)(478600001)(26005)(5660300002)(41300700001)(6486002)(38100700002)(4326008)(66556008)(8676002)(186003)(66574015)(66476007)(66946007)(83380400001)(8936002)(82960400001)(6862004)(316002)(6636002)(17423001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?e32qcQrhkIy8wtQ97qu8XRbSoD27K+0PGuemDDBDa2uWByggVOhWXbY4f3?=
 =?iso-8859-1?Q?hRyQk93kaBO6FtRb1X2Rk2lzWh3XKJhrZRILzMKrifMncJ2X6gXYGwmDiL?=
 =?iso-8859-1?Q?n8LBg+crBUFuPh0C8EcFcPcpbIO65j7bwvT6SC/FbNQZk1Yos4t35lodWn?=
 =?iso-8859-1?Q?/lebgbpecgDStnr1nX9PyiB1ggvzUzlNFjrCUOpEnjxLTwmQPP4cMHiDV2?=
 =?iso-8859-1?Q?uLpMQLuBXJ3DWslMOg/3PHRqViTCKyfpqSqWPRo6kJG28XjFyDrDoMpnGp?=
 =?iso-8859-1?Q?Iy0rEq4F+xmR/XbwPeyLtN14CjwcRQePlW/oyzhG32h+1f0aq/OLh4w9tQ?=
 =?iso-8859-1?Q?eCwTkCjcBwV9sqhBiwo1l/6q4CEU3gj0wQeWtZNCOND+AM/C+qsqc0oi9s?=
 =?iso-8859-1?Q?y5F5Cx6XoiUHH1rSc/f/Tf3kMzLqnF6HorDkGuhEo/J8W5HFqCxMNN+KWE?=
 =?iso-8859-1?Q?nCULPlHpcFIYI2w5hp5HPLhmAkwJ1jRgAk1IQSn+rEE/zBmlGQw+goPyd7?=
 =?iso-8859-1?Q?hjmWC2J1BDS/yGwi5CqczYfFfaFunX+7IY8wlwGQ9ojHrDVH/G+jirhflR?=
 =?iso-8859-1?Q?KSoHKfe4LK4DgY4+ibYDG1XoBluI0+tb4sk7Jf9MfPtB+RnaiOwzraGwBm?=
 =?iso-8859-1?Q?MJIvJmCwEJZgsGLIAEKxcL8xPTDqXXoCml2hQouzXqEzTZFMVfjsWvkVCs?=
 =?iso-8859-1?Q?tIkR+iAlUUNRt9K5sJm98W15Pp8QdgIsDw91JR7o4fGDToBkjYWfuJhEG7?=
 =?iso-8859-1?Q?f5/6pYTbiNc0pNzlhXs3jvxN+ILg5qKz9jXB0wrDUm0ctgUP6gwTIAqRfS?=
 =?iso-8859-1?Q?zeLVw+r/WmQPGhl9U16YHNyKdGIKRqZ8Xne1C2mZbeapYrX4OjNP+WIoM4?=
 =?iso-8859-1?Q?QaTaRtEiC+bk3oABXgqjOzERuqmI7+wUgyAnf3rypLHRRil/RjNxR2o05S?=
 =?iso-8859-1?Q?FpCoy7WR75AnZsFBSW7ehxhhj2tOTkWDT2BAyensjOMBVWlhjQNUSin9n5?=
 =?iso-8859-1?Q?05Kz+pkJchtz5d04V1YmX+NIcQmuAdFEpBEoa5/5N0ufqeu7SqjtaLbtbO?=
 =?iso-8859-1?Q?GLM3CRqwr4LgE2W0Y+hKQYELDH5IhvCG3BXMzkrQ17V3WQ/Wab2mw0f3Fr?=
 =?iso-8859-1?Q?j25sN6il+9fB02tG+PZdFQoxIgBj6v7YThHrD2GAgzEqlrkFduQl3jfA3w?=
 =?iso-8859-1?Q?f6yrj0+WzsFXIVUuTBS+ViZu9XkcdtO3bVJvlVNvERQHzOk/QBEudqdC2e?=
 =?iso-8859-1?Q?9mJOJDwcZPmxHcgIj73yHJ1fTkFuB5WTP+yOlnEh8WgT9M8L0zpcY+R5f2?=
 =?iso-8859-1?Q?yGL10G0JH/cHPIiCUSv0rB1/yORjnglp0NAsk5fLmBZsgHiZetAVRfIa9x?=
 =?iso-8859-1?Q?V/kTa6T9Wj70mXtC+xi5EmGNfl8OmaKWZfXLpFyFMnWFfCNMe6XM2R+pi4?=
 =?iso-8859-1?Q?KzvUAfItI9bahZ1hvrb6ZzImX1MjYDTT3/gQyf4n2/Jd1z/TyT8IuvLeVM?=
 =?iso-8859-1?Q?sbRPd6hK5iHvj5y4/JRFidbzBvgajB8d5Z9OnlcUmWcvXCj9b4SNYANmvX?=
 =?iso-8859-1?Q?u+/kdQlU0TwaD1vzkybuTY42A2CBFEZF16eSRcTYxrmjRqblJ+GDbG5BpR?=
 =?iso-8859-1?Q?AHicN7F5F2sdy4TRFP1hvj6uWnrFy5kGuk2UKAu96bE5VtkmTwoRGQpQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4def49c8-c583-4836-a4ea-08dac68dc80a
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2022 22:15:47.6581 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CIpi5gApIAaUxZgbhBAFlLyayV5LazFCXK8LzvHdsBf2EecNP3uRGLKrLbQMMnYCOds0JMrEO0xB2cQRzoC6MJovQqSnF+zMWvfXmqzaM1g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6787
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Do both crawl and
 squash when changing cdclk
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

On Mon, Nov 14, 2022 at 12:57:16PM -0800, Anusha Srivatsa wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> For MTL, changing cdclk from between certain frequencies has
> both squash and crawl. Use the current cdclk config and
> the new(desired) cdclk config to construtc a mid cdclk config.
> Set the cdclk twice:
> - Current cdclk -> mid cdclk
> - mid cdclk -> desired cdclk
> 
> v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk
> change via modeset for platforms that support squash_crawl sequences(Ville)
> 
> v3: Add checks for:
> - scenario where only slow clock is used and
> cdclk is actually 0 (bringing up display).
> - PLLs are on before looking up the waveform.
> - Squash and crawl capability checks.(Ville)
> 
> v4: Rebase
> - Move checks to be more consistent (Ville)
> - Add comments (Bala)
> v5:
> - Further small changes. Move checks around.
> - Make if-else better looking (Ville)
> 
> v6: MTl should not follow PUnit mailbox communication as the rest of
> gen11+ platforms.(Anusha)
> 
> v7: (MattR)
> - s/cdclk_crawl_and_squash/cdclk_compute_crawl_squash_midpoint
> - Cleanup Pcode checks in bxt_set_cdclk()
> - Correct unsigned/signed checks
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 163 ++++++++++++++++-----
>  1 file changed, 124 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 25d01271dc09..4db7103fe5d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1727,37 +1727,74 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
>  	return vco == ~0;
>  }
>  
> -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> -			  const struct intel_cdclk_config *cdclk_config,
> -			  enum pipe pipe)
> +static int cdclk_squash_divider(u16 waveform)
> +{
> +	return hweight16(waveform ?: 0xffff);
> +}
> +
> +static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
> +						    const struct intel_cdclk_config *old_cdclk_config,
> +						    const struct intel_cdclk_config *new_cdclk_config,
> +						    struct intel_cdclk_config *mid_cdclk_config)
> +{
> +	u16 old_waveform, new_waveform, mid_waveform;
> +	int size = 16;
> +	int div = 2;
> +
> +	/* Return if both Squash and Crawl are not present */
> +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> +		return false;
> +
> +	old_waveform = cdclk_squash_waveform(i915, old_cdclk_config->cdclk);
> +	new_waveform = cdclk_squash_waveform(i915, new_cdclk_config->cdclk);
> +
> +	/* Return if Squash only or Crawl only is the desired action */
> +	if (old_cdclk_config->vco == 0 || new_cdclk_config->vco == 0 ||
> +	    old_cdclk_config->vco == new_cdclk_config->vco ||
> +	    old_waveform == new_waveform)
> +		return false;
> +
> +	*mid_cdclk_config = *new_cdclk_config;
> +
> +	/* Populate the mid_cdclk_config accordingly.

Nit:  kernel coding style says the "/*" needs to be on its own line.

> +	 * - If moving to a higher cdclk, the desired action is squashing.
> +	 * The mid cdclk config should have the new (squash) waveform.
> +	 * - If moving to a lower cdclk, the desired action is crawling.
> +	 * The mid cdclk config should have the new vco.
> +	 */
> +
> +	if (cdclk_squash_divider(new_waveform) > cdclk_squash_divider(old_waveform)) {
> +		mid_cdclk_config->vco = old_cdclk_config->vco;
> +		mid_waveform = new_waveform;
> +	} else {
> +		mid_cdclk_config->vco = new_cdclk_config->vco;
> +		mid_waveform = old_waveform;
> +	}
> +
> +	mid_cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> +						    mid_cdclk_config->vco, size * div);
> +
> +	/* make sure the mid clock came out sane */
> +
> +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> +		    i915->display.cdclk.max_cdclk_freq);
> +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915, mid_cdclk_config->cdclk) !=
> +		    mid_waveform);
> +
> +	return true;
> +}
> +
> +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> +			   const struct intel_cdclk_config *cdclk_config,
> +			   enum pipe pipe)
>  {
>  	int cdclk = cdclk_config->cdclk;
>  	int vco = cdclk_config->vco;
>  	u32 val;
>  	u16 waveform;
>  	int clock;
> -	int ret;
> -
> -	/* Inform power controller of upcoming frequency change. */
> -	if (DISPLAY_VER(dev_priv) >= 11)
> -		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> -	else
> -		/*
> -		 * BSpec requires us to wait up to 150usec, but that leads to
> -		 * timeouts; the 2ms used here is based on experiment.
> -		 */
> -		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> -					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      0x80000000, 150, 2);
> -	if (ret) {
> -		drm_err(&dev_priv->drm,
> -			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> -			ret, cdclk);
> -		return;
> -	}
>  
>  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0 &&
>  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
> @@ -1793,30 +1830,53 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  
>  	if (pipe != INVALID_PIPE)
>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
> +}
>  
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> -		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> -				      cdclk_config->voltage_level);
> +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> +			  const struct intel_cdclk_config *cdclk_config,
> +			  enum pipe pipe)
> +{
> +	struct intel_cdclk_config mid_cdclk_config;
> +	int cdclk = cdclk_config->cdclk;
> +	int ret;

You should initialize ret to 0 here since you don't set it in the new
branch of the if/else ladder below.

> +
> +	/* Inform power controller of upcoming frequency change. */
> +	if (DISPLAY_VER(dev_priv) >= 14) {
> +		/* DISPLAY14+ do not follow the PUnit mailbox communication,

"Display versions 14 and above" or "Xe_LPD+ and beyond"

Also, this is another case where "/*" should be on its own line.

> +		 * skip this step.
> +		 */
> +	} else if (DISPLAY_VER(dev_priv) >= 11) {
> +		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> +					SKL_CDCLK_READY_FOR_CHANGE,
> +					SKL_CDCLK_READY_FOR_CHANGE, 3);
>  	} else {
>  		/*
> -		 * The timeout isn't specified, the 2ms used here is based on
> -		 * experiment.
> -		 * FIXME: Waiting for the request completion could be delayed
> -		 * until the next PCODE request based on BSpec.
> +		 * BSpec requires us to wait up to 150usec, but that leads to
> +		 * timeouts; the 2ms used here is based on experiment.
>  		 */
>  		ret = snb_pcode_write_timeout(&dev_priv->uncore,
>  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      cdclk_config->voltage_level,
> -					      150, 2);
> +					      0x80000000, 150, 2);

The switch from cdclk_config->voltage_level to a magic number
(0x80000000) on old platforms doesn't seem to be related to the rest of
this patch.  Ditto for the comment update about 150usec not being
enough.  Were those intended for a different patch?

>  	}
> -
> +	

Stray whitespace

>  	if (ret) {
>  		drm_err(&dev_priv->drm,
> -			"PCode CDCLK freq set failed, (err %d, freq %d)\n",
> +			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",

Error message change seems unrelated to the rest of this patch since
it's not possible to get here on MTL (at least once you fix the
uninitialized 'ret' noted above).

>  			ret, cdclk);
>  		return;
>  	}
>  
> +	if (cdclk_compute_crawl_and_squash_midpoint(dev_priv,
> +						    &dev_priv->display.cdclk.hw,
> +						    cdclk_config,
> +						    &mid_cdclk_config)) {
> +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> +	} else {
> +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> +	}
> +
>  	intel_update_cdclk(dev_priv);
>  
>  	if (DISPLAY_VER(dev_priv) >= 11)
> @@ -1965,6 +2025,26 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
>  		skl_cdclk_uninit_hw(i915);
>  }
>  
> +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private *i915,
> +					     const struct intel_cdclk_config *a,
> +					     const struct intel_cdclk_config *b)
> +{
> +	u16 old_waveform;
> +	u16 new_waveform;
> +
> +	if (a->vco == 0 || b->vco == 0)
> +		return false;
> +

Do we also need to return false here if cdclk_pll_is_unknown() for
either a or b?


Matt

> +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> +		return false;
> +
> +	old_waveform = cdclk_squash_waveform(i915, a->cdclk);
> +	new_waveform = cdclk_squash_waveform(i915, b->cdclk);
> +
> +	return a->vco != b->vco &&
> +	       old_waveform != new_waveform;
> +}
> +
>  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
>  				  const struct intel_cdclk_config *a,
>  				  const struct intel_cdclk_config *b)
> @@ -2771,9 +2851,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  			pipe = INVALID_PIPE;
>  	}
>  
> -	if (intel_cdclk_can_squash(dev_priv,
> -				   &old_cdclk_state->actual,
> -				   &new_cdclk_state->actual)) {
> +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> +					     &old_cdclk_state->actual,
> +					     &new_cdclk_state->actual)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Can change cdclk via crawling and squashing\n");
> +	} else if (intel_cdclk_can_squash(dev_priv,
> +					&old_cdclk_state->actual,
> +					&new_cdclk_state->actual)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Can change cdclk via squashing\n");
>  	} else if (intel_cdclk_can_crawl(dev_priv,
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
