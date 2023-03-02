Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3576A889E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 19:39:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C35110E542;
	Thu,  2 Mar 2023 18:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 885A310E542
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677782393; x=1709318393;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=LfLOkOFO86d+ZYKAki0BvQDxDJ5Gihe0VVLKbk/RO24=;
 b=cM6xaF5xLSOFT/x6n68Be2YfdJQn33+kHteh9xnbQV8jRg3UsjBZvTCf
 bo6qz5pZFFHLYmcdmNnvtnrEpQiFVQHgXxiVpndSPrYIyBJDOSiWtVzVW
 ZyxoRXGIMS+8D1tefMT1H7dsUag6FTtudFg0GN0/IjcwQ6DfLlYQYC/kg
 XxOVp6/1aibJNkkIut0ojZnk4dAnfRA7AVchhSbUdd7lv/o4trROm2nxD
 aiP/0gAX/YTGt12uBF/LfpRGNoxeaVVEfXEubXIZGc3q0RNWlZnS/ocN9
 OUDxFYN3ot7ZaXbiX0EvkcUEsmagKXXNYsZ05cVtqlt7q42D98jJH6iXi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="334842014"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="334842014"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 10:39:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="707513794"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="707513794"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 02 Mar 2023 10:39:51 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 10:39:50 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 2 Mar 2023 10:39:50 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Mar 2023 10:39:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Al3VdiSDig3mHVQUB04rhbdT7m+OSgeZDiK3n17BBhjlk+w9DxfwKiRq3ezvrPkm0V4WRvNMrb2wS/wp4/mT3LVj9Epaegibt6ZcRHH5RGlhVVaTDL55KJJXovTTIX+9yqvhdf4491lJ3iCTPpUJ9unUkqX57dC7MjWFu4uXwGJq4Zz7EFC0NmI2XgBNFGMiu862St/nJNAG8Eri1eZERLgK55C+r01a81NozMdybM5lqLDbh3Pm+bKGvkIfD9rVoVOcFqLMrnNuHtkfx3YnpofBF4nzaECyQdCTWCwqKHerAUO6W59TP1OoI3J1OP6JXmh/otKgI98NMvymixGizg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zCL1BUyT1Ixdl29T2ltk84NMUzLYTDo1ZmpbzRVIJxU=;
 b=QPWbzM0HzXrkYc4RVko3otmWa1gdLkUQe6XrLc+mxYFwE7murGmqWdGnEPszusTWfgoA1O9+cgJG/lpCNh4WhBbrMhRr2RRMVpcptJajdp03mVZ+gDvCkhJOAI8J6wtCdLB4gQSUTYXVtK/HQjUIo2cNJTAF/AkhzlIXv1IkIG1pGeWdRe1q2ysEoEjPpbYZsM6uuw3kgHhbxzM32i/pc2ZQD2ijV8eFAcsfY0KQJAM/E+nvvMxMovEkbMNHmm3/NdbmlrA5s3izWA6zr3mmbJqfkY2RV6l2bMm09lHzT5FgbIVwBV1E5/IFplkN4Zcio6t4DKjHJcZR83AyUGfq1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL3PR11MB6339.namprd11.prod.outlook.com (2603:10b6:208:3b3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.25; Thu, 2 Mar
 2023 18:39:47 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%8]) with mapi id 15.20.6156.019; Thu, 2 Mar 2023
 18:39:47 +0000
Date: Thu, 2 Mar 2023 13:39:42 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZADtbv2eqEFj3zek@intel.com>
References: <cover.1677678803.git.jani.nikula@intel.com>
 <2ed1817456a4f4a8a4e4660d0b7a37fa42204087.1677678803.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2ed1817456a4f4a8a4e4660d0b7a37fa42204087.1677678803.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ2PR07CA0002.namprd07.prod.outlook.com
 (2603:10b6:a03:505::25) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BL3PR11MB6339:EE_
