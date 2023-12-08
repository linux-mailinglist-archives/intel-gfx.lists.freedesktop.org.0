Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6196E80A82E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 17:07:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DF0A10EAB3;
	Fri,  8 Dec 2023 16:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4110110EAB3
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 16:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702051653; x=1733587653;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=EFlm2Ha+UKCGJ9m8iDHsEhWjwM45Vvb8aNMNho+A5cw=;
 b=ej4btN7CqiJrgbHB5GYOHOQwFfjb9NQdDgGctuohIn0uzT94NtEYXQGf
 YSyMlB5GC+OsflcXOvPJqRs1fxadC0A3I4AODzgMXECE2ifVtQgSP1TvP
 LSsVh39sWMnKDbWDaUvSEwIXdW6qSBFBNCMJ+b3emSs7uUZiFwDJC3pdm
 7Qj+/N/fAMSqMiNFdf1adFi1ZAB6iJh84vT2HdakZBdomjJzw+DFAnLul
 X1AnRZjYyaoE0zba43gqVPQ1/NtS6RtnlXmEw5mfyDK7RqKQpfG+ZFxa3
 Sqny2We7zj+HhKlqHDogYcol5+z8G8XUJYXWA4A+NTzVf5elrBqvjMqAb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="1280731"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; 
   d="scan'208";a="1280731"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 08:07:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="838172125"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="838172125"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 08:07:31 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 08:07:31 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 08:07:31 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 08:07:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FF8CNIYi43cMysggq1mT+yXdzF3zr4RlaAO3nTlBG2CFYepJNsxKTvbwTbiGemGa9zL2Z6oRlmhsnH2ziFJoRJ22f0cFn70TvMCxN+4EzJqXOztqTFfbZU514/Ui5TtmN74SbkAcS8RNMEK3z7nS2Lzk6DqlJDzcLOUZLSE2Y+O9kkXha/ibcG0drJKGy8tjb7bm8ytUrDle37sKOuoese93CWJq5ZDiGE5VuW/xmHIhaUNG6vjNEMl+ghZdAjJCdBLKKkdsYM+c4MTAIvB/pn/TEozJWPyW3ebYrrrgzNPsM3dnwQUh5vaMTkhWRGcdjUOjlcJDCW2bxYQh4Mj0NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P42Iy2pBL4GZ8uvbiA2d0WLIA0Mp1Jv3ogHiZDwblxc=;
 b=Y6iqMiwyrziycY5DWcJBD0cuVpHk77qtMC2l0Wi4uX/uK1ozJh4zxleD2cPShiqVI2Ls53MhqOSHiRon+VKgBkhEb1dYzg6O9AnH5ckJO269YCpFtv69tgb9fuipYEwozDGkPKWB6KNQ/XdqqEPl7DJgspw8oA6brb7jUZIOnsjE/eGsuwDZM0suREfVK2Zw3ttFGTVHIi4ljg9mdffpBAZ80RngAFyHyl7lqAbPfFlqK1xJrrea5XCsNKL0p6fCaep0nnXDZu2yiLn2YvNUtaknwDzNPUMoCl5HXeqB3/Dm9datOHiSNh99HpM8C/VuxV2+/qlm+MweKMpz3v5+iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB6551.namprd11.prod.outlook.com (2603:10b6:8:b9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 16:07:28 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 16:07:28 +0000
Date: Fri, 8 Dec 2023 08:07:26 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915: fix display ver 12-13 fault error handling
Message-ID: <20231208160726.GB5757@mdroper-desk1.amr.corp.intel.com>
References: <20231208112008.2904497-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231208112008.2904497-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR11CA0108.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::49) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB6551:EE_
X-MS-Office365-Filtering-Correlation-Id: c1c1470c-254e-482a-88ae-08dbf807c6ba
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: toTE4C7bb+kKMkqK6oNe20PCHIAmX2wRcGIRD/FnkikhsjA0fNmJ935+B0+mTUwMSLKelT9cP/QHxAp7F4HcHfrzvNtfpoU9jd1xzodClNBlr1js54+u+2Nt8ApAXYjp+25thWaQK4YxrtbaF0y5zT/66cPlz43qYqHnmpTCXfAJCM6D1/N/O8v24w1Ry3tPDYAKC7WrMmBL5WZZ93XdXwP+mQ6cj6zz1RyiLQL104fVCd3xryLdbDsKHX9kb4zri7dTWV4OxS07OYz7PmjhabuDu99IuLuMU9FfNuxLLQR6GTTCF6Q0dq4oxY+QqOn+92Zrj9kBQIqHIyxCWAJwxDvq4ga/25ZkBwdO4Oc3U0Uc+xjgyl4/zH4gOsXh3UhIVu8rDt1GoOv7/HhVzO7mg+8oLuR1RgUXk5qlNOXS9kUK4H2gOxgKN+YbGFYd/wdQYs2XwNpcx3hHkD1k/LuWbQ0FZ7DhOcjX5v/U2fgRoVwNvb4nRJw341ulxsvq1XMua17Wtp+Dv6PzSN7uBMacVL07YHzvp1H6V6PuN4qhg7w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(346002)(396003)(366004)(39860400002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(2906002)(6512007)(33656002)(6506007)(82960400001)(86362001)(478600001)(4326008)(6862004)(8676002)(8936002)(66574015)(1076003)(26005)(5660300002)(316002)(6486002)(966005)(66946007)(6636002)(54906003)(66476007)(66556008)(83380400001)(41300700001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?xqiszzgsL+4zODiRv2e/EFdbP4z/cB+k126wrWHQwz32czAMr2+nmGmICw?=
 =?iso-8859-1?Q?nBnWckEtAZr4ANhhLPkaCF7F+XSM1jZ/mdp7cW5mi+8LTqh+tn9EyqvnuL?=
 =?iso-8859-1?Q?HnR1JYdWqxq5fVoEekuD61d1w97LaEQfwyNbRDIIILl1x1LkACLGKVIm0p?=
 =?iso-8859-1?Q?vvc1bLCJQEzPsOyCsoQxpCGhWEp8QRkP7X9gVj1gEcpm48ZCBTkRVv5hxF?=
 =?iso-8859-1?Q?AtM+FQyXKtmFWFgI/6y/xNxVz7MnD9lC/1MWJhVV2gpQYhJckHLalvJr0M?=
 =?iso-8859-1?Q?EEf+77D6hjqayMLu8vydbQm9tVzw4/taduckU1iO4KdWY8UDASULXBeBef?=
 =?iso-8859-1?Q?6P5DSdJ0Qu4LLONmCBD3Zmxuou7y29znAVQGwHcbaTmcoHrl4Brc7OFBFY?=
 =?iso-8859-1?Q?UplqohNi20IHi6tDJ4F4gPbNHNJ7gZNxJV70vazFqsa4TWMoXgN3QhqmMG?=
 =?iso-8859-1?Q?kzFKt8LaVNpv4pIkQh594XPY4xuBr9X9z/XokpbyRQBh80kSVpIVf4+UM2?=
 =?iso-8859-1?Q?31oJ2gTQYeXW7+mKY7AWy3ZrBLbWiY/UHv4pauFyezpOQ1kQJEg1w/IfRK?=
 =?iso-8859-1?Q?Clq0AYi/EjMRFVeP1CwvQkIosLxw4I8M+OdNhjSgc1R8NpCQlEsCizhSxm?=
 =?iso-8859-1?Q?WRQ99ka/q8eC94ih82/4FeFKC9+fOCecneuoW53LA57tOlR39eYoenM82N?=
 =?iso-8859-1?Q?U56oIn8lBvGSJw2fq6L1ChZKaIaWApu12H5twNU6/YIQspqM0HPn/fD8W1?=
 =?iso-8859-1?Q?rQDxIU4m8VCMa0NNVDlRaYorwXn8ZpugzGk/9BqD8ttTMqpkvBqfHK2MM8?=
 =?iso-8859-1?Q?KC+XJr5yy7KRTH0kZZQ97YTaRVw16rn/S1gQSc4dQBB9IRlLLeYW7K/7DI?=
 =?iso-8859-1?Q?2lSFoQOIluDOldXVyRv8yt1+xk5RSDlzwpOfLajKQe3dq+j17qxlHL/Ze8?=
 =?iso-8859-1?Q?HH8gjMUKcwArt8UiWlS5xcguq6wViAb6IojqiBKMxJ6Zwv35WMIEUJ6giZ?=
 =?iso-8859-1?Q?d7Y0OEkhMxf6Uu710HmhyA50Ytjfuaj6IEgmvQ5rKki3EmjOUkJ3C2SZrG?=
 =?iso-8859-1?Q?1jTjXoyxLgPQqUuUZboBPF49tHvH0Vl4yvZaBh5awL5YiAG2l/Df7gWsDc?=
 =?iso-8859-1?Q?KrT/gXNivHV2eTIUWPqrinLRMlLPqhHHpGb3gVl33JB4yvP4ysdMBez9AG?=
 =?iso-8859-1?Q?Nn2k5lPY33713g3erCtKv6TVyC814CBb2z2cBAMYG7rurfXhhGU7Z1uc4b?=
 =?iso-8859-1?Q?3tb1+0F0SxgVG2gpnz7F6OFgm+bsMPiw+oFGJPevLYZe+aqJhtV04XuNrV?=
 =?iso-8859-1?Q?7CJghIws3kXm2hLOV94OKt15Ziv5VuEQ8ECSTaHKD2NUcVcGKms4hkAA39?=
 =?iso-8859-1?Q?NkB/wwCvmC3HdmLRB91tfKWYuiKrRcRX7nb+AtewJeWpyU1507yFF1n8dE?=
 =?iso-8859-1?Q?qE08sgv8fBEvwS4MbZBXvHvDOffApzCDWusWNIlD1B3ZnsbYzVF4eRIq9N?=
 =?iso-8859-1?Q?qig5NJ6KVbGXEYWxKaDYdNWZhJpc5PD5RTFNkVWXoCXmHLupm2UAPQRAXH?=
 =?iso-8859-1?Q?ISwncc1Nt0W6H36K+Wlsosm4qjhQ9pNQv1Vtx1tKkurMVubUkAS2f8rIqt?=
 =?iso-8859-1?Q?tJtGcp8Nr+ShiRrzgXgF8N5yRDb0pm4Miw+6dfJ1yWGeqOkByJYLckvw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1c1470c-254e-482a-88ae-08dbf807c6ba
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 16:07:28.7162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3llRvJOOiW2QdUlRQ7pWUvTf1O3zYM1K6gcdhWqqjeOx1cRFmwoMI7KEf0xQmLkwmExy16kyWMbNsk5dl2CB12OX+AaVEvaGS9GHGSQ1ybg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6551
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 08, 2023 at 01:20:08PM +0200, Jani Nikula wrote:
> Unless I'm completely misreading the bspec, there are no defined bits
> for plane gtt fault errors in DE PIPE IIR for a display versions
> 12-14. This would explain why DG2 in the linked bug is getting thousands
> of fault errors.

I think you might be misreading the spec?  On TGL, bits 7-11 are listed
as plane1-4+cursor fault status, and bits 20-22 are listed as plane 5-7
fault status.  Bits 7-11 are tagged with a REMOVEDBY tag that eventually
drops them for MTL onward, and bits 20-22 are tagged with a REMOVEDBY
tag that drops them for RKL onward (which makes sense because those
extra planes stopped existing at that point).

Maybe the bspec's way of displaying things is what's causing the
confusion?  When you see

        REMOVEDBY(xxxx)
        [ Foo, Bar, Baz ]

The "Foo, Bar, Baz" platform list is the *remaining* list of platforms
after the removal is taken into account, not the platforms actually
being removed.  You can hover over the REMOVEDBY link to see the actual
platforms being removed and a link to the change record for that.


Matt

> 
> Bspec: 50335
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9769
> Fixes: 99e2d8bcb887 ("drm/i915/rkl: Limit number of universal planes to 5")
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: <stable@vger.kernel.org> # v5.9+
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 4 +++-
>  drivers/gpu/drm/i915/i915_reg.h                  | 3 ++-
>  2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index f8ed53f30b2e..7bede5b56286 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -834,7 +834,9 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
>  
>  static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>  {
> -	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		return MTL_DE_PIPE_IRQ_FAULT_ERRORS;
> +	else if (DISPLAY_VER(dev_priv) >= 12)
>  		return RKL_DE_PIPE_IRQ_FAULT_ERRORS;
>  	else if (DISPLAY_VER(dev_priv) >= 11)
>  		return GEN11_DE_PIPE_IRQ_FAULT_ERRORS;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 27dc903f0553..fcf980694cb4 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4354,7 +4354,8 @@
>  	 GEN11_PIPE_PLANE7_FAULT | \
>  	 GEN11_PIPE_PLANE6_FAULT | \
>  	 GEN11_PIPE_PLANE5_FAULT)
> -#define RKL_DE_PIPE_IRQ_FAULT_ERRORS \
> +#define RKL_DE_PIPE_IRQ_FAULT_ERRORS	0
> +#define MTL_DE_PIPE_IRQ_FAULT_ERRORS \
>  	(GEN9_DE_PIPE_IRQ_FAULT_ERRORS | \
>  	 GEN11_PIPE_PLANE5_FAULT)
>  
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
