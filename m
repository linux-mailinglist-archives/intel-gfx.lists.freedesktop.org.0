Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CBC7FDF08
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 19:01:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE3C410E65B;
	Wed, 29 Nov 2023 18:01:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD35D10E654;
 Wed, 29 Nov 2023 18:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701280881; x=1732816881;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=B31Yn78CZEYIdSXrZYPPOFIN7SS1t0Emot9oLoNBLNM=;
 b=nMMvHy58tr6u8LQdjF3Sa7RRxmd0WL0MwVDo1yAjvtsUTkWW3fAt54ME
 5jc1jed6Z5v3tu98BA8QfESvmwNj/IuocTq2fX+4FoKdbFpTTxv6TdosO
 CKGnWa88YSJd2uQr8ypt81nFwyNtmNhwf3xBOdYtuwCke+MaBJfMrOgdo
 1b3nJ6JOGIevCirNS46Lk3wc05Bu2my22IV4jHKmA6YcmOQK1xHd3rBaf
 KeN6xYTBIfuAw1mMvDmFm8ZTO4EIakvB6YJHXa4JRb+WooGoemDp9MVDa
 SX8oTzvJEIl1RODikTSws/BmSY9qsjjDkZUlw7q1qnTAlsBkRpd8mpbLP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="383596392"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="383596392"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 10:01:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="892535088"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="892535088"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 10:01:21 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 10:01:20 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 10:01:20 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 10:01:20 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 10:01:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nnl9e5xGGbaRu2UtmoZl7QoCpesfxMuxrI5lxR5i+7KYoz5OY2Z5ifuEt6Hz47H8byB8tgHUFSmWI6BkDwMbd7nm57OeJJypltAZMHBpdbvtFnDENtMxcN50JNpOWMPd5agDupJP/jOghfp+TyLx8su7Wb6rLxW8U4JebepTG4daKFTVPtNTMM6vdpo808avuimuQiQZubR7wMqwNyisTOykFYog01HiARd86GHLymHqne/7fdWtHpAoCet4ytgnlpoOQFAR5jbK3XNFLeFnBXrR56PSXX3XRiTIVTr+WYB4ooqsjBTHOlKGub5OHsHLBRyWqE0KFpo2JaBuKfYkzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U353dO/Q9Cuywj78hHsM94FvGW2HiabWt8vq4w8hhEM=;
 b=LywmhCOmXWXFBJaHbMSKZnwNxcitsIqzDRzUxYnoC+Nr3vRy8uxWULsi+HUfgUDg4Lwsa9EDnWqFsJZoNpExnyYFvqIYZIWWBFSSj+02UH6v3YQWDKj3oySLFTX6poTMwW6bCrMeSBLZiiiIqgM825w99UIJBExVjPL8cPf/lznviw7gtmqQNkKTG67l/mZ1VlgYPmaErvCXmR9xz1cXGiYruK4GVI0eqO3z0nvKIKgvmIqkAE8dFPGR8977s/rVjOdzQb30ZU+CpWPJGKi4aMUSC6wCrsy31kJARcxf+cccXx6KH8BenPt8C24MrnnZ+GctTuo962zUWAKgk71+fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB7993.namprd11.prod.outlook.com (2603:10b6:806:2e5::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Wed, 29 Nov
 2023 18:01:18 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7046.023; Wed, 29 Nov 2023
 18:01:17 +0000
Date: Wed, 29 Nov 2023 13:01:13 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Message-ID: <ZWd8aYses2mJmBqD@intel.com>
References: <20231129091728.1272876-1-luciano.coelho@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231129091728.1272876-1-luciano.coelho@intel.com>
X-ClientProxiedBy: SJ0PR13CA0183.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::8) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB7993:EE_
X-MS-Office365-Filtering-Correlation-Id: ec873580-163e-4a18-d7df-08dbf1052f55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g9rtNZnJPMQwt42/8hl6Dg+5B1/m3jU+H6FhIn6MjLpxUEgoC+zVAK2lf3cpLFUGJP3Sn6227+Ck7kCVCeEMf6DRycsKUOws+xsdQ35drgIXlHTV6QML0ml+XXuAK3Uj3gMGnJkiAphBIwRPfUqBWHzjxMqYtCJAHbi09wrbTj7QTtLuYXmQem/flsnEuT2Lq78Zg7qkcgWWL/r7VF9Y6nvp/8ZzNT09Q6r1wOoCG/lKBYBHCo0DY7XwBFZfaEfvjCIQmeRqZKkY750LcJ0P2NDy27NmCrxSM5H1H7l3heNrWXQcyOwdIG4ML9zvEx1cQ+wPfRQhWWIPtyKyL0O6gFOgXX1QwuNK9hrfdCOaL/6RmbqPglRVo/wkIho9NfR80jQmA1IVzWX0s2DiknyzkTS2XcALROb94hbfytZm0eM2hXKdtwq89O8LTPQarkFEzqi3bL8mHLNY1ZRYXss6LCk6ccDXQKfXqYKH0oRHBrIl8hmEZ9Vb4qdJRkSCFWlekX9KyPPZCqwt86lpuO7lCRGoQ+7J1O3q0IcI4PQpQeqPE6oZA2I5gCaiWEbRSosA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(136003)(396003)(376002)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(41300700001)(5660300002)(44832011)(2616005)(86362001)(38100700002)(6862004)(8676002)(6666004)(8936002)(4326008)(450100002)(2906002)(26005)(6506007)(478600001)(316002)(6636002)(66946007)(66556008)(66476007)(37006003)(6486002)(83380400001)(82960400001)(36756003)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?skV92kyywnuRynj6Zrt7GyMkLJki9Hug2C3AJfrTqi0u8hmmo60eABYS8Mq0?=
 =?us-ascii?Q?ZH1J+7twd4YDPA4v2xrVerjTlowo2zlg8ci7Ye+4vh6mprL3uCLK6r+u32Hz?=
 =?us-ascii?Q?A4jw/TBXAWPqI6f2R1IfjLprGc9dzNh/NhB2fdFNiaNgaXk6naVFRtzmJjGF?=
 =?us-ascii?Q?mlI1T93CzVQhZn6EBiB4EBtXztsgkj0Gy/RaT8+g9UV+qCZeAoCnYJALfYUS?=
 =?us-ascii?Q?Tk5X8b32S09DlgRLYvIXzGsMLa97AbH9Tpn2RssyO4ElK4Zuy40FMXyUR3dx?=
 =?us-ascii?Q?9DgqS313kVOy9UCxpuQZn6Rgiz3079ZBKgg30dXqsN1khF4k5EyQ8l2BY/GV?=
 =?us-ascii?Q?CI4iyO/V2FxgQdjHhkDZ7Rw1Atb/WRYB45tzkA/oms0VWRd/hAu1H+YMuqwT?=
 =?us-ascii?Q?Gi3BH2c4Ge4IZY+LYyFyEO1lKqgtaMbJDPrXKTdSY8tvJIkgShfQM18HVVrR?=
 =?us-ascii?Q?ax7l9G8nG5MIWU32Ftu7YzLowF9I7nHnUp/LM+3k6fOTTZWZ/oumu/f+OJ3+?=
 =?us-ascii?Q?y8Ag6j0EvScKmPka4WPzQQV9SQQ439KccpV7QlGF/SAO7K4YK0nX9qRlhRyV?=
 =?us-ascii?Q?vPwWCHb36UcqQNKV5bKIhI7RQRibiRi5qtfkg3CcCwX4pyp1Tjgpb3lyjK/3?=
 =?us-ascii?Q?WoEPlpmmK5slTDFa+Olxc2UXSUIfBoA0EPaPKqHbZnVjWaPnmeKZ+Ehz52hE?=
 =?us-ascii?Q?yNgPBlx1f62JI2zXbOb+7fuZb89y7FKacoQ/syzIWuRRhrkTL1IbtRHoK7FM?=
 =?us-ascii?Q?A46VlNB9Mjb9OIvu6GiTsxJdoDU7voVTI+YUrS1LUDtbh3XKmkhi7tv7201d?=
 =?us-ascii?Q?lwtcI1iNt80mnaTYP8foup/6X98dLFDY3xrVs2cTMycUREGB0uF5an59Lfnd?=
 =?us-ascii?Q?WMt83wjAzDIG+bQrFkPS55ccU8M0SItbuCm9w+l+Lq7WR5rjnSJifXhuW/A9?=
 =?us-ascii?Q?U1RtPolS/ZMCop9lg6qGPBX/Y2x4PZZrJeh0ooitDhthvpxSj+xfGYVmxBdM?=
 =?us-ascii?Q?VdoZf6/F6nW6dTcCGWHtU6/OGjLHxukUd9GyWaJfueEkO75vbmrg0geQZ4MT?=
 =?us-ascii?Q?PMKGQ9TwqZByQtLiiXqZu2xkBm6ZewfKFup3uB98TGQdP29zmhuZczrzaCzC?=
 =?us-ascii?Q?ExBXbDCHhwzH+ZaabpFbD3EPXyWZfKfjzudhVfoIFcPxPAw4q8A7mYVX3Y+I?=
 =?us-ascii?Q?pUsPvmC9JxOL98jYmDm539cJv+1C3wo75xboo9aoDlL6hm4x8Zm6GtAAlhvu?=
 =?us-ascii?Q?Tjv43PQizuy1IV1HYJQlyTQnKeNBGbTSPks8GVCF9FvC8D+koE19vCn0CHt1?=
 =?us-ascii?Q?xSROk9Ktkb0Gu0yEz17fhbVluQprFPr2PhgrduM334ewfMVzKSbLqeh+s31L?=
 =?us-ascii?Q?XVXBKUuy7UnwpnW+UaPvjhrkvtOcRm2G66Dh4iRkaWfrmjOPmi7XsUOSMglZ?=
 =?us-ascii?Q?GCBAcUSEANZJnyR8LEJp7WCo7f9EAofcVAbgx41ACpAlrNbA8bCpHnVDoJiu?=
 =?us-ascii?Q?lIYLKmFv4OyNizrknb+Wq8xhfVC77XH0ziEwBk2Nw0Zpt3ZcSB20iwn1XczN?=
 =?us-ascii?Q?a9cFWaTIlchO8+tE9tRp0fl3NahaB/8+lr2GcATn5kFhT6YLM94JjX8/UeS3?=
 =?us-ascii?Q?cQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec873580-163e-4a18-d7df-08dbf1052f55
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2023 18:01:17.7217 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yhhd8seRyenIOb1KsBTBQ5RnPajFhKxJuucu4bY0B7s/M5nuB7M5K9POQTHEszaD+Dy3YHzgIJUoRLaPjLKqlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7993
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: handle uncore
 spinlock when not available
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 29, 2023 at 11:17:28AM +0200, Luca Coelho wrote:
> The uncore code may not always be available (e.g. when we build the
> display code with Xe), so we can't always rely on having the uncore's
> spinlock.
> 
> To handle this, split the spin_lock/unlock_irqsave/restore() into
> spin_lock/unlock() followed by a call to local_irq_save/restore() and
> create wrapper functions for locking and unlocking the uncore's
> spinlock.  In these functions, we have a condition check and only
> actually try to lock/unlock the spinlock when I915 is defined, and
> thus uncore is available.
> 
> This keeps the ifdefs contained in these new functions and all such
> logic inside the display code.
> 
> Cc: Tvrtko Ursulin <tvrto.ursulin@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Ville Syrj?l? <ville.syrjala@linux.intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
> 
> In v2:
> 
>    * Renamed uncore_spin_*() to intel_spin_*()
>    * Corrected the order: save, lock, unlock, restore
> 
> In v3:
> 
>    * Undid the change to pass drm_i915_private instead of the lock
>      itself, since we would have to include i915_drv.h and that pulls
>      in a truckload of other includes.
> 
> In v4:
> 
>    * After a brief attempt to replace this with a different patch,
>      we're back to this one;
>    * Pass drm_i195_private again, and move the functions to
>      intel_vblank.c, so we don't need to include i915_drv.h in a
>      header file and it's already included in intel_vblank.c;
> 
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  drivers/gpu/drm/i915/display/intel_vblank.c  | 45 +++++++++++++++-----
>  2 files changed, 36 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 8548f49e3972..5ff299bc4b87 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -29,6 +29,7 @@
>  
>  #include "i915_reg_defs.h"
>  #include "intel_display_limits.h"
> +#include "i915_drv.h"