X-MS-Office365-Filtering-Correlation-Id: f9410e3f-1284-40a2-c988-08db1b4d7f36
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3vcKS9FYiWO4pNLxF5Q8PWLxkwImYo/qtjp+cY34hYPhipVJqYjYx/RpdXOWcgdUTGSP/EGGtmq9IHUYIq6EwXltK88fzsR/P+UCPAF+hzp75dJR8fVV6dQEX8KESmv/RzDh0Bqpx8ywtWVtC7203pJdS1DIa7dZp7bXvE6Nn44ZSXJux/1L3P7dVu6H3vlNIiImGqCPpMGbUPVSByZ9oo+M9R19/phNk060azw7w7n3UdlVx+our2rDbdjFQouOZzEIYGju+0cZ/Rw/pN4dJM8syAzKVqRYG79rm7sq/G6h/yYhQs5wNe2UBMaGVj2qJ50XmBfei54K0XPJOOV9O2nLM9Eu+TQDnhUDLZjnvl8mnOzVizbGd2eUIX5n+2HD5McOYXaY8ggbpU22RKUmqQMNK7GE0OMlSP8B0dlFStOa6b5LFhQvS9Ba17ATgMjxGQELjdL/VZA+0fNjSiu6PIqmHMZyhyx/CfaKTIMhXtdK4AcMQTPZ6QV0+KK80io/UzLRojThs3jJIVasBwqYXXUzOkN/NE/2zrkp7Un2vuCAr53tJ8UGKrJZXe9n6ArS94O9ld1f/C2Kopuk8fzRe7E8NaBdeFeQnq6vxox/nFCsNSpmSV14JBLl/TQklFrCF7RHVHxzTwSlGFUKG6YT4w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(346002)(39860400002)(396003)(366004)(451199018)(6486002)(186003)(6862004)(66476007)(66946007)(478600001)(41300700001)(8676002)(44832011)(66556008)(86362001)(36756003)(8936002)(38100700002)(6506007)(2616005)(82960400001)(6666004)(6512007)(6636002)(2906002)(316002)(4326008)(37006003)(5660300002)(83380400001)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?s0RuKIfgOrWqUz/KWdOQ22mx8fnpGv0/9uF0HqmufPnmJTnUgMvw4xYaBS?=
 =?iso-8859-1?Q?+vs4O100tEXfyUCTVfVrgFqnriV4HXeOl1aFyJguPCrTNJkwW4U0JX5pKM?=
 =?iso-8859-1?Q?rER3sv+qZUdvhjOhpH1mSjnZqX8uTAErJu4DoMAHqh+n3nUjcMlCLqfeLc?=
 =?iso-8859-1?Q?DEd/nPn1l+2Qs4TYn+O80SBJrV+UIe2MxXDw6qGg/YcyTy1JIrjH59q9xB?=
 =?iso-8859-1?Q?zi/7/dAnWVOU1GjuDO+VDifdPHhaWWpa299/sxzyZz85mK0jXIyStGLEpl?=
 =?iso-8859-1?Q?wVpQihEArYLYS0j8NSBYybC2ERwLHRL/8WvbuoiC5TW9Q/jqJPXv20l/DX?=
 =?iso-8859-1?Q?8FenfOTcFH5r/7j7ictu6ADxEGAwtoMe86a0ZowAX8t13SkR0kaJAggi/y?=
 =?iso-8859-1?Q?xWm4m9xKS00s69gzZDywk+Y1M9LqJJc1kyu20HwxzkBnwDD+lH4sxLI4MD?=
 =?iso-8859-1?Q?v5NM+kqWBsh+RHMMoBKmxbAmMwpyYkFIEQzhL5JvRQpdK6v4L2qSTxfncG?=
 =?iso-8859-1?Q?qWWERrODY7t8R/NGPqzc2/hg+nE+kxwhDa56Pf2mVmiqKWGSIkr5/1P2Td?=
 =?iso-8859-1?Q?FM7b/MwKts9o26vHcG7UDHdiZazu9yv7gw78VeuITGXezyIzvCds6mi6CE?=
 =?iso-8859-1?Q?VJFer83TxYi5d8PZv6TjjA6K9vjd8KmQ9DOjEf0xHPQ9OQRbPdNTYBLyT7?=
 =?iso-8859-1?Q?o4YU3Mpx1+Y/uk+gD5GV/cZXqtcf9B2nl/Lr+s/plaHME7zucyUfaUXLYk?=
 =?iso-8859-1?Q?+tl0lXv6cCCVAF7SOqwGqZE4uflgcVyPFTOcDHBXIszJy+Y4P12vp7xiz1?=
 =?iso-8859-1?Q?+8sl81ZSbWVP7DNHIGbRZRmWVsIJpPKWu88mLo6+vRWkX2DX7N9A67//HX?=
 =?iso-8859-1?Q?NvETEPjtc07DPEcHsSAw669ZlZUAFc/rnl8gyTBpGLwznmPmCjVun1SyG2?=
 =?iso-8859-1?Q?jY59kylyLZzEL9W4Xx1LqeQfem8VQT5/Hit75n9b7p6lxDBNCwyL9U3EYa?=
 =?iso-8859-1?Q?M6BABOKaJfji2RANOf2y83fsCLJB/nG1JsEOSyRR89XZTNX1C+YlzNkR66?=
 =?iso-8859-1?Q?99gex36zyxnctMESkEM8d5yApIpcjdJ16VviTH5J395gzBStDn1n4KROIw?=
 =?iso-8859-1?Q?1/XdcrhYp3A1qGyA6aymieLxfxOJHYnCbGauBCI32Xepp5a2adnv5SEZT5?=
 =?iso-8859-1?Q?M0nRViVbOxQD8hJNB2KAwWuDDI3RIsN4jPKuz0CgqNf/xaGD/PEbEkIFKN?=
 =?iso-8859-1?Q?mNN0yJq/9k2SEm/ilSecm2crkQ+GDpFh/ifm7TFdDYkZjwPee326NP2pQJ?=
 =?iso-8859-1?Q?4aPv9v9GJ9381lUhV07ZG/MKC6IuEKMfNb4xhsoGSb0TMz1nQsJiwNc7XL?=
 =?iso-8859-1?Q?SqFOyCpdAvh3jv05kqYoxLfOfE0TMnbfzrydaGPkZ0ZXspPeoSyk0zsNH2?=
 =?iso-8859-1?Q?zezzB8K2xLsSNstSyPg1mmDD9hvJwd6aeQSwRhdFv3yl5/+XrHyVSHQ2ep?=
 =?iso-8859-1?Q?18UnOi/xrwoHon8mQQIQLH82rZiQQdxZ+KbDKFlfRwcTKvXJDdptCQqWNu?=
 =?iso-8859-1?Q?fN1xFiD5zEwzhPGnjH3V+UJ/Wq9jVmRgiXd7XtZGcLxIwueLl2E5VrVx/g?=
 =?iso-8859-1?Q?CRVQnp42aJ47Q4qMe0E2I9AwWNEODq2qCj+4p/DPmJYd61bRhPRjZ3xA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9410e3f-1284-40a2-c988-08db1b4d7f36
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2023 18:39:46.6754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CJahu+UMBidNG6DWi7VYI102MJ0QJICkNHny2JCpRDRrq2vBKPfmo/tCwdtA/6yeAGKqgqRJE9e3dJxRCDZ0Zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6339
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: rename intel_pm.[ch] to
 intel_clock_gating.[ch]
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

