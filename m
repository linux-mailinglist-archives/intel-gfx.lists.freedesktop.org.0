Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F2A62E0DB
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 17:04:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F2ED10E649;
	Thu, 17 Nov 2022 16:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A71B10E649
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 16:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668701066; x=1700237066;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gNegxYLmw/C2ZoMceE4QLTXDz1Q5Ml2On+2hH5AjcrA=;
 b=Xdhw5wcCIb1H2LKJL0g/lKVtrtNCNy2Hm9OJM8BVEfwgW2xAR0y7wxDR
 F7CmDev2m3MI2NE8gwPShHKssnLHrlOGop527qSg69Sb6WJK+O0avqiq9
 cXMQZTi84XYce/jQRF9lKIBuIUCgI5FFyov7WVyU9TawB8Xne1/5HovUk
 LMCys9mQrWV6RfO8/joIqYjE6iGfC8BT6QIzgbZGqD5dJnHSaeEazzwlY
 OlILWlGpMr6U+XKydv+2zVuBKSwUnZ1I8vdyz6EV8eppVK5Mpj3PMoNO3
 5YedE7dyxnXLewXnnuvL/eh2u/DBiNfvo+/epkgv8gHyMKM3KsSHpW4me A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="339719620"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="339719620"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 08:02:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="814561867"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="814561867"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 17 Nov 2022 08:02:58 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 08:02:58 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 08:02:58 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 08:02:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I66uo7yP0tW2kDFA/28CwmYaX8yIro3Rbc0ZL6piL7tNhLlfcVGdi9WeJWCcbUekP/2Ur0Bzoagf3ReQRgvJSghaZI8TU2orFrwH+Yp4lDBOK32EGNSmkPT2nZzf0P2hWxcyxcFL4TQNphv97vW5sgvmDeAMb1KZWKvLr3leI2MTl3ZDDpaJe3rF7r840x0KMBP8/E/jxbBrd/UpFMf/i0Z+VkNxe5CxfHqVkmVQzPh/J9gVbnCInLglHxWUCzOzC7rpHOxKGy9DOO/FYxR+H0JAkbbZ9lu4wMt0fd/UDSDWC55HbRDiPc1UuNN8rnPLoodXo2RYQYxarUZbxRbvPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=566zG0njIuHoEe2PxEQyPr862NulbsEEsaObj/yM400=;
 b=QrXXj7jOjaQAQu3LxAehRf41F49LnDtWWmhtOTQ5gI4sHGMbQVKeJqzwDUlEKlpUeaUP2ubTYbPlNlOx5vOLUKXJ/NH3O/kMac1bD2rrfBBpwkr09N4i63rR4jYXwchhZiFjlOll5nnIF35+T6xXQuibl7+YkQVGBK0DM8lTdto6SdtiueAPc2dyPKqRVq5FlA8OUSajaABH8NXSMrahiw+aIFWM8BOs1c84OuxMA4OByKnc35M6Psg3QCBmzjpH9gw9alafR2Fmh56ZQqudzEiO86he9WCVmrd0mejUZjr6+Nr++rHh9j1WDqSMZNDQdgNN3qK8eu8TVtam4TnU1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Thu, 17 Nov
 2022 16:02:56 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%5]) with mapi id 15.20.5813.020; Thu, 17 Nov 2022
 16:02:56 +0000
Date: Thu, 17 Nov 2022 11:02:52 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <Y3ZbLA2nenwp29u/@intel.com>
References: <20221117003018.1433115-1-alan.previn.teres.alexis@intel.com>
 <20221117003018.1433115-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221117003018.1433115-2-alan.previn.teres.alexis@intel.com>
X-ClientProxiedBy: SJ0PR05CA0079.namprd05.prod.outlook.com
 (2603:10b6:a03:332::24) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CO6PR11MB5651:EE_
