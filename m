Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E0562E0F9
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 17:06:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE4CA10E64B;
	Thu, 17 Nov 2022 16:06:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952BF10E649
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 16:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668701164; x=1700237164;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=M8VHz3S5etsuKZfeY55nNKwj+vjlIxrK2b2N07TlOik=;
 b=QlR0nw46NIHSjHqUqrk0UzlgFvYgLiK+sCfCwUhCy7/onFBSj5RRvVqe
 Q40Y2viyN6SQNRghV5D102UqaECA9WMayHWePNUcetzdzRazW/KGitjCM
 Aa8xZ5G3KqyO1oxBgIMSCCLlccXugC3Ve3pmO4BshPLnal9tCp+bUQQFv
 SchWhMykQsc332CEfJ7jexwv98M+rpEK+e/dxWLl1UmFjOKpECv6RxVSY
 zy6DEmXRcFWIw5OLWAmdnudSMnWGhrWtgWbo3z723WyWsGbdQ5phBEArC
 MmyFsmapK0+V9AitdisWpREbnMwmrD8NFHWVqSZ0/5N8f4ar5tNaSaYtj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="339720452"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="339720452"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 08:04:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="814562816"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="814562816"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 17 Nov 2022 08:04:15 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 08:04:13 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 08:04:13 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 08:04:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pt/KkUK1E8FYSv4wCX+WjeHumvZW5gikydKUMEEfO6XP5z2cmSwbZtTcyQYYsf8ngAw6uWRlu12ecZyW7JISVJRuBeRqmL/hk6uLAVCer0cKezceM2cAPY7GggtPOvtFvgPJACZLxFL9abhX8sBm8l6SOk2z4CLziY9GNAQPQBUZk7wFJdCQd9KyUjcNvx0D32oIxP6yi2nKt2TcgVklwLLNj0XiH5A2VajQ7jVhj1pAjpTqbp6c540qiCWdj8iUlqyvubCnsEBDxAS1kC/hIJwVANqRfEoYPdd1CwYngBCGLzTSOtH3sp0dnGYicBdlNBNwRcG851XDnaZaakhDuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NwbbaeES8GGKcMDt0cwW1Lqg3c0wt92BQn4u80savbw=;
 b=Ww6MXGpIcTtM6nHiawVDDcsgmrfi05/OcTWJi0T7aDRY76fnKCko5QjK/+/FYLIetHjaWysnL5BepLUVZEheJG3J04yy8KMcuosfbap40BrgVQWHGxJUcz/M2R+5o2tLCb9RSzewVQfeo8weF7pja4t18js4v0b55cBoYpFvx2Z4wOnFATy0XQ44Fs+zG7WlDHww8bPO8dBaOG4xgrQfkQWPr+TOWOHhfQRXKvVJ2e0wrWAJWmlLn0yHmBkwUCABXNLJvO2f7iFfi22B2WY6zETa2RJjxo7/4PdTaQuEeOdLG+NIMnPMUU+6opEYC5ziFF7hIAhduSdC0x45C8Gv/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB7094.namprd11.prod.outlook.com (2603:10b6:510:216::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Thu, 17 Nov
 2022 16:04:10 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%5]) with mapi id 15.20.5813.020; Thu, 17 Nov 2022
 16:04:10 +0000
