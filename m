Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A50229C24A9
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 19:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75B3C10E287;
	Fri,  8 Nov 2024 18:08:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CLJNUw+U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37A8A10E277
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2024 18:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731089313; x=1762625313;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=H91XeroiiwohSiczOd3NV0G4t+0YFsmrb/Z+7WRv3LU=;
 b=CLJNUw+UK9EzNDqV5emWuxMwaiAKdy3TM3Dnqj/zjA3XH3bsxma0chPG
 SBcLINEW2MY7+vix+i8LCtKLOEU4vZKCmoNPLmepXpvbFGm25EWmnSzLy
 u135BwUOk1cx6vyqqSFno6RXgyMdWjnZcCNAQJZgAKtxxQOa+td6iV/oF
 RdZC0qiqt0Vka7ZonGLTSoRnalp5MUARZnBoyfmD6iBWQ0hEtkl7MAzwT
 yqxZUVYmGM99s4Ey3x7yYYcv8tFKbkGqnUAUnm+EYO5cAgmKmqhr9cEr4
 8ns6CqhacepAsb/ACWu7IiDzP9tT07THEzF7aH09sHMzRNsAgFDFoAlLC w==;
X-CSE-ConnectionGUID: iDntcTrlQE2xVdAH+aaRmw==
X-CSE-MsgGUID: 92xBEu9HQIOpFjNAXGXfCQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31139056"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31139056"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 10:08:32 -0800
X-CSE-ConnectionGUID: Iks813LNSP2D6bkDBxOHUA==
X-CSE-MsgGUID: 1JKRxKlHRTKlNh/E938OlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85814319"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2024 10:08:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 8 Nov 2024 10:08:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 8 Nov 2024 10:08:30 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 8 Nov 2024 10:08:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KXR9aXNJKmRzDa9LQk9MrIOdAz+DoM9KWwKzJhmWxmyFuPRU4nN3NFPYVkZGym2wfvqV/M7rpzor3VcJWnEDabUY/d1A8akLk7R1fFnwxldhcBURbeFEO81S9suR4JZSaXZmg0tSkABKEIARgmROhXxDKO0uClMNJOc/KwTHwxecPyiMMQIwZEem2cEfYCpjMCoifP8/NG32QjK4aHdotw/mndPVG8+eTNSlk88p/3kfblbLf/BaGTO0yM9FVK3qAv1/M3f7gxhCX/gzT6/Bt/0DxEN4m01wsR8tLxav0NZkOrkUYkaapvoZ8AAoDQDw8Hp+RQ/6JeGFLwBULej7Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PUWqbNoLxhUMteUzzwugJc/xEdJznue5SvV0CX1S+ms=;
 b=AS7+XFs6o/JmgGtrbwLj6DNY5H6uqg66VMuvILkT9saIfh11mxjqgcfBbv746GSiHaaM/LaKIVWofGp5gxD6JtWJemvfVqEfxuaXiadXhOI1eoPUH+2WgMa1RCFAAEyr8M5ymeHHGu8U8t3Y4q+cTExVMwA6+V/kVQ3VOaQmvLQGoMGqoZSoJ4lDM3Qj91DXu/rQQLySYwyiG/yIELEASDoXyuEkWpNPpLAKYkcdk5nrgLmW7eEyAy+1ogDBNN23ojnytLju98EWCaB0yYWaUnoFFmWxLHXHORMRPJdrmmuy02iOthfx6mdkE/ekCxK+ezFBwnjsh08FlOupZ5NYag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CY8PR11MB6985.namprd11.prod.outlook.com (2603:10b6:930:57::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.18; Fri, 8 Nov
 2024 18:08:24 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%7]) with mapi id 15.20.8137.019; Fri, 8 Nov 2024
 18:08:24 +0000
Date: Fri, 8 Nov 2024 10:08:21 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2Vz?= =?utf-8?Q?s?= for
 drm/i915/dmc_wl: Fixes and enablement for Xe3_LPD (rev4)
Message-ID: <20241108180821.GU4891@mdroper-desk1.amr.corp.intel.com>
References: <20241108130218.24125-1-gustavo.sousa@intel.com>
 <173107953029.1426848.2416792718594299210@2413ebb6fbb6>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <173107953029.1426848.2416792718594299210@2413ebb6fbb6>
