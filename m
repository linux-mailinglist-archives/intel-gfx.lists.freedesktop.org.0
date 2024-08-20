Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 691C09590BE
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 00:56:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04BBE10E547;
	Tue, 20 Aug 2024 22:56:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DSpmWDY2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE79F10E547;
 Tue, 20 Aug 2024 22:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724194608; x=1755730608;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Nwe0IhCdiHUj2VO5sJc8ZZyZUgdSY1764oN+s/l6fOY=;
 b=DSpmWDY2cB/wAN3Jqfo99tzpxPmmFf1QzMtg+xnpeoFvNnrdlsS/W9oo
 5unS/qHBQXs42Lb0APtOx/6PNmbLgKZPr/maLCOd2FFmR1XGtcFry3CpE
 fxoQfGmg2AiWIJ5JgW+Mt7+MO6UGvIz75bS5uGdbB0UlzF5eU+YZEInld
 xpfO2nrICpO7s7/Vb8SsOTgABYDyqox3NyYmlXS9yV+xiD+Eot8Sybvym
 MWFkwf/YOIsHcD27d32oFMkAuIuYXSS1M9mtcQS2/G8v7pLSLrPT5XP0t
 syei+ktPJV2XbSkwETBXksyKT5tiLzk9RLhu6O9oDko1oqUlZlHBM9L2I A==;
X-CSE-ConnectionGUID: QEHHMmYnRNanMCRq9D0pjw==
X-CSE-MsgGUID: AtLYEIpTQFyJSIIxDkt27g==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22715816"
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="22715816"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 15:56:48 -0700
X-CSE-ConnectionGUID: Xja3fbJqRLGVcEyPUhLzuA==
X-CSE-MsgGUID: LLiIjNcsRCib+vt+75Wj7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="60842695"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 15:56:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 15:56:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 15:56:46 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 15:56:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eQqnaTCWcQwbB0Rv65E2kdnXdHSSOpqkD4ChWUNHlfkXadlDr04Qm3VZX+oRp4K5x8jIoAYAhFOkGLEXC7rBXMAOCEBVmR9j72gJvwrrJ+hK07tGVS73jHZaZfiGhEdKRd0Lq2yvDsV9xu7cHSp9JYZKNnefn76TkT/mvhNnoH63Tc5wBLdxHhdJmHZnXUvGRdkhWAKG8RfOrqbN8pN8v3jL/Rs3JaKAXf/Dg+dZDfqk3Z+bka/JphIQYdqCVslsY3F4YQz7jX+xMNKW4/3s2v2jshjIywAOFMDJnR659tHigtppAhKHX/JtAssK8xGBV8vOhUErIQM74ZsWXY38lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=odsrX8eJVGbNotFV0qipWvCt1kCapPJJBZuGny3SbpY=;
 b=p3tQ4jR/OjV6rzEQI+9Q5nzdA1vxIrlY+chy7u7dUmrwfNkjc5Zt7zK9nxWyXS8mIMqsbPvAboxU6wOmpQ7cqYvtEJuonwUFx3PFUcZc1OoTpaPc527q8Uw77fc47thoSfoSujibZLFTUrYJQfAmsdhFQFCeD6xjMm3D21ho2ztpcfjX2uApPxFtA4t6i2tgksbtPy2lJnT3HFX1mThm8CrwLCW7SrVxJtq9yBibSs56ejpq7m8jYAwnETE2ZU/gm/bGKhqV1IieRbcOsxnScNyQLrKAfTpVdEgqbr1jA/MgE249a4QNzKCXb5WAgP18gfYQRCYMU3No96ENzdfhMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM6PR11MB4546.namprd11.prod.outlook.com (2603:10b6:5:2a7::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.17; Tue, 20 Aug
 2024 22:56:43 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7875.019; Tue, 20 Aug 2024
 22:56:43 +0000
Date: Tue, 20 Aug 2024 15:56:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 06/10] drm/i915/display: rename IS_DISPLAY_IP_STEP() to
 IS_DISPLAY_VER_STEP()
Message-ID: <20240820225640.GR5091@mdroper-desk1.amr.corp.intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
 <6861e02f3adf15d56e89890000eb195070c33c9b.1724180287.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6861e02f3adf15d56e89890000eb195070c33c9b.1724180287.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0047.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::22) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM6PR11MB4546:EE_
