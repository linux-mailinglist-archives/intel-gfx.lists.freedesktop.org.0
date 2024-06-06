Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A14198FF1CD
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:12:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 241F710E9FA;
	Thu,  6 Jun 2024 16:12:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lruZKjvZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 435B389D7F
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690344; x=1749226344;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zGPJCj3/4OtXDTHcNSbvWbZeC+5w7+2Ir4W6e5ySp0I=;
 b=lruZKjvZ2C65n7TFxw3vIkVKlYTNpRdGMmb5GVVupgNa3ZZg4g6CNYFQ
 bjnhpQySAQckbN4zPlhBdEi7qPFXVc0NZ/esWDrbFKAnQxxdm/HdS4y+C
 gMY077T/QFMFfjdSmXqAC0lYkNYFYxGHjzHVvqkmKoFlBobQ3b0DHBFA/
 7PwZf+FfOD77acJEuXiRmtKmbJqQXNlv9SWUoXS2+JTHncUQS4VQL63Oh
 KYn8pwn38dMHy67ZxNL557MN2vbcbz4CmMlUytQMR4VHyurYmQre744tE
 LPv0Z8395djd+GrvyMusQwzHKO6jgYSuXTkS+4c63Y9h3OcffYlgXOk21 g==;
X-CSE-ConnectionGUID: /N7nIUS7QL2Tsjo1qvePvQ==
X-CSE-MsgGUID: NwuEyfvATGqo9TXTxcOGrw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14525834"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14525834"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:12:24 -0700
X-CSE-ConnectionGUID: ZFnNi3NBSMmD6pIe+iucUg==
X-CSE-MsgGUID: 3ZIv8h87S4a7AZZ2wbhngg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38696517"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:12:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:12:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:12:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:12:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JLNEo0BtEp4Q4TzXspFdEo7xp6bAduFsWIS8Yq731exQmWwxXy2tb3/xXHqxhobjL0pUj3Z1XpeEt3Efn/qsKuqkVn0idV7DamQvU33E+rghRY6XCpe+32A+GT+TwuuLxCWns/NR2Nvx5SlKflgNgLDCYHhebXlYiU9DjLRO7CAvbZh+MgHXAPE87ZM64/CUsZs8GwCId3r6yV6+jB/aWweKpRRhBrWu5mpPXIoHNdctB0sgX/B7PM5+WVZMcUICITgXZjwBKch01iPgQVdmESfL5iTn4MJRatkid3lCI5Ia2zmtTJMfBPKPEcY8/AueEix5oYv4NGHNhI/aLkCw2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WCv86P/mRl/Cimnu+yGewRntWERQjXl0nRibpHpB8Q4=;
 b=GzOvhCrS2jCTExkAm/TGOeyKjsJN9nTlFsLJoRnA4CJIkb4i77ERWN7Of+BFrXUMr43YaiplCIsv0EqZbanhcLdRYl2gGCLplUAYksAQN3yDkCWh0LeOwnSSw5SQy82ngPYkMYK7a6ZT8GgsLVT2vHrLMTIvfvwsxK+TD6eTC38ygRjgOKwd82VKbdSoOg4VhvBznM7a95Q1Ml0a5VY7jFUYA45OinxBQYAUaFn5KC1s5kL0yr7r6iYjX3AlSH0WdtdnR6R5y0vKnpWLnH+s1H7KueXfjkXeI/9QljJTOIIYVq3Co40Kgx2fwCjC8dGYUgBK2bm/853kXf4eK+khEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6514.namprd11.prod.outlook.com (2603:10b6:208:3a2::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Thu, 6 Jun
 2024 16:12:19 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:12:18 +0000
Date: Thu, 6 Jun 2024 12:12:15 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 51/65] drm/i915: pass dev_priv explicitly to PIPE_DATA_N1
Message-ID: <ZmHf35sMC6RSKaXE@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <80759c6efdfdb59c4bd624af85b9db38ebe06f65.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <80759c6efdfdb59c4bd624af85b9db38ebe06f65.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0189.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::14) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6514:EE_
X-MS-Office365-Filtering-Correlation-Id: 04f84819-8575-4455-1b79-08dc8643702f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Jr3Hd8t8q/rygNEJafuVm1fVpI1kNS303abEF93C13dXVDGjz6CHp3GKxw2p?=
 =?us-ascii?Q?dYlEJjTOlMZzSlWGEps/iv9kQTl9UAQbY6ZcdmX5aR8b7pY9r3+gB2KGusTo?=
 =?us-ascii?Q?eN+byrGdZ6GYeQFeuvecM9LdGOsZFqMQ40vOsvsyrnWZWZPfFZ5NYpn0WNBD?=
 =?us-ascii?Q?xveOiLNk3fyPeycI4o4TiVXTDHSDwfw6GxDG4lT/0gnYid3/aEO2aXPX3h11?=
 =?us-ascii?Q?ACIkqPUV/yik2VdPLum1J4IDJuvXEby0cZoAY7eYInmSkrz/QpgSR6nlSIVR?=
 =?us-ascii?Q?O/pjVBGsfZWkDwZEyfVHZZbY6OrY9ORY+4i8nejOPAVsW7ePgpvv+MASj1iO?=
 =?us-ascii?Q?cqUPv3xJHrHFrOGmOiS61yrTeMzChXAyaV1PDthejs1t2hGnrmGW1Yv7YuUM?=
 =?us-ascii?Q?GpZQv72dFAbBn8t7TN5DtJyqXuR+yhB+ZBeElrWsLtjIobi5Mm1mzmlqqdU7?=
 =?us-ascii?Q?JvsESUWI9wdmU0mU0+TPpcBZcBFtUHbfzs77b+U+dPBuj0zQHHi1C6AKRmKU?=
 =?us-ascii?Q?wgoONS1pxaI2Sb8BNmG53hBfi+R08whtSyf0zYi9WE59cBp13BbrA3UdR0zA?=
 =?us-ascii?Q?5WF/gA0CmQ6RPLwxPLilhTBmQzUulGMnFD9VGmHGgJUJxS5pFiXwPlQSKvU0?=
 =?us-ascii?Q?4AgW+g5ArxefcLd+lOgB9Ts0ZY5QlCDq4rP78i9Q56hFINQ8kVcRupGDh84l?=
 =?us-ascii?Q?0+5Y1e/KojzoVZPO1VkJyG2xft+r5BC8WVbVqJf0t0lmMs3WTfcPWUUhhiBa?=
 =?us-ascii?Q?86a8C4hwi8aEi0xgqmD0dUqXaN0LrD0ZHnZxcC2LOwCt9oCBHo3Rt8Mhp31A?=
 =?us-ascii?Q?uiSIyxvC3suBNE0HmU7rGm5MYy5tmf7ochhisuhWNri+lWdvPamaBCkFuyc6?=
 =?us-ascii?Q?Xtzj47uY9gU6VzsAACfpQoj7xJfyTQKD9q3kYhDAooEshoQbKGHuM2KedjIy?=
 =?us-ascii?Q?y1gUQfpLmxAM+vA276I2RXSxuyNMEhCtF1LMWacMzKOSqmFRh58dRI4omrxQ?=
 =?us-ascii?Q?Fln8YsiYFP+wr9+q/JAb7H0EnvLoexbV9iAdLT3iMYrMFPbvP0XsD3WOg1Sp?=
 =?us-ascii?Q?oCPjOSUxA1n7nD0jmFW48PUUy1gLowzEWarZUTAs1zc1VIXG4hURyxFFkEvO?=
 =?us-ascii?Q?Il3XFZjflUM2NUmpZA0IxXXwrqjzFFSITtcIQh5Swqvw7EPoRORuTI4Wyyz/?=
 =?us-ascii?Q?XItG8j5KAE+5mmFF7blebytVIgkIsdhA4D4ok/7X5eD/8UjC/0lp3XyUFdG4?=
 =?us-ascii?Q?qd/VaaImgZpuQ/6Hd5GXXEx5KftxyTAgO8+lFbaRAVvAo/IXJeF2r77ZLNMM?=
 =?us-ascii?Q?kFiEKh0wiXCjgvwBSURRI0WD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xTd7jBZyF7rKvsctkqAb0IFyCPWwWYWQdddt3MLXlABolR4wVHBEfmBgrpJo?=
 =?us-ascii?Q?WIp23/kwTY6/3Qy4ELCKFE3uSIMHApnLTTwbH01H30ACQICAmNN1oQdrKEtD?=
 =?us-ascii?Q?B7rWRkF2sah1VbQrjk12Hx2BlJTnuVq+bxwH6aLVGFso22Tlm7DkZ6PWHHE4?=
 =?us-ascii?Q?p9z06WFWNeuKy22VF2wHt0vFUwdQNd3wXd3MRif0OTotWrSiCwErIbKENXQI?=
 =?us-ascii?Q?pPpq6jEt4bw0z/hymqGm2VPj+Uvrw6uleDiqef632RtwK5bvvgL9Yz+vnxJ1?=
 =?us-ascii?Q?sZPjq9fhpO2zBPeVpLHAnyCxjjNVjKFkR9eyL69IlLR26uHsj+yfGAoVtzXg?=
 =?us-ascii?Q?XRHV5F18FC6tSpGGZ9QUxecrBCZR6m9mHpz8bziu845Wfexbbvibw/HBpheE?=
 =?us-ascii?Q?2cHHGirQMXqa2unaoy1/Oc1ASRuwq8HI/8wynD8o+HKnldUl2ASy90ptsYSD?=
 =?us-ascii?Q?bOG4F+RwWzQorIljiWtR4MCVTRy6qLAJtFNFWSTDobL8622LilZxx9bzf/AD?=
 =?us-ascii?Q?uMbFFtagr4/GqYRe+zBZjbgtRXFBz5mHjy8cgULKf7mvEdDDreb13cIVMzTc?=
 =?us-ascii?Q?zxQDCviShCgYu/mxHZEbZ35KS2A5N35du7WvkfDoqzoFVEPy6OcfdxhV/do+?=
 =?us-ascii?Q?Nqr9QgrhtH7oDOPDDD1NsgCWzbn6wQygQlnlzb0x6LR7GDorf1RP4vMM4Rgv?=
 =?us-ascii?Q?1bceRRtl4a20stmWZ2YwGrDNHCVrqBa4atP9uTm6sFMuoQCEYWJOuzySvV2z?=
 =?us-ascii?Q?5OpdxDQ/AzGLMaLH4S9wHzALiaiUoJAneYOZA2OZQc6ozKRpvuBviGY2aOUL?=
 =?us-ascii?Q?BzgNLNfgj/d6MOuFZ0fId1wAIIxduzQUlboWmX3zy3eiQ/B3GlN364w3sHzY?=
 =?us-ascii?Q?+RasrlESpR8muUeHIGzWzT4hJI65mOlE8fQ6/fqR3PhcGpdqafe3hdzCqU81?=
 =?us-ascii?Q?m+BSrb/m1OfzsPw8BEcwJyhbVKcJHVD9GBpOg/nWqXlaOnRFkA0R5UJ8t7Ue?=
 =?us-ascii?Q?tRBkDcVaijfJF5RqQvv/q+mB+OPnmc5WhbXQ8yYZ0s+RNLD5i4jTjxccZAEo?=
 =?us-ascii?Q?IHuZrNy6Ba4FdjUzbWkAhwbVPx7gpLNIBP51CCzLx5puuoOinCkrZ917MBAn?=
 =?us-ascii?Q?haABjX2UTgtohndXs64WZyQgtcH6oc7ptPeJSEfSecUGZK+2lkR+82VhobXB?=
 =?us-ascii?Q?PcuAuXqXwLf4o3hWDmicK8OG6RD4ahfmgilbvyEA5N3I7GAmzrvp+HyVpc8W?=
 =?us-ascii?Q?c5Ig8IByIkzLPOxqkg8XDbhFVgs+I63sDPaPDCPyms47JINCxWRMTj20bVfR?=
 =?us-ascii?Q?2ohhMPuU4li2nmS2KOX3/ZUAHxnDWc4j2+RXgPh87JF9MxyYgsj7wUjjTcjm?=
 =?us-ascii?Q?JpXQM62zzHVGnSF2CBiW62lxJ/iaTexkTZWysBg0uA8oM3NaCLd3yk7aV5up?=
 =?us-ascii?Q?k6ka4Vc8R79u7UZp0TzCmYTNqOmLi8OCWH8qISQ+Dl2a4T23x2DaZtTw+WfY?=
 =?us-ascii?Q?YeYPdwDSRj9Iwml8iuVUKbHOBnT3I5nT5AvwyJdlsXVMryKEpnvQeKFRX0C2?=
 =?us-ascii?Q?TlmsftayZO1vAg8b5x700Hs8SUDCOjjXbnCaHhlG?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04f84819-8575-4455-1b79-08dc8643702f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:12:18.4752 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PRr+fQIkuKHSD4qvh99yDrgoMhvr07QyurNVaVv4sweirBLBbHB/ZnuvYB82LoN2wCGWtouegx10rzS5TFTljQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6514
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

