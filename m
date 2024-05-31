Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF6F8D6035
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:05:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94A7610E3E0;
	Fri, 31 May 2024 11:05:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hixx8Mox";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AFFD10EAB3;
 Fri, 31 May 2024 11:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717153527; x=1748689527;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nbii/f1WCKcC3xPI+JVY28MyAvS+VYrDmIgPCUSQSts=;
 b=hixx8MoxyhSfFCJy7x3Tb9NSFJdRyZa9D8UmfGx5NE4ZYL/QeAH61hYf
 drhM+3Mh+CVt0UvaOHlMKnuJpHBkmDrrGedNgTpLTDjORDw8RxPENFBJx
 ERaCMHaI06TDT2jaCFebXudMLdXMF4Pzu4wjae12VHDvkcZVGSuEnDLCo
 UVod7z/gjbIInU+BHt7NTCGnCBBSA6PBkz54MrWyQ0E5/86829ElbrYjX
 P696O6azlPXeUhRozPAxtlcSFS7u/GzlniozFGBkJ6hwSFLqdcFfbk10U
 hG2Lx2c8Q45E//zWu0ffUHeS+7wLg7loBS4K9XBMd0JUxNYOxqjceB3xT w==;
X-CSE-ConnectionGUID: xyz6VaYFQhGHTJs/9lx6oA==
X-CSE-MsgGUID: qE0uNrx5TLKsU0QIAaowZw==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="16639497"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="16639497"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:05:26 -0700
X-CSE-ConnectionGUID: CwaWcj3jTHOHRXnaxLwV7w==
X-CSE-MsgGUID: bFrgrDQuTOyQQsPn9HS89g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36752457"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 04:05:27 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 04:05:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 04:05:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 04:05:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CdUlfGIGx7c5/WM3o49VZ4CmEYATD6IthAryTVzFs4Fg29Lm3VUBCIQsQei+bTSYwIhxLN9rtI6N/Fi79wSOKP2F4vSaddUvTfDhQsWb7kW8NL0zn5/kzO/0hlVSxtwFAHGT/BgP6WgMFQLSrtdlgIkZYXYc+vR4zMeB2RzhQYNiU/57MQ9tiEBkdqPM+PrS790XLe2Dq9WbZAFA2yC5fEd3vq9NVwH9Izkm5Q8kuvy3WwK/ptf2/LjesTwk8hEGhyAkhyLTGpBEnTpf6EpWjZTsCXpJMzPlldBG00Tcm+tmI8KkC0UjAEPiNuyPXnh5iVjud6m8lA1XrGeUqWuvtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CiS8EhbLuTsvRvwdmXnfeXPtkf6iSuzS80KJTc++2SA=;
 b=TkcVdNO+IgCKQHo4wXXCsZSHhaH7kThWV3iZaNFYHwG4LU7zVsA5dBIbag+lYsTyR7MHjCXsnA00KhboMPQgJj3iEwxbYG8VIvh3xurG+euK/cwDdC1A1h2Id8Lu+xn3u2b9kkPsi4/qobZz0COtrVgdSLWf3/bw2vJRaKVe3YU49vp8lj8FLfZOa0zHW4F+kwkeYWN90y1Aucm21hVFuSSfz83ZvyEvyvtAxt1R97kJwtCaV8TtFq0yfNaqUAeafE/Au9sfuJF62cbUu+3TXjrF8tvPUhrCwLh6tn9avqB8Stvn7W4AT92R7vVqqCcJoEngGXZxt3E9BwGXyYPMVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB8283.namprd11.prod.outlook.com (2603:10b6:806:26c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Fri, 31 May
 2024 11:05:21 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 11:05:21 +0000
Date: Fri, 31 May 2024 07:05:18 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 02/10] drm/i915/display: include gt/intel_gt_types.h
 where needed