X-MS-Office365-Filtering-Correlation-Id: 8bdee706-79e9-4f68-def3-08dac8b530ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FrLvvQZlUsy+8xmG6vK+dsvm41+73sli1Hf2S7x2xgqoYOUBnjtk6GjeP5l/tPPl9tmH3ZvX8fUtigLgqbJZiBM1nKBbuyMAZi7ASB00OxaLcevuMFAI9zel1k5mSRtbvtsX8+wm1dq9m9NqPuwRDP55sbpXBztzTIJCdO+pk0PmPgTLsMlXTbqrGHDpHzUVFvDO5qA3YWDRi1+fQrTvkjNCkBAiAI2lJY7AbZygy/wLpmIJlWCwbqIzY66LNLnaci3WJbLIqE8OwLclMLWPpAJYYTooPLrsZY6abRNMcnkXCexzp0aZIwtOc12Q1qeTXXlFKWnN85WJSWT0Dwj/CSiee8K5XvNtYaiXk9n7l/3ugPsNs5RV7tS5W48R/OhDIKa811qnQXyVKck67PFZJyt/x8ljiVeX1yxvUzhj3hAlJioOmxlEGlfzVFGRhML6aqi3N1Iem50Sd/86uYPL0ru88nA2e3ME/4aRnIBrICRCcuF6X/0S8dqKJmUilyzCTLwx2AdwmyWSh3R1OXBJKTHdmT5C1xLHpp3xT1FfUx3aUkp79PUhDX4WrICqDaC0r65l0a/7CpRIb0Tb3FtB3GgfXqnztUASGuqye4oYkG1XGMUb0PqzYwzGs+QpfH/EcIblgjyvxP011oI0r2U6nQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(346002)(366004)(396003)(39860400002)(451199015)(36756003)(86362001)(186003)(6512007)(38100700002)(6666004)(6862004)(83380400001)(6506007)(2616005)(478600001)(37006003)(66946007)(6636002)(66556008)(66476007)(316002)(5660300002)(8676002)(4326008)(26005)(2906002)(8936002)(44832011)(82960400001)(6486002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8EJ3ZdkMUefrCOYT/vwBPDj1/EW/abDXZbo6Q2pi/0sz+pT4i9lyKDFKfg78?=
 =?us-ascii?Q?UNXyTPsVJlZToYSMhIk/sEuYcMVYUihVd4l5bKixq8JbrFe2lX7UX4ioFzWA?=
 =?us-ascii?Q?G41uEsXKzkLTeaBeKRQiCAJzwz+qI0MvLNec4FCcXsS7cIGO/hIlh0eb2kLX?=
 =?us-ascii?Q?06MSGmjTo9Wmpza44c0p8vs9wngh6S6/PEC8Xn0Hz4J05HgXrap+g9E6i2el?=
 =?us-ascii?Q?R0BadiftGK9eILvcAI6j2hnsYVZpXWvTBmwJcAXm37eTXl4YScbjFZWuxFeE?=
 =?us-ascii?Q?OlWJcfRJ7FfMPojPpxsS3V38TX998Bnhj7oUK7yiXHGQ0v3NLLJaDcGDzZML?=
 =?us-ascii?Q?l+NayxKTcsHnaForkEBOTqcNfux03UVhS7PNEFZWZ0RUZvI9p53jaiQDWqUV?=
 =?us-ascii?Q?3iym2vQ0Mr+guwtkamsxiqB0SrxvHYN07zh4Pxe9asc7aE13ZhL/yri3CWs0?=
 =?us-ascii?Q?X+70ApW4aNP0spRavEpSzKZyuHzSNOjOJwk0gMrWG2EXZI8TIIRAEtMbvel7?=
 =?us-ascii?Q?WRhTVidgO/U+gtiA/fDO61BFVUIqzrkCOiVDTBnwXtvLlECxCp8RmXF5D/r1?=
 =?us-ascii?Q?8Zb31dxrDT2E5CkYGRI6svvQDABv/27WGYzQCTfopGiIodKBYPLFEfowhSk7?=
 =?us-ascii?Q?aDj3BqCnEPwLw8jo9v4qAKFmVtBJmKKbm6OObCDKLWYcX27GNZiBAhHjL/tP?=
 =?us-ascii?Q?gKQN4i5YBjMCpR9nd+YeImAoGNmYHRemabxq16dh7U3BnFhwtpuzuI4naKDl?=
 =?us-ascii?Q?FbZzIkAIgPcqg8dI1tyJS9Qo27svOYtks71pBVyVjkt4rfW6fs0n9XRXw6UK?=
 =?us-ascii?Q?KfHDUxnOqn150jiqHSrPcfCmQYMzxB08M5TTSut77jbO6sTJ/ZsVXKRxPFkg?=
 =?us-ascii?Q?hP05pHnyoLc1HpQeQOLQvltFeWbiqNmxCKJjcyp6BV/OeaNRhMaSbrk1G/AE?=
 =?us-ascii?Q?tWQoM5+bIos7W2yi28PaVLDTB37FlKrP4pXgmeK0169V/U1BiR9Q4t3CRt08?=
 =?us-ascii?Q?FUN/25EPHpZ+twpntxZlinsKHoNCGdQMSLM83k8mTfDU8xXvNA/i9mD7lSBV?=
 =?us-ascii?Q?wzEFBnfxnNc1kBeiU7oB9NAIhhI1LsGvsvcQxDCQeyRYhMV4zAwDe3e9hD8Z?=
 =?us-ascii?Q?qeFhdJwsaySxawbID6I/2+6NYhdBYd09L2a3EvLlew+tFu3kdPT+qO00HBot?=
 =?us-ascii?Q?gqSirtf4/odI7C+WGrUwVHmVNJB7D2YEIs0r8LNPtjg3M6B16QTyXdCLW/V7?=
 =?us-ascii?Q?0Gc9raCG+K7e+Bq8tt3S7AopXcNAe5WI9GWpgBlPg4MTi9gHRE4+I1XQekv1?=
 =?us-ascii?Q?X8cCiy0mlgx/eXitS/FACaDsBRLhpoPP/NEofA29/nvqJTU8ChnVt8CyQLY6?=
 =?us-ascii?Q?e5lgV6AVrKrgJ6hkj1qoyKw1GJ+Gd7LYy8/q4Yol+P8RnWW5Rw04KT+uPbO3?=
 =?us-ascii?Q?tu68C+vR/Y+nEJt7qD05+683FX5QfKnYu48ts6spPgrmobhZqaL3s5hxbxcF?=
 =?us-ascii?Q?5oNZTp9oOMHQtw/nbvcIg79++ackIs61dPrV83nE9KRq5Uvgne3YIJ5vS6mF?=
 =?us-ascii?Q?1pPgKV5QtFKtF6rhkg2HqZ2RQQUWMCtIDRud2EUo?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bdee706-79e9-4f68-def3-08dac8b530ac
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2022 16:02:56.1836 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RkB/YzONOYJM4q6bXD7W+ezm00/QCZAkzIZWqrA3uYgWoFt0QGupHkbcS7gQTfqfZYAU9/cTudsw20yWyWR4Xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5651
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/6] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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

