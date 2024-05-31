Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A8C8D616D
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:10:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D5510E5CE;
	Fri, 31 May 2024 12:10:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NJB+wXaH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EAF110E5CE;
 Fri, 31 May 2024 12:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717157441; x=1748693441;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=IuIoFtVgq0Ur+iLASHQwXlDrevkBgg1zDM49oo6seL0=;
 b=NJB+wXaHOlYbcmIoYlGsc39riFJT71JTMyfGULgPE2VSCkvhI6f1EeHC
 OD4f2O26m8e/4GOruF39YVByUCv+wdRE/46b/hgYPYGA/roh+4bDEH+fQ
 P0DqU8TFgWuYEISW036FF3l/A/tWd6HV5WhbhFbiAoTSfrS5MLVf8+DS6
 sPQzVz90Fib5OdPtCD49Bokgre5t/Gdc1bTJ6ggFPYjTO79d8ZVxzSZX/
 s3vw6Y9jSrlWJX6stafAaFuXY7iXPFJcxh0iN6Nep/XT5rv6u+lJ2aHZ0
 +SwT9z+khIDIRqEIQsNW3zOd+eo2U+g37YDmf6lKHzBJrrU9vby/jaLzS A==;
X-CSE-ConnectionGUID: ytSyejnQRsqCL1rzXC22Zw==
X-CSE-MsgGUID: gRRu87WlS5WR3rBZySroxw==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="24325492"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="24325492"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:10:41 -0700
X-CSE-ConnectionGUID: W0QiUeQnQ96+jFZhEuvzRQ==
X-CSE-MsgGUID: p/hmzSoUSsm1hx4G0oks6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="67343170"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 05:10:38 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 05:10:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 05:10:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 05:10:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oYPDzrPnY0Oi95QdgTcPB6P9UCKipBo00GEQwf30PZgrYr5KKC3IQtOr0XK9H3cMQw70J/Ae6AgAsGHySzRJ58DKXSZ4TjrmGVIQ+F95zOfKMcIPqnRrx6ll3LFhJAhP6oFuOWmP02pDl6+dsD6xqb1yFuTj//Tn6xlrUu9GotxV7U9InH2UTbtrsCLQMc4KcCt/Pn5sLXj3iy1TlgHHrvqgWZAmxBDoE6zTYmOxigcKoKkNG4WRs3gvTXy2ky2KM6KZz3J9ib8s4jIKW2ZiMkjYsRO2mQ1XT+iGzzAt72GQE7f09waWwIYLzymc/2sf9fHOfiVbr26Q+2aC0FbjHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=odsyLtd6JGoS4k2C2EuKsYyE9UfDEqULk2Jn4ZII7fU=;
 b=WTyjT8tYRePcWwVCbKRdzk+bF4/eakC1Al+HX8M41agBYzz1yDLJh8pu0XdlzxYavoj9repSiPPf7RnWPwGvH+to/NsaD8PdGbPb6J5RDpAWpq+tCwvpjE7NH01qAP4Q7IQIZzoa/XsAItcHFHNTRYBwu3Sky/v0zfBZxPyRIpFzMPrmZPj8YCh5ddduw7wcmAKS5laWw7OQ9syupmVcJd00mLL/cu9S13osXMSeI03adulO+nfPUZj8TqiAkIQi9DyQUzWZNI5jhoRXPz6TsuUY9ks2+m4kq3e0snVAZcAgG7M3fwKAskR+F5MXq8uqsH7h6YqQ3xkugfYl9JMTTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8319.namprd11.prod.outlook.com (2603:10b6:806:38c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Fri, 31 May
 2024 12:10:34 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 12:10:34 +0000
Date: Fri, 31 May 2024 08:10:30 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 10/10] drm/xe/display: drop i915_drv.h include from xe code
Message-ID: <Zlm-Np52-ayoO3-W@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
 <bb490f3e928fd8178277fde2435de80638fc5715.1717004739.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bb490f3e928fd8178277fde2435de80638fc5715.1717004739.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR05CA0009.namprd05.prod.outlook.com
 (2603:10b6:a03:254::14) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8319:EE_
