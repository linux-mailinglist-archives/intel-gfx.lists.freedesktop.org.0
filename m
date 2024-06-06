Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 694D28FF126
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:49:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE5810E9D4;
	Thu,  6 Jun 2024 15:49:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i2x/2D47";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9986610E9D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688961; x=1749224961;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+Y8vdzNJx+1f3JkccbSUBe7rkBmC8Co62QPLE0dQuSU=;
 b=i2x/2D47fnHgtogsnMWAc8c2Jc3pfdUSSlCFqwdVztTijiZWC77Q1836
 NBXBGTkwkKOYpVsglAE4aDsAlffc9mQsKXnW5SLJcqt+NX6xLKQ+Fi3Wt
 Ku+KyLQHVskntbOmgeVdaH8+ppiDv5MPUllJldrbgLJCTINnu03HZjAKv
 LVK3fWBsqAypKVW+7Kv34lpSDwTLMhC2kIYH1yUc2dseZkQsDGuIiytx2
 eql1Cdd/H9+NCiJYIsAf3GY5lHOZwyztx02QlE3yAOOpoB0PmMDStcDAC
 qnzfulyyP8qyJAhJOhokw2JSzBCEFMzNV/639M3yAVw6TAHU2H1/VCGSy A==;
X-CSE-ConnectionGUID: hd9zF7pITjegBoQXMJ6cvQ==
X-CSE-MsgGUID: AWrP+B49SQ6XcK1xeue9Qg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="31864917"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="31864917"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:49:21 -0700
X-CSE-ConnectionGUID: kiQKUrm1Q6+XvYpwRTzqbQ==
X-CSE-MsgGUID: t675jpq7SpGMBQbaR9NlQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="75476046"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:49:22 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:49:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:49:21 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:49:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GttraBEDgk08wdKROgO1EfyvNdfo3wXi1mEME7mBQGJ7stvDf7oKw2rjMGzQdnRwnMlt8JaWoARErhwZ4Za5ytxhirOhba/IPOIfcRThJ/ZtH2KXlvPJ6jMbKIfrBtfXhOWibrhCywuziAollJckhpVJw0OnPnNXASEUFMEKimtonoY6+dU/uP87rFI11yhfo9D5QwHVChGFrxQ0EbwMcpEUwZNzUQ/B7W80Y2o9n2NoXvYD0tCodHCHWxK3eVLFQJZATSc9drLr3ZQIxOjSd8WAOL5C3wB+2SgxbJnsKKKkso4rRBEvWSrnMV5M3+i1P5VIwIjkYYQB02yMRKu+7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6PgbCxBEVvxhlbKFeOsSSo/a3D18tG+zWe1Dj2lERyM=;
 b=mZ1aqnVnBZhpTNENJrYrC4FCAOclvbwJfiKRkm341213Tf+yPrIsI7I43+vGeEaVmj1EOAVu+xq5eJHTlZ8uijG0s8Fm3v0bw3V3e/ClJHxpmUmWKIs1+tnVawPEqxklS3Jl/7uM8VM6kt4RuwHd630vtIqMUmDN0iQlkbANbAuPnQqK+tfCi5/EOZQXMwnkt2SD/1QcVput7iUGJfMFx//S4L2NfB8AF6i8QKSZJWYdCOlYxY6nS4GghQpS9ifbpxhoYlYIe+KWUcwbxDeKxwoN2sGyVzsjdu8lShZ/RTSYOEJabp74BuKfj/gi2cRLA1gMaMrGb3fljdQ9EobG7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM4PR11MB5229.namprd11.prod.outlook.com (2603:10b6:5:39f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 15:49:19 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:49:19 +0000
