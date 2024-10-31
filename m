Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7489B8307
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 20:05:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3522610E915;
	Thu, 31 Oct 2024 19:05:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hNKzV0pS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53E1F10E910;
 Thu, 31 Oct 2024 19:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730401514; x=1761937514;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Wf2iJiJAeRrMpJngH3oCg+ITkQWEa/x2PUssm8DIzEY=;
 b=hNKzV0pS3kkJLhoLVxwiz/qUTGf6cp2k1jDtQ/JUswp1PZepF04L0IqQ
 c1si9X85zcukbeyc4+lqoXTQ74RnM02l66v1fhoF/a/DJDJ9CDEmN9sEF
 Cs1oLG+04zy7CGjT3uXGTNFBVEV7dkjXAE0XozWo3YyRbiDpiSuiPn+FI
 o/RjlGrkbu4neR44R7dFR7XHSIr4N8YSmnMyWhGxIs+ZFYE9ynxELv/wt
 vUq/4brJJEfEo+1knzoDyMga0RiEVM63kjt3IuHDtZDCafwoqvtpSTdg6
 6AB5iAtH9qXbCrxwb3uyWElt/M+Sanfr5bSyGErrACP/Zs4sktSPSHD2p A==;
X-CSE-ConnectionGUID: c2NVCKvLQNqgqu0+/rWO0g==
X-CSE-MsgGUID: yzMj5uYVReaoFDwYBf+hAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29932707"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29932707"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 12:05:10 -0700
X-CSE-ConnectionGUID: uxuACNQ8R1i/QXvgEJCuyg==
X-CSE-MsgGUID: 2hWvujWLTdubCVKVSuwikQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82825687"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2024 12:05:04 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 31 Oct 2024 12:05:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 31 Oct 2024 12:05:04 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 31 Oct 2024 12:05:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Al6KD4QJZust8fYga0aYg5eqMhGJR3Capkvu0v4OaaNzXHeOGhwFTJhz+jell0U1Tf8MkEkQgliG1WLOePVvQ0G54jf98AXFSEDJAoGqA/sNj4IPMToVN4akeyv4ydd/bBpCMSXZ6mUorlpO3n4dcGfA6Tj/Bd/ucg3BvsKQQ+pHNaoTmh94dZ+KWXgJzdjfoCLU3SY7O2RZLFn9GRDduED+PC6fWx6tSFXxucWxzhZ35KPf0NMpRlcLrh1hxPVntw8EqlBsoIUfRRgddPRMIPg05yQhFedK57f3FC2vW0K2Im0VZq+y5RH01tUGhHkW+zUW8elS4lhOs2v5nDjggA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DKSsb5EnCK1ryc8AdTbVBJKc26cN+LWoYZ6Q5gtiq9s=;
 b=iYzmyJQoSoab4pwFTbmxvAjFca63lBHViKAx1ZqUFtC9kOIFyfNhgKR8jB20/EJq/13qpqAVl6AbbXHm+rdM/P7WB1vvAIQqmhcDhKeszoBaU0t322sE90pvk5d7AFEnExlE471XIfo19VUhP+MSV8OXd/XLWwTZhIh+0xbo1C0oC0bu4ikJLsNpWwYrsZgsqsnT4PtVRYSw+JlP97H5q9IYDUYr5iE5fJMStIN9qXhE4uhbfkJ5PyVYENbYexmUSylSa2zhM+f45+12MWwCT6Li9UaYTC1A6mrJJSzOpr5/+kA96e8KbGYug2idl86xB1cEoGB7UgzFZf+YL8W2ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by SA0PR11MB4608.namprd11.prod.outlook.com (2603:10b6:806:94::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.20; Thu, 31 Oct
 2024 19:04:56 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb%5]) with mapi id 15.20.8114.015; Thu, 31 Oct 2024
 19:04:56 +0000
Date: Thu, 31 Oct 2024 12:04:53 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
CC: "I915-ci-infra@lists.freedesktop.org"
 <I915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_drm=2Fi915=3A_Implemen?= =?utf-8?Q?t?= Dbuf overlap
 detection feature starting from LNL (rev7)
Message-ID: <20241031190453.GI4891@mdroper-desk1.amr.corp.intel.com>
References: <20241030103319.207235-1-vinod.govindapillai@intel.com>
 <173034089835.1364824.11441828445210193667@2413ebb6fbb6>
 <0965da202e1cb8d59a442a0cd7fcd39388eb391d.camel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0965da202e1cb8d59a442a0cd7fcd39388eb391d.camel@intel.com>
X-ClientProxiedBy: SJ0PR05CA0198.namprd05.prod.outlook.com
 (2603:10b6:a03:330::23) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|SA0PR11MB4608:EE_
