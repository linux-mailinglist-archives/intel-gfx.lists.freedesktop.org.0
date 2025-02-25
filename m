Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E80CAA44D85
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 21:35:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E08310E7E1;
	Tue, 25 Feb 2025 20:35:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XRyJth6e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E45110E7DF;
 Tue, 25 Feb 2025 20:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740515718; x=1772051718;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=m/W2GuLwHNQMIcAT5+9HmNOTFnyqMPuRDtugkCPNc9s=;
 b=XRyJth6eF1Ax2tC6oCm32hd5sqrG/uT7Fc3iB19NP7rgisgwKOKln6eg
 2f+QR73Lh03eqjcDw9/4uCzPBEvV+/Vk1nBPJcBW2IZtTTY1qimM5CaEv
 I5M2IoJulsicWAtBfOqXhHKiVO0dsqnibsBKfJzbAcYIxewyaaDkDO12b
 VOH2Ls2cwfM6EpqVCUolqgi+nz/RxIqYu5l50QLzxvjz8+bpIVpfKrLUD
 kiXYrM0zMKTz6ZUyEA3ik1zAJCpa10v3I8Kt6DtsQ5mHd0r8QM8RfgmB9
 jRTH3zANX9Cq1E3CfhE+hR7aV7EZBuE2vaokiJWrcicCOP4xz8TWPW+28 w==;
X-CSE-ConnectionGUID: VUMiVcRcRVKW1BPhzmgW2w==
X-CSE-MsgGUID: xCRf1BLfToeMfnPei6khnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="28934270"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="28934270"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 12:35:17 -0800
X-CSE-ConnectionGUID: k/gBd+h5QgW5cJ07gN1fbg==
X-CSE-MsgGUID: ykZVkahSRPat3BotOjXhLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="116511933"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 12:35:17 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 12:35:16 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 12:35:16 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 12:35:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gR5SruDoTqqbTp/gkJF4npmyqmovfBPNf+TvxdvwGU2T0cGJE6TjYZWGJT337rGLyLiXE/4gPIx6uwbIfIjV2pKzaIjC8ywre9aFDK6U/ZioXK2Dejfdo4gLhnqafaAZFQ0RPVFBlljUXEpHijamW99gwYtmh2DNimc6PPMovChq7dNv1g9cA9Oxn5KYvFtlbYvK5IhzRISpVGtVaJQzk+pMf6+VD7EFZERJMFTNkzvy60oiLOT/ihSzG07sLYxCsN+fBukDvBsUcZHUUyIet7lRJJ8dYRARwn6kB6pYykj0lEhLMeloOk9swO6Xz7aog3sicBBS4wsuBdev21mDPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ecSk9r8bytYQaUjzbbakAgQWwKgOCQuHx7RVzdyQ8HY=;
 b=iK8EtE9jq9PjWO4ifaS7JNBeFfGOsY9hbAwODqp5bLwLH30s7X03D+IerGzEjh/+oxSFIjgUwxtEgydobZWBHnWKeVqVuM1uYsFF+xJOPUFSviFx3kp+2XoMNi1yXyBzluD4ZYFCtqvnOwx1UIH5vnGxzWT6L96+M5UX6SaOBTyaHu0zG8xkYKimEyBinSmSXNaVYfp1dhe0RwCht9HVZmRMnue1PXLmYlW6a3ujAp5TPoMTIgQP45yqLGNNlTMPI2UbAMNHPW1WDNjsHXWKdrfw6V9rlwJbpRa8fuUZmD6UOMHj4v3ye/eZNYCCN42xahJmKLpEErKuxK42uXUFFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH3PR11MB8496.namprd11.prod.outlook.com (2603:10b6:610:1ba::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.18; Tue, 25 Feb
 2025 20:35:14 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 20:35:14 +0000
Date: Tue, 25 Feb 2025 12:35:12 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 6/8] drm/i915/reset: move gt related stuff out of
 display reset
Message-ID: <20250225203512.GK4460@mdroper-desk1.amr.corp.intel.com>
References: <cover.1740481927.git.jani.nikula@intel.com>
 <3af6452fb882a17279018c1f1516545634136139.1740481927.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3af6452fb882a17279018c1f1516545634136139.1740481927.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0129.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::14) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH3PR11MB8496:EE_
