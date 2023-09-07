Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E61797D83
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 22:43:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46C2410E249;
	Thu,  7 Sep 2023 20:43:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3997710E0CB;
 Thu,  7 Sep 2023 20:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694119386; x=1725655386;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1Lt2jydFU8FKf2ekOt3GYsbW0EXIvjJaMePR/lsFum8=;
 b=ks12SVBG+VywjCemYBR6+aJGPyGcHnjgO4w4JuOwIUbEowUc7kEcjosB
 /J+/K7RxLnXtEle1lKJMbUluQetodB7quQzFrcXdqpKxY4A6GPZOSDL83
 zEVfUS+cc6VVJV0/XbdaRRkvI9beOQ4bBdl+R6RaLCJGD5oemNav/d5Bg
 XjE3TfyJYfJUYztFWNmh5XBlFP1ymnC9GHovYFc0WtKDWqWWPuXEEhsEB
 0xxoI3hMeuzQPmXKl+v/S+snZUZSLRlobznUMMi5lE0lC0Mm5jmIxDK1X
 Z//VL0rhjaiioM+evb7urIYNBPL/a04yhN6nHXcShDxibh41dvYd7tzlE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="376381696"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="376381696"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 13:42:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="857036642"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="857036642"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 13:42:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 13:42:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 13:42:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 13:42:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kWXCwivZ75Mkfdncyk5lsCHNX+hfAme5tDNY6dPdyj6FA1bXySdnP+5/zBXBRaL4gUuM2/Bgq253Q4uNUAqGhl6Yvuo+fS1ghVz+HdWm/AQBUaFg9+Q0TxCAIKxe25lIpmDlLDQXrj0cyGtgMMq45cL94f7viBBUe2L4v9ZBql9MFwSjAnJ10iDbS6ZLVM2SZ5p47YlWx8uQwKhQSsN2l7cUZCW9y/nmSWEj8riGgBFVgC+r3uSAlKvuCT4+wd4Rtkj0jUmkxQVwJdUzDV57zywBIKW20KUOM5+o1oaDBdasy5C37Qia6cswXFdoWuv3JqEayk6JEWP074SLoygdzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QKySPi7VjBdxlUnKEFfPPogayDSNckHF+HR3K7gqtDk=;
 b=AwaqusK7JzOepm8z9kUca6YI80coSo5PGYMyXO4ynzs5emjLgJc9g5zdtfTK5+gywIWqDtn4QP+AXbKr43OsuO4qMO7EuMEiufBww6wOhaX/0VBrPT4oz+XNKmiLzwOMMm+5VOHpn5KzvMcaaOsEzhrMXD6cUWyScPFLkBKNeQgJTyOhG4NbVj1MlGuQts0ad/NCOnn7tK8oDfb9v8caNp28GLAU0/ntJnEtL9KkWLuSbzZhzScV6Nst/Bm+M+LDRnwjjrR1toT8TbckbU+ugIWRgMnOhrKU3JsM0adccgX1tGAK9x7lAnVCOYNzsJylolIWpvPk61JYz699qV7gew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ2PR11MB8347.namprd11.prod.outlook.com (2603:10b6:a03:544::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Thu, 7 Sep
 2023 20:42:50 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 20:42:50 +0000
Date: Thu, 7 Sep 2023 13:42:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230907204246.GN2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-20-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230907153757.2249452-20-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR05CA0161.namprd05.prod.outlook.com
 (2603:10b6:a03:339::16) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ2PR11MB8347:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d01de34-cf2c-4e62-5208-08dbafe30072
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tq4ygrQnOwDLZCSWzD9NfjcR6Q4xJFmaP2xWYGpKZ1HzkdISma6/LNubufiC70h+R+X7EBOWL/KfV7jhcHVxXrZQ02k36O5QZh2sPG5XLjSbwAHmb7plIIDJgruWoZU3QSzbsBDaTJ/+T7FtZIIndsxUODs2LdHIFTjt2VB97nqVZSdeu+SU+pmkaS9xjIJiOjMgUJt7wyQJJY+ddoglSiEWnOvDWy0GdCKjHh/XuwO1MyrJmYKkCncmYWgL40iwPCluCvk/UBrH6+Ieen0o8tkZuwx2m8+BaIULxKppO7Vnh5/6aLjf42FIVNkN6YFRkdTd1jyYg4EfuK4joFPWR1lKNKMsXALzo2NsDQ0z4AhUchHAKW9BFbc/62n60BMDBiLuOZSoTvRuumYncJg8cAe6pUJR04RQmY44Q6kstbcCa0xkq5+SmJdjXzvG91ilJCbBFdQtudY2MdFHvuw5hj6CPDD7OCGohQ1gmc+YzBVmnNFcoyvJUZ4AVK+JX5QCwJXvRMvB4EUNy//HsQA5oMqGKErf6MLOWfNBayv7+AjAKU9VK1FONjCh4+cXbXSQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(346002)(366004)(376002)(1800799009)(451199024)(186009)(33656002)(86362001)(478600001)(6636002)(316002)(66946007)(66556008)(2906002)(66476007)(41300700001)(5660300002)(6862004)(8676002)(4326008)(6486002)(450100002)(6506007)(8936002)(26005)(83380400001)(1076003)(82960400001)(6666004)(38100700002)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w58P51rJZqNLWnqTIbLbvu6upnngWa/fzCW3wP6l0xVfAp3Kpvu5BHGfvmIe?=
 =?us-ascii?Q?0YYwEDK/qtVcWoBGAzgI74Ww6AeKz+Zb2uIjh81AYGcA/YmZhh0/cjYu3YLT?=
 =?us-ascii?Q?a3zmv8w4eWpGQBfcY4FdgRKREr7Kcm3FHTv5MkSDH4hdZ0DdxwMbWafyMovI?=
 =?us-ascii?Q?7kLfDNXiB8Njj98P9d0WImTbczsuX6bb/hUlvTGbQNg7yOWrlQvR0cSZHU4x?=
 =?us-ascii?Q?HIHLtRSZX54KSYXJi7ES4KvF8d9+jJJbfdwaBCHBsbE3yxZOk/GhOnDKOYte?=
 =?us-ascii?Q?jm94Lit3oL3QgPe5BYY5DaGdOpX5tz6uz5rHHF0Dc7AaiwIdFWNn4/tdPI3Y?=
 =?us-ascii?Q?O/C3/2R9OIt3lQKIRHmvcQshuu+NJ27MyYPhPqO6ibeM8ulTZXwOlaIYJsZV?=
 =?us-ascii?Q?emlO6GhQ1XqwZY2V5IFyxN8u25YyyizLmphuGRoIThZkfOQ91InIY1rfHhQH?=
 =?us-ascii?Q?XvDrN8Hb1Al2Yjpd3w55DIiNPDQCChX3JbZVUAhljimd/NPxmADYFlflVpLm?=
 =?us-ascii?Q?e0GCjuo7PuxvaA2q9IwvM70o0Sue6iSpGvP6unOyXioWIi4y0WVcqjsr7pW7?=
 =?us-ascii?Q?opqDNa0vJRzSKiMWL1Z7kqqN6y5+8XsGMDiVidWrQ/Ykm2n0jXfqXjErE07Y?=
 =?us-ascii?Q?9LlQrHS+EFACbyLLnmLkKWr2CZXt9mrQ8n2xPVTmkbP8UK9+xaK5mQZ6K1uW?=
 =?us-ascii?Q?T0p8/ElRdWT+oqGzYB0k/jz6pwOmhqb6Ss4XznnLW/RHpfTVmiTXfcSVu8Rg?=
 =?us-ascii?Q?SuTabkcr6LpWQlt2dQ7qSZ0p4A9+EwaS8t9mLFixz4v7cKIaQVJvzJmR2zmf?=
 =?us-ascii?Q?Z/Woa42/yWkSn6qZfyrD+1g3LXw7Mlh+akxx41LwOWczCv3mZJTk1+LHxOTe?=
 =?us-ascii?Q?OTNiDx1ZI7O+lkv50en8RNbpg6m6XkjudWTVxFAlXabDJKaIjnTflhD1ohFv?=
 =?us-ascii?Q?NN+TUNB4sMIKUIxO0212zwKoQ9b65+eNvagOSTjrHkAMRoeO+t5Grhi9ADtk?=
 =?us-ascii?Q?/kxMvHSwjK0LL8qstaGhVNvNFA8tRBCCAFa7IblEe1OKONcsgNND/aSS8uuR?=
 =?us-ascii?Q?4HH/6zMn7I0ntpvMUPAtk/pG5yiZmDvmHbcnHy1rwlDT7C/YqjkMLTHvSrny?=
 =?us-ascii?Q?bzbgiYr1TDsZiaz/gaFZj15ewNwPli2ytEovsRiK8axItUH6BL8ZvjxI1r3X?=
 =?us-ascii?Q?rJea84OasO7KqcubRDahXVu+px1Dsqxt4QYf/7aiHscKvZUaRxhM5MCRmiHQ?=
 =?us-ascii?Q?9doqfGOdjPi3fV9jjCCQkFT0hDyv4J4Xr/9G2iaxdjHbDajehgNUgppP1ild?=
 =?us-ascii?Q?CRkN/2cXRCm1NEXSTJ691V+Nins9kdxdENZIcw4/WXci9+bzkLIlKR6lzAWv?=
 =?us-ascii?Q?wDyjin7Um108OyZ8quybK9N8rJNrZGx6H2/65wqaWGzr6FbpHjgDyP44UZTR?=
 =?us-ascii?Q?ve++UmcjsV+GnJ03VFf/PXE7EEEX8b79QDG5aATa+XZEovh/NIfASMg29aE/?=
 =?us-ascii?Q?9+jKjTsKkjDc+25eyXsxt47JZmrh8GAaVs5DVR2w/HJ437YnSFmTVWQKIvi/?=
 =?us-ascii?Q?QwV1KLURhXtFmUdSLox5r5TS96t4/125rNqnXfRInNIsTw3FeCXqmSmMBMyn?=
 =?us-ascii?Q?0w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d01de34-cf2c-4e62-5208-08dbafe30072
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 20:42:50.4860 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sA74uxO0VL3NzlbE99Lb70q3tu6OTHIcGXMhrAwzVK1fjOmnxoyowd5ok/L60/3muBp4jSFjBra0NcWVx+7EbNUx/sfR+9XjvsJr4FkBtWs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8347
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 19/27] drm/i915/xe2lpd: Add support for
 HPD
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

