Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB139F1539
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 19:49:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7532810F0BB;
	Fri, 13 Dec 2024 18:49:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HMTNNYXS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C93610F0B7;
 Fri, 13 Dec 2024 18:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734115778; x=1765651778;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yoK+LmbGt0vuXvbfhrn4yy5A4cUlIBZuyf5ak4xukIk=;
 b=HMTNNYXSbE3Np1g2eT1253+LVsZZ1H40kIvcEOl/fdHDUyjCtMVg9xsK
 ibYuc8gRw3zh7e/oOGs5dUOs8GPVx5MjUvIIpwzRUExYeHNU50tTLWIMI
 JmXNoEkuiqcMgRgZK1T9zDej1/SkxTcTaYALvzEh5uSxgO2HfiAOhJVbJ
 I/s41VouYEjR8D8E7sXfDc34G/4nzI3y+lHngKb7XiQoCc4PpWcQV9owF
 aqF7yWqT2egaYYnO+eWHSCHDrDma+BQ58yWcymyIkEpIDlZe1bd9ZlGzy
 0m+FxeyFdCFH/a9jA8XueWkerbfISZdKsVlsaBmaEunouxWnj3BVs1TTO g==;
X-CSE-ConnectionGUID: b7xvmFjJTmG07dHjBsx9Yw==
X-CSE-MsgGUID: 7IFD3ufjR6S5A5zX/gzIcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="45269752"
X-IronPort-AV: E=Sophos;i="6.12,232,1728975600"; d="scan'208";a="45269752"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 10:49:37 -0800
X-CSE-ConnectionGUID: +XGdod37Tnib90V/0znDTQ==
X-CSE-MsgGUID: ndb8XNWbRTCZIQP7Iy9oQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,232,1728975600"; d="scan'208";a="96514226"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2024 10:49:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 13 Dec 2024 10:49:37 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 13 Dec 2024 10:49:37 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 13 Dec 2024 10:49:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xX4bwGuBhM98Nuj7GZ0JhlV3BI5o8/KKxcY+3ICtg6p1vlNhkucD6oDqvSOjEPJQgGyJF5o1Sd+1fg81omUnZOB6GP5EMSzRh99PogD/RmMzdRDr7NdGxcWUQgsMsu3KhKAp22mGuXlfohL1vmapj7xYWHyLjGsvasPMVN9Z8Y83ELEt/iXH2aZqGCWqkGDLwa2OHBFrs2YXKKDO5nGg1HrdHD8ro2qDpi4lK1z+NnyGfbCMpM6e8ZU7xf7pGXQ+Ic/fhHKtasbTiMOHfJw6BxdND1nUKoMXoZzyfmhEgQFXMVsoUtcs3ui3U6e3g+K28P1ktX4Zn3NBq75/c3SyGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F7FRjX72vF6eR3mUyuAqv3/D4YlrVKOjUK0BtoLfgmk=;
 b=W+Xks+Z7aYql5v5BKz8JFR2WRldC3Y5lITMRgwQ8FEcnY52/fZt4NuE/kKTqauoP5QXw1ot5G85qEM9hD5+ZCr3UdJVhEMlMKbFVm72j007gP7jFSNC6C7sOyDpa76s54FGVc3fCNLUbvqkcZvItgZ2h2pXtEgOgElFHs/IfWDTpHOhLfJsVU3zj4wD+IJRRefZNMpcpGRWEHnRiSF9THTPAcdDjbdW1mALRAeF4jH8LBZiPp8u2r96UL4CGp+7P9JrvJrTu5fy1VqOaA5rBEElD4ujEQba7q7UXwWsRErS8N3lvW+RVf/wgNEdvWd7+XwKQX47nlNff6+fwHSGB1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB7758.namprd11.prod.outlook.com (2603:10b6:8:101::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.16; Fri, 13 Dec
 2024 18:49:30 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.8251.015; Fri, 13 Dec 2024
 18:49:30 +0000
Date: Fri, 13 Dec 2024 10:49:27 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Vandita <vandita.kulkarni@intel.com>
Subject: Re: [PATCH] drm/i915/display: Add WA_14018221282
Message-ID: <20241213184927.GY5725@mdroper-desk1.amr.corp.intel.com>
References: <20241212094043.911853-1-nemesa.garg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241212094043.911853-1-nemesa.garg@intel.com>
X-ClientProxiedBy: BYAPR21CA0022.namprd21.prod.outlook.com
 (2603:10b6:a03:114::32) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB7758:EE_
X-MS-Office365-Filtering-Correlation-Id: e1335665-6606-4f32-d115-08dd1ba6e06e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Q8j2MIUaMQFetpEDH0Eb5OkU8xLi7H7kTxrZgVcbDsQZg5mUOBQJyHKncKZy?=
 =?us-ascii?Q?VK1nsc4OfDkXVoWsZqx74UTfcc+NIwMcoeAYKsU4LoRrIdRbpdnCsWwfKwdM?=
 =?us-ascii?Q?dR2TUom0c2Z+fEanCi9Q4xjOGa5akqG54vWcvrieHHjefsb3tcS6SxarOAJx?=
 =?us-ascii?Q?g4TRmQSZ93c7rgFXaJmIGXb2Pp4aW46zZtLU4J8LHHF/JDdXXYboYmmaS+r9?=
 =?us-ascii?Q?DOgM5EMbaiLDSTVM5O/l7is6js0ZuG/YVcdRH3oTgyZb/VHnRSp0+kJnTvt1?=
 =?us-ascii?Q?bKutE3bVL6vaRwSe7ixu4HM3QDAXcdBvcVfDj3q6PxSpMEpi2G7aea12Nxcd?=
 =?us-ascii?Q?OPNvJOs6BPXWCTcriG5X7uba4tjkf2BLc9sOQ09Je86u8VXrBkqHT5/lGzi6?=
 =?us-ascii?Q?x3Oq6qtghPMvAKWD5sWMjEXcIMtnwg6hkHVv1JOgSNYPeVaxkeZvdHaLWone?=
 =?us-ascii?Q?isfGbOeORkgV+cY2akx3J5H68fDSXOQe1Zbns1LqxaLrbyuXfbZ8A76055L8?=
 =?us-ascii?Q?nxRhQAQJd5Ab3471qV8JIdQFTuA9EoP0DqDDTWS22uEeMiyNHdN+vOGmWYY9?=
 =?us-ascii?Q?aj4bA7dD7shNhy3HTVftf/M8uuIMruTxKE0qAycUb5nuexw27qWmUpWGT5CO?=
 =?us-ascii?Q?YwXGfy4s//KOMNA1pPOu+lhoRFFuDZHHS4PBfS61S/wTLvvTeLSIQoQFCw3H?=
 =?us-ascii?Q?3WGEnlBpaKKYrOUoEMBV88WfPZ2nQAQw96FcQlZPSuZ3fRoenaNDfbfvuhyL?=
 =?us-ascii?Q?fQhTLTdTQztEyXyCBmJlGxaZfHiQELmJ0aSNkKIX8U8qQiyj+Meo8wEjzwai?=
 =?us-ascii?Q?PECSm8iuLWullmeUaLkLcR0baXZ3FUh5Z8AbJP3hurXYTz0xxubwQQk6MUUV?=
 =?us-ascii?Q?fbodav4w0E0xxWgd/DFvhDdK3XSVpXWifxeo/ebiMeO8SaWUkoiCLbUTZ8ho?=
 =?us-ascii?Q?GZM6L/Xv4/DVLn6V6AatiP/8Bfaxk2YAhbJRoWeC4y4Fdd+ZLcQXloC6Vohy?=
 =?us-ascii?Q?lm6FBiMeNoLMiWWh0icJHyLuRjyTYRODsXx56mZguWCa3gdZ9zStgTX5EcJd?=
 =?us-ascii?Q?1Wac247vaxcLeWgHhk05qbEIy/ZmiypsxzbA+kg3oeLybyTa08rWu8jv+qsz?=
 =?us-ascii?Q?rBzv51lEwQENugC5JzAZ51q9De1t1M/dth21rbL4F7MHxMIA0mFtbrwS6cOY?=
 =?us-ascii?Q?hRq+L80WCb5IbUR31X6tgHwYsedTsl9SUZU3GKjPTA5PEHOtV6upZknCYrrj?=
 =?us-ascii?Q?3NpAQ8bmwknyQEJvRQHc5WN9b9ELwlyfYu+b0au3GJBP+FuALXmfIG17bAGm?=
 =?us-ascii?Q?AOahNtA+Z3RpkJ1Ps5D31ZSCEmrkz1c8DLbg5H2afLK53A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/XAfTgryJ5++dv4aE8fkDfrTITIZ8DOiG86JsO5sW0EP5bVfe2BJ2smYyyXM?=
 =?us-ascii?Q?xGnUc7QztXxjVCGuJ4E0VcM+na/P/x4bE1m0HnePfH9GkN1sIai4epUfe8Af?=
 =?us-ascii?Q?9YDoH7qyJyF9kNOWsmJHIre4/odyq3QBpDeYJ9BOtwCfAIBe/loXm24wUFM8?=
 =?us-ascii?Q?lRFkYnKbhE2qmmcNc4/eC8W0BvhtxyC3xEoxg/mWmo3qPV8tX2xbARQgsyQU?=
 =?us-ascii?Q?NMsoC1X+93e/kF0PfqDZYYsKyZfbzRx8A+G1PUQf0Deg8ejh2XRAOc/jPkDA?=
 =?us-ascii?Q?CC4SlfpAH4dLt2ufaWaexxEBAizdkq2iUvjRxZBCAcnPV6EYlTBrhplVbY2q?=
 =?us-ascii?Q?PIvLNQTngGR1AjKopHPG0jFPVV0bWdAJETRe5OrYIXv9bRr7GFGicQZnEiEt?=
 =?us-ascii?Q?XLT8C8RnbJx1iYz2Z2eoXcJwqQ8yOQPrNqJ4GnVC5iNyYgn2FWNph4FqFgeO?=
 =?us-ascii?Q?++1uWlgwr/20sAo3SXWzwhme6+6tT49pFxN10ZM+8qReBis0y7ucu2bPftHM?=
 =?us-ascii?Q?s1maszo2CHzY0P5ghpY2gtwHxcX7/QWlQdCRy2Lnh7VXQPNE7y3dlOQYXfdY?=
 =?us-ascii?Q?UQlcPniIYFnYVq9NqVzl/vyUxjYo/ftmdlV1pv52YjJBG8WYKSIHmq9yBzIE?=
 =?us-ascii?Q?fFgWzYmyaTylOQxxDMMWTRcN0JYcfDs70vQx2pP53aoN5YUc9xFwiFUaHJTE?=
 =?us-ascii?Q?mi3Y4BVvl9nlAfDUXbz/QlZ38RB3Hf5gGUz+yS6CE6VoYwP/xAyB5pENuAHF?=
 =?us-ascii?Q?kknAjF8rsBLK2d6SAAVz1rr5b+FJ1rkMiABfE8LMA5GlDpySP70UpskScJ3B?=
 =?us-ascii?Q?HQeNwFwoGFtmfwGycLgdVmnTdvTJq2Tkix6bYRO40P0kmjOFeVbpxdNI9a7r?=
 =?us-ascii?Q?Ykoryw31AQos35GP96xApuCFLd/TOEniliJehXnSo0JB3MZZ1VEVxkaw4vml?=
 =?us-ascii?Q?lRTKwFIBdngSuHdgRQTpQ5tmfw/bzzjlA+harnoaJ2WMs0H/SOWY5P4M0/2F?=
 =?us-ascii?Q?imzYjGoIb4JdmWjc6EOAJn54DE6SRkTDdzmj90NceKxLmhQ9RoT3vFOh0WkS?=
 =?us-ascii?Q?l4ORqx3nisxHzboEaLTCnXoTrwypvjrsc1AZiRTWVXTHF43lHZmcn2qFf61F?=
 =?us-ascii?Q?KwrjsoZsqaWWK5EQfdRHr3H5gZ8P+rrpNjX07/ibsFUhjolyBGz5ByL/i3p1?=
 =?us-ascii?Q?F4Gh1TNfdTaWKJVNZypayfUOYxDRt6pXrwylbHAy3qNnlH2rbmqqMA30+jj0?=
 =?us-ascii?Q?z1OUaLS+Q5DNuW67IQ+sKIA1r1z36savDINPZ1O00RqYXdV/D67vofW5YBz+?=
 =?us-ascii?Q?KpEDp+pMSdiD4cHGe9KdRNPiVqzWlbjx46ts3f7iPSfkFUalDIAbbzxCBTno?=
 =?us-ascii?Q?muibWeXlNX3p3/Fl5TrbYQOTpJcDGNMhiSFWbtjHpPyQ9VN5xafCtg9ZnuoU?=
 =?us-ascii?Q?dA7Qilk5xlG3/rU3GWPf5nLKL/LaG6IXDmC2uLPU7avtys2ah17KjBuvq6S5?=
 =?us-ascii?Q?wumZGcZitWtxkslI7ZcJhJeNo6qbXMNz1S44hCUu7rDY7VLliQAH5m9SvhHW?=
 =?us-ascii?Q?u4bDUYcJeCM6XTNvkq9f7C+0fAHgQWT8ube2vxGpFPmY1JtQJ4MNU+rtcSjf?=
 =?us-ascii?Q?tA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1335665-6606-4f32-d115-08dd1ba6e06e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2024 18:49:30.2854 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IZVg6GeVtWsKF5c8ADjth+64P2saYvyaXwoMieGI24pjKX3Lyya+oj2F1bjFHXtWYZAHFNnDx/166dxyxCiuJL5JGC5/n+znIJFKVO/ZbrI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7758
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

On Thu, Dec 12, 2024 at 03:10:43PM +0530, Nemesa Garg wrote:
> It was observed that the first write to DKL PHY DP Mode
> register was not taking effect, hence rewrite this register.
> 
> v2: Rename function [Mitul]
> v3: Rename function [Jani]
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> Signed-off-by: Kulkarni, Vandita <vandita.kulkarni@intel.com>

"Last, first" name format with a comma like this causes problems for
git-send-email (it thinks the comma is separating two separate email
addresses and winds up sending a copy of the message to a bogus email
address).

Although that also raises the question what Vandita's s-o-b represents.
If she was involved in the original development of the patch, should
there also be a "Co-developed-by:" line too (as described in
Documentation/process/submitting-patches.rst)?

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4f9c50996446..85b7c30aa9e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2099,10 +2099,21 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
>  	encoder->disable_clock(encoder);
>  }
>  
> +static void
> +tgl_dkl_phy_check_and_rewrite(struct drm_i915_private *dev_priv,
> +			      enum tc_port tc_port, u32 ln0, u32 ln1)
> +{
> +	if (ln0 != intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 0)))
> +		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0), ln0);
> +	if (ln1 != intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 1)))
> +		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1), ln1);
> +}
> +
>  static void
>  icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
>  		       const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>  	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
>  	u32 ln0, ln1, pin_assignment;
> @@ -2180,6 +2191,10 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
>  	if (DISPLAY_VER(dev_priv) >= 12) {
>  		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0), ln0);
>  		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1), ln1);
> +		 /* WA_14018221282 */
> +		if (DISPLAY_VER(display) == 12)

The workaround database lists this for both TGL (display version 12) and
ADL-P (display version 13).

At first I was worried that we might be applying this too widely since
it's not listed for other display version 12 platforms (RKL, ADL-S,
DG1), but I see now that won't be a problem since none of those
platforms have MG / DKL PHYs so they'll never descend down to this level
of the code.

So just changing this to "IS_DISPLAY_VER(display, 12, 13)" is probably
sufficient to cover the appropriate platforms (DG2 is also display
version 13, but as with RKL/ADL-S/DG1 it doesn't have MG/DKL PHYs so it
won't see this code anyway).


Matt

> +			tgl_dkl_phy_check_and_rewrite(dev_priv, tc_port, ln0, ln1);
> +
>  	} else {
>  		intel_de_write(dev_priv, MG_DP_MODE(0, tc_port), ln0);
>  		intel_de_write(dev_priv, MG_DP_MODE(1, tc_port), ln1);
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
