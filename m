Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F92697726A
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 21:50:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE8110EC14;
	Thu, 12 Sep 2024 19:50:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HWuZBiFD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A04210EC14;
 Thu, 12 Sep 2024 19:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726170629; x=1757706629;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3kPtPg8jOcWCvf4hII69hNap8TOXzNJL/5yOLrKw9dM=;
 b=HWuZBiFDsh2tflPtOlI6dOZwnXfJYjppFt/4NUbWo6+GHwrjZQmprzB6
 qvsyBnNlRJV/fPe4nXymE0Yypb2x8+NU/Km5X8ktb5UYcI0hgVXZLuwPG
 YzUOjTcDDvzH8KEOngdnkP2GeEHhxuugYJTY2Vxu9QXJYFtDJ0/uo5NNN
 L4miu5YZt+BwTPVFFt3z4Xrhi8goH2xxKirjCDTDGlYbNjxEUJgY3LU46
 irHpYSR2X4rAeFvNH3QtcjZNo7fQUD51wH4lijq0f+zRRhh0Dnp6Kqe8b
 v5nOHJb9g+3+2sAumX4dkgUGM9IRGmLC03wHXGf/9owXwMEm5SAYHbD1S g==;
X-CSE-ConnectionGUID: X2gK1T63QauuByTs9qMRBA==
X-CSE-MsgGUID: wSicRfg7SuWpZIRm5fRdFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="35641985"
X-IronPort-AV: E=Sophos;i="6.10,224,1719903600"; d="scan'208";a="35641985"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 12:50:29 -0700
X-CSE-ConnectionGUID: M9enGto9R0iGx6IM4AxKAg==
X-CSE-MsgGUID: IoNPDxtaSUeOrp+4nWVbaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,224,1719903600"; d="scan'208";a="68114368"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 12:50:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 12:50:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 12:50:27 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 12:50:27 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 12:50:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZfgssaBFYo3YWJyAorwdToPXDkIiTP6SmRZlOYZkilben9nJr1fF+APRHwUXNGNG1n+XTROq7KWL44Mr5k5cAPxuPBMpDpqXmaMpyKs1Kikj274deoNWzeOpVXfkwiVd+vZ1Nw4z7NLC6O63dN1bnrgCT9hlFTMReQKKCXu3y9g8Dtj9dco74HMVpMhDC7WI+LGmY5Bkc8IkZQAuOucLQRjKaPhS8kGSe1hOyt3Ss3vRmCDbIq1P31HIMSwru+uMgoUDl6HbvhvVOUKAPYzj2QFm5bGNAUtxPIVT5sO95LYcP5WUZ1ZFHKpWKW08zXu2QsiCwMbYtgHg8KbRXwlr3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EltPyrls/Go7o9M8E9GAsjPcNCB9Q323w+rQlzFtgNg=;
 b=i836jQBihrezcRSP2WNRqWuS7PAKdSBZO+o5JgB05SryDHIWMjXbxVjqp4WK6BOgZfteDyP0k+fQr1KtQRp6P9/+ipsLp3BYhU2t3eXrj2gghNC7a6hl831lzBNQ68YaGkTIgcUmVLvjIhSrZTZY3Gt5gqwr92ytZ/mllzAfN/gD5O+8OezuFXfE7T+V1CtF5hwPnluFL8JNiT/ADNM9kTvWAdsnzTQT4dS54Tteaje6XeqnV/hS5UOMFe7ltw7+UIbgZfz0qJncg34kHo9HT5xKu8unv1fwa3M4/G5BorNoLpK/YUoWeDMrjULxXGlSeNKO6jUawnWwzI2PP4u8UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by CYYPR11MB8332.namprd11.prod.outlook.com (2603:10b6:930:be::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.18; Thu, 12 Sep
 2024 19:50:25 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb%5]) with mapi id 15.20.7939.022; Thu, 12 Sep 2024
 19:50:25 +0000
Date: Thu, 12 Sep 2024 12:50:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Don't allow tile4 framebuffer to do
 hflip on Xe2
