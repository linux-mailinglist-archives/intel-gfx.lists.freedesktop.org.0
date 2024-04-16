Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA258A70EC
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 18:11:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E55461129EE;
	Tue, 16 Apr 2024 16:10:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fjGc1+9k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6775B1129EE;
 Tue, 16 Apr 2024 16:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713283857; x=1744819857;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=XdDSaEtVXHPVOA7c0baVTKx+9MzzeCgtpFi29L6L59o=;
 b=fjGc1+9kdyn9Cn6/loxkAY3x7GpGPVlXMOXngfbst6sKvJSKrjJCb6IJ
 7hnk3ZXEkLWhNdzUbJmYm4QzEotDLghlBmYc4gPne6ThxFOIxE0irQPjx
 s5ciKPmVI76i9kMoytFPwDIBB328Vv4taJvqaQu/c3yJ6DIKClN5zATYT
 vqGaet7WOKVvjOCnb9wmt6lJmOTIPrF14FWFFygS1Zreztk2VI00gBe/u
 kmDXIB+/hr/MCLbuGrCP7gDknHo17rqn100T+LZG1mST+56jGydrgVKsb
 qMRljHE/6q70Gq9/HfCfl6mK29DLtGOE7kAdI+k60FBtXFVpvPwx+5RbP w==;
X-CSE-ConnectionGUID: 31ckSLjeScCKJjGMbrccjA==
X-CSE-MsgGUID: E8eJoR64QBmCQcO+26fRSg==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="19338342"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="19338342"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 09:10:56 -0700
X-CSE-ConnectionGUID: lw4qOZMYRPyfY9odLfiCNA==
X-CSE-MsgGUID: BwXlUbPDSNW8d6s/gu584g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="45582045"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 09:10:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 09:10:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 09:10:54 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 09:10:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UH0O1JswApEfb1/o/tEDyDGpS7T4FOtE2dsabUL4w9Bu9XjFAZs2I6JkkqFKgHhJBT68/AeodI1FXFv63egfeEvRcKSEN2gtsjJGQheNx3Ph1rIIw6F9bGQO11kxmi4QPiFKjmq5bl3HjdFaJC/BGMOZ5AQXrbF1+/HHKvDgwH/RzOD9nElqkL259UwQ9PgDQAyQsYlTUTc9EWHrMvG8jhhAdQuqtck3xqkqwnWlV7VyVWrTEz2XnzPyU5TRdbMPADm90jNtuhXUo0YshYFGywXrJuJJ+QiibUZUpftDV7NNJjB8vGVxx+qOrWsvCm6NKt6GG3zxgDjP+VhSi8+MjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V19kxfX/kgBF4F7mmB6do+i7wyDIr0/l+gtGEBxNITI=;
 b=MBFeV54APCSipKA8GuWtcM34ymBB6fJXtwLy/Urp4K5CIgTKQ2krf7kklTdNENYb5yJZPrfjA6dThD/Lw1hhavkUu0P7F+M7Qtt+gtKkCvr6xrmorULNxJxSnb1aVv5FtzKs3Hf8c7ldxXci+03FrkA3x2oIxnjA9bFVbcP2flAq5tX/BLbCVbtzSWLEml4cohLuy0xAlxbQyrdhM1po3i12t/Pdwib4BC3hX3rxcSu3eJ4bzNhfn/TQ5cda/CI9A5hCDpZsfbcMKFRGaQP/IvdntM/yXLc3AjHnEng+SWbpTH7QXT2NRbVBKC/8St6Q1uge8tEHaZuoBu4653/Usg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by CO1PR11MB4915.namprd11.prod.outlook.com (2603:10b6:303:93::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Tue, 16 Apr
 2024 16:10:53 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506%7]) with mapi id 15.20.7472.025; Tue, 16 Apr 2024
 16:10:53 +0000