On Wed, Nov 16, 2022 at 04:30:13PM -0800, Alan Previn wrote:
> In preparation for future MTL-PXP feature support, PXP control
> context should only valid on the correct gt tile. Depending on the
> device-info this depends on which tile owns the VEBOX and KCR.
> PXP is still a global feature though (despite its control-context
> located in the owning GT structure). Additionally, we find
> that the HAS_PXP macro is only used within the pxp module,
> 
> That said, lets drop that HAS_PXP macro altogether and replace it
> with a more fitting named intel_gtpxp_is_supported and helpers
> so that PXP init/fini can use to verify if the referenced gt supports
> PXP or teelink.

Yep, I understand you as I'm not fan of these macros, specially
single usage. But we need to consider that we have multiple dependencies
there and other cases like this in the driver... Well, but I'm not
opposing, but probably better to first get rid of the macro,
then change the behavior of the function on the next patch.

> 
> Add TODO for Meteorlake that will come in future series.

This refactor patch should be standalone, without poputing it with
the changes that didn't came yet to this point.

> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h              |  4 ----
>  drivers/gpu/drm/i915/pxp/intel_pxp.c         | 22 ++++++++++++++------
>  drivers/gpu/drm/i915/pxp/intel_pxp.h         |  3 +++
>  drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c |  2 +-
>  4 files changed, 20 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 7e3820d2c404..0616e5f0bd31 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -933,10 +933,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  
>  #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
>  
> -#define HAS_PXP(dev_priv)  ((IS_ENABLED(CONFIG_DRM_I915_PXP) && \
> -			    INTEL_INFO(dev_priv)->has_pxp) && \
> -			    VDBOX_MASK(to_gt(dev_priv)))
> -
>  #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
>  
>  #define HAS_GMD_ID(i915)	(INTEL_INFO(i915)->has_gmd_id)
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 5efe61f67546..d993e752bd36 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -44,6 +44,20 @@ struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
>  	return container_of(pxp, struct intel_gt, pxp);
>  }
>  
> +static bool _gt_needs_teelink(struct intel_gt *gt)
> +{
> +	/* TODO: MTL won't rely on CONFIG_INTEL_MEI_PXP but on GSC engine */
> +	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && intel_huc_is_loaded_by_gsc(&gt->uc.huc) &&
> +		intel_uc_uses_huc(&gt->uc));
> +}
> +
> +bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp)

