Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9261D68E0DC
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 20:06:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E30210E5AD;
	Tue,  7 Feb 2023 19:06:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1B5910E5B1
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 19:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675796766; x=1707332766;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fph7CJfFF5GcqkKx2oeEPE0b544Yq6783uIV7KYXaZQ=;
 b=RFqhUNtbygKF9P/6TNOceoEsDmnFC2N34ghtRKIMkzJbWsIFy9TZPSt+
 5cfOoF3CIuU0hSEs0MN0VoH7mzKxNAH84ZuS9O3tH8sS0WLpBTIbFQdYT
 7B6y+pw7us8r7TDEeIRAciIfFz3TNcbKldUku0sVYQudM36ebx8Kza1dH
 ZMhS3W/vPwH8Jacz7La8RSkDV8WKp4XE/OXwospQ8NKS0LyjkVNx3dvLf
 3NQbpmyaj1eRWsxae35am1yTHcaQfweTiRSCMFVlKh8Bjjjm4rpVF9ml3
 F4Y5pY+37sBbRBZb6W9mF1XOwTOP93/2fmB6FclElXZHOZoEEzxJzWz+n Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="329620432"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="329620432"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 11:06:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="697394544"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="697394544"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 07 Feb 2023 11:06:01 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 11:06:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 11:06:00 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 7 Feb 2023 11:06:00 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 7 Feb 2023 11:05:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gq3WTJ5+tCWxERTWIntyyH5sibLQw8DGkhxxnsHIz3E6Yhf/va2ANBA383K7iWyNmF0GmigOqB+sUJEdkqf9JTNbAoQwgQstv4RtEYKkGn/mqeFB5n0RDAB7rAjUNU107B6xWhmOUvtAymOvmKpUOMyhs7SoURXWl9mD8mDOEtb3cN5RD0yoh9P8T6XitmYdTu7d8jt+0HH1TDl8pPimx47TklxdB6tAZp936WDeAIygLbmEaoWcJQXP5SJar3joN/rJ+lPSip2N/8oFL7UHjLgca80LgeYQd0XHfW6UPHy2/oLUSXgOhUUwQsBN9bfV/U98zTX5Kfy/kheldGZBDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lPlNtOYEKZKa/oLFuGnMo1j9/s4kbFkEitqPRfDMX/c=;
 b=P/Jm90n8OjQH6GLH/2QvputT+DYv1fP1qVNAo08B7mbXgYmUrJS+LYdcOkoPvOelN0KZlkAwyTSfrGcAtwvXfjf1ys4fmxhKWqT2MwiRwMVM09l4WOpT1LuIJcg8wthbQra7zUqJsRQ2ZaV+aaQliaz5fWm3+xXivokCe0aurg89UeKpUEMqqRZhc59BgFtl0piVTNTZ10rAkPEE7OGKfthDcU7/7WDIMaCycOH/S+PgttaHQenWAXt18Us8H/mxiJ9Vr45ClEYXnWt3mhis1yovHWF4ILob3Dl3B+9vXkxaT4AGtHHQE/U4qxp9x3dxXDiHkP9fxFEyIt/lLQQO9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA1PR11MB7774.namprd11.prod.outlook.com (2603:10b6:208:3f2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.35; Tue, 7 Feb
 2023 19:05:45 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%5]) with mapi id 15.20.6064.034; Tue, 7 Feb 2023
 19:05:45 +0000
Date: Tue, 7 Feb 2023 11:05:42 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y+KhBlI4Vl4KeYtl@mdroper-desk1.amr.corp.intel.com>
References: <20230207124026.2105442-1-jani.nikula@intel.com>
 <20230207124026.2105442-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230207124026.2105442-2-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0006.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::11) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA1PR11MB7774:EE_
