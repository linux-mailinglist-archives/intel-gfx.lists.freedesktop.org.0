Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCEC9BF3EB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 18:07:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66EE710E196;
	Wed,  6 Nov 2024 17:07:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rt8ykzJ5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEF1910E196;
 Wed,  6 Nov 2024 17:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730912823; x=1762448823;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ymrTYA2VH9k+Sj3sqEsY9ODz7e0GW/unvmLxZ7NVgwA=;
 b=Rt8ykzJ5dzwxs9r7cGCfWUakEQ5hRTUB8DmpPcQ1nDB7VlRDwvKHGZxq
 Qk4za2XxyNWtfc5cwhrG23kkWwGW1MP1euwTx2ktjIDD6XUVE72Wp81nS
 W+9EcGLKQhJQJK72nuDOvFt3nbtKddMPA7FpN4Yyw3U7YFI/eG+4xVB3r
 JiIIAbv7k+WQxIhJCQfJQEBuBVTEJQxFYELvWL+bwD8pux6sHo6ZtnvI7
 9TpOY+Qrq5SBUZfNUr+i1G3eIJnfG3NvpUq12MQqYoByzmMHLIS3rH69I
 px7oqsrBhpDT8je9J/iZ2MLtXSSIh3nnHtsu4JhpM2AshGg9Ar7mLUSkH w==;
X-CSE-ConnectionGUID: bYmXkezeRNurJHBRu8/CZQ==
X-CSE-MsgGUID: fykG0sBSSrqtb24dsg6tXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="18348547"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="18348547"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 09:06:54 -0800
X-CSE-ConnectionGUID: DryXPl0CTAWTN2SFYwk4tQ==
X-CSE-MsgGUID: kVd8C4T0R0aU6v+QJYPf+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="89436021"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 09:04:26 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 09:04:25 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 09:04:25 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 09:04:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xxvy6kKlVyyIpPtllk60ZSSGfQ4m1nmK2aLFw3FEMmJPXsD0nHfJkveFV89ViGTS3Ov2ZmP90gQ/mN7nezkKarJD9VlHtt9EAiRTFgs+tqKWaJ0sjFlQUQDueuhNVxz2EP5hLqJlKNCW0IZbiVdz+n7U343/W7RWywvhwZPugnbTdAFueZgIteAU/WdgSwFqakiX/R8gxI5xQd8ZXJj6F9Xgf6fzVBYoeFql5O9RODu3kFZ/Kd083JJp4aUG37UKjHnq2Veavbq9KgJbpoLafbGryX3QudSENre5DEcYejz3K+uACexjqoDpDEglHXwk4xFsg9xHC4aCZZ5He2T5MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3mbwl/8nUOqbYkNJroKgPkQ/hsWPVCkXs9ncMyjcjnk=;
 b=PSilBmKB4itKrswGE8bdm0ATlHMAD++hucANBm0L1O65xgk37WoVog8vrQddyymsHvnZk/Tcf00Ua2/6NPiRIlaZ1RO6Go3tQLPKGo+Qp2Mgq6f1V1zxNpvaqSG5pn8OuuaYJuDXm1OZFBWunpDy0zm80+Y0vW9OGi51Rbc0ZFVW39s8jykjJtNBUzGrZPaFkkrKppC/QnSU8fyACdxgy/y8Ai4k6J+AjgIgqaqk39b1T+udcuZKrc8n+EJEV4MDPAjpJyx80qx2d/6zShtwrjBd7Z4vC1gwE7W3SLhh6SPEa+XQndovHYvDTkEpjP5BzDvHtdn1ZhYMELhI3QdoLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB6749.namprd11.prod.outlook.com (2603:10b6:806:267::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.20; Wed, 6 Nov
 2024 17:04:19 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 6 Nov 2024
 17:04:19 +0000
Date: Wed, 6 Nov 2024 12:04:16 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 07/15] drm/i915/display: convert HAS_IPS() to struct
 intel_display
