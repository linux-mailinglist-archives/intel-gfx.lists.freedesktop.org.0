Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1638CDA2A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 20:47:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D41DB10EA6B;
	Thu, 23 May 2024 18:47:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i7fm+PHU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 265B110EA55;
 Thu, 23 May 2024 18:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716490069; x=1748026069;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wJwYqP5Kpd7RBWvG2k83Gh8ZFsnuth8c7x23Tug9whA=;
 b=i7fm+PHUejwW96wqUvZ/Yvt64PoLgmj7qG1j/EphC3KiJUOX+s4zSwYX
 4z+kVzvlLxawGBFwuLiQdYCFENx327ybLsWQqubh4Dihm62hJAqJgEMyn
 ROkcDFjdajTO0OY1RcpozyOCgrQNDPYpxEGp3+CZJK2mGlwfz+RdZKKPD
 WHJIwg9kCcVt5NCnWQ1KPZtn2Hah0FfODIBFccfkvO1UBd8VkTFotW1mI
 zSKYEzWrXYVjauHrUccj1nUiJiMjAI5HBMffGXxhJCe1Rq+7T63ClNeGc
 t+jPDV+p4aNNBqtv1Vcxfa7Mv9Z7vu9lt7/XF7+CI9yMZVrYemjZ/AgNE w==;
X-CSE-ConnectionGUID: KLl9HZA6QBeqwsg6lSavSA==
X-CSE-MsgGUID: bz01yIVLQQiPRW/Wo5Lo8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="23405369"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="23405369"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 11:47:48 -0700
X-CSE-ConnectionGUID: 8dtjo3S+TiyNafQHrniNZA==
X-CSE-MsgGUID: e755tMXMTceEKeFzzT0v0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="33865876"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 11:47:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 11:47:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 11:47:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 11:47:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VhjT1J+jzHZv2ad6cgcUs8v3oFbvx2JLCzkTTrCnAMYW5khR7a+b9GLS3RjrwfZ1v9zOb6myVej2diUiDbBoNeIgZ9u9iLbonTLoL3+ic+KAJPRA6XRUYOB2CHC5M7mksYA5ssu5ECd1hnbjVWPtayPrHgWXXaetp46YqrOsr0SwjXcRdpy1vakESOfLzjabmsKmpHFxWEV9GlxTDzB2Dg4RjzcCZj7qJkEKu/Sys32X/sMqQtGtKQvHWpshjuITfCRsPVjyXMjmFveNFGivJuKVaxOua9Q0pjyk6W8Xrm5lHjuwCYZiUCjmauE7rTraeTyesKxOzQD2Jedt9P9Bpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GP2AvvIPJvV0NV6GeBBAFjYEGJuRvG3rrgwVSySoF/A=;
 b=GcKDuXgmkOXbgn0IwD0o3fKi8iZqNsW31uwK0TtW76B1deXtqbMuXlXAuDpuJRU6iMaTX5ThfIRAJtUBi5/pbLoiwO1m9aZNn9NhZ1TXCsrD4qAclD6mrZUlqwUv8PtGnDFs6pEhZ/Fb5BpqAQ8PLnPmHXV7vqyMY79HU4JTzn1gR7yL2KPS8NcDLaWJxSuYoCHHE0osteGCJwn/NFkZL/KRBTrgCrBjjFrY2SIsvZCjg80DtD3zADiKffgfITy5KL9EM2u8i1BQJW0PB0nL7mx/6hKXD7FBLNUNIUIk36JUdxi9/Tf9KXIBr7injb249oXNNJUIbnw6gbMLdUvNRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BY1PR11MB8005.namprd11.prod.outlook.com (2603:10b6:a03:523::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Thu, 23 May
 2024 18:47:42 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.035; Thu, 23 May 2024
 18:47:42 +0000
Date: Thu, 23 May 2024 14:47:38 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 05/10] drm/i915/display: add platform descriptors
Message-ID: <Zk-PShUokzY2VbqW@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
 <45425c155608403efc149d4a022c0b443aa71200.1716399081.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <45425c155608403efc149d4a022c0b443aa71200.1716399081.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0108.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::49) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BY1PR11MB8005:EE_