X-MS-Office365-Filtering-Correlation-Id: 39accefd-1956-4ab0-58bc-08db093e50e0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u7b8ZK8Ws0gNRXH1+uh1ERuZek1ANI+jjvapUO7VB6YiPBBByAn1WAAWoyQ4zjhwQK1ZfefWkc2XJAgEnX3ZKoE7wBOAZxHWwiaoCgDmmW9++D8W/NhPdY2iGHMjv4OI4JvpEihZiHmaL0VhgH5+md0YiZvn/9/TcJfhLqFgeyrVh8E3LQmpcja0fbN8TwfXeL9M5Hame/ibiZ9Du4WXVQ9QO0i5wztxvByf+CJE8YB6NM1D73Br2gAE2ExtLFHzxiSfx2liWZUYaQWyKa+8GLypHNFzNm8aHxWqVppSNzFJeYP9JAsqKL3X9QShXULM/aHVNUSpoIHUvbG0U+k7MQikod6i06ybBBzP5UNg2fr2RVlKk5Pm0/8UEyHljmTNrIUh7ZU3Nab4vRbwaJA5Yi1HgOckBnsOXadtT2gBlZLizIiFT10etjyV1I6dqYbUmMjGF7wEF0ULv9EbaBOkUecShBNp4osUXiz9fwHBFDimttqOZ5FJmWtizv6Lu0txVuOBKmPoRuUDiXux80HTi5k9UBFdx9BE8h49PfFdkowg+705pYRBIezch6FJcZfKXnxC74Ny5jG5fUwJsBGg+YiiNHSw29baAeF30Mq6oJY5s417PYzMJ8dDIneREbvki1WL2fUkFhDQNebdYxCsxzFsp0OZu/3oCCCRSuMhr6EYi9leMWrE/Mw+bMsSdhqC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(346002)(366004)(39860400002)(396003)(451199018)(82960400001)(38100700002)(83380400001)(4326008)(66946007)(66476007)(8676002)(6636002)(66556008)(316002)(6506007)(6512007)(8936002)(6862004)(478600001)(6486002)(26005)(186003)(6666004)(5660300002)(86362001)(41300700001)(2906002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lV5jlo8oGCFZOIfDr5ZQIJXWGvaS6r2MvFi/3iCWDvA503HF8nx4BtjzJrTs?=
 =?us-ascii?Q?UHblFWD1MyBHzM30tBlxpAQC2q9lmEs5EZLrEiCwFmkMJjjj8Efi/qWxl28H?=
 =?us-ascii?Q?PwD0QC+NHjqjffWmMNv5bYiVvnhXcbwRUkMP64O8ggnkYSfNopR4AUpcUOjs?=
 =?us-ascii?Q?kshl87040Cov8FXKnwOCykzjr6tVI6XD6W3VwMwvIxnupDStNb1Bf9i+F0Z4?=
 =?us-ascii?Q?XCQuIzCQ50Z0IgvcC0QfNAuUrLzMXzK1Y/O+zhnUA6cXc+yav3zvLWUEefTc?=
 =?us-ascii?Q?sVfHiSRs8dD0GQk8CG6XGC1fDUmKElhAwdTHXSJqq2D3rscTNngHCCe3Y3qN?=
 =?us-ascii?Q?KwQImeS8L8XHAeQ2YWfhX7TK3CNGSD7bGLvbvFHRyUuwQ44hry9RKHsfY0hN?=
 =?us-ascii?Q?G5htk1iARSiAV2ywOGeIcxE5FS/dLj/aMJoLUJNNJr8oGjL/lqua5QrgWwjD?=
 =?us-ascii?Q?c1du/WRJBxv0AV0Orw0P2O2GtwZKJF00A/tTnLn2FTCdXaAzPF3moq+deidW?=
 =?us-ascii?Q?OkfFGDm7RenkIx1QKIrzMjizBfRQyfGDQlPXZefT8Hfrzv3FGjq/+wK2F04E?=
 =?us-ascii?Q?Qp6Y/uAYEiJeKU6RsgNk2isIVU4uyi8wjcCQ8GLxnJIgF3LjdQJWH6jQaQ3G?=
 =?us-ascii?Q?nUsE5uBq6xsTdb62TAoEXewlW60nkLKQbxBoGJhll8ggCHuWQhfiAiwJ8zT9?=
 =?us-ascii?Q?X/odEG/Xp7YBZHIptEVkM3f3kuLuMSG/9TVe5awyWm15t+g3GJk5jK7okdYN?=
 =?us-ascii?Q?9VNQ3MQ+/xz8UdFqa/3c6ROwcMB5JUaiAuSis2ZUfsI4hRHwo5P7cK+fTqJj?=
 =?us-ascii?Q?yltjMKlVQBBra1I6slfoeXv+xewuvxUrEtekdC+Yz1KvyaVTSeBipHIQ0TG9?=
 =?us-ascii?Q?OUnfdc6uiR0aJN6I+VRJ0ovbAOVprsQeClBLg7kuznDCIlSy+1JLVyxJDvUq?=
 =?us-ascii?Q?JL1XKgRT26kz4BVsMjwpMszOPjk4SPMz96clwQTCcQ6YPdCXtt0FHTYEEoEx?=
 =?us-ascii?Q?yZuVsD31ZchPM5Vt6kwcJXqbnbtM85n5zogyMDlQ/XK5gVPfWzuyrMk50OAf?=
 =?us-ascii?Q?UD2mgnHCjUYyuDq+C6cZtRR8GzUmq5IwLteNzMMDgkNeMec/V4Ljk5vJM251?=
 =?us-ascii?Q?b4pkww4v2glU/TaBWrrhchrQepFWJya+fmMauzbAJ05iBE/3WdIMFzzEiyPy?=
 =?us-ascii?Q?VLwY4ksSL7crdYqXGu34QMyp7nGte0BlEi72wUnjENGsf9tpRScf74cFs0lY?=
 =?us-ascii?Q?dxSlLSoJKUHiiZPx5iY/HMB828X3UNia1w79v0WuAGeac7RriQi973YR/k6S?=
 =?us-ascii?Q?ZVL27TvMchKE3SleFlX3N0b9WvHDmvhSsdSDYRTRUv48d5mY6ohxHCT93HeH?=
 =?us-ascii?Q?7lF8Pc2YYIJ9ZHKZ+9SoOte4Ee5s1FbwsBHq+Da6PCwBrfZb6xglyjto4bsK?=
 =?us-ascii?Q?Bulxp/4VrF2vq+JknziQB6PDMT3+2ifJI+2yifjXoJsCYRbZmsTX6GLeHLgI?=
 =?us-ascii?Q?amKnusEe2iuoxrBQWjPPcsEPNb9kVsPLb8EUuvIwyjZ0rTAiv2eLLRLb4sDE?=
 =?us-ascii?Q?W44M6WiGwmdHUQ0I/9u0+WRnzs8XWk+KZZDY5cppYKlBWWQrlQNgRPM2b754?=
 =?us-ascii?Q?jA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39accefd-1956-4ab0-58bc-08db093e50e0
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 19:05:45.3809 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x0RjDUKdFChW8c1I+us8YFrLYlaPejgsxRkpbWHDcJk85azQ41+I5g0y+c1hUjNA4v1neYBJ0avqPGvrOfZgRvnZ0MvDgG9QJyrifXG2lyk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7774
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/uncore: cast iomem to avoid
 sparse warning
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 07, 2023 at 02:40:24PM +0200, Jani Nikula wrote:
> drmm_add_action_or_reset() is unaware of __iomem and the pointer needs
> to be a plain void *. Cast __iomem away and back while the pointer goes
> through drmm.
> 
> drivers/gpu/drm/i915/intel_uncore.c:2463:17: warning: incorrect type in argument 1 (different address spaces)
> drivers/gpu/drm/i915/intel_uncore.c:2463:17:    expected void volatile [noderef] __iomem *addr
> drivers/gpu/drm/i915/intel_uncore.c:2463:17:    got void *regs
> drivers/gpu/drm/i915/intel_uncore.c:2494:16: warning: incorrect type in argument 3 (different address spaces)
> drivers/gpu/drm/i915/intel_uncore.c:2494:16:    expected void *data
> drivers/gpu/drm/i915/intel_uncore.c:2494:16:    got void [noderef] __iomem *regs
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 8dee9e62a73e..f018da7ebaac 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -2460,7 +2460,7 @@ static int i915_pmic_bus_access_notifier(struct notifier_block *nb,
>  
>  static void uncore_unmap_mmio(struct drm_device *drm, void *regs)
>  {
> -	iounmap(regs);
> +	iounmap((void __iomem *)regs);
>  }
>  
>  int intel_uncore_setup_mmio(struct intel_uncore *uncore, phys_addr_t phys_addr)
> @@ -2491,7 +2491,8 @@ int intel_uncore_setup_mmio(struct intel_uncore *uncore, phys_addr_t phys_addr)
>  		return -EIO;
>  	}
>  
> -	return drmm_add_action_or_reset(&i915->drm, uncore_unmap_mmio, uncore->regs);
> +	return drmm_add_action_or_reset(&i915->drm, uncore_unmap_mmio,
> +					(void __force *)uncore->regs);
>  }
>  
>  void intel_uncore_init_early(struct intel_uncore *uncore,
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
