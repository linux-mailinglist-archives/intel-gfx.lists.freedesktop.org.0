Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E257D8D3FEA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 22:53:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 390AD10E062;
	Wed, 29 May 2024 20:53:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oHuCnFcO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA5A010E062;
 Wed, 29 May 2024 20:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717016012; x=1748552012;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=uYiINXcRtAYCdn4AG10bKLgzjsQYXYdHD9w7PlMPpYc=;
 b=oHuCnFcORyWBoxOQjcXnPjE4U65hcmQtiLeU1tz77qKxTGXCGCUqrzqi
 lJAqTlDtnpfzxzjmytxWnst9A3ufKaWIadpX4fZjsCXQHlRHQLEI49W3B
 y7MKjjvkRfWNgWQb9CSqbkHhcNP/vixU1GfQtfiAqMfRt9k3OpO2aeE1Z
 Fg/XPKPtA/bU8KfgGRgcRhfol/2mtI/GnntkAswZgrCxc75S3kxcQJyme
 ireq3HtkZFcrVfHYfnlcoEIu5M3FTb1fhLSAGh2sBS+BEU3NOoBkEnWeE
 ub0hBIWfGjRd8lnrWZjTOTgvU010JGpCbzFWaGXhE5WCsMJrdy9MfycSE w==;
X-CSE-ConnectionGUID: 17g+ycgQQZmkqfIYLPlzWQ==
X-CSE-MsgGUID: UqogFVfBRtSfRGui77k01Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="17287065"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="17287065"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 13:53:32 -0700
X-CSE-ConnectionGUID: q5NYHo2KTluYRi6i5jldjQ==
X-CSE-MsgGUID: APR9++BPSyCeRHu6jLu+JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="36110674"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 13:53:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 13:53:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 13:53:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 13:53:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 13:53:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hZBcu8LdgnPhIk0E+O60VCSuEkbIiQ0okw996K2scDfga6u7yqg6qrWHFK/JJgFpz56MrX2f2qBXi1NbFnlyk0MYrta4sc4mlY+KVG97T5Bvw9sudM55cfVUwWlelKqSsXqhW5cOVneQH59XB1DzjEHYembjAwY1DZ0MZi/+l3n6USsOxr4J6OGeB+Vpn6IXhXVBZzr3PcVsaPX6aYx1hGB2MsSNrPpEuQlu8HqjidCGbkk1KD3GDe5uY0w0aYoRFBeClpUl+kh2qMHlWQHpJtSYIpQeUaYPz33lZfdU4e7pbY13ClLGi7o61QTCNdKJpCumP7Oo2ha4vqHrWgl4hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b1hiUPJzv56pq5N5rV+aLlasAKKYiTdnenJ8SXWS6co=;
 b=L6MIWIGMSYVQmMl5+U8rS3i4/u8x3K1fvpDTVWhGEOALe/obx35jSSvwfrcB+Ggsd1kvsQUF91zeMgvDd+tbZjXf57j2kGs4jd0P45fB3EZ8VEuph90dzJqU0272xyvzwhJPoJ/+pqjPsNQ/NeiEy8NgmODmt0kypxDWxLoXbxZV46SfLypA/laLUrI4YFN4RB3j+zV1agtQ1eR2gYWK7JuKdBMWqPgBFoE5ffeNhxhXtFM3i7DjYh3Br+q9dQ1p1tPdw64LB6nhp8XxieYJslvyB0bqcz4tGqxguq6m9W9AzRgjqhUxSKYb+I8x3RUWRS4zukgIhf4Pg8r6YIfNgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ0PR11MB4928.namprd11.prod.outlook.com (2603:10b6:a03:2d2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Wed, 29 May
 2024 20:53:28 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 20:53:28 +0000
Date: Wed, 29 May 2024 13:53:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 01/12] drm/i915/wm: rename intel_get_cxsr_latency ->
 pnv_get_cxsr_latency
Message-ID: <20240529205326.GP4990@mdroper-desk1.amr.corp.intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
 <1748b88aaabf29339bf47c1080b19de8d6b91e01.1716906179.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1748b88aaabf29339bf47c1080b19de8d6b91e01.1716906179.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0173.namprd03.prod.outlook.com
 (2603:10b6:a03:338::28) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ0PR11MB4928:EE_