If we are asking if it is supported on gt, then the argument must be a gt struct.

> +{
> +	/* TODO: MTL won't rely on CONFIG_INTEL_MEI_PXP but on GSC engine */
> +	return (IS_ENABLED(CONFIG_INTEL_MEI_PXP) && IS_ENABLED(CONFIG_DRM_I915_PXP) &&
> +		INTEL_INFO((pxp_to_gt(pxp))->i915)->has_pxp && VDBOX_MASK(pxp_to_gt(pxp)));
> +}
> +
>  bool intel_pxp_is_enabled(const struct intel_pxp *pxp)
>  {
>  	return pxp->ce;
> @@ -142,17 +156,13 @@ void intel_pxp_init(struct intel_pxp *pxp)
>  {
>  	struct intel_gt *gt = pxp_to_gt(pxp);
>  
> -	/* we rely on the mei PXP module */
> -	if (!IS_ENABLED(CONFIG_INTEL_MEI_PXP))
> -		return;

I took a time to understand this movement based on the commit description.
I have the feeling that this patch deserves further split in different patches.

But also, looking a few lines above pxp_to_gt(pxp), I believe we
have further refactor to do sooner. is is one pxp per gt, then we
need to only enable in the gt0?

> -
>  	/*
>  	 * If HuC is loaded by GSC but PXP is disabled, we can skip the init of
>  	 * the full PXP session/object management and just init the tee channel.
>  	 */
> -	if (HAS_PXP(gt->i915))
> +	if (intel_pxp_supported_on_gt(pxp))
>  		pxp_init_full(pxp);
> -	else if (intel_huc_is_loaded_by_gsc(&gt->uc.huc) && intel_uc_uses_huc(&gt->uc))
> +	else if (_gt_needs_teelink(gt))
>  		intel_pxp_tee_component_init(pxp);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> index 2da309088c6d..efa83f9d5e24 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
> @@ -13,6 +13,9 @@ struct intel_pxp;
>  struct drm_i915_gem_object;
>  
>  struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp);
> +
> +bool intel_pxp_supported_on_gt(const struct intel_pxp *pxp);
> +
>  bool intel_pxp_is_enabled(const struct intel_pxp *pxp);
>  bool intel_pxp_is_active(const struct intel_pxp *pxp);
>  
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> index 4359e8be4101..f0ad6f34624a 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_debugfs.c
> @@ -70,7 +70,7 @@ void intel_pxp_debugfs_register(struct intel_pxp *pxp, struct dentry *gt_root)
>  	if (!gt_root)
>  		return;
>  
> -	if (!HAS_PXP((pxp_to_gt(pxp)->i915)))
> +	if (!intel_pxp_supported_on_gt(pxp))
>  		return;
>  
>  	root = debugfs_create_dir("pxp", gt_root);
> -- 
> 2.34.1
> 