On Tue, Jun 04, 2024 at 06:26:09PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_DATA_N1 register macro.


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  drivers/gpu/drm/i915/gvt/display.c           | 4 ++--
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
>  4 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 7fd65e3b018d..5eb4ad261c21 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2642,7 +2642,7 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
>  	if (DISPLAY_VER(dev_priv) >= 5)
>  		intel_set_m_n(dev_priv, m_n,
>  			      PIPE_DATA_M1(dev_priv, transcoder),
> -			      PIPE_DATA_N1(transcoder),
> +			      PIPE_DATA_N1(dev_priv, transcoder),
>  			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
>  	else
>  		intel_set_m_n(dev_priv, m_n,
> @@ -3339,7 +3339,7 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
>  	if (DISPLAY_VER(dev_priv) >= 5)
>  		intel_get_m_n(dev_priv, m_n,
>  			      PIPE_DATA_M1(dev_priv, transcoder),
> -			      PIPE_DATA_N1(transcoder),
> +			      PIPE_DATA_N1(dev_priv, transcoder),
>  			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
>  	else
>  		intel_get_m_n(dev_priv, m_n,
> diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
> index ce6f20b1dabc..5f3ee57b5982 100644
> --- a/drivers/gpu/drm/i915/gvt/display.c
> +++ b/drivers/gpu/drm/i915/gvt/display.c
> @@ -263,7 +263,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		 */
>  		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) = TU_SIZE(64);
>  		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
> -		vgpu_vreg_t(vgpu, PIPE_DATA_N1(TRANSCODER_A)) = 0x800000;
> +		vgpu_vreg_t(vgpu, PIPE_DATA_N1(dev_priv, TRANSCODER_A)) = 0x800000;
>  		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
>  		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
>  
> @@ -397,7 +397,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
>  		 */
>  		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) = TU_SIZE(64);
>  		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
> -		vgpu_vreg_t(vgpu, PIPE_DATA_N1(TRANSCODER_A)) = 0x800000;
> +		vgpu_vreg_t(vgpu, PIPE_DATA_N1(dev_priv, TRANSCODER_A)) = 0x800000;
>  		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
>  		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 96bfa5620989..70c5fe687254 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2380,7 +2380,7 @@
>  #define _PIPEB_LINK_N2		0x6104c
>  
>  #define PIPE_DATA_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M1)
> -#define PIPE_DATA_N1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N1)
> +#define PIPE_DATA_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N1)
>  #define PIPE_DATA_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
>  #define PIPE_DATA_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
>  #define PIPE_LINK_M1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 977d695fbdff..b9ad4eec4740 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -267,7 +267,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_A));
> -	MMIO_D(PIPE_DATA_N1(TRANSCODER_A));
> +	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_M2(TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_N2(TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_M1(TRANSCODER_A));
> @@ -275,7 +275,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
> -	MMIO_D(PIPE_DATA_N1(TRANSCODER_B));
> +	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_M2(TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_N2(TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_M1(TRANSCODER_B));
> @@ -283,7 +283,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
> -	MMIO_D(PIPE_DATA_N1(TRANSCODER_C));
> +	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_M2(TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_N2(TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_M1(TRANSCODER_C));
> @@ -291,7 +291,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_LINK_M2(TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(PIPE_DATA_N1(TRANSCODER_EDP));
> +	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_M2(TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_N2(TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_M1(TRANSCODER_EDP));
> -- 
> 2.39.2
> 
