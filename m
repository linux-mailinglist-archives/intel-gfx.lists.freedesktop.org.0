Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC4F95918C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 02:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 613D510E553;
	Wed, 21 Aug 2024 00:04:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AjPGTNEf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CC9C10E552;
 Wed, 21 Aug 2024 00:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724198657; x=1755734657;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+OngHyrksLvTJxX2kXjOwi8hq3URjkhWF8QODKKLQE0=;
 b=AjPGTNEfvHp9zXd8KrCSVig83hy08oskL0zx4ebCkVd7S5QrMhq0JEF0
 QTbhLytV2OjlhgR6dLXIMa00uw+JU3CxmLybqm8xBQrjNd95HQLzF2Zp9
 f0zYZafqAIFwGLrOptA4MytFNWOUyXKJPJsGxABL9paZZfoAXLpyiGTDh
 0mDIqHABBiOX0AjfxwC+7Y/lZD9HPvZUu5ppjNUZLhpNsJNMTYo68ru2N
 XKHA1GsgNcT4NtUipB+sx94g6AQ5rB18H7L7Y8NCbevc8LOSwmNlEnXla
 YthCOorzYbroS9FGlu1Q2grrkJIBToc/sZOf+GmbH/2eAU0xgel+bMmz9 w==;
X-CSE-ConnectionGUID: jY7KVr0KTxC+4xYxJ7T9HQ==
X-CSE-MsgGUID: q8VoUfIzRK6Q7PFjxAtEWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22506484"
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="22506484"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 17:04:16 -0700
X-CSE-ConnectionGUID: wSXwsAnyS062zmCwG0ijAQ==
X-CSE-MsgGUID: w9E2CKVAT9iCf/ZK8seF8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="60863234"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 17:04:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 17:04:15 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 17:04:15 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 17:04:15 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 17:04:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hKPuy6PhnAF77MfcIMPt6s13HrqJbTB1oW/X4zJ/gNcCjZONzThhUmS+xyO47XD+YmEC0VsdiBWb6zIImbzcSubFmA5gQoqbzx1xF2SMZ7JxzlPIrHBqxEiRBFWTw0jB80T3wOoKxHYL7Tj78cfxu9RxfmN0QvPyPJYw5MtGqc1xecaF/xma7UHgUegg6z86nCaQJoJqsZzQz/Ep26WeqdcBmBbzl6QruFJJM8ERQ0Rs2BBZ1lImEhO7Bu5sALwtrtKrQN6ZKDtxSCt1xK0XlDBLZIURNEVq81vQJsf6nCXjS5umiCE98355fuhH4K22QC+BsYu5EV2w/4iMKUJilA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hYIkPPh0z1coxc1rJiNqI88Hy6xRPBdUge5emM9z71Y=;
 b=OoXQSgH70ktMAhyVMU5gNdMxgzGkGzLzzHN7yCccXyDAOWzbXfkP0gl0Ga1y7CePsKLchFPL+WqUij4V5T4RfSJIuMsKWHimYuBUhUSTDOjA9lF/2vMxjyErhq28BuKe6jCNdTRyfoqiaWZlAog4kx6NlyWT1GHra8G60VLvn/rlZLGGrMBEAajYcAMIqWyZIBQxAUy5lVyJZx7a73PAwgd3+PuTK9mljKoroit98gi7YzuUnh889vc5FDCN0DguRzultCCj0e8HctnB3wkfRG0mWXfeajOJqQekIZsc5qKoAD6BTxcUpRZXJCcBUSYDSn52se6MlW7+fV4dzVakrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB5864.namprd11.prod.outlook.com (2603:10b6:510:136::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Wed, 21 Aug
 2024 00:04:12 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 00:04:12 +0000
Date: Tue, 20 Aug 2024 17:04:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 09/10] drm/i915: remove display stepping handling
Message-ID: <20240821000410.GU5091@mdroper-desk1.amr.corp.intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
 <d64c5e8563dcb8858569d5578230f6b675acdafb.1724180287.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d64c5e8563dcb8858569d5578230f6b675acdafb.1724180287.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0167.namprd03.prod.outlook.com
 (2603:10b6:a03:338::22) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB5864:EE_
