Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B84F8A02EEA
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2025 18:27:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CA1310E9A1;
	Mon,  6 Jan 2025 17:27:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hty2n0F2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BF3210E2E4;
 Mon,  6 Jan 2025 17:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736184466; x=1767720466;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AcHuMWAnUobSODeP3FuLi6ysd7Q14RFITHw339mcNHA=;
 b=hty2n0F2LAqipsi50dIRC/brm5uSO7DhXOatywI5mKixnQHMgcOlpi/5
 uNsQDV26NEVAnwBQsEUi1P6uFubHW5dKGLbrWA1FghmIhmRCTCX2bAJRa
 Lbmf5xejxrzAkTsp2uY5VRRQhn6TeqwGH2679dfzVfRyzYazdf1S5FUcv
 t3aV8yBSkVA5XZHrQ4HXR4fIUUe2C4qXJgA10LjbfrUjwd2WvVWBcUyR0
 tkzaCnd83t0ZaX56KKgk4see/Ma1j5vu1wxcU4Cs0qHyHLfhWJy2BUsSC
 rJV7MjoG6H/AjpmiYDY8rUCJ8BBdvszkfoVnEgQ2tqvXw23OQ7+oIvqDJ w==;
X-CSE-ConnectionGUID: HkEj/QltSCSDBWBsdCF6fg==
X-CSE-MsgGUID: 0ewNoyyeQ7uAv4lbsZ63JA==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="53758282"
X-IronPort-AV: E=Sophos;i="6.12,293,1728975600"; d="scan'208";a="53758282"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 09:27:46 -0800
X-CSE-ConnectionGUID: +dXfACG/RAaK1dGT1+KCNQ==
X-CSE-MsgGUID: Cb8+Nv9fRQiTTd8rYfGvDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102997773"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jan 2025 09:27:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 6 Jan 2025 09:27:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 6 Jan 2025 09:27:44 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 6 Jan 2025 09:27:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gvfyUBYvB85p7NzPjgvaNjdYSgt0l1z2sEG8fplkYi41+YRoFma+7Qd46SOaDWbkSonM3l7keiBocH38v5nOL66soQGZTBW0y3RkLXXpPBQ4nfmtkIxhPAfnqaBfR2KStCHTw3ynOgQiBgrtEeB9LlLIUmpm3hZSB47EZknawJW0jiY5ReWaMZrWzCfTDJM8BlmIg2UGX1lJpkLaty+87nlArkOB6w16hO6LRi7H9U/Bv53vZkwGFEvOes1gwKVr/5WzfEJ/FCRiPHxCzbe+32qj7XQNslMrYYKuImwN3r7KJ9MBW2HhrzPkAGuh81tc2iUE8zyzCzVC3WLZENGnmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nd6zHOfofEO/fzuTofdn8n87oPjhagJCgIIqyUSH0Rc=;
 b=Aj6we0hNVnB25CVyC4w6ByuFOeqHYKDjr3wC37NPhQGJNK2BpOA9iXmE2DwrMVN9hnV+qdUKRhdNmPl3RNlV329DBRUFLzZIgGM2+mYb/e4nA/+vERLUu31HNgWCQskTEY1IJKVJHyk7zv9GPHjIY7542R+v0tU/e4AdAG2zr+CRNrrE/epNVXg5w83/8YikuThHN+hr37xKvVd32f68FY7KZmL1dZ1Aeg6QzV/JnHYpkNy8qsJHQ6VwPfx4X4W7Uje9a/iENs+qDdi0VJqwZyN1ou9/q5guf74ntRaoG0tycK+Naq9t9VAElT/d7po8K9eEh8Q+zUJUgqi7w1jxrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB7049.namprd11.prod.outlook.com (2603:10b6:510:20c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.16; Mon, 6 Jan
 2025 17:27:37 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8314.015; Mon, 6 Jan 2025
 17:27:37 +0000
Date: Mon, 6 Jan 2025 09:27:34 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH topic/core-for-CI] Revert "vmstat: disable vmstat_work on
 vmstat_cpu_down_prep()"
