Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5636659017
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Dec 2022 19:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0486410E029;
	Thu, 29 Dec 2022 18:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6461C10E029
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Dec 2022 18:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672336922; x=1703872922;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=9gtZ7OnkCtAPSk+kzXzqesXGClSI2uY1f8gLJL5HNFc=;
 b=ig0BK59VVvgirxQtDw9tbRI2A+rQNwrOK5JcwlctVBfri/c0Z/4cRO6Z
 l8UIJtVlCOI9z/EkJ44m+gs1BfQgNzHSuJ/UleAUmtqznLIacnju3ScnN
 cIFsX/0f0LQFh0r5S+eSyo3P9dxNVC2GQfCCRefSJ6yxRCIHpkr8hgnAb
 Z5SeTKdV7pQY59cyUI6k3riuWIcTyh8XhV2M5Sw2JkIxzic9l+hk61e7C
 im6f4xhdS3dKWv1oVjIk61SZit8DlczBUAnFkz5vT6pefSG6ihsZzu5+n
 pWoZdnunijnZFGocAcjjROq6cqQoa+2u/Z6XoMoQYPhFmbWtuHgdJVq31 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="301457214"
X-IronPort-AV: E=Sophos;i="5.96,284,1665471600"; d="scan'208";a="301457214"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2022 10:01:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10575"; a="684275463"
X-IronPort-AV: E=Sophos;i="5.96,284,1665471600"; d="scan'208";a="684275463"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 29 Dec 2022 10:01:46 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 29 Dec 2022 10:01:45 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 29 Dec 2022 10:01:45 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 29 Dec 2022 10:01:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NLHD76w9TqmCjhFX2woPQa624vsb3haCX9BVYGoIdMXKyi0zcIQB8NugrYlAVJBDSIm7Zpi5T3I6fpF1Gb96FtT2oZ/OwvuG1tIC9p2SP1vvEAhr18r3r2jZAVPDUv1Li3VT3tx1uPlQCEc1G1ChjM37P77UqF7zpGPMecDgWIXIy/1n5dxq6FunBHQZFME0DMr1RwoIt01eksogMEIUwGdkNpKc/Ep9fTh+rikEBv9wnrSHloYZHEjRx/ULx+6zAUeYE9eRR+AOXRckGiFdbd1jmRep9FREdj8lvZ8kB5NUcl4uVAOIqmpNrwLBAcVWEzc4gcthsWoDUJ0cHwetzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SdFJGwhlRnfc7aK9xTvtbyZfT3ZKDdVimScDJs3isaw=;
 b=InnQE7ane8/sDgrUrvIoRFwqcUjnHlJqHVih/kjkKOZl6ZifA9gomDNaL7FPa6fFGjdMJGBrQmV6GHp342Ig6jVBRVpxSwHT0PGxn5Gsh1tryQY9pQ++B7aUIffttlbdsFaGciMWE2t5BXw8oMMi9HRTIRp1pV99iXB1uyR74TFxYWr82HJqBJAAjZcqv2g6bhDya1Mih+aZOc1iQH+BzmRNOIKcs0C2yXdmAW6V2FGbPE0ZxVYKpUazxxB5bxEwcWpAcVt/4qOcYIzEgMA2fFVogsiYj9Sk2JP3qhdnXWWAX723imv1qQ7bJUEkN/PcDQM4HkDufa4oGpwoYELamg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MW4PR11MB7055.namprd11.prod.outlook.com (2603:10b6:303:22b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Thu, 29 Dec
 2022 18:01:43 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.5944.016; Thu, 29 Dec 2022
 18:01:42 +0000
Date: Thu, 29 Dec 2022 15:01:34 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20221229180134.ulydr5qprda3z3zz@gjsousa-mobl2>
References: <20221229161230.1261938-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221229161230.1261938-1-rodrigo.vivi@intel.com>
X-ClientProxiedBy: BYAPR06CA0071.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::48) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MW4PR11MB7055:EE_
X-MS-Office365-Filtering-Correlation-Id: e18cc4ba-90e5-4856-df85-08dae9c6be01
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kyqfvej+/JkVF85qGM5FNj9N3NH1bb8xdMjMYzpb3pRpZoKjvN5PrlRp4ghI9VgS53oteSd4XRnWYlHBbaGXlYOW03y7ZcwHlT3dR9mhICS+VaLgC1ZsdEfUeDI1TSb11E0cEOQexYm48lIgh243w57JBpm1p15fBU78EiYqBjVwzMnmMsBovs9WE4DTxKibMhrnnkBKWfoCubPJ09+kAdfsDtUZY1opKOGvBGalmnvq/zHaBhwIagkR5ehruv7hSSNjWnHdrqaw3A0KV+fgPKPeWueXDYEbBv14wg6t/tJ0brrxV+Ey1D8AuIVraloNpA9OFgBlrtcH4xXx5NTX9mZbgapdH04+XG8NDoW3L1HZbQ6y4o/cVUkHf8sKz5jxW1fYyy04ru15U6+oV8KRuU/GNEI24HEgGLHG1H/Prl3Zuk1UgIGgKX8BpElRqFq7iDJr/cASBsXqbmA4BwYBUsTlAhU5bJOcNVzO8EWyL2s0WL6YgkAVSlCrRD8BAU+ZDD6xrocc0dGfltK8LBPNPVPHmu8tx0EIhDyAZuHy4xP6KfT6DoOWqX1OUlSRbpb29pVI4lyfZoPeR8DfMoNPlhS6HXgELUqqG/aD7K6eJVkriGLyQ1RCTguzkFcl2UIk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(136003)(346002)(39860400002)(366004)(396003)(451199015)(66556008)(66476007)(86362001)(66946007)(8676002)(2906002)(5660300002)(41300700001)(44832011)(8936002)(83380400001)(478600001)(6486002)(6512007)(186003)(9686003)(1076003)(6666004)(26005)(6506007)(82960400001)(316002)(38100700002)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DG0XZt34Oc9F8mEns0apl5G7l79nRLAurSCq/8qhncaIyDM3r3qLA6CZsQ13?=
 =?us-ascii?Q?DzscXR3lApCN9JbKSCoAbP/HPQSTgq0zPc+DPhmZABPLXBsbtsF8yq2bTDd6?=
 =?us-ascii?Q?vDiNbd1+BgH40uvnr/jpPtJ6oidpimC088x9Yi+MMCjBGENrpLBk4W0YSUm5?=
 =?us-ascii?Q?viSnT0wCr3SPD1mUQybFMIUnK0fd68sN12lQongjPXg1d+QOTxPhFU8FwrTH?=
 =?us-ascii?Q?TfJdrAybFA8tmeIsW3Rb39a0e5dSTfRlaj0CNl7oUyVcx0XSThtdlJCvqXbZ?=
 =?us-ascii?Q?APhRBvJ/3PyJZa47z+aFlCRTAeGux/ZJ8y69+TQaE56xcLAmdNOMltM37hf7?=
 =?us-ascii?Q?3uKBidDXPFyyiAJ/bSbs+RbYPMYKcaIs6JbrX2+D43TZjZBvLb4OJCC/QYTv?=
 =?us-ascii?Q?VlK6EBX17tRSIN3ZnbqwsZ8vMqAHb3dupgKJuf2EgXYluUKqFc8OkNwi7Qi6?=
 =?us-ascii?Q?6JQUCcptBN1sMQMq/qcORCMnknpyZV61RWhMxdxMO8n6AGQuowGXlgXt3qDt?=
 =?us-ascii?Q?AJ6p7cwUshFSxfxROJx4PQCElxoq7Uv87Q4qpcfznLXQv+l416pXAU1UAVzV?=
 =?us-ascii?Q?rUkiTB9kUi2+W28vLi00u+KchSi2k0ugqXFHk85UPGvxhJPOtEcuDp0O4S5F?=
 =?us-ascii?Q?9JnJW2oq6Jm/C8xls+DAnSCTVSvdS03dFXfN32SYRNNkuhf7KFk6sxnG0gil?=
 =?us-ascii?Q?AKb6bZmuGsaQmUozP4gkLNh0X3pfMf7kwIh19gVjcOTaHWXN0G/4IMwnxZRK?=
 =?us-ascii?Q?ah/RcXJN8FH9zUMBy4aBStTTPh9lmQMvDDuy4TXxuNCoeMdo8ikp7dwGu6L+?=
 =?us-ascii?Q?qF6TNPIscOeLYfUNw4Rq3rE4BkigZmiBK01QR9yjGpNBM0f0laLf9PAISKFN?=
 =?us-ascii?Q?koyz7E4Piz9pnu53U2KtQoxeMBoI+BATOtrHHs6tTLegqlLp8lBpCA1AmKEU?=
 =?us-ascii?Q?DLieQt8CKVHSDx1RY6PPvA1EkUZDWvt+lffxJyOz1f+N6pUutd8N5nptzh7i?=
 =?us-ascii?Q?mopb9of0ICklhKtptZ0nwdJkJhVVjh0tIm0cC8XrI3VLpBppHh7qu2UzNEaK?=
 =?us-ascii?Q?f0DiuC4QscaKt35SuVLwCshm/kDbvH4ga92CNdvOyoF8wJKVKqDw8EU7nBw5?=
 =?us-ascii?Q?BMhsyYj/wjte6bD+VFi0s7BzPdHXzVekDQCYafE8Q4wPm6nMeyAuATY3LQ9Y?=
 =?us-ascii?Q?hAFoT51kx5HwaLzzX4vTVbgCqSZjvcqISldE/QWy7ebGahCeLGy8u2P0vcSV?=
 =?us-ascii?Q?lMJpSdnHkXEaPggRY2ZM7kYh8PwbE5bLO+YBX8CNcowQO2u0mf3GMt0NP8j4?=
 =?us-ascii?Q?Lq0INUao7WFQKBBEvfO+FcKTas39Vq5geZ5Kl8Ku4lugo8K9caml051IJ7kB?=
 =?us-ascii?Q?F144OY3AEm0qrg8qrZWb6MEMvqY6zTbSc/sMRtzat3/WI+YWMcDktpCjqW5R?=
 =?us-ascii?Q?r5f3ErAVLuFtabazr3s2ZLrZNUhRtKf3HikZQM2Ogq6E60XvyXytkJWJvdxS?=
 =?us-ascii?Q?hE4XHCcEMLeuzm4eLI4M3tViIMsZmF+XYofdSZg8SRKuNNe0A+Av1N0sbkSG?=
 =?us-ascii?Q?vSQ4M0kEWh7V7xo9aq+1wv0gRgZuByixqgCIYC3qP3SDihhhCBUkzqV/MYZP?=
 =?us-ascii?Q?Lw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e18cc4ba-90e5-4856-df85-08dae9c6be01
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2022 18:01:42.8499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BLWdyodvnjwYXDfxBbDBhIwWZDUcc+SrdB7rQbG21XiPIYh1hBgtEsZeDWRFOma3T0FIDAIht281XRAcBAH00A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7055
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Expand force_probe to block probe
 of devices as well.
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