X-ClientProxiedBy: SJ0P220CA0017.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::27) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CY8PR11MB6985:EE_
X-MS-Office365-Filtering-Correlation-Id: bb9a624d-f278-4c1c-5643-08dd002055ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0/TjuHf7j5atjsbPm22KpZLUDHQMrA4PqmzqmJXD0UevACrWJPoWEnsr4Wh1?=
 =?us-ascii?Q?rQRu8targOYdg8DXGrwkXb6u4pRvfRQyWuUIJDcBI7C5v/7I3q2zORNWOvdK?=
 =?us-ascii?Q?okDdtBb2ja97wymAo4PEU2eQbbINxBiLv+dTKTrw76YKb7rS2F6wylv2AIFA?=
 =?us-ascii?Q?ZsEsf5S+3NpVq/SlboN0h3GmvkXCU1MrJMOuwqMcTwAl8+ZNNFlU6p1pl9Mn?=
 =?us-ascii?Q?8w+cEzEVXZk9Xkb9Uy+QgDGeN3ffVAOQ0lOfr3Efz/QUOYt7ilLu9PIsMXOK?=
 =?us-ascii?Q?soTephry6Qda2QHY2UqJzGwz0AzH/VyRxfoCYgSpzHTdWu/+mZVKtWGlfA0H?=
 =?us-ascii?Q?noUqukNN/RiqN8vaSr/9DxkCdeRKnHJFjxxOAQbfVU9Is1RMhr74y2MMLveQ?=
 =?us-ascii?Q?jkhqRashMN5JcPpW75DfQqHEvbs8wMBVYVHeAxTdtLTXs2oUU/UzPU3j9AaB?=
 =?us-ascii?Q?Jj0aKAP97vXpjgCbCg13k7CUEyr1T3mfsf0pwHK+GRtT/3FvTKc6bi2+fhpB?=
 =?us-ascii?Q?krwDQ8orthrAvgKsEapswZHN9iF7PC5LCTcHLkd/GkxFRuHqBQBCIoDXNvV6?=
 =?us-ascii?Q?fKZqUKa7PQVdreMZYCQYZT0a7EePIVr/KELaC4nkZ/DNxKFDws+opap/VGFA?=
 =?us-ascii?Q?0xMFkcNUjgoTubAdU9PyZvat4N1EwNnG6SoExkYs38Kf6yeDMnKE60vuKKcF?=
 =?us-ascii?Q?/tW07wj3DEXhhOIcvXg5Zc+WiCtXp9tdQLDH9NBSiGZwLcLsOLpUMYAQUU+l?=
 =?us-ascii?Q?i+c4tVYEy5P4lTYKN7su9g32LriAvVwuMsLVSPjWSTyCst+sUkxDmj+iYVB3?=
 =?us-ascii?Q?hpzxhRKXNhEzxaik+M5xnbXLKCXhNH1sFtkrGTEyLJIRovx4cKmZ93qiguZA?=
 =?us-ascii?Q?ACMOYALJaU1HCIM1IA/EICrCO+H4ToEogmC+lCWl8wspTKQLvxKNZ/pMl3wl?=
 =?us-ascii?Q?Q4awjOO1DjceeoukrhZaxqisMfYf/xTo3TvRh4jN8kstYzO90KB6oWWvF8Yg?=
 =?us-ascii?Q?05xFVw78vt0B0g/fOWiTT94LLwg4Ntdosry3Ss5Zsgv7rzZudDaBI4bDlhNk?=
 =?us-ascii?Q?30rQomAQK7HDd0vEA0s0psTHneplfDZPQNk9ZODuxdVocyI0qke20fIgElso?=
 =?us-ascii?Q?CM/Ft7LUQ0ozaE0n7WNPwx8BCm/Lg/WBjz5XqT0rHqtJpsxkgmrWfsEWzOwm?=
 =?us-ascii?Q?bEBdwvoJoEix4R6cpENfSP4JFAZh4VXVySnunKndOP4v2MOz/cZPhBR3ywt/?=
 =?us-ascii?Q?Ao6CGDTdjJSpC+s9KdE8JsMyQbxqoYm/tHn/hoUFKA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?x5okr1dR8pGuzlZH7EBy6+RxqkmcBA5ET3woDSHGU6jz7eJ1G6SvlewIteTi?=
 =?us-ascii?Q?AbVxowr/bOhLA0L5OGkIrNgDq7NDGQPDlSNiL40tUx9JALVxrcJPtl9q8BN1?=
 =?us-ascii?Q?cFWeIvBuALRjHR7gL1rtidLAjAUobqogLiFe84LqnsyjGIGtEOFQU8w79Wnl?=
 =?us-ascii?Q?Kvx5s8c5OZUE5sLTsRcvWjuPSVSfqa/ihnX35BobrSHCquvXGHrZEHH5BM3A?=
 =?us-ascii?Q?Rpb8ngOahtvsk70kYOWhOgeY59Cs69B8FH+BzzlXId9XEz4UXqEpQaxdYJwh?=
 =?us-ascii?Q?ktMjxIZIivjpVIXfrEIuEmbTIkmZe+LOMUyYCA9ofmr14Sba1JZ3RBVTEabA?=
 =?us-ascii?Q?mciQOm8qYYvY4cAuyBpR5HBgwo40IZe/e8GTsavVUeYRlupzXNDkG/IUn5lC?=
 =?us-ascii?Q?3mm/wWff3hXz/4mibinoev+5tJTZ6nkBt67xCi8upNHaCVHDJ04Y+38Su403?=
 =?us-ascii?Q?WGz7hOblxncIL1d2vunrH8eBKP9iRSnvpMD0jLoQ1hWra82posV4B45hsHgT?=
 =?us-ascii?Q?XrnLqHtPcwrVa8PrFLDcunflp2JEIUA8XquwvisEd670IP9BViC352KAfaFs?=
 =?us-ascii?Q?07VnGPwsIYQ3rhrL7mY35AdyY1SxamuluebB9kf/GOsv7GRUYxXJnE6v8bWK?=
 =?us-ascii?Q?LIXZQJ+EZe4G8QYbAWPUQlCR5xvLDIJCo5CFzCfoqZdn0TRVr1E+j3GxGktu?=
 =?us-ascii?Q?0GcUEOc/gbZMVOJRZ7R+T0z2nnygG1cjPZkIMEiLIcKUEnZ2OBwXnVnCNXi7?=
 =?us-ascii?Q?buvAFy2usWY3JG/mTIq6R/x90nJmhJHaOpOSos1WYVyMUQZK113l+hb5E81D?=
 =?us-ascii?Q?LBtk9O8cVFNrfpS7NjzchWw2QeTWERuwSBoTgBkowd+GaTOFRuVpH+XRkQCP?=
 =?us-ascii?Q?aN/EhgvW3gvVsm05TbN2dFz3BA981pc7gtpiVPsr3yNe5JQGv/ClrmX4ss93?=
 =?us-ascii?Q?fAs8IzNgfs7Mv2uVvjIiKWwsGkJBCt1dCZ6qx/vy6iuy71UPbegrHzqh4Xu+?=
 =?us-ascii?Q?+kJuvboy4RJGBF/NzqSg4VispEhnl5C5oQYku9LGuicbxg0hbko+odKuwvUD?=
 =?us-ascii?Q?VNclvukcljJqT5JV9AQ6WKfev71vOTN6VE+sE5MoxgYIC4iW59Yp0UChM5+/?=
 =?us-ascii?Q?8vh9L4dHTfb57kixpJeIOuyuhKSZEQWwEK1rq4Csb3FIgfR78qlN5kExtNVs?=
 =?us-ascii?Q?u7iVJsjnlbGSPrYXqtNkj6FpiYcu9DUIAnbEJIbFn7usxHYX3uHZ/zMWXTBv?=
 =?us-ascii?Q?7tQh8x1cqOJAdRadBPjGq0YSHELgyY7hbCI+iZkXFe+PVFgA6IiiIfd7gJfd?=
 =?us-ascii?Q?amJXv729mcVOu4MFxdXjtqfOz0hx3rsWYkGBWqLa+XKSCo6o7NbcaokcnxOR?=
 =?us-ascii?Q?RQQOFxiaqg+73OlDxll6dhhYMlL6WjOdkH9CGbTD7UU+LQihfHlr2xWQJzcI?=
 =?us-ascii?Q?QIjMFATWaFjYOkObUZ0lmFBJ9jN4tV5DRVdodtS7Hsl73dfLXLRM0ujWq+6v?=
 =?us-ascii?Q?dSwNRSu7c0s3AFd5y4V839WIvOp9DtlgnGY4T2mOnkh3zK9A1ZaR1rj49UZn?=
 =?us-ascii?Q?RTr5bUkgsKvp5PUPW9QoeEwZQp+6pLahHMOJgVahSJoxpn6/45qWBsBaBUqa?=
 =?us-ascii?Q?2w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb9a624d-f278-4c1c-5643-08dd002055ee
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2024 18:08:24.0764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ecGZq4WPQJFL2mVKrUFFvLh7bJrNiMnELNPqL6i4mVBqEnSULlQjZtqN3N948UuTxtaj2n+YFYMJASzU4XFUzNJUOin/vnOM2Nt7mpp93bM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6985
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