X-MS-Office365-Filtering-Correlation-Id: dbd11d13-29d0-46d0-c982-08dc8021645e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Cuq/pLpX2QMMR6Frt6XqRTW0wQi8EJPfYxz+r+t+BIIkhrXPRe1boMpgly+f?=
 =?us-ascii?Q?bEnimGgCxboerhGkoohsZ3hGVLxJgzLYhKg+ZWRLs8Aa4D8tPCT8jypDnFl/?=
 =?us-ascii?Q?bUUxaei2rzGYW/Hjo/dUs0253jEvMa8gZlbIyQkPZY7ZWfffB14/TfwTCr9G?=
 =?us-ascii?Q?YKEQwSIQJ5LJJ0iviUYUXU1AyiH0CxttHhh2DdWXuM+womUTZtietfR3C459?=
 =?us-ascii?Q?9d4YWxSxEUZB8iWy7wrzMz7A3r0poDyCxCXbnL3ditQqOgihLnji9/hAvoW6?=
 =?us-ascii?Q?jADL1glmGbY3gX9p53uOTRocSonDRJhsdBqPTt0uoLV98RMCWHHVlD3DHyFK?=
 =?us-ascii?Q?U2+UMKC0Sf0Bjcu6vtURgvn/ZVSGkPnHuqKaO6iD6wzXYeRb88HddkIMU4Ma?=
 =?us-ascii?Q?ssyWmYh98VjtsFXr7rGJbqpMXTVmsp39yJnJGh4uDqZMsixjv8w7r4p318pR?=
 =?us-ascii?Q?JzcYvmUk6vwVv25B6ihuRtZXXDFB3k8XAiChnlVIf1+pjT2GB5YvnNL6KvMp?=
 =?us-ascii?Q?+I4z0Hw/JLVtilSmWEo9LUE+FV2H18bsVyRdhkJXoNdZ9ty0RBb8CnViZVsw?=
 =?us-ascii?Q?9yR2E5BAubAXMgeq1LiIFkWAQws1youCdnPMkK+uVjTYMQnyBGJs3gH4/PoJ?=
 =?us-ascii?Q?KYapiaHaqt8nqOTH149t7if706il22qwePEHKvxejvvSDC7URo2iopJ9Ty2w?=
 =?us-ascii?Q?wyLHRm6SLSmmMj87vculhXDbMrupDtXsE4XaSWwzjWTQvOQNuUZsDQ5cui/N?=
 =?us-ascii?Q?Y1YIZkRWc5Ko07boBKR/rRbAZyu+/hycbV1relS+xrrdN5TKJjbUc0ioKnY6?=
 =?us-ascii?Q?fr04pMVCKBzyBYWiWAZOnFNvjeAIZ7XMaCIuG7bjPDAkgS7sCly2US4blPhy?=
 =?us-ascii?Q?FLGMeh+bau7HjmUAa/Gl50h6aV5Uu+R3ZDIPwL4VCMHhFfwiZDZNqtwx9/yi?=
 =?us-ascii?Q?u0kIYMkA5dP7HrJPkOAMWfW3m+XNeBfOFFaBweHyS/5ekaqSm9T87lgCpZ1u?=
 =?us-ascii?Q?l4QeIIx6eGvvBUkQU3PzFUVhGlY4f+m4kU9ml6T7SqYU19GKemUrXHp/v0tf?=
 =?us-ascii?Q?T32rZiZl+oJHs7mxCekYQy0dJDUxTp3hBQwZFj75EpQyQON/MNqAewT9Hksc?=
 =?us-ascii?Q?HfAFbAe8R0wHsZUBMHDiqCvV4Hvn4U6ppW+3M4Ri5ciU1L4Pvma066zKbryu?=
 =?us-ascii?Q?dQ6r6F4SCMtjR9U82ajzq40KldidMWlbJUTgwtNnVMALY58aUDqdDFRF20Vn?=
 =?us-ascii?Q?UPIq6scWgiv4hmlrP/09+awcfFMzpsD68jTdzuDjGA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VuHgg5kfQczPjEQ9HNNNXcAvjCE7vf5vXjGzO+UcgaGFIMQkVXqGCLrWW01t?=
 =?us-ascii?Q?KaCtm0sB45sOHIRK6b9AwmDRNCh2xhzM9IrhR4oM0dV9LKKQDgcOADXgS3uF?=
 =?us-ascii?Q?/TG6O7HeX3uwdZGkixCIWkHhRL0w3tqeetTxPwPod2rZPgOqTL8cVfNsguJL?=
 =?us-ascii?Q?13cAvsB1HPKU1A+nDYCs5U0ap2BmXLl2kfsxG5jkfiPpJdM/8DeEk3sK2KQv?=
 =?us-ascii?Q?YfSEQ/pv+lv+8EvapUM28CFeFtV44cW/tzR1yAHyMlqo3bBnLXEwqRFDVGgT?=
 =?us-ascii?Q?6g5NTA/xJO0MmvDje5d+ZbLke58MwFsAC7LLmt81erskpQ2Lv1NvCFeGMP2Y?=
 =?us-ascii?Q?w/n5CTCKZ/r95uDuEdmeD8LuNWUKRC63IYrtCo3Tct5JWwdg90Xp26gYX1hC?=
 =?us-ascii?Q?+/3MvK1cLf+2d5VsHTAvxqrnspjCOFjWiLllh2o2fgJEifrBSZs0S+9yvmMT?=
 =?us-ascii?Q?C2x64Ew6LCJkPlIDgwqJPNKZ6mZTOUHNWeFZFGAFsH76rzeJLFiKRwJ0snz9?=
 =?us-ascii?Q?k6e3KDinNB8Exw3JE+kn2hPvKmFrrAI674ev0KiKUkuYcVm/DFC7aV1Fn0LS?=
 =?us-ascii?Q?ARuO0XX4QBAIEpd8O+DMH5iNk2rCaFMVzGRG3j8q2FX0ZIz53uuGR2ixoGsD?=
 =?us-ascii?Q?tOLxq7O5zMQD97df5nGWo0gSq+tuT10CTbJTLcoK3ozFAIueHhhMz5QfmoRo?=
 =?us-ascii?Q?GCETXEI8DI9+2V+CFvTp3PuiJrpYetruKyro0UfOAo3V2JQda9KR6zUcHb2K?=
 =?us-ascii?Q?q8fzGRCKO3z+sqfUBmkDsAuUxjqypxalJY1aRsaXRnhXHTlyNrUTHxf/qFAX?=
 =?us-ascii?Q?FgjnffpFDtJ4XIuIzYmjJzpiMVNZWK2HyX83SVVxgDiRq+oCXrmE5rDXU/nH?=
 =?us-ascii?Q?Gg36OxFx0dGRicoNyRj0zfdUTWR00EWqC/sI7LKJtDKYI+r5RQ7xsSpfrVNw?=
 =?us-ascii?Q?u1NovnI/CUolf4Xjo5iNPy50GktgNt1tnkTbEFA4uN8j6QkVaxBVzBXkT+Vt?=
 =?us-ascii?Q?sUtI2UqGdxTiqtCRA5OCxGEIq4i3WZsfJT1mk1FpLdWbjeq2CS2rdvNzj4QH?=
 =?us-ascii?Q?PpEqH9RBUgWZgSFcSZDOfGe1En6BW66CVta5EmXTEoHaVLo+cbYmwHSyfnJk?=
 =?us-ascii?Q?WOi4hy5P/lTj8Co7TkSsmRA2d/ApTYPvWFAOYxYfECFJureDobYgEIvgx6qv?=
 =?us-ascii?Q?GHSCMNafh7yu04cPWDAr9c697Bf0aVMqyRj2DO/o25pgwfCnainjkIfjnzr3?=
 =?us-ascii?Q?IhWK7roQXIe6g3KhncXzjpsEIoA7NyAUg4KiYPXXKftcc5W8sNhyZSDH0fyA?=
 =?us-ascii?Q?Qdj7Rbw/QJxef/YDsOMbAvVGwm20H0fHnpX4haaOxPRS2aD6LXDFH6j1V8Nh?=
 =?us-ascii?Q?F5d99qgLu48QdI4Lli88/CPocUX1//7PDxKfWfgeWHYGlEGxJYAPrDgXDl1a?=
 =?us-ascii?Q?uxhD3dKl2GU6qTGj916UfOZaQNYuPYUeoZwDHAAN0fLasK6wDKn3F8TXRLax?=
 =?us-ascii?Q?fz7Ci8hJOjTYvNFzyiaD4S2My/JkIPYhqdI7ooGAqyi/VDyDKd4s+RvcqoxE?=
 =?us-ascii?Q?P4m0+EXQ/qN5C1G8ZU2fW50FSP2X/fK9coqjog7tSLWGiOX+w3L9OYVK1tzE?=
 =?us-ascii?Q?pQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dbd11d13-29d0-46d0-c982-08dc8021645e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 20:53:28.7421 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R1m6MXY2EzEKjG+zmB3ebFaIhWgBfHgR6q38PW0HnIBOR1mOjgNrn5B8NxRgA9VXMkzLrcoV7ld/N/WvSQuFqJh8CWz6AE0rIBFFV4KGcgQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4928
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