X-MS-Office365-Filtering-Correlation-Id: b377806a-ccb6-4e38-2f66-08dc816aacb5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?mbvOLpKekOkHkWkMVdDl++jvbDXkuet/z86b81jfFoz9m4/3nCr3VBly41?=
 =?iso-8859-1?Q?MVuWn94LOUb35IrDkWseW17Qbb9IKGsoMivU6GiqDoYKjfyNtv1K+/stuX?=
 =?iso-8859-1?Q?wAAduTKHD7w0WIcSlpvUROeE85E2MBhx7iY0ATHv6EtPxxvkEKrNnKGJ6H?=
 =?iso-8859-1?Q?US5D27eZXVTYJ4UfpbFlMxCuSqsgsIO1lZVwBU5Re2Typya6LCuBFMQ5Mi?=
 =?iso-8859-1?Q?g4ihPo4yaSfXdKXM+9ceJcH1m+PuiQCeBt5r5Hyq0VcPZfmw/fe3vQfhNm?=
 =?iso-8859-1?Q?GKsv2eMHg75crZtKsLFi3sA+iAQtWR6fDjiePV3ujjE2MrR2F1ABPglUT0?=
 =?iso-8859-1?Q?7d9kZ3XNbsfwM3AZ7I2waNMPE6oikZoggVyXxc7S5gZAfJpCAE7ATrofcr?=
 =?iso-8859-1?Q?Wf998b4dz36ai4V1JqbQ8XFScHt1PVH4jEVaMEbX+tUeH+fxiALqb5rM60?=
 =?iso-8859-1?Q?JjfgnrOzRNYHUzr/kfFRdgBTvKXmo34lIsySMYOyoljG+caWvgOOKTuiX5?=
 =?iso-8859-1?Q?V1spVjDNSfyPqQJL6+irX6wboqPKgeRpWc72/EI+y1NWTwiISu2tdpiAhs?=
 =?iso-8859-1?Q?XLA7HuJmEwez9NnVz3TFauYwo7lYnLwxOo/IdWSuQ/di5FRBOGI/Ro2vaF?=
 =?iso-8859-1?Q?sDGPsl3Z7ilRSomwJ4w2W05qnvJrHTCwLO3eTUj+mw8gXd88i2FwwM8V8F?=
 =?iso-8859-1?Q?mXFpygUDOwjmH9fCrsJ/YxDDMOuKOE5i6asF11QIGOcpEIfi7NzL1iir1I?=
 =?iso-8859-1?Q?dQkpHpLiadLAoMNF9zfQrRK7WHqpVeGsTLPRHGUlJ+6HPCgUcYKtZfwkkZ?=
 =?iso-8859-1?Q?BkycnRrPibgFKXI2jR2JMuVCQQKo8rVTWCR1X+3i/QbmrlqJihvGh3cHV8?=
 =?iso-8859-1?Q?FOHrrSG5p0fU8wDiWfxVHP5k/V8aqJYF4FHy+czzflkGM3SHGX6E4vtNWx?=
 =?iso-8859-1?Q?R7g7VaV52fIF95Sy8THex64iUnWUgMvU+PpOBit/5ahecSGCe5+Xa35WRD?=
 =?iso-8859-1?Q?QeMN4HnruQsPIrlT7mw7+a6phW0s2O3/axzzXeVds+Pe9FZy/c1LA5GZ+A?=
 =?iso-8859-1?Q?5jVkCZ/DcHFZbCZL62snLYnw2mOTTBfHfvMP3M6a7YAC4DcpCZvhmlwkkL?=
 =?iso-8859-1?Q?VyyQp90XsgO5XhT8cfTHMNFy4pucFjwL0qGO9ehQsrW6r815FQEhWnwEvQ?=
 =?iso-8859-1?Q?m54I61aknY0gE2hDe9O2QLqg1pQa2a1wQUllIi8dRWljj8U38cyGKTryUR?=
 =?iso-8859-1?Q?OoMUhXvxzXmzvyugTMatnEYwomvgbSGunkHWu0qNnPFqn+Eilk6w7CC7z/?=
 =?iso-8859-1?Q?sr034Jb+yZDCtwVWj6HE8GW+dQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?MBvWTiqx8nKgCG6Ucmh0a84ckGrWFA3t8wcNI36QoF7ttSjTS0ULqf9is7?=
 =?iso-8859-1?Q?QQso5q3Ycy/EqdC4f9p5C42HDVj1meNZMuhx37DmCPE8Q3Kcg7rQ5vVa/7?=
 =?iso-8859-1?Q?PlUd1ethMsc318xSt1qEgcKJ7Voy6QWRSdBuiC+bx7F3fXatgraYTMqudR?=
 =?iso-8859-1?Q?GOA3/2xr+xZeAWM+x3lvAqYx6kwHfoQO1OOymhmy6dbtyAI2oupF3sVmHm?=
 =?iso-8859-1?Q?MhmrEB6O+o/G99SR5yUOJTcZoZeOgrCBgx0U7/gB9XpUI0NsEGgMbVKUfg?=
 =?iso-8859-1?Q?JPDEI1EraoWKpoRXg5FcU8QPOcaK0Am0kPlSmPlMjQCuN3yIxGhMD2t7EW?=
 =?iso-8859-1?Q?aVR6T88Ksq2inTWU9xgQshMEaBSt1FsPeoVTjMlNidUmr8/QUW71heubA7?=
 =?iso-8859-1?Q?2hSbPadJVmR8NFyOxm4ncsRAoWu+SpEkmRWlme/kZ6ZQ6wIF0EEBBbMM7O?=
 =?iso-8859-1?Q?wo5ogoutwxF0S4fDPNWvYWea0XIng96/Aeow4pBYWdGPqSumk0VK+lgigR?=
 =?iso-8859-1?Q?EujbPiFwC0qayV9xs9b3gc5k1UlbbguGZ/RFQNT8WfLhCmSabQjp0tKXLz?=
 =?iso-8859-1?Q?XM8ELcm2Da9OkePUcvxKk5NRuAmUGlqrkhyjWwzllKKwhTClUmI/QFlwwB?=
 =?iso-8859-1?Q?hcZurqF+bnZsB3UjmX+hmhni2angRN4PI6svGxegaywD+DqgRNhSc3z8Bk?=
 =?iso-8859-1?Q?LiE4Ocdsn38lxzb7LDMJe8+Zm0JnEdKpj+mJhnTEBu1w91VmsIWKpmEgfW?=
 =?iso-8859-1?Q?qXkkdmH9eEyjMZOw8i33Hbx1SwDgydChgfI7ybswChywwkgZlZfzlG32vB?=
 =?iso-8859-1?Q?ioojLhgWRTAPIabnBtgSaOfSiqVdbbrrTQgr19bsvEA/FOAjI7aqo8V/BA?=
 =?iso-8859-1?Q?WcjUKT8fuIXdZRav8dxaMtK5qVJceFv842ILJoTC3pUk8ZkBphzAgLjTAY?=
 =?iso-8859-1?Q?mVqGQgPAOHc5rbJBXxqWf88MRxMlL+/XTMomo82Sg7Y2byIqEA90gHInzC?=
 =?iso-8859-1?Q?h+RlFGJkK1royJhBYgGsl7jqkzsrBlmYtokRZrHgmoSlfyWSRDE0RdwlK3?=
 =?iso-8859-1?Q?qbjEmeW3O8UE2NHDSh4kqO+CkG22WH3+jdjhGRwZuPjSKjo3jDv+iwFdVc?=
 =?iso-8859-1?Q?i5+4kJTSuhbPSIp6N5KvM+DbGNKdKzOH8ARLWWq08YHExmpcM9o1p8SuL/?=
 =?iso-8859-1?Q?NXBGY4kEZTVO64ljTdu2T4PJpkNwi0fFqxRCLrRJx5Ch50BnxrDRxFTDbe?=
 =?iso-8859-1?Q?mXjUmMqtDsf7BSkL1uyUa/iHdDqiKAasmyt8KWkAbpwrwLcqKO7f4/Fr8j?=
 =?iso-8859-1?Q?9H4tjPSHnFGwZ+aY3YvVHrjxN7YlNz46RNnj2Yf/QJBILZ4mPm6YU+i/t3?=
 =?iso-8859-1?Q?uMEq/iG/6W+V2p7nrc2+5GpjIB3If+SsUo7vRc7TanD0ZhJaArdbrH/Jvu?=
 =?iso-8859-1?Q?vM18Pfm6DIixvT02ps3Lb9vOm6jMzDXzd6yxVCHjAkCPsGTlNHqtS29unm?=
 =?iso-8859-1?Q?xjDPhxh6BNm43Z8QmaXJlOLBiGN6FYpQ2zdSrozCsYpOSC3oKljVqiuoOi?=
 =?iso-8859-1?Q?DuM8Lr678ibiC64SJrysc1hifva2llve1cWHWHhnhbSHU86lSkCZldR9vE?=
 =?iso-8859-1?Q?I8+UU2yqhTDgO9p3w3pK71TaJsU2eN2k5/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b377806a-ccb6-4e38-2f66-08dc816aacb5
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 12:10:34.6603 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lzQv7p476OBd/vDSYEfHAgEwtlTCiIFytC/+xXbdd3JwYGweJ8n0f92Nclm74Py+VLH+h/UyT+L2qdtTG0q5xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8319
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

