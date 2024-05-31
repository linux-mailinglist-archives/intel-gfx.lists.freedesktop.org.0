Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F295E8D6045
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:07:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB4089654;
	Fri, 31 May 2024 11:07:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MERWLNVF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 436A910E1D2;
 Fri, 31 May 2024 11:07:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717153658; x=1748689658;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BQf/PJR5JTmPNVIE/fvqiguXKMqjCfW5zCpouOoOYqU=;
 b=MERWLNVFb0oRDGTTddH2Z7U44Nu3Wx0M7ET9NOXWpBnOQOcv51EWHWhP
 Py6/0cV5lKItzIjbt5Zx29ESPjvmpL/3HWD11HqoUiFXjN2abrdaSNeBv
 +8Tt2AmVUuPAdttBS8Ff6S7h4qMAdcPCRe/qsVZXRD1OGf4afVmLnko0i
 tjkPElXPbtxQK50iWUj4IZtKAUp9fsKo/7SQ8DEYKGLBwHYLc4npV+zcr
 dGoUz+1EyQU2Ibi4+Rkv/GcKViPD+UDEAdG1QXPS/7CdQQznnJ0SmJMl9
 +qVUGOMWF/hwFTOBWvGjJok0XAhH1JVO9cxpr/ajDwzVmZWHslcv4yYxj A==;
X-CSE-ConnectionGUID: pEXh78LlRgSaortPVFuz0Q==
X-CSE-MsgGUID: kl7UdLchTNKBj1Us23vAOw==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="16639690"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="16639690"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:07:38 -0700
X-CSE-ConnectionGUID: W4EDmdkRQgGpwoB54PPWsw==
X-CSE-MsgGUID: uYA7DRg8TEyVRbeGDBmvLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36752856"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 04:07:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 04:07:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 04:07:37 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 04:07:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hJ+PQkqGxCXe2oGMjkCsUlXUwKrw0o3lQhPSrkPNkTL+VqN/PpS8CDnAW5IP8Q95e2IQpX8efMQ2sf0UyH8vzzM+VUOGg/61PnxRZ7vpVnxoBPF9q3BtGJBKEVIRe/m5pRGKWl74WgfFgS4UwpjUW2G8J2QQiqfrERde+36Ru3jwVne3pjbwAyX7oWMrM6Ps7goG096xW+nVUKiJBVg+FVodBy355+EPZI04xxP+iR9MwxZ+tZ1X/2UfYH9JExM6Srij0XQbI3F4x7Pyq2v92wIv40h8dGIZDtW9/DJ9FHYXmjA3dr9Fx5px9N7ucZ923tGPezY9YzR6F2HU8SHovg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tAPVp4nLHn4CNtrBXGie7KglBoS2VlBty5qGXANGLqw=;
 b=bCUzXGySP2X4qyJmAr7tL7lk9F3RV3Enw2NVPDAVuCZibWybMUsyB3X+WWb/Xtm/GVXV1/zZ2hngHnhCA3+vwMYrGmgNqL+WnJ3BrXN+cHyRWw5UIplpXp4D90YscS7InSnik9SUIw6pWw/8NPrDjmwA3l5I2K4auxm0eU8DSZB3VxUt7/yLt677+r27uNQFWVIwpXhYMORCfpITdaF7RqLLQcSo3FUaii6DUTado7CJkCJAmgy1CBiZAO9zNxFbLRzf4rlgH9btVz64xVVa1hJCwoUAx8BbUhkwQRwHyPosMXBYq1gs9K+SactfjiDPl798wXM1HkXxu9tdRDxV1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB8283.namprd11.prod.outlook.com (2603:10b6:806:26c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Fri, 31 May
 2024 11:07:30 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 11:07:29 +0000
Date: Fri, 31 May 2024 07:07:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 03/10] drm/i915/display: include i915_gpu_error.h where
 needed
Message-ID: <Zlmvbtsf8Bw-tThl@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
 <a5dbb8d46403761bd8518db45fa71dc55930d3cf.1717004739.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a5dbb8d46403761bd8518db45fa71dc55930d3cf.1717004739.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0182.namprd05.prod.outlook.com
 (2603:10b6:a03:330::7) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB8283:EE_