On Wed, Mar 01, 2023 at 03:54:19PM +0200, Jani Nikula wrote:
> Observe that intel_pm.[ch] is now purely about clock gating, so rename
> them to intel_clock_gating.[ch]. Rename the functions to
> intel_clock_gating_*() to follow coding conventions.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> ---
>  drivers/gpu/drm/i915/Makefile                  |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c   |  4 ++--
>  drivers/gpu/drm/i915/i915_driver.c             |  8 ++++----
>  drivers/gpu/drm/i915/i915_gem.c                |  8 ++++----
>  .../i915/{intel_pm.c => intel_clock_gating.c}  |  8 ++++----
>  drivers/gpu/drm/i915/intel_clock_gating.h      | 14 ++++++++++++++
>  drivers/gpu/drm/i915/intel_pm.h                | 18 ------------------
>  drivers/gpu/drm/i915/vlv_suspend.c             |  4 ++--
>  8 files changed, 31 insertions(+), 35 deletions(-)
>  rename drivers/gpu/drm/i915/{intel_pm.c => intel_clock_gating.c} (99%)
>  create mode 100644 drivers/gpu/drm/i915/intel_clock_gating.h
>  delete mode 100644 drivers/gpu/drm/i915/intel_pm.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index b2f91a1f8268..b88df8c10781 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -47,10 +47,10 @@ i915-y += i915_driver.o \
>  	  i915_switcheroo.o \
>  	  i915_sysfs.o \
>  	  i915_utils.o \
> +	  intel_clock_gating.o \
>  	  intel_device_info.o \
>  	  intel_memory_region.o \
>  	  intel_pcode.o \
> -	  intel_pm.o \
>  	  intel_region_ttm.o \
>  	  intel_runtime_pm.o \
>  	  intel_sbi.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a1fbdf32bd21..3f1b90a2f57c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -63,6 +63,7 @@
>  #include "intel_audio.h"
>  #include "intel_bw.h"
>  #include "intel_cdclk.h"
> +#include "intel_clock_gating.h"
>  #include "intel_color.h"
>  #include "intel_crt.h"
>  #include "intel_crtc.h"
> @@ -105,7 +106,6 @@
>  #include "intel_pcode.h"
>  #include "intel_pipe_crc.h"
>  #include "intel_plane_initial.h"
> -#include "intel_pm.h"
>  #include "intel_pps.h"
>  #include "intel_psr.h"
>  #include "intel_quirks.h"
> @@ -850,7 +850,7 @@ void intel_display_finish_reset(struct drm_i915_private *i915)
>  		 */
>  		intel_pps_unlock_regs_wa(i915);
>  		intel_modeset_init_hw(i915);
> -		intel_init_clock_gating(i915);
> +		intel_clock_gating_init(i915);
>  		intel_hpd_init(i915);
>  
>  		ret = __intel_display_resume(i915, state, ctx);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index a53fd339e2cc..e4809485e47c 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -79,11 +79,11 @@
>  #include "soc/intel_dram.h"
>  #include "soc/intel_gmch.h"
>  
> -#include "i915_file_private.h"
>  #include "i915_debugfs.h"
>  #include "i915_driver.h"
>  #include "i915_drm_client.h"
>  #include "i915_drv.h"
> +#include "i915_file_private.h"
>  #include "i915_getparam.h"
>  #include "i915_hwmon.h"
>  #include "i915_ioc32.h"
> @@ -97,11 +97,11 @@
>  #include "i915_sysfs.h"
>  #include "i915_utils.h"
>  #include "i915_vgpu.h"
> +#include "intel_clock_gating.h"
>  #include "intel_gvt.h"
>  #include "intel_memory_region.h"
>  #include "intel_pci_config.h"
>  #include "intel_pcode.h"
> -#include "intel_pm.h"
>  #include "intel_region_ttm.h"
>  #include "vlv_suspend.h"
>  
> @@ -252,7 +252,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  
>  	intel_irq_init(dev_priv);
>  	intel_init_display_hooks(dev_priv);
> -	intel_init_clock_gating_hooks(dev_priv);
> +	intel_clock_gating_hooks_init(dev_priv);
>  
>  	intel_detect_preproduction_hw(dev_priv);
>  
> @@ -1238,7 +1238,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  	i915_gem_resume(dev_priv);
>  
>  	intel_modeset_init_hw(dev_priv);
> -	intel_init_clock_gating(dev_priv);
> +	intel_clock_gating_init(dev_priv);
>  	intel_hpd_init(dev_priv);
>  
>  	/* MST sideband requires HPD interrupts enabled */
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 35950fa91406..6b6b0e575ef3 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -58,7 +58,7 @@
>  #include "i915_file_private.h"
>  #include "i915_trace.h"
>  #include "i915_vgpu.h"
> -#include "intel_pm.h"
> +#include "intel_clock_gating.h"
>  
>  static int
>  insert_mappable_node(struct i915_ggtt *ggtt, struct drm_mm_node *node, u32 size)
> @@ -1164,7 +1164,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
>  	}
>  
>  	/*
> -	 * Despite its name intel_init_clock_gating applies both display
> +	 * Despite its name intel_clock_gating_init applies both display
>  	 * clock gating workarounds; GT mmio workarounds and the occasional
>  	 * GT power context workaround. Worse, sometimes it includes a context
>  	 * register workaround which we need to apply before we record the
> @@ -1172,7 +1172,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
>  	 *
>  	 * FIXME: break up the workarounds and apply them at the right time!
>  	 */
> -	intel_init_clock_gating(dev_priv);
> +	intel_clock_gating_init(dev_priv);
>  
>  	for_each_gt(gt, dev_priv, i) {
>  		ret = intel_gt_init(gt);
> @@ -1216,7 +1216,7 @@ int i915_gem_init(struct drm_i915_private *dev_priv)
>  		/* Minimal basic recovery for KMS */
>  		ret = i915_ggtt_enable_hw(dev_priv);
>  		i915_ggtt_resume(to_gt(dev_priv)->ggtt);
> -		intel_init_clock_gating(dev_priv);
> +		intel_clock_gating_init(dev_priv);
>  	}
>  
>  	i915_gem_drain_freed_objects(dev_priv);
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_clock_gating.c
> similarity index 99%
> rename from drivers/gpu/drm/i915/intel_pm.c
> rename to drivers/gpu/drm/i915/intel_clock_gating.c
> index c45af0d981fd..8cfc19b48760 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_clock_gating.c
> @@ -36,8 +36,8 @@
>  #include "gt/intel_gt_regs.h"
>  
>  #include "i915_drv.h"
> +#include "intel_clock_gating.h"
>  #include "intel_mchbar_regs.h"
> -#include "intel_pm.h"
>  #include "vlv_sideband.h"
>  
>  struct drm_i915_clock_gating_funcs {
> @@ -774,7 +774,7 @@ static void i830_init_clock_gating(struct drm_i915_private *dev_priv)
>  		   _MASKED_BIT_ENABLE(MEM_DISPLAY_B_TRICKLE_FEED_DISABLE));
>  }
>  
> -void intel_init_clock_gating(struct drm_i915_private *dev_priv)
> +void intel_clock_gating_init(struct drm_i915_private *dev_priv)
>  {
>  	dev_priv->clock_gating_funcs->init_clock_gating(dev_priv);
>  }
> @@ -818,7 +818,7 @@ CG_FUNCS(nop);
>  #undef CG_FUNCS
>  
>  /**
> - * intel_init_clock_gating_hooks - setup the clock gating hooks
> + * intel_clock_gating_hooks_init - setup the clock gating hooks
>   * @dev_priv: device private
>   *
>   * Setup the hooks that configure which clocks of a given platform can be
> @@ -826,7 +826,7 @@ CG_FUNCS(nop);
>   * platforms. Note that some GT specific workarounds are applied separately
>   * when GPU contexts or batchbuffers start their execution.
>   */
> -void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
> +void intel_clock_gating_hooks_init(struct drm_i915_private *dev_priv)
>  {
>  	if (IS_METEORLAKE(dev_priv))
>  		dev_priv->clock_gating_funcs = &nop_clock_gating_funcs;
> diff --git a/drivers/gpu/drm/i915/intel_clock_gating.h b/drivers/gpu/drm/i915/intel_clock_gating.h
> new file mode 100644
> index 000000000000..5b4e4c55b2c2
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/intel_clock_gating.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2019 Intel Corporation
> + */
> +
> +#ifndef __INTEL_CLOCK_GATING_H__
> +#define __INTEL_CLOCK_GATING_H__
> +
> +struct drm_i915_private;
> +
> +void intel_clock_gating_init(struct drm_i915_private *i915);
> +void intel_clock_gating_hooks_init(struct drm_i915_private *i915);
> +
> +#endif /* __INTEL_CLOCK_GATING_H__ */
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
> deleted file mode 100644
> index f774bddcdca6..000000000000
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright © 2019 Intel Corporation
> - */
> -
> -#ifndef __INTEL_PM_H__
> -#define __INTEL_PM_H__
> -
> -#include <linux/types.h>
> -
> -struct drm_i915_private;
> -struct intel_crtc_state;
> -struct intel_plane_state;
> -
> -void intel_init_clock_gating(struct drm_i915_private *dev_priv);
> -void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
> -
> -#endif /* __INTEL_PM_H__ */
> diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
> index 02e63ed77f60..94595dde2b96 100644
> --- a/drivers/gpu/drm/i915/vlv_suspend.c
> +++ b/drivers/gpu/drm/i915/vlv_suspend.c
> @@ -12,7 +12,7 @@
>  #include "i915_reg.h"
>  #include "i915_trace.h"
>  #include "i915_utils.h"
> -#include "intel_pm.h"
> +#include "intel_clock_gating.h"
>  #include "vlv_suspend.h"
>  
>  #include "gt/intel_gt_regs.h"
> @@ -451,7 +451,7 @@ int vlv_resume_prepare(struct drm_i915_private *dev_priv, bool rpm_resume)
>  	vlv_check_no_gt_access(dev_priv);
>  
>  	if (rpm_resume)
> -		intel_init_clock_gating(dev_priv);
> +		intel_clock_gating_init(dev_priv);
>  
>  	return ret;
>  }
> -- 
> 2.39.1
> 