Date: Thu, 17 Nov 2022 11:04:06 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <Y3Zbdo5M/ghLb+7n@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-3-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221117003018.1433115-3-alan.previn.teres.alexis@intel.com>
X-ClientProxiedBy: SJ0PR13CA0126.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::11) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB7094:EE_
X-MS-Office365-Filtering-Correlation-Id: ee07c8b1-f261-41a6-4fc7-08dac8b55d03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NEiFoyJ0MELwMdcgfXkatc+3nHSQDMD8AXaqL2v9iNyJwGHB1zEmF5fk8gEbvFX0LFapQpbYnjHIVFdXCxS/A5cfW26UBNvSyinD5rIrluB01z2hGYmbp+sioW5rcnbifApCRxHDlrNZkCQCdpZC08ZprUYj9TmA9ylklA1MMXBx8RNgtb3oHE4ScZNZzrbXhPTsFAC6zkqsBtEiE7YEacVCo4aLKkybj8w7D/a2g8LtYLnHgJYNeOXoEXmlm795OTJ4lVDB4X0EW06mWXeku6AmF9VtMk/dR14VGsqMKe3sUHO/sGIZTAC5HoLxP98DSh7KafftR5MVX9RGaN1VBovrJKnKbGWGZDF5b7bfiLrhUjxyZ+GaxQeNpmd8+8PqQRn1yY4EQEpTUMu9aq1LZLzWloFejAd6m5vZYcEcdfX6iSqGCexhfBMoYWpN5ldWejAJJbwj31o15DvvxRw6T0IqYYNJ6MhGKU9uZqmsAfLwwnnd2asM20nG0PjUxYZTJaL2J6Dns201KA7ocCcUhXb9jMSLePcstVqI+kHwoMMtrY43C84NrnA6eb4lVUDte+/w9q32hwUaTJp+dUAZukErq+Zuk+/R0QBu7JeV9mzl4YDj19pu3tFEKU8lVsfumqPK4BpevSvVffQek4FuoQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(39860400002)(136003)(396003)(366004)(451199015)(36756003)(38100700002)(86362001)(82960400001)(186003)(6506007)(6512007)(2906002)(44832011)(83380400001)(2616005)(26005)(6862004)(478600001)(41300700001)(6486002)(66946007)(316002)(66556008)(5660300002)(8936002)(6636002)(37006003)(4326008)(6666004)(66476007)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lIBUmnZZru9hOjiBvUWXy+OUBfy0cnubFJVsZiikUgzdOXNrqw7vQhgxXatU?=
 =?us-ascii?Q?e+p+gaSEoQ/ZTp3tTdNaiF6iqa4Ht82tJUmTqV6jPtjKRaT4ppDm9Ikhx1rk?=
 =?us-ascii?Q?Mau2bUcee1+moBhZurr5TgP8YKZ9ZrfCGbu8VV0/KrbOybe9BDAXY3+KheFg?=
 =?us-ascii?Q?c2zHKQJLlBfe2DzNT/agOzv4AaoasphTz3bc2aHtaK9/qBIXaIW42Mxhas9C?=
 =?us-ascii?Q?qrBdFsArMfzKpdzOonQi0d0CN+tnQgi++jKLwJX3hfJ/yBmIaDmQYBMHEC0W?=
 =?us-ascii?Q?rlOVKl513FBoOekKFitq9c5Oz7Ptyq6ety95YrmVLnQn6dNEp6JynObRrWgn?=
 =?us-ascii?Q?pll2I/YsO+bikYqznMprcCJw+e72r0t2MFjMmHdAbqBpRW6iF2+iunrQZ1sC?=
 =?us-ascii?Q?ke5VRVmmV03hBQdy0HuzaVaAaJoUF5S52mkNUh9vo4PzRDwfvXKu+YCbIt7Q?=
 =?us-ascii?Q?kNxZvA0AeunxyUGcahvR/AMVNu4+/yfevac9wOgBH4vOwaznlcURxoSh+jTC?=
 =?us-ascii?Q?EwWtpCB5bcc4uDCjazLgWh2ogUVLKwYVvRSWyG2vHSXQdanHYwjacWjMbE+f?=
 =?us-ascii?Q?VBt31vU0SvLrrDCG5Kgm50KWZEHiUMiqv2mZnqZggT5AO/FnOWi1qmdc4vI8?=
 =?us-ascii?Q?8GYWjUlVkKCR+PJcsVoLJg2Oh/8i9qQvsFiazPsZvIqtStXimSg7CHblojFB?=
 =?us-ascii?Q?iPp40GAzM2Kp1C3SUTiZM2O5U8I1AsU/6/69UwvzYHPBHLpQV1dkPO1AIX2/?=
 =?us-ascii?Q?anUMpsSTkiJ8ewhlQ60T3ZYR+AE+yfgK+npl0tHmtp6bxvW6bIghvWc7Ooaz?=
 =?us-ascii?Q?SSCUJy62VkYT4JDZhVjjR5Xc+UhFgcd3qwZ4pvKGB1K31NAAf83JJghRaMCj?=
 =?us-ascii?Q?JEXGeWzRYsE5O5Fbg25YGEZzpufB2ynHHaVfmdpyiUPw93FXENYn8FxGyX6b?=
 =?us-ascii?Q?2m/p9eWiaovOJY+mHOf9Toct23kNA5twRIp36w9uwwZLGM+rM9ULHeynXrPa?=
 =?us-ascii?Q?I7a1v31NMeAE93/6TcaBUYyfnUh548E165UASnxK8Kp8S9QdrzXFqMSXG5tC?=
 =?us-ascii?Q?q46mM1EX/EojDxaGXv49fbplYUKEmhGkyiluIPUt0Egug54rBov9uHBCIzH7?=
 =?us-ascii?Q?WzL8z0HWWktgYA7CBdNIzCN6zv7oyA58uWIr3sByelUNfkm9Jhi2Xqb9Os1C?=
 =?us-ascii?Q?fkxivquZ6af6x+UgmIFs/ZD91RmVXlgXoEL4yZ4vjhkWrnkTZIaZxIEv5mg/?=
 =?us-ascii?Q?LQD9t3l5z1GY+wJeekyVRiCOj+uycIZgaV7c63T+ljuDAEjOxEoUVqHZCfFR?=
 =?us-ascii?Q?TXCGbv8V01oHdF91dP3Y8ZklmYuiqI9+X/9PEcWBUcpKBzSnQ+D8OozyjV2b?=
 =?us-ascii?Q?yEMCETlJsST6O5KMSAiBBn1ue7YBlmOGnH53Tu6plQjPk1LuhpomBHjhzOlT?=
 =?us-ascii?Q?A/b4f9BHty7yQpZ58EWROUWdj97TSBFpgUPvDdsVfVYe1W5/jqBpr9xz6Zfk?=
 =?us-ascii?Q?1Y6/i8D1v0Ah64onQcPoP2imxr++Q0B3np6K6ZLT6aYzwlKuGF6cyu/SIQRs?=
 =?us-ascii?Q?6WRxfWwVL2y9SzjKxYtuaYHktp9jN+7cLXD15tl8?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ee07c8b1-f261-41a6-4fc7-08dac8b55d03
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2022 16:04:10.4917 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JGCELHIgxmS12Mu0WIFeN/m5KCJ+oDPs27FWJ0IBd5QCnRxs0QIHWluBZX80DLZ0LBmJrd53txIQy7WFN0tY0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7094
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/6] drm/i915/pxp: Make
 intel_pxp_is_enabled implicitly sort PXP-owning-GT
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