X-MS-Office365-Filtering-Correlation-Id: 68628673-7cbf-48d4-1027-08dcc16b5c72
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MhJnT8gc4ikG0XAPQHsNLPtQsgCdzqCJRh5lnzs7RSec15tVB/DI20vhTGBN?=
 =?us-ascii?Q?6RDyQ6iYzHh3iBrqImsp646fs71xroSey+Cc9yR5eEg4HgYh2Gc+2CYQcNJw?=
 =?us-ascii?Q?6A+g1qPrpUh0x1Sik7Ril1NGz7mi++77u043vOjxq/2ggO+L+617TMV0aMeg?=
 =?us-ascii?Q?lY6H1jV3v+O7sUXacd908H8Xck4VU2vqJqY63H8p6mSQI44tKq3oUpYVqzOt?=
 =?us-ascii?Q?VS0GqbvtnCSl1L/aI/vG8bkCVYN8TLycH7fnP2fDS8FIpwgr9u/b2Ntr4wOT?=
 =?us-ascii?Q?8duEJCeN3OhkpIjYWR2MIe4Cw9Ez3mkShJG2lq9iAxehTjpXtovRZaXZBVAt?=
 =?us-ascii?Q?a9v6NUnQmRh24d7SlfoPdVjkIZsKLFCMTh6Q1A8ednL+FGGmZWE5jqR8qQNM?=
 =?us-ascii?Q?/3K874LFmumQsi+nsadgdnAo9srhcF7E72Kp5+lEiTQyBBmuQGS58sCiX5uP?=
 =?us-ascii?Q?mX7avzpfJMbnTHKGCcEAJgwRjeJ1PeJI8GOiszSGyajy/yGlAQjQivBF5wHI?=
 =?us-ascii?Q?ECa079SkV2xcJt0UnGn9cJ6bYytSeLubH2Rq5MBmPGcwNXJObK8jL/aXqX0v?=
 =?us-ascii?Q?Hpd98UfLK32LPTiGVeMl7yRaaslcMIjBivwvIgpY7ypkDfHXM0AuOK3uy3Mc?=
 =?us-ascii?Q?KQg7eFp4Sc3y6a6Cewn5BqJ8G6WqEJXZDzrE2JHQQxJpDr05hPC0kMw5t0pL?=
 =?us-ascii?Q?yTY13bPCqYMWOf+tkiH709hfEcdvpCXkDHQROuuh2aC0uhY4d8gXuPyacB0d?=
 =?us-ascii?Q?24KoHOH0eY0OP8A7RLbzq3lI1MkhxFEGLYb3ln+148rU1fkZSngs17xg2lg5?=
 =?us-ascii?Q?2hEyidQFkxr7v6CqRXY5d4xOXRlNNMqyCGfdDzG+CyzWmvLGK/aXhYwVSY1J?=
 =?us-ascii?Q?tLzHJVOIATZn9vZb3yuM0HJMEma7LzviQhOZznlGfgJ6KPDgNTWdmgmxwCbt?=
 =?us-ascii?Q?PV9Wf+oVaJhtAnM5vpaO+L8lNpTuruG0EdIVgl0fB+II7L/3p5CpgsDPeilg?=
 =?us-ascii?Q?vRe1C6WVauxESBAZmYpIeLEVWARKigzHa5SGk7T92EMOcua7xSJ9rBcryDr9?=
 =?us-ascii?Q?jhfvNwZXCgSPFSCYwQx+80Kn1tyGECP9KTftiNkf76zER3ClQDN/8l1asL/6?=
 =?us-ascii?Q?+JWvzy9NpXZYx1V59HPLilxppJmp4tY6skjt/QzOukbumi4psQ0aoHcMr1dv?=
 =?us-ascii?Q?3kxEIkKLVX8QjiMOGSPDwEEPLgDaYT1KngGffhxR/mSjKqIrYRlI+jy7MZRC?=
 =?us-ascii?Q?6DVOCMOplNs/PpiJbTVUsEmqijwFwpciXjCMb/wJHLcBi3lQGENRghfTVnEg?=
 =?us-ascii?Q?7fnw/76IXH0Qw5Bg30fy7oGhH6YdVzx1CZnhq6Eyt1Ijag=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YsHN1vye9VLZzCIZvEOZqLpOdwX2KzkRhBeDGx9VgfzOrV2BArLEg+unRxib?=
 =?us-ascii?Q?HU421cifPOWOGGd99So9UsC9xmlhHLMNw2e9P+4ViMo4Nf6CLRYFam9n63AA?=
 =?us-ascii?Q?/rCTnuA4txyPTxhuglHDkqGlIsWyA8e4K20mmGb3kFdh+oVVCmzTHmLdM/d/?=
 =?us-ascii?Q?NyrSl8YM4as1vLlB0rwUfpkmQaIn4WupcAVFO+3/unLvwlmQVhkYxtxD6j66?=
 =?us-ascii?Q?Zxn2of38BnrwtbF72yqvT0sbo+wKzWUx0wvEhft1bTtlHuFrSU273Q9AK5/Y?=
 =?us-ascii?Q?HbOGI/y+QTV8mtYYCTn0jCQU5KnConf/LAolanc2B/3eCHrcfxh/74/YJgjU?=
 =?us-ascii?Q?g+iXLToINVBTr8qVXE/a+YuowI++3QDK2ugDUXhSmFybwd88fH73xxv9y5n+?=
 =?us-ascii?Q?/GiDNxbnq938FxnbIgaoFOylrUG/lBJKFqC2THrQo7rigNPA1mXiVodexIwV?=
 =?us-ascii?Q?Fo3DTVm3Wko5mUArLri4oyoeryJFkwBZ8uigu+KnfQxYLTlxW50PsbsLlOKP?=
 =?us-ascii?Q?J+KUkstNH9xMEJlJ7TSOzdy25ht/W/pr0fTLiOwUu5O8+eWDNeqAuYcNUdic?=
 =?us-ascii?Q?eaujp4OAJSEz3xqUuDzBk+Y1cSrfwegSKdUdFYcFi6+junkWA+29dowSDhX+?=
 =?us-ascii?Q?RH0ejYmCZMBpEdtxD1xlpjFrIifIA8f/U3+yA1CGNBxBgt3Un+S2Cb3g5kLv?=
 =?us-ascii?Q?MdnWnTezk0Oiy4sI/puKjbtgp862741zTvui0CUKUM7BhJ3gqjRETY7Tj6o2?=
 =?us-ascii?Q?osf0q7KN7Zdf/KQBqFP/J+qVeXUGPT4kSb+g5/mOv/l2ZX5I47sjD/1flSts?=
 =?us-ascii?Q?F+iJYn+a4+Al9JrBmjvn+3s0KxDLzpAS5dlo9Avvf2ZW3Q1HtytdQA/PU89x?=
 =?us-ascii?Q?DrmpvAgNg+f9i+UGfrssW59wjpnUd28JysFZGbNZCvpgu95Bs8XNJ0A1JNdS?=
 =?us-ascii?Q?tguUt9U8ufJOOjhh1aPCFRS5JnVWCElWZO8leCVBjSsu8rtJ8jOu0Lb2QOzU?=
 =?us-ascii?Q?O55dMtzwhBt4ceiBB+muUsvl0suKdifhcclM+3rV6v5yc2iPwLPGkR3iuvRI?=
 =?us-ascii?Q?7uT0i0T6Zek8s3Gii1viqXgpO6sTfNFGW94Jbs/C5D6wnet79BsQVX5GXhhG?=
 =?us-ascii?Q?CWhDIxZ6tx70GeWQPR5yARUXQ3Cev2BZrDxOM4HyV9J1m6FDeBrLupflMqCV?=
 =?us-ascii?Q?ujjraKeCTvsIn8IOf2V4eRJt3/RfyTEFx4n7CAWHrGcC328Q2O7wuQ9UNXG/?=
 =?us-ascii?Q?cD0Kya+VffI5V5fp5OpVpazgUqhzNP/pBNAhpex3DwHYLCFdxdNlECds3hXO?=
 =?us-ascii?Q?lMRUburruswhx2Dx/V6+mj7MofP+IBU4B2ax0tF9frS0BZ2x8SgsI4M+6Dj3?=
 =?us-ascii?Q?4dBrrby9gNZNYQGdUjNn9IAVSoA79PXRrA1MdZOgJg9tqsFtWkvbG5xDyygi?=
 =?us-ascii?Q?3jV/YBKhmcBVMuB8vGGJyCt5O0L9VFoSjzldvgbznI0EiASsB9R8bhbvP4LS?=
 =?us-ascii?Q?elwrFmyT2LCWnnuxla4xxUp9Xw34aIHwbcXutlGaY8/j0MxT0cG2xACkqFIa?=
 =?us-ascii?Q?Hz4jUI52OPAuAkmQVhsGWxJT8S79D0vZB2/2QufxKTwrrhxn5nkRDzBNip7s?=
 =?us-ascii?Q?oA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 68628673-7cbf-48d4-1027-08dcc16b5c72
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 22:56:43.7242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KxeN2yLptAfee4SAh6FeEklnxk9ejTbUKvLrj/ScSw/PsVwvk2/Wse8jRULGkphKU0mjc/mP9OXZD7NGHhvfTaqPfmK08tL//sA6uFcJZbM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4546
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