On Thu, Sep 07, 2023 at 08:37:49AM -0700, Lucas De Marchi wrote:
> From: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> Hotplug setup for Xe2_LPD differs from Xe_LPD+ by the fact that the
> extra programming for hotplug inversion and DDI HPD filter duration is
> not necessary anymore. As mtp_hpd_irq_setup() is reasonably small,
> prefer to fork it into a new function for Xe2_LPD instead of adding a
> platform check.
> 
> v2: Add extra bspec reference and fix missing else (Matt Roper)
> 
> BSpec: 68970, 69940
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

This matches the spec, so

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

However the programming of SHPD_FILTER_CNT on Meteor Lake was never
something that was documented in the bspec; it looks like it was added
in 4948738e296c ("drm/i915/hotplug: Reduce SHPD_FILTER to 250us") and
tracing back the discussion there is looks like we decided we didn't
like the steps that were actually suggested for Wa_14013120569 and just
decided to do our own thing rather than working with the hardware team
to clarify/update/fix the officially documented workaround.  Even
ignoring the fact that that wasn't an appropriate process for handling
workarounds, Wa_14013120569 (which was the true impetus here) isn't
listed as applying to MTL either, so we probably shouldn't really be
programming SHPD_FILTER_CNT in mtp_hpd_irq_setup either.


