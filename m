Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 417608FF1B6
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EC5C10E9F5;
	Thu,  6 Jun 2024 16:09:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fwKqg9hf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58F2110E9F5
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690187; x=1749226187;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yZ44OrmlmNR2jP2G8spsTLbVoIrP0iTfbNXCiSMWrt8=;
 b=fwKqg9hfiL6tTRF5/gcFCKEi9nVPBK4T8qks1ZbarqDPU36ewWi4HHJi
 wzMkmVzotUNS3iVCGrsmfU26HpyLuucV7h/lTi5JOS1PlbdLQMVymm13j
 6SGkJrqf3+ef9wdAp86DzlwT5L2fsTwf6lsDe38IZnLjfexgzbqWvj2Ho
 mpoPvOYzQasN01WHwc9rRfwRa5aYUMstzZYnZu89HDsk5e8Dl5RxPiTV+
 O2WMup8u4sQxFona55glflQQcFSFCV/gFJa/R/vxKDHC8YY1bqHEL+kN5
 ggi5z44VHaR8p0YnrylfknS+TPyrJCxDv7lv7w5TPW8keZzfabx7R/qLE w==;
X-CSE-ConnectionGUID: N+UDIS0+SY6LPgB3fsMTyA==
X-CSE-MsgGUID: OCuVCLt5TIKNGwSRqhXxMA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14507542"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14507542"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:09:47 -0700
X-CSE-ConnectionGUID: MEo+yp6JTvWuMIs74ktJjQ==
X-CSE-MsgGUID: /XVKTdL2RnmpX57T2Tc1Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42447448"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:09:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:09:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:09:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:09:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:09:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lX1qlsEGGFV554gWujQDycqPnQ4wNA8zYILBJQYeUAO+/pwVS18ojCfjAF5zyZQu9FdFlmhA5TQMZ7cg1dSHKWEeg8de88TOpuSg8OUPZRhEADzZ4/JXA0Jmc9AL++c+apttXKGeo5bV7ESZfA+ZDL07csnng44VNcD6wd/OhLaFGfmR4uaarrT/JPjr5uHJoYXEfaJTVZFEg7LJLQFxI7i0FdXB7HJp73uxcGOkc0gluY3gAupcEcB5wgk7U20hNhu57M3gvgShpa2KPnoj4v193qwo8vrmQW9EoEO+DG/neB9R9j0RQ0hZPoVbWcz0tGnV60cOgM7pcDz5GicUhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9dxxLULwwwYR8AWcPbP4BrWSqx7uu8WDfVNRej7lsXA=;
 b=jzkbEJNE2VqZIcpOPh2P59PBZkWi9zBOq+ubtTyCPP9x1GqM8kbVyWpZ4mv2JmQp/ne3ABEoSWuMnz3z2K08z8I9RhJNNq1S3fsE4DgmUbHY+A0VWkvTbs/owPzaWWnhX+FVHD3Nhkjz6RmQ5h0STJ5Hj9/G8ZQ5oQC5V27wc1qH2GUymUaQca1qI6qs5fgFAE8LsUOPyhCfVH9Dmq00h5LzJ9YV593sXndgrZxvzClE6U61OBDKGAWCUZI/JkPInTs1yP9K2otBMjTgr95B8/DDbvitd6F/Th38hzCATivDyrL0reBdi+ZHaPKusMh2liK9S+u/n2LzYJzMJmxYsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CO1PR11MB5172.namprd11.prod.outlook.com (2603:10b6:303:6c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 16:09:44 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:09:44 +0000
Date: Thu, 6 Jun 2024 12:09:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 45/65] drm/i915: pass dev_priv explicitly to _DSPBSIZE
Message-ID: <ZmHfRVycFB1rCsQA@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <fae5b3a14efab76ea4a549794512774659c36fc8.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <fae5b3a14efab76ea4a549794512774659c36fc8.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR03CA0027.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::32) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CO1PR11MB5172:EE_
X-MS-Office365-Filtering-Correlation-Id: b3a9bc89-7a82-49d4-57f4-08dc86431424
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mfQiZoa6BIq1sCdEW20f3+CvbexSHPLF2hjm0TzrefJ8DS5l6fdNHAgfUvSX?=
 =?us-ascii?Q?lTRKThP9m9B3S7sjuU9ahR5sW1IYG2dECirCopfrzHHf+81PjFOB2i1Yv7mB?=
 =?us-ascii?Q?emkPzUMTzMewvGy1BFUIJT1OPSTnxsG19D4BJNOgLK9hf4OMWDuv0GScHsSf?=
 =?us-ascii?Q?BAkaodoUaDsRDlBzaUDmaLjTubt1asjG+wuqvwA91wER8CWmoV2GLKsq8mS1?=
 =?us-ascii?Q?6mZc/5zAw0YFnyctDqGe2r2Tfnn+m4e74LYqgCJxSTc4IdWHZ+WEB3hAxgTi?=
 =?us-ascii?Q?F/VKBVFttCjbm5Y1oHrvt1oJa2kZuXUGRGk+aojnhtbNJFE9+ekPaShUIAnJ?=
 =?us-ascii?Q?zP2vF83R9V72Omllwy07fT1xXZT7YEXxT6X7ljfB0jyU5LOT/NQpI6WnejGj?=
 =?us-ascii?Q?UqLihsoJ64AW6d/wqMbqfVV2uyaKhfFuEQROYtRZDikwhA0h1bwU1TjoRV4i?=
 =?us-ascii?Q?puVMFXOdB/9QAYyjGCuETMGZAJ81+KFe7UUceQZrZsRd8P5Zh6c4/9HP5X1U?=
 =?us-ascii?Q?Dd88BAp88UuhUeiBakYJpdufLbi4Zg5MS4/cJTRurb8kiUwmtDLJO6ikB5h/?=
 =?us-ascii?Q?WAJJzw7iwYgemXVpO+1396iElCtCXeI19cvDfS98jEVi65eKr3e6tfey7HaZ?=
 =?us-ascii?Q?V5TqIpk/nDr9G8pIrz3lkWnzRw/bw/Ag2FPAWSiu7tvdgY3wSB7HuqLY/I5H?=
 =?us-ascii?Q?80FjoWSi4M8qnfrhvI/JSDiGfH4WkLb9PLHvpN+Qda+jNtnk2Ujuym6lH536?=
 =?us-ascii?Q?2wVbBurwtxGrTQW798IXOj0wac5Z0Hgu3unZVP0eMKuYStRnngdaoHbePfiT?=
 =?us-ascii?Q?vYOhyMYKBLvmRUMe148uSoZNrl604IyEwSdl14RxMOIgRu7Nj+V8n7twQZFf?=
 =?us-ascii?Q?DC/qrJ3pCd5T9yg9f0hNWn6im37VVgeNn2sKVt5Oo7tVsteeuFtMDyCBf//4?=
 =?us-ascii?Q?JAmOs7XVPbI/EEDowRHjAOs5DJnZR7nL5r/25jzm1QljzbvWE8xqS9C3hAcJ?=
 =?us-ascii?Q?Q+O+kOhc5U/PyAlx6MwohVpyDSLa5c9N68pTL9jOgRXJiR6G8QUgBwjQU32M?=
 =?us-ascii?Q?xn0gAcHBjhhG+e/9tQi43TeoZmBxA1TQLkqQzMW25J18bdsAI+29c1c6pigJ?=
 =?us-ascii?Q?etkVHshry22rsi2c20PRDDR3+pILPGduruxeq+ZzjhpTtl3dkMI1LV5P3iQK?=
 =?us-ascii?Q?50pTON4DJybm3A56hn+iEx1wujYjvlOlb7AFoLtZMuR4zEBZ3fZGbDpdwDhA?=
 =?us-ascii?Q?fXgE0vbf3k5Wg7jAV9vQOzKmqsZom0W40jIOCt1c5pPlwjbl6xkidOHVUILv?=
 =?us-ascii?Q?NwcYzvQOeFoaLjih+clT5n4u?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XgH9rNENnu2muSvRxQm6N/H1kwDzwXE8CihkkHnbROutCrJ/h9j5dqeHipVT?=
 =?us-ascii?Q?6F5eZZ2C4z/0fAgox73gXiFwBkh8XsyMu3CpT99E6PV8P4tSbv1tzRbRNGr+?=
 =?us-ascii?Q?QkmAt2iFD2w/6mtAKl0OuybOXCGWTaH2h/DtnGsWjZleQajYgnljSBa2bSAN?=
 =?us-ascii?Q?acTO1etEO0DVS6njvcHf1zRPAZ/iGpxub//OnTqpmEc7nKYf/+eG5KjDU2jM?=
 =?us-ascii?Q?vZjZRMMyRbm1h5NgZL6fwbnWAXUTLkIKX5GK/ddizD7v3L5/sRAY15KqEafM?=
 =?us-ascii?Q?NsfCZ08GigZTRsipEsc12oT2mN0Y5qiYr/NCWyABaKkZinTPlI7iTRoLZ/Pn?=
 =?us-ascii?Q?eL3f4xyJibfnKsua6CA+UfRzcP2I2u8/wF3mVnhztgZ5rGfs5Q4PnaCEquqy?=
 =?us-ascii?Q?HXUVKne0Nf0dI4nSYF1j4DgGZtgRqVH5izEQ/8eH1aPW01KkoivYA04d5jBL?=
 =?us-ascii?Q?Iappt12EZz4q7we2kdmL8mZhIYNgM178/3rr/QRYYv8YM7brx+hCl5OgDwxI?=
 =?us-ascii?Q?yg/ZELltjrRJ/gasx0f5ht97IDs/BZBAhdxEkHzoRIIdPlP/PmoiS73I4E47?=
 =?us-ascii?Q?7osqHgEIwT3fwtBCRBRhmqUtmKLoRhu8UZ1lZuy5l7OjryHqYfv1/4dCtPup?=
 =?us-ascii?Q?AInI5Mdl9DWkBlgje8GK4mdhv5xCunYCOKhx/9RG2jR9yjwdQYm9KdokFxuC?=
 =?us-ascii?Q?IfGYySkGufHTYYM4N5eqJqFKopxCLriAg2oxSBUan/J6hjT4YNbOeHEoOKRs?=
 =?us-ascii?Q?vyPl/GMD4T0B3URtcE6GZoYzqLhyMBNogrff67+KcYzq9wfnr2DCjAPQc5hI?=
 =?us-ascii?Q?AK4EHXnMKDtZGRu9zKr71oQFT+We4PKzf3KG1WB4zU9sqizPSEbtPm5fn89Z?=
 =?us-ascii?Q?/sitL+wI0IGHZl7fbXbb+vfA3VNFybeqF6oXrpC+zGg/Nqpb/63+ugQGX8pp?=
 =?us-ascii?Q?CUUjOwhs4wuL7rkVZTnJdeftSCuzulzsCkWwMkyxbUBnttSDCyiEhniX5mj7?=
 =?us-ascii?Q?6trLt7mpA30H9FLHe4vDbZ+E5YhOirLcaW+rgf7GMUZNjgDqCLHzZGv4Sl0x?=
 =?us-ascii?Q?G5lC2SxdXNHBB9auWw5NV0PHZIeT45kMfrH/usLO4uwz30DoUxuxaKs0BpIk?=
 =?us-ascii?Q?lLEGBOgH8KvM48+qLZp8HeKuzYEwvpVnE43+NZsC950V07S+T9rnFS7c1WLd?=
 =?us-ascii?Q?qecJxSgyywSEq7C3N17oHeAjFYxP2dwgC1XwIkF/wneHaucImuPVpiwrNXJg?=
 =?us-ascii?Q?llSWd5N68EzOoiqh37B+1W3P9G2qaUm2pMkCvGM091lNITDlpLtljMnW4EvF?=
 =?us-ascii?Q?lJBjfPZLwx92VgGR0dSVF5L/FMsglsv8hNNjpYM4g/gdGxY3sXLO043NW9Ln?=
 =?us-ascii?Q?F4o6tJKu8RKTZRzIf0/lE5XZSUtk0p3nRmjvSguL0e77h/XTTfUvGZb64KDI?=
 =?us-ascii?Q?fcv0HyLEczwHr99GHFFBHwV8i/Wklbb+I0ubKkRlabfsGSh0SsbGMcFrCvA9?=
 =?us-ascii?Q?krjiHMxObtkISt9IFCk+JnWpezrVmYp+xZQAPN6ghKlELk7XoD5RDCamc0Vt?=
 =?us-ascii?Q?777fUM39SztT/RCw6P7i74TZpgM5gr/4CcjZk/D5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3a9bc89-7a82-49d4-57f4-08dc86431424
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:09:44.0318 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o+mE/NqOUJdc6QYJL+ECtdPLkqF8Ef71gB+Y9jg1MntVGoe6LACgYl7NPqHru4MiHyiwTdqiyWGvxKjvGfh03A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5172
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

On Tue, Jun 04, 2024 at 06:26:03PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _DSPBSIZE register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 38c8b98d95c3..36ed23b93475 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2312,7 +2312,7 @@
>  #define _DSPBADDR(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)
>  #define _DSPBSTRIDE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)
>  #define _DSPBPOS(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
> -#define _DSPBSIZE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
> +#define _DSPBSIZE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)

way too many unused cases...
we should probably remove them all in one patch and whoever is introducing them
later should already introduce with the dev_priv...

but again, up to you

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  #define _DSPBSURF		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
>  #define _DSPBTILEOFF		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
>  #define _DSPBOFFSET		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
> -- 
> 2.39.2
> 