X-MS-Office365-Filtering-Correlation-Id: f130a9b1-dccf-4964-4697-08dd55dbe855
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?CusSphPdfupsZEdN3mWeIamXJKHtvXEIdQrODzKq8hYObI488xUQw59I4kw7?=
 =?us-ascii?Q?cWzkJVn3raSW292tQhXr8jMyNGtG45X0/CbbYUoNo+3u8udk2b+7S4DnB5ZA?=
 =?us-ascii?Q?lXJIICQey7dXyrmJEqjnaD32t4vPkTNqKdhsmJU40BHNRT1k5wPN5DYpDmJ1?=
 =?us-ascii?Q?rcCl6Ts9O0JZ7LRH6JtQhyGFtHaDYoK8o7MF0H12bSt/IdcWJUrCGenhk9pT?=
 =?us-ascii?Q?8t05I0dqnsLVcKIgBdQQmLkOIoEm4jaIaTzH0lkt0nwQaRBK82strC4XR0Sk?=
 =?us-ascii?Q?r9Q8+L19IA02cMPdZYc9NJvjagAIubh4WTUfd0mSvxueBuAMt0Jwq1GRWb01?=
 =?us-ascii?Q?WEkeDjGQuh+qM4+8dBUSwPQDaGvacEmDShiumd3Nf+wYGoQCi48V4glr+33n?=
 =?us-ascii?Q?aA4mqmGrFLakk+jyyONipJSdfp/1rAqbqXQSbYmDDu1FUYMznAIQZUJpkkNO?=
 =?us-ascii?Q?bQs6qQcarxMQs4Ns3tgzW9sTMj6bxn588ViCNKBbF3rc56xsA/j0+lZVi37C?=
 =?us-ascii?Q?EQtWpNHUOAh8IOli+b0hZI+p1tGzUugXzGD+v6XVY2KcDXD4ws9ymA8JwiNT?=
 =?us-ascii?Q?LIxx9Cm00TvMgVQDBiDAfSXQVRvB3goYemh74yDW72xMVvnzu5ywGsJWubmR?=
 =?us-ascii?Q?f44wPeqwvgmjc/b1tzJLfN/UruYBVtGrodDEdn00cK0dCPxaZhEPteGLATAm?=
 =?us-ascii?Q?CXgCkLoLWzX7UBKzl2fw6H1rhx4drpZIeDhVvoq6VWxshtgkqdpbzaWICcaU?=
 =?us-ascii?Q?zNMuQiZCAYVa8Q74odxyU+5DYAPvURkLkb9p9GTmLpjG0x/NCwB1v7xucLJD?=
 =?us-ascii?Q?KeGTi0znoAL/v8K3dJ1nCQZBnWmj/cq/A+4p/owFAqPF0KXvLAErxZW7IG+p?=
 =?us-ascii?Q?vnHcueqL0kz1wmqLm7ceNd7TmU2AZkPNdl13p91LVAZYrdHJl1duRt/1xpcz?=
 =?us-ascii?Q?FQ166bvTSXLkZDUs8Y5A+O2FXrkHxvgXdUYClh15b2NEFBYyNwxQBR49RJAG?=
 =?us-ascii?Q?phqWmHIFMxl3suG6PA5oUz10Wl+r0r4oOQVmO9auGLGvv/eSHrbRvlBJ1c9V?=
 =?us-ascii?Q?LBU36UyR4vGLHBz1+tq3gFnyFUAiRYr5oUO7NTXhbunOvh21vvJGEWg0Ydww?=
 =?us-ascii?Q?HFtO+qZctZ65rMNVFu0w4/DHZ+O/XJ0mRlklnmsWlz3j+19lYVaShEzXLI4Q?=
 =?us-ascii?Q?SvfEXP/Pcx7GoqGupxOw/VMx9+BZDIeKaM88JmkPVXFt613ygDUkP2tkg2iO?=
 =?us-ascii?Q?O3FFwV17LjPjEbcuRDaa7k3Hls6PGshYtsRcZON8F5sE2gj+1gEebDXw3TNa?=
 =?us-ascii?Q?B4IylTSJNOWTVJA0M//RvlfhJBQoM214HgEFGfyvuYG7/i9baZNCYAVE0WTZ?=
 =?us-ascii?Q?8l1y8T746YwP0lQWKXqvV4TkHAe6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TkjpxwR6p2teqpOvylX/kCel6LbXABhyeaFElyW8te1pczjNt7qvEiBx0C56?=
 =?us-ascii?Q?TyPgRpS+pyGZQftbH2W713MQQ1eMreV5+GlvjCLlF3j5viMmhqQKd5ephpuz?=
 =?us-ascii?Q?EymqDHg8bg314OWslKHRsVEZ0x7nCB1zG0NF5e3evvzQhDDpL6h8StwntiOd?=
 =?us-ascii?Q?H6sC4bGm7452HfQR5Vf/O68LRtIbwmS2Y4bZPTVNTQInA7ibA7RKi8smE1ad?=
 =?us-ascii?Q?QjeGq1KoyAuASxQMOysNxcOHMxWrdvPtxn0kY88a5B6susTB5iTbLVQwmxMW?=
 =?us-ascii?Q?xGfxahhmB5xCeDTbP3wScTQ2e5Ndu2Qo//v/Nl+FJtaVY6Eohj33S/VDc85D?=
 =?us-ascii?Q?4UdkspxIK3ne1J/SrntVPj66Jz9Od82osqGpHLGmtbNUTNaU58oJMz71dhHB?=
 =?us-ascii?Q?fu9cVU/iJx+D/kHzLtWq2emks49AuSKVvTyVrzTYr6ViP1aSWb5Rp3y8qvw7?=
 =?us-ascii?Q?GraF5ICNTMMJzZnrAgttlMEiW6U7QL7L0z0pxh1EkR7lNySrq7ZG86RCqeLK?=
 =?us-ascii?Q?P/rj5BLCsieW+/fksSNVzysPy1Jwzlk5p9EhfmSqN9ARQy6DOVmwUYPTEX/p?=
 =?us-ascii?Q?u1e8M5Mi6LEDjVRHJ/j/oLhejfAvsyrt4hVFM+wLKy3HDUkgYlQij/Jr8kT7?=
 =?us-ascii?Q?UL6iXqH+T3MHqQhYuO3byvYnKZdsRVJEMZEpLMVuL3LZVLx2Z7ahltbSe5Wx?=
 =?us-ascii?Q?ceovCJRTQBSXRSA/LARwLWHV6rUZ5bii++Zc93Mv6ezhfMIPc9u807p69ZAn?=
 =?us-ascii?Q?Im0ISA4mnAnuaGT/Q0sZW3YJ/wCrtD22y6dH7BdPyAUBycMFGKord95DfQ7E?=
 =?us-ascii?Q?Gepd7SnF/DpVxSmj/mLKscjOBlyV/KUVkZ1dxirufhNsgl9+3UmHxS4WxM4z?=
 =?us-ascii?Q?Q1yzy0J+DqueKDPg8Jxt1u47tSzuqLqPjcCnSMNX8t8mBxyE9cEi+0FGfbvY?=
 =?us-ascii?Q?UM0jLsQk0TKb64H0s9i18EQyLmWmCbzBc+fBOmcL5QTwJdBQNob7pdIME+vn?=
 =?us-ascii?Q?IEdYuEQ8+3rVEY/npDHs4zp9LFvcKUzvaPREu/zqR0gBPSUS2mX2E6ynCyI6?=
 =?us-ascii?Q?NExhD+PBUPuNVDmrIOFL6kS85Rby5Km/kxa6ZQ1x7QBRtdyHzVrKi+kpW4dW?=
 =?us-ascii?Q?iPGDcnCGMK1CHXix5mDItj52HqCpXdgjlMjjePcG3j4ClSK97HwQHmVPSWFY?=
 =?us-ascii?Q?EslRAviWTnG/hHmwPmYky5JU6Rq1UAbpPtGX0yEXXfWp4jOkqAKvq7iH0d+A?=
 =?us-ascii?Q?QlGQiCa9Kt2t5o/8YtvNi2MP+zKE1YVt6J30L2DeNgdhcohggB0RyRb6qscp?=
 =?us-ascii?Q?q7GQO4paA+tXllhMLm6pWp7yU7LIg2q0MlCAtI8RyBm32LsBF7g64Jh8u9KK?=
 =?us-ascii?Q?jz/TqJkZWmGlVkgO6m250lJP+VhqoNb+bQBxJCpOZhadDt0VwS+NmJxF4/Va?=
 =?us-ascii?Q?99zmD0yrqPAWhSWh4TJLwkE7BLb4jRsn2b8hJxfk99E4p4oSgdNArYdj54wd?=
 =?us-ascii?Q?VdI4GSbXWXOLZzDR5Fa0RUi3MAb1M3MotGg+RONNBSQDbO9rtyxM6OrRD0qf?=
 =?us-ascii?Q?6wvuhMudpnV3BrVPbv9xO4J8TPm5atbpwv7LYo2d4qaQeDDXIzRliI8n5vY9?=
 =?us-ascii?Q?ug=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f130a9b1-dccf-4964-4697-08dd55dbe855
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2025 20:35:14.2111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3Y5nWMmlZYgYuILQ1qGf+jVwJeflPSyIfUMuNL0V8e47ylzCCXUMjDAFZ6Aga9nKt+udi/91LSWgKMGUoF5HzQDR2DIhx+B/+OdDFASSSHo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8496
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