On Wed, May 29, 2024 at 08:48:14PM +0300, Jani Nikula wrote:
> Drop i915_drv.h include from xe display code as much as possible, and
> switch to xe types where necessary.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/xe/display/ext/i915_irq.c     |  1 -
>  drivers/gpu/drm/xe/display/intel_fb_bo.c      |  5 ++---
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 17 ++++++++---------
>  drivers/gpu/drm/xe/display/xe_dsb_buffer.c    |  9 ++++-----
>  drivers/gpu/drm/xe/display/xe_fb_pin.c        |  1 -
>  drivers/gpu/drm/xe/display/xe_plane_initial.c | 18 ++++++++----------
>  6 files changed, 22 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/ext/i915_irq.c b/drivers/gpu/drm/xe/display/ext/i915_irq.c
> index bee191a4a97d..eb40f1cb44f6 100644
> --- a/drivers/gpu/drm/xe/display/ext/i915_irq.c
> +++ b/drivers/gpu/drm/xe/display/ext/i915_irq.c
> @@ -3,7 +3,6 @@
>   * Copyright © 2023 Intel Corporation
>   */
>  
> -#include "i915_drv.h"
>  #include "i915_irq.h"
>  #include "i915_reg.h"
>  #include "intel_uncore.h"
> diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> index b89cda053d2c..f835492f73fb 100644
> --- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
> +++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> @@ -6,7 +6,6 @@
>  #include <drm/drm_modeset_helper.h>
>  #include <drm/ttm/ttm_bo.h>
>  
> -#include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_fb_bo.h"
>  #include "xe_bo.h"
> @@ -26,7 +25,7 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
>  				 struct xe_bo *bo,
>  				 struct drm_mode_fb_cmd2 *mode_cmd)
>  {
> -	struct drm_i915_private *i915 = to_i915(bo->ttm.base.dev);
> +	struct xe_device *xe = to_xe_device(bo->ttm.base.dev);
>  	int ret;
>  
>  	xe_bo_get(bo);
> @@ -42,7 +41,7 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
>  		 * mode when the boect is VM_BINDed, so we can only set
>  		 * coherency with display when unbound.
>  		 */
> -		if (XE_IOCTL_DBG(i915, !list_empty(&bo->ttm.base.gpuva.list))) {
> +		if (XE_IOCTL_DBG(xe, !list_empty(&bo->ttm.base.gpuva.list))) {
>  			ttm_bo_unreserve(&bo->ttm);
>  			ret = -EINVAL;
>  			goto err;
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index 5ecc7d467934..3a2f3a5ac2f9 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -5,7 +5,6 @@
>  
>  #include <drm/drm_fb_helper.h>
>  
> -#include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_fbdev_fb.h"
>  #include "xe_bo.h"
> @@ -17,7 +16,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
>  {
>  	struct drm_framebuffer *fb;
>  	struct drm_device *dev = helper->dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct xe_device *xe = to_xe_device(dev);
>  	struct drm_mode_fb_cmd2 mode_cmd = {};
>  	struct drm_i915_gem_object *obj;
>  	int size;
> @@ -38,26 +37,26 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
>  	size = PAGE_ALIGN(size);
>  	obj = ERR_PTR(-ENODEV);
>  
> -	if (!IS_DGFX(dev_priv)) {
> -		obj = xe_bo_create_pin_map(dev_priv, xe_device_get_root_tile(dev_priv),
> +	if (!IS_DGFX(xe)) {
> +		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
>  					   NULL, size,
>  					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
>  					   XE_BO_FLAG_STOLEN |
>  					   XE_BO_FLAG_PINNED);
>  		if (!IS_ERR(obj))
> -			drm_info(&dev_priv->drm, "Allocated fbdev into stolen\n");
> +			drm_info(&xe->drm, "Allocated fbdev into stolen\n");
>  		else
> -			drm_info(&dev_priv->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
> +			drm_info(&xe->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
>  	}
>  	if (IS_ERR(obj)) {
> -		obj = xe_bo_create_pin_map(dev_priv, xe_device_get_root_tile(dev_priv), NULL, size,
> +		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, size,
>  					  ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
> -					  XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(dev_priv)) |
> +					  XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
>  					  XE_BO_FLAG_PINNED);
>  	}
>  
>  	if (IS_ERR(obj)) {
> -		drm_err(&dev_priv->drm, "failed to allocate framebuffer (%pe)\n", obj);
> +		drm_err(&xe->drm, "failed to allocate framebuffer (%pe)\n", obj);
>  		fb = ERR_PTR(-ENOMEM);
>  		goto err;
>  	}
> diff --git a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> index 44c9fd2143cc..9e860c61f4b3 100644
> --- a/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> +++ b/drivers/gpu/drm/xe/display/xe_dsb_buffer.c
> @@ -3,7 +3,6 @@
>   * Copyright 2023, Intel Corporation.
>   */
>  
> -#include "i915_drv.h"
>  #include "i915_vma.h"
>  #include "intel_display_types.h"
>  #include "intel_dsb_buffer.h"
> @@ -34,18 +33,18 @@ void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf, u32 idx, u32 val,
>  
>  bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct intel_dsb_buffer *dsb_buf, size_t size)
>  {
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> -	struct drm_i915_gem_object *obj;
> +	struct xe_device *xe = to_xe_device(crtc->base.dev);
> +	struct xe_bo *obj;
>  	struct i915_vma *vma;
>  
>  	vma = kzalloc(sizeof(*vma), GFP_KERNEL);
>  	if (!vma)
>  		return false;
>  
> -	obj = xe_bo_create_pin_map(i915, xe_device_get_root_tile(i915),
> +	obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
>  				   NULL, PAGE_ALIGN(size),
>  				   ttm_bo_type_kernel,
> -				   XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(i915)) |
> +				   XE_BO_FLAG_VRAM_IF_DGFX(xe_device_get_root_tile(xe)) |
>  				   XE_BO_FLAG_GGTT);
>  	if (IS_ERR(obj)) {
>  		kfree(vma);
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 0449cdb892f3..a2f417209124 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -5,7 +5,6 @@
>  
>  #include <drm/ttm/ttm_bo.h>
>  
> -#include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_dpt.h"
>  #include "intel_fb.h"
> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> index 7672a0cffbd8..e135b20962d9 100644
> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> @@ -9,7 +9,6 @@
>  #include "regs/xe_gtt_defs.h"
>  #include "xe_ggtt.h"
>  
> -#include "i915_drv.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_crtc.h"
>  #include "intel_display.h"
> @@ -25,10 +24,10 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
>  			      const struct intel_initial_plane_config plane_configs[],
>  			      struct drm_framebuffer **fb)
>  {
> -	struct drm_i915_private *i915 = to_i915(this->base.dev);
> +	struct xe_device *xe = to_xe_device(this->base.dev);
>  	struct intel_crtc *crtc;
>  
> -	for_each_intel_crtc(&i915->drm, crtc) {
> +	for_each_intel_crtc(&xe->drm, crtc) {
>  		struct intel_plane *plane =
>  			to_intel_plane(crtc->base.primary);
>  		const struct intel_plane_state *plane_state =
> @@ -135,8 +134,7 @@ static bool
>  intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
>  			      struct intel_initial_plane_config *plane_config)
>  {
> -	struct drm_device *dev = crtc->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct xe_device *xe = to_xe_device(crtc->base.dev);
>  	struct drm_mode_fb_cmd2 mode_cmd = { 0 };
>  	struct drm_framebuffer *fb = &plane_config->fb->base;
>  	struct xe_bo *bo;
> @@ -148,9 +146,9 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
>  	case I915_FORMAT_MOD_4_TILED:
>  		break;
>  	default:
> -		drm_dbg(&dev_priv->drm,
> -			"Unsupported modifier for initial FB: 0x%llx\n",
> -			fb->modifier);
> +		drm_dbg_kms(&xe->drm,
> +			    "Unsupported modifier for initial FB: 0x%llx\n",
> +			    fb->modifier);
>  		return false;
>  	}
>  
> @@ -161,13 +159,13 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
>  	mode_cmd.modifier[0] = fb->modifier;
>  	mode_cmd.flags = DRM_MODE_FB_MODIFIERS;
>  
> -	bo = initial_plane_bo(dev_priv, plane_config);
> +	bo = initial_plane_bo(xe, plane_config);
>  	if (!bo)
>  		return false;
>  
>  	if (intel_framebuffer_init(to_intel_framebuffer(fb),
>  				   bo, &mode_cmd)) {
> -		drm_dbg_kms(&dev_priv->drm, "intel fb init failed\n");
> +		drm_dbg_kms(&xe->drm, "intel fb init failed\n");
>  		goto err_bo;
>  	}
>  	/* Reference handed over to fb */
> -- 
> 2.39.2
> 