Message-ID: <ZyuhkHHlJdYP0VMD@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <aa1279f5f04ed29b053209d49bb0137eea99119e.1730740629.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aa1279f5f04ed29b053209d49bb0137eea99119e.1730740629.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0120.namprd04.prod.outlook.com
 (2603:10b6:303:83::35) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB6749:EE_
X-MS-Office365-Filtering-Correlation-Id: 1af89eb5-e49b-4e25-dabd-08dcfe850d8d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HSn/yw9DUeHV+xpIsFVYrE91StoOSrgSk6FOxiORzLDdnjEngsshO8OCM68F?=
 =?us-ascii?Q?yw4bQwEmsBbjj2EaxcCzll8w0qNXnLFOmg23lqU03vAazOAJpqYUMcdR7GIi?=
 =?us-ascii?Q?+ixHjd/rZMas/Gro8e6wSCoDARvPPnu4EHN7Dr5vlBaKvOqfFancE/NNXDxx?=
 =?us-ascii?Q?nKeEb/r3+zxEHH6THbCmuJNeBrYF5DqNS9M0xeXvEJq2DlG4Njt/TMbkrFXr?=
 =?us-ascii?Q?eb7zQYXs/m99bubkyvsQUwo5bfj4eDbvbjLkvbr2MEQqaXhK2UokwfXnykv6?=
 =?us-ascii?Q?xcjY6RX8IDdHXynJKyUUCtQrj+z1s9w5U6Lo+HHTTDErvM3hIMMXHCB6l3Fn?=
 =?us-ascii?Q?+Y2kX32bHMJAbaQKRjxTz6ZbLf/MiOsxbf9tfDaniI3yOV0oTnSzc/cwT1YO?=
 =?us-ascii?Q?NMvERSzMnTTZ241vEqd2APkx1zr1P6l5OVnN/cmQtTAZEAUa6/hNLkjkqbSI?=
 =?us-ascii?Q?zx1X/8vVPFeBUsijfdq1t4YZmYhoqE7j6wgby3StSFQ8HxnMFYQHo/azr8R5?=
 =?us-ascii?Q?rC2cXjZaxhm82yYnwAXCNRYncHN/ZZgJRNVNZOSKEshQqeyfcHUNjGXDmhvN?=
 =?us-ascii?Q?U8QvNv/E3kKAKVUv94lngDNfy0sGIGhBMJTbtsJLfR89jHl5w3eNk5ylt/hv?=
 =?us-ascii?Q?NGdnpJJ57YJCQ7/v0pRNlhzpuB4uEOFQVdivJ6t//8iY7B2a7R2jRl6PmMn9?=
 =?us-ascii?Q?NZfScanXIyG3XDqbK0VxNnQ+uf6DnxiCRCX08zLv0YD1uJY/IYKdWxBdjc8q?=
 =?us-ascii?Q?sLbbSMSP8unN1DSoTEsaSbzY/9odGTJ0DtidKpz1tuzpT/ntahqChwr9zvge?=
 =?us-ascii?Q?50grGBijcxOjU05o3QuLdUDAPfXSXAxHnOxklKs5Lm9rKS5Xxu1hZ5atkG/D?=
 =?us-ascii?Q?Yl9b7IMDlQNnbsmEG/i7Yw2zD1CZg/DnSaheze0BeKAB+Mctrm/wyQ2uGmz7?=
 =?us-ascii?Q?FLZIfiJL8RkeOSmBnc2BfD7JAEGaD0t74Dv5Soei5/qnCFRkfexRIgdJDd30?=
 =?us-ascii?Q?ckUDrQEByD8/EJ5vxcSay47aKg4FqLS1r5/kJPw8AKLYS8bX+OtEHlh2D4Vt?=
 =?us-ascii?Q?DcUcviYwWrk4XzUNYJmEOlKXrrXKxLVd98YvuCYylZbYv1fGmfnhUHIN0Loe?=
 =?us-ascii?Q?b+eKDHDSA3bmGY57a1gEcAd0AD00QNwRTH1xi4T42AGEvBrji8it8GwQb9F0?=
 =?us-ascii?Q?nHbA0EJo/97rTB/tS23IU/Aeejnq+eTYzVmK0JXErI2fjGozlNbFYCpp3+1N?=
 =?us-ascii?Q?NGY/abAnSBKEGlSyjLJwosO2y/iOFhNnQI1pD5beajI65rIbvz/afQfQno/B?=
 =?us-ascii?Q?7mH7Zmyr+JeshI++wP9Z3G8i?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w20O6kDJkrg5B2GkVDCuDJzXL8piiPiMeV8m/qSfC3Omg4OAIxUxJ5z7qNsk?=
 =?us-ascii?Q?KcaDGItkdOC01PrnueG6BppaF98uy/Tph0NSyI33JeQaq8b3h5kCrcBd8KBM?=
 =?us-ascii?Q?IZPDpA7VSIqIsvt1W3JRwHubJ9pQ3+RbGvtcJMga8gKcyFacmswQFiGOF7Bd?=
 =?us-ascii?Q?oTRHnnXQVMKpeXakIRej4MPJltKQ3cm55TlaZO1Vg1dV+EnMRTAXu5ONCgz/?=
 =?us-ascii?Q?xMopyaAbe2myi0fm4OTBgx9lsafx9fSRCWZ24SCB9hfDWpxMuBbQmdXdpxTg?=
 =?us-ascii?Q?vcXKywSVy7RGp7xqKN0MffMjk30234Op/Oaffe/f/JopovLyw2EuGHaSElA3?=
 =?us-ascii?Q?WPavc6ObCExJnsDgOsgfysFctmq2GRkrcsPINhKqDgU2oxSkNvRwKaDVxxsv?=
 =?us-ascii?Q?7sMNUo0IHk2uqIAaRk5xT7bMwtbkrDeo/LzLh7nvJdiH3VuOHB9JV2oJQWK6?=
 =?us-ascii?Q?AuQHnY5+Ajo6k0flopq5O3vknYEFJsvuit7umKpO9Wik60FFv2u+n5ZZv+wb?=
 =?us-ascii?Q?qudZ379OJL/Z1xmG9Q+xBuGEkDVvhOh/GEwkGEzlbAVeHCtUrZcnxdQXEJwn?=
 =?us-ascii?Q?0+OVD/5yly4Le//keib54xzvqglWOgLdAAw93PfDuLxZPrRLuKR2YMDpZEAd?=
 =?us-ascii?Q?pEIu8EjlwE328yoP3qKeJwKvYgR2HfUoXjIKFXvsmB7LjLBtOE1KEwxY1s/J?=
 =?us-ascii?Q?1GHMXhyZik4+89C9UvXj21ZbibH7qsd6DpH1WOjbHFct4zQZFoHxCjimz3Yj?=
 =?us-ascii?Q?ebGTfqGXDgifE/maBCQjAkW7WfkWmQM9pTwLKwK+LgZ5bXo+sCITW5qnA+i+?=
 =?us-ascii?Q?W0C8LeItbZqkegFuMhnfbUvBmaA/QLqQ+fE6TZH0qk1epiZ5OzVKzIHm4XsN?=
 =?us-ascii?Q?fvV+nGDRn4XeVjMjkJ5EIxKHWfSIsok9yQZ6AKJj3ECxgfEo1Zuk+Ob3WQ6v?=
 =?us-ascii?Q?l9e8Q9DJ2+PCrU1bQF8gGZJSUQfLRAJiVuwOnkTcnI0DXzbOA2OXrvJqHrUn?=
 =?us-ascii?Q?bULsgN9VtxGb5N+WtxjHuqcSQ1bLjAzI4YA8zupXIOLr4FdNjgnM6hlMJ2lU?=
 =?us-ascii?Q?IO2iRstU09yhmm1ZZKhSZmG4r39s5hNfYT26HfM5vUeEZOZEfRvM9wpk1N9a?=
 =?us-ascii?Q?sJZ8BtHkzU74kz1Cc7XhjgTLq/ssZL8RBjYVqxlO4v/lB8kOqIW7e5btILeU?=
 =?us-ascii?Q?9q3RMzdsVMGY2XzgRWjJ6SVHcZFxGEN0ibQ2hi0f9Y6tXI1w/40SPoOZXq6c?=
 =?us-ascii?Q?3Anha5sMCM2Nzs4OUU4lTfwHWLRvSgiD5oULGl4WOGCkK5Cyr9AG7805Ycfr?=
 =?us-ascii?Q?m49rUnH7zA1TmY9AcN2gHA43wAnLOygR4obkUA0uyzqo794H9iorcTAuEmvP?=
 =?us-ascii?Q?jnu/iRh1MiwKLqnvYjM5AjAYjp2nQSpf0QAqJq2aKg5pgf520t7eBfVvuXtl?=
 =?us-ascii?Q?d/Is9SnyoHmEmHkyoJQXNw5P54JmzhNeKP/CPa54hhCUKXz2maFqHcuYrynr?=
 =?us-ascii?Q?jGqfQC2OEHdr/zhwcKKqBJuS1fbOdBTSickpFFnx7X5spkAMsdYioSp29rMV?=
 =?us-ascii?Q?Rq+o/kztbfUYipAGKRjY+dTnHHnhLaJTHfji6Ilwyy3ev1iojUcSDNcIkQsX?=
 =?us-ascii?Q?8A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1af89eb5-e49b-4e25-dabd-08dcfe850d8d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 17:04:19.3231 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xH9Utr2Ywk541vS3fHXqVcPbZN7WbLddVizilvgnAWZiiNcJns2C8gQYok1UVPWVRxycR9WOUGwknF//tlM0xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6749
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