Date: Tue, 16 Apr 2024 12:10:44 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <tursulin@ursulin.net>
Subject: Re: [PATCH v3 4/7] drm/xe/display: add generic __to_intel_display()
Message-ID: <Zh6jBLVEU5jmxuHI@intel.com>
References: <cover.1712665176.git.jani.nikula@intel.com>
 <503fea3fc545bebe6aa303d33cb5e816f7738343.1712665176.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <503fea3fc545bebe6aa303d33cb5e816f7738343.1712665176.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR02CA0024.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::37) To PH7PR11MB6053.namprd11.prod.outlook.com
 (2603:10b6:510:1d1::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6053:EE_|CO1PR11MB4915:EE_
X-MS-Office365-Filtering-Correlation-Id: 31c501b8-0d4a-4d6f-b366-08dc5e2fca32
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U6ywy7EcAfrCe1oFYf5KTBUJi0ovCkULcByjqgTYn2b8ylrKHHgr2JFAg2eMEonzdZZgK48EYF6VVSqludaGWjXouvvYHYv5DYcdsrKrW4uT2cfZvns8XcLUv11EKbBoXQ4rZnEIsltDsHIpg54pVOLweqsnaHOnv4XX1e3ZcGWS5khAzl7dCgo2glFv2bwq8iY/Ss/WuIUewaMQlzl3fWRuQn4onBjkHDqXrfiXtZDLXhHqlFYkPEldiF8Oz8m18M6CaR1VzrWqzqMZFAxMA9kUHR08hs0gq4wkLH9UyZwAesZpqZxOSf+8s6b0b3QBI1MJVRcgglmLzSTqg9nHUgL7Ls/znsy1sJRViQ36yUYU8FUjK0cZNZCZtNO7mXefS4AUtQzoPu3qba2FiuKjwRsX0giCrGQjq4782PWx458MJhjbCKEgphWYXSYNu5cm0dUogPPB6D9JSJZ/DF1ljtF9Zrlc804wRP66KDNS9vX2qnXD1x+pftYjM2xejwKVfrj1BCSzdRnxNQgNLqJWJ9OP7+u8InXvAcrV+IkO/1JVjqhbEZXknQqbwN5YwJ1OawMrA4/Cy5AgabuT2Kvd8SveSL5QDpTP5+JHPxPa7fz4SmYa/Sa9KmmjNYbsTGLcbmisJX7q9GIS0IDmHgCOMfMswtq6xE5DWXl65t01v/g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mlgrd42oTNiiqOoiDW/yUcrgVtjbxyo2RZniqdz6w/HzuzR4pSIBqVOxbGbf?=
 =?us-ascii?Q?QnTFoUqFvLa6L+baUHCK0WcFfp12BuvsJKLQ2ETGvoiK+LIOpMfMFpTdRRLe?=
 =?us-ascii?Q?OAb2/+dVGjYLBrZciPN4IrGFTJyjMgWXx3a8S3RtU6qMBXQZ1FN+Z+xgJXxu?=
 =?us-ascii?Q?l2NWDcty1xQu/WaoDJE1nnEGVGYsZPqKhacvX7tUrg609LwMVXKfQLTZtMX6?=
 =?us-ascii?Q?JM5xR8YsL32HNJJiNYPAlGbz6CxkBC6rhuelW7rnfk+rszZQ5GA/vl2gWb0q?=
 =?us-ascii?Q?bu1VnzWD6TowPNuJ78MU74BRFzeqzsh+7hvX4JGVKqvgB/2PeazIYIPIhTML?=
 =?us-ascii?Q?BhSPESzPNegegFLo0ysiyUFrU2gODe2MuIl+GHqrVOnyPBGfT7CcNTckh2xE?=
 =?us-ascii?Q?+U61apru6PCQgvdu2ugkMU4Ve7/7+LQiOpjoOnTtwpLhAqTYrzHiwgko7aB0?=
 =?us-ascii?Q?bp9hp8IMamMtF58WE/lMOnuNfsMBwCM8SNRpTgH8rmgpYfdLKjVlE2OtW6LZ?=
 =?us-ascii?Q?aZYRy9BbHJ6fbrcKVQfNvZfKKnZZhXXmF1CLAaB7P+S+Dp4lbbeRUAGpxbjd?=
 =?us-ascii?Q?IefyopjCaySmT0h7uIccGCPO9ZzSYC/W9w2RZ+CLBXShXhadScQg2RRug+kR?=
 =?us-ascii?Q?c8bAu/zf0rdLw2cnwSmBlmz/0fpe/sJL09hSmh728gspqC1V3wL249pmmLcj?=
 =?us-ascii?Q?4xV0oXFhLfJj4gW7lSX3titfkGTcdWLtl0eesBWmg9di4GLVvJB+CVNHfTdH?=
 =?us-ascii?Q?ih8PgXn8HwLmDj98Z7112q2TmQtD3nMTOmQlu6H/Y/nqjx9QZhBr1JF39gWg?=
 =?us-ascii?Q?/3hCBukQtP057B8bB1CuqUhp8Q+C5Nrm2+LYV80R9TAnK4m6JfctblxfMGDP?=
 =?us-ascii?Q?DQ7ftKLFhauS7NJSLJEMFnhYgZOVCwumambgJ1lgrh3yfuhjKBOlyEGXOsjQ?=
 =?us-ascii?Q?XN9DaZ0N3kl72YRzD6DUgOjXNMUQT+p+NF+j8Kl113fbsLyyiCTS+dr+OYmN?=
 =?us-ascii?Q?uI0e9xFOHDCbrRV6KWJJ6pYFkzUbyEWcS8r5DIqk6Z1Nul2uKSBgMrUqVWh6?=
 =?us-ascii?Q?o4AMur3TL6py6BxbktkfHzhpwdJYOiCwoizR7pJm+oOoifv90uQL9qiAr5lq?=
 =?us-ascii?Q?ZZEgCvpArdAaZvTHLoDNEvEEBOfKotAB5Ok7M2CEo8VtU6udeGyzuz0oqWvO?=
 =?us-ascii?Q?NBHkFnBMty+4sawu64vf8iJ1GRjrg5z984NQZ6GrjYO9x7QjiRUga0wVLH5r?=
 =?us-ascii?Q?5kU7zv4HnFqRtS5U9DCthyk7iGgfu7dsvrGEeslo5/XXF5unfIVaWdOviZ0L?=
 =?us-ascii?Q?BhOBz11lecwGxB37BKYE6NCOij2pa8jGj7BpNHgQ0zN2rD/sTYdDmUZ404j1?=
 =?us-ascii?Q?pNsE1PVYsHTtKDNc1R0k1iA2JBVCnk/8wxuocHK6cFoT2UDuGqyyoSzkUis5?=
 =?us-ascii?Q?ZfNq2kdOSR66th70/jIMJzxds4NBff0MeNFeLqFtUUP6QAgX9bMKGEPV3G0L?=
 =?us-ascii?Q?6JSYkE5fajv2pJtPbl0UtBYSqWuwQ/0CqVdPVeTVuSQZGtJioUo8D+qOcYZe?=
 =?us-ascii?Q?GRWtjulsK8XdohXI5E3ykEcczBnalQbn/LZgcCxIWjC++LnrekYswL7NPZuM?=
 =?us-ascii?Q?8Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 31c501b8-0d4a-4d6f-b366-08dc5e2fca32
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2024 16:10:53.3918 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pYmBjq+/15wp5aTN8EVleOH4rNbVvw8wdiJKQcCI7/m6Jf6f/q9dGzOCKxZOqMBOcojfRjRqS6oZu+o9N82NGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4915
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

On Tue, Apr 09, 2024 at 03:26:46PM +0300, Jani Nikula wrote:
> Add generic __to_intel_display() macro that accepts either struct
> xe_device * or struct intel_display *. This is to be used for
> transitional stuff that eventually needs to be converted to use struct
> intel_display *, and therefore is not part of to_intel_display().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index 2792a497257e..4448eda8b2a4 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -29,6 +29,17 @@
>  #include "intel_runtime_pm.h"
>  #include <linux/pm_runtime.h>
>  
> +/*
> + * Transitional macro to optionally convert struct xe_device * to struct
> + * intel_display *, also accepting the latter.
> + */
> +#define __to_intel_display(p)						\
> +	_Generic(p,							\
> +		 const struct xe_device *: (&((const struct xe_device *)(p))->display), \
> +		 struct xe_device *: (&((struct xe_device *)(p))->display), \
> +		 const struct intel_display *: (p),			\
> +		 struct intel_display *: (p))

hmmm... I thought that with our make magic we didn't need this.
but well, at least more awareness and trying to get rid of the make magic
earlier?

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +
>  static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>  {
>  	return container_of(dev, struct drm_i915_private, drm);
> -- 
> 2.39.2
> 