Message-ID: <Zlmu7iU9ofl9sodB@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
 <df73c0934ad21f157714a41b33b81cebd2a523a6.1717004739.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <df73c0934ad21f157714a41b33b81cebd2a523a6.1717004739.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR11CA0041.namprd11.prod.outlook.com
 (2603:10b6:a03:80::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB8283:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b2f667b-a9ca-4576-5318-08dc8161905d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?B+Xsw/eFuZxtjrkO4NvFyH+1x+C/vbluhaV67jrkxAZ6opUQ0XZOrVi17KeB?=
 =?us-ascii?Q?8rl7hWUyhSmL2As92DNJue6Nb9eJ06tVN9RLBqyAa1EzkME5VVE3AKnVeGvP?=
 =?us-ascii?Q?t8fP/IXh4E1egrErEQwy/PdbkQ8MFRH5TheNSQ5asn75IPpB+jeZzJttpc8R?=
 =?us-ascii?Q?nc28VpOPa+C/bp8EwOFaZx03riihBnMr2eG6ci6u78ufFXUNoK1YT2eQcajM?=
 =?us-ascii?Q?v4GnmkuTMoSrJE8ZrTWzSZKbdnEmL5yQst2ODY4jGwNbiQPFDx7fs97n3lIK?=
 =?us-ascii?Q?p6ZPZKquwWpyItgHHsQHfPNVPZ+k8jn+PhVnX3ZcDWHu125ByK2J6hMLzcyn?=
 =?us-ascii?Q?3nyYiD04gJiocVFoamWtzU33GV8g8EUD803RTVwzpYKZaZ5nBbpDZeZIgygz?=
 =?us-ascii?Q?1vBTWoqCIzJ/GlCL/sdbEZTCkJZleD6jGCEi3w1X6Iz/Ahrdv03yt6DL/v7E?=
 =?us-ascii?Q?6+/gQRJaMjAiuA+4GUMgqkMx2R9901AZR6tNMAHnSqbys81XdtsMsza3Q9jQ?=
 =?us-ascii?Q?KFU+RqsRhnCA3DjHNiHUBYnmLIjf/jgY3Oq87DpIgI8SFiG9aBx+juwUINTN?=
 =?us-ascii?Q?788gpDIx+esB3fxsh4FJ9WTVp+FzKac+xBRto5Ul2x8bGTt/rU7JgkmqivP9?=
 =?us-ascii?Q?BoDpfKuS7f5qCk8mKw4uqVWnIBdjaaOgM4Mdj/aWSra3YQekTZkNZoLpavwW?=
 =?us-ascii?Q?qepXzG0b5PsCKHZ3q6c0o/GLLlUOiulRVyas9F+sRkWF3mAjWMFuXITLLuLA?=
 =?us-ascii?Q?JRfdQYxpFYOxDxKzbnOCy7/25inpYy1FeKFnolBJ1DubVejSaW6w395EfJPk?=
 =?us-ascii?Q?ik+ELeCZi0BBkOM6jYTytm+4IdXk7Mu0TUTne75V3612guFFg16tpim12nFV?=
 =?us-ascii?Q?NpG+zvGt2TIIiSXD/Ix/XFiPjr5AglYzMu4J7V3Fvg65YFYzwgs3x2L1LU5j?=
 =?us-ascii?Q?gdm0YXM1ixKGIuG6QJYfhYLQiNIYqbjGrr7yyRXLzuUERLWuD3iVbpu+xwvE?=
 =?us-ascii?Q?nlICjQ3PuVcWOdm5bfFR4gwXkXbteLoV5FKYJUGR80tbPydTMMF1Bqm/NqwJ?=
 =?us-ascii?Q?wZk5sFyGV+kbZeQSQSJYYYaKm3zzT5BnTvJgpfyXR4WUAjWiCLow0A054Tjj?=
 =?us-ascii?Q?m4w4zFanvRWvoZdhe8LCicsMcEqXRcmASsUN6ni5NiJD4PrllWqSfWfOIqc0?=
 =?us-ascii?Q?VOYDIX2orKgG0Pr+YADVr5KCJDKD7Za+FEonuLlEdPynXpQw0OVBrDHfCay6?=
 =?us-ascii?Q?3I6W8RfAfhJeXLLUnviXpElDODvB0gJ5SNY0DE/xTw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iVBZ+aD5ZV6UcAy9E6y+pN+6P5Emvxrc3+mh740eCrXu/I9kehXR5hwWCq46?=
 =?us-ascii?Q?9k0o8MGxEvviNJJwN9W+DEECxCbcWuNkAcgkVDfJJjxdmLNhFNCoir8eiYXm?=
 =?us-ascii?Q?LAKm+u9+Zl/OD+aFZig2zN1bhqGkTHxoiPGOpCKnB1TyJqRMHWXxaXZ3I6Fd?=
 =?us-ascii?Q?oSzP2trwHq6hoVGit2aimqp/klw9c2TXUnmP7NSLTlW6A4Lc3ReDiN/xhMHO?=
 =?us-ascii?Q?x2NsLySOCQpy7Ug4O1wFHRCZl9eKeUdB6Ix5mVDOGdaLLAHFFYiD3RsHbEpe?=
 =?us-ascii?Q?8miFdIrqQLeklMf33/Mi4vhXxc9DsRbyiunxw3A0VVMJaTg2NwsPqpBvSp/9?=
 =?us-ascii?Q?PiC4Wrz+bK/0enFejqpiRBgWyVTf8LV5d1VbG8b+3Ql84JkLPAPnAmIcWUaW?=
 =?us-ascii?Q?Xu77FMG59t8vk1d4E9Qud8z4Qz9t/PcV7gIm0Id+M8mEVDmzr4ecCrFF3h7Q?=
 =?us-ascii?Q?+UFL4sb2wz+Z8BZSByjijVRw8X1NtiJ9LMvr8iOal7ZILnqaFkT/BJP5GTpL?=
 =?us-ascii?Q?VhLOuoIVIsfXA3U/bSUmHnkJN4YaKF8H4FnEti3g4SlC770kz1OovDPVZ4N5?=
 =?us-ascii?Q?rQ5BJAyv1/kfG7Pnr42BJLIPJXaSwpgzRFO+qynjsSPO/DmT6eCoCnVtOMBG?=
 =?us-ascii?Q?dwXRk0BwDL7ZQA+MY5xrwGUrPLc+DvhLecx7Fv5P6FGtRqX1lmo9UTyi3G52?=
 =?us-ascii?Q?2iwehMeTZNtIr9y8hOcf7pe9NollvARR2CSD2jdA2rHvGTPYmt8NCQeMLkxw?=
 =?us-ascii?Q?Qo3F4cMJXFYFq50fN27rDpZl1M4inttewEDO/wukoOxNXJRffF0JVi/W52iD?=
 =?us-ascii?Q?toftAEHOBQ13DZo0U2nq2/WEjjy/Ux38nT+211otD8yeH/fYZ6aE8iLT2yJf?=
 =?us-ascii?Q?HZSMuFLYioInDsbL9cdN59LkSx/zeh+aFohOarPyWMD9AUfRVIT4e3gkCfz0?=
 =?us-ascii?Q?LU1hRTgxxP86Z2RGF3/ZXL3nyABDInt7dhdbz3YAzxpHOkNp2hHm021yuxDB?=
 =?us-ascii?Q?pMfYRxH6XNaKbovMLagXl3h6YxPhdaQMvdQLdZuUoUP6zS/errNc1KXWw6Cm?=
 =?us-ascii?Q?59HTq6eJrzPk2WLFg748TvhrFHYfkuOEGUs7nPRKIKDMc5+/5JGQbzzJkErH?=
 =?us-ascii?Q?m1fgAfi+EN1x7sZAKkAn3/IE7Xy2js7bxN1CYXra10H7HPcuQLkq66VW23MC?=
 =?us-ascii?Q?li6PGFKtWNho+rsxxrG8i+DHV7Jg5IDXLMWH/VaovjUhOo6Rh84UO/faNiNe?=
 =?us-ascii?Q?TcsWDjsTwJFTjuZOwO2/mHuxyhhGbu5bnMQBUoe4oNUKs9rGiW/1Wn6tY4Wg?=
 =?us-ascii?Q?IRm4L6J7yc6eyw6vvQcjiArM/G1OOE9jD/wgPYoPhXNJ4lcrofA2eHPKEfTc?=
 =?us-ascii?Q?c1DfzAKSt/zGane97WePgO2F+QANwqjjMPhugpk/GKE/lzDwwcbYqjrtFIJ9?=
 =?us-ascii?Q?oB8SqmZIiTMgK1mD4jN9v7xv/r89tLqIu09fpREpgdgaLqY6JrX+JM5ViUVG?=
 =?us-ascii?Q?OiWYqm3EnIUAMS8zIfVWAwHm9h4f1WN0po+EyKownaEVO/5hJvhwrhAD8eTZ?=
 =?us-ascii?Q?fYrjHak6iGVbLPpYQq9WZVFx7/IIbmjoeZnXQggW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b2f667b-a9ca-4576-5318-08dc8161905d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 11:05:21.5295 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rzwL98FStsUtmPAkgVwB4nGkxVWB5TAqXaMViSMoXFzbv+ASVrcDLctcAxyC1PDVoIRWKUP4mp8WoPHxCQrVaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8283
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

On Wed, May 29, 2024 at 08:48:06PM +0300, Jani Nikula wrote:
> Include what you use. We need to move the compat intel_gt_types.h under
> gt subdir.

ditto

> With this, we can drop the include from xe compat i915_drv.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c                         | 1 +
>  drivers/gpu/drm/xe/compat-i915-headers/{ => gt}/intel_gt_types.h | 0
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h                | 1 -
>  3 files changed, 1 insertion(+), 1 deletion(-)
>  rename drivers/gpu/drm/xe/compat-i915-headers/{ => gt}/intel_gt_types.h (100%)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 6985abeb6102..8e956e7a1964 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -44,6 +44,7 @@
>  #include <drm/drm_fourcc.h>
>  
>  #include "gem/i915_gem_stolen.h"
> +#include "gt/intel_gt_types.h"
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "i915_utils.h"
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_gt_types.h b/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h
> similarity index 100%
> rename from drivers/gpu/drm/xe/compat-i915-headers/intel_gt_types.h
> rename to drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index 3be3d419530a..fb784ab64cd4 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -22,7 +22,6 @@
>  #include "i915_gpu_error.h"
>  #include "i915_reg_defs.h"
>  #include "i915_utils.h"
> -#include "intel_gt_types.h"
>  #include "intel_step.h"
>  #include "intel_uncore.h"
>  #include "intel_runtime_pm.h"
> -- 
> 2.39.2
> 