On Thu, Dec 29, 2022 at 11:12:30AM -0500, Rodrigo Vivi wrote:
> There are new cases where we want to block i915 probe, such
> as when experimenting or developing the new Xe driver.
> 
> But also, with the new hibrid cards, users or developers might
> want to use i915 only on integrated and fully block the probe
> of the i915 for the discrete. Or vice versa.
> 
> Oh, and there are even older development and validation reasons,
> like when you use some distro where the modprobe.blacklist is
> not present.
> 
> But in any case, let's introduce a more granular control, but without
> introducing yet another parameter, but using the existent force_probe
> one.
> 
> Just by adding a ! in the begin of the id in the force_probe, like
> in this case where we would block the probe for Alder Lake:
> 
> $ insmod i915.ko force_probe='!46a6'
> 
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/Kconfig       | 13 ++++++++++---
>  drivers/gpu/drm/i915/i915_params.c |  2 +-
>  drivers/gpu/drm/i915/i915_pci.c    | 29 +++++++++++++++++++++++++----
>  3 files changed, 36 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 3efce05d7b57..8873cd0355b7 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -54,24 +54,31 @@ config DRM_I915
>  	  If "M" is selected, the module will be called i915.
>  
>  config DRM_I915_FORCE_PROBE
> -	string "Force probe driver for selected new Intel hardware"
> +	string "Force probe i915 for selected Intel hardware IDs"
>  	depends on DRM_I915
>  	help
>  	  This is the default value for the i915.force_probe module
>  	  parameter. Using the module parameter overrides this option.
>  
> -	  Force probe the driver for new Intel graphics devices that are
> +	  Force probe the i915 for Intel graphics devices that are
>  	  recognized but not properly supported by this kernel version. It is
>  	  recommended to upgrade to a kernel version with proper support as soon
>  	  as it is available.
>  
> +	  It can also be used to block the probe of recognized and fully
> +	  supported devices.
> +
>  	  Use "" to disable force probe. If in doubt, use this.
>  
> -	  Use "<pci-id>[,<pci-id>,...]" to force probe the driver for listed
> +	  Use "<pci-id>[,<pci-id>,...]" to force probe the i915 for listed
>  	  devices. For example, "4500" or "4500,4571".
>  
>  	  Use "*" to force probe the driver for all known devices.
>  
> +	  Use "!" right before the ID to block the probe of the device. For
> +	  example, "4500,!4571" forces the probe of 4500 and blocks the probe of
> +	  4571.
> +
>  config DRM_I915_CAPTURE_ERROR
>  	bool "Enable capturing GPU state following a hang"
>  	depends on DRM_I915
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index 61578f2860cd..d634bd3f641a 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -122,7 +122,7 @@ i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
>  	"Default: 0");
>  
>  i915_param_named_unsafe(force_probe, charp, 0400,
> -	"Force probe the driver for specified devices. "
> +	"Force probe options for specified supported devices. "
>  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
>  
>  i915_param_named_unsafe(disable_power_well, int, 0400,
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 668e9da52584..fc1383f3a646 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1253,7 +1253,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
>  }
>  
>  /* is device_id present in comma separated list of ids */
> -static bool force_probe(u16 device_id, const char *devices)
> +static bool device_id_in_list(u16 device_id, const char *devices, bool negative)
>  {
>  	char *s, *p, *tok;
>  	bool ret;
> @@ -1272,6 +1272,12 @@ static bool force_probe(u16 device_id, const char *devices)
>  	for (p = s, ret = false; (tok = strsep(&p, ",")) != NULL; ) {
>  		u16 val;
>  
> +		if (negative && tok[0] == '!')
> +			tok++;
> +		else if ((negative && tok[0] != '!') ||
> +			 (!negative && tok[0] == '!'))
> +			 continue;
> +
>  		if (kstrtou16(tok, 16, &val) == 0 && val == device_id) {
>  			ret = true;
>  			break;
> @@ -1283,6 +1289,16 @@ static bool force_probe(u16 device_id, const char *devices)
>  	return ret;
>  }
>  
> +static bool id_forced(u16 device_id)
> +{
> +	return device_id_in_list(device_id, i915_modparams.force_probe, false);
> +}
> +
> +static bool id_blocked(u16 device_id)
> +{
> +	return device_id_in_list(device_id, i915_modparams.force_probe, true);
> +}

I think id_blocked() would return true for any device id if force_probe was "*".

> +
>  bool i915_pci_resource_valid(struct pci_dev *pdev, int bar)
>  {
>  	if (!pci_resource_flags(pdev, bar))
> @@ -1308,10 +1324,9 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		(struct intel_device_info *) ent->driver_data;
>  	int err;
>  
> -	if (intel_info->require_force_probe &&
> -	    !force_probe(pdev->device, i915_modparams.force_probe)) {
> +	if (intel_info->require_force_probe && !id_forced(pdev->device)) {
>  		dev_info(&pdev->dev,
> -			 "Your graphics device %04x is not properly supported by the driver in this\n"
> +			 "Your graphics device %04x is not properly supported by i915 in this\n"
>  			 "kernel version. To force driver probe anyway, use i915.force_probe=%04x\n"
>  			 "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"
>  			 "or (recommended) check for kernel updates.\n",
> @@ -1319,6 +1334,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		return -ENODEV;
>  	}
>  
> +	if (id_blocked(pdev->device)) {
> +		dev_info(&pdev->dev, "I915 probe blocked for Device ID %04x.\n",
> +			 pdev->device);
> +		return -ENODEV;
> +	}
> +
>  	/* Only bind to function 0 of the device. Early generations
>  	 * used function 1 as a placeholder for multi-head. This causes
>  	 * us confusion instead, especially on the systems where both
> -- 
> 2.38.1
> 