Date: Thu, 6 Jun 2024 11:49:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 28/65] drm/i915: pass dev_priv explicitly to DSPFW3
Message-ID: <ZmHafCRQfp5TbtuP@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <856978ed413e537b7d46eed5e8d93bdfd7c80fc6.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <856978ed413e537b7d46eed5e8d93bdfd7c80fc6.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0098.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::13) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM4PR11MB5229:EE_
X-MS-Office365-Filtering-Correlation-Id: 769ae5e3-ce54-469b-769e-08dc86403a05
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/uxDX4VlEptSpTKogEgYtLKsIKx2p6R13+df77gEjuRHKUDgCfpqukxf9n/k?=
 =?us-ascii?Q?DBerdW54SJt1npPmcMbSYG0xcrA6Znv0DXbRCxrNYLcWEDKFSAcZ02ppBcxS?=
 =?us-ascii?Q?IUouZIOoglSk+QHCLx413gmP/p4NB/5jcBLm+UTxheaXj4W0Ph86p5Zq6vdF?=
 =?us-ascii?Q?0rj6Ks2Xy0bVssK694zdADsS7wyb0bCr79y54tSevfZ7V4RflCMWDp/iYbCC?=
 =?us-ascii?Q?ZhPzFftGeLdXFf0hHGUGEZiOXw1sjQ72991mFk07+GvB2FpATQtSSxgZg0+g?=
 =?us-ascii?Q?kFUsCZGrQ6lZcDWqa5klrDOBsLk2AsuZdpcAKnpIg6PDiPd0B6XwCysCuSOT?=
 =?us-ascii?Q?fEFaWmBPY7M4FOev5raaM/Gv/Unl2CPx4YplDOP9OZTFxJhSh6AJb/6edz8I?=
 =?us-ascii?Q?Ha9mbU5MHjWA+uThb+dL+v7WXHyQVtdPtEyhLPSkAHJD0nOYNYxLjoWjHkH3?=
 =?us-ascii?Q?D66iu9KBrwUBAQv9RDi3VuyU3rtjYlvK2345OvVee5T0PKSAq2FnhJx1d8zG?=
 =?us-ascii?Q?upv8hM2xXvS9CIyv/vJBSDnm2/cTpxYvI77aaHvz0OrtxO7lV6y6wP+x7fZO?=
 =?us-ascii?Q?llBc3teH6jNaBHCoGTnO1jj5gKO5vnCdVycgwPHIh9k3gGNd3jQ6bCbKpE33?=
 =?us-ascii?Q?EQRHL4GBHjQF56ngw8E57hm70vLd3IUBrp+8N+2yKKYoOxH6g+KI4tI277uQ?=
 =?us-ascii?Q?8NnzTk93DwCvHamquQ6XfctS/7vqlv2D9coJP1N3CzlV/ZtRsIv7IIBBKHPB?=
 =?us-ascii?Q?xt1n//j2lTxh1W8TqFAIS14pYWBPzDu77yKuR34O7W3doEeVVLhmMB8DHcKr?=
 =?us-ascii?Q?9sEcN203CbNKPDiiSJNsiqXqCDzLp3139Eqnk8RrBSUE4hIVhrb9DyXYiqwp?=
 =?us-ascii?Q?7J3pgUlgWrS2m3u+M12wBx7lLqaxafUP6wKjTAo4Pug+r5QzH8ffsfTqoezx?=
 =?us-ascii?Q?JYvWtTMpf9UQwDRYilFqiZmtWo7E5zJkaKbYkOIJmICQGFp1vCy8GqzhVCLp?=
 =?us-ascii?Q?BmoFb5gh3zseYtuPmNtg8PQuw0gNJXcdQp2c19xiwxXHxOUWRHuGNUlFC4IU?=
 =?us-ascii?Q?zHRcLHLlSJ+dK7WchuotQef+X7YZXZ3XXRprZjj4lym3KutIDhpals28nzjC?=
 =?us-ascii?Q?8Z1MsmHVahSG8TO/l02i0f8luYHM4Oih1i4933IRKgLY5wmqu1noCCxyuaVW?=
 =?us-ascii?Q?V3AT9lsEORMafKXNgR+43tLA3ytDbzXPbH5WfqjzsOxg+oRMSSIKC8o6OcMC?=
 =?us-ascii?Q?aDBdjhNob9SB3N7PwhAnRjYENnG5Wzm0sY/Vj2fKqdLlGq3ePoEm9WK/zdtU?=
 =?us-ascii?Q?q5U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WpBpETVjAk1JJ+4LgY8vnp1Jb4VVnc2OXXtbyAI3VxHKh3rmJcrzaCWRuWv0?=
 =?us-ascii?Q?c1Ssbe9PzQxvsre1s9o8u3PsKfaMMLITKeaCAvJrSCUvl0FvX3ULyPXHLbCz?=
 =?us-ascii?Q?gxHbo3h5YyjUpyoXpqPo5Kgsu21nLb+eJonmxqFG3xk/k/iPrPvslJUuOjon?=
 =?us-ascii?Q?FAWYZuaiVp4kYu2D602LEJcWQTcw7PU2PmRJMdCMMfuS3XXOLbKDrmxwYTOE?=
 =?us-ascii?Q?jgvu2CyF4x9zqjvJPLJCgf9+R7Ctlw0iKu+bGg7iEq2TPitl7qYjjnyRkJ13?=
 =?us-ascii?Q?7+z/T7Na8zH57MYZ4jdt7iJ07Voz8jjxC2MXbYlxpvvlhIRK9uEgrVprzZge?=
 =?us-ascii?Q?EMpaO5XnsmsHNT4P3jIuIwhBxJ+LTYfZ258fW6RRGOeudXGQ5eZl6WfHPw4K?=
 =?us-ascii?Q?uttDZ/WXqpAiMCRTTKuBuR4N7S4nHFZAxVycxIrKTnWdedzrMh7YNQzJIiMx?=
 =?us-ascii?Q?rucqo0qCi6t0LMr5Hmt+HxMfVRq8Ypp2aq7hESij+ZAGrFfcEo5EXx8SNwNA?=
 =?us-ascii?Q?QQQZLtPwmlCMIYJIaW7JCrpiQvDF6SVocF0uKL8FBT54Z3VVnXtjzDWCAeSq?=
 =?us-ascii?Q?JNhrJ9cFiNoRp/19xJ0PKpQ+eL7Ms8ioN61+qMjnRjYNEF8UMXJH/jO9q631?=
 =?us-ascii?Q?RElVXjlYDqtoPMeXEc/Cbmo7ojhG6KcJSm2KaAUTD6om1BEIr5veZk6eEoC2?=
 =?us-ascii?Q?RVJp1I6ZHAzLT1wCYh+aRjcMorwVdcqAW5XOngMA8yH9pdPwDM4KvzynSxXh?=
 =?us-ascii?Q?cKVMPmifhJ1mZ1xFfKw95+2X/90n2sckoKvV6/0AUrBFH/PKFcj3FoT2vD7k?=
 =?us-ascii?Q?4VX528L9njVjO8CgIv0fZbl29jP3tEAZJV4TMOfCIEBTbBXdBbzHfZCBCHmo?=
 =?us-ascii?Q?fvKbALR66rPTmaJPOFvYNkFdEWUoAqBY4c8wIH2fXMKBeWcB2ZBc5FqO6ID6?=
 =?us-ascii?Q?/ao5sleIIcDg11LfsTtFnMjosk24i3tClxKHiyKZeXEuJYQRqRcsUtgj2sYw?=
 =?us-ascii?Q?rnXP6kH1mZdUf3dl3CzzXuY44549PkIGMg4NtIA2Y2jAiy2KWT3yVm3PQLNe?=
 =?us-ascii?Q?N8KU3DP0gvssVr36dX/gmVs2l42MFaAEbtL6VHfHkgBaXn6qmRoGdFR7suRu?=
 =?us-ascii?Q?ahX0VENoNHhNCykt/4xdhucghsP1xQRQQVN/FwDHShjBDeaUTl5omVdGjzM6?=
 =?us-ascii?Q?RJU0qCP3QAKnAkarvDdm9WzxZdjcD2WNLBR/LVP1CmobQCeq1G4kzw4e5yT1?=
 =?us-ascii?Q?GkJxssJzFJJVYnpMpg7wPXczgHYEYeKR//VM/ACsbwHsZVQOiv07w3KUY2MM?=
 =?us-ascii?Q?bVqIaY3GnpAQtHvD6qreSR7sELabxiMgNZzBcIwFCk/6r4BoTC8JlC3Zhkiy?=
 =?us-ascii?Q?L/+8zRiRhTVQUlwb3hJ5lNYLayXOVoDRTl1J3Ln77WGd9Kunf7KIkXxsgwWY?=
 =?us-ascii?Q?9bFRAG4bmGvKTEN6m5uvDw/sytlUnpDFGxpCRh3AcCfQxylZK201AIf2WB8D?=
 =?us-ascii?Q?A6q+TzFg5S+UFnuwMZYAe+jOw5KEWc8jFdzEqBhRW0bH325rIQHfRf24SCxf?=
 =?us-ascii?Q?BgThj+i9sGX6trJsgEpeTQ3frYVxSNfeueuBPR14?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 769ae5e3-ce54-469b-769e-08dc86403a05
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:49:19.0760 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TMwcKSrs3+O96fwh/cQbdaIF1enO2OXVMgrNkOTxjCUwcKgJXs2J7ASrtBfkEaknvDM8GDpTFjt642m1xEiAMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5229
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