Message-ID: <20240912195022.GJ5774@mdroper-desk1.amr.corp.intel.com>
References: <20240912144606.862307-1-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240912144606.862307-1-juhapekka.heikkila@gmail.com>
X-ClientProxiedBy: SJ0PR05CA0024.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::29) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|CYYPR11MB8332:EE_
X-MS-Office365-Filtering-Correlation-Id: 037d1e68-017d-4050-a537-08dcd36424eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ouiwRh3XQ7MFc5OZ1fwdaBiiS/i/xJ1Svp8wEGEkouFKVQX8m6Yvrkwuw3T6?=
 =?us-ascii?Q?JwplaiZ9SOa1C8JCwDThlMP0CLvBQV3dZU/Dbbg2tkh6hTG3UztxYkYpbJ3A?=
 =?us-ascii?Q?+aY+SMdT+6PXGb6KkeCTJbOZWz5HUlBIPFHOssyWAwO2RKqLwd54iGekn2Gk?=
 =?us-ascii?Q?J+0qnHVtqo0tptOZrJ87Z1cs3WDU0czp2uJpAl4I7zsMWg02PcKLepSEExHe?=
 =?us-ascii?Q?g//7XeLigZyAX2KHPjDR8i3TXtBG+OP3XrmhrCvCDsFp5/84tgR9/OouRqGd?=
 =?us-ascii?Q?upNq72JJL5JjA4f/cCtY4yi/Nb3HFRKr7QIH7lu/t+kjRNvG0mo0DmbkYtYy?=
 =?us-ascii?Q?QytHmIrqZsRdQ6vw0+H32o3UujfNlqQ8XGtAYYF/fVYZbRmm1eIQ9T2kfczt?=
 =?us-ascii?Q?v8reIrIC8PPRVFSb/ODYY+KtOr4g/D1wDvKJgMIS/qu84TQ10VuYy7zOsAed?=
 =?us-ascii?Q?cpoesaRqEVsEE6wFgZPacO7r2Xfg7wPGcyvfQ9/GdPESoah4YT5l67j8WWfC?=
 =?us-ascii?Q?JSyP1GXCwwoNP2rlPplP4sZ+NqdDV3C6IFf5H6S7BEHK9fJd8uFA/nLqS13K?=
 =?us-ascii?Q?xAvCX6qZo6MqgHGNso08aYii7xhQ58RR1oxJOGGzWOi4UDh0pJYFptW6zo7g?=
 =?us-ascii?Q?84irlJeqnyeANzbfj23aHHtlRUkzV/Q0XVuixz9qJRWH/gIwuk3Ey56/y+8J?=
 =?us-ascii?Q?wsz85Mmbjc/8iFaiZtDMw2i0+hoB9D5H0eEfFn+hKc2WY+LAMEw5XAwv2ycf?=
 =?us-ascii?Q?Va27/mtBF78UwL9bohypKLsl9F4jLsHdA/FeATQ423bI3kxUrg1fgL1G/UTy?=
 =?us-ascii?Q?2m/9KdnMPOgT6st0zLG9/cDaUEl0pE+YqxY7Ow4weHxeGcMGyrmQp1LL4+tZ?=
 =?us-ascii?Q?NnzeF/MIspAk2BczrIO6AOPsvHYqxWBdhTKvtpZTNx57zWwaHu2m0ZwvdLPq?=
 =?us-ascii?Q?8clXKKDt3ULz/D8k2bTpbtJtUF/4jymoFbp1ciStxr2I0BaBWlBhsJDppbxr?=
 =?us-ascii?Q?y8+OZwWsWqOOgowJgAuikef9c0Ko4s4VWNwlcdtNA8Vgle1W+i+7SlxAPQC5?=
 =?us-ascii?Q?RId/Jf7II94SQWQjWggQyIsQT3TrWs0tqO/gnLcNsx7vopHY0Xdd1fW73Yqv?=
 =?us-ascii?Q?9EEK4W3XveLTdfYARynRiJSy5IlWC0OvakoHQ3ZCdP9QLvpXKFqVPXyIs2Lu?=
 =?us-ascii?Q?m92r1rRsJB87YClPLNpP5xBudIiNnyvOz2A//TW/jyW/Pa8O3bBho+9HN5XL?=
 =?us-ascii?Q?bW+iZA0OM+8dfm2jHnMwRcW2XeZGoethu2Kn1B7A9Qqr0PzmhTtRoPQO18Hs?=
 =?us-ascii?Q?0HrTzs6pKyqdZ4hPCNOKcIdptSMt/2K9OltnoTrfrHRq5w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fOr8we5qb+kZ8gDybeIInZ+qha5ieM6DGlVHrM6V+q7HQBQ6rXIZ2dwxEpi4?=
 =?us-ascii?Q?b8CKVCHRkJ80a9FZVUFsqtqbRoG6z9qLtnMEjKyMTlcUGAulNQ4cmCAnntjL?=
 =?us-ascii?Q?xR1HIlwsojxbYFjJwAGgyCWAILoIkCIAtwypGf2GHMgYaOPrFsGgLYBEJlnj?=
 =?us-ascii?Q?odubn00Y5z8GwnGOdeGBQaHE+m5jgVHoEQEti4GrfR/3FbwHjIWD4Qi55Zi3?=
 =?us-ascii?Q?QjwYnSlhQFiWO7PG+YAgL7MyxAwqcgBmSYBranKs367qwM3qjtbAmKOBJf+K?=
 =?us-ascii?Q?hqalnun3qMMykz5kS9bzWHMqKvT1Rcqp1/gz8JiYjra0oH2D434OHAhEpjZF?=
 =?us-ascii?Q?v3M8f3+VeThwc0DGfVE6UQInrd+7Sj8KEOZ5iePEXsVNBwED32coI2mZtj8Y?=
 =?us-ascii?Q?KXClFnLhJ1FQOj4P7H0uU5SkgVlwbBe3Vq+zy21d4VQq8FNOGfkkV3Lbppmb?=
 =?us-ascii?Q?+F7/Ya50LgB36a6aeqBJqdcSFCkZBi2CArobu9yWHwqJPLZyjaOIEnRUsrv/?=
 =?us-ascii?Q?8uVKQYqQMOiRcDrNkZJ8XUF+EyGFkYF4g/KxLtp0jD8rbB79kvEgXyjaHv86?=
 =?us-ascii?Q?ZO4eQSZEbKIM8jTx+ORlUsBCakt4jpJpGWnBrKh5aJRKrpZ7ffvnvDDfExlZ?=
 =?us-ascii?Q?44JiYSJD0+nwj4HkhZA/Kul3sgSfvi+vZqiti3jtJfrMe6jSGXXOOF52fCSk?=
 =?us-ascii?Q?Wzi7hwZRZAbLiqHWAk8SwUGVcmNrbXnuKqtheJ1CR8mRKbWg9LYuZUHZ52Xo?=
 =?us-ascii?Q?+w7E6RnEWFZXGahtmsqlDwerJ5YopOt0+97iwCxKM23gj2BOBfL5YFDSHhdJ?=
 =?us-ascii?Q?HpXxifp6XNAUGD1/n2T1BRqWxRi5u0iTMusfQp1F5NKbNhEm7Tp33X26haI5?=
 =?us-ascii?Q?d0HDhAtN+UskG1AwBtO3v37jsqVMKBYxaQYoW/a0YGBNsFj5tUvK65akjMXX?=
 =?us-ascii?Q?2UDTwAx7QDrFtBO9wVkzmYDPdx5zPqbudnMtIFpw/W3eR0u8bgV5sKiUBrAG?=
 =?us-ascii?Q?NcoW4xNcbd7yW3OFoyIPrU1vZN8GQuhzFxsbrYOGBdjQA6B6PvD2aeNdD+Vb?=
 =?us-ascii?Q?dndV9sJbds+JnOG5TzDGUpIqG1pPpmj/bYQmA5iFSs1JlQoohcIcxjNdRwA+?=
 =?us-ascii?Q?YYJP2UynxMyM3qC/mXA7kls+/i8himMB4kTxJ52xMdT62uuI082m0VONH6X5?=
 =?us-ascii?Q?hLg1U3nJ2DGMB44LhDQI8d3f/0SwotzLt8kHri/h1yffaqp25oNVSS3L2zDy?=
 =?us-ascii?Q?aRWYBKTEFKNzhR9l5xH1SmURj9IK3oCmn10V+uW+Pc9tO6FP+zUIfvQ5Daaj?=
 =?us-ascii?Q?x4BqBAR1U7lx/nxdYYYYIBaaZAjDCmxq+QvIEp5dlI7y35vJVsrDdvYO8sIh?=
 =?us-ascii?Q?n6hi1cHEY7VNeSKeYoUZFkhs6ikhX+olSjQqFMIqwv4yAqV327VsTQ7wHMhu?=
 =?us-ascii?Q?wQ3BRvg/A6EYRnoGVhI+zMmJ0a6ayhV8NpWTx/tP/PbnE2RuRNbjPcWO8U92?=
 =?us-ascii?Q?KhlZkc4hlzx5ONE66X1SelGEiSrkfBYjAggjPEoIiONWAqvCjKSSlsUIXmkM?=
 =?us-ascii?Q?7ZRQGOhN/knoHmJU0OBnVjGRRMyASesATiTJ8hnJ4y8KWnaZSlNtsxpXBqJY?=
 =?us-ascii?Q?Bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 037d1e68-017d-4050-a537-08dcd36424eb
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2024 19:50:25.1728 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bq/yZVAlm/kIMdIoR8I2O0l23Y+sdDb7MEhPIZVNAi6crLDixQJse49Nh866HAOJ5C+R7U0iz5JNR5qt+E5TkEYqQsOjcEoxz8UHkPJIY14=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8332
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