X-MS-Office365-Filtering-Correlation-Id: 3de27175-417f-4979-4cf6-08dcf9dee882
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dPbB7yQ19Ocwj4wVAkRKv6JGAXFoQx/4x9wmNJCaalzH65EsCg3XdiJKIBLl?=
 =?us-ascii?Q?yBE6xlNdJlaftn7XFXH54uTWjLWUNr2qoYdq4MEspYrIQbU1w5SGLEqRRzaO?=
 =?us-ascii?Q?4NI4iQ24jjz6WVqTcShkffjQ52vBN7asX8QdnSvcv1A6B7If6KoxgC1HAc9v?=
 =?us-ascii?Q?Lg+RKFiu5bvbYWauXV4SiJDW4iXA71w9DZS509y5F2NFNYNbM85tPRuc9gms?=
 =?us-ascii?Q?/Y3y2wkhXmGdYujpe5lG4UAT8u3Sc142AR9ULPn4kGaqxoIp3vz0YMAjQ+Qz?=
 =?us-ascii?Q?GvJt2vb7txowXhwub7kNu5nNYq98ziKOdDa6Uu+X0sP3jcD0Jd8fUhTXoNvB?=
 =?us-ascii?Q?16qc2lb+L326wTGXuxYRQJXxAAGQ0h+Px86rCmdh06nlCY+s45nZMLwNOjUG?=
 =?us-ascii?Q?N1af6Ih3a0texnUfS6HEOvXI5zU6SsPLwpOvIGRNJrDCNViJatEhVY//7aJj?=
 =?us-ascii?Q?p8QKffTFaHpvKLQK+5LKy+ILU6mhemg4BBH9r/I+6z7OfMIED6UVbr1HSeM4?=
 =?us-ascii?Q?cyxO24vma53PxpR7gmchL1ET1ptz/IzLSUKsAS10V6ZBsmHlSJUVgmgW3jmf?=
 =?us-ascii?Q?FxH9wTkbRixHS9NO7C3tixLbvi/S90q+OgrMeMaDh6dhCoW1zXjbdWMUB/Ut?=
 =?us-ascii?Q?k6Zl7O9EKkapBGRPd6Ujq91Co56cztDX1e0d21HUuvfaPB07H0nTsyuIqBfZ?=
 =?us-ascii?Q?hUKEzAugJsF1QVY32x1UkdCb4B9sILlal1PV603wSj6HorL2+wxuME1uaxhu?=
 =?us-ascii?Q?zFmdEyBgbNilrfm0nbhYcc+BeggCnro2RXp+fzWjO3WFm5RFI4r7cB+tLmes?=
 =?us-ascii?Q?XuhSIPp9m80noCq547ORlWHqFiGSl888P1bb+eSI04JHMYArA3/qZRA2bcMn?=
 =?us-ascii?Q?PvfSjl/Dj0GouQcDpIs40wM8wJqOSZ44RpfHDS06/rUAeWemmuwhlNemvh8A?=
 =?us-ascii?Q?2SH0bRpkWpKX9uwFEV+9LmG3f7h/Jm+wT8iFmYssCZqxspejtuzP99qSIT6K?=
 =?us-ascii?Q?UwJ+uIVU3xsPl66f1AQxmb061nP9JycsNypVaR1Ck72RVq+sUve2DwblNztG?=
 =?us-ascii?Q?4/oL6WbBSupme9RvCkj57FMlDPM/6nH+iRZlUU2VXer5n6dg5uNOJP3ug1Tm?=
 =?us-ascii?Q?ExvLYliMFroYkcmlCJtPmJhIu/gn/DcKQeVSJ6sZlxPNDvVl08rf3bE6Hx2K?=
 =?us-ascii?Q?znZKC7fjmUH59xRBTp36zrO7LpZVkdzvuM9UzbHNVof5TyxZ6eYh/dVvvQ5H?=
 =?us-ascii?Q?GZ9ra5N+bsxY+5T9berg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NCc/J50LmZH+Vj5pr5/oN/3ZI/LSOySaM8C3yVGiQAdjUSddgQ9FIULmkcBH?=
 =?us-ascii?Q?FfB20sim7qVZ+vbCEc6DiM6zh/vmkYvAG1yUEZgbgcUjIfns/kxwuUxQkR6+?=
 =?us-ascii?Q?hA4rGMUS/fjO3/fOT0d7v4iwkHW5yBtr1rqc79GQYeq3YhlX0/ci4IBuURRE?=
 =?us-ascii?Q?JjS8vvCPgbl1tTHMAgdmzzi4tYsEG05QAtzUU/QWf8+Jc/3foL9LsVEHOmS+?=
 =?us-ascii?Q?PsbFYHAmluDjoQnDljGQQmbfAK6kVl72tgXq36cmYsA1Uirf0tiZ5YJAf6iS?=
 =?us-ascii?Q?c0q5Nu5wmmEkoKT4ayw+E6/MtFOfM5YT212er6JZfegA1fWTL1dSQdFkqKSW?=
 =?us-ascii?Q?UKH9cP38Ch2M4CxmQ3ibCndPYITc6LBPQhQIkbaF6fXxTHlMd7B/7e5u7bf7?=
 =?us-ascii?Q?NsJzA586AxmV86IUYMmItSEbiGB7yp0OwMafH2vlt7jXwK0SA4dcxICVVIRR?=
 =?us-ascii?Q?suzKfWjFUdtzNNp0T+Nhm++dsOW0qv5ONW1GzSOXGDhHhoZkhWwrFT5jHiGn?=
 =?us-ascii?Q?YWdpNEVKDWmk/Dlh7cqnhwEY3ntwve1BMEWSImjzs7Immw/lG5jBkKVwaU80?=
 =?us-ascii?Q?SQeFnLy1J8YmevGmEBw7UZdvrGDVfVVZzWLtdYa6bYyWwLh2Rn7tsJOFwSPO?=
 =?us-ascii?Q?XcsLxY21N16hJWEmL4FgcfZb/yuwu3G24JriQlqY7eZRInxAHFtr5qMIMaWL?=
 =?us-ascii?Q?O6o8ChQ1LPrml25r5XL8HkGhNCN5RrypIW5rtxoMeqIbRK4vibAK/NsCe5SH?=
 =?us-ascii?Q?SF9vfhzXwmeUZA86Fhp0jNmQN7Xqbv++q1JJpNc3GeT/98m+zON53680npUM?=
 =?us-ascii?Q?4DL8LAXtBedspTXHIdBtoYeEt5n7GYYnTqdzbfaRIyjUxM9egM0FJ2JDZBai?=
 =?us-ascii?Q?DoqjX+q/hBgIqfevdrEUSu/RkUw3HAbP69v9ACxPIuFh3YV3s4fZZ8dFM5cp?=
 =?us-ascii?Q?gpIUBNxSP//2psiKhTPgBhyGdxgegYIsR/LWh7SrmalyXY/iB/o9We/6/SXX?=
 =?us-ascii?Q?JNZ9KJjwIsn34BC9SCL9dCTmPpgxtLcg3QKhIOGrzSPFAQQ/sbgEIDWIEhEy?=
 =?us-ascii?Q?M5HngCtpQh3nBAENn1phhM3BDwRdMHcI37an35HXjHGlu5nEWKX+6RV/vOml?=
 =?us-ascii?Q?LJntGqHNCLWznN+1RrrlEg63aN0F/NciATkUCjuee4SZK/WiA4XDUGCgCuTB?=
 =?us-ascii?Q?MA8bBQ5T6KcQPCcs0KCZp6MWOGiUB3GRy5zuh3zHGb0iRQ3hyfgV/5c++YsR?=
 =?us-ascii?Q?lftREQYQalq3MKn/IRARRkoYquJpfA8S7pUyLtgATUXK3Ih7OISZonq6MbX/?=
 =?us-ascii?Q?gGawDpH1LBdZs6MsHRSpZLiRZGPfTJFz1ExxmHvEG9XZkd78/DJd7ALs5Z4k?=
 =?us-ascii?Q?K7fr4XKCZ7bsLsHj4gyuadFr6Y4IwswNt6yubl2yXVhC2vb0T+2cH/51bLn8?=
 =?us-ascii?Q?bDBsd+gi+ZGE8AQm75ad6tcZ6WarLyf+oRQ46m5MMRV7NBz+biF60Be3EadI?=
 =?us-ascii?Q?cFFZSfJJxcTkJXXBvw++iD1VsvzAAACxrTpN4UYJb+BnoqIXE8wUhDGaNBPG?=
 =?us-ascii?Q?9YVoCZeQdOMTUpf82JxY9GeUAFMM+iNu4QuI3sIIbKDJOrsy5ws1k6djyyab?=
 =?us-ascii?Q?kQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3de27175-417f-4979-4cf6-08dcf9dee882
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2024 19:04:56.1615 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v4vepzNySelciRsQ1+aDOxNfXW7uBAax/PeHzr5pvWT1NJ+F3TKM4R+4MWiRgbl6BGKBSyqhzpMmV3Uy5bP6dJ5guIDs/l94w+gk0zoNX94=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4608
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