On Mon, Nov 04, 2024 at 07:19:21PM +0200, Jani Nikula wrote:
> Convert HAS_IPS() to struct intel_display. Do minimal drive-by
> conversions to struct intel_display in the callers while at it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/hsw_ips.c              | 4 +++-
>  drivers/gpu/drm/i915/display/intel_display.c        | 3 ++-
>  drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
>  3 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
> index 34c5d28fc866..ee815e0344e8 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -185,7 +185,9 @@ void hsw_ips_post_update(struct intel_atomic_state *state,
>  /* IPS only exists on ULT machines and is tied to pipe A. */
>  bool hsw_crtc_supports_ips(struct intel_crtc *crtc)
>  {
> -	return HAS_IPS(to_i915(crtc->base.dev)) && crtc->pipe == PIPE_A;
> +	struct intel_display *display = to_intel_display(crtc);
> +
> +	return HAS_IPS(display) && crtc->pipe == PIPE_A;
>  }
>  
>  bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 57b42554d656..f53611e83502 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4545,6 +4545,7 @@ static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
>  static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc)
>  {
> +	struct intel_display *display = to_intel_display(crtc);
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -4586,7 +4587,7 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>  			return ret;
>  	}
>  
> -	if (HAS_IPS(dev_priv)) {
> +	if (HAS_IPS(display)) {
>  		ret = hsw_ips_compute_config(state, crtc);
>  		if (ret)
>  			return ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 6279c6c6e831..b85b1d3ff708 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -164,7 +164,7 @@ struct intel_display_platforms {
>  #define HAS_GMCH(i915)			(DISPLAY_INFO(i915)->has_gmch)
>  #define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
>  #define HAS_IPC(i915)			(DISPLAY_INFO(i915)->has_ipc)
> -#define HAS_IPS(i915)			(IS_HASWELL_ULT(i915) || IS_BROADWELL(i915))
> +#define HAS_IPS(__display)		((__display)->platform.haswell_ult || (__display)->platform.broadwell)
>  #define HAS_LRR(i915)			(DISPLAY_VER(i915) >= 12)
>  #define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
>  #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
> -- 
> 2.39.5
> 