Matt

> ---
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  | 21 +++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 3398cc21bd26..f07047e9cb30 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -163,7 +163,9 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>  	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
>  		return;
>  
> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
> +	if (INTEL_PCH_TYPE(dev_priv) >= PCH_LNL)
> +		hpd->pch_hpd = hpd_mtp;
> +	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>  		hpd->pch_hpd = hpd_sde_dg1;
>  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
>  		hpd->pch_hpd = hpd_mtp;
> @@ -1063,6 +1065,19 @@ static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
>  	mtp_tc_hpd_detection_setup(i915);
>  }
>  
> +static void xe2lpd_sde_hpd_irq_setup(struct drm_i915_private *i915)
> +{
> +	u32 hotplug_irqs, enabled_irqs;
> +
> +	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
> +	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
> +
> +	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
> +
> +	mtp_ddi_hpd_detection_setup(i915);
> +	mtp_tc_hpd_detection_setup(i915);
> +}
> +
>  static bool is_xelpdp_pica_hpd_pin(enum hpd_pin hpd_pin)
>  {
>  	return hpd_pin >= HPD_PORT_TC1 && hpd_pin <= HPD_PORT_TC4;
> @@ -1122,7 +1137,9 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
>  
>  	xelpdp_pica_hpd_detection_setup(i915);
>  
> -	if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
> +	if (INTEL_PCH_TYPE(i915) >= PCH_LNL)
> +		xe2lpd_sde_hpd_irq_setup(i915);
> +	else if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
>  		mtp_hpd_irq_setup(i915);
>  }
>  
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