X-MS-Office365-Filtering-Correlation-Id: affc6a10-b875-4df1-853a-08dc7b58d3ba
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WNGWX9Z/iySj/QU5FFTBB3+36010sPPz3UiOCG3iOM1iN7fGcyaV09PdkDvy?=
 =?us-ascii?Q?CCSNOlbYAW68dNJoxH8Ijlw3aBFgWxywWtqi/Rf2Yt3J6y/r2q23zwuuGui6?=
 =?us-ascii?Q?u7dV/Y8ATVXk33dS4BvoIbKhEf4iG75dWP0B2r0mGGuFWNm2qiXiVVDqlf+j?=
 =?us-ascii?Q?kc96j0f+2hrPY343beVEOdpiYNIvz4c5AdBJ9May+Zyvjd7BrM6NBSL1JeUb?=
 =?us-ascii?Q?niNGuxOHy7xlw79gROzfeeKUpxBOQ6qJZt4YbM7fBLHlU1hQsaKZ9bgoxKRL?=
 =?us-ascii?Q?oT4+k1dslIZzz7ytesonjWTMev1h/247TQmCwIDfaap5lPUJ0g+4QMcYoPzR?=
 =?us-ascii?Q?4IIeDOqJzDLfrPWxlpfnQO1hhi2YuyIY9kEjIyIzlXGgWzUtjH+xSfrtaBV2?=
 =?us-ascii?Q?wYqMH6/tiNdEzRYVIvExEuj+YgtED9/i1lnYdlyXiOkAuViKO20ULkOVcMgf?=
 =?us-ascii?Q?9fowjc9kyTMGQ8o13PZJ1iTpBoRBEkvGrDIOgfoVLxSSBkdsPjJnfnPCwZrh?=
 =?us-ascii?Q?hf4byg8orvKs6H0bCBjbayMT3UnhHGpx8G59v7/ZdYLb5gjC4E5ZIb8LV5+B?=
 =?us-ascii?Q?gfHj9mvw5gNDJe2VgBDPTZoek71vjaavSRA+wg1DE72bstvJ5YNdGMgyzv98?=
 =?us-ascii?Q?qKnBpF3CpEcPb74sknwzfzxQJL7Js6JQDm76nnpZ/6ah/xdPEKSVL/zp8glX?=
 =?us-ascii?Q?VOaeH3ulbwCogIXxpcE8C8oqDun3m/guIFhP/AWWCUq67yTnwJAALerFsopT?=
 =?us-ascii?Q?hKt9mR4JuyjjncUDywuyNz/qhT2iAg+62zcnLq8752Y9gnKx7YfAJm/Ikf5p?=
 =?us-ascii?Q?3UbaL5Vibeo6jfTxXvBTERtoRTeUiKjFfTwQZqnKia+aK4xiRZGToEH6vmiF?=
 =?us-ascii?Q?r1r8QkSmUOqRy5SAnu08M/hdbgAk4tv/MbUGgAnDSzqwsZSRBoZrZ2MdKPYt?=
 =?us-ascii?Q?KYS54v7uJmmN4SF+U6YR6Tpur89yvb4W8+/RNwed1wSnA6WIIm7iU1Bj3qaa?=
 =?us-ascii?Q?w/G60ZSsfjlQ/BEuRbEZCRecCHM4MIG2FBoikMUfGhf005pBI4l5TZvVss8l?=
 =?us-ascii?Q?nQKLxR9wwPCiT3EBGYkkeUJvqLwyQ1paL1faZBNTGEyTm82hBB/rsDUJNzA3?=
 =?us-ascii?Q?OfO9nEJqtuegt9MgH/003JpTlhYuUqOYpqdxsMLPY7nrDpfMlqEYqW1uyveu?=
 =?us-ascii?Q?NjFQFgbVbcH4d4brwZ0gFX/5zfB2PUoCullyCIeK/sWMF8aGUXPUG7cEBlir?=
 =?us-ascii?Q?q9r9PZiPgDAoOyWqb8U2oiO3x6Hb4e6ybVB5UMTXxA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?orbgfefx0cdTTQBYPsWai+6ZT7zc/1pQNu/WVZ6CQTAfsKep0XPwcbm1Chpp?=
 =?us-ascii?Q?L4M7gdo1f4El/uGlqSoYZ2hhtG0GFZJWDm8wzIo/Rb2seaY3LUjQprFA6pgs?=
 =?us-ascii?Q?c+qgjxdXCWn3R08CZzHjx75YRxhaJsauwbNyUY++dG+lt72DEakpzj8IMm6y?=
 =?us-ascii?Q?oR2e5UufLfN5FWJA2S4NoP1S1czq6cJNPTv1zPr8F8Ay/+WXJkclLIl2PDfF?=
 =?us-ascii?Q?He8XGg9tfnHF+t8G2bcBx9ehepoSZxpL56t2hwrCfdIEK9udkVxFrCEJgLXT?=
 =?us-ascii?Q?kD5s84WF2ftgC0gZIdKRtXbPEWcoyxyM7HNT/i/1qusduyXHSev78yuTMwMl?=
 =?us-ascii?Q?I7kduGgCmPI9Wv6QEYKM6zXbhQ/fWUP5pLVqVg+tfnOEqzdmxgNotvLgWtIP?=
 =?us-ascii?Q?ypyjZoaKTeZMfrnCR4i8y/lQT/4FwsEP+XCKr30AA9100DODT63F5sWX3Rio?=
 =?us-ascii?Q?JmBNehA0uAOH5Ew1F905o3RS41RYhPQ4kG+D/s0EyvJ2q0kaJ8GNU7DmTkSr?=
 =?us-ascii?Q?qUteMkVZE6pHxXuy4FmoeVj8Ehk/SFmqQcmfaMeMHq5X/WvppZUKcgI4W4x+?=
 =?us-ascii?Q?rSCETUYRDsmqM7PR4/cjsGTMn653amscsUPhUDgax0C8s6FA2JGXh2oTJ9T/?=
 =?us-ascii?Q?CPgilnfB+LvJ9Jae6qHAXLylQrBpHgvr0nIlgSuQwdkctwxBoyPmi0AYZeT7?=
 =?us-ascii?Q?CpktXK17U0VHpFvqkZrMzvcofa6uWZ8RE40PX95fFF+n/WGLKecvNuGAfQkM?=
 =?us-ascii?Q?XqaEiUmi75/9Z4TgIzUqqxUnI+VhKu1P+qNiKTd6Aq3Jk0lVVFSEH3zZjxVe?=
 =?us-ascii?Q?/k/eY16X8aJyDfQIXHn4a2Oq9RRhhnUqwUXBN4IEGCeES9Fc4ezX4jehcVu0?=
 =?us-ascii?Q?WFWeyhmvZg6fPX54OjBSLJC1XoLuliHUWsnPVZ37dLH2Dg66mfyJV7sPLArG?=
 =?us-ascii?Q?E3Vxx8uG6fX7ZebkVo2MGqPXayLPHAbbE//WcmDLDGUZwwNaq8JoPAmUqB2j?=
 =?us-ascii?Q?DUghN1IP07dt60yS2tOm+qT8AsZ78hXh+yCkxPIKDhnPaD9SEhiao/ZfJbIs?=
 =?us-ascii?Q?zSuMz2veGYC5Y6ifCaD3w5OCEhy3QeewL6Om1qB8vTOQV3dijcyNe09NUGmW?=
 =?us-ascii?Q?b9b888IKh2dqUMt9lqSvqrU/sFEUqBA2oQxeHgizlKPgZwTQBD/mtBUchWau?=
 =?us-ascii?Q?0e+YfyukxA0s9snCJ8FPAejXfXXHFofhaHmYQRT3AqhIg+KnYFr1YRIvYY+4?=
 =?us-ascii?Q?Yen16L+iR/O9pM7I6CDNy4e0pksikXRbf32QU5CRnjZO6AjNJo8ERxydmuZZ?=
 =?us-ascii?Q?LhIZusdun5GStsi5N94/uYwEiBPQMIhXD9KWzz6JsgbGnaVGGSgS6e9ogpaU?=
 =?us-ascii?Q?ph0z1DKFi38o9Q80LtgHBOqcOdo2Rr9w6WZxhF+ATHRSfqG9YKWBrG5uvFgE?=
 =?us-ascii?Q?nfs8Y0AG/yYWSjtw15yLPayV8lE/cGu+GkF1NDxNN3+5UPdK31S0aK50DLD9?=
 =?us-ascii?Q?PGnu4p9BNvNvVQcnfWbQefFPW6EF8c3F0g9oo41x8Gwc1U6KYaCRnNyLcA67?=
 =?us-ascii?Q?pD98ddyw5MCluWuQH5rcwvdjtqbTW9YE70nnQMqPkNTJrqIfmHrGGVHK9A76?=
 =?us-ascii?Q?6Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: affc6a10-b875-4df1-853a-08dc7b58d3ba
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 18:47:42.2205 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rdGijATJmtJYbH+uYPKIaaPIIP3RgZwSHmz1A4OL8y5FVgr/lBxMT1Gpxa+v5zy7ruaWdrqgBoc20F+UH2vepg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8005
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

