Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AC86A8895
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 19:37:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12DB310E544;
	Thu,  2 Mar 2023 18:37:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F49A10E544
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 18:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677782245; x=1709318245;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=fy9VNquRzgw827otH48vn1RNfA67GBWRSnN8pOTrq8c=;
 b=B+03X5a/oqjheslTZF8E40AoW20R/lpbxMf+/wheVJoX5owc8P1Swhcv
 YvnDCRKrP8XrC37aw4oLcVpdH7zWPLrGrEIsXESx1zX5gO8/HwmuWrvuE
 4aVhsa0Hqr5Mbb4JqEekQ9i5GIPi2R8NEMkZ+uGnalX4M3IBNijNnm5J6
 lh3pUnFTxhKcgsuzes9ZpGobdqkWBzKnHjS4am1t7yafXp576VOPAMPa4
 YgOUDrr7beKChhUugvRo2h8RRZwa/WSyaefvG4VpB8teESK2uvBFX59qb
 N6k62DUlStmdSj3L1yRSxJe39FY0U4EV5k6Ezk/ZqXbm/cEtibkUBVE54 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="314473225"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="314473225"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 10:37:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="798934400"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="798934400"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 02 Mar 2023 10:37:23 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 10:37:22 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 2 Mar 2023 10:37:22 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 2 Mar 2023 10:37:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z9UAyKeXr6bfeX4fKYeSrgBCHWh4fZbvSqdJTWK9NqlKwYOZHA7jncnOSpNVWiwwimeD5I2uDC0higqNS7i/e2t50xBz0WrL3W/yRPCkcQeRzL7pVe0zcLWS7gbpUVWXhWaE7DFgEErLmp82bKuOJPlPLnh1ZXYlH8sta7GIvl3KCqATzMCt9ALEFiAx3B93yxG59rOVPsSOP1lltpj2wDUTo4nsJmQ9SyYn8LpZ0VjyTn4lTpigdKGS5sPzFVkVq53JjrxVpi/XrGdEHP8ltPhYCo1xk7Bd4vtX5Wx1DGORTnKsafSLFD3RVMk96vAJE3hHpBeHlbCbCSSeK38V8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yj/jx/ZcQ1mk3m7SxRxBHjJvF3OPUEDIXQ8vShf0vrg=;
 b=NV0vQPSVnpSiHmoA0jDciIsMKlqbd3NmNdSnxN81WqhYZZKYzQV43viSEkVqWqnlOEzc8n5VrqScUDG/MU07MEQYsPKJNcKXllW/R9hInck3TLHDe1lV+iDvEjH3btCG8lGa5TR/HNwX+jSWv5arNyrKmGrWn5BgfDTHN0VA+qKLWZAsvCmPazZMykDQxEtsICXxXqDaa4s/JTjHXzN/F7eQph7tEwXAuvVH47hvF2kbDxsakAj28CFq7BlmgSJ4XoJsgjOx0457pnDTVF6ENB07UZ4SnDiS/tAcOLDFjCL8z9bLglRoV05e0BUzGfU72Wbcpij/JUtfVojjSr3eZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB5880.namprd11.prod.outlook.com (2603:10b6:510:143::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.24; Thu, 2 Mar
 2023 18:37:20 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%8]) with mapi id 15.20.6156.019; Thu, 2 Mar 2023
 18:37:20 +0000