On Thu, Oct 31, 2024 at 09:55:20AM +0000, Govindapillai, Vinod wrote:
> The reported regressions and warnings are not related to this patch.
> 
> So could merge this once this patch is RB-ed

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
> BR
> Vinod
> 
> On Thu, 2024-10-31 at 02:14 +0000, Patchwork wrote:
> Patch Details
> Series: drm/i915: Implement Dbuf overlap detection feature starting from LNL (rev7)
> URL:    https://patchwork.freedesktop.org/series/136884/
> State:  failure
> Details:        https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/index.html
> CI Bug Log - changes from CI_DRM_15610_full -> Patchwork_136884v7_full
> Summary
> 
> FAILURE
> 
> Serious unknown changes coming with Patchwork_136884v7_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_136884v7_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/index.html
> 
> Participating hosts (10 -> 9)
> 
> Missing (1): shard-glk-0
> 
> Possible new issues
> 
> Here are the unknown changes that may have been introduced in Patchwork_136884v7_full:
> 
> IGT changes
> Possible regressions
> 
>   *   igt@gem_exec_suspend@basic-s0@lmem0:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html> -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@gem_exec_suspend@basic-s0@lmem0.html>
>   *   igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs:
> 
>      *   shard-tglu: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-4/igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs.html> -> ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-6/igt@kms_atomic_transition@modeset-transition-nonblocking@1x-outputs.html> +1 other test abort
> 
> Warnings
> 
>   *   igt@kms_flip@2x-blocking-wf_vblank:
>      *   shard-glk: INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk7/igt@kms_flip@2x-blocking-wf_vblank.html> ([i915#1982]) -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank.html>
> 
> Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   *   igt@kms_async_flips@crc@pipe-a-dp-3:
>      *   {shard-dg2-9}: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-9/igt@kms_async_flips@crc@pipe-a-dp-3.html> +3 other tests fail
> 
> Known issues
> 
> Here are the changes found in Patchwork_136884v7_full that come from known issues:
> 
> IGT changes
> Issues hit
> 
>   *   igt@api_intel_bb@crc32:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@api_intel_bb@crc32.html> ([i915#6230])
>   *   igt@device_reset@unbind-cold-reset-rebind:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@device_reset@unbind-cold-reset-rebind.html> ([i915#11078]) +1 other test skip
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html> ([i915#11078])
>   *   igt@fbdev@pan:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@fbdev@pan.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@fbdev@pan.html> ([i915#2582])
>   *   igt@gem_basic@multigpu-create-close:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_basic@multigpu-create-close.html> ([i915#7697])
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_basic@multigpu-create-close.html> ([i915#7697])
>   *   igt@gem_ccs@block-copy-compressed:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html> ([i915#3555] / [i915#9323])
>   *   igt@gem_ccs@ctrl-surf-copy:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy.html> ([i915#3555] / [i915#9323])
>   *   igt@gem_ccs@suspend-resume:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_ccs@suspend-resume.html> ([i915#9323])
>   *   igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html> -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html> ([i915#7297])
>   *   igt@gem_create@create-ext-cpu-access-sanity-check:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@gem_create@create-ext-cpu-access-sanity-check.html> ([i915#6335])
>   *   igt@gem_create@create-ext-set-pat:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_create@create-ext-set-pat.html> ([i915#8562])
>   *   igt@gem_ctx_persistence@hang:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_ctx_persistence@hang.html> ([i915#8555])
>   *   igt@gem_ctx_persistence@hostile:
> 
>      *   shard-rkl: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_ctx_persistence@hostile.html> ([i915#11980] / [i915#12580])
>   *   igt@gem_ctx_sseu@invalid-sseu:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html> ([i915#280])
>   *   igt@gem_ctx_sseu@mmap-args:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_ctx_sseu@mmap-args.html> ([i915#280]) +1 other test skip
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_ctx_sseu@mmap-args.html> ([i915#280])
>   *   igt@gem_eio@unwedge-stress:
> 
>      *   shard-dg1: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@gem_eio@unwedge-stress.html> ([i915#5784])
>   *   igt@gem_exec_balancer@bonded-sync:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_exec_balancer@bonded-sync.html> ([i915#4771])
>   *   igt@gem_exec_balancer@nop:
> 
>      *   shard-mtlp: NOTRUN -> DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_exec_balancer@nop.html> ([i915#12412])
>   *   igt@gem_exec_balancer@parallel-balancer:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@gem_exec_balancer@parallel-balancer.html> ([i915#4525]) +1 other test skip
>   *   igt@gem_exec_balancer@parallel-ordering:
> 
>      *   shard-tglu-1: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_exec_balancer@parallel-ordering.html> ([i915#6117])
>   *   igt@gem_exec_big@single:
> 
>      *   shard-tglu: NOTRUN -> ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@gem_exec_big@single.html> ([i915#11713])
>   *   igt@gem_exec_capture@capture-invisible@lmem0:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html> ([i915#6334]) +2 other tests skip
>   *   igt@gem_exec_fair@basic-deadline:
> 
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-7/igt@gem_exec_fair@basic-deadline.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html> ([i915#2846])
>   *   igt@gem_exec_fair@basic-none-vip:
> 
>      *   shard-glk: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@gem_exec_fair@basic-none-vip.html> ([i915#2842]) +1 other test fail
>   *   igt@gem_exec_fair@basic-none-vip@rcs0:
> 
>      *   shard-rkl: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@gem_exec_fair@basic-none-vip@rcs0.html> ([i915#2842]) +1 other test fail
>   *   igt@gem_exec_fair@basic-pace@vecs0:
> 
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-2/igt@gem_exec_fair@basic-pace@vecs0.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html> ([i915#2842]) +1 other test fail
>   *   igt@gem_exec_fence@submit67:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_exec_fence@submit67.html> ([i915#4812])
>   *   igt@gem_exec_flush@basic-uc-prw-default:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_exec_flush@basic-uc-prw-default.html> ([i915#3539]) +1 other test skip
>   *   igt@gem_exec_flush@basic-uc-rw-default:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@gem_exec_flush@basic-uc-rw-default.html> ([i915#3539] / [i915#4852]) +1 other test skip
>   *   igt@gem_exec_params@rsvd2-dirt:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_exec_params@rsvd2-dirt.html> ([i915#5107])
>   *   igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html> ([i915#3281]) +4 other tests skip
>   *   igt@gem_exec_reloc@basic-write-read-noreloc:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html> ([i915#3281]) +13 other tests skip
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@gem_exec_reloc@basic-write-read-noreloc.html> ([i915#3281])
>   *   igt@gem_exec_reloc@basic-write-wc-active:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_exec_reloc@basic-write-wc-active.html> ([i915#3281]) +4 other tests skip
>   *   igt@gem_exec_schedule@preempt-queue-chain:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_exec_schedule@preempt-queue-chain.html> ([i915#4537] / [i915#4812])
>   *   igt@gem_exec_suspend@basic-s0:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@gem_exec_suspend@basic-s0.html> -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@gem_exec_suspend@basic-s0.html> ([i915#11441])
>   *   igt@gem_exec_suspend@basic-s4-devices:
> 
>      *   shard-rkl: NOTRUN -> ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@gem_exec_suspend@basic-s4-devices.html> ([i915#7975] / [i915#8213]) +1 other test abort
>   *   igt@gem_huc_copy@huc-copy:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@gem_huc_copy@huc-copy.html> ([i915#2190])
>   *   igt@gem_lmem_evict@dontneed-evict-race:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html> ([i915#4613] / [i915#7582])
>   *   igt@gem_lmem_swapping@heavy-verify-multi-ccs:
> 
>      *   shard-glk: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html> ([i915#4613])
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html> ([i915#4613]) +1 other test skip
>   *   igt@gem_lmem_swapping@parallel-multi:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_lmem_swapping@parallel-multi.html> ([i915#4613]) +6 other tests skip
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_lmem_swapping@parallel-multi.html> ([i915#4613]) +1 other test skip
>   *   igt@gem_lmem_swapping@verify-ccs:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_lmem_swapping@verify-ccs.html> ([i915#4613]) +1 other test skip
>   *   igt@gem_media_vme:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_media_vme.html> ([i915#284])
>   *   igt@gem_mmap_wc@bad-offset:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_mmap_wc@bad-offset.html> ([i915#4083]) +1 other test skip
>   *   igt@gem_mmap_wc@write-wc-read-gtt:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_mmap_wc@write-wc-read-gtt.html> ([i915#4083]) +2 other tests skip
>   *   igt@gem_partial_pwrite_pread@writes-after-reads:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads.html> ([i915#3282]) +11 other tests skip
>   *   igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html> ([i915#3282])
>   *   igt@gem_pwrite@basic-exhaustion:
> 
>      *   shard-tglu-1: NOTRUN -> WARN<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html> ([i915#2658])
>   *   igt@gem_pwrite@basic-self:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_pwrite@basic-self.html> ([i915#3282]) +3 other tests skip
>   *   igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html> ([i915#4270]) +2 other tests skip
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html> ([i915#4270]) +5 other tests skip
>   *   igt@gem_pxp@fail-invalid-protected-context:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_pxp@fail-invalid-protected-context.html> ([i915#4270])
>   *   igt@gem_pxp@protected-raw-src-copy-not-readible:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_pxp@protected-raw-src-copy-not-readible.html> ([i915#4270]) +2 other tests skip
>   *   igt@gem_pxp@verify-pxp-stale-buf-execution:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_pxp@verify-pxp-stale-buf-execution.html> ([i915#4270])
>   *   igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html> ([i915#8428])
>   *   igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html> ([i915#5190] / [i915#8428]) +1 other test skip
>   *   igt@gem_render_tiled_blits@basic:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@gem_render_tiled_blits@basic.html> ([i915#4079])
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@gem_render_tiled_blits@basic.html> ([i915#4079])
>   *   igt@gem_set_tiling_vs_blt@tiled-to-untiled:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html> ([i915#8411]) +4 other tests skip
>   *   igt@gem_set_tiling_vs_pwrite:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@gem_set_tiling_vs_pwrite.html> ([i915#4079])
>   *   igt@gem_tiled_swapping@non-threaded:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_tiled_swapping@non-threaded.html> ([i915#4077]) +9 other tests skip
>   *   igt@gem_userptr_blits@create-destroy-unsync:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gem_userptr_blits@create-destroy-unsync.html> ([i915#3297]) +2 other tests skip
>   *   igt@gem_userptr_blits@dmabuf-unsync:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gem_userptr_blits@dmabuf-unsync.html> ([i915#3297]) +4 other tests skip
>   *   igt@gem_userptr_blits@invalid-mmap-offset-unsync:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html> ([i915#3297]) +1 other test skip
>   *   igt@gem_userptr_blits@relocations:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@gem_userptr_blits@relocations.html> ([i915#3281] / [i915#3297])
>   *   igt@gem_userptr_blits@unsync-overlap:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_userptr_blits@unsync-overlap.html> ([i915#3297]) +1 other test skip
>   *   igt@gem_userptr_blits@unsync-unmap-cycles:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-cycles.html> ([i915#3297])
>   *   igt@gen9_exec_parse@allowed-all:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@gen9_exec_parse@allowed-all.html> ([i915#2856]) +1 other test skip
>      *   shard-glk: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk8/igt@gen9_exec_parse@allowed-all.html> -> ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk3/igt@gen9_exec_parse@allowed-all.html> ([i915#12375] / [i915#5566])
>   *   igt@gen9_exec_parse@batch-without-end:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@gen9_exec_parse@batch-without-end.html> ([i915#2527] / [i915#2856]) +2 other tests skip
>   *   igt@gen9_exec_parse@batch-zero-length:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@gen9_exec_parse@batch-zero-length.html> ([i915#2527] / [i915#2856]) +1 other test skip
>   *   igt@gen9_exec_parse@bb-oversize:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@gen9_exec_parse@bb-oversize.html> ([i915#2527]) +3 other tests skip
>   *   igt@gen9_exec_parse@bb-start-out:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gen9_exec_parse@bb-start-out.html> ([i915#2856])
>   *   igt@i915_module_load@load:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@i915_module_load@load.html> ([i915#6227])
>   *   igt@i915_pm_freq_api@freq-suspend:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@i915_pm_freq_api@freq-suspend.html> ([i915#8399]) +1 other test skip
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@i915_pm_freq_api@freq-suspend.html> ([i915#8399])
>   *   igt@i915_pm_freq_mult@media-freq@gt1:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@i915_pm_freq_mult@media-freq@gt1.html> ([i915#6590]) +2 other tests skip
>   *   igt@i915_selftest@live:
> 
>      *   shard-mtlp: NOTRUN -> ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-1/igt@i915_selftest@live.html> ([i915#12133] / [i915#12216])
>   *   igt@i915_selftest@live@workarounds:
> 
>      *   shard-mtlp: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-2/igt@i915_selftest@live@workarounds.html> -> ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-1/igt@i915_selftest@live@workarounds.html> ([i915#12216])
>   *   igt@i915_selftest@mock@memory_region:
> 
>      *   shard-dg2: NOTRUN -> DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-7/igt@i915_selftest@mock@memory_region.html> ([i915#9311]) +1 other test dmesg-warn
>      *   shard-dg1: NOTRUN -> DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@i915_selftest@mock@memory_region.html> ([i915#9311]) +1 other test dmesg-warn
>   *   igt@i915_suspend@fence-restore-untiled:
> 
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@i915_suspend@fence-restore-untiled.html> ([i915#4077])
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-4/igt@i915_suspend@fence-restore-untiled.html> ([i915#4077]) +3 other tests skip
>   *   igt@intel_hwmon@hwmon-read:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@intel_hwmon@hwmon-read.html> ([i915#7707])
>   *   igt@kms_addfb_basic@framebuffer-vs-set-tiling:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html> ([i915#4212])
>   *   igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html> ([i915#8709]) +3 other tests skip
>   *   igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc-ccs:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc-ccs.html> ([i915#8709]) +7 other tests skip
>   *   igt@kms_atomic@plane-primary-overlay-mutable-zpos:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> ([i915#9531])
>   *   igt@kms_atomic_transition@plane-all-modeset-transition:
> 
>      *   shard-dg1: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition.html> ([i915#5956])
>   *   igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html> ([i915#1769] / [i915#3555])
>   *   igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html> ([i915#1769] / [i915#3555])
>   *   igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:
> 
>      *   shard-dg1: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html> ([i915#5956])
>   *   igt@kms_big_fb@4-tiled-16bpp-rotate-90:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html> ([i915#5286]) +3 other tests skip
>   *   igt@kms_big_fb@4-tiled-32bpp-rotate-0:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html> ([i915#5286]) +7 other tests skip
>   *   igt@kms_big_fb@4-tiled-32bpp-rotate-90:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html> ([i915#5286]) +1 other test skip
>   *   igt@kms_big_fb@linear-32bpp-rotate-90:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html> ([i915#3638]) +6 other tests skip
>   *   igt@kms_big_fb@y-tiled-64bpp-rotate-0:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html> ([i915#5190] / [i915#9197]) +6 other tests skip
>   *   igt@kms_big_fb@y-tiled-8bpp-rotate-180:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html> ([i915#4538] / [i915#5190]) +2 other tests skip
>   *   igt@kms_big_fb@y-tiled-addfb:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_big_fb@y-tiled-addfb.html> ([i915#6187])
>   *   igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html> +24 other tests skip
>   *   igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
> 
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html> ([i915#6095]) +67 other tests skip
>   *   igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html> ([i915#6095]) +14 other tests skip
>   *   igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html> ([i915#10307] / [i915#6095]) +140 other tests skip
>   *   igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html> ([i915#12313]) +1 other test skip
>   *   igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html> ([i915#6095]) +49 other tests skip
>   *   igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html> ([i915#6095]) +80 other tests skip
>   *   igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
> 
>      *   shard-glk: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html> +94 other tests skip
>   *   igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1.html> ([i915#6095]) +19 other tests skip
>   *   igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html> ([i915#12313])
>   *   igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html> ([i915#12313]) +5 other tests skip
>   *   igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html> ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
>   *   igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html> ([i915#12313]) +1 other test skip
>   *   igt@kms_cdclk@mode-transition@pipe-b-dp-3:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_cdclk@mode-transition@pipe-b-dp-3.html> ([i915#11616] / [i915#7213]) +3 other tests skip
>   *   igt@kms_cdclk@mode-transition@pipe-b-edp-1:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_cdclk@mode-transition@pipe-b-edp-1.html> ([i915#7213] / [i915#9010]) +4 other tests skip
>   *   igt@kms_chamelium_edid@hdmi-edid-read:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-read.html> ([i915#7828]) +8 other tests skip
>   *   igt@kms_chamelium_edid@hdmi-mode-timings:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_chamelium_edid@hdmi-mode-timings.html> ([i915#7828]) +2 other tests skip
>   *   igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html> ([i915#7828]) +2 other tests skip
>   *   igt@kms_chamelium_frames@hdmi-frame-dump:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_chamelium_frames@hdmi-frame-dump.html> ([i915#7828]) +12 other tests skip
>   *   igt@kms_chamelium_hpd@dp-hpd-storm:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_chamelium_hpd@dp-hpd-storm.html> ([i915#7828]) +2 other tests skip
>   *   igt@kms_color@ctm-0-25:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_color@ctm-0-25.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_color@ctm-0-25.html> ([i915#12655])
>   *   igt@kms_color@ctm-blue-to-red:
> 
>      *   shard-dg1: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-16/igt@kms_color@ctm-blue-to-red.html> -> DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_color@ctm-blue-to-red.html> ([i915#4423]) +1 other test dmesg-warn
>   *   igt@kms_color@legacy-gamma:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_color@legacy-gamma.html> ([i915#12655])
>   *   igt@kms_content_protection@atomic-dpms:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_content_protection@atomic-dpms.html> ([i915#7118] / [i915#9424])
>   *   igt@kms_content_protection@atomic-dpms@pipe-a-dp-3:
> 
>      *   shard-dg2: NOTRUN -> TIMEOUT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_content_protection@atomic-dpms@pipe-a-dp-3.html> ([i915#7173])
>   *   igt@kms_content_protection@dp-mst-lic-type-1:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-1.html> ([i915#3299])
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-1.html> ([i915#3116])
>   *   igt@kms_content_protection@lic-type-0:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_content_protection@lic-type-0.html> ([i915#9424])
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_content_protection@lic-type-0.html> ([i915#9424]) +1 other test skip
>   *   igt@kms_content_protection@lic-type-1:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_content_protection@lic-type-1.html> ([i915#6944] / [i915#9424])
>   *   igt@kms_content_protection@mei-interface:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_content_protection@mei-interface.html> ([i915#8063])
>   *   igt@kms_content_protection@type1:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-11/igt@kms_content_protection@type1.html> ([i915#7118] / [i915#9424])
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_content_protection@type1.html> ([i915#3555] / [i915#6944] / [i915#9424])
>   *   igt@kms_cursor_crc@cursor-offscreen-512x512:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html> ([i915#11453] / [i915#3359])
>   *   igt@kms_cursor_crc@cursor-offscreen-64x64:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-64x64.html> ([i915#9197]) +32 other tests skip
>   *   igt@kms_cursor_crc@cursor-onscreen-max-size:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-max-size.html> ([i915#3555]) +8 other tests skip
>   *   igt@kms_cursor_crc@cursor-rapid-movement-32x32:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html> ([i915#3555] / [i915#8814]) +1 other test skip
>   *   igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html> +40 other tests skip
>   *   igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html> ([i915#4103]) +1 other test skip
>   *   igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html> +57 other tests skip
>   *   igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>      *   shard-glk: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html> ([i915#2346])
>   *   igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
> 
>      *   shard-snb: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html> ([i915#2346])
>   *   igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html> ([i915#4103])
>   *   igt@kms_dsc@dsc-basic:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_dsc@dsc-basic.html> ([i915#3555] / [i915#3840]) +1 other test skip
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_dsc@dsc-basic.html> ([i915#3555] / [i915#3840]) +1 other test skip
>   *   igt@kms_dsc@dsc-fractional-bpp-with-bpc:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html> ([i915#3840])
>   *   igt@kms_dsc@dsc-with-bpc:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_dsc@dsc-with-bpc.html> ([i915#3555] / [i915#3840])
>   *   igt@kms_dsc@dsc-with-bpc-formats:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_dsc@dsc-with-bpc-formats.html> ([i915#3555] / [i915#3840])
>   *   igt@kms_dsc@dsc-with-output-formats-with-bpc:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats-with-bpc.html> ([i915#3840] / [i915#9053])
>   *   igt@kms_feature_discovery@chamelium:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_feature_discovery@chamelium.html> ([i915#4854])
>   *   igt@kms_feature_discovery@display-3x:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_feature_discovery@display-3x.html> ([i915#1839])
>   *   igt@kms_feature_discovery@dp-mst:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_feature_discovery@dp-mst.html> ([i915#9337])
>   *   igt@kms_flip@2x-blocking-wf_vblank:
> 
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@kms_flip@2x-blocking-wf_vblank.html> ([i915#9934])
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-4/igt@kms_flip@2x-blocking-wf_vblank.html> ([i915#3637]) +1 other test skip
>   *   igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html> ([i915#3637]) +1 other test skip
>   *   igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
> 
>      *   shard-snb: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html> ([i915#2122]) +1 other test fail
>   *   igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
> 
>      *   shard-snb: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html> ([i915#10826]) +1 other test fail
>   *   igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html> ([i915#3637]) +4 other tests skip
>   *   igt@kms_flip@flip-vs-absolute-wf_vblank:
> 
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank.html> ([i915#2122])
>   *   igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2:
> 
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a2.html> ([i915#11961]) +1 other test fail
>   *   igt@kms_flip@flip-vs-absolute-wf_vblank@d-hdmi-a1:
> 
>      *   shard-tglu: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-7/igt@kms_flip@flip-vs-absolute-wf_vblank@d-hdmi-a1.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-5/igt@kms_flip@flip-vs-absolute-wf_vblank@d-hdmi-a1.html> ([i915#2122]) +3 other tests fail
>   *   igt@kms_flip@flip-vs-suspend-interruptible:
> 
>      *   shard-dg2: NOTRUN -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_flip@flip-vs-suspend-interruptible.html> ([i915#4839] / [i915#6113])
>      *   shard-dg1: NOTRUN -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_flip@flip-vs-suspend-interruptible.html> ([i915#4839] / [i915#6113])
>      *   shard-mtlp: NOTRUN -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@kms_flip@flip-vs-suspend-interruptible.html> ([i915#6113]) +1 other test incomplete
>   *   igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
> 
>      *   shard-glk: NOTRUN -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html> ([i915#4839])
>   *   igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
> 
>      *   shard-snb: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html> -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html> ([i915#4839]) +1 other test incomplete
>   *   igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a3:
> 
>      *   shard-dg2: NOTRUN -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a3.html> ([i915#6113])
>   *   igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:
> 
>      *   shard-dg1: NOTRUN -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html> ([i915#6113])
>   *   igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html> ([i915#2672] / [i915#3555]) +4 other tests skip
>   *   igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html> ([i915#2672] / [i915#3555] / [i915#8813])
>   *   igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html> ([i915#2672] / [i915#8813])
>   *   igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html> ([i915#2672] / [i915#3555])
>   *   igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html> ([i915#2587] / [i915#2672] / [i915#3555])
>   *   igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html> ([i915#2587] / [i915#2672])
>   *   igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html> ([i915#2672]) +3 other tests skip
>   *   igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html> ([i915#2672]) +4 other tests skip
>   *   igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html> ([i915#3555]) +4 other tests skip
>   *   igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-upscaling.html> ([i915#3555]) +2 other tests skip
>   *   igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html> ([i915#2672] / [i915#3555] / [i915#5190])
>   *   igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html> ([i915#8708]) +2 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-pwrite.html> ([i915#5354]) +12 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html> ([i915#6880]) +1 other test fail
>   *   igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html> ([i915#5354]) +39 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html> ([i915#1825]) +7 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html> ([i915#1825]) +55 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html> ([i915#5439])
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html> ([i915#5439])
>   *   igt@kms_frontbuffer_tracking@pipe-fbc-rte:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html> ([i915#9766])
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html> ([i915#9766])
>   *   igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html> ([i915#3023]) +36 other tests skip
>   *   igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html> ([i915#8708]) +1 other test skip
>   *   igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html> ([i915#3458]) +2 other tests skip
>   *   igt@kms_hdr@bpc-switch:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_hdr@bpc-switch.html> ([i915#3555] / [i915#8228])
>   *   igt@kms_hdr@invalid-metadata-sizes:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_hdr@invalid-metadata-sizes.html> ([i915#3555] / [i915#8228]) +1 other test skip
>   *   igt@kms_hdr@static-toggle-dpms:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_hdr@static-toggle-dpms.html> ([i915#3555] / [i915#8228])
>   *   igt@kms_joiner@basic-ultra-joiner:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_joiner@basic-ultra-joiner.html> ([i915#12339])
>   *   igt@kms_joiner@invalid-modeset-force-ultra-joiner:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html> ([i915#12394])
>   *   igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html> ([i915#4070] / [i915#4816])
>   *   igt@kms_plane@pixel-format-source-clamping:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane@pixel-format-source-clamping.html> ([i915#8825])
>   *   igt@kms_plane@planar-pixel-format-settings:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane@planar-pixel-format-settings.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html> ([i915#9581])
>   *   igt@kms_plane@plane-panning-top-left:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_plane@plane-panning-top-left.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html> ([i915#8825]) +1 other test skip
>   *   igt@kms_plane_alpha_blend@alpha-7efc:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_plane_alpha_blend@alpha-7efc.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-7efc.html> ([i915#7294]) +1 other test skip
>   *   igt@kms_plane_lowres@tiling-4:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_plane_lowres@tiling-4.html> ([i915#10226] / [i915#3555] / [i915#8821])
>   *   igt@kms_plane_lowres@tiling-4@pipe-c-edp-1:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_plane_lowres@tiling-4@pipe-c-edp-1.html> ([i915#11614] / [i915#3582]) +3 other tests skip
>   *   igt@kms_plane_multiple@tiling-yf:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html> ([i915#3555]) +4 other tests skip
>   *   igt@kms_plane_scaling@2x-scaler-multi-pipe:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html> ([i915#9809]) +2 other tests skip
>   *   igt@kms_plane_scaling@invalid-num-scalers:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_plane_scaling@invalid-num-scalers.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@invalid-num-scalers.html> ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
>   *   igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format.html> ([i915#12247]) +13 other tests skip
>   *   igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format.html> ([i915#12247] / [i915#8152] / [i915#9423])
>   *   igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html> ([i915#3555] / [i915#8152] / [i915#9423])
>   *   igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html> ([i915#12247]) +10 other tests skip
>   *   igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html> ([i915#8152] / [i915#9423])
>   *   igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-c.html> ([i915#12247]) +14 other tests skip
>   *   igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-d.html> ([i915#8152])
>   *   igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html> ([i915#12247] / [i915#6953])
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html> ([i915#12247] / [i915#6953])
>   *   igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html> ([i915#12247]) +8 other tests skip
>   *   igt@kms_plane_scaling@planes-downscale-factor-0-5:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html> ([i915#12247] / [i915#6953])
>   *   igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html> ([i915#6953] / [i915#8152] / [i915#9423])
>   *   igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d.html> ([i915#12247] / [i915#8152]) +3 other tests skip
>   *   igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html> ([i915#12247]) +3 other tests skip
>   *   igt@kms_plane_scaling@planes-downscale-factor-0-75:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-75.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75.html> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423])
>   *   igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html> ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423])
>   *   igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html> ([i915#12247] / [i915#3555] / [i915#8152] / [i915#9423])
>   *   igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c.html> ([i915#12247]) +5 other tests skip
>   *   igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d.html> ([i915#12247] / [i915#8152]) +1 other test skip
>   *   igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html> ([i915#12247] / [i915#6953])
>   *   igt@kms_pm_backlight@basic-brightness:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_pm_backlight@basic-brightness.html> ([i915#5354])
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_pm_backlight@basic-brightness.html> ([i915#5354])
>   *   igt@kms_pm_dc@dc5-retention-flops:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_pm_dc@dc5-retention-flops.html> ([i915#3828])
>   *   igt@kms_pm_dc@dc6-psr:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_pm_dc@dc6-psr.html> ([i915#9685])
>   *   igt@kms_pm_dc@dc9-dpms:
> 
>      *   shard-tglu: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-2/igt@kms_pm_dc@dc9-dpms.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html> ([i915#4281])
>   *   igt@kms_pm_rpm@dpms-lpsp:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html> ([i915#9519]) +1 other test skip
>   *   igt@kms_pm_rpm@i2c:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_pm_rpm@i2c.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_pm_rpm@i2c.html>
>   *   igt@kms_pm_rpm@modeset-lpsp-stress:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress.html> ([i915#9519])
>   *   igt@kms_pm_rpm@modeset-non-lpsp:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html> ([i915#9519]) +2 other tests skip
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp.html> ([i915#9519]) +1 other test skip
>   *   igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
> 
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html> ([i915#9519]) +1 other test skip
>   *   igt@kms_properties@plane-properties-atomic:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html> ([i915#11521])
>   *   igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
> 
>      *   shard-glk: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html> ([i915#11520]) +2 other tests skip
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html> ([i915#11520]) +4 other tests skip
>   *   igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html> ([i915#11520]) +6 other tests skip
>   *   igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html> ([i915#11520]) +12 other tests skip
>   *   igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html> ([i915#11520]) +1 other test skip
>   *   igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html> ([i915#12316])
>   *   igt@kms_psr2_su@page_flip-p010:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_psr2_su@page_flip-p010.html> ([i915#9683])
>   *   igt@kms_psr2_su@page_flip-xrgb8888:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_psr2_su@page_flip-xrgb8888.html> ([i915#9683]) +1 other test skip
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_psr2_su@page_flip-xrgb8888.html> ([i915#9683]) +1 other test skip
>   *   igt@kms_psr@fbc-pr-cursor-mmap-gtt:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_psr@fbc-pr-cursor-mmap-gtt.html> ([i915#9732]) +7 other tests skip
>   *   igt@kms_psr@fbc-psr2-primary-render:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_psr@fbc-psr2-primary-render.html> ([i915#9688]) +5 other tests skip
>   *   igt@kms_psr@psr-cursor-render:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_psr@psr-cursor-render.html> ([i915#1072] / [i915#9732]) +16 other tests skip
>   *   igt@kms_psr@psr-primary-render:
> 
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@kms_psr@psr-primary-render.html> ([i915#1072] / [i915#9732]) +1 other test skip
>   *   igt@kms_psr@psr2-cursor-mmap-gtt:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@kms_psr@psr2-cursor-mmap-gtt.html> ([i915#1072] / [i915#9732]) +30 other tests skip
>   *   igt@kms_psr@psr2-sprite-mmap-gtt:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html> ([i915#9732]) +13 other tests skip
>   *   igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html> ([i915#9685]) +1 other test skip
>   *   igt@kms_rotation_crc@bad-tiling:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_rotation_crc@bad-tiling.html> ([i915#11131] / [i915#4235])
>   *   igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html> ([i915#11131] / [i915#4235] / [i915#5190])
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html> ([i915#5289])
>   *   igt@kms_selftest@drm_framebuffer:
> 
>      *   shard-rkl: NOTRUN -> ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@kms_selftest@drm_framebuffer.html> ([i915#12231]) +1 other test abort
>      *   shard-glk: NOTRUN -> ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_selftest@drm_framebuffer.html> ([i915#12231]) +1 other test abort
>   *   igt@kms_tiled_display@basic-test-pattern-with-chamelium:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html> ([i915#8623])
>   *   igt@kms_universal_plane@universal-plane-sanity:
> 
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_universal_plane@universal-plane-sanity.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_universal_plane@universal-plane-sanity.html> ([i915#9197]) +28 other tests skip
>   *   igt@kms_vblank@ts-continuation-suspend@pipe-d-hdmi-a-4:
> 
>      *   shard-dg1: NOTRUN -> INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@kms_vblank@ts-continuation-suspend@pipe-d-hdmi-a-4.html> ([i915#12276]) +1 other test incomplete
>   *   igt@kms_vrr@flip-basic:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@kms_vrr@flip-basic.html> ([i915#3555])
>   *   igt@kms_vrr@lobf:
> 
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-1/igt@kms_vrr@lobf.html> ([i915#11920])
>   *   igt@kms_writeback@writeback-check-output:
> 
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_writeback@writeback-check-output.html> ([i915#2437])
>   *   igt@kms_writeback@writeback-fb-id:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@kms_writeback@writeback-fb-id.html> ([i915#2437]) +1 other test skip
>   *   igt@perf@blocking@0-rcs0:
> 
>      *   shard-tglu: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@perf@blocking@0-rcs0.html> ([i915#10538] / [i915#12664]) +1 other test fail
>   *   igt@perf@gen8-unprivileged-single-ctx-counters:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-4/igt@perf@gen8-unprivileged-single-ctx-counters.html> +4 other tests skip
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-19/igt@perf@gen8-unprivileged-single-ctx-counters.html>
>   *   igt@perf@global-sseu-config-invalid:
> 
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@perf@global-sseu-config-invalid.html> ([i915#7387])
>   *   igt@perf@non-zero-reason@0-rcs0:
> 
>      *   shard-dg2: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html> ([i915#7484]) +1 other test fail
>   *   igt@perf@unprivileged-single-ctx-counters:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-3/igt@perf@unprivileged-single-ctx-counters.html> ([i915#2433])
>   *   igt@perf_pmu@busy-double-start@vecs1:
> 
>      *   shard-dg2: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html> ([i915#4349]) +4 other tests fail
>   *   igt@perf_pmu@cpu-hotplug:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@perf_pmu@cpu-hotplug.html> ([i915#8850])
>   *   igt@perf_pmu@event-wait@rcs0:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@perf_pmu@event-wait@rcs0.html> +8 other tests skip
>   *   igt@perf_pmu@rc6-all-gts:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-2/igt@perf_pmu@rc6-all-gts.html> ([i915#8516])
>   *   igt@prime_vgem@basic-write:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@prime_vgem@basic-write.html> ([i915#3291] / [i915#3708])
>   *   igt@prime_vgem@fence-flip-hang:
> 
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-4/igt@prime_vgem@fence-flip-hang.html> ([i915#3708])
>   *   igt@prime_vgem@fence-read-hang:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@prime_vgem@fence-read-hang.html> ([i915#3708])
>   *   igt@sriov_basic@enable-vfs-bind-unbind-each:
> 
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html> ([i915#9917])
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html> ([i915#9917])
>   *   igt@syncobj_wait@invalid-wait-zero-handles:
> 
>      *   shard-rkl: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@syncobj_wait@invalid-wait-zero-handles.html> ([i915#12564] / [i915#9781])
> 
> Possible fixes
> 
>   *   igt@fbdev@read:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@fbdev@read.html> ([i915#2582]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@fbdev@read.html>
>   *   igt@gem_ctx_engines@invalid-engines:
> 
>      *   shard-tglu: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-3/igt@gem_ctx_engines@invalid-engines.html> ([i915#12031]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-5/igt@gem_ctx_engines@invalid-engines.html>
>      *   shard-mtlp: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-7/igt@gem_ctx_engines@invalid-engines.html> ([i915#12031]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_ctx_engines@invalid-engines.html>
>   *   igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>      *   shard-rkl: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html> ([i915#2842]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html> +3 other tests pass
>   *   igt@gem_mmap_offset@clear:
> 
>      *   shard-mtlp: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-1/igt@gem_mmap_offset@clear.html> ([i915#10729]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_mmap_offset@clear.html>
>   *   igt@gem_mmap_offset@clear@smem0:
> 
>      *   shard-mtlp: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-1/igt@gem_mmap_offset@clear@smem0.html> ([i915#10029] / [i915#10729]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@gem_mmap_offset@clear@smem0.html>
>   *   igt@i915_module_load@reload-with-fault-injection:
> 
>      *   shard-glk: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html> ([i915#9820]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html>
>      *   shard-rkl: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html> ([i915#9820]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html>
>   *   igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
> 
>      *   shard-dg1: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html> ([i915#12548] / [i915#3591]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html>
>   *   igt@i915_pm_rpm@system-suspend-execbuf:
> 
>      *   shard-dg1: DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-14/igt@i915_pm_rpm@system-suspend-execbuf.html> ([i915#4423]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-16/igt@i915_pm_rpm@system-suspend-execbuf.html>
>   *   igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
> 
>      *   shard-mtlp: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html> ([i915#11808] / [i915#5956]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html> +1 other test pass
>   *   igt@kms_color@legacy-gamma-reset:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_color@legacy-gamma-reset.html> ([i915#12655]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_color@legacy-gamma-reset.html> +1 other test pass
>   *   igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
> 
>      *   shard-snb: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html> -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html> +3 other tests pass
>   *   igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
> 
>      *   shard-mtlp: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html> ([i915#2346]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>   *   igt@kms_fb_coherency@memset-crc:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_fb_coherency@memset-crc.html> -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_fb_coherency@memset-crc.html>
>   *   igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2:
> 
>      *   shard-glk: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk7/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html> ([i915#2122]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank@ab-hdmi-a1-hdmi-a2.html>
>   *   igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a3:
> 
>      *   shard-dg1: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a3.html> -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a3.html>
>   *   igt@kms_flip@flip-vs-suspend-interruptible:
> 
>      *   shard-tglu: INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-3/igt@kms_flip@flip-vs-suspend-interruptible.html> ([i915#6113]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip@flip-vs-suspend-interruptible.html>
>   *   igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
> 
>      *   shard-glk: INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html> ([i915#4839]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk2/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html>
>   *   igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1:
> 
>      *   shard-tglu: INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-3/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html> -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-3/igt@kms_flip@flip-vs-suspend-interruptible@d-hdmi-a1.html>
>   *   igt@kms_flip@plain-flip-ts-check:
> 
>      *   shard-tglu: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-2/igt@kms_flip@plain-flip-ts-check.html> ([i915#2122]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-5/igt@kms_flip@plain-flip-ts-check.html> +1 other test pass
>   *   igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html> ([i915#5354]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html> +2 other tests pass
>   *   igt@kms_hdr@invalid-metadata-sizes:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_hdr@invalid-metadata-sizes.html> ([i915#3555] / [i915#8228]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html>
>   *   igt@kms_invalid_mode@int-max-clock:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_invalid_mode@int-max-clock.html> ([i915#3555]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_invalid_mode@int-max-clock.html> +1 other test pass
>   *   igt@kms_lease@lease-revoke:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_lease@lease-revoke.html> ([i915#9197]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_lease@lease-revoke.html> +20 other tests pass
>   *   igt@kms_plane_alpha_blend@alpha-opaque-fb:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_alpha_blend@alpha-opaque-fb.html> ([i915#7294]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_alpha_blend@alpha-opaque-fb.html>
>   *   igt@kms_plane_scaling@invalid-parameters:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@invalid-parameters.html> ([i915#8152] / [i915#9423]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@invalid-parameters.html>
>   *   igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html> ([i915#3555] / [i915#8152] / [i915#9423]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html>
>   *   igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html> ([i915#12247]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html> +5 other tests pass
>   *   igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html> ([i915#8152]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-d.html>
>   *   igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html> ([i915#12247] / [i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html>
>   *   igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html> ([i915#12247] / [i915#8152]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d.html>
>   *   igt@kms_pm_rpm@cursor-dpms:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_pm_rpm@cursor-dpms.html> ([i915#1849]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_pm_rpm@cursor-dpms.html>
>   *   igt@kms_properties@plane-properties-legacy:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_properties@plane-properties-legacy.html> ([i915#11521]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_properties@plane-properties-legacy.html>
>   *   igt@kms_vblank@ts-continuation-suspend:
> 
>      *   shard-snb: INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-snb4/igt@kms_vblank@ts-continuation-suspend.html> -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-snb5/igt@kms_vblank@ts-continuation-suspend.html>
> 
> Warnings
> 
>   *   igt@gem_exec_fair@basic-pace@rcs0:
> 
>      *   shard-tglu: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-tglu-2/igt@gem_exec_fair@basic-pace@rcs0.html> ([i915#2842]) -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html> ([i915#2876])
>   *   igt@i915_module_load@reload-with-fault-injection:
> 
>      *   shard-mtlp: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html> ([i915#10131] / [i915#9697]) -> ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html> ([i915#10131] / [i915#9820])
>   *   igt@i915_selftest@mock:
> 
>      *   shard-glk: DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-glk7/igt@i915_selftest@mock.html> ([i915#1982] / [i915#9311]) -> DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-glk5/igt@i915_selftest@mock.html> ([i915#9311])
>   *   igt@kms_atomic@plane-primary-overlay-mutable-zpos:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> ([i915#9197]) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> ([i915#9531])
>   *   igt@kms_big_fb@4-tiled-32bpp-rotate-270:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html> -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html> ([i915#9197])
>   *   igt@kms_big_fb@4-tiled-addfb:
> 
>      *   shard-dg1: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg1-12/igt@kms_big_fb@4-tiled-addfb.html> ([i915#5286]) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg1-16/igt@kms_big_fb@4-tiled-addfb.html> ([i915#4423] / [i915#5286])
>   *   igt@kms_big_fb@x-tiled-8bpp-rotate-90:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html> ([i915#9197]) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html> +3 other tests skip
>   *   igt@kms_big_fb@y-tiled-8bpp-rotate-270:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html> ([i915#5190] / [i915#9197]) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html> ([i915#4538] / [i915#5190]) +3 other tests skip
>   *   igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html> ([i915#4538] / [i915#5190]) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html> ([i915#5190] / [i915#9197]) +3 other tests skip
>   *   igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-2/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html> ([i915#9197]) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html> ([i915#10307] / [i915#6095]) +5 other tests skip
>   *   igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html> ([i915#10307] / [i915#6095]) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html> ([i915#9197]) +5 other tests skip
>   *   igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html> ([i915#12313]) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html> ([i915#9197])
>   *   igt@kms_cdclk@mode-transition-all-outputs:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-4/igt@kms_cdclk@mode-transition-all-outputs.html> ([i915#11616] / [i915#7213]) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html> ([i915#9197])
>   *   igt@kms_content_protection@atomic-dpms:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_content_protection@atomic-dpms.html> ([i915#7118] / [i915#9424]) -> TIMEOUT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html> ([i915#7173])
>   *   igt@kms_content_protection@dp-mst-lic-type-0:
> 
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15610/shard-dg2-8/igt@kms_content_protection@dp-mst-lic-type-0.html> ([i915#3299]) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136884v7/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html> ([i915#9197])
>   *   igt@kms_content_protection@legacy:
> 
>      *   shard-dg2:
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