X-MS-Office365-Filtering-Correlation-Id: 00420e34-e02c-4905-0ffb-08dcc174c9c2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4M3v/ViH2jihnpOxvpQeKn4psdCV/bJbbzsp1lKw9WVlqjoS4kKpH1ZwUWMZ?=
 =?us-ascii?Q?ZUXTCWPsJHWo2MNcidj8SZJHOCivSx7/55xjqhISbH3PJ2XnjwUF8yyOvseW?=
 =?us-ascii?Q?lHNhKXcRbwN/DKeUKDvT2CDZy/G9jNXyCSOfr2eL5cc//sEY8NOUr5u0aj3B?=
 =?us-ascii?Q?KuzNWnHCMeTLQSWep75KKvMUulEdYoGd2S/9Ktz4wp7woKWTi+ZRv/e4vseX?=
 =?us-ascii?Q?K06qWzBxIwxSc+26wizIbZons4uxWeYYit2QfEUuFlBwfmqqrPkcTTSPIOeC?=
 =?us-ascii?Q?u57b2SKQX5D8Q5gucNJ9yKMN55TxCvPjhVF+3l33sesJDpxoXTa/Z/fPWXa1?=
 =?us-ascii?Q?AB6oDT4+h8Yi0shWjPOWB5AzSNSdmTvV+Ea1q7Zojva+xqv+JEaK4tIMVXFN?=
 =?us-ascii?Q?oZld5eS06UMTBDzszZ1vxmz4nlMQLO8FH6IP01fhaorAH4Kkiv9zdpleplw4?=
 =?us-ascii?Q?kqbsooWaGWfTQWjGx1JzwT0AaTFmepaDVeFtTNddrO5uR49EjEmkEWUehFk1?=
 =?us-ascii?Q?pGaoIJbRL85aVEwBcmdcCq37VmqdtOyt6PM6SmKI+Av9T0qM3jA3C2LtuBn8?=
 =?us-ascii?Q?zxOdYGR4ZySDmW6ro4zQA5uvD8fSx2BePSLId1Kxd99FiT5+uJM/ewzDA71i?=
 =?us-ascii?Q?SPxozg3y11UnZkB53owSWDMhiRm4UoiyDfPyVnsOyrBiCi5dUUCbSkM5pY6Q?=
 =?us-ascii?Q?xMqaoZnKj8I+lUDG6rjVLUOGWcl3ule/V6ONR+r+gj7OeM/TdA9bK6/U4s87?=
 =?us-ascii?Q?zPmrLTfV9XfddhmziLhzhGu9kszRn64S6tFAfhuKF2xGczzFPZyEQc6mGTqa?=
 =?us-ascii?Q?rAjfR7aiF9k3gX6NdnRq/+G8b6UnOiEDbuAHtVM0g/D5yIkFtS8tqiOpiRQl?=
 =?us-ascii?Q?kaywKCUiTTUdaMPP4Li//ST9tNl7VppEKiATu8EwHAuwX2/01lzmUokP8Nyx?=
 =?us-ascii?Q?Yiumcci4H27KfbrtgnmKt4D0Z2C2a7S+BPqjBrJbb4GbtERYkYeCU9Gp76Ko?=
 =?us-ascii?Q?ZQdKzJeeCGn00dRhTvxBSoNWho9SpEQwGV65Sx+X1qpovhjM0xz4yLvopaQA?=
 =?us-ascii?Q?If9Qv/mUyAMrxw9fNnCP0uqNIVhgR5pLnU4TuOp/J6dCp8KErDyBIDtWMu0b?=
 =?us-ascii?Q?FV47G/Kp8xg12TiI3Rgk/t6O4a2PoyIcQvwwNTt8DdYF935ri6wFUti6Qswg?=
 =?us-ascii?Q?YOzY3mgMHcRXCwFmwXETJjrha0WNylKIszXDUTyjq/KE2gbgTXm8RbSs8s9C?=
 =?us-ascii?Q?QDSoZ0m/6wdPYMSg1znWBTKNTmeWmsePZf5VZyEK+SWl2qgDvsfU6kJD0nfX?=
 =?us-ascii?Q?jMIi9p5jjWdpS6b+/a0OP5HflS5cTRZ8cPkjP6fIa9QJlw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BR8GOykP88RNUMWVeH3s1qSO2jREX/BbeJEmCpD3rYv7xaS76tveIz36E/L2?=
 =?us-ascii?Q?StaTxX53RCLlu2WsSn9e2Nk//HLyrJBJkVpe0LJPRgIpOjNISK1XjGMAHpyl?=
 =?us-ascii?Q?ObGyuxqBSY8Avy6KzdU5wP44TD2CNHFBSPFbanztlFNIoUvb/Cqlfkq7PRxE?=
 =?us-ascii?Q?YH+AtTSMdnY1IaM5SDMXtgVxXiT6zdw6ftOXWjEVN0pjGntHoLBNCjEVZUPR?=
 =?us-ascii?Q?owwuG9/PkcECcl4vtQRm2BlwC5ognGXwItu4QpZsZnAzYM+CGMFhYEAJMDrI?=
 =?us-ascii?Q?me210gwMsiIypyrO7zdCgbSsgRbMjWr2WFr20kH6eREInld7X6IZWlP5f4p7?=
 =?us-ascii?Q?gAms+0KofwkjNsJkgynw/45VTsvlvlxXbgRlF3yfiVEyUP6/RSpnuahObAnV?=
 =?us-ascii?Q?HM1MalzuEbzmZybblJ+UFkkfFau9WI3pF+dI7UKZW+TJIB7jnL2CMKy8vn2D?=
 =?us-ascii?Q?Cycx6zRwvPR2vaasvHXqLrsXpok7FCJwH1BnzcN4KzQI1aPQSqtC/N7cEblA?=
 =?us-ascii?Q?Uhd2AEjB88cDsz35wAxbMtPdfK/EqslnxitycOgcavB5IHG5heJSeLpADT/V?=
 =?us-ascii?Q?3v0jZA8sPkUVkNvJvVVaG1JAoJNtuIu7XNQspbLB1RJ5ylRkqFrJKzkzmkRW?=
 =?us-ascii?Q?F8CXnQcP5pLr2vqtAfbqVUZY6ePXYYTurS458RgMZBDLR7rg8LMVDeT9oi3F?=
 =?us-ascii?Q?3n7XATRpoLK3u+vcIWBrGm0E52qhXVacQPsup9480O7ltF7Haiyq6m/UEET0?=
 =?us-ascii?Q?+um6BBd72z77cIbKYIe2zyoXypSkNX3TuiefI15bREuVBldzFjKXx9kbzcJh?=
 =?us-ascii?Q?yBKmokWsl6wIa3+A50achRtV58sDcEIlndf5uNEXqCqvRmqPQaTuTvtIdUUO?=
 =?us-ascii?Q?eC5bVfvoDkrgAtdIyyzdAh9RGPgomCGJhzpAuucZQlm8R8LiLTo+1vnOCKjF?=
 =?us-ascii?Q?rioCZ6/f4AlN9IK3+PaRJtZbLPio9oBAi9tn3mmXUUz02vOAfNAQs6uIVs5G?=
 =?us-ascii?Q?rm6yg0tTwnnk39sLLmqZ2isvAgBwU1cGuWUBm4qwMCX9wc5bROKsuRdcbWEd?=
 =?us-ascii?Q?4+a2Ye/2P+/1E+NYCIHLlEJRbeT6nl+RIlaqkmVKFfvfvBItqBRgnJgtY9V0?=
 =?us-ascii?Q?JtF1zDQU7QAGHPMQ9eCxHZKCoNJpV03aI9JIwvk04EAvIC+FlepJHdO/fUZV?=
 =?us-ascii?Q?PpXWEEuWAhwi0MVe3ivpgo0yIoYws+kSpYXT8lWdolI8+Ph4I2S/FgIbj/R/?=
 =?us-ascii?Q?KaKlJg7s9kiQyEnArPbiNcOU+/5chrJLzY6dFG8SRTZVSx96w3MXpNkm4QB7?=
 =?us-ascii?Q?a/LJgdOmvKsbqrEk5uji0GMhUvioN4Q9MJAx8itpA1d615MIMyce4fjxC7Ce?=
 =?us-ascii?Q?YRkaesaqDv4VrFqMPtx0HXKFvd2clNaFDmFOEtkLuyEfyI+mqUvQnSavRFYP?=
 =?us-ascii?Q?3I5NUw6Z7CLdjXeyywU2ntgxwGPQsD2ChF4NrIgO0/05OK77CvodO7HdUJdk?=
 =?us-ascii?Q?8pxVdfkFt1eIYNEM27G3/wEbBr50lZ6AN36k5xURRX42q8JRpXQVl/34ZNCc?=
 =?us-ascii?Q?usveMgwcjDQnEZCuO+X4NH+guRl5+vxtHQv3EL/y3Xc1faF3WZBhZbVf7B/s?=
 =?us-ascii?Q?2Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00420e34-e02c-4905-0ffb-08dcc174c9c2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 00:04:12.5963 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zv3S5NV1Oth6iwIKV16p7w7HgXE2rOCSMuTemRn2nnmweYy4/l9vfH70wBm1uXQW5YnM+2hm5AgHTusQdj5zvJ0LzjEyVh4ebtl41ObCF3E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5864
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