On Tue, Aug 20, 2024 at 10:00:39PM +0300, Jani Nikula wrote:
> Unify macro naming on VER.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 6 +++---
>  drivers/gpu/drm/i915/display/intel_fbc.c            | 2 +-
>  drivers/gpu/drm/i915/display/intel_hdcp.c           | 6 +++---
>  drivers/gpu/drm/i915/display/intel_pmdemand.c       | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c            | 8 ++++----
>  5 files changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 30c624989902..8bd342658291 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -175,13 +175,13 @@ enum intel_display_subplatform {
>   * hardware fix is present and the software workaround is no longer necessary.
>   * E.g.,
>   *
> - *    IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_B2)
> - *    IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_C0, STEP_FOREVER)
> + *    IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_B2)
> + *    IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_C0, STEP_FOREVER)
>   *
>   * "STEP_FOREVER" can be passed as "until" for workarounds that have no upper
>   * stepping bound for the specified IP version.
>   */
> -#define IS_DISPLAY_IP_STEP(__i915, ipver, from, until) \
> +#define IS_DISPLAY_VER_STEP(__i915, ipver, from, until) \
>  	(IS_DISPLAY_VER_FULL((__i915), (ipver), (ipver)) && \
>  	 IS_DISPLAY_STEP((__i915), (from), (until)))
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 5eda258616ae..52b79bacef4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1346,7 +1346,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  
>  	/* Wa_14016291713 */
>  	if ((IS_DISPLAY_VER(display, 12, 13) ||
> -	     IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)) &&
> +	     IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)) &&
>  	    crtc_state->has_psr && !crtc_state->has_panel_replay) {
>  		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 05402ae6b569..94418f218448 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -42,11 +42,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  		return;
>  
>  	if (DISPLAY_VER(dev_priv) >= 14) {
> -		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
> +		if (IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
>  			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
>  				     0, HDCP_LINE_REKEY_DISABLE);
> -		else if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
> -			 IS_DISPLAY_IP_STEP(dev_priv, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
> +		else if (IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
> +			 IS_DISPLAY_VER_STEP(dev_priv, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
>  			intel_de_rmw(dev_priv,
>  				     TRANS_DDI_FUNC_CTL(dev_priv, hdcp->cpu_transcoder),
>  				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> index 9ca981b7a12c..ceaf9e3147da 100644
> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
> @@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
>  				     &pmdemand_state->base,
>  				     &intel_pmdemand_funcs);
>  
> -	if (IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0))
> +	if (IS_DISPLAY_VER_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0))
>  		/* Wa_14016740474 */
>  		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 9cb1cdaaeefa..dea3694ddc3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1862,14 +1862,14 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  		 * cause issues if non-supported panels are used.
>  		 */
>  		if (!intel_dp->psr.panel_replay_enabled &&
> -		    (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
> +		    (IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
>  		     IS_ALDERLAKE_P(dev_priv)))
>  			intel_de_rmw(dev_priv, hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
>  				     0, ADLP_1_BASED_X_GRANULARITY);
>  
>  		/* Wa_16012604467:adlp,mtl[a0,b0] */
>  		if (!intel_dp->psr.panel_replay_enabled &&
> -		    IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
> +		    IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
>  			intel_de_rmw(dev_priv,
>  				     MTL_CLKGATE_DIS_TRANS(dev_priv, cpu_transcoder),
>  				     0,
> @@ -2051,7 +2051,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  	if (intel_dp->psr.sel_update_enabled) {
>  		/* Wa_16012604467:adlp,mtl[a0,b0] */
>  		if (!intel_dp->psr.panel_replay_enabled &&
> -		    IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
> +		    IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
>  			intel_de_rmw(dev_priv,
>  				     MTL_CLKGATE_DIS_TRANS(dev_priv, cpu_transcoder),
>  				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
> @@ -2536,7 +2536,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  
>  	/* Wa_14014971492 */
>  	if (!crtc_state->has_panel_replay &&
> -	    ((IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
> +	    ((IS_DISPLAY_VER_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
>  	      IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv))) &&
>  	    crtc_state->splitter.enable)
>  		crtc_state->psr2_su_area.y1 = 0;
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