On Tue, Jun 04, 2024 at 06:25:46PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the DSPFW3 register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c        | 27 ++++++++++---------
>  .../drm/i915/display/intel_display_debugfs.c  |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h               |  2 +-
>  3 files changed, 17 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index 1e11d66d1a7e..3fe24bae0728 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -149,14 +149,14 @@ static bool _intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl
>  		intel_uncore_write(&dev_priv->uncore, FW_BLC_SELF, enable ? FW_BLC_SELF_EN : 0);
>  		intel_uncore_posting_read(&dev_priv->uncore, FW_BLC_SELF);
>  	} else if (IS_PINEVIEW(dev_priv)) {
> -		val = intel_uncore_read(&dev_priv->uncore, DSPFW3);
> +		val = intel_uncore_read(&dev_priv->uncore, DSPFW3(dev_priv));
>  		was_enabled = val & PINEVIEW_SELF_REFRESH_EN;
>  		if (enable)
>  			val |= PINEVIEW_SELF_REFRESH_EN;
>  		else
>  			val &= ~PINEVIEW_SELF_REFRESH_EN;
> -		intel_uncore_write(&dev_priv->uncore, DSPFW3, val);
> -		intel_uncore_posting_read(&dev_priv->uncore, DSPFW3);
> +		intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv), val);
> +		intel_uncore_posting_read(&dev_priv->uncore, DSPFW3(dev_priv));
>  	} else if (IS_I945G(dev_priv) || IS_I945GM(dev_priv)) {
>  		was_enabled = intel_uncore_read(&dev_priv->uncore, FW_BLC_SELF) & FW_BLC_SELF_EN;
>  		val = enable ? _MASKED_BIT_ENABLE(FW_BLC_SELF_EN) :
> @@ -668,7 +668,8 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
>  					&pnv_cursor_wm,
>  					pnv_display_wm.fifo_size,
>  					4, latency->cursor_sr);
> -		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_CURSOR_SR_MASK,
> +		intel_uncore_rmw(&dev_priv->uncore, DSPFW3(dev_priv),
> +				 DSPFW_CURSOR_SR_MASK,
>  				 FW_WM(wm, CURSOR_SR));
>  
>  		/* Display HPLL off SR */
> @@ -676,17 +677,18 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
>  					&pnv_display_hplloff_wm,
>  					pnv_display_hplloff_wm.fifo_size,
>  					cpp, latency->display_hpll_disable);
> -		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
> +		intel_uncore_rmw(&dev_priv->uncore, DSPFW3(dev_priv),
> +				 DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
>  
>  		/* cursor HPLL off SR */
>  		wm = intel_calculate_wm(dev_priv, pixel_rate,
>  					&pnv_cursor_hplloff_wm,
>  					pnv_display_hplloff_wm.fifo_size,
>  					4, latency->cursor_hpll_disable);
> -		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
> +		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3(dev_priv));
>  		reg &= ~DSPFW_HPLL_CURSOR_MASK;
>  		reg |= FW_WM(wm, HPLL_CURSOR);
> -		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
> +		intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv), reg);
>  		drm_dbg_kms(&dev_priv->drm, "DSPFW3 register is %x\n", reg);
>  
>  		intel_set_memory_cxsr(dev_priv, true);
> @@ -732,7 +734,7 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
>  			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_SPRITE0], SPRITEB) |
>  			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
>  			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
> -	intel_uncore_write(&dev_priv->uncore, DSPFW3,
> +	intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv),
>  			   (wm->hpll_en ? DSPFW_HPLL_SR_EN : 0) |
>  			   FW_WM(wm->sr.cursor, CURSOR_SR) |
>  			   FW_WM(wm->hpll.cursor, HPLL_CURSOR) |
> @@ -779,7 +781,7 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
>  			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE1], SPRITEB) |
>  			   FW_WM(wm->pipe[PIPE_A].plane[PLANE_CURSOR], CURSORA) |
>  			   FW_WM_VLV(wm->pipe[PIPE_A].plane[PLANE_SPRITE0], SPRITEA));
> -	intel_uncore_write(&dev_priv->uncore, DSPFW3,
> +	intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv),
>  			   FW_WM(wm->sr.cursor, CURSOR_SR));
>  
>  	if (IS_CHERRYVIEW(dev_priv)) {
> @@ -2076,7 +2078,8 @@ static void i965_update_wm(struct drm_i915_private *dev_priv)
>  		           FW_WM(8, CURSORA) |
>  		           FW_WM(8, PLANEC_OLD));
>  	/* update cursor SR watermark */
> -	intel_uncore_write(&dev_priv->uncore, DSPFW3, FW_WM(cursor_sr, CURSOR_SR));
> +	intel_uncore_write(&dev_priv->uncore, DSPFW3(dev_priv),
> +		           FW_WM(cursor_sr, CURSOR_SR));
>  
>  	if (cxsr_enabled)
>  		intel_set_memory_cxsr(dev_priv, true);
> @@ -3537,7 +3540,7 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
>  	wm->pipe[PIPE_A].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORA);
>  	wm->pipe[PIPE_A].plane[PLANE_SPRITE0] = _FW_WM(tmp, SPRITEA);
>  
> -	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3);
> +	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3(dev_priv));
>  	wm->hpll_en = tmp & DSPFW_HPLL_SR_EN;
>  	wm->sr.cursor = _FW_WM(tmp, CURSOR_SR);
>  	wm->hpll.cursor = _FW_WM(tmp, HPLL_CURSOR);
> @@ -3574,7 +3577,7 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
>  	wm->pipe[PIPE_A].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORA);
>  	wm->pipe[PIPE_A].plane[PLANE_SPRITE0] = _FW_WM_VLV(tmp, SPRITEA);
>  
> -	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3);
> +	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW3(dev_priv));
>  	wm->sr.cursor = _FW_WM(tmp, CURSOR_SR);
>  
>  	if (IS_CHERRYVIEW(dev_priv)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 86d9900c40af..b538a8204124 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -77,7 +77,7 @@ static int i915_sr_status(struct seq_file *m, void *unused)
>  	else if (IS_I915GM(dev_priv))
>  		sr_enabled = intel_de_read(dev_priv, INSTPM) & INSTPM_SELF_EN;
>  	else if (IS_PINEVIEW(dev_priv))
> -		sr_enabled = intel_de_read(dev_priv, DSPFW3) & PINEVIEW_SELF_REFRESH_EN;
> +		sr_enabled = intel_de_read(dev_priv, DSPFW3(dev_priv)) & PINEVIEW_SELF_REFRESH_EN;
>  	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		sr_enabled = intel_de_read(dev_priv, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8b642cb0d9b7..05e0013813f8 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2046,7 +2046,7 @@
>  #define   DSPFW_SPRITEA_SHIFT		0
>  #define   DSPFW_SPRITEA_MASK		(0x7f << 0) /* g4x */
>  #define   DSPFW_SPRITEA_MASK_VLV	(0xff << 0) /* vlv/chv */
> -#define DSPFW3		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x7003c)
> +#define DSPFW3(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x7003c)
>  #define   DSPFW_HPLL_SR_EN		(1 << 31)
>  #define   PINEVIEW_SELF_REFRESH_EN	(1 << 30)
>  #define   DSPFW_CURSOR_SR_SHIFT		24
> -- 
> 2.39.2
> 