On Thu, Sep 12, 2024 at 05:46:06PM +0300, Juha-Pekka Heikkila wrote:
> On Intel Xe2 hw tile4 is not supported with horizontal flip
> 
> bspec 69853

The notes on this page seem to say that, but there's also bspec 68904
which seems to have two two conflicting statements that apply to Xe2:

        "Horizontal flip (mirror the image from right to left) supported
        with tile modes other than linear."

implies this _is_ supported for Tile4 (and TileX), but immediately below
that,

        "Horizontal flip (mirror the image from right to left) is not
        supported with tile mode of Tile4.  Horizontal flip (mirror the
        image from right to left) is supported with tile mode of
        linear."

says pretty much the opposite for Tile4 and linear.

It might be worth explicitly confirming this with the hardware guys and
getting them to re-visit the tagging of these bspec pages to avoid the
conflicting information.


Matt

> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c            | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_fb.h            |  1 +
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 12 ++++++++++++
>  3 files changed, 26 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index d2ff21e98545..c9038d239eb2 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -439,6 +439,19 @@ bool intel_fb_needs_64k_phys(u64 modifier)
>  				      INTEL_PLANE_CAP_NEED64K_PHYS);
>  }
>  
> +/**
> + * intel_fb_is_tile4_modifier: Check if a modifier is a tile4 modifier type
> + * @modifier: Modifier to check
> + *
> + * Returns:
> + * Returns %true if @modifier is a tile4 modifier.
> + */
> +bool intel_fb_is_tile4_modifier(u64 modifier)
> +{
> +	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
> +				      INTEL_PLANE_CAP_TILING_4);
> +}
> +
>  static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
>  					     u8 display_ver_from, u8 display_ver_until)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
> index 068f3aee99aa..bff87994cf2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -35,6 +35,7 @@ bool intel_fb_is_ccs_modifier(u64 modifier);
>  bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
>  bool intel_fb_is_mc_ccs_modifier(u64 modifier);
>  bool intel_fb_needs_64k_phys(u64 modifier);
> +bool intel_fb_is_tile4_modifier(u64 modifier);
>  
>  bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
>  int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 17d4c880ecc4..4de41ab5060a 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1591,6 +1591,18 @@ static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
>  		return -EINVAL;
>  	}
>  
> +	/*
> +	 * Starting with LNL and BMG tile4 hflip is not supported
> +	 */
> +	if (rotation & DRM_MODE_REFLECT_X &&
> +	    intel_fb_is_tile4_modifier(fb->modifier) &&
> +	    ((DISPLAY_VER(dev_priv) >= 14 && IS_DGFX(dev_priv)) ||
> +	     (DISPLAY_VER(dev_priv) >= 20 && !IS_DGFX(dev_priv)))) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "horizontal flip is not supported with tile4 surface formats\n");
> +		return -EINVAL;
> +	}
> +
>  	if (drm_rotation_90_or_270(rotation)) {
>  		if (!intel_fb_supports_90_270_rotation(to_intel_framebuffer(fb))) {
>  			drm_dbg_kms(&dev_priv->drm,
> -- 
> 2.45.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
