Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C49DD8FEB88
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 16:25:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C63310E974;
	Thu,  6 Jun 2024 14:25:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kdgWPA36";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C8A10E974
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 14:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717683948; x=1749219948;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kQt4ySV6N0QAs7Kxn155qW3ui4A+0Ov8sRTpjBQ60eI=;
 b=kdgWPA36QO/c5w1uryAXOWFWFQs1/1jerjIrk7bfYSMC5Ol1ZD3Ep24R
 BXS0G+8NZpu4iry11jOjRHfMge6k6jueqYn8S8ZGVCq2Gj8FJ8YhU5Mjg
 pffavg29LZzWm33NdhYcV5Phtl8HLgdpeJHSJCxftfNpfPXPTlSToKpFh
 Z/BpBISdyIfUNklcMFI6VKPwmc2kvwAfGBaxN1bQMWiajRjMN2ZangDxL
 aRZ1BZtiOIUmMG7wtIBrrz5vMe7vyw0zR/TawF3Sz8zBoxeAwj8LZK7vh
 71cbd3mNQg1V8JoliUtCMw8b2K8PyNaK9J0tiMy0bYn8uPW+QpiqElMBQ g==;
X-CSE-ConnectionGUID: g3PegvHnSJ+JXbTKf1uSbA==
X-CSE-MsgGUID: /0bTAowJQPGTGd/bAK8PEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14473921"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14473921"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:25:48 -0700
X-CSE-ConnectionGUID: P46UeooiSQmFgmklSVy/OA==
X-CSE-MsgGUID: Bu3HdSKNSbO+7gp2ypDXPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37986858"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 07:25:47 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:25:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 07:25:47 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 07:25:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UACWaC28vri5ESDWZ3ehXF2NBFxkDbO1POGsumDe/T4wDgpavnGDo/2J1t3gYGfiL0be5DTm3LNrjnnCg1qR9HGg8Fsag7fZyOUbEFoqIRS8ZHZYQ10ToDXC3F8UYv9HA3Mu1k+Ec/TB2qUzW5HvbKwL3NR4fsT9x0bh4U5CJlap5xz+ONzkXqVS6UVlylNw/XJtvol6ripNi5fu6MQBQehWcUWJjXNV6RwtSIMizF5GHmvboJ/XBC72sT/ztqsui8hq2RTk3N+eBXzBBBWCNOB0CCC+PXiVrWUCTUsDNDYaqUX3gOYZb4CcplN3iHzf8hC53gDAVkzk+wX/dO2tyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R+rxLwK7FPJkuXYN5SuVuq7+eeN8V9UhQpPqQ2dfZfw=;
 b=jGgWXF6QPQfdpele3jMi3RtWoxlbtT00CRhfjHV7VL6og1eMiW3bGEFTUp8xSkUNqba+EJ7jKOnJDZN+7vECSm94sw9SfbIHrCSrOAfLkvqI3Oo+cKg27Rsu8iLZqK7JEXNaWwWnsn/4vXLYKC0R4gA0eBcp0mjGBArBDCZkO67ymQBBjskmKLMslA2BLX08FC0iNsRj5Ct9CaVa8gUFaIFTyRK9r4UNj1p7nzU0BrKS6Zj4P4yyXdFw6uvvfB25FdjAy9yfL5ZNMTY3JrTkWu4edXTrgg2i4KY2gtxUCfE3ZMk1kzqxrcsdmCyVO5pKlzpkSgQSykxC8J1rS7NElA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA2PR11MB4859.namprd11.prod.outlook.com (2603:10b6:806:f8::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 14:25:44 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 14:25:44 +0000
Date: Thu, 6 Jun 2024 10:25:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/dmc: convert intel_dmc_print_error_state()
 to drm_printer
Message-ID: <ZmHG5ek-46yDvABT@intel.com>
References: <20240606140705.3072987-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240606140705.3072987-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0068.namprd05.prod.outlook.com
 (2603:10b6:a03:74::45) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA2PR11MB4859:EE_
X-MS-Office365-Filtering-Correlation-Id: 5899d29b-17e5-48ee-9f1c-08dc86348d2c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vi0ILJALAcoO2dUo5DfwYt6yFNCQXJ8qPc39KQl2FwyBqUQMxDh78Y+kxE1r?=
 =?us-ascii?Q?djsfYUW8ntmMUTuSAIUOfrLE6N/CgAmu7c8LJ+zLtTKCtMgN3jWR1zDcympy?=
 =?us-ascii?Q?KDEIc+MJpfqNLchIyUyQaQvE8dN1UkGPaSQ/xyMxiigQQMNWer8wLhOyCtRL?=
 =?us-ascii?Q?I+VI60XQZC4QodDKPrAk6MZoLDI/ZvZqdMhE5jpvdrPw2PE7oszx0BF0ulNt?=
 =?us-ascii?Q?G1g3x/ympqyvDbb6/jiQ60fmxl4uFDyxymtFM2tdLJgNpuxMeD40ClRcqc4x?=
 =?us-ascii?Q?rnz//iyTSQoXT74fDivIkWp9ydP5fXF5R79TC39UjIV5Qb9sscW5+7DluiYe?=
 =?us-ascii?Q?SIkNyeX/teCuQddEFyOd6qOg3wDebAjnVX0VBqRYZY1mxaiTnFNvxpujKq9P?=
 =?us-ascii?Q?7nipUB1GtJCZPzAfTPHdto/6TjKt2NufRqRdggnayMsPdwD9wDqwjf/MS2qA?=
 =?us-ascii?Q?1FXh5Rayu9h+wwnHPZWmKdnyWMl/jj8XkAR8QTn1U/i6+goSwaLfLgAQ56+i?=
 =?us-ascii?Q?mtof2vClEP3hPL6kwQPdT7mh2oYa8xmoh2VP+vQ/fqd0gzu11p+itLezl6cE?=
 =?us-ascii?Q?2tVlSsxAWBukA8Xo3+yL+mvL6PZMw2srGYfmGBgkRSCLsA9NspuwcbAvb4Yx?=
 =?us-ascii?Q?ZDMweU2SfnGMoUFoJMABuOzwuUMkS3Y2T1x6DvNCSvdhU+qU+djnAIL2aKsK?=
 =?us-ascii?Q?FNLKwi2s+ITNT9Z8/DYiXucUEXQ6HEoQ7O5HGbdJxB/IabVIexIbkBWUgrey?=
 =?us-ascii?Q?7ITLjrGn1SikDkpgQTJABqn8W8//iPjZRtyjrzNj0x9y/Q9fWB6ahtzQ2XXX?=
 =?us-ascii?Q?hzONXWC22h72cd1bJc8M2KrfRhyPYeh6qZnO6P/tew3Oe6lhUjyqXw7o/N6o?=
 =?us-ascii?Q?AAfunhTigbc6sk19PaAayfsURIxcWIecYpKlBCKZYKPMd4H6RLklv9/c8ivM?=
 =?us-ascii?Q?SsTTt9MughYN+EYOGk+sJnce4SnqC2R4NdEA/MYKhFYBsCD63Sk/+UJ/YevE?=
 =?us-ascii?Q?LleFZpM6GUb6GBM8tN1oFGT1+UAHgLR3d+ts86+1MH2O2spYwaUw7xtPoxDh?=
 =?us-ascii?Q?rAD0hpebKQqlAmAqeyfIuSeejNlwwM+jQhtd8hZ+9g4nIH9+EMB8Vp3XmkK/?=
 =?us-ascii?Q?bLdKvJ+LzmHY5Wv64Sl8t+MNSWu1qY5P8UzP4xIl9XGERlIx83NfgleRt0lc?=
 =?us-ascii?Q?J03GfgCuGuFc0OYmtKR048yMb1h4PoXJiZ6sDLXGfTKoiYGGL5YNWlnT/QHg?=
 =?us-ascii?Q?2uSAetPlP2cg2L/xIbNtV/96eltySsvWi4ooux72k9rg7AJrBHuSHdKfVNJT?=
 =?us-ascii?Q?cClBS2K2e+02doB08mofh4QT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5VmX+kHx8LOkkrRox9hol8z6pczB00m5Tja8TAn0V2Kg/aEiqrbhPob6u/MR?=
 =?us-ascii?Q?IGyPt7keWH+TenRyDFh7iUWMOJGn1lhvX785lmeDh91eCioIsGZJgnEvim+e?=
 =?us-ascii?Q?7b1yV9WW06sIu0rsEurN65o61FatL99Snkrbi1jadYcY44N04KDr/RVegd2a?=
 =?us-ascii?Q?3M/87B3QB3PxrVJggDrOObR8+mx+Z7cRF9xArMv3NVLiH4igbadxaJcU04ic?=
 =?us-ascii?Q?Roh7iAEjYb6be8xnRTlD4cOQ+QHTCJnXB11d9LmWBb+BQFw8IHs8H9tob/tv?=
 =?us-ascii?Q?3lhM/V0nMf7bnkwKGVfnIR6iUScQWA8bVuMBi0+Ng1dHv2GK8rhDdtkvo9aL?=
 =?us-ascii?Q?lTxY1KZDo6bJhxYZBhB5Oid6GL1POl8xdSe9L5OCxo56GdSiXJXDdmhJhIQT?=
 =?us-ascii?Q?yJ4r2m1hMiafjZdCiphYS4IydQIAXc4ZxdXR8ISJKZDnVBUmIwXBvABnyoVj?=
 =?us-ascii?Q?Kzo70dNfYS3SWNsky9268S9ObMruILZ4MKVEeRiPUEpphKN6hVxD6jQA37F/?=
 =?us-ascii?Q?0i0rQGunhOQ8DPmTcEiRyjU2N6VHNDi9D164KCPkML8uVd/I2kFChDtDvRaY?=
 =?us-ascii?Q?LxVmZcBkpn9jmDm49VlPnuOhVdBdJHMLbr0gNfbrNDoRJFpSt8o7KltKPL2Z?=
 =?us-ascii?Q?guXX86i8PD/1mOhAX7U9+QsjszZrcl2TWyonosM3Y2fo28hDg26xjjBYwkt6?=
 =?us-ascii?Q?RaUx3xLDcHmvndS0lJ+xPcOOSyp3Wuk3i1qkiyEE/F/CI3a+xDhhjx7Oh5KN?=
 =?us-ascii?Q?hzvGNOaMbT9XreybzgvWIyGyt/OLy34hn85Y3QIVab04Hnai+DW1wSveW+xg?=
 =?us-ascii?Q?i/3E4yq8kbj6rcLbg1qMvwy211NP+B77moL8tU4I1pQCo7X4nb7XpwvWF5uc?=
 =?us-ascii?Q?8J7JbZV3IQF3zd8xwSdCjpv2p38KKhnlM78zeU3ULfiBdE7SCmrd6mW5o+6P?=
 =?us-ascii?Q?9Uk4mdZIHN/mZ6p2feb7cm1yToiWiY6apnwAxp7lnXH4yTfm0rBD92HB40TY?=
 =?us-ascii?Q?ur7Enr67ZafuqcTlKYElkKY0iqWZFDZcuOiGqdyifMqLpxIp496UzYcuL3bX?=
 =?us-ascii?Q?PBb/4NPTvSgkM1cpl9UVnYvuoBKixUoAR2ELfhnH/kCWjJwqpmE2ffXy3nhG?=
 =?us-ascii?Q?YTD/U7WtFva1mZw7A7EUs6speQ6pzzDEyhE4nfURGaIapCW4ZKSG8xtofRr7?=
 =?us-ascii?Q?pe8+k1Fn0oropjTtUd8siPkbDnAkYblV+6jDeNuLdFb93i1UHxfAqCGPmeiy?=
 =?us-ascii?Q?EvZpKOCYnhC9GV8dk9ADguvehui+TCF4BWNAV67K6nvyg6jmbrRK0KvF3wbh?=
 =?us-ascii?Q?07U1k4p+wta9v+gvAh20FDuiaRhnLM3cS3iN7MOgtrg8ckLRT1uOr5ZDgikx?=
 =?us-ascii?Q?1kWG4cwJdeTGQNs/yKAgCtxx2BbkAsIFQeLC28kYU8hzKVIGueG8XzZqET70?=
 =?us-ascii?Q?DUWevnh0WWAfd16GF9NfYwPbT1nWwKpmU0tOx6gQaXlIb+onzw2wIVaB8F5n?=
 =?us-ascii?Q?POeeLMCJ0cMjdS6967qjOqxRnTC3jUzf3BpKV+68VXRgeXDIg2D/l0x9a98q?=
 =?us-ascii?Q?fWirPP3WAjQ+0bD4aO2xdGkADdopmPmMR6qX501g+LCg4nZ1ukHvU1FY0oCD?=
 =?us-ascii?Q?Ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5899d29b-17e5-48ee-9f1c-08dc86348d2c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 14:25:44.6912 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e0px7Im1b+7hR8buuec5DhJjRQJBEw8Xxk5NuHYUIziGM0+A4zWYi9MUsiPte6yOVsiThG27EFe94E1MGLQBqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4859
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

On Thu, Jun 06, 2024 at 05:07:04PM +0300, Jani Nikula wrote:
> Use the regular drm printer, so we can drop the i915_error_printf()
> usage.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 15 +++++++--------
>  drivers/gpu/drm/i915/display/intel_dmc.h |  6 +++---
>  drivers/gpu/drm/i915/i915_gpu_error.c    |  3 ++-
>  3 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 852c11aa3205..73977b173898 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -26,7 +26,6 @@
>  #include <linux/firmware.h>
>  
>  #include "i915_drv.h"
> -#include "i915_gpu_error.h"
>  #include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_dmc.h"
> @@ -1185,7 +1184,7 @@ void intel_dmc_fini(struct drm_i915_private *i915)
>  	}
>  }
>  
> -void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
> +void intel_dmc_print_error_state(struct drm_printer *p,
>  				 struct drm_i915_private *i915)
>  {
>  	struct intel_dmc *dmc = i915_to_dmc(i915);
> @@ -1193,13 +1192,13 @@ void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
>  	if (!HAS_DMC(i915))
>  		return;
>  
> -	i915_error_printf(m, "DMC initialized: %s\n", str_yes_no(dmc));
> -	i915_error_printf(m, "DMC loaded: %s\n",
> -			  str_yes_no(intel_dmc_has_payload(i915)));
> +	drm_printf(p, "DMC initialized: %s\n", str_yes_no(dmc));
> +	drm_printf(p, "DMC loaded: %s\n",
> +		   str_yes_no(intel_dmc_has_payload(i915)));
>  	if (dmc)
> -		i915_error_printf(m, "DMC fw version: %d.%d\n",
> -				  DMC_VERSION_MAJOR(dmc->version),
> -				  DMC_VERSION_MINOR(dmc->version));
> +		drm_printf(p, "DMC fw version: %d.%d\n",
> +			   DMC_VERSION_MAJOR(dmc->version),
> +			   DMC_VERSION_MINOR(dmc->version));
>  }
>  
>  static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index fd607afff2ef..54cff6002e31 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -8,9 +8,9 @@
>  
>  #include <linux/types.h>
>  
> -struct drm_i915_error_state_buf;
> -struct drm_i915_private;
>  enum pipe;
> +struct drm_i915_private;
> +struct drm_printer;
>  
>  void intel_dmc_init(struct drm_i915_private *i915);
>  void intel_dmc_load_program(struct drm_i915_private *i915);
> @@ -22,7 +22,7 @@ void intel_dmc_suspend(struct drm_i915_private *i915);
>  void intel_dmc_resume(struct drm_i915_private *i915);
>  bool intel_dmc_has_payload(struct drm_i915_private *i915);
>  void intel_dmc_debugfs_register(struct drm_i915_private *i915);
> -void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
> +void intel_dmc_print_error_state(struct drm_printer *p,
>  				 struct drm_i915_private *i915);
>  
>  void assert_dmc_loaded(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 625b3c024540..3fee7ad0ec51 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -836,6 +836,7 @@ static void err_print_gt_engines(struct drm_i915_error_state_buf *m,
>  static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
>  			       struct i915_gpu_coredump *error)
>  {
> +	struct drm_printer p = i915_error_printer(m);
>  	const struct intel_engine_coredump *ee;
>  	struct timespec64 ts;
>  
> @@ -873,7 +874,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
>  
>  	err_printf(m, "IOMMU enabled?: %d\n", error->iommu);
>  
> -	intel_dmc_print_error_state(m, m->i915);
> +	intel_dmc_print_error_state(&p, m->i915);
>  
>  	err_printf(m, "RPM wakelock: %s\n", str_yes_no(error->wakelock));
>  	err_printf(m, "PM suspended: %s\n", str_yes_no(error->suspended));
> -- 
> 2.39.2
> 
