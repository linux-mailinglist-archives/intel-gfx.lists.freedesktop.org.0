Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C64E8B845B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AC37113001;
	Wed,  1 May 2024 02:27:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DAhcn/J9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70502113001
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714530419; x=1746066419;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ha2nKZXIj0Iza0vnkxqDIWaXnK6usKod73QiViGOC7k=;
 b=DAhcn/J95GgigsGXHFSvHOrAsdcHeG6rYaOvj1e7AT8+U6XXdFdBrbLH
 Bo+AhW0vVjYIgQZtLIS/Tip/NVksBVW1JOPHlOKOBSpeftjret7qE9EVf
 G2p9WLTJMsZH22z5dL/juQpRJ/z9h5mllMce9dGNWZSyUoL/iRccfT0bZ
 SP5DsEsqVlMgB4O/hsHqnG6nkngb4IJzQCo5nizWmyO2fk+6cKF2q8B2W
 J2irUWgMkec0vUdmnuLy+NL77EGzsYdeKMxxkal+on8gqPQpbWE6E1QdT
 a0qMhBWjWdrdzDWha6iJw5fDyAr4T7RjVXkBAqRo47a/G8+0M0m7oLLyI w==;
X-CSE-ConnectionGUID: MrzDI+gaSpurAusRdPp4nw==
X-CSE-MsgGUID: 9HVtFfBPSG29MxX2V8dTkg==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="10805488"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="10805488"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:26:59 -0700
X-CSE-ConnectionGUID: zU/yhCQPSwa9MmlX523Piw==
X-CSE-MsgGUID: pXLxCrW0RoWb0GHh8iebHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="26746473"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:27:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:26:58 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:26:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:26:58 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:26:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kAAAQy8CAj0OpSQzcsc+qyRkEUb764yWzVV1MeH4Bti8BcNbCshKPQo51Hf841DkTXUH3UeIT7drEqeWPYycvvsvzKHADn8kUc7xFe0+uHnO0iApk6BYj9xwKmMP4AhhfWQ/au15sm6MNwXwoR5M5GVdH1eSCZc1LH7P6xHz4JNKuDvaQF9HkJe5MM+zViMLzcJLUAXyyjDCq3CqhAKT9w7NQRgq41BFRpcPNDh1HWSIkZyc9sDjdnb/jYy39L2NdWV7RKrv3s9BA5gHSC7ATZ4MUv6sQBd5sRYIixUqpsdvWc/PupkQ1URiPWgy/gp8/QtLxkx+VgvsrtNwTCNeZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GHZ+0Pz9LQycNdXETrzf0bxBnYawTGLB0N5DRM1sRLI=;
 b=D236Io6rEN8YAzEcIWASpl+1dgp7PhaG0PYlOAIGHVlCjh1OAiK1Bv5TMYusAuL3+e82QG8f5mUrNKTtF5zWhtMWUZJizykBy9nyqG+wedCgHXH99hcD3Ig4caPhNfVvabOIDLY3Yt4irc/W0SDefgZvg3PJKenL4RfxlnyAA/8Shugu4UqIYQ9uTL0RYyM7ZsJxXlqc8kuMThiZwPLpfdOKNCIS0odrmvNEMNc+/bCuX91/QhyQSyflK6bE5/2qvKxq8FZDWUoWxidiYjC+j4PG6HiDqwF8y4LL5AdFCMK1xZUAF9IoZ5R4ZSsPklPHRDZYR0Q0UWy0Z/AwkNJg9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA3PR11MB7653.namprd11.prod.outlook.com (2603:10b6:806:306::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:26:56 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:26:56 +0000
Date: Tue, 30 Apr 2024 22:26:51 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 19/19] drm/i915: pass dev_priv explicitly to
 PORT_ALPM_LFPS_CTL