On Wed, May 22, 2024 at 08:33:42PM +0300, Jani Nikula wrote:
> We'll need to start identifying the platforms independently in display
> code in order to break free from the i915 and xe IS_<PLATFORM>()
> macros. This is fairly straightforward, as we already identify most
> platforms by PCI ID in display probe anyway.
> 
> As the first step, add platform descriptors with pointers to display
> info. We'll have more platforms than display info, so minimize
> duplication:
> 
> - Add separate skl/kbl/cfl/cml descriptors while they share the display
>   info.
> 
> - Add separate jsl/ehl descriptors while they share the display info.
> 
> Identify ADL-P (and derivatives) and DG2 descriptors by their names even
> though their display info is Xe LPD or HPD.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 558 ++++++++++--------
>  1 file changed, 326 insertions(+), 232 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 56b27546d1b3..d1e03437abb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -20,6 +20,10 @@
>  __diag_push();
>  __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
>  
> +struct platform_desc {
> +	const struct intel_display_device_info *info;
> +};

I had to jump to the latest patch to understand why this single item
in a new struct... later it makes sense...

> +
>  static const struct intel_display_device_info no_display = {};
>  
>  #define PIPE_A_OFFSET		0x70000
> @@ -200,33 +204,41 @@ static const struct intel_display_device_info no_display = {};
>  	.__runtime_defaults.pipe_mask = BIT(PIPE_A), \
>  	.__runtime_defaults.cpu_transcoder_mask = BIT(TRANSCODER_A)
>  
> -static const struct intel_display_device_info i830_display = {
> -	I830_DISPLAY,
> +static const struct platform_desc i830_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		I830_DISPLAY,
>  
> -	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C), /* DVO A/B/C */
> +		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C), /* DVO A/B/C */
> +	},
>  };
>  
> -static const struct intel_display_device_info i845_display = {
> -	I845_DISPLAY,
> +static const struct platform_desc i845_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		I845_DISPLAY,
>  
> -	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
> +		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
> +	},
>  };
>  
> -static const struct intel_display_device_info i85x_display = {
> -	I830_DISPLAY,
> +static const struct platform_desc i85x_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		I830_DISPLAY,
>  
> -	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
> -	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
> +		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +	},
>  };
>  
> -static const struct intel_display_device_info i865g_display = {
> -	I845_DISPLAY,
> +static const struct platform_desc i865g_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		I845_DISPLAY,
>  
> -	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
> -	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* DVO B/C */
> +		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +	},
>  };
>  
> -#define GEN3_DISPLAY \
> +#define GEN3_DISPLAY   \

