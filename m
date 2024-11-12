Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 953209C62BC
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 21:41:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF6CD10E236;
	Tue, 12 Nov 2024 20:41:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SuvNaNJh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC31C10E188;
 Tue, 12 Nov 2024 20:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731444065; x=1762980065;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/8QBLzYWJ3jMXF62qMcqTpHLl0MJ6t+wlPbY7x8QU1M=;
 b=SuvNaNJhPE//PCs83NvUo3yOoQggZ/0EG1LJMLcLuu9SckoxiSj3gdsm
 rskRz4V6ilikbtMAZp1fTTTz0X4mM24ukqv3Z2nuNwVt6Dlialjb+wPyO
 qwDlVpVcCzhaH+eb9IkGpbkmUL2XCukEGT1KW07gMaSZW35VH6mwDME2G
 Q+SulNUj+dxq1SQDvf2DDud/cQzkgabBqmG2gIAPdiQscu14cE+XpqUJI
 qYpFxEJUrv2czoDPbkSEOQV6BpphA8hnfirpX5+lajeKAr69S96U/AbiF
 F2ZdZIK4Ti1mivjpCvThgOe0otJRGZbwoYrDV/HTnefSseRgZHqs1yvuA g==;
X-CSE-ConnectionGUID: oRKXa2YQSbu5T4kVwJH44A==
X-CSE-MsgGUID: fsREqez/RW+JRQntkm1cuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="18916970"
X-IronPort-AV: E=Sophos;i="6.12,149,1728975600"; d="scan'208";a="18916970"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 12:41:04 -0800
X-CSE-ConnectionGUID: 74HIdNiBRLOltKqaUjRAQg==
X-CSE-MsgGUID: cKXFJFLiRweeyau4ofutEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,149,1728975600"; d="scan'208";a="87213357"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Nov 2024 12:41:05 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 12 Nov 2024 12:41:04 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 12 Nov 2024 12:41:04 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 12 Nov 2024 12:41:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yjRRix0+GTK9kFn7aDBzy0TwuiSOiC9YvuixpzwY6yX2B3l1zKhGI18Uo1WgYiQmf9MlRX74VBvgpLgb2O/jW9qoOqy7pzMWjmsie/fzTSZSaeZJzw9Hr5S6CN30MWndG2N6CflfcKdb/apzcGf1XsJ4DRDLtbFjENIGNWWGiTftbkc6R1TAH+kJFaWz7RyHXe25/bDxX+YFid1SJWvZbhq5qBZRgfwiMDgizO9ZPW/ohRrwj2Y33g06xe5w3gOnTiXeTBH0GiOz/tlXwLcfPAI4yrOvA0nUwM538A4Kg7yVTKSiNFCnRMARwDkO7TLFZVecKqxE959KGs6CZUPUhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yYufPqz3JnakbgumynX20dJGihApedkm3/7Syxd9Sww=;
 b=XwJArlFPjpRi2e+7YkD5xaOL/boXY7Ky6HQMQ3E7TNJrbvk1GCwnhcKUbcpynIp/t3PSiwcbgTRLLyxMebEAvBmyYJ7McY0Bz8ymcpZSmimkVyc4GBrR70fMl47X/KHg93td9H+2kGc8QmMyJSDhIk03XS2QpZ6xICUiiheMqsZGWe5JlXaTQuqIHJQO7BJY9ryoVElGdloIdx9DZCK5JhJhUUkd1ipmKDs7gQUhiFnP4LJ67wReTW1gS6DUynXsUbtDn9NSDBJXE8dy8elBIqJQPoSiLLhs0FIrVD2auIwnLlRpi/cE4MhAMXK3thE2TgcjaETrnpuRTiZZKykGYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH0PR11MB5313.namprd11.prod.outlook.com (2603:10b6:610:bc::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Tue, 12 Nov
 2024 20:40:58 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Tue, 12 Nov 2024
 20:40:58 +0000
Date: Tue, 12 Nov 2024 15:40:54 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/5] drm/i915/overlay: convert to struct intel_display
Message-ID: <ZzO9VpGn696jbsMA@intel.com>
References: <cover.1731347547.git.jani.nikula@intel.com>
 <873690f374729d7479e2d7f6adeefddf90f53fc0.1731347547.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <873690f374729d7479e2d7f6adeefddf90f53fc0.1731347547.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0371.namprd04.prod.outlook.com
 (2603:10b6:303:81::16) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH0PR11MB5313:EE_