Message-ID: <20250106172734.GE5725@mdroper-desk1.amr.corp.intel.com>
References: <20250106172455.1184656-1-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250106172455.1184656-1-lucas.demarchi@intel.com>
X-ClientProxiedBy: BY1P220CA0016.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:5c3::13) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB7049:EE_
X-MS-Office365-Filtering-Correlation-Id: 7de70eda-1ec8-4bee-7283-08dd2e776a2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rqF4PfaKRTZQuv9p0Dau/jMLQCuEHJte88p9THvAq95NqlPedXk8GOnX8ihQ?=
 =?us-ascii?Q?gz88gajjerHWu2tImN02DDcmNbur/jZpXcYTdXVGGd+p0bikvY7Gdr4tCiMU?=
 =?us-ascii?Q?TECRnnryLP8hMAeHqcJfBeq3U2pBc1VSnrj2WcvgHVxDmMbiqXvAo5uBw6Ti?=
 =?us-ascii?Q?3tCCElmXeZKNZuxjMLG0fOycaNyby50zuf/WCmVXIB2W7R/o8F0HgSUViW+P?=
 =?us-ascii?Q?U21ClDnPl2NiaJoAsoLbnLU149N+yRj91Enx5MKRHIGch4pRXJLuHUWciVOs?=
 =?us-ascii?Q?LJLx7sKK5H7dXyM7TTPpMwCtp2n243JhOHsV/A9SDY6TRAQ6yNYJYIi4q2Oh?=
 =?us-ascii?Q?tugzKFGQ7Qc4uVispDAaQI1QNb1ArXwugeqwepPGkhnOmqcIokcQUK1hUK0C?=
 =?us-ascii?Q?dbe4g5NuUFXZ7qtH9m300oXxFn1p5Kkx2tqh4eU2mG/TpMt6jJE+Ywb3D9XK?=
 =?us-ascii?Q?EempLrvlGmjy7CH6Sz3fXCk2yrkQ7CFjrjFh5tkoQmR//v5jbTt6DOPxZ+FW?=
 =?us-ascii?Q?12Yt4lmcnRw0zHOa5R/4NSmRbHtr4Q3AfwnyYJMUbRci8TWmHn3A8l0v6E29?=
 =?us-ascii?Q?3a91pOyV7xsL7gi42ZlaeH8Q6THp4Y00QJD3Amk3y+ClmjWncIEi9GnIhU2R?=
 =?us-ascii?Q?SCvMPhFLNBz/fhp3mCE+2uE13kXTYF0Oyi0sMcNmE6SHzrojSAYpd+n4Wd75?=
 =?us-ascii?Q?hRX1nKKbNzpXezNdOg2hmmC3Gurroyq8sNalV65hYM+Pt2LSCRxNpHn7L117?=
 =?us-ascii?Q?jEf486IjZL9gbSDn9DipCMQo1solO5k5q5p9cSVw5V0OcCMD2iklU85kTeRF?=
 =?us-ascii?Q?C4ReWD7ypYpkA1l/OEcCHW7IrTFv56v8BOKqZ40TJNThmrAYsx/YmCz+yUNk?=
 =?us-ascii?Q?iI1b1/8Dq7JOCp66uk+N/4lw3vK+EC5uCkXDgkALpTHYNw3AOKM0hRj/w9gO?=
 =?us-ascii?Q?x/kjCXGjbs9rB7QRVawTenDvafjuAcS0W1NlGRoTttquA5sVkxDJQagoWpIB?=
 =?us-ascii?Q?pnZRvbWkPDkYBypMbh+/ELzi456TyFFiwAmbe4gIyAI2DsRavia9CokzUaL2?=
 =?us-ascii?Q?OdPbuXiGJOpBNgY3Wh9Gb3NnKi1DFNgGU/ZfrZELq1QYPB6J4jwRZr7NEz3b?=
 =?us-ascii?Q?v21Jf9ihJJ/FaCKkaZKDexcWpCezJk2/malHH/eot67jVSwFsmwgi58qjQ3Y?=
 =?us-ascii?Q?deOjGa+P6KXG3nGgojD92bjXLZpsFl106TAY+AEqH+kgVQl3cFAEdeE/U76I?=
 =?us-ascii?Q?rrln82QYfaSMbs2hUGlO0MWg6SJwTCTcvaTZKx0PkYGejX6oMiOe+JEbRzcL?=
 =?us-ascii?Q?BYQNinhmBQ+9OEE/YrnrI6GiIZ6JbiJrMpLd9H2i4Fxb8w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EJ7q79uJv81NbjBKixfOzKAIrF0mBs4A15adBvlve0PDvRou+BHrcXJ86ykp?=
 =?us-ascii?Q?l7In/rR2ZoFfrZrHAkknH9QJRK9oScTMtOUSgbSwQyuZtHTq8qmHL2yZVILZ?=
 =?us-ascii?Q?JfMVaHxV6AkKWtoNhARcME91oJscj00tvy61vUlDrDai/cbbfkgtKs21wGOV?=
 =?us-ascii?Q?PgC8voYXeXJEnqXG25p3mvuMfZ73006iXOsa6jZ9ZAa7ThFD4Br9jNSr8+YG?=
 =?us-ascii?Q?902BxDPPYhxf1fzG5gygLWWFiO1kzx9mSvBIuHtWWo5gZEHCeHYaeNE4jkRI?=
 =?us-ascii?Q?9YWDikO+HGLlWTjqu6zBux2Hc8G95XHa9SVT8p6q1msM7RXoLh3RZoFs+KrJ?=
 =?us-ascii?Q?xF38d/X9BhHhXVPu9KE96Lw+8WXSNZcnzV43RHZogifIZsyZkHcLWFhv9z7g?=
 =?us-ascii?Q?cvhIGq3oseEnqwzj2P2eDVcB2SA7D61m5Wm4/B79o2l0U0Z5mipamLv7Zdsl?=
 =?us-ascii?Q?/e2OPMX5IeqvzXiR6mq/23KTB5td3oB8wIqftTtURbohpNDsalxpRAER0hGi?=
 =?us-ascii?Q?gcL3xLng/VRLQDT2kxETkZgiWj4DerEuZPlO+IKN4DE3JFj4i1d0zupbs2Zr?=
 =?us-ascii?Q?U1qANyQ4xN5jySM2tFZiWYFDk27kGqpouBMVMxjw7E/U4fBnylT17bIxe+7t?=
 =?us-ascii?Q?cPY+IP+O/eA7d6AvGV+RYBzDzJZdRNPJ+7vwYcLoYJ6y4d6Mr2XjBSA5wYIJ?=
 =?us-ascii?Q?cPKt0kEWGM3Fp6BRLMIhrovzmMbQ+Dhvo+oSez5kvIOyxnsL2T+HuXWRp6L5?=
 =?us-ascii?Q?olM4MF8jfr5VVGsN5gC3sRiDFP0EfGu6nIfifRqZfcCH1xifekkiUFHXKaPu?=
 =?us-ascii?Q?CvPiyNFUx5s5EwuqCX+y9MBjkRn2UOj0O3HYdE/Jl2YMZpib4OJUGgLDDCe+?=
 =?us-ascii?Q?N5IiBM+CT11bFu8btv2ylAJeNuy4nE/BsMdkycyjwSuL1ZUdZ0HaC1danWny?=
 =?us-ascii?Q?F3l0755DY1BMAnjpRz/W4mu9sCyW30z1JsVVXfgB7R5nx58K26x1K3ge/77/?=
 =?us-ascii?Q?0felSj7imoxG6t0fwcudo5PLG6YJk+yvOa49CQ3O5aLNj8TDfiTAWm8VGbnz?=
 =?us-ascii?Q?5evLr6w/Yq/jXGMiffK8dk3IFk3YIeRdu1IMXLtIQToYChW0synZvMQ1yOT6?=
 =?us-ascii?Q?R5qJ2BFpmxxQocB0246zKz+fvWMZ0/7KynDps9Qova8Xp1sYEyAf7ri0luxi?=
 =?us-ascii?Q?ciC/WIuddkILKlCGRotUZE5Zo60J8SQHvbcLXh6R0L6XMqOzDpynON6vdlzD?=
 =?us-ascii?Q?hHJaKKCvCJZtkIPQfrQx7uGwnBbAhmIjjE1a/EMNte8170eGBMBvaTKDAcBa?=
 =?us-ascii?Q?883+ghKUifrwQxui0s/ydkfidRpUnt22Y5bk9gmkwuE+XJnMxVNvMB6HvjL3?=
 =?us-ascii?Q?Z+lh31uzSN1iM2aZeBeInn5zt+vkTV4GDKpFx+KH+lzcrIiJvcNVTyyk6L+j?=
 =?us-ascii?Q?QLF00BU4yNcyCYmEfzr8jWeZKx4MFtgbk4P4AejEUdR+TEs+35DjUbQwqxko?=
 =?us-ascii?Q?1rVmDqJlNl5fZNrWEZ3yFtEZmWch4vtSzyTdgHeSdZtegvzAxMopf8cJlSfG?=
 =?us-ascii?Q?kuu/CbVYdKOllhppa0COyZ4/W7vdqbmIIrJFO2QPH4o2kOrXlBH7f9rELO3B?=
 =?us-ascii?Q?ug=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7de70eda-1ec8-4bee-7283-08dd2e776a2e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2025 17:27:37.5149 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eV/HkDaxXuGaq5H6DuLdlg3kN1u/xEKdL98ouTcHGYMFR2qCwlX/UIHd9QGcXdzya/zJW2JJCoS0lcq97rWEScJ8lEIp7ji4jBwF4L/jE6E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7049
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