On Fri, Nov 08, 2024 at 03:25:30PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dmc_wl: Fixes and enablement for Xe3_LPD (rev4)
> URL   : https://patchwork.freedesktop.org/series/140282/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15658_full -> Patchwork_140282v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next.  Thanks for the patches and reviews.

Although I just realized I confused the i915 results with the Xe results
and the full Xe run is still going...woops.  Xe BAT was fine, but if it
turns out there's a problem with the full Xe shard run, we can deal with
that once we see the results.


Matt

> 
>   
> 
> Participating hosts (9 -> 10)
> ------------------------------
> 
>   Additional (1): shard-glk-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_140282v4_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_rotation_crc@bad-tiling:
>     - {shard-dg2-9}:      NOTRUN -> [SKIP][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-9/igt@kms_rotation_crc@bad-tiling.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_140282v4_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-tglu:         NOTRUN -> [SKIP][2] ([i915#6230])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@api_intel_bb@crc32.html
> 
>   * igt@drm_fdinfo@virtual-busy-hang-all:
>     - shard-dg1:          NOTRUN -> [SKIP][3] ([i915#8414])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@drm_fdinfo@virtual-busy-hang-all.html
> 
>   * igt@drm_fdinfo@virtual-busy-idle-all:
>     - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#8414])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@drm_fdinfo@virtual-busy-idle-all.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-tglu:         NOTRUN -> [SKIP][5] ([i915#9323])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-tglu-1:       NOTRUN -> [SKIP][6] ([i915#6335])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8562])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@gem_create@create-ext-set-pat.html
>     - shard-tglu:         NOTRUN -> [SKIP][8] ([i915#8562])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_engines@invalid-engines:
>     - shard-tglu:         [PASS][9] -> [FAIL][10] ([i915#12031])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-tglu-2/igt@gem_ctx_engines@invalid-engines.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-6/igt@gem_ctx_engines@invalid-engines.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#8555])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][12] ([i915#280])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-tglu:         NOTRUN -> [SKIP][13] ([i915#280])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@kms:
>     - shard-dg2:          NOTRUN -> [FAIL][14] ([i915#5784])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-tglu:         NOTRUN -> [FAIL][15] ([i915#6117])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_capture@capture@vecs0-lmem0:
>     - shard-dg2:          NOTRUN -> [FAIL][16] ([i915#11965] / [i915#12558]) +2 other tests fail
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@gem_exec_capture@capture@vecs0-lmem0.html
> 
>   * igt@gem_exec_capture@capture@vecs1-smem:
>     - shard-dg2:          NOTRUN -> [FAIL][17] ([i915#11965]) +1 other test fail
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@gem_exec_capture@capture@vecs1-smem.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-rkl:          [PASS][18] -> [FAIL][19] ([i915#2846])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share:
>     - shard-tglu-1:       NOTRUN -> [FAIL][20] ([i915#2842]) +1 other test fail
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@gem_exec_fair@basic-none-share.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-rkl:          [PASS][21] -> [FAIL][22] ([i915#2842]) +3 other tests fail
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-before-default:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#3539] / [i915#4852]) +1 other test skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@gem_exec_flush@basic-wb-rw-before-default.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3281]) +4 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-active:
>     - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#3281]) +3 other tests skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-19/igt@gem_exec_reloc@basic-wc-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-write-cpu-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#3281])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-1/igt@gem_exec_reloc@basic-write-cpu-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#3281])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-7/igt@gem_exec_reloc@basic-write-gtt-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#4812])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@gem_exec_schedule@preempt-queue-chain.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#4537] / [i915#4812])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4860]) +1 other test skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][31] ([i915#4613])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-tglu:         NOTRUN -> [SKIP][32] ([i915#4613]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-7/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#8289])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_mmap_gtt@basic-read-write-distinct:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4077]) +6 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@gem_mmap_gtt@basic-read-write-distinct.html
> 
>   * igt@gem_mmap_gtt@basic-small-bo-tiledx:
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4077])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-4/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
> 
>   * igt@gem_mmap_wc@read-write-distinct:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4083]) +1 other test skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@gem_mmap_wc@read-write-distinct.html
> 
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#4083])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-4/igt@gem_mmap_wc@write-prefaulted.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-dg1:          NOTRUN -> [SKIP][38] ([i915#3282])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-14/igt@gem_partial_pwrite_pread@writes-after-reads.html
>     - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#3282])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-1/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][40] ([i915#4270])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#4270]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#4270]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-7/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_readwrite@new-obj:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#3282]) +1 other test skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@gem_readwrite@new-obj.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#3282])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-4/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#3297]) +2 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@gem_userptr_blits@create-destroy-unsync.html
>     - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#3297]) +4 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#3297] / [i915#4880])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-19/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gen7_exec_parse@basic-rejected:
>     - shard-dg2:          NOTRUN -> [SKIP][49] +6 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@gen7_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [PASS][50] -> [ABORT][51] ([i915#5566]) +1 other test abort
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-glk1/igt@gen9_exec_parse@allowed-all.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-glk5/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#2856])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-11/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#2527] / [i915#2856])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-tglu-1:       NOTRUN -> [SKIP][54] ([i915#2527] / [i915#2856]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][55] ([i915#8399])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglu-1:       NOTRUN -> [WARN][56] ([i915#2681]) +1 other test warn
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#8437])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-4/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#6245])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@i915_query@hwconfig_table.html
>     - shard-tglu:         NOTRUN -> [SKIP][59] ([i915#6245])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-8/igt@i915_query@hwconfig_table.html
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#6245])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-7/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-tglu-1:       NOTRUN -> [INCOMPLETE][61] ([i915#7443])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4212])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-tglu:         NOTRUN -> [SKIP][63] ([i915#5286]) +4 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-7/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][64] ([i915#5286]) +1 other test skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4538] / [i915#5190]) +5 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#6095]) +162 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#6095]) +51 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#10307] / [i915#6095]) +119 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-11/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][69] ([i915#6095]) +34 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][70] ([i915#12313])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#6095]) +54 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#12313])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
>     - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#12313])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#12313])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4087]) +3 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-3/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_chamelium_edid@dp-edid-resolution-list:
>     - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#7828]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-16/igt@kms_chamelium_edid@dp-edid-resolution-list.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#7828]) +2 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-tglu-1:       NOTRUN -> [SKIP][79] ([i915#7828]) +4 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>     - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#7828]) +5 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-8/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#7828])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
> 
>   * igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][82] ([i915#7173])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][83] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@uevent@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][84] ([i915#1339] / [i915#7173])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_content_protection@uevent@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3555])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#3555])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#3555])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
>     - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#3555])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-tglu-1:       NOTRUN -> [SKIP][89] ([i915#11453] / [i915#3359])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#3555]) +3 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#4103]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-snb:          [PASS][92] -> [FAIL][93] ([i915#2346])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-snb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-mtlp:         [PASS][94] -> [FAIL][95] ([i915#2346])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-mtlp-4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#4103] / [i915#4213])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#8588])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-4/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#8812])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#3555] / [i915#3840])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-7/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#3840] / [i915#9688])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_dsc@dsc-fractional-bpp.html
>     - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#3840])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#3469])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@kms_fbcon_fbt@psr-suspend.html
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#3469])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-tglu-1:       NOTRUN -> [SKIP][104] ([i915#2065] / [i915#4854])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#1839]) +1 other test skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-tglu-1:       NOTRUN -> [SKIP][106] ([i915#658]) +1 other test skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#4881])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#8381])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#8381])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-glk:          [PASS][110] -> [INCOMPLETE][111] ([i915#4839]) +1 other test incomplete
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-glk1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-glk5/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-rkl:          NOTRUN -> [SKIP][112] +2 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-7/igt@kms_flip@2x-modeset-vs-vblank-race.html
>     - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#9934])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@kms_flip@2x-modeset-vs-vblank-race.html
>     - shard-tglu:         NOTRUN -> [SKIP][114] ([i915#3637]) +6 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-8/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][115] ([i915#3637]) +2 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-snb:          [PASS][116] -> [FAIL][117] ([i915#2122]) +3 other tests fail
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-snb4/igt@kms_flip@2x-plain-flip-ts-check.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank:
>     - shard-dg2:          [PASS][118] -> [FAIL][119] ([i915#2122])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg2-7/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-8/igt@kms_flip@flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
>     - shard-mtlp:         [PASS][120] -> [FAIL][121] ([i915#2122])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-mtlp-5/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-5/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1:
>     - shard-glk:          [PASS][122] -> [FAIL][123] ([i915#2122]) +4 other tests fail
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-glk2/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-glk5/igt@kms_flip@flip-vs-blocking-wf-vblank@b-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1:
>     - shard-tglu:         [PASS][124] -> [FAIL][125] ([i915#2122]) +6 other tests fail
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-tglu-9/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-8/igt@kms_flip@flip-vs-blocking-wf-vblank@c-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][126] ([i915#4839] / [i915#6113])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-19/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-hdmi-a2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][127] ([i915#4839])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-glk7/igt@kms_flip@flip-vs-suspend@c-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-hdmi-a4:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][128] ([i915#6113])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-19/igt@kms_flip@flip-vs-suspend@c-hdmi-a4.html
> 
>   * igt@kms_flip@plain-flip-ts-check:
>     - shard-rkl:          [PASS][129] -> [FAIL][130] ([i915#12457] / [i915#2122])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-rkl-1/igt@kms_flip@plain-flip-ts-check.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-5/igt@kms_flip@plain-flip-ts-check.html
> 
>   * igt@kms_flip@plain-flip-ts-check@b-hdmi-a2:
>     - shard-rkl:          [PASS][131] -> [FAIL][132] ([i915#11989]) +1 other test fail
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-rkl-1/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-5/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html
> 
>   * igt@kms_flip@wf_vblank-ts-check:
>     - shard-dg2:          [PASS][133] -> [FAIL][134] ([i915#10826] / [i915#2122])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg2-3/igt@kms_flip@wf_vblank-ts-check.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-11/igt@kms_flip@wf_vblank-ts-check.html
>     - shard-snb:          [PASS][135] -> [FAIL][136] ([i915#10826] / [i915#2122])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-snb2/igt@kms_flip@wf_vblank-ts-check.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-snb4/igt@kms_flip@wf_vblank-ts-check.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-hdmi-a2:
>     - shard-dg2:          NOTRUN -> [FAIL][137] ([i915#10826])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-11/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a2.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-vga1:
>     - shard-snb:          [PASS][138] -> [FAIL][139] ([i915#10826])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-snb2/igt@kms_flip@wf_vblank-ts-check@a-vga1.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-snb4/igt@kms_flip@wf_vblank-ts-check@a-vga1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@b-hdmi-a2:
>     - shard-dg2:          NOTRUN -> [FAIL][140] ([i915#2122]) +3 other tests fail
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-11/igt@kms_flip@wf_vblank-ts-check@b-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#2672] / [i915#3555]) +1 other test skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#2672] / [i915#3555])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#2672]) +1 other test skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#2587] / [i915#2672] / [i915#3555]) +1 other test skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#2587] / [i915#2672]) +3 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#2672] / [i915#3555] / [i915#5190])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#1825]) +7 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-snb:          [PASS][148] -> [SKIP][149] +4 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][150] +10 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#8708]) +8 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#8708])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
>     - shard-glk:          NOTRUN -> [SKIP][153] +1 other test skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-glk4/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#3023]) +2 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html
>     - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#3458]) +2 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#8708]) +2 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#3458]) +5 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
>     - shard-tglu:         NOTRUN -> [SKIP][158] +75 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#1825]) +3 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#5354]) +18 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#3555] / [i915#8228])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#3555] / [i915#8228]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-7/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#3555] / [i915#8228])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#10656])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-7/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#12394])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-7/igt@kms_joiner@basic-force-ultra-joiner.html
>     - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#12394])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@kms_joiner@basic-force-ultra-joiner.html
>     - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#12394])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-8/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#12339])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-tglu-1:       NOTRUN -> [SKIP][169] +40 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#5354] / [i915#9423])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a:
>     - shard-tglu-1:       NOTRUN -> [SKIP][171] ([i915#12247]) +8 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#12247]) +4 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#12247] / [i915#3555])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#9812])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#3828])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#9685])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-7/igt@kms_pm_dc@dc6-psr.html
>     - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#9685])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#9519])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-dg2:          [PASS][179] -> [SKIP][180] ([i915#9519])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-tglu-1:       NOTRUN -> [SKIP][181] ([i915#6524])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#6524])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#6524] / [i915#6805])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#11520]) +1 other test skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
>     - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#11520]) +1 other test skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
>     - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#12316])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#11520]) +3 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
>     - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#11520]) +9 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#11520]) +4 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#4348])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-7/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-psr-cursor-mmap-cpu@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#9688]) +2 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-1/igt@kms_psr@fbc-psr-cursor-mmap-cpu@edp-1.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@kms_psr@fbc-psr2-cursor-blt.html
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#1072] / [i915#9732])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-7/igt@kms_psr@fbc-psr2-cursor-blt.html
> 
>   * igt@kms_psr@psr-sprite-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#9732]) +16 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-7/igt@kms_psr@psr-sprite-blt.html
> 
>   * igt@kms_psr@psr-sprite-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][195] ([i915#9732]) +10 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_psr@psr-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#9685]) +2 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>     - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#9685])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglu-1:       NOTRUN -> [SKIP][199] ([i915#8623])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#9906])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#3555] / [i915#9906])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_vrr@negative-basic.html
>     - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#3555] / [i915#9906])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-2/igt@kms_vrr@negative-basic.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#8516])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_mmap@test_aperture_limit:
>     - shard-dg2:          NOTRUN -> [WARN][204] ([i915#9351])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@prime_mmap@test_aperture_limit.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          NOTRUN -> [CRASH][205] ([i915#9351])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#3708])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#3708])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-7/igt@prime_vgem@fence-write-hang.html
>     - shard-dg1:          NOTRUN -> [SKIP][208] ([i915#3708])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#9917])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-7/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_engines@invalid-engines:
>     - shard-mtlp:         [FAIL][210] ([i915#12031]) -> [PASS][211]
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-mtlp-2/igt@gem_ctx_engines@invalid-engines.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html
> 
>   * igt@gem_ctx_persistence@hostile:
>     - shard-tglu:         [FAIL][212] ([i915#11980] / [i915#12580]) -> [PASS][213]
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-tglu-5/igt@gem_ctx_persistence@hostile.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-3/igt@gem_ctx_persistence@hostile.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [FAIL][214] ([i915#12543] / [i915#5784]) -> [PASS][215]
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg1-18/igt@gem_eio@reset-stress.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-12/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_balancer@nop:
>     - shard-mtlp:         [DMESG-WARN][216] ([i915#12412]) -> [PASS][217]
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-mtlp-7/igt@gem_exec_balancer@nop.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-4/igt@gem_exec_balancer@nop.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-rkl:          [FAIL][218] ([i915#2842]) -> [PASS][219]
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_spin_batch@engines:
>     - shard-tglu:         [INCOMPLETE][220] -> [PASS][221] +1 other test pass
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-tglu-9/igt@gem_spin_batch@engines.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-8/igt@gem_spin_batch@engines.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [ABORT][222] ([i915#9697] / [i915#9820]) -> [PASS][223]
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-rkl-2/igt@i915_module_load@reload-with-fault-injection.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg1:          [ABORT][224] ([i915#9820]) -> [PASS][225]
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-tglu:         [ABORT][226] ([i915#9820]) -> [PASS][227]
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          [FAIL][228] ([i915#12548] / [i915#3591]) -> [PASS][229] +1 other test pass
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [INCOMPLETE][230] ([i915#4817]) -> [PASS][231]
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-tglu:         [FAIL][232] ([i915#10991]) -> [PASS][233] +1 other test pass
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-tglu-3/igt@kms_async_flips@alternate-sync-async-flip.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-4/igt@kms_async_flips@alternate-sync-async-flip.html
>     - shard-dg2:          [FAIL][234] ([i915#10991]) -> [PASS][235]
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg2-10/igt@kms_async_flips@alternate-sync-async-flip.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-11/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-snb:          [FAIL][236] ([i915#2346]) -> [PASS][237] +1 other test pass
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-snb1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-snb5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:
>     - shard-snb:          [FAIL][238] ([i915#2122]) -> [PASS][239] +4 other tests pass
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-snb6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-snb1/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank:
>     - shard-dg1:          [FAIL][240] ([i915#11989] / [i915#12517] / [i915#2122]) -> [PASS][241] +1 other test pass
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg1-19/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-15/igt@kms_flip@flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a4:
>     - shard-dg1:          [FAIL][242] ([i915#2122]) -> [PASS][243] +2 other tests pass
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg1-19/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a4.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-15/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a4.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@d-edp1:
>     - shard-mtlp:         [FAIL][244] ([i915#11989]) -> [PASS][245]
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-mtlp-5/igt@kms_flip@flip-vs-blocking-wf-vblank@d-edp1.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-5/igt@kms_flip@flip-vs-blocking-wf-vblank@d-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-hdmi-a2:
>     - shard-glk:          [INCOMPLETE][246] ([i915#4839]) -> [PASS][247]
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-glk8/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-glk7/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-edp1:
>     - shard-mtlp:         [INCOMPLETE][248] ([i915#6113]) -> [PASS][249] +1 other test pass
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-mtlp-7/igt@kms_flip@flip-vs-suspend@b-edp1.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-4/igt@kms_flip@flip-vs-suspend@b-edp1.html
> 
>   * igt@kms_flip@modeset-vs-vblank-race:
>     - shard-rkl:          [FAIL][250] ([i915#10826]) -> [PASS][251] +1 other test pass
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-rkl-5/igt@kms_flip@modeset-vs-vblank-race.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-3/igt@kms_flip@modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-mtlp:         [FAIL][252] ([i915#2122]) -> [PASS][253] +4 other tests pass
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-mtlp-6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-7/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check:
>     - shard-tglu:         [FAIL][254] ([i915#2122]) -> [PASS][255] +1 other test pass
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-tglu-5/igt@kms_flip@plain-flip-ts-check.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-3/igt@kms_flip@plain-flip-ts-check.html
> 
>   * igt@kms_flip@plain-flip-ts-check@c-hdmi-a3:
>     - shard-dg2:          [FAIL][256] ([i915#2122]) -> [PASS][257] +3 other tests pass
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg2-5/igt@kms_flip@plain-flip-ts-check@c-hdmi-a3.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-7/igt@kms_flip@plain-flip-ts-check@c-hdmi-a3.html
> 
>   * igt@kms_flip@wf_vblank-ts-check:
>     - shard-mtlp:         [FAIL][258] ([i915#11989] / [i915#2122]) -> [PASS][259]
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-mtlp-1/igt@kms_flip@wf_vblank-ts-check.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-1/igt@kms_flip@wf_vblank-ts-check.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1:
>     - shard-glk:          [FAIL][260] ([i915#2122]) -> [PASS][261] +2 other tests pass
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-glk7/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-glk6/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-dg2:          [FAIL][262] ([i915#6880]) -> [PASS][263]
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
>     - shard-snb:          [SKIP][264] -> [PASS][265]
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [FAIL][266] ([i915#9295]) -> [PASS][267]
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-4/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [SKIP][268] ([i915#9519]) -> [PASS][269] +1 other test pass
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-glk:          [FAIL][270] ([i915#8717]) -> [PASS][271]
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-glk3/igt@kms_pm_rpm@i2c.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-glk9/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][272] ([i915#9519]) -> [PASS][273]
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-dg1:          [DMESG-WARN][274] ([i915#4423]) -> [PASS][275]
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg1-12/igt@kms_pm_rpm@system-suspend-modeset.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-19/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [FAIL][276] ([i915#9196]) -> [PASS][277] +1 other test pass
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-tglu:         [FAIL][278] ([i915#2876]) -> [FAIL][279] ([i915#2842]) +1 other test fail
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-tglu-5/igt@gem_exec_fair@basic-pace@vecs0.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-tglu-3/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
>     - shard-dg1:          [SKIP][280] ([i915#4423] / [i915#7828]) -> [SKIP][281] ([i915#7828])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg1-18/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-14/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          [SKIP][282] ([i915#7118] / [i915#9424]) -> [TIMEOUT][283] ([i915#7173])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg2-1/igt@kms_content_protection@atomic-dpms.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][284] ([i915#9424]) -> [SKIP][285] ([i915#9433])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg1-17/igt@kms_content_protection@mei-interface.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-13/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          [SKIP][286] ([i915#7118] / [i915#9424]) -> [FAIL][287] ([i915#1339] / [i915#7173])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg2-1/igt@kms_content_protection@uevent.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-10/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][288] ([i915#10433] / [i915#3458]) -> [SKIP][289] ([i915#3458]) +2 other tests skip
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][290] ([i915#3458]) -> [SKIP][291] ([i915#10433] / [i915#3458]) +2 other tests skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][292] ([i915#4816]) -> [SKIP][293] ([i915#4070] / [i915#4816])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pm_rpm@pm-tiling:
>     - shard-dg1:          [SKIP][294] ([i915#4077] / [i915#4423]) -> [SKIP][295] ([i915#4077])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15658/shard-dg1-18/igt@kms_pm_rpm@pm-tiling.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/shard-dg1-14/igt@kms_pm_rpm@pm-tiling.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
>   [i915#10991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991
>   [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
>   [i915#11980]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11980
>   [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
>   [i915#12031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12412
>   [i915#12457]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12457
>   [i915#12517]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12517
>   [i915#12543]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12543
>   [i915#12548]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12548
>   [i915#12558]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12558
>   [i915#12564]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12564
>   [i915#12580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12580
>   [i915#12701]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12701
>   [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#2876]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2876
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6117]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6117
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8437
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9351]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9351
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9697
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15658 -> Patchwork_140282v4
> 
>   CI-20190529: 20190529
>   CI_DRM_15658: 5521311ecd7ffbb0adf016dbf83bd0165fc94d25 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8100: 84e42580f918da926481fd2fb37be01451d6ee9a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_140282v4: 5521311ecd7ffbb0adf016dbf83bd0165fc94d25 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v4/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