On Tue, May 28, 2024 at 05:24:50PM +0300, Jani Nikula wrote:
> Clarify that the function is specific to PNV, making subsequent changes
> slightly easier to grasp.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index 628e7192ebc9..8657ec0abd2d 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -70,7 +70,7 @@ static const struct cxsr_latency cxsr_latency_table[] = {
>  	{0, 1, 400, 800, 6042, 36042, 6584, 36584},    /* DDR3-800 SC */
>  };
>  
> -static const struct cxsr_latency *intel_get_cxsr_latency(struct drm_i915_private *i915)
> +static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *i915)
>  {
>  	int i;
>  
> @@ -635,7 +635,7 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
>  	u32 reg;
>  	unsigned int wm;
>  
> -	latency = intel_get_cxsr_latency(dev_priv);
> +	latency = pnv_get_cxsr_latency(dev_priv);
>  	if (!latency) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Unknown FSB/MEM found, disable CxSR\n");
> @@ -4022,7 +4022,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
>  		g4x_setup_wm_latency(dev_priv);
>  		dev_priv->display.funcs.wm = &g4x_wm_funcs;
>  	} else if (IS_PINEVIEW(dev_priv)) {
> -		if (!intel_get_cxsr_latency(dev_priv)) {
> +		if (!pnv_get_cxsr_latency(dev_priv)) {
>  			drm_info(&dev_priv->drm,
>  				 "failed to find known CxSR latency "
>  				 "(found ddr%s fsb freq %d, mem freq %d), "
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