On Mon, Jan 06, 2025 at 09:24:55AM -0800, Lucas De Marchi wrote:
> This reverts commit adcfb264c3ed51fbbf5068ddf10d309a63683868.
> 
> It completely tanks the CI and nothing gets tested. This is being either
> reverted upstream or the fix will conflict with the revert and we will
> find out when it does.
> 
> Link: https://lore.kernel.org/all/g4sefofdrwu72ijhse7k57wuvrwhvn2eoqmc4jdoepkcgs7h5n@hmuhkwnye6pe/#t
> References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13464
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Acked-by: Matt Roper <matthew.d.roper@intel.com>

for putting this in the CI branch until a real fix/revert arrives from
upstream.


Matt

> ---
>  mm/vmstat.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/mm/vmstat.c b/mm/vmstat.c
> index 0889b75cef149..4d016314a56c9 100644
> --- a/mm/vmstat.c
> +++ b/mm/vmstat.c
> @@ -2148,14 +2148,13 @@ static int vmstat_cpu_online(unsigned int cpu)
>  	if (!node_state(cpu_to_node(cpu), N_CPU)) {
>  		node_set_state(cpu_to_node(cpu), N_CPU);
>  	}
> -	enable_delayed_work(&per_cpu(vmstat_work, cpu));
>  
>  	return 0;
>  }
>  
>  static int vmstat_cpu_down_prep(unsigned int cpu)
>  {
> -	disable_delayed_work_sync(&per_cpu(vmstat_work, cpu));
> +	cancel_delayed_work_sync(&per_cpu(vmstat_work, cpu));
>  	return 0;
>  }
>  
> -- 
> 2.47.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