X-MS-Office365-Filtering-Correlation-Id: 5cd3eb6f-0fac-4492-e572-08dd035a4f7d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ewLjbqiRI0TMMh1eilehHYBpjYviZ//rU996Up9RxEy6a+g3+hYR3k4ximZx?=
 =?us-ascii?Q?+ZtPMUuYteG+8wtxMEZJxKHOyVhgItjJRYbj/1P//0Fm3KmggYPO/aM3eRD9?=
 =?us-ascii?Q?TjxUQ2QSvACNLMvgLBTmUOuWIgXJEOe+nJuAdPdpqBF45ftW+wLBTZbPk7ZH?=
 =?us-ascii?Q?THY6GU6iKoCvH5mvpXViA4DsCu2iKumZv0wfZ+2jUCbwEvQHwxS5Isgna72C?=
 =?us-ascii?Q?ZyIgnHxZ3OHqriWZLp+PffJMBYxIRXnsh+W6IxDzSzCK6Cu0MGipXQ4OCFpG?=
 =?us-ascii?Q?20DC+ZHdnw0E5wfS3vqtL1ME6IjLQ2WRc7q2uAnIFtBJAIFaCqUrWzmnSwRI?=
 =?us-ascii?Q?NjgIkfOSGUqbo4iyvmHbxbhCbuKBDMHyEt5Zf8H4EiIJOoMsIfFhbXSbZ5ZV?=
 =?us-ascii?Q?mmHzZajB5ytB7R/ta5aKrCMZM4BltK8c4VyPIwH4TSSfzoQKsakJ8Ox1uxMI?=
 =?us-ascii?Q?bE2rcUCA41PCRc8FI21+0wAlS0HuClUbkcIQ17ajfyxtvj60gYb80xY0nW23?=
 =?us-ascii?Q?L6fbt2tfRjCzr2Tzyg8NlJNYwd0n9u9AHS9zhB79qkCrp0dKTKhrEl6QD5M6?=
 =?us-ascii?Q?1rsz0R5LIvYVmM0tymbwBd8C9rZIA/UmpSgsZrK2CWyd6/P0doduaBpfOBoL?=
 =?us-ascii?Q?+TQmY0weDDT3LkRbowx0LcuzkNWnAkjK5PMp5GuzXkNRYEfFJ7CYZynAu7La?=
 =?us-ascii?Q?2ZPsWfcKF6YVDgnCgqA25VapqUI1haPZN91fcHbz3VmGAg0CeSZMQBYRoOV1?=
 =?us-ascii?Q?RhVtHsooq2yAtncFIlcy9oY1+nfg3emZjNBs8IRzb2UEe2pgCmfkcYhN9Ooy?=
 =?us-ascii?Q?d8PkUb+uFmo7Nw0rOoBVZzq1HYZSZaYNkRxxr3QVA3fvXdra1WvS3WPqlcGi?=
 =?us-ascii?Q?5ZtEtKk/f9+6iuYSa+o2nPBsSaIFYax9uGqANL9Gjqud+mF/6b8x6rQ1tdAU?=
 =?us-ascii?Q?RTUlIqwyl2nb3IvFV3w2MaHUoqtC1SUyiamntkrCcTsN55GMXgqg36ggEku6?=
 =?us-ascii?Q?O6AgTbqgAoAUcTf58SEaBQeZMnEWZvWTWbbbvCLfWDJA3/I9tm70k9/OpMiL?=
 =?us-ascii?Q?8j6FZ0WZEICZo8teV1ORvB22TsztN/7PwkQEJFa2Do6KixABnAFP8aFy7yYY?=
 =?us-ascii?Q?ndmrKnYlAhIfbEDHYsMZxJ5DZTffguT8HHlXYXawbImP6i7GMkx7GW7GoLKM?=
 =?us-ascii?Q?pVJ7+yVQO3FcVqH1oJvGfoUG8XjREtSkwxf/lR/S3wokgE7jQscwGRGJA6wl?=
 =?us-ascii?Q?5vqsltuz2d4ok2eEn1BqEZZhePrDUFn2gjZ8uIQJlhWQZ41PBiMaIszzYoxo?=
 =?us-ascii?Q?grslvCe3ZuSnVL5Rwq3iWWIa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QlJb0p8vf1Nlf3RNFI8y8Q3PW7pfd6/Ng0aNVBN5Oh+txxqsg92x8yvlAk2A?=
 =?us-ascii?Q?P8o8lFBo6Fc8XJdF8NQPRaVHcyVmO/XYYiA7L7Ef9a/2iNcvUDNQ4lDCo1uJ?=
 =?us-ascii?Q?bS7faBBDCWYslT8qlHFzAdkf2uNU/QWJYLpmPecphHV3cy3Ca8JzZPxi1xgC?=
 =?us-ascii?Q?yIX6l6IDJucmHsSPiDPN3IMCeGd8jc0ZVbqNTHycG1SNBRRB/SVqw9tt4Hlk?=
 =?us-ascii?Q?rQAPjqPWlGoumbo1dBgUqqnGMPHEEStlmlciRcBbRy7pZ63NkpwBOH842w4z?=
 =?us-ascii?Q?fmtDxRjav1nV4FNzxSlry580rxXf16Yp4G67FSAa5fw6DR/qTN4TANqz5Rpr?=
 =?us-ascii?Q?O865HnxIOZc1pSBQNj9wBE5NavXCOjLw3JA4ybBr1l3megV2t+8J2zkGTCmt?=
 =?us-ascii?Q?9FvXlTXrhywNbb/67JNaLI6GLCU8O4kzFdooZJCStbLYnariFhXorADEufpD?=
 =?us-ascii?Q?l1LNH0pEd/HnBV+uEpum0JpbqVHdiz2/pQs8NHO6G+OHPjE0sHn7NCpbz30s?=
 =?us-ascii?Q?WNHzz0A7QUO7nV6oXTtk+WCkNiYf/0m5Uq/30lAZbfbX1sInVl8iR+The1ZL?=
 =?us-ascii?Q?xwbpUTmcx1JpYsbLKXlyn1piyOY/vGQjaDu3M0gth6cTVwJEBb4MXPGC+Up9?=
 =?us-ascii?Q?UJQCPuyiObqwgaDbO1gqTarc1Sce9bMAAivTErmPH1lLMjtu5VzpjlOSmnJB?=
 =?us-ascii?Q?SbOO8e320FIrVlRF86VbShOHQc3ZDCkCqtihXUFxwSugDHcxhgep1BjzoifA?=
 =?us-ascii?Q?jSiGMXFVJnlPWwtnYraSh0UAEK29FWMDQh8H5uqNGHZMXI6v9J2QXM2EJZ7p?=
 =?us-ascii?Q?LtgoQMs/WAzRMoPGZi9REsDNGY72a+xvM3YOlCU4LBeCyKzfE8UUw/P3Obj+?=
 =?us-ascii?Q?sISQlGqy7xE54hB+LH5Uv89eOfbpxRusZctJk/eOUgutdOGocj09yvtiDpHd?=
 =?us-ascii?Q?u5+cGsNi5PCtiMnjawSL6JrR2A99x4/ZyrmxIWErdtYKRHGRe0Rho0JmVTt5?=
 =?us-ascii?Q?0Wh6UKaOW2hAEAXO4zjJ1xMIZNf88i0dFGORHGe/8slVDPHEcbgud1mIzSer?=
 =?us-ascii?Q?ax046Me8dqUUIFn4H78LZ+7YF3QhbkIPbpX18cxNrGiQpdNp4ZmC7TxNVbHD?=
 =?us-ascii?Q?hHlODK6Jq9d1QGd5cPWMz225V7Fqwzj535t5102xk2u/SF4ro2PwEVB2FmqX?=
 =?us-ascii?Q?Mm44QB9PVU8TwtyvigF0iYwSb9xuY/RI++95TkWwF4gKajqGO3dfwWGU3+8K?=
 =?us-ascii?Q?7Yk9TsBZBX+c9SGJWhxseNvWQeVZIiMRfhhNfwT3KQwAsxK+fyAj53gdgY7b?=
 =?us-ascii?Q?ZosC5v4R6J784yQCSEp9vR6HYoCSvr15645t88DF9+j0vLuezVwMMhONcVTa?=
 =?us-ascii?Q?q0sXhrIhUhmxqETtOfd5Lb/aNS4wXMTfGTne/ih9nuWap/ZUq5KGnG6hIsyC?=
 =?us-ascii?Q?LHisFr4SNJJYZOTAZyT1ehAbjXkznPuv7TEvS0nwd2tsPIJm3eGhWNPjSPcn?=
 =?us-ascii?Q?sgZb7mjArhJg/UBHkGJQkKOW3pXGkMmds1TgfKa/Gh8adEc0B4M/7DfsI+Kh?=
 =?us-ascii?Q?v0VSvxO99bWzWk2N91NVb+v9V3R+REhTdbJ8A/GAfMEZnJ6R8caDfPtNQcvB?=
 =?us-ascii?Q?Xw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cd3eb6f-0fac-4492-e572-08dd035a4f7d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2024 20:40:58.1368 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8w9Iz2+a9AdkkMXwAkIkHySayw4Xjk5vuyQhwH6rSorjYYRdYMyVY2lXGU923HdImy8Bfdp+hPSV0hI7C4w5LQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5313
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