On Tue, Aug 20, 2024 at 10:00:42PM +0300, Jani Nikula wrote:
> The code is now unused. Remove.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_step.c | 79 ++++++++++++++-----------------
>  drivers/gpu/drm/i915/intel_step.h |  1 -
>  2 files changed, 36 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index 80464e4edcce..285b96fadfd5 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -23,8 +23,7 @@
>   * use a macro to define these to make it easier to identify the platforms
>   * where the two steppings can deviate.
>   */
> -#define COMMON_STEP(x)  .graphics_step = STEP_##x, .display_step = STEP_##x, .media_step = STEP_##x
> -#define COMMON_GT_MEDIA_STEP(x)  .graphics_step = STEP_##x, .media_step = STEP_##x
> +#define COMMON_STEP(x)  .graphics_step = STEP_##x, .media_step = STEP_##x
>  
>  static const struct intel_step_info skl_revids[] = {
>  	[0x6] = { COMMON_STEP(G0) },
> @@ -34,13 +33,13 @@ static const struct intel_step_info skl_revids[] = {
>  };
>  
>  static const struct intel_step_info kbl_revids[] = {
> -	[1] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
> -	[2] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_B0 },
> -	[3] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_B0 },
> -	[4] = { COMMON_GT_MEDIA_STEP(F0), .display_step = STEP_C0 },
> -	[5] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_B1 },
> -	[6] = { COMMON_GT_MEDIA_STEP(D1), .display_step = STEP_B1 },
> -	[7] = { COMMON_GT_MEDIA_STEP(G0), .display_step = STEP_C0 },
> +	[1] = { COMMON_STEP(B0) },
> +	[2] = { COMMON_STEP(C0) },
> +	[3] = { COMMON_STEP(D0) },
> +	[4] = { COMMON_STEP(F0) },
> +	[5] = { COMMON_STEP(C0) },
> +	[6] = { COMMON_STEP(D1) },
> +	[7] = { COMMON_STEP(G0) },
>  };
>  
>  static const struct intel_step_info bxt_revids[] = {
> @@ -64,16 +63,16 @@ static const struct intel_step_info jsl_ehl_revids[] = {
>  };
>  
>  static const struct intel_step_info tgl_uy_revids[] = {
> -	[0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
> -	[1] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_C0 },
> -	[2] = { COMMON_GT_MEDIA_STEP(B1), .display_step = STEP_C0 },
> -	[3] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_D0 },
> +	[0] = { COMMON_STEP(A0) },
> +	[1] = { COMMON_STEP(B0) },
> +	[2] = { COMMON_STEP(B1) },
> +	[3] = { COMMON_STEP(C0) },
>  };
>  
>  /* Same GT stepping between tgl_uy_revids and tgl_revids don't mean the same HW */
>  static const struct intel_step_info tgl_revids[] = {
> -	[0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_B0 },
> -	[1] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_D0 },
> +	[0] = { COMMON_STEP(A0) },
> +	[1] = { COMMON_STEP(B0) },
>  };
>  
>  static const struct intel_step_info rkl_revids[] = {
> @@ -88,49 +87,49 @@ static const struct intel_step_info dg1_revids[] = {
>  };
>  
>  static const struct intel_step_info adls_revids[] = {
> -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
> -	[0x1] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A2 },
> -	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
> -	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_B0 },
> -	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_C0 },
> +	[0x0] = { COMMON_STEP(A0) },
> +	[0x1] = { COMMON_STEP(A0) },
> +	[0x4] = { COMMON_STEP(B0) },
> +	[0x8] = { COMMON_STEP(C0) },
> +	[0xC] = { COMMON_STEP(D0) },
>  };
>  
>  static const struct intel_step_info adlp_revids[] = {
> -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
> -	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
> -	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_C0 },
> -	[0xC] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_D0 },
> +	[0x0] = { COMMON_STEP(A0) },
> +	[0x4] = { COMMON_STEP(B0) },
> +	[0x8] = { COMMON_STEP(C0) },
> +	[0xC] = { COMMON_STEP(C0) },
>  };
>  
>  static const struct intel_step_info dg2_g10_revid_step_tbl[] = {
> -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_A0 },
> -	[0x1] = { COMMON_GT_MEDIA_STEP(A1), .display_step = STEP_A0 },
> -	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_B0 },
> -	[0x8] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_C0 },
> +	[0x0] = { COMMON_STEP(A0) },
> +	[0x1] = { COMMON_STEP(A1) },
> +	[0x4] = { COMMON_STEP(B0) },
> +	[0x8] = { COMMON_STEP(C0) },
>  };
>  
>  static const struct intel_step_info dg2_g11_revid_step_tbl[] = {
> -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_B0 },
> -	[0x4] = { COMMON_GT_MEDIA_STEP(B0), .display_step = STEP_C0 },
> -	[0x5] = { COMMON_GT_MEDIA_STEP(B1), .display_step = STEP_C0 },
> +	[0x0] = { COMMON_STEP(A0) },
> +	[0x4] = { COMMON_STEP(B0) },
> +	[0x5] = { COMMON_STEP(B1) },
>  };
>  
>  static const struct intel_step_info dg2_g12_revid_step_tbl[] = {
> -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_C0 },
> -	[0x1] = { COMMON_GT_MEDIA_STEP(A1), .display_step = STEP_C0 },
> +	[0x0] = { COMMON_STEP(A0) },
> +	[0x1] = { COMMON_STEP(A1) },
>  };
>  
>  static const struct intel_step_info adls_rpls_revids[] = {
> -	[0x4] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_D0 },
> -	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_C0 },
> +	[0x4] = { COMMON_STEP(D0) },
> +	[0xC] = { COMMON_STEP(D0) },
>  };
>  
>  static const struct intel_step_info adlp_rplp_revids[] = {
> -	[0x4] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_E0 },
> +	[0x4] = { COMMON_STEP(C0) },
>  };
>  
>  static const struct intel_step_info adlp_n_revids[] = {
> -	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_D0 },
> +	[0x0] = { COMMON_STEP(A0) },
>  };
>  
>  static u8 gmd_to_intel_step(struct drm_i915_private *i915,
> @@ -158,11 +157,6 @@ void intel_step_init(struct drm_i915_private *i915)
>  						       &RUNTIME_INFO(i915)->graphics.ip);
>  		step.media_step = gmd_to_intel_step(i915,
>  						    &RUNTIME_INFO(i915)->media.ip);
> -		step.display_step = STEP_A0 + DISPLAY_RUNTIME_INFO(i915)->ip.step;
> -		if (step.display_step >= STEP_FUTURE) {
> -			drm_dbg(&i915->drm, "Using future display steppings\n");
> -			step.display_step = STEP_FUTURE;
> -		}
>  
>  		RUNTIME_INFO(i915)->step = step;
>  
> @@ -252,7 +246,6 @@ void intel_step_init(struct drm_i915_private *i915)
>  		} else {
>  			drm_dbg(&i915->drm, "Using future steppings\n");
>  			step.graphics_step = STEP_FUTURE;
> -			step.display_step = STEP_FUTURE;
>  		}
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
> index 96dfca4cba73..83bd1190edf5 100644
> --- a/drivers/gpu/drm/i915/intel_step.h
> +++ b/drivers/gpu/drm/i915/intel_step.h
> @@ -16,7 +16,6 @@ struct intel_step_info {
>  	 * the expectation breaks gmd_to_intel_step().
>  	 */
>  	u8 graphics_step;	/* Represents the compute tile on Xe_HPC */
> -	u8 display_step;
>  	u8 media_step;
>  	u8 basedie_step;
>  };
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