On Tue, Feb 25, 2025 at 01:14:20PM +0200, Jani Nikula wrote:
> Move the checks for whether display reset is needed as well as
> I915_RESET_MODESET flag handling to gt side of things.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_reset.c    | 15 --------------
>  drivers/gpu/drm/i915/gt/intel_reset.c         | 20 +++++++++++++++++++
>  2 files changed, 20 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index b7962f90c21c..362436cd280f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -37,15 +37,6 @@ void intel_display_reset_prepare(struct intel_display *display)
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> -	/* reset doesn't touch the display */
> -	if (!intel_display_reset_test(display) &&
> -	    !gpu_reset_clobbers_display(display))
> -		return;
> -
> -	/* We have a modeset vs reset deadlock, defensively unbreak it. */

Doesn't this comment more accurately apply to the 'if' condition below
rather than to the flag updates and wakeup we do before that?  Assuming
I'm understanding correctly, it seems like the comment should stay here
and not move to the other file --- saying "We have a ... deadlock" is
only true if we still have a pending pin after we've done that other
stuff.  The unbreaking part (by wedging) is still located here too.

> -	set_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
> -	smp_mb__after_atomic();
> -	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
>  	if (atomic_read(&display->restore.pending_fb_pin)) {
>  		drm_dbg_kms(display->drm,
>  			    "Modeset potentially stuck, unbreaking through wedging\n");
> @@ -99,10 +90,6 @@ void intel_display_reset_finish(struct intel_display *display)
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> -	/* reset doesn't touch the display */
> -	if (!test_bit(I915_RESET_MODESET, &to_gt(i915)->reset.flags))
> -		return;
> -
>  	state = fetch_and_zero(&display->restore.modeset_state);
>  	if (!state)
>  		goto unlock;
> @@ -140,6 +127,4 @@ void intel_display_reset_finish(struct intel_display *display)
>  	drm_modeset_drop_locks(ctx);
>  	drm_modeset_acquire_fini(ctx);
>  	mutex_unlock(&display->drm->mode_config.mutex);
> -
> -	clear_bit_unlock(I915_RESET_MODESET, &to_gt(i915)->reset.flags);
>  }
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index d424ffb43aa7..62590ed91cf2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1400,11 +1400,25 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
>  	return err;
>  }
>  
> +static bool gt_reset_clobbers_display(struct intel_gt *gt)
> +{
> +	return intel_gt_gpu_reset_clobbers_display(gt) && intel_has_gpu_reset(gt);
> +}
> +
>  static void display_reset_prepare(struct intel_gt *gt)
>  {
>  	struct drm_i915_private *i915 = gt->i915;
>  	struct intel_display *display = &i915->display;
>  
> +	/* reset doesn't touch the display */
> +	if (!intel_display_reset_test(display) && !gt_reset_clobbers_display(gt))
> +		return;
> +
> +	/* We have a modeset vs reset deadlock, defensively unbreak it. */

As noted above, this seems inaccurate.  We're just doing the stuff
necessary to check whether we have a deadlock here.


Matt

> +	set_bit(I915_RESET_MODESET, &gt->reset.flags);
> +	smp_mb__after_atomic();
> +	wake_up_bit(&gt->reset.flags, I915_RESET_MODESET);
> +
>  	intel_display_reset_prepare(display);
>  }
>  
> @@ -1413,7 +1427,13 @@ static void display_reset_finish(struct intel_gt *gt)
>  	struct drm_i915_private *i915 = gt->i915;
>  	struct intel_display *display = &i915->display;
>  
> +	/* reset doesn't touch the display */
> +	if (!test_bit(I915_RESET_MODESET, &gt->reset.flags))
> +		return;
> +
>  	intel_display_reset_finish(display);
> +
> +	clear_bit_unlock(I915_RESET_MODESET, &gt->reset.flags);
>  }
>  
>  static void intel_gt_reset_global(struct intel_gt *gt,
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