On Wed, Nov 16, 2022 at 04:30:14PM -0800, Alan Previn wrote:
> Make intel_pxp_is_enabled a global check and implicitly find the
> PXP-owning-GT.
> 
> PXP feature support is a device-config flag. In preparation for MTL
> PXP control-context shall reside on of the two GT's. That said,
> update intel_pxp_is_enabled to take in i915 as its input and internally
> find the right gt to check if PXP is enabled so its transparent to
> callers of this functions.
> 
> However we also need to expose the per-gt variation of this internal
> pxp files to use (like what intel_pxp_enabled was prior) so also expose
> a new intel_gtpxp_is_enabled function for replacement.
> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c  |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_create.c   |  2 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp.c         | 28 ++++++++++++++++++--
>  drivers/gpu/drm/i915/pxp/intel_pxp.h         |  4 ++-
>  drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c     |  2 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  2 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_irq.c     |  2 +-
>  drivers/gpu/drm/i915/pxp/intel_pxp_pm.c      |  8 +++---
>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     |  4 +--
>  9 files changed, 40 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 7f2831efc798..c123f4847b19 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -257,7 +257,7 @@ static int proto_context_set_protected(struct drm_i915_private *i915,
>  
>  	if (!protected) {
>  		pc->uses_protected_content = false;
> -	} else if (!intel_pxp_is_enabled(&to_gt(i915)->pxp)) {
> +	} else if (!intel_pxp_is_enabled(i915)) {

if we are asking about pxp we should pass pxp, not i915...

>  		ret = -ENODEV;
>  	} else if ((pc->user_flags & BIT(UCONTEXT_RECOVERABLE)) ||
>  		   !(pc->user_flags & BIT(UCONTEXT_BANNABLE))) {
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> index 33673fe7ee0a..e44803f9bec4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> @@ -384,7 +384,7 @@ static int ext_set_protected(struct i915_user_extension __user *base, void *data
>  	if (ext.flags)
>  		return -EINVAL;
>  
> -	if (!intel_pxp_is_enabled(&to_gt(ext_data->i915)->pxp))
> +	if (!intel_pxp_is_enabled(ext_data->i915))
>  		return -ENODEV;
>  
>  	ext_data->flags |= I915_BO_PROTECTED;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index d993e752bd36..88105101af79 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -9,6 +9,7 @@
>  #include "intel_pxp_tee.h"
>  #include "gem/i915_gem_context.h"
>  #include "gt/intel_context.h"
> +#include "gt/intel_gt.h"
>  #include "i915_drv.h"
>  
>  /**
> @@ -58,11 +59,34 @@ bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp)
>  		INTEL_INFO((pxp_to_gt(pxp))->i915)->has_pxp && VDBOX_MASK(pxp_to_gt(pxp)));
>  }
>  
> -bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
> +bool intel_pxp_is_enabled_on_gt(const struct intel_pxp *pxp)
>  {
>  	return pxp->ce;
>  }
>  
> +static struct intel_gt *i915_to_pxp_gt(struct drm_i915_private *i915)
> +{
> +	struct intel_gt *gt = NULL;
> +	int i = 0;
> +
> +	for_each_gt(gt, i915, i) {
> +		/* There can be only one GT that supports PXP */
> +		if (intel_pxp_supported_on_gt(&gt->pxp))
> +			return gt;
> +	}
> +	return NULL;
> +}
> +
> +bool intel_pxp_is_enabled(struct drm_i915_private *i915)
> +{
> +	struct intel_gt *gt = i915_to_pxp_gt(i915);
> +
> +	if (!gt)
> +		return false;
> +
> +	return intel_pxp_is_enabled_on_gt(&gt->pxp);
> +}
> +
>  bool intel_pxp_is_active(const struct intel_pxp *pxp)
>  {
>  	return pxp->arb_is_valid;
> @@ -216,7 +240,7 @@ int intel_pxp_start(struct intel_pxp *pxp)
>  {
>  	int ret = 0;
>  
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_pxp_is_enabled_on_gt(pxp))
>  		return -ENODEV;
>  
>  	if (wait_for(pxp_component_bound(pxp), 250))
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index efa83f9d5e24..3f71b1653f74 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -11,12 +11,14 @@
>  
>  struct intel_pxp;
>  struct drm_i915_gem_object;
> +struct drm_i915_private;
>  
>  struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
>  
>  bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp);
>  
> -bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
> +bool intel_pxp_is_enabled_on_gt(const struct intel_pxp *pxp);
> +bool intel_pxp_is_enabled(struct drm_i915_private *i915);
>  bool intel_pxp_is_active(const struct intel_pxp *pxp);
>  
>  void intel_pxp_init(struct intel_pxp *pxp);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> index f41e45763d0d..f322a49ebadc 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
> @@ -99,7 +99,7 @@ int intel_pxp_terminate_session(struct intel_pxp *pxp, u32 id)
>  	u32 *cs;
>  	int err = 0;
>  
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_pxp_is_enabled_on_gt(pxp))
>  		return 0;
>  
>  	rq = i915_request_create(ce);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> index f0ad6f34624a..4d257055434b 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> @@ -18,7 +18,7 @@ static int pxp_info_show(struct seq_file *m, void *data)
>  {
>  	struct intel_pxp *pxp = m->private;
>  	struct drm_printer p = drm_seq_file_printer(m);
> -	bool enabled = intel_pxp_is_enabled(pxp);
> +	bool enabled = intel_pxp_is_enabled_on_gt(pxp);
>  
>  	if (!enabled) {
>  		drm_printf(&p, "pxp disabled\n");
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> index c28be430718a..d3c697bf9aab 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_irq.c
> @@ -22,7 +22,7 @@ void intel_pxp_irq_handler(struct intel_pxp *pxp, u16 iir)
>  {
>  	struct intel_gt *gt = pxp_to_gt(pxp);
>  
> -	if (GEM_WARN_ON(!intel_pxp_is_enabled(pxp)))
> +	if (GEM_WARN_ON(!intel_pxp_is_enabled_on_gt(pxp)))
>  		return;
>  
>  	lockdep_assert_held(gt->irq_lock);
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> index 6a7d4e2ee138..19ac8828cbde 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> @@ -11,7 +11,7 @@
>  
>  void intel_pxp_suspend_prepare(struct intel_pxp *pxp)
>  {
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_pxp_is_enabled_on_gt(pxp))
>  		return;
>  
>  	pxp->arb_is_valid = false;
> @@ -23,7 +23,7 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
>  {
>  	intel_wakeref_t wakeref;
>  
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_pxp_is_enabled_on_gt(pxp))
>  		return;
>  
>  	with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm, wakeref) {
> @@ -34,7 +34,7 @@ void intel_pxp_suspend(struct intel_pxp *pxp)
>  
>  void intel_pxp_resume(struct intel_pxp *pxp)
>  {
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_pxp_is_enabled_on_gt(pxp))
>  		return;
>  
>  	/*
> @@ -50,7 +50,7 @@ void intel_pxp_resume(struct intel_pxp *pxp)
>  
>  void intel_pxp_runtime_suspend(struct intel_pxp *pxp)
>  {
> -	if (!intel_pxp_is_enabled(pxp))
> +	if (!intel_pxp_is_enabled_on_gt(pxp))
>  		return;
>  
>  	pxp->arb_is_valid = false;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index b0c9170b1395..a5c9c692c20d 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -152,7 +152,7 @@ static int i915_pxp_tee_component_bind(struct device *i915_kdev,
>  		return 0;
>  
>  	/* the component is required to fully start the PXP HW */
> -	if (intel_pxp_is_enabled(pxp))
> +	if (intel_pxp_is_enabled_on_gt(pxp))
>  		intel_pxp_init_hw(pxp);
>  
>  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> @@ -167,7 +167,7 @@ static void i915_pxp_tee_component_unbind(struct device *i915_kdev,
>  	struct intel_pxp *pxp = i915_dev_to_pxp(i915_kdev);
>  	intel_wakeref_t wakeref;
>  
> -	if (intel_pxp_is_enabled(pxp))
> +	if (intel_pxp_is_enabled_on_gt(pxp))
>  		with_intel_runtime_pm_if_in_use(&i915->runtime_pm, wakeref)
>  			intel_pxp_fini_hw(pxp);
>  
> -- 
> 2.34.1
> 
