Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D1A8A8579
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 16:01:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9EA411355B;
	Wed, 17 Apr 2024 14:01:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aAozHwhg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD1EB11355D;
 Wed, 17 Apr 2024 14:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713362471; x=1744898471;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=XAdR7Gy+qfZu6M6YqC/axzGK7txLrpFMmrRIPF06VkY=;
 b=aAozHwhg6x19W7xlUD3LevIa96n6qWKmaFA7eTKjiaPVc4M48jDiwDFQ
 pBS281h1qfQ2VLotrVEaY04YQY/RxvU2z69cm0OMOksXSpPEg1fdyxats
 pFQDnUjOEb1Aovt1yceZU2S9ST+SzyoN2C87Z3u/90ZVj8FoG/D6sjOp1
 oDqHhmoxSc0B+aUBR4WW44WTULp3ahk8DRtN2euNVq7ilYeAiAejEg4rz
 kDiYme53h2q3dNuaV+fN3nJfWnm0mBj3UT5zU+gJmbtyNuGEhWaeHa4AP
 NU1Dj67DQUeOIZq2WrHI/ubzy4+B+OvMbDT8h15OJD0GwmgWn5fqH01dt A==;
X-CSE-ConnectionGUID: HnJtfyTcQiC/2CYrOGotFQ==
X-CSE-MsgGUID: mcw3pKBfT7iu9Bks1D1EIw==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8734604"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8734604"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 07:01:00 -0700
X-CSE-ConnectionGUID: 9fQgGwklRy6VthM9XYy4Cg==
X-CSE-MsgGUID: 46NUIPH6Q2uQdOmF2nFduA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="53846048"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 07:00:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 07:00:50 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 07:00:50 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 07:00:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q8PzrlYxNIsFKgGdG1RvEGW6KUVo1PZxwLmdof8OV+24e+uZex3aobEmopxH5jmEzpyikSgew9E6Fa/JH+7zCjeLKrhTiUsJPXu5RJn8eCSCHU8vansAfGxz+rwCSPYImeM4bnhT1msbWN2xBkENMlgByGlYM8Q5Csp64e+a0IVpYffH8JxDu+j43AC9TrQbKYaaYB1Zd2bRMHq/SoXD2Zg3N2BL3/7QGcQ15tAsjEwClmOC3bV8HvXGIX0owWar8XJQ6v+uDEbcrSEp1hdnEgJGyxtL0pN/5Tn0QMwgkk9L8gfMhY2d1dH1Hejg6EC/BsDEGmYoo99LVI/WoOIy/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fPJwzVU6sV33r31fJ3kMmuaEq/3iEGSe01iHxjQkTjw=;
 b=araDe5KdPWdoEvVfVaRbl2JXpmg6a2kE+IqH2cvpBz6ftlEn7nbx6NO+s4P+9lTJYEv18eLfH0RxqGIKmyZYnwTGQG4lYeKeaTCY9J3D2LnUefFHp9zIJMz80gpXoHxisLtLPxoARuRxOW7mZ4cxyY1NnrRiooxTrtfZV7ujDp/yLD9CAHDgA68Mv8nbht1cn54oAfTj26uttWIGPd38DBUbJopZ13DPoUdEkwlIvwgV6vWjbq9aAIPRRvywDfWFLQCIzGtl63WQCH9NQ85GEw2royhkKYCnoZHmo5ITugTGARxRQzI6LgbiXzmDlczTy2lYxp98QqU6adEvx+LuvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW4PR11MB8290.namprd11.prod.outlook.com (2603:10b6:303:20f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.29; Wed, 17 Apr
 2024 14:00:47 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7472.037; Wed, 17 Apr 2024
 14:00:46 +0000
Date: Wed, 17 Apr 2024 10:00:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Luca
 Coelho" <luciano.coelho@intel.com>
Subject: Re: [PATCH v4 8/9] drm/i915/de: allow intel_display and
 drm_i915_private for de functions
Message-ID: <Zh_WCW-eNjLu96Jn@intel.com>
References: <cover.1713358679.git.jani.nikula@intel.com>
 <1b0e8e7c732535e18c8498a2e18fe1e4c123e2f5.1713358679.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1b0e8e7c732535e18c8498a2e18fe1e4c123e2f5.1713358679.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR10CA0023.namprd10.prod.outlook.com
 (2603:10b6:a03:255::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW4PR11MB8290:EE_
X-MS-Office365-Filtering-Correlation-Id: d8823f1c-1c40-4149-b905-08dc5ee6c7cd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: brj996XC2tMipeV/n26zVkChlDyGv3mDHW3CasAr4TuEZVWwqO6GSNELOa4PkTFFn8F3UZJiGUR6tPL+Nou5+R+rvfNvDtth0mtuNPb0Aryt/dNhyMzAwv81QhXLsyT0DPPMoVn7VEE1E2excefws2b//rzNw/oVjz06II+IN+5UysPcrjGORH1MzDFkmgASmtDZ6tl7fkrlvJyP/JxwHoZWYNCQ9XnncwSfmr9si1imxCVytrqq5ADFL5yjViRYlxYV3q/Ma3U/jg0WtkbElDhrtCN32Ud4LdpXdSWnvR5VAFfcPjCSwEMhxN5YkQ2esDa2CckEhYJNux2ps8mAXJXyj9IIINrC+UY2hpK/Ekwp9Zr165AL7zghma+dZdQtqF+KoWsyjhJ+0vCSUarXUlsagq2xy+RhJqqPPk/l2YLNRa4bO4+iqV/0he+i2VAMLlab3geg+sUPtF+jblcEfiAp7RTZG8wSA1812/xEwI7LuseiBWK2Tl8zmkRa9GGHnJYZpYwo+kwkfqca7MgHcIYyu5xsgpwBZiF5qeItsXdQiaOmErS5KsCUfo7ztgWUbWzREBZKdD/LFmosoXm57d2TaAkZ6443VOlisrdTsRIhDCwxAWtkKLfgJLCqosi2yST9Pil6TLMkEJXF+W3mt+XO3xz0Mg91SDFTS/QOSuI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9kKYByRu2xgqYfhIRjkIurmX9VqaWcPzYAMdu3pHOeqVpaaRi5TmxXpPA5fE?=
 =?us-ascii?Q?hioIBnisZf37zVMiByHHOHRmNahXE90Qij0SW5IQuwxoLR5mIxCd9hePEWKH?=
 =?us-ascii?Q?67eRWowfjY+ofAxIW9dHaPXwYh9g2gqCkHlnk6QAYdAaQAt2hKmC45Fq33Zh?=
 =?us-ascii?Q?8CAW6eJZe+tA/bGK62LC6s+W+IbJ9UfJEJi1J3rzxr71yC6BkRRgTrEwUxFu?=
 =?us-ascii?Q?c/IRlNpec8ZHJlNHJEGL/oiSEUvk7tYIxG19uyTR8iDELdJmHtYgu/hZ0U3s?=
 =?us-ascii?Q?fcRT3M9p5YeviU5EY3MHuIU/hsJdHD7MZZ9BD+zxT7KOcX67dBGmDQ0ggZDk?=
 =?us-ascii?Q?zTF/MWmhGE/Rmf/ht8WE05TLPN3oOQM2Ll5zGAp66BcxLHqnmIaa0oJWPC8T?=
 =?us-ascii?Q?CbxXsODK6XQshg7hHc9Ojl6vYa1u8hWDmv3gmsZR+VYVO3foWK3KRP0gbfi3?=
 =?us-ascii?Q?Q/FiTmaoHtGUEHMLRF++C3qe72dXEMc91lKLhQ++qVpg1jH5DTeGTldeTkFO?=
 =?us-ascii?Q?W+JqUtL4Qk7JcmT5/weL6VemuQomWGi/0ZLkuAikTmhC6hVLOm5ZRwloUF6p?=
 =?us-ascii?Q?t9Y5si96FtjuNadmAh64gYqx06AoyhjLrLIYO2aNlgxhSSubxl9//woH5XVx?=
 =?us-ascii?Q?L54FEHmVk1tpE1fI068D7lZAflSrIqUtuJI9oF4R5XXYbJqxchtsVIgRUhYG?=
 =?us-ascii?Q?GFHUobrfhl+sR4T88hh3vwrFBrvmtXK+yOiDQaxo8t2mRx7BoJCNaDJM1Sbs?=
 =?us-ascii?Q?kQRGZ6E6KySV1yirT+eIrb7BTI0+wPjGgsQYJAPK+dFLx+Vcu1AgDHPDVZ+y?=
 =?us-ascii?Q?ym9xS40+lIcaW6U7iFzN2RAnvzTR32INJiACNHvSam2phWV4jdsZMYa5juMP?=
 =?us-ascii?Q?wEytNAR+tHolsNvlbuj4SjnG4HN9uMo1WYVlKJHb3NVNCqCKMHc8CP83RIKq?=
 =?us-ascii?Q?Kl18DMDzlyMc6j6RrJcX9sxLk6/88HvnYLPut+XTtcfMJN7aUZ+MuPPxaUTi?=
 =?us-ascii?Q?H7dMG8ttynOt9kbIeo726Bu96aJOKLhMY3HvXqBuHKYGQjLyZN8NPS3VgkpR?=
 =?us-ascii?Q?BF58PmgRPo7iUAdUh4XKvOGiHyEfMqPhukOxvu85/mos3niyR9edFj88RW+b?=
 =?us-ascii?Q?465/9Dz9VLSKcewTIQ0K9QfFwAb3Hcleu737yolwrY2K7rNzw27sq+aQaAOf?=
 =?us-ascii?Q?EzK1amRzag9M9VH82spCKQLPZAQ4xwqbnEAXyWI7x7MmL41M4hXr4m981v6s?=
 =?us-ascii?Q?VGPQY9y+4IxD07nbhMv/e0wOvBuBqjHgDP/wpVZj5E000em87TsDZ/TtPYye?=
 =?us-ascii?Q?eMma1RH1glJPsJeKgWz0pSLA5ZssHNNdb5hG7oxP8hPk7joxNKnV3bf715qM?=
 =?us-ascii?Q?fpdBbI0DVUfmU61VHBg45Ufs4D8kvCg3IIKNDlP9PRS8F/AQ6zFp723m/GJG?=
 =?us-ascii?Q?rX6s0G17TQs5R39IucFbX617THxcncpNxhYvdQ77BTgRK6lwfGMGQeDYs2ys?=
 =?us-ascii?Q?bAcc7jEiD1sdV53VdQTykallYysSpfGxQ4zux97y2Jz5olL01Kj1+wG36kTB?=
 =?us-ascii?Q?geyzQXped9wkb3aYGpKQly3G8eAmopnEPyWKLfxOrMMRcxr9kdRk9mTo2vjm?=
 =?us-ascii?Q?WQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8823f1c-1c40-4149-b905-08dc5ee6c7cd
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2024 14:00:46.9268 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HrvmTqDqPzATqdSABRBXWe7IAwNoBIVXHXHLxxgIWxHjzeZEBNZzWATaE4uNECHnjwikh+ahc5xPGUgH8QjOoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8290
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

On Wed, Apr 17, 2024 at 04:02:46PM +0300, Jani Nikula wrote:
> It would be too much noise to convert the intel_de_* functions from
> using struct drm_i915_private to struct intel_display all at once. Add
> generic wrappers using __to_intel_display() to accept both.
> 
> v2: Take the intel_dmc_wl_* changes into account
> 
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com> # v1

thanks for sharing the scripts,

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> This was done using a cocci + shell script combo:
> 
>     #!/bin/bash
> 
>     set -e
> 
>     FILE=drivers/gpu/drm/i915/display/intel_de.h
> 
>     cocci=$(mktemp)
>     cat >$cocci <<EOF
>     @@
>     identifier ptr;
>     identifier fn =~ "^_*intel_de_.*";
>     fresh identifier __fn = "__" ## fn;
>     @@
> 
>     - fn(struct drm_i915_private *ptr,
>     + __fn(struct intel_display *display,
>       ...) {
>       <...
>     (
>     - &ptr->uncore
>     + __to_uncore(display)
>     |
>     - &ptr->display
>     + display
>     |
>     - ptr
>     + display
>     )
>       ...>
>       }
>     + #define fn(p, VARARGS_PLACEHOLDER) __fn(__to_intel_display(p), __VA_ARGS__)
> 
>     EOF
> 
>     spatch --sp-file $cocci --in-place --linux-spacing $FILE >/dev/null
> 
>     # Fixup varargs
>     sed -i "s/VARARGS_PLACEHOLDER/.../g" $FILE
> 
>     # Add the __to_uncore() helper
>     snip=$(mktemp)
>     cat >$snip <<EOF
> 
>     static inline struct intel_uncore *__to_uncore(struct intel_display *display)
>     {
>     	return &to_i915(display->drm)->uncore;
>     }
>     EOF
> 
>     sed -ie "/\#include \"intel_uncore\.h\"/r $snip" $FILE
> 
>     rm -f $cocci $snip
> ---
>  drivers/gpu/drm/i915/display/intel_de.h | 157 ++++++++++++++----------
>  1 file changed, 93 insertions(+), 64 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
> index 15440058ad2a..e881bfeafb47 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -10,161 +10,185 @@
>  #include "i915_trace.h"
>  #include "intel_uncore.h"
>  
> +static inline struct intel_uncore *__to_uncore(struct intel_display *display)
> +{
> +	return &to_i915(display->drm)->uncore;
> +}
> +
>  static inline u32
> -intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)
> +__intel_de_read(struct intel_display *display, i915_reg_t reg)
>  {
>  	u32 val;
>  
> -	intel_dmc_wl_get(&i915->display, reg);
> +	intel_dmc_wl_get(display, reg);
>  
> -	val = intel_uncore_read(&i915->uncore, reg);
> +	val = intel_uncore_read(__to_uncore(display), reg);
>  
> -	intel_dmc_wl_put(&i915->display, reg);
> +	intel_dmc_wl_put(display, reg);
>  
>  	return val;
>  }
> +#define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline u8
> -intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
> +__intel_de_read8(struct intel_display *display, i915_reg_t reg)
>  {
>  	u8 val;
>  
> -	intel_dmc_wl_get(&i915->display, reg);
> +	intel_dmc_wl_get(display, reg);
>  
> -	val = intel_uncore_read8(&i915->uncore, reg);
> +	val = intel_uncore_read8(__to_uncore(display), reg);
>  
> -	intel_dmc_wl_put(&i915->display, reg);
> +	intel_dmc_wl_put(display, reg);
>  
>  	return val;
>  }
> +#define intel_de_read8(p,...) __intel_de_read8(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline u64
> -intel_de_read64_2x32(struct drm_i915_private *i915,
> -		     i915_reg_t lower_reg, i915_reg_t upper_reg)
> +__intel_de_read64_2x32(struct intel_display *display,
> +		       i915_reg_t lower_reg, i915_reg_t upper_reg)
>  {
>  	u64 val;
>  
> -	intel_dmc_wl_get(&i915->display, lower_reg);
> -	intel_dmc_wl_get(&i915->display, upper_reg);
> +	intel_dmc_wl_get(display, lower_reg);
> +	intel_dmc_wl_get(display, upper_reg);
>  
> -	val = intel_uncore_read64_2x32(&i915->uncore, lower_reg, upper_reg);
> +	val = intel_uncore_read64_2x32(__to_uncore(display), lower_reg,
> +				       upper_reg);
>  
> -	intel_dmc_wl_put(&i915->display, upper_reg);
> -	intel_dmc_wl_put(&i915->display, lower_reg);
> +	intel_dmc_wl_put(display, upper_reg);
> +	intel_dmc_wl_put(display, lower_reg);
>  
>  	return val;
>  }
> +#define intel_de_read64_2x32(p,...) __intel_de_read64_2x32(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline void
> -intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)
> +__intel_de_posting_read(struct intel_display *display, i915_reg_t reg)
>  {
> -	intel_dmc_wl_get(&i915->display, reg);
> +	intel_dmc_wl_get(display, reg);
>  
> -	intel_uncore_posting_read(&i915->uncore, reg);
> +	intel_uncore_posting_read(__to_uncore(display), reg);
>  
> -	intel_dmc_wl_put(&i915->display, reg);
> +	intel_dmc_wl_put(display, reg);
>  }
> +#define intel_de_posting_read(p,...) __intel_de_posting_read(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline void
> -intel_de_write(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
> +__intel_de_write(struct intel_display *display, i915_reg_t reg, u32 val)
>  {
> -	intel_dmc_wl_get(&i915->display, reg);
> +	intel_dmc_wl_get(display, reg);
>  
> -	intel_uncore_write(&i915->uncore, reg, val);
> +	intel_uncore_write(__to_uncore(display), reg, val);
>  
> -	intel_dmc_wl_put(&i915->display, reg);
> +	intel_dmc_wl_put(display, reg);
>  }
> +#define intel_de_write(p,...) __intel_de_write(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline u32
> -__intel_de_rmw_nowl(struct drm_i915_private *i915, i915_reg_t reg,
> -		    u32 clear, u32 set)
> +____intel_de_rmw_nowl(struct intel_display *display, i915_reg_t reg,
> +		      u32 clear, u32 set)
>  {
> -	return intel_uncore_rmw(&i915->uncore, reg, clear, set);
> +	return intel_uncore_rmw(__to_uncore(display), reg, clear, set);
>  }
> +#define __intel_de_rmw_nowl(p,...) ____intel_de_rmw_nowl(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline u32
> -intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
> +__intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear,
> +	       u32 set)
>  {
>  	u32 val;
>  
> -	intel_dmc_wl_get(&i915->display, reg);
> +	intel_dmc_wl_get(display, reg);
>  
> -	val = __intel_de_rmw_nowl(i915, reg, clear, set);
> +	val = __intel_de_rmw_nowl(display, reg, clear, set);
>  
> -	intel_dmc_wl_put(&i915->display, reg);
> +	intel_dmc_wl_put(display, reg);
>  
>  	return val;
>  }
> +#define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -__intel_de_wait_for_register_nowl(struct drm_i915_private *i915, i915_reg_t reg,
> -				  u32 mask, u32 value, unsigned int timeout)
> +____intel_de_wait_for_register_nowl(struct intel_display *display,
> +				    i915_reg_t reg,
> +				    u32 mask, u32 value, unsigned int timeout)
>  {
> -	return intel_wait_for_register(&i915->uncore, reg, mask,
> +	return intel_wait_for_register(__to_uncore(display), reg, mask,
>  				       value, timeout);
>  }
> +#define __intel_de_wait_for_register_nowl(p,...) ____intel_de_wait_for_register_nowl(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -intel_de_wait(struct drm_i915_private *i915, i915_reg_t reg,
> -	      u32 mask, u32 value, unsigned int timeout)
> +__intel_de_wait(struct intel_display *display, i915_reg_t reg,
> +		u32 mask, u32 value, unsigned int timeout)
>  {
>  	int ret;
>  
> -	intel_dmc_wl_get(&i915->display, reg);
> +	intel_dmc_wl_get(display, reg);
>  
> -	ret = __intel_de_wait_for_register_nowl(i915, reg, mask, value, timeout);
> +	ret = __intel_de_wait_for_register_nowl(display, reg, mask, value,
> +						timeout);
>  
> -	intel_dmc_wl_put(&i915->display, reg);
> +	intel_dmc_wl_put(display, reg);
>  
>  	return ret;
>  }
> +#define intel_de_wait(p,...) __intel_de_wait(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -intel_de_wait_fw(struct drm_i915_private *i915, i915_reg_t reg,
> -		 u32 mask, u32 value, unsigned int timeout)
> +__intel_de_wait_fw(struct intel_display *display, i915_reg_t reg,
> +		   u32 mask, u32 value, unsigned int timeout)
>  {
>  	int ret;
>  
> -	intel_dmc_wl_get(&i915->display, reg);
> +	intel_dmc_wl_get(display, reg);
>  
> -	ret = intel_wait_for_register_fw(&i915->uncore, reg, mask, value, timeout);
> +	ret = intel_wait_for_register_fw(__to_uncore(display), reg, mask,
> +					 value, timeout);
>  
> -	intel_dmc_wl_put(&i915->display, reg);
> +	intel_dmc_wl_put(display, reg);
>  
>  	return ret;
>  }
> +#define intel_de_wait_fw(p,...) __intel_de_wait_fw(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -intel_de_wait_custom(struct drm_i915_private *i915, i915_reg_t reg,
> -		     u32 mask, u32 value,
> -		     unsigned int fast_timeout_us,
> -		     unsigned int slow_timeout_ms, u32 *out_value)
> +__intel_de_wait_custom(struct intel_display *display, i915_reg_t reg,
> +		       u32 mask, u32 value,
> +		       unsigned int fast_timeout_us,
> +		       unsigned int slow_timeout_ms, u32 *out_value)
>  {
>  	int ret;
>  
> -	intel_dmc_wl_get(&i915->display, reg);
> +	intel_dmc_wl_get(display, reg);
>  
> -	ret = __intel_wait_for_register(&i915->uncore, reg, mask, value,
> +	ret = __intel_wait_for_register(__to_uncore(display), reg, mask,
> +					value,
>  					fast_timeout_us, slow_timeout_ms, out_value);
>  
> -	intel_dmc_wl_put(&i915->display, reg);
> +	intel_dmc_wl_put(display, reg);
>  
>  	return ret;
>  }
> +#define intel_de_wait_custom(p,...) __intel_de_wait_custom(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -intel_de_wait_for_set(struct drm_i915_private *i915, i915_reg_t reg,
> -		      u32 mask, unsigned int timeout)
> +__intel_de_wait_for_set(struct intel_display *display, i915_reg_t reg,
> +			u32 mask, unsigned int timeout)
>  {
> -	return intel_de_wait(i915, reg, mask, mask, timeout);
> +	return intel_de_wait(display, reg, mask, mask, timeout);
>  }
> +#define intel_de_wait_for_set(p,...) __intel_de_wait_for_set(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -intel_de_wait_for_clear(struct drm_i915_private *i915, i915_reg_t reg,
> -			u32 mask, unsigned int timeout)
> +__intel_de_wait_for_clear(struct intel_display *display, i915_reg_t reg,
> +			  u32 mask, unsigned int timeout)
>  {
> -	return intel_de_wait(i915, reg, mask, 0, timeout);
> +	return intel_de_wait(display, reg, mask, 0, timeout);
>  }
> +#define intel_de_wait_for_clear(p,...) __intel_de_wait_for_clear(__to_intel_display(p), __VA_ARGS__)
>  
>  /*
>   * Unlocked mmio-accessors, think carefully before using these.
> @@ -175,33 +199,38 @@ intel_de_wait_for_clear(struct drm_i915_private *i915, i915_reg_t reg,
>   * a more localised lock guarding all access to that bank of registers.
>   */
>  static inline u32
> -intel_de_read_fw(struct drm_i915_private *i915, i915_reg_t reg)
> +__intel_de_read_fw(struct intel_display *display, i915_reg_t reg)
>  {
>  	u32 val;
>  
> -	val = intel_uncore_read_fw(&i915->uncore, reg);
> +	val = intel_uncore_read_fw(__to_uncore(display), reg);
>  	trace_i915_reg_rw(false, reg, val, sizeof(val), true);
>  
>  	return val;
>  }
> +#define intel_de_read_fw(p,...) __intel_de_read_fw(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline void
> -intel_de_write_fw(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
> +__intel_de_write_fw(struct intel_display *display, i915_reg_t reg, u32 val)
>  {
>  	trace_i915_reg_rw(true, reg, val, sizeof(val), true);
> -	intel_uncore_write_fw(&i915->uncore, reg, val);
> +	intel_uncore_write_fw(__to_uncore(display), reg, val);
>  }
> +#define intel_de_write_fw(p,...) __intel_de_write_fw(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline u32
> -intel_de_read_notrace(struct drm_i915_private *i915, i915_reg_t reg)
> +__intel_de_read_notrace(struct intel_display *display, i915_reg_t reg)
>  {
> -	return intel_uncore_read_notrace(&i915->uncore, reg);
> +	return intel_uncore_read_notrace(__to_uncore(display), reg);
>  }
> +#define intel_de_read_notrace(p,...) __intel_de_read_notrace(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline void
> -intel_de_write_notrace(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
> +__intel_de_write_notrace(struct intel_display *display, i915_reg_t reg,
> +			 u32 val)
>  {
> -	intel_uncore_write_notrace(&i915->uncore, reg, val);
> +	intel_uncore_write_notrace(__to_uncore(display), reg, val);
>  }
> +#define intel_de_write_notrace(p,...) __intel_de_write_notrace(__to_intel_display(p), __VA_ARGS__)
>  
>  #endif /* __INTEL_DE_H__ */
> -- 
> 2.39.2
> 