On Mon, Nov 11, 2024 at 07:53:30PM +0200, Jani Nikula wrote:
> struct intel_display replaces struct drm_i915_private as the main
> display device pointer. Convert overlay to it, as much as possible.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_driver.c   |   4 +-
>  drivers/gpu/drm/i915/display/intel_overlay.c  | 179 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_overlay.h  |  14 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c         |   3 +-
>  4 files changed, 102 insertions(+), 98 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 56b78cf6b854..5983570b510f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -518,7 +518,7 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
>  	if (ret)
>  		drm_dbg_kms(&i915->drm, "Initial modeset failed, %d\n", ret);
>  
> -	intel_overlay_setup(i915);
> +	intel_overlay_setup(display);
>  
>  	/* Only enable hotplug handling once the fbdev is fully set up. */
>  	intel_hpd_init(i915);
> @@ -607,7 +607,7 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
>  
>  	intel_dp_tunnel_mgr_cleanup(display);
>  
> -	intel_overlay_cleanup(i915);
> +	intel_overlay_cleanup(display);
>  
>  	intel_gmbus_teardown(display);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index 2ec14096ba9c..57eaf81651c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -183,7 +183,7 @@ struct overlay_registers {
>  };
>  
>  struct intel_overlay {
> -	struct drm_i915_private *i915;
> +	struct intel_display *display;
>  	struct intel_context *context;
>  	struct intel_crtc *crtc;
>  	struct i915_vma *vma;
> @@ -205,17 +205,17 @@ struct intel_overlay {
>  	void (*flip_complete)(struct intel_overlay *ovl);
>  };
>  
> -static void i830_overlay_clock_gating(struct drm_i915_private *dev_priv,
> +static void i830_overlay_clock_gating(struct intel_display *display,
>  				      bool enable)
>  {
> -	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> +	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
>  	u8 val;
>  
>  	/* WA_OVERLAY_CLKGATE:alm */
>  	if (enable)
> -		intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv), 0);
> +		intel_de_write(display, DSPCLK_GATE_D(display), 0);
>  	else
> -		intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv),
> +		intel_de_write(display, DSPCLK_GATE_D(display),
>  			       OVRUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WA_DISABLE_L2CACHE_CLOCK_GATING:alm */
> @@ -253,11 +253,11 @@ alloc_request(struct intel_overlay *overlay, void (*fn)(struct intel_overlay *))
>  /* overlay needs to be disable in OCMD reg */
>  static int intel_overlay_on(struct intel_overlay *overlay)
>  {
> -	struct drm_i915_private *dev_priv = overlay->i915;
> +	struct intel_display *display = overlay->display;
>  	struct i915_request *rq;
>  	u32 *cs;
>  
> -	drm_WARN_ON(&dev_priv->drm, overlay->active);
> +	drm_WARN_ON(display->drm, overlay->active);
>  
>  	rq = alloc_request(overlay, NULL);
>  	if (IS_ERR(rq))
> @@ -271,8 +271,8 @@ static int intel_overlay_on(struct intel_overlay *overlay)
>  
>  	overlay->active = true;
>  
> -	if (IS_I830(dev_priv))
> -		i830_overlay_clock_gating(dev_priv, false);
> +	if (display->platform.i830)
> +		i830_overlay_clock_gating(display, false);
>  
>  	*cs++ = MI_OVERLAY_FLIP | MI_OVERLAY_ON;
>  	*cs++ = overlay->flip_addr | OFC_UPDATE;
> @@ -288,10 +288,12 @@ static int intel_overlay_on(struct intel_overlay *overlay)
>  static void intel_overlay_flip_prepare(struct intel_overlay *overlay,
>  				       struct i915_vma *vma)
>  {
> +	struct intel_display *display = overlay->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	enum pipe pipe = overlay->crtc->pipe;
>  	struct intel_frontbuffer *frontbuffer = NULL;
>  
> -	drm_WARN_ON(&overlay->i915->drm, overlay->old_vma);
> +	drm_WARN_ON(display->drm, overlay->old_vma);
>  
>  	if (vma)
>  		frontbuffer = intel_frontbuffer_get(intel_bo_to_drm_bo(vma->obj));
> @@ -303,8 +305,7 @@ static void intel_overlay_flip_prepare(struct intel_overlay *overlay,
>  		intel_frontbuffer_put(overlay->frontbuffer);
>  	overlay->frontbuffer = frontbuffer;
>  
> -	intel_frontbuffer_flip_prepare(overlay->i915,
> -				       INTEL_FRONTBUFFER_OVERLAY(pipe));
> +	intel_frontbuffer_flip_prepare(i915, INTEL_FRONTBUFFER_OVERLAY(pipe));
>  
>  	overlay->old_vma = overlay->vma;
>  	if (vma)
> @@ -318,20 +319,20 @@ static int intel_overlay_continue(struct intel_overlay *overlay,
>  				  struct i915_vma *vma,
>  				  bool load_polyphase_filter)
>  {
> -	struct drm_i915_private *dev_priv = overlay->i915;
> +	struct intel_display *display = overlay->display;
>  	struct i915_request *rq;
>  	u32 flip_addr = overlay->flip_addr;
>  	u32 tmp, *cs;
>  
> -	drm_WARN_ON(&dev_priv->drm, !overlay->active);
> +	drm_WARN_ON(display->drm, !overlay->active);
>  
>  	if (load_polyphase_filter)
>  		flip_addr |= OFC_UPDATE;
>  
>  	/* check for underruns */
> -	tmp = intel_de_read(dev_priv, DOVSTA);
> +	tmp = intel_de_read(display, DOVSTA);
>  	if (tmp & (1 << 17))
> -		drm_dbg(&dev_priv->drm, "overlay underrun, DOVSTA: %x\n", tmp);
> +		drm_dbg(display->drm, "overlay underrun, DOVSTA: %x\n", tmp);
>  
>  	rq = alloc_request(overlay, NULL);
>  	if (IS_ERR(rq))
> @@ -355,14 +356,15 @@ static int intel_overlay_continue(struct intel_overlay *overlay,
>  
>  static void intel_overlay_release_old_vma(struct intel_overlay *overlay)
>  {
> +	struct intel_display *display = overlay->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct i915_vma *vma;
>  
>  	vma = fetch_and_zero(&overlay->old_vma);
> -	if (drm_WARN_ON(&overlay->i915->drm, !vma))
> +	if (drm_WARN_ON(display->drm, !vma))
>  		return;
>  
> -	intel_frontbuffer_flip_complete(overlay->i915,
> -					INTEL_FRONTBUFFER_OVERLAY(overlay->crtc->pipe));
> +	intel_frontbuffer_flip_complete(i915, INTEL_FRONTBUFFER_OVERLAY(overlay->crtc->pipe));
>  
>  	i915_vma_unpin(vma);
>  	i915_vma_put(vma);
> @@ -376,7 +378,7 @@ intel_overlay_release_old_vid_tail(struct intel_overlay *overlay)
>  
>  static void intel_overlay_off_tail(struct intel_overlay *overlay)
>  {
> -	struct drm_i915_private *dev_priv = overlay->i915;
> +	struct intel_display *display = overlay->display;
>  
>  	intel_overlay_release_old_vma(overlay);
>  
> @@ -384,8 +386,8 @@ static void intel_overlay_off_tail(struct intel_overlay *overlay)
>  	overlay->crtc = NULL;
>  	overlay->active = false;
>  
> -	if (IS_I830(dev_priv))
> -		i830_overlay_clock_gating(dev_priv, true);
> +	if (display->platform.i830)
> +		i830_overlay_clock_gating(display, true);
>  }
>  
>  static void intel_overlay_last_flip_retire(struct i915_active *active)
> @@ -400,10 +402,11 @@ static void intel_overlay_last_flip_retire(struct i915_active *active)
>  /* overlay needs to be disabled in OCMD reg */
>  static int intel_overlay_off(struct intel_overlay *overlay)
>  {
> +	struct intel_display *display = overlay->display;
>  	struct i915_request *rq;
>  	u32 *cs, flip_addr = overlay->flip_addr;
>  
> -	drm_WARN_ON(&overlay->i915->drm, !overlay->active);
> +	drm_WARN_ON(display->drm, !overlay->active);
>  
>  	/* According to intel docs the overlay hw may hang (when switching
>  	 * off) without loading the filter coeffs. It is however unclear whether
> @@ -452,7 +455,7 @@ static int intel_overlay_recover_from_interrupt(struct intel_overlay *overlay)
>   */
>  static int intel_overlay_release_old_vid(struct intel_overlay *overlay)
>  {
> -	struct drm_i915_private *dev_priv = overlay->i915;
> +	struct intel_display *display = overlay->display;
>  	struct i915_request *rq;
>  	u32 *cs;
>  
> @@ -463,7 +466,7 @@ static int intel_overlay_release_old_vid(struct intel_overlay *overlay)
>  	if (!overlay->old_vma)
>  		return 0;
>  
> -	if (!(intel_de_read(dev_priv, GEN2_ISR) & I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT)) {
> +	if (!(intel_de_read(display, GEN2_ISR) & I915_OVERLAY_PLANE_FLIP_PENDING_INTERRUPT)) {
>  		intel_overlay_release_old_vid_tail(overlay);
>  		return 0;
>  	}
> @@ -487,9 +490,9 @@ static int intel_overlay_release_old_vid(struct intel_overlay *overlay)
>  	return i915_active_wait(&overlay->last_flip);
>  }
>  
> -void intel_overlay_reset(struct drm_i915_private *dev_priv)
> +void intel_overlay_reset(struct intel_display *display)
>  {
> -	struct intel_overlay *overlay = dev_priv->display.overlay;
> +	struct intel_overlay *overlay = display->overlay;
>  
>  	if (!overlay)
>  		return;
> @@ -550,11 +553,11 @@ static int uv_vsubsampling(u32 format)
>  	}
>  }
>  
> -static u32 calc_swidthsw(struct drm_i915_private *dev_priv, u32 offset, u32 width)
> +static u32 calc_swidthsw(struct intel_display *display, u32 offset, u32 width)
>  {
>  	u32 sw;
>  
> -	if (DISPLAY_VER(dev_priv) == 2)
> +	if (DISPLAY_VER(display) == 2)
>  		sw = ALIGN((offset & 31) + width, 32);
>  	else
>  		sw = ALIGN((offset & 63) + width, 64);
> @@ -789,16 +792,17 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
>  				      struct drm_i915_gem_object *new_bo,
>  				      struct drm_intel_overlay_put_image *params)
>  {
> +	struct intel_display *display = overlay->display;
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct overlay_registers __iomem *regs = overlay->regs;
> -	struct drm_i915_private *dev_priv = overlay->i915;
>  	u32 swidth, swidthsw, sheight, ostride;
>  	enum pipe pipe = overlay->crtc->pipe;
>  	bool scale_changed = false;
>  	struct i915_vma *vma;
>  	int ret, tmp_width;
>  
> -	drm_WARN_ON(&dev_priv->drm,
> -		    !drm_modeset_is_locked(&dev_priv->drm.mode_config.connection_mutex));
> +	drm_WARN_ON(display->drm,
> +		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
>  
>  	ret = intel_overlay_release_old_vid(overlay);
>  	if (ret != 0)
> @@ -824,7 +828,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
>  			oconfig |= OCONF_CC_OUT_8BIT;
>  		if (crtc_state->gamma_enable)
>  			oconfig |= OCONF_GAMMA2_ENABLE;
> -		if (DISPLAY_VER(dev_priv) == 4)
> +		if (DISPLAY_VER(display) == 4)
>  			oconfig |= OCONF_CSC_MODE_BT709;
>  		oconfig |= pipe == 0 ?
>  			OCONF_PIPE_A : OCONF_PIPE_B;
> @@ -845,7 +849,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
>  		tmp_width = params->src_width;
>  
>  	swidth = params->src_width;
> -	swidthsw = calc_swidthsw(dev_priv, params->offset_Y, tmp_width);
> +	swidthsw = calc_swidthsw(display, params->offset_Y, tmp_width);
>  	sheight = params->src_height;
>  	iowrite32(i915_ggtt_offset(vma) + params->offset_Y, &regs->OBUF_0Y);
>  	ostride = params->stride_Y;
> @@ -858,9 +862,9 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
>  		swidth |= (params->src_width / uv_hscale) << 16;
>  		sheight |= (params->src_height / uv_vscale) << 16;
>  
> -		tmp_U = calc_swidthsw(dev_priv, params->offset_U,
> +		tmp_U = calc_swidthsw(display, params->offset_U,
>  				      params->src_width / uv_hscale);
> -		tmp_V = calc_swidthsw(dev_priv, params->offset_V,
> +		tmp_V = calc_swidthsw(display, params->offset_V,
>  				      params->src_width / uv_hscale);
>  		swidthsw |= max(tmp_U, tmp_V) << 16;
>  
> @@ -899,11 +903,11 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
>  
>  int intel_overlay_switch_off(struct intel_overlay *overlay)
>  {
> -	struct drm_i915_private *dev_priv = overlay->i915;
> +	struct intel_display *display = overlay->display;
>  	int ret;
>  
> -	drm_WARN_ON(&dev_priv->drm,
> -		    !drm_modeset_is_locked(&dev_priv->drm.mode_config.connection_mutex));
> +	drm_WARN_ON(display->drm,
> +		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
>  
>  	ret = intel_overlay_recover_from_interrupt(overlay);
>  	if (ret != 0)
> @@ -936,26 +940,24 @@ static int check_overlay_possible_on_crtc(struct intel_overlay *overlay,
>  
>  static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
>  {
> -	struct drm_i915_private *dev_priv = overlay->i915;
> +	struct intel_display *display = overlay->display;
>  	u32 ratio;
>  
>  	/* XXX: This is not the same logic as in the xorg driver, but more in
>  	 * line with the intel documentation for the i965
>  	 */
> -	if (DISPLAY_VER(dev_priv) >= 4) {
> -		u32 tmp = intel_de_read(dev_priv, PFIT_PGM_RATIOS(dev_priv));
> +	if (DISPLAY_VER(display) >= 4) {
> +		u32 tmp = intel_de_read(display, PFIT_PGM_RATIOS(display));
>  
>  		/* on i965 use the PGM reg to read out the autoscaler values */
>  		ratio = REG_FIELD_GET(PFIT_VERT_SCALE_MASK_965, tmp);
>  	} else {
>  		u32 tmp;
>  
> -		if (intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)) & PFIT_VERT_AUTO_SCALE)
> -			tmp = intel_de_read(dev_priv,
> -					    PFIT_AUTO_RATIOS(dev_priv));
> +		if (intel_de_read(display, PFIT_CONTROL(display)) & PFIT_VERT_AUTO_SCALE)
> +			tmp = intel_de_read(display, PFIT_AUTO_RATIOS(display));
>  		else
> -			tmp = intel_de_read(dev_priv,
> -					    PFIT_PGM_RATIOS(dev_priv));
> +			tmp = intel_de_read(display, PFIT_PGM_RATIOS(display));
>  
>  		ratio = REG_FIELD_GET(PFIT_VERT_SCALE_MASK, tmp);
>  	}
> @@ -1000,7 +1002,7 @@ static int check_overlay_scaling(struct drm_intel_overlay_put_image *rec)
>  	return 0;
>  }
>  
> -static int check_overlay_src(struct drm_i915_private *dev_priv,
> +static int check_overlay_src(struct intel_display *display,
>  			     struct drm_intel_overlay_put_image *rec,
>  			     struct drm_i915_gem_object *new_bo)
>  {
> @@ -1011,7 +1013,7 @@ static int check_overlay_src(struct drm_i915_private *dev_priv,
>  	u32 tmp;
>  
>  	/* check src dimensions */
> -	if (IS_I845G(dev_priv) || IS_I830(dev_priv)) {
> +	if (display->platform.i845g || display->platform.i830) {
>  		if (rec->src_height > IMAGE_MAX_HEIGHT_LEGACY ||
>  		    rec->src_width  > IMAGE_MAX_WIDTH_LEGACY)
>  			return -EINVAL;
> @@ -1063,14 +1065,14 @@ static int check_overlay_src(struct drm_i915_private *dev_priv,
>  		return -EINVAL;
>  
>  	/* stride checking */
> -	if (IS_I830(dev_priv) || IS_I845G(dev_priv))
> +	if (display->platform.i830 || display->platform.i845g)
>  		stride_mask = 255;
>  	else
>  		stride_mask = 63;
>  
>  	if (rec->stride_Y & stride_mask || rec->stride_UV & stride_mask)
>  		return -EINVAL;
> -	if (DISPLAY_VER(dev_priv) == 4 && rec->stride_Y < 512)
> +	if (DISPLAY_VER(display) == 4 && rec->stride_Y < 512)
>  		return -EINVAL;
>  
>  	tmp = (rec->flags & I915_OVERLAY_TYPE_MASK) == I915_OVERLAY_YUV_PLANAR ?
> @@ -1114,17 +1116,17 @@ static int check_overlay_src(struct drm_i915_private *dev_priv,
>  int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
>  				  struct drm_file *file_priv)
>  {
> +	struct intel_display *display = to_intel_display(dev);
>  	struct drm_intel_overlay_put_image *params = data;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct intel_overlay *overlay;
>  	struct drm_crtc *drmmode_crtc;
>  	struct intel_crtc *crtc;
>  	struct drm_i915_gem_object *new_bo;
>  	int ret;
>  
> -	overlay = dev_priv->display.overlay;
> +	overlay = display->overlay;
>  	if (!overlay) {
> -		drm_dbg(&dev_priv->drm, "userspace bug: no overlay\n");
> +		drm_dbg(display->drm, "userspace bug: no overlay\n");
>  		return -ENODEV;
>  	}
>  
> @@ -1148,7 +1150,7 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
>  	drm_modeset_lock_all(dev);
>  
>  	if (i915_gem_object_is_tiled(new_bo)) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "buffer used for overlay image can not be tiled\n");
>  		ret = -EINVAL;
>  		goto out_unlock;
> @@ -1197,7 +1199,7 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
>  		goto out_unlock;
>  	}
>  
> -	ret = check_overlay_src(dev_priv, params, new_bo);
> +	ret = check_overlay_src(display, params, new_bo);
>  	if (ret != 0)
>  		goto out_unlock;
>  
> @@ -1277,14 +1279,14 @@ static int check_gamma(struct drm_intel_overlay_attrs *attrs)
>  int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>  			      struct drm_file *file_priv)
>  {
> +	struct intel_display *display = to_intel_display(dev);
>  	struct drm_intel_overlay_attrs *attrs = data;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct intel_overlay *overlay;
>  	int ret;
>  
> -	overlay = dev_priv->display.overlay;
> +	overlay = display->overlay;
>  	if (!overlay) {
> -		drm_dbg(&dev_priv->drm, "userspace bug: no overlay\n");
> +		drm_dbg(display->drm, "userspace bug: no overlay\n");
>  		return -ENODEV;
>  	}
>  
> @@ -1297,13 +1299,13 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>  		attrs->contrast   = overlay->contrast;
>  		attrs->saturation = overlay->saturation;
>  
> -		if (DISPLAY_VER(dev_priv) != 2) {
> -			attrs->gamma0 = intel_de_read(dev_priv, OGAMC0);
> -			attrs->gamma1 = intel_de_read(dev_priv, OGAMC1);
> -			attrs->gamma2 = intel_de_read(dev_priv, OGAMC2);
> -			attrs->gamma3 = intel_de_read(dev_priv, OGAMC3);
> -			attrs->gamma4 = intel_de_read(dev_priv, OGAMC4);
> -			attrs->gamma5 = intel_de_read(dev_priv, OGAMC5);
> +		if (DISPLAY_VER(display) != 2) {
> +			attrs->gamma0 = intel_de_read(display, OGAMC0);
> +			attrs->gamma1 = intel_de_read(display, OGAMC1);
> +			attrs->gamma2 = intel_de_read(display, OGAMC2);
> +			attrs->gamma3 = intel_de_read(display, OGAMC3);
> +			attrs->gamma4 = intel_de_read(display, OGAMC4);
> +			attrs->gamma5 = intel_de_read(display, OGAMC5);
>  		}
>  	} else {
>  		if (attrs->brightness < -128 || attrs->brightness > 127)
> @@ -1321,7 +1323,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>  		update_reg_attrs(overlay, overlay->regs);
>  
>  		if (attrs->flags & I915_OVERLAY_UPDATE_GAMMA) {
> -			if (DISPLAY_VER(dev_priv) == 2)
> +			if (DISPLAY_VER(display) == 2)
>  				goto out_unlock;
>  
>  			if (overlay->active) {
> @@ -1333,12 +1335,12 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>  			if (ret)
>  				goto out_unlock;
>  
> -			intel_de_write(dev_priv, OGAMC0, attrs->gamma0);
> -			intel_de_write(dev_priv, OGAMC1, attrs->gamma1);
> -			intel_de_write(dev_priv, OGAMC2, attrs->gamma2);
> -			intel_de_write(dev_priv, OGAMC3, attrs->gamma3);
> -			intel_de_write(dev_priv, OGAMC4, attrs->gamma4);
> -			intel_de_write(dev_priv, OGAMC5, attrs->gamma5);
> +			intel_de_write(display, OGAMC0, attrs->gamma0);
> +			intel_de_write(display, OGAMC1, attrs->gamma1);
> +			intel_de_write(display, OGAMC2, attrs->gamma2);
> +			intel_de_write(display, OGAMC3, attrs->gamma3);
> +			intel_de_write(display, OGAMC4, attrs->gamma4);
> +			intel_de_write(display, OGAMC5, attrs->gamma5);
>  		}
>  	}
>  	overlay->color_key_enabled = (attrs->flags & I915_OVERLAY_DISABLE_DEST_COLORKEY) == 0;
> @@ -1352,12 +1354,13 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>  
>  static int get_registers(struct intel_overlay *overlay, bool use_phys)
>  {
> -	struct drm_i915_private *i915 = overlay->i915;
> +	struct intel_display *display = overlay->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct drm_i915_gem_object *obj = ERR_PTR(-ENODEV);
>  	struct i915_vma *vma;
>  	int err;
>  
> -	if (!IS_METEORLAKE(i915)) /* Wa_22018444074 */
> +	if (!display->platform.meteorlake) /* Wa_22018444074 */
>  		obj = i915_gem_object_create_stolen(i915, PAGE_SIZE);
>  	if (IS_ERR(obj))
>  		obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
> @@ -1390,13 +1393,14 @@ static int get_registers(struct intel_overlay *overlay, bool use_phys)
>  	return err;
>  }
>  
> -void intel_overlay_setup(struct drm_i915_private *dev_priv)
> +void intel_overlay_setup(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_overlay *overlay;
>  	struct intel_engine_cs *engine;
>  	int ret;
>  
> -	if (!HAS_OVERLAY(dev_priv))
> +	if (!HAS_OVERLAY(display))
>  		return;
>  
>  	engine = to_gt(dev_priv)->engine[RCS0];
> @@ -1407,7 +1411,7 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
>  	if (!overlay)
>  		return;
>  
> -	overlay->i915 = dev_priv;
> +	overlay->display = display;
>  	overlay->context = engine->kernel_context;
>  	overlay->color_key = 0x0101fe;
>  	overlay->color_key_enabled = true;
> @@ -1418,7 +1422,7 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
>  	i915_active_init(&overlay->last_flip,
>  			 NULL, intel_overlay_last_flip_retire, 0);
>  
> -	ret = get_registers(overlay, OVERLAY_NEEDS_PHYSICAL(dev_priv));
> +	ret = get_registers(overlay, OVERLAY_NEEDS_PHYSICAL(display));

I thought that you were converting the macros separately...
but if this is working, no hard feelings

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  	if (ret)
>  		goto out_free;
>  
> @@ -1426,19 +1430,19 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
>  	update_polyphase_filter(overlay->regs);
>  	update_reg_attrs(overlay, overlay->regs);
>  
> -	dev_priv->display.overlay = overlay;
> -	drm_info(&dev_priv->drm, "Initialized overlay support.\n");
> +	display->overlay = overlay;
> +	drm_info(display->drm, "Initialized overlay support.\n");
>  	return;
>  
>  out_free:
>  	kfree(overlay);
>  }
>  
> -void intel_overlay_cleanup(struct drm_i915_private *dev_priv)
> +void intel_overlay_cleanup(struct intel_display *display)
>  {
>  	struct intel_overlay *overlay;
>  
> -	overlay = fetch_and_zero(&dev_priv->display.overlay);
> +	overlay = fetch_and_zero(&display->overlay);
>  	if (!overlay)
>  		return;
>  
> @@ -1447,7 +1451,7 @@ void intel_overlay_cleanup(struct drm_i915_private *dev_priv)
>  	 * Furthermore modesetting teardown happens beforehand so the
>  	 * hardware should be off already.
>  	 */
> -	drm_WARN_ON(&dev_priv->drm, overlay->active);
> +	drm_WARN_ON(display->drm, overlay->active);
>  
>  	i915_gem_object_put(overlay->reg_bo);
>  	i915_active_fini(&overlay->last_flip);
> @@ -1467,8 +1471,7 @@ struct intel_overlay_snapshot {
>  struct intel_overlay_snapshot *
>  intel_overlay_snapshot_capture(struct intel_display *display)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -	struct intel_overlay *overlay = dev_priv->display.overlay;
> +	struct intel_overlay *overlay = display->overlay;
>  	struct intel_overlay_snapshot *error;
>  
>  	if (!overlay || !overlay->active)
> @@ -1478,8 +1481,8 @@ intel_overlay_snapshot_capture(struct intel_display *display)
>  	if (error == NULL)
>  		return NULL;
>  
> -	error->dovsta = intel_de_read(dev_priv, DOVSTA);
> -	error->isr = intel_de_read(dev_priv, GEN2_ISR);
> +	error->dovsta = intel_de_read(display, DOVSTA);
> +	error->isr = intel_de_read(display, GEN2_ISR);
>  	error->base = overlay->flip_addr;
>  
>  	memcpy_fromio(&error->regs, overlay->regs, sizeof(error->regs));
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/drm/i915/display/intel_overlay.h
> index eafac24d1de8..dc885edf39e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.h
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.h
> @@ -17,19 +17,19 @@ struct intel_overlay;
>  struct intel_overlay_snapshot;
>  
>  #ifdef I915
> -void intel_overlay_setup(struct drm_i915_private *dev_priv);
> -void intel_overlay_cleanup(struct drm_i915_private *dev_priv);
> +void intel_overlay_setup(struct intel_display *display);
> +void intel_overlay_cleanup(struct intel_display *display);
>  int intel_overlay_switch_off(struct intel_overlay *overlay);
>  int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
>  				  struct drm_file *file_priv);
>  int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>  			      struct drm_file *file_priv);
> -void intel_overlay_reset(struct drm_i915_private *dev_priv);
> +void intel_overlay_reset(struct intel_display *display);
>  #else
> -static inline void intel_overlay_setup(struct drm_i915_private *dev_priv)
> +static inline void intel_overlay_setup(struct intel_display *display)
>  {
>  }
> -static inline void intel_overlay_cleanup(struct drm_i915_private *dev_priv)
> +static inline void intel_overlay_cleanup(struct intel_display *display)
>  {
>  }
>  static inline int intel_overlay_switch_off(struct intel_overlay *overlay)
> @@ -37,7 +37,7 @@ static inline int intel_overlay_switch_off(struct intel_overlay *overlay)
>  	return 0;
>  }
>  static inline int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
> -				  struct drm_file *file_priv)
> +						struct drm_file *file_priv)
>  {
>  	return 0;
>  }
> @@ -46,7 +46,7 @@ static inline int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>  {
>  	return 0;
>  }
> -static inline void intel_overlay_reset(struct drm_i915_private *dev_priv)
> +static inline void intel_overlay_reset(struct intel_display *display)
>  {
>  }
>  #endif
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index f42f21632306..c2fe3fc78e76 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1198,6 +1198,7 @@ void intel_gt_reset(struct intel_gt *gt,
>  		    intel_engine_mask_t stalled_mask,
>  		    const char *reason)
>  {
> +	struct intel_display *display = &gt->i915->display;
>  	intel_engine_mask_t awake;
>  	int ret;
>  
> @@ -1243,7 +1244,7 @@ void intel_gt_reset(struct intel_gt *gt,
>  	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
>  		intel_irq_resume(gt->i915);
>  
> -	intel_overlay_reset(gt->i915);
> +	intel_overlay_reset(display);
>  
>  	/* sanitize uC after engine reset */
>  	if (!intel_uc_uses_guc_submission(&gt->uc))
> -- 
> 2.39.5
> 