Date: Thu, 2 Mar 2023 13:37:16 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZADs3F8mEU/R772V@intel.com>
References: <cover.1677678803.git.jani.nikula@intel.com>
 <ab9a7147b0cd63d95b9f27ed40615b9c9be18f84.1677678803.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ab9a7147b0cd63d95b9f27ed40615b9c9be18f84.1677678803.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR05CA0029.namprd05.prod.outlook.com
 (2603:10b6:a03:254::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB5880:EE_
X-MS-Office365-Filtering-Correlation-Id: 89bec3de-3b20-4d4e-d1d1-08db1b4d27eb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I+K/ovNXyO95thQRpTNnZkM2SyVXPpZ2/bjLRdcOBmXZ3yg2bSgnR7VS4pIY9Eh+NcueM1MmS54bYXsBpsxcPH7yZa/bVlwoxLY8Q4nNcXlCTtniaIoxwQ0c3R55jGhLeMlOijZL3fStR8//iaYnHk/Tvi6rFzTrXs+1Fu2Sznt3IuWaFxHRbETDZC6vXAVX3cQzJL/t70wdG8om405jX4OK5JK6XAzBjPJX8WiyCt/XhOu/GblZTh3wviQgF/lLuOl7iM+pOrr6ex6VdCsua50pC+pNVHsvR7Zhr2zIiSCf+8E05UfcIEnvfDmBeVfyy+/FUzWF0RAGCzAU/d7XxdkYit8DQf/2hDT5K//+9WY7NwUT0slKoQDY98c0EqdylKxLm1w7xFr3/FACUe2k/N1QzWSzr6tzYocqvA8YV3vCPRbMEd299ZDQh/PbHPUCR0OwmEINN33wIvBjwcq+2hZ2fX0CUbu0dGZzsUZ4Hu/EIwgpASPzEAMLZ8QPAu1i0p+723fthc5gs1bDON0U3+mzdm5uYFaPfSA9UdqYvid4RC+NAIsGXplpxAEqX3G/ofUsQwzsMyvVT5SRB7eF3PZYtPxlbrCTNtVv5SQ1ix93qjurHbNq5DbGm2qUc/O/kCPrtRJ6VJfirxenHenxCA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(366004)(376002)(136003)(39860400002)(451199018)(44832011)(36756003)(2906002)(83380400001)(26005)(6862004)(4326008)(2616005)(37006003)(6506007)(316002)(38100700002)(66946007)(5660300002)(82960400001)(8676002)(186003)(66476007)(66556008)(6666004)(41300700001)(8936002)(86362001)(478600001)(6636002)(6486002)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?JmQLPzawB+NVR6FzY+N6f4etVqzdGmCWzFO0AAXBQg3Sr2fy0QwMEtA4X7?=
 =?iso-8859-1?Q?dRTbyIORMkdynk4b6Q7MBq6s0CfvYzi4SCx6MLE0kAUZdFeV4M6bPDthUZ?=
 =?iso-8859-1?Q?zHLabREtgYKi5zWFvCBwuTHQA9M6RWhx4aodIDx60CaF6ZGiypRzENmiF/?=
 =?iso-8859-1?Q?NrXIASvihKukeGv4XwYvoPI82MkteXbiEy2NFIwSPvRD6lxOhSr7xHoQ7g?=
 =?iso-8859-1?Q?84amLfQFu156cnLKPxo+nKCJYfO7OCycy6t2vvh3ZZCczqWTdjmzjVwLNA?=
 =?iso-8859-1?Q?PYIvMQaugWrbxDRAbHNRgSydp4lCK5wHy9nAloq0byiS9nqhe29cjgAx6E?=
 =?iso-8859-1?Q?wehrkU1N4SEPRkMmv9mlDgY9UXltqu7oo8UdCgh8PQZuivyh+/uAZAfxGj?=
 =?iso-8859-1?Q?i5ZyfO1qBtH0JgSeJG/Pdr66h2e0kr9vxW52LuAJG23PIwrsQ8UFXZS5IT?=
 =?iso-8859-1?Q?foSDcASlpCpmxD0EPoSr27mS1tXbjFKI6lbZhwv5gOVBUvn6yLBxEQX7D8?=
 =?iso-8859-1?Q?o/ji90oMHKugIvkhnxFKkgU//Jj6OnV3vcwTNdUgdGNEKokilYJ20d2ALF?=
 =?iso-8859-1?Q?ueKXemvaeX5rPTQFH0l9pxCfvq+TPNzz9TrcVsvOJpv58mq0U5j1DHEYy3?=
 =?iso-8859-1?Q?5YulS1gsPk9DgA79B4ave0x2VSrAfwnlfEZMgKsJk9ZRjPVJidnKMjGBPn?=
 =?iso-8859-1?Q?VVIaoM8VxPf6pMhqkha1p+moujSJp9EnAARqfztTa7CZcFC9iiV3MVy1rd?=
 =?iso-8859-1?Q?moE1k9Zd4y9IN2zFhQSDFD5jFpEIE97JuDL3qLXRMTh8XHpNSHbCJ22WY5?=
 =?iso-8859-1?Q?8ipsYxBPesVVa8axQrbc0IlNNSi1Aa6lzDi2DkXTh4iuJ9aY3PlTubEpRt?=
 =?iso-8859-1?Q?dOKESraXZWTVmzUCUBQi6cNbI7QZIGRBQNiHSlg08nfYZq2l5W2p9dWiCK?=
 =?iso-8859-1?Q?2eTTOX7EniJxJkapwJTgDJ1d+r913LHTzvYXr270NF8bPndTaw57ywcfhk?=
 =?iso-8859-1?Q?skaSO5dTG1gyl2U6GgWlZUaKfaWe8KtrO6zX2NW0gFgL+fsLbrI71ezY5B?=
 =?iso-8859-1?Q?zZzLQgA11Hab7rTiNWQesM8tW6dqv9dAI2JdN4kS/6Mcf9ltFP+rAMrDo6?=
 =?iso-8859-1?Q?hYV9kz5Crs2clve9rHtkA0qLgQDBpy8NdP7Tr2HC/ZBYS121LSf2RI/WqW?=
 =?iso-8859-1?Q?X7t4ijaQ2P5sRmBX+QEdEEbQr1JfHtAMGsg2z3C6i90w6+m42t4SpwNTdV?=
 =?iso-8859-1?Q?86PhHFcLdHFX8WnMJhUTjEJhzfjLqBwl1zLJKlFLe9OQsEn17SlsSTbkXF?=
 =?iso-8859-1?Q?hO4xzNsFcfl2eoUavo682b1SLlhCUegztDtASAQebFLgTcL28M7thDx9rq?=
 =?iso-8859-1?Q?fov+G2D0kIRKQhB8rSKLq78Ywyix2Yjh4NnJPuN+BGgFRq7upaz6XxnQZh?=
 =?iso-8859-1?Q?QU2fq0cz7ZX1+1boHd8Pw/8FC0WUsZTH2bhCfvLqojr4JmjNqnF+60HnOR?=
 =?iso-8859-1?Q?BBh9Z7CxodDefgAKblIGpBAoZ4+9AeZEtuwb7qxFAMSNchdIYgnNTz1D6b?=
 =?iso-8859-1?Q?KyTJXZafw7+u50YE6nf5kS+G3KsHOnNeysz9yB+fgUNbFiTJ+faORVDkc3?=
 =?iso-8859-1?Q?0D+uR5aKjq0PZx1nOfriKL8fo9pqHEFFoDWDLFG6O+230AzW7uKJrmjw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89bec3de-3b20-4d4e-d1d1-08db1b4d27eb
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2023 18:37:20.2379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s4fRRGyWUxt6Bq6TDsECdrLM7Y8V3KBa1ca4IsOnkt7pkNtr3n99AWehhvmZEVJN+rDAAlFfeIQCNdri8tzYog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5880
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: remove unnecessary intel_pm.h
 includes
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

On Wed, Mar 01, 2023 at 03:54:18PM +0200, Jani Nikula wrote:
> As intel_pm.[ch] used to contain much more, intel_pm.h was included in a
> lot of places. Many of them are now unnecessary. Remove.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

trusting the compiler:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c               | 1 -
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 1 -
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c   | 1 -
>  drivers/gpu/drm/i915/display/skl_watermark.c         | 1 -
>  drivers/gpu/drm/i915/gt/intel_gt.c                   | 1 -
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c                | 1 -
>  drivers/gpu/drm/i915/gt/selftest_llc.c               | 1 -
>  drivers/gpu/drm/i915/i915_debugfs.c                  | 1 -
>  drivers/gpu/drm/i915/i915_irq.c                      | 1 -
>  drivers/gpu/drm/i915/i915_pmu.c                      | 1 -
>  drivers/gpu/drm/i915/i915_request.c                  | 1 -
>  drivers/gpu/drm/i915/i915_sysfs.c                    | 1 -
>  drivers/gpu/drm/i915/intel_uncore.c                  | 1 -
>  13 files changed, 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index 3d4687efe4dd..caef72d38798 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -9,7 +9,6 @@
>  #include "intel_display.h"
>  #include "intel_display_trace.h"
>  #include "intel_mchbar_regs.h"
> -#include "intel_pm.h"
>  #include "intel_wm.h"
>  #include "skl_watermark.h"
>  #include "vlv_sideband.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 25013f303c82..1e654ddd0815 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -26,7 +26,6 @@
>  #include "intel_hdmi.h"
>  #include "intel_hotplug.h"
>  #include "intel_panel.h"
> -#include "intel_pm.h"
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
>  #include "intel_wm.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 60f71e6f0491..7ff083ec2d1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -25,7 +25,6 @@
>  #include "intel_fifo_underrun.h"
>  #include "intel_modeset_setup.h"
>  #include "intel_pch_display.h"
> -#include "intel_pm.h"
>  #include "intel_wm.h"
>  #include "skl_watermark.h"
>  
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 1300965d328a..f0af997d2a23 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -18,7 +18,6 @@
>  #include "intel_display_types.h"
>  #include "intel_fb.h"
>  #include "intel_pcode.h"
> -#include "intel_pm.h"
>  #include "intel_wm.h"
>  #include "skl_watermark.h"
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index f7f271708fc7..6ca944d01eb6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -28,7 +28,6 @@
>  #include "intel_migrate.h"
>  #include "intel_mocs.h"
>  #include "intel_pci_config.h"
> -#include "intel_pm.h"
>  #include "intel_rc6.h"
>  #include "intel_renderstate.h"
>  #include "intel_rps.h"
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index cef3d6f5c34e..85ae7dc079f2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -17,7 +17,6 @@
>  #include "intel_gt_print.h"
>  #include "intel_gt_requests.h"
>  #include "intel_llc.h"
> -#include "intel_pm.h"
>  #include "intel_rc6.h"
>  #include "intel_rps.h"
>  #include "intel_wakeref.h"
> diff --git a/drivers/gpu/drm/i915/gt/selftest_llc.c b/drivers/gpu/drm/i915/gt/selftest_llc.c
> index cfd736d88939..779fadcec7c4 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_llc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_llc.c
> @@ -3,7 +3,6 @@
>   * Copyright © 2019 Intel Corporation
>   */
>  
> -#include "intel_pm.h" /* intel_gpu_freq() */
>  #include "selftest_llc.h"
>  #include "intel_rps.h"
>  
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 45773ce1deac..16011c0286ad 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -52,7 +52,6 @@
>  #include "i915_irq.h"
>  #include "i915_scheduler.h"
>  #include "intel_mchbar_regs.h"
> -#include "intel_pm.h"
>  
>  static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
>  {
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 417c981e4968..6ce3c934d832 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -52,7 +52,6 @@
>  #include "i915_driver.h"
>  #include "i915_drv.h"
>  #include "i915_irq.h"
> -#include "intel_pm.h"
>  
>  /**
>   * DOC: interrupt handling
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 52531ab28c5f..a76c5ce9513d 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -17,7 +17,6 @@
>  
>  #include "i915_drv.h"
>  #include "i915_pmu.h"
> -#include "intel_pm.h"
>  
>  /* Frequency for the sampling timer for events which need it. */
>  #define FREQUENCY 200
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 7503dcb9043b..630a732aaecc 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -48,7 +48,6 @@
>  #include "i915_driver.h"
>  #include "i915_drv.h"
>  #include "i915_trace.h"
> -#include "intel_pm.h"
>  
>  struct execute_cb {
>  	struct irq_work work;
> diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
> index 595e8b574990..e88bb4f04305 100644
> --- a/drivers/gpu/drm/i915/i915_sysfs.c
> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> @@ -37,7 +37,6 @@
>  
>  #include "i915_drv.h"
>  #include "i915_sysfs.h"
> -#include "intel_pm.h"
>  
>  struct drm_i915_private *kdev_minor_to_i915(struct device *kdev)
>  {
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index f018da7ebaac..f4b3b2063018 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -32,7 +32,6 @@
>  #include "i915_reg.h"
>  #include "i915_trace.h"
>  #include "i915_vgpu.h"
> -#include "intel_pm.h"
>  
>  #define FORCEWAKE_ACK_TIMEOUT_MS 50
>  #define GT_FIFO_TIMEOUT_MS	 10
> -- 
> 2.39.1
> 