Message-ID: <ZjGoa9Ek4Wg9ARhA@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <f8a3bbade94258852b8129c5f5918fb06ceab54b.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f8a3bbade94258852b8129c5f5918fb06ceab54b.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0373.namprd04.prod.outlook.com
 (2603:10b6:303:81::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA3PR11MB7653:EE_
X-MS-Office365-Filtering-Correlation-Id: d78901e7-12d0-42c8-6332-08dc69862ba5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?AD9jRhiJNB0bKSQrQZ6n4pp97zLeinvSf6OaBJLnAI76txNVX2iHOkKvTqs9?=
 =?us-ascii?Q?oDCCpf8qMDObhym1f7ExVk+KhauP+7ZRHG0KtRzal0GT/6fD5B/yE23Uu9M/?=
 =?us-ascii?Q?gJUlTsOTHThCbvQR8OGcFhszjTdotXkXBJ1dsY8Px5ELB+6FPZJ15y4OI/Br?=
 =?us-ascii?Q?zFURFCGz82AHJuNOWC76rt2swO0MBGjp/TShLbecmDMcVHXPagOy1aRj1sLn?=
 =?us-ascii?Q?YqOIZFI80ysWbF8RWGDFdbl9DdyKHMHrPcj4i984dOfaWYCtj3gvoshBz0QF?=
 =?us-ascii?Q?Tw+npzIAsrBoQwX3HtQAQlddlL0quOqn9s49FbJ5I21KG4SgeMAMDwf1iUFT?=
 =?us-ascii?Q?oeoOfyCBDYGmWmSoOcN5hAt/GMaslJtp0ebzEQf4+pkQi4M3d2uMb/3dWcWZ?=
 =?us-ascii?Q?SViylECmQ94DfQWE0uOgZgaENmwZYNFZL0Ox3UUeyomqKlMOHQSTRQgBO1cc?=
 =?us-ascii?Q?1vwcZbxC0CH3KU04r1+0Dwqx82bphCyg0gfjvfB9eHG5DcT1iu/ZMd5mhu5G?=
 =?us-ascii?Q?DAsM82gHVXlCDLR9YA2rF9kDafq8BoQC5xZ5UmeQ/SQUqAT4WE3EySyN3T77?=
 =?us-ascii?Q?DvROKLFMeesRFhsk8DkIwAtZrKR049b75yj23jaHUuBPL42xvdc6IVgxjod3?=
 =?us-ascii?Q?zrgxwTqKX1jOlkV9xAANTYgkZ5YcG5qNQK1ydvEAk5xiGnd2QOw3ZthQ4qvl?=
 =?us-ascii?Q?W1ig93zwi9xOenS+iGkSvA1JNgQjtiFc/XRrnFwVUKFY36t0dKmNzoFYmviz?=
 =?us-ascii?Q?UyXASWySISQfWho5L1Aestl0ax5rczTVSnjbxvIONJHj4q3rxa518B9fjeqO?=
 =?us-ascii?Q?m9pnHpUBUEHJgzWg7hv0qHvnS0UbbHhHJEFMwuzQ1SdcxPQUabPorMTkGPLc?=
 =?us-ascii?Q?QH9Es0Wj2YvL70YtJajHZVgQDYU+aokBv5PhQ5YYrmKgFB3WFgcWjAaZTP9m?=
 =?us-ascii?Q?Sdhs8hFdyfw2scmFER5G003Ce0uC1YgtUw7NzOxIQI5ZI7rv/Npj6YT+ON/5?=
 =?us-ascii?Q?isUwg9qQfofu19a0OZm83qhjQKHOkbiLky1p110NF1mu+EJeWr4BrpJrWbFA?=
 =?us-ascii?Q?N/s5ZLIbWdePgjlCkJThN5mc4xQ19ol/4H4Yd3VRX7telvj3Hu1prZJomgry?=
 =?us-ascii?Q?DuG3T5mUwf5BFUfGdqFaprNUdbIApyv+9PERMXtJc6ndsuIZVf4OyxBK9jg7?=
 =?us-ascii?Q?admyN3P7dpZv266DQRcJrZCpEENNDL5LDH8u05xpXVjmomq6uPVDYY2eEPzn?=
 =?us-ascii?Q?PBej18CQstK/LqRweE4yNXbtYRCeW1KdWkJ7nhCjlA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GZG4v1NZR0VFE6419CvpBjiIUiHoMu6MescZV700CrAZG2hXP7FXTNY8OZrl?=
 =?us-ascii?Q?e5+YkZVL1tLh+TbqNJYnlI/XhXmCnY14uihlB1LBc39DHh0EJXd6U2DZlYQu?=
 =?us-ascii?Q?63wGPw5wdK4RTIhuaMDCyYDEyYR8R96GVYI8E/ld9amyVY6D75+5TMGnERXF?=
 =?us-ascii?Q?yf4CVJd8y17LZafRtu0xbJrbdxcUy7/FHPqAfRW7vJd5cSODjlhaP9/KgD8U?=
 =?us-ascii?Q?N9DCwnoWbuAC+5v/uuIevl0+IreKfaxV0ssfP7zKhaJe7WoI39DfdH4kQjQT?=
 =?us-ascii?Q?7zEVm4cvChlnl9GDn5xNgnDjA9BruTDk+A4Mjy8DBsnvQmivlCWMhUuKJ/tg?=
 =?us-ascii?Q?tWQL13F8QfL0ptZQLV1uJGEr3sbaDaLTillxf2c3PBLm3Dv+7lvvnsicI7rB?=
 =?us-ascii?Q?NfKJ1+JtxSf3n8pI2yetTQ1VVKiZSVz3j35DjHDYiDdOR0K0oNeIzuBbRV54?=
 =?us-ascii?Q?DrJcjLMMhSLUtGD1EKHHf2vX9WvMwTKawZ6bVVxKAeBCFUWaAYFrhxN/oo/l?=
 =?us-ascii?Q?Al/MpDJlveSH7IxmBpyVJPMo9D1R+2BM7DIV0vcmkXl1SBvvD0+pP4uBLR+1?=
 =?us-ascii?Q?y0BiAmbBplg+BhtpnBSkH29YkY4pkq9B79aB9rnFlHuC+7Bu5ueajzoFuIaK?=
 =?us-ascii?Q?PNJeT5MbvDGl8em3WfpeXqc0zXiwOPlZ0FLV7jen4F01EUNHe2HbpxKqBXtI?=
 =?us-ascii?Q?pNNGBeDqSBo/Cn7XpVuSpuV6TRkxWZeSzhLoSGZTM1Pky+rp+aF4/z0Wen1g?=
 =?us-ascii?Q?GN6PcDjGpLyZ+0nmsAKEpbJKuttX5L5MLmv/pJc+BN6VA/FzIeN7jcireoP+?=
 =?us-ascii?Q?GLrXwzlDoHDsZT2IdvpHNoJOaaVH0+9r7dcYUu+tsra2KNDst9eIbqj6RtT/?=
 =?us-ascii?Q?7Flmzg343ifplObPEcW2wWWPxTdRsn3241LAuT05B4xOGDTlSmbzfX5K97iD?=
 =?us-ascii?Q?61fqMgeDxTBh4LdVuJJpQnMY3o7FgflRESb0C6VUu+iNcsnyck/1PE47a1O/?=
 =?us-ascii?Q?PV5UMjylG/NYN9BywHZ9Q5wXAXJSDdl47pXQ0iQMRxz9GXOKW2BnuDQhKB61?=
 =?us-ascii?Q?wDqanjwc9oQ2tsdOFwGFYG5FbF0Ty+9m5aVgvxPcvfpKTeDvdhEMtXBMoG2+?=
 =?us-ascii?Q?4KbNJpVpDsDbXwsNzxrWm/CGz/ibJI05w9xcoLcK/OypfFzAMjhVoM0DQE6j?=
 =?us-ascii?Q?QmKY3FX54xUnD8Uz3E1AsjsFQttsuwrdKXGRpwZQ7/ju02UmsZIocLYcatqc?=
 =?us-ascii?Q?kU5NOuRcF1kdYlW6TUIxU9R+lCH4tln0kVjwq6UfXRAMt6f/NLheNRxYObX/?=
 =?us-ascii?Q?U+DGOguH+ltv9IB/JZsC2dSj29+sqhYtqfju3ARztSY6YSsFK9OjNY/dlKKG?=
 =?us-ascii?Q?0lh0/rARLQ47NwVH83cL11tYoKGYEq1iElel5sn5b7jx3x5MRM9oPvrydbD1?=
 =?us-ascii?Q?TZZnfEXweuckg+FHJZg0LJzw2TDgI1vX/jSlSQQ6YiOuRy+bXSs0M73uY6LR?=
 =?us-ascii?Q?nDmlGM14QsHrXQC2/Em/Cx184JxjzBJf5KCB+vLpp9W7gFe5oN8GK6Q+Va70?=
 =?us-ascii?Q?HFvIbx+gQj/n2YGeNAtraVNDvoh26HKacW5aadFI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d78901e7-12d0-42c8-6332-08dc69862ba5
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:26:56.0458 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gvLG77EgWKNsQupKLp5SoJMCpFthEQCqXQYwbnwiLPXyHsQKoilA8zVkfrUrF4ISuX2HqiPOfOi0pDcorzUl/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7653
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


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

On Tue, Apr 30, 2024 at 01:10:13PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PORT_ALPM_LFPS_CTL register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 3 ++-
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index e88f326b78d6..664ffda6a86d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1798,7 +1798,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
>  			       PORT_ALPM_CTL_SILENCE_PERIOD(
>  				       psr->alpm_parameters.silence_period_sym_clocks));
>  
> -		intel_de_write(dev_priv, PORT_ALPM_LFPS_CTL(cpu_transcoder),
> +		intel_de_write(dev_priv,
> +			       PORT_ALPM_LFPS_CTL(dev_priv, cpu_transcoder),
>  			       PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
>  			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
>  				       psr->alpm_parameters.lfps_half_cycle_num_of_syms) |
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 5e52dddacf91..08c6d488e89d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -345,7 +345,7 @@
>  #define  PORT_ALPM_CTL_SILENCE_PERIOD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)
>  
>  #define _PORT_ALPM_LFPS_CTL_A					0x16fa30
> -#define PORT_ALPM_LFPS_CTL(tran)				_MMIO_TRANS2(dev_priv, tran, _PORT_ALPM_LFPS_CTL_A)
> +#define PORT_ALPM_LFPS_CTL(dev_priv, tran)				_MMIO_TRANS2(dev_priv, tran, _PORT_ALPM_LFPS_CTL_A)
>  #define  PORT_ALPM_LFPS_CTL_LFPS_START_POLARITY			REG_BIT(31)
>  #define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK		REG_GENMASK(27, 24)
>  #define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN		7
> -- 
> 2.39.2
> 