I had noticed a trend in all of your recent series, to replace the long tab
or space before '\' with a single space. But then here you change the single
space to multiple spaces. Intentional?

>  	.has_gmch = 1, \
>  	.has_overlay = 1, \
>  	I9XX_PIPE_OFFSETS, \
> @@ -238,52 +250,64 @@ static const struct intel_display_device_info i865g_display = {
>  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
>  	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) /* SDVO B/C */
>  
> -static const struct intel_display_device_info i915g_display = {
> -	GEN3_DISPLAY,
> -	I845_COLORS,
> -	.cursor_needs_physical = 1,
> -	.overlay_needs_physical = 1,
> +static const struct platform_desc i915g_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		GEN3_DISPLAY,
> +		I845_COLORS,
> +		.cursor_needs_physical = 1,
> +		.overlay_needs_physical = 1,
> +	},
>  };
>  
> -static const struct intel_display_device_info i915gm_display = {
> -	GEN3_DISPLAY,
> -	I9XX_COLORS,
> -	.cursor_needs_physical = 1,
> -	.overlay_needs_physical = 1,
> -	.supports_tv = 1,
> +static const struct platform_desc i915gm_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		GEN3_DISPLAY,
> +		I9XX_COLORS,
> +		.cursor_needs_physical = 1,
> +		.overlay_needs_physical = 1,
> +		.supports_tv = 1,
>  
> -	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +	},
>  };
>  
> -static const struct intel_display_device_info i945g_display = {
> -	GEN3_DISPLAY,
> -	I845_COLORS,
> -	.has_hotplug = 1,
> -	.cursor_needs_physical = 1,
> -	.overlay_needs_physical = 1,
> +static const struct platform_desc i945g_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		GEN3_DISPLAY,
> +		I845_COLORS,
> +		.has_hotplug = 1,
> +		.cursor_needs_physical = 1,
> +		.overlay_needs_physical = 1,
> +	},
>  };
>  
> -static const struct intel_display_device_info i945gm_display = {
> -	GEN3_DISPLAY,
> -	I9XX_COLORS,
> -	.has_hotplug = 1,
> -	.cursor_needs_physical = 1,
> -	.overlay_needs_physical = 1,
> -	.supports_tv = 1,
> -
> -	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +static const struct platform_desc i945gm_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		GEN3_DISPLAY,
> +		I9XX_COLORS,
> +		.has_hotplug = 1,
> +		.cursor_needs_physical = 1,
> +		.overlay_needs_physical = 1,
> +		.supports_tv = 1,
> +
> +		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +	},
>  };
>  
> -static const struct intel_display_device_info g33_display = {
> -	GEN3_DISPLAY,
> -	I845_COLORS,
> -	.has_hotplug = 1,
> +static const struct platform_desc g33_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		GEN3_DISPLAY,
> +		I845_COLORS,
> +		.has_hotplug = 1,
> +	},
>  };
>  
> -static const struct intel_display_device_info pnv_display = {
> -	GEN3_DISPLAY,
> -	I9XX_COLORS,
> -	.has_hotplug = 1,
> +static const struct platform_desc pnv_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		GEN3_DISPLAY,
> +		I9XX_COLORS,
> +		.has_hotplug = 1,
> +	},
>  };
>  
>  #define GEN4_DISPLAY \
> @@ -298,34 +322,42 @@ static const struct intel_display_device_info pnv_display = {
>  	.__runtime_defaults.cpu_transcoder_mask = \
>  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B)
>  
> -static const struct intel_display_device_info i965g_display = {
> -	GEN4_DISPLAY,
> -	.has_overlay = 1,
> +static const struct platform_desc i965g_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		GEN4_DISPLAY,
> +		.has_overlay = 1,
>  
> -	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
> +		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
> +	},
>  };
>  
> -static const struct intel_display_device_info i965gm_display = {
> -	GEN4_DISPLAY,
> -	.has_overlay = 1,
> -	.supports_tv = 1,
> +static const struct platform_desc i965gm_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		GEN4_DISPLAY,
> +		.has_overlay = 1,
> +		.supports_tv = 1,
>  
> -	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
> -	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* SDVO B/C */
> +		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +	},
>  };
>  
> -static const struct intel_display_device_info g45_display = {
> -	GEN4_DISPLAY,
> +static const struct platform_desc g45_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		GEN4_DISPLAY,
>  
> -	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */
> +		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */
> +	},
>  };
>  
> -static const struct intel_display_device_info gm45_display = {
> -	GEN4_DISPLAY,
> -	.supports_tv = 1,
> +static const struct platform_desc gm45_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		GEN4_DISPLAY,
> +		.supports_tv = 1,
>  
> -	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */
> -	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* SDVO/HDMI/DP B/C, DP D */
> +		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +	},
>  };
>  
>  #define ILK_DISPLAY \
> @@ -340,112 +372,128 @@ static const struct intel_display_device_info gm45_display = {
>  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
>  	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
>  
> -static const struct intel_display_device_info ilk_d_display = {
> -	ILK_DISPLAY,
> +static const struct platform_desc ilk_d_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		ILK_DISPLAY,
> +	},
>  };
>  
> -static const struct intel_display_device_info ilk_m_display = {
> -	ILK_DISPLAY,
> +static const struct platform_desc ilk_m_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		ILK_DISPLAY,
>  
> -	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +	},
>  };
>  
> -static const struct intel_display_device_info snb_display = {
> -	.has_hotplug = 1,
> -	I9XX_PIPE_OFFSETS,
> -	I9XX_CURSOR_OFFSETS,
> -	ILK_COLORS,
> +static const struct platform_desc snb_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		.has_hotplug = 1,
> +		I9XX_PIPE_OFFSETS,
> +		I9XX_CURSOR_OFFSETS,
> +		ILK_COLORS,
>  
> -	.__runtime_defaults.ip.ver = 6,
> -	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
> -	.__runtime_defaults.cpu_transcoder_mask =
> +		.__runtime_defaults.ip.ver = 6,
> +		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
> +		.__runtime_defaults.cpu_transcoder_mask =
>  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
> -	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
> -	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
> +		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +	},
>  };
>  
> -static const struct intel_display_device_info ivb_display = {
> -	.has_hotplug = 1,
> -	IVB_PIPE_OFFSETS,
> -	IVB_CURSOR_OFFSETS,
> -	IVB_COLORS,
> +static const struct platform_desc ivb_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		.has_hotplug = 1,
> +		IVB_PIPE_OFFSETS,
> +		IVB_CURSOR_OFFSETS,
> +		IVB_COLORS,
>  
> -	.__runtime_defaults.ip.ver = 7,
> -	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> -	.__runtime_defaults.cpu_transcoder_mask =
> +		.__runtime_defaults.ip.ver = 7,
> +		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +		.__runtime_defaults.cpu_transcoder_mask =
>  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
> -	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
> -	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
> +		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +	},
>  };
>  
> -static const struct intel_display_device_info vlv_display = {
> -	.has_gmch = 1,
> -	.has_hotplug = 1,
> -	.mmio_offset = VLV_DISPLAY_BASE,
> -	I9XX_PIPE_OFFSETS,
> -	I9XX_CURSOR_OFFSETS,
> -	I9XX_COLORS,
> -
> -	.__runtime_defaults.ip.ver = 7,
> -	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
> -	.__runtime_defaults.cpu_transcoder_mask =
> +static const struct platform_desc vlv_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		.has_gmch = 1,
> +		.has_hotplug = 1,
> +		.mmio_offset = VLV_DISPLAY_BASE,
> +		I9XX_PIPE_OFFSETS,
> +		I9XX_CURSOR_OFFSETS,
> +		I9XX_COLORS,
> +
> +		.__runtime_defaults.ip.ver = 7,
> +		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
> +		.__runtime_defaults.cpu_transcoder_mask =
>  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
> -	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* HDMI/DP B/C */
> +		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C), /* HDMI/DP B/C */
> +	},
>  };
>  
> -static const struct intel_display_device_info hsw_display = {
> -	.has_ddi = 1,
> -	.has_dp_mst = 1,
> -	.has_fpga_dbg = 1,
> -	.has_hotplug = 1,
> -	.has_psr = 1,
> -	.has_psr_hw_tracking = 1,
> -	HSW_PIPE_OFFSETS,
> -	IVB_CURSOR_OFFSETS,
> -	IVB_COLORS,
> -
> -	.__runtime_defaults.ip.ver = 7,
> -	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> -	.__runtime_defaults.cpu_transcoder_mask =
> +static const struct platform_desc hsw_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		.has_ddi = 1,
> +		.has_dp_mst = 1,
> +		.has_fpga_dbg = 1,
> +		.has_hotplug = 1,
> +		.has_psr = 1,
> +		.has_psr_hw_tracking = 1,
> +		HSW_PIPE_OFFSETS,
> +		IVB_CURSOR_OFFSETS,
> +		IVB_COLORS,
> +
> +		.__runtime_defaults.ip.ver = 7,
> +		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +		.__runtime_defaults.cpu_transcoder_mask =
>  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
> -	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
> -	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
> +		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +	},
>  };
>  
> -static const struct intel_display_device_info bdw_display = {
> -	.has_ddi = 1,
> -	.has_dp_mst = 1,
> -	.has_fpga_dbg = 1,
> -	.has_hotplug = 1,
> -	.has_psr = 1,
> -	.has_psr_hw_tracking = 1,
> -	HSW_PIPE_OFFSETS,
> -	IVB_CURSOR_OFFSETS,
> -	IVB_COLORS,
> -
> -	.__runtime_defaults.ip.ver = 8,
> -	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> -	.__runtime_defaults.cpu_transcoder_mask =
> +static const struct platform_desc bdw_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		.has_ddi = 1,
> +		.has_dp_mst = 1,
> +		.has_fpga_dbg = 1,
> +		.has_hotplug = 1,
> +		.has_psr = 1,
> +		.has_psr_hw_tracking = 1,
> +		HSW_PIPE_OFFSETS,
> +		IVB_CURSOR_OFFSETS,
> +		IVB_COLORS,
> +
> +		.__runtime_defaults.ip.ver = 8,
> +		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +		.__runtime_defaults.cpu_transcoder_mask =
>  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
> -	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
> -	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
> +		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> +	},
>  };
>  
> -static const struct intel_display_device_info chv_display = {
> -	.has_hotplug = 1,
> -	.has_gmch = 1,
> -	.mmio_offset = VLV_DISPLAY_BASE,
> -	CHV_PIPE_OFFSETS,
> -	CHV_CURSOR_OFFSETS,
> -	CHV_COLORS,
> -
> -	.__runtime_defaults.ip.ver = 8,
> -	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> -	.__runtime_defaults.cpu_transcoder_mask =
> +static const struct platform_desc chv_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		.has_hotplug = 1,
> +		.has_gmch = 1,
> +		.mmio_offset = VLV_DISPLAY_BASE,
> +		CHV_PIPE_OFFSETS,
> +		CHV_CURSOR_OFFSETS,
> +		CHV_COLORS,
> +
> +		.__runtime_defaults.ip.ver = 8,
> +		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +		.__runtime_defaults.cpu_transcoder_mask =
>  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
> -	.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* HDMI/DP B/C/D */
> +		.__runtime_defaults.port_mask = BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* HDMI/DP B/C/D */
> +	},
>  };
>  
>  static const struct intel_display_device_info skl_display = {
> @@ -467,13 +515,29 @@ static const struct intel_display_device_info skl_display = {
>  	.__runtime_defaults.has_hdcp = 1,
>  	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
>  	.__runtime_defaults.cpu_transcoder_mask =
> -		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> -		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
> +	BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> +	BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP),
>  	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
>  	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
>  };
>  
> -#define GEN9_LP_DISPLAY \
> +static const struct platform_desc skl_desc = {
> +	.info = &skl_display,
> +};
> +
> +static const struct platform_desc kbl_desc = {
> +	.info = &skl_display,
> +};
> +
> +static const struct platform_desc cfl_desc = {
> +	.info = &skl_display,
> +};
> +
> +static const struct platform_desc cml_desc = {
> +	.info = &skl_display,
> +};
> +
> +#define GEN9_LP_DISPLAY			 \
>  	.dbuf.slice_mask = BIT(DBUF_S1), \
>  	.has_dp_mst = 1, \
>  	.has_ddi = 1, \
> @@ -496,19 +560,23 @@ static const struct intel_display_device_info skl_display = {
>  		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
>  	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C)
>  
> -static const struct intel_display_device_info bxt_display = {
> -	GEN9_LP_DISPLAY,
> -	.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
> +static const struct platform_desc bxt_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		GEN9_LP_DISPLAY,
> +		.dbuf.size = 512 - 4, /* 4 blocks for bypass path allocation */
>  
> -	.__runtime_defaults.ip.ver = 9,
> +		.__runtime_defaults.ip.ver = 9,
> +	},
>  };
>  
> -static const struct intel_display_device_info glk_display = {
> -	GEN9_LP_DISPLAY,
> -	.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
> -	GLK_COLORS,
> +static const struct platform_desc glk_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		GEN9_LP_DISPLAY,
> +		.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
> +		GLK_COLORS,
>  
> -	.__runtime_defaults.ip.ver = 10,
> +		.__runtime_defaults.ip.ver = 10,
> +	},
>  };
>  
>  #define ICL_DISPLAY \
> @@ -552,10 +620,12 @@ static const struct intel_display_device_info glk_display = {
>  		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
>  	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
>  
> -static const struct intel_display_device_info icl_display = {
> -	ICL_DISPLAY,
> +static const struct platform_desc icl_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		ICL_DISPLAY,
>  
> -	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
> +		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D) | BIT(PORT_E),
> +	},
>  };
>  
>  static const struct intel_display_device_info jsl_ehl_display = {
> @@ -564,6 +634,14 @@ static const struct intel_display_device_info jsl_ehl_display = {
>  	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D),
>  };
>  
> +static const struct platform_desc jsl_desc = {
> +	.info = &jsl_ehl_display,
> +};
> +
> +static const struct platform_desc ehl_desc = {
> +	.info = &jsl_ehl_display,
> +};
> +
>  #define XE_D_DISPLAY \
>  	.abox_mask = GENMASK(2, 1), \
>  	.dbuf.size = 2048, \
> @@ -607,44 +685,52 @@ static const struct intel_display_device_info jsl_ehl_display = {
>  		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
>  	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A)
>  
> -static const struct intel_display_device_info tgl_display = {
> -	XE_D_DISPLAY,
> +static const struct platform_desc tgl_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		XE_D_DISPLAY,
>  
> -	/*
> -	 * FIXME DDI C/combo PHY C missing due to combo PHY
> -	 * code making a mess on SKUs where the PHY is missing.
> -	 */
> -	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
> +		/*
> +		 * FIXME DDI C/combo PHY C missing due to combo PHY
> +		 * code making a mess on SKUs where the PHY is missing.
> +		 */
> +		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4) | BIT(PORT_TC5) | BIT(PORT_TC6),
> +	},
>  };
>  
> -static const struct intel_display_device_info dg1_display = {
> -	XE_D_DISPLAY,
> +static const struct platform_desc dg1_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		XE_D_DISPLAY,
>  
> -	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
> +		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
>  		BIT(PORT_TC1) | BIT(PORT_TC2),
> +	},
>  };
>  
> -static const struct intel_display_device_info rkl_display = {
> -	XE_D_DISPLAY,
> -	.abox_mask = BIT(0),
> -	.has_hti = 1,
> -	.has_psr_hw_tracking = 0,
> +static const struct platform_desc rkl_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		XE_D_DISPLAY,
> +		.abox_mask = BIT(0),
> +		.has_hti = 1,
> +		.has_psr_hw_tracking = 0,
>  
> -	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> -	.__runtime_defaults.cpu_transcoder_mask =
> +		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +		.__runtime_defaults.cpu_transcoder_mask =
>  		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
> -	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
> +		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
>  		BIT(PORT_TC1) | BIT(PORT_TC2),
> +	},
>  };
>  
> -static const struct intel_display_device_info adl_s_display = {
> -	XE_D_DISPLAY,
> -	.has_hti = 1,
> -	.has_psr_hw_tracking = 0,
> +static const struct platform_desc adl_s_desc = {
> +	.info = &(const struct intel_display_device_info) {
> +		XE_D_DISPLAY,
> +		.has_hti = 1,
> +		.has_psr_hw_tracking = 0,
>  
> -	.__runtime_defaults.port_mask = BIT(PORT_A) |
> +		.__runtime_defaults.port_mask = BIT(PORT_A) |
>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
> +	},
>  };
>  
>  #define XE_LPD_FEATURES \
> @@ -703,6 +789,10 @@ static const struct intel_display_device_info xe_lpd_display = {
>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>  };
>  
> +static const struct platform_desc adl_p_desc = {
> +	.info = &xe_lpd_display,
> +};
> +
>  static const struct intel_display_device_info xe_hpd_display = {
>  	XE_LPD_FEATURES,
>  	.has_cdclk_squash = 1,
> @@ -714,6 +804,10 @@ static const struct intel_display_device_info xe_hpd_display = {
>  		BIT(PORT_TC1),
>  };
>  
> +static const struct platform_desc dg2_desc = {
> +	.info = &xe_hpd_display,
> +};
> +
>  #define XE_LPDP_FEATURES							\
>  	.abox_mask = GENMASK(1, 0),						\
>  	.color = {								\
> @@ -795,54 +889,54 @@ static bool has_no_display(struct pci_dev *pdev)
>  	return pci_match_id(ids, pdev);
>  }
>  
> -#define INTEL_DISPLAY_DEVICE(_id, _info) { .devid = (_id), .info = (_info) }
> +#define INTEL_DISPLAY_DEVICE(_id, _desc) { .devid = (_id), .desc = (_desc) }
>  
>  static const struct {
>  	u32 devid;
> -	const struct intel_display_device_info *info;
> +	const struct platform_desc *desc;
>  } intel_display_ids[] = {
> -	INTEL_I830_IDS(INTEL_DISPLAY_DEVICE, &i830_display),
> -	INTEL_I845G_IDS(INTEL_DISPLAY_DEVICE, &i845_display),
> -	INTEL_I85X_IDS(INTEL_DISPLAY_DEVICE, &i85x_display),
> -	INTEL_I865G_IDS(INTEL_DISPLAY_DEVICE, &i865g_display),
> -	INTEL_I915G_IDS(INTEL_DISPLAY_DEVICE, &i915g_display),
> -	INTEL_I915GM_IDS(INTEL_DISPLAY_DEVICE, &i915gm_display),
> -	INTEL_I945G_IDS(INTEL_DISPLAY_DEVICE, &i945g_display),
> -	INTEL_I945GM_IDS(INTEL_DISPLAY_DEVICE, &i945gm_display),
> -	INTEL_I965G_IDS(INTEL_DISPLAY_DEVICE, &i965g_display),
> -	INTEL_G33_IDS(INTEL_DISPLAY_DEVICE, &g33_display),
> -	INTEL_I965GM_IDS(INTEL_DISPLAY_DEVICE, &i965gm_display),
> -	INTEL_GM45_IDS(INTEL_DISPLAY_DEVICE, &gm45_display),
> -	INTEL_G45_IDS(INTEL_DISPLAY_DEVICE, &g45_display),
> -	INTEL_PNV_IDS(INTEL_DISPLAY_DEVICE, &pnv_display),
> -	INTEL_ILK_D_IDS(INTEL_DISPLAY_DEVICE, &ilk_d_display),
> -	INTEL_ILK_M_IDS(INTEL_DISPLAY_DEVICE, &ilk_m_display),
> -	INTEL_SNB_IDS(INTEL_DISPLAY_DEVICE, &snb_display),
> -	INTEL_IVB_IDS(INTEL_DISPLAY_DEVICE, &ivb_display),
> -	INTEL_HSW_IDS(INTEL_DISPLAY_DEVICE, &hsw_display),
> -	INTEL_VLV_IDS(INTEL_DISPLAY_DEVICE, &vlv_display),
> -	INTEL_BDW_IDS(INTEL_DISPLAY_DEVICE, &bdw_display),
> -	INTEL_CHV_IDS(INTEL_DISPLAY_DEVICE, &chv_display),
> -	INTEL_SKL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> -	INTEL_BXT_IDS(INTEL_DISPLAY_DEVICE, &bxt_display),
> -	INTEL_GLK_IDS(INTEL_DISPLAY_DEVICE, &glk_display),
> -	INTEL_KBL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> -	INTEL_CFL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> -	INTEL_WHL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> -	INTEL_CML_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> -	INTEL_ICL_IDS(INTEL_DISPLAY_DEVICE, &icl_display),
> -	INTEL_EHL_IDS(INTEL_DISPLAY_DEVICE, &jsl_ehl_display),
> -	INTEL_JSL_IDS(INTEL_DISPLAY_DEVICE, &jsl_ehl_display),
> -	INTEL_TGL_IDS(INTEL_DISPLAY_DEVICE, &tgl_display),
> -	INTEL_DG1_IDS(INTEL_DISPLAY_DEVICE, &dg1_display),
> -	INTEL_RKL_IDS(INTEL_DISPLAY_DEVICE, &rkl_display),
> -	INTEL_ADLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_display),
> -	INTEL_RPLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_display),
> -	INTEL_ADLP_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> -	INTEL_ADLN_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> -	INTEL_RPLU_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> -	INTEL_RPLP_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> -	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &xe_hpd_display),
> +	INTEL_I830_IDS(INTEL_DISPLAY_DEVICE, &i830_desc),