X-MS-Office365-Filtering-Correlation-Id: 5928c6b6-d014-4d56-649d-08dc8161dcc2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zQS6OZkdXx4tNSPPyQmNu1Nwwy0SJJBPwEEibvfpiDrtfW59+R1R0rr76NR2?=
 =?us-ascii?Q?QTOuSG8YPQEV7ES42K61gb+lIjxmpem5TCvmDpnDsjeRDyOtHKp0zA6NDany?=
 =?us-ascii?Q?DzvMdgoFcljV3d3TzWqgZiPvyL34wgF2eJiPIyirXJ/lSXZVeKI5umnPx2Jy?=
 =?us-ascii?Q?5HKn6Mtztgdo9jRwxGDd7UCxdIyCgJiHFM9CTNGJRwFgcA8MjxLjo6jryx8K?=
 =?us-ascii?Q?VhTCy/5+38bDkEXYoONmLpHxcidqnm1sljY0ftq7W/WgsEO9bt5Bkm+R2WYO?=
 =?us-ascii?Q?aU+gcaejw8WaFJHQEYQiGJhK94WbD7i55mDZT/r9xmkj66KCOq3L8bM4uvab?=
 =?us-ascii?Q?6tRZNIr16CWTM15IgSGWECdaaj/DM/Gy2QHjBhHIXZ+tRsUVeSgLcJs32cih?=
 =?us-ascii?Q?ITroWojW2bnXAh4ybcGJSIGqDDpbhhqOgmc4B5zJ5um7IRFLwHzTyAKuJSQZ?=
 =?us-ascii?Q?kSHPbohCJuIIeizJlM1ElFIY1ZWq+A2Kle4D0UpA7ZzvbvAbM8OS0/za/r46?=
 =?us-ascii?Q?mVKd9PJhoe+f2n4FmXhiK/v0M4bmICsZUREL3JmUZJfH21q3bsgkjGYt+dly?=
 =?us-ascii?Q?jtGFtyWvODeq38J+DmIRemhwFrsO6CL4tOXLFDnGmM6fLcYnC9nwEjPEukll?=
 =?us-ascii?Q?/kdD98rPvUMbC4laEkAwi1m77pfnoWQEZLUzuAiLLfSIoyfUnuFnoSVX4pxS?=
 =?us-ascii?Q?BIERwRLaeUcPc2FYAKY5tQ9OSSwsJ/xBmkSK0H/kKfUKuwB/V0yZ/jgCdt2K?=
 =?us-ascii?Q?RmhMUp8NS54RhG4pXhvCMbuNmxNbjX7fJqyidLuN7yLETObvTkvOZyvy+qIf?=
 =?us-ascii?Q?QBXCW2qu1vlSfDNIUAkJhNOT/Jw0LlYanc0Glv1RkU7rLTNHNkPH+gygQ234?=
 =?us-ascii?Q?HH7n1bYOwb97AVdjsCdrhjG7cVkvMUkOglXYUw3PCjxoaHLyzHVEopnOkO2U?=
 =?us-ascii?Q?RjiiyRIhpiwMTEPTII8L7z3bmHgcAMgvUc5kcr/Mjye8RR+6iMzkLAUqEJ3p?=
 =?us-ascii?Q?sw4gtRg4SsPCgYJ1VaMSn9VixU1VKJK9H9t7d5Jd1ejVFZutPbS3U5r4UPim?=
 =?us-ascii?Q?ZFBaHpUAgr1UIAyBgIWPxJGi8CCsTH2jv/R4TwRPIavFwHqpjNIE2j06dL4U?=
 =?us-ascii?Q?jWVcF8Ys5HBZSnAB+3+ZgAKWZMrSScf6Wr6LWSdb5AedUxhJi77naVY5TKKc?=
 =?us-ascii?Q?Ebt9Z8mAHNc4pL5av9bOqk2Th/qlDZr4RckdPQTpOvLTdSspYuW6nnmkeIXl?=
 =?us-ascii?Q?rPlQstbEKC6o+vR4lfemQGiBIatJ8Cbs0PMGtFyHkQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0cEUemX2zkAIRrEVn/alDvR8SNXz+O7s1z57MNnjjKBRUHdsU+/NTOUR5glY?=
 =?us-ascii?Q?SzlLKL/XaungQURcApYo+U1PGjPzHmwXHRepkfvtqQ80IQtdJMRanfKgF2Qk?=
 =?us-ascii?Q?mL8IjkqLCraoot7WLy3Y9CDsSUmwRLQq4m3+kUaw80Ltc6E+d1DVfe4dAFQc?=
 =?us-ascii?Q?Hpe4ksKh3EdnMJf3R6+v6b+USnyIQaiDgL2kEk4GP2mICdMbGgm8erx1+Dxa?=
 =?us-ascii?Q?hoxG2WdkQwgWFW5rHplxJ/7mqqPUVJh/9ef+sGutmltkSc0NhHelHYd3oMoO?=
 =?us-ascii?Q?pb4vaXfcnfvAbU5w/m1E2dfiECE9yA/y0UlV5M8eWRLOIpycvqb1CwaGVvQx?=
 =?us-ascii?Q?zq9Wk+H/gDz5JrrVad19UPZb+uKrVTGzYt0TSrqZEpQmWRswpidYRJ/ot2mr?=
 =?us-ascii?Q?1ICopUrhoUcVFW2iB9Mu6Pceq6zI264qTO1dlFPEHnuLD7wreChBBYJf9gJ+?=
 =?us-ascii?Q?B3Gbk9gBz/bUpaoOXVp2zivO+Qk55EbAYYgcYThaCl9sIfOAiLT6oEjOHMBZ?=
 =?us-ascii?Q?XhUYEkBWWagdazFMl7jtubwGDjxqfzPhnnCXIpf7DEFKYM/iIU4gZ7eBfslZ?=
 =?us-ascii?Q?b7MKOpFrBzQnPNuCIwigd6/ZNCy8ZB4InGqNeqtH+dKNPZEKm6cEYLY5GBw6?=
 =?us-ascii?Q?+tNs17BkALrzY5fMq+8lDpkRWu/ZH4p/n8l2cRpKKul0v0mrG8de4Twk8m7e?=
 =?us-ascii?Q?77xo/lXlEVZ/yOdR17E+fwMhQe7Vn766xKGTSpGmyqHNZLXkCiaLIxTbm/v/?=
 =?us-ascii?Q?b6wu0eZNybeyY3+BSGIMvhWBy13rponxeWaNX6FOGz+vvXW9bmMLFgO1moc0?=
 =?us-ascii?Q?PX0qULV3ZDZjZdShCDSWlsc+U9i6m+VfFftQv9nem3IV3ao3QSJLDza3VTc9?=
 =?us-ascii?Q?P/IRqj5XBPJ+Zo8wQNFU/xb4RdSWDzYTsTK5CzlsZVvApP7h7tcHft38RbIG?=
 =?us-ascii?Q?wvZOc5IYGAvv2biWCNu1OEIDtYQrh2Y3/upRuB8GHxl5sK4ctt9UQshkvQvQ?=
 =?us-ascii?Q?4yy7a3MrfhRVqTTOgBRTyb/GoJSjRGRM4NGdRljM9/B+XxjvTuMrnDkOZjGc?=
 =?us-ascii?Q?DDBryZ+3vkNMyxzLr1MEzeWGh9fhM9Rr0HEQHci7ASvcfx/kuKWgYVNnSpRe?=
 =?us-ascii?Q?2Q4Uep/LpR/FBCLOh3DgpVEKD5Ord6goPgr9KE1jFPcvGRMsK2WfZc5yt810?=
 =?us-ascii?Q?O7JqsxiRv0mZpF6jT2KDGwTUryarops2Gi/qiOhU6HCG3GRiuHnYL5poaDsS?=
 =?us-ascii?Q?MS/YiQ4iCyEhDVHWfwnZsJbb2rIdgAU1cqLyPNJnOOe/KEtld4imEVcGsi0x?=
 =?us-ascii?Q?v9dEVdX8X0tK9y0vdHXEOIOBWFv+qPNgUh2r+cAxxzrH7lghSe2whu1fTEUf?=
 =?us-ascii?Q?erqjcvHRqYTcFNfedtKDHJ9dPdPL5khPje1/rDJSaqw9sp3LfpKyR3ePeZeT?=
 =?us-ascii?Q?tgRCkTWHgCjZvsk9I1hzn7vlUaBuzBAE2Rw0RoeRVqtB39uj00jpCnbultDy?=
 =?us-ascii?Q?da2g95G4DQDQjFrMnQ+GGOY1WmezjlFh8cERjZ9pqhc8a9lXVO8o2PCdqWTo?=
 =?us-ascii?Q?K5IuJUt3Q9uDnYws+1Hv12qjEPzp99wh35sPgjw+?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5928c6b6-d014-4d56-649d-08dc8161dcc2
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 11:07:29.8036 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WpSHfvcyxd4ZLLptIjPaNEZjC7pnHrLgwSLjjuh8oNEzHGZSS4EEpdoPUlAWcaiJynCFzSywp2UiAAnBJB8fJQ==
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

On Wed, May 29, 2024 at 08:48:07PM +0300, Jani Nikula wrote:
> Include what you use. With this, we can drop the include from xe compat
> i915_drv.h.

Nice!

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c          | 1 +
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 -
>  2 files changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 63fccdda56c0..b5ebb0f5b269 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -26,6 +26,7 @@
>  #include <linux/firmware.h>
>  
>  #include "i915_drv.h"
> +#include "i915_gpu_error.h"
>  #include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_dmc.h"
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index fb784ab64cd4..9776cc3332fe 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -19,7 +19,6 @@
>  #include "xe_bo.h"
>  #include "xe_pm.h"
>  #include "xe_step.h"
> -#include "i915_gpu_error.h"
>  #include "i915_reg_defs.h"
>  #include "i915_utils.h"
>  #include "intel_step.h"
> -- 
> 2.39.2
> 