please move this include to intel_vblank.c

>  
>  enum drm_scaling_filter;
>  struct dpll;
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 2cec2abf9746..d9625db82681 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -265,6 +265,26 @@ int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
>  	return (scanline + vtotal - crtc->scanline_offset) % vtotal;
>  }
>  
> +/*
> + * The uncore version of the spin lock functions is used to decide
> + * whether we need to lock the uncore lock or not.  This is only
> + * needed in i915, not in Xe.  Keep the decision-making centralized
> + * here.

maybe we could add brief mention that it is only needed because old hardware
that is not supported by Xe.

> + */
> +static inline void intel_vblank_section_enter(struct drm_i915_private *i915)

let's avoid inline here.

> +{
> +#ifdef I915
> +	spin_lock(&i915->uncore.lock);
> +#endif
> +}
> +
> +static inline void intel_vblank_section_exit(struct drm_i915_private *i915)

and here

With these changes:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +{
> +#ifdef I915
> +	spin_unlock(&i915->uncore.lock);
> +#endif
> +}
> +
>  static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  				     bool in_vblank_irq,
>  				     int *vpos, int *hpos,
> @@ -302,11 +322,12 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  	}
>  
>  	/*
> -	 * Lock uncore.lock, as we will do multiple timing critical raw
> -	 * register reads, potentially with preemption disabled, so the
> -	 * following code must not block on uncore.lock.
> +	 * Enter vblank critical section, as we will do multiple
> +	 * timing critical raw register reads, potentially with
> +	 * preemption disabled, so the following code must not block.
>  	 */
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +	local_irq_save(irqflags);
> +	intel_vblank_section_enter(dev_priv);
>  
>  	/* preempt_disable_rt() should go right here in PREEMPT_RT patchset. */
>  
> @@ -374,7 +395,8 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  
>  	/* preempt_enable_rt() should go right here in PREEMPT_RT patchset. */
>  
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +	intel_vblank_section_exit(dev_priv);
> +	local_irq_restore(irqflags);
>  
>  	/*
>  	 * While in vblank, position will be negative
> @@ -412,9 +434,13 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc)
>  	unsigned long irqflags;
>  	int position;
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> +	local_irq_save(irqflags);
> +	intel_vblank_section_enter(dev_priv);
> +
>  	position = __intel_get_crtc_scanline(crtc);
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> +
> +	intel_vblank_section_exit(dev_priv);
> +	local_irq_restore(irqflags);
>  
>  	return position;
>  }
> @@ -537,7 +563,7 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>  	 * Need to audit everything to make sure it's safe.
>  	 */
>  	spin_lock_irqsave(&i915->drm.vblank_time_lock, irqflags);
> -	spin_lock(&i915->uncore.lock);
> +	intel_vblank_section_enter(i915);
>  
>  	drm_calc_timestamping_constants(&crtc->base, &adjusted_mode);
>  
> @@ -546,7 +572,6 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>  	crtc->mode_flags = mode_flags;
>  
>  	crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state);
> -
> -	spin_unlock(&i915->uncore.lock);
> +	intel_vblank_section_exit(i915);
>  	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
>  }
> -- 
> 2.39.2
> 