But here is what I'm not sure if I completely understand/agree...
before this patch is a display device with a display struct
but then it becomes a display device with a platform description
but a platform that is not used by the driver...

I'm probably missing some later jump there.

> +	INTEL_I845G_IDS(INTEL_DISPLAY_DEVICE, &i845_desc),
> +	INTEL_I85X_IDS(INTEL_DISPLAY_DEVICE, &i85x_desc),
> +	INTEL_I865G_IDS(INTEL_DISPLAY_DEVICE, &i865g_desc),
> +	INTEL_I915G_IDS(INTEL_DISPLAY_DEVICE, &i915g_desc),
> +	INTEL_I915GM_IDS(INTEL_DISPLAY_DEVICE, &i915gm_desc),
> +	INTEL_I945G_IDS(INTEL_DISPLAY_DEVICE, &i945g_desc),
> +	INTEL_I945GM_IDS(INTEL_DISPLAY_DEVICE, &i945gm_desc),
> +	INTEL_I965G_IDS(INTEL_DISPLAY_DEVICE, &i965g_desc),
> +	INTEL_G33_IDS(INTEL_DISPLAY_DEVICE, &g33_desc),
> +	INTEL_I965GM_IDS(INTEL_DISPLAY_DEVICE, &i965gm_desc),
> +	INTEL_GM45_IDS(INTEL_DISPLAY_DEVICE, &gm45_desc),
> +	INTEL_G45_IDS(INTEL_DISPLAY_DEVICE, &g45_desc),
> +	INTEL_PNV_IDS(INTEL_DISPLAY_DEVICE, &pnv_desc),
> +	INTEL_ILK_D_IDS(INTEL_DISPLAY_DEVICE, &ilk_d_desc),
> +	INTEL_ILK_M_IDS(INTEL_DISPLAY_DEVICE, &ilk_m_desc),
> +	INTEL_SNB_IDS(INTEL_DISPLAY_DEVICE, &snb_desc),
> +	INTEL_IVB_IDS(INTEL_DISPLAY_DEVICE, &ivb_desc),
> +	INTEL_HSW_IDS(INTEL_DISPLAY_DEVICE, &hsw_desc),
> +	INTEL_VLV_IDS(INTEL_DISPLAY_DEVICE, &vlv_desc),
> +	INTEL_BDW_IDS(INTEL_DISPLAY_DEVICE, &bdw_desc),
> +	INTEL_CHV_IDS(INTEL_DISPLAY_DEVICE, &chv_desc),
> +	INTEL_SKL_IDS(INTEL_DISPLAY_DEVICE, &skl_desc),
> +	INTEL_BXT_IDS(INTEL_DISPLAY_DEVICE, &bxt_desc),
> +	INTEL_GLK_IDS(INTEL_DISPLAY_DEVICE, &glk_desc),
> +	INTEL_KBL_IDS(INTEL_DISPLAY_DEVICE, &kbl_desc),
> +	INTEL_CFL_IDS(INTEL_DISPLAY_DEVICE, &cfl_desc),
> +	INTEL_WHL_IDS(INTEL_DISPLAY_DEVICE, &cfl_desc),
> +	INTEL_CML_IDS(INTEL_DISPLAY_DEVICE, &cml_desc),
> +	INTEL_ICL_IDS(INTEL_DISPLAY_DEVICE, &icl_desc),
> +	INTEL_EHL_IDS(INTEL_DISPLAY_DEVICE, &ehl_desc),
> +	INTEL_JSL_IDS(INTEL_DISPLAY_DEVICE, &jsl_desc),
> +	INTEL_TGL_IDS(INTEL_DISPLAY_DEVICE, &tgl_desc),
> +	INTEL_DG1_IDS(INTEL_DISPLAY_DEVICE, &dg1_desc),
> +	INTEL_RKL_IDS(INTEL_DISPLAY_DEVICE, &rkl_desc),
> +	INTEL_ADLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_desc),
> +	INTEL_RPLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_desc),
> +	INTEL_ADLP_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
> +	INTEL_ADLN_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
> +	INTEL_RPLU_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
> +	INTEL_RPLP_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
> +	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &dg2_desc),



>  
>  	/*
>  	 * Do not add any GMD_ID-based platforms to this list.  They will
> @@ -909,7 +1003,7 @@ probe_display(struct drm_i915_private *i915)
>  
>  	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
>  		if (intel_display_ids[i].devid == pdev->device)
> -			return intel_display_ids[i].info;
> +			return intel_display_ids[i].desc->info;
>  	}
>  
>  	drm_dbg(&i915->drm, "No display ID found for device ID %04x; disabling display.\n",
> -- 
> 2.39.2
> 
