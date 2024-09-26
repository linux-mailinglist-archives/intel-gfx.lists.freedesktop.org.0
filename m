Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD2598798F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 21:14:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D33E10E089;
	Thu, 26 Sep 2024 19:14:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m1NVhE4p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27DC310E089;
 Thu, 26 Sep 2024 19:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727378044; x=1758914044;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6JB8vSw3SgwPpRrbIpRpp7V9zY6Zjl/ZwjohnJPwFr0=;
 b=m1NVhE4pgXbzko3ZjQSmO9mCVME4MWW+8HpFyg9+uDIgX2bnpLJC2KP0
 aeFdokU+iQWX7neJO/JY3x/JvSYFPZYDZc27aGBElZSNrXk7PY4Hfuf30
 g9A78yxL3s554Dgg39ioE6TE6lpODlZsQclNMW6MLl6MkZFweEuOb3I00
 DSMIgrFwERy5YaeB+aUeXUSxdeqVB7QSD3OlTSaYj5g2WipWgAn2Xu1P9
 kgRVdrbsFWivoh7P0rl6vKoXEcagAY2pVsCuts4Osi8rJSc6fkAuioNkr
 BA4sILalcikwKzhsLEbwjylQMeitsNPb760+k0cb/ynbThzCYGrE0eqEx w==;
X-CSE-ConnectionGUID: cp7jl0nCQZ2B0hlphYwetQ==
X-CSE-MsgGUID: xNGkk22qToC5ms/XZnWGcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="37884768"
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="37884768"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 12:14:04 -0700
X-CSE-ConnectionGUID: FwCB9t8gRZ+ON6NbBVVNSQ==
X-CSE-MsgGUID: fREulQ5tS4urguyMHSOtMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="72584286"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 12:14:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 12:14:02 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 12:14:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 12:14:02 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 12:14:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tpET5AWFJOSF2zG53gf9oZkCKBfcyheXP49zNMLpcXTe7HQhn+aqaiIWKTD2fgVnKzfiqUX3Q8knLs8RH7KuDHjYsAc08ErXhej3YLlPh6wAgaNDTKq8hdo5jInmsExU/XNUDIJrMCZPCiPizx+6FITsgHij9XTwtK3lusCQvcuNVG+pa69zolKsRJzIoHmzH423XzmkHhRs9duhVgrnySj8Lkfvy/s+hEITE/sBe7N64l0N0/27yfb60RPMQSQLCLI5EZXGvb7Cp9lg2iszZ0b55HfCcwJKQaFQmxHSOV0iCcGVY9VUlBwcJ//IDNlBkse0QPfk5AKb3II9W/iZRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=++hOLXr82tP4FMxd2Oog9fSmALApPjx1agsuyvOtCzc=;
 b=oceKHambZ2uuk1i2tsfII0Gt2YsQDEE5z7SIWH4JPERNjTI8rRqktHgtaBAHkIUUAXvwP8VrvpLIm7a87WC13aZvIG4kUxIFNrzNOmHMhyOBvDT45os/nmt35OFYrnYa+FaNiJNqkHeD5nJskTaZ252iGcb2l+CsmyM4IeapjUetiTt/1toRiVrfUh9s7tYV4uJ7jPdpYa/BbdtNDjwqGoi5nPz8EOdGjk1cRUvJVPzJUNVRoounhmdeRwhl4/Y4IlQYq8SGIDI1sblU32sYchIZ2kgqwGadmy68FqFsMo3yviaCHXDmRBM41YAmOYwfgXe1BbXO1dTwyLHtVIpBWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY8PR11MB7899.namprd11.prod.outlook.com (2603:10b6:930:7e::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.26; Thu, 26 Sep
 2024 19:13:58 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Thu, 26 Sep 2024
 19:13:58 +0000
Date: Thu, 26 Sep 2024 15:13:54 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] drm/i915/irq: remove GEN3_IRQ_RESET() and
 GEN3_IRQ_INIT() macros
Message-ID: <ZvWyci_z1nDMaQEi@intel.com>
References: <cover.1727369787.git.jani.nikula@intel.com>
 <9e231087a6eabfcb1b018b3d3fd7b9f016df6f4e.1727369787.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9e231087a6eabfcb1b018b3d3fd7b9f016df6f4e.1727369787.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0081.namprd04.prod.outlook.com
 (2603:10b6:303:6b::26) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY8PR11MB7899:EE_
X-MS-Office365-Filtering-Correlation-Id: ba6bdf97-7a01-44c0-70b8-08dcde5f5ee9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?JER1beRuUfNA1u7pP1WzrJWb01v0rW/w6IwzgmAEpuhENpBc8XAKtOBOFlyc?=
 =?us-ascii?Q?FtKU7PayRKQFkimsn/Uf7gEYxjTMpuxZIhjULcMN4m4IaNozn6ucYf3fHvyW?=
 =?us-ascii?Q?G86dFOeYM/cM3GpO932gJ8WdGyxzO9M/MKOWicX0N9mpZsMoaidlwHsTUpYi?=
 =?us-ascii?Q?+Euhnklr/wcN2c4XUtldz7wBgK1M2nCUTeL7sr5n76qWG1u6iDvSmVrteTsU?=
 =?us-ascii?Q?jk7aKhXEII7g8xnTKDeBAruKx7h4/rNagdOT8L1xurS6+vhfyMglUkz1q7T1?=
 =?us-ascii?Q?W1aaLZib1Ku2jr3NgZhxbUePxS/hNbk83HrKA1jDJpDx2NU4HSkuT6vp5EDW?=
 =?us-ascii?Q?vINm/QTY7IhfcjYIRGHxevasLwgiDm4g7K5DidTozaUNzIGh8v06MC3UAoDD?=
 =?us-ascii?Q?dzkE7wMU4KVwrhO8BQHEPncyZJdh//AgPnoMRKT7jfu0SWVBVm2JlzXX0qml?=
 =?us-ascii?Q?a3R05xDOdmFBR2wgpk9WFyPCnoUR8CQ7VO1c7NQAStJtCQ9vcvcwd4WgZyW6?=
 =?us-ascii?Q?N2WJj+G6IkA+xQ/T2u1OkJ3Fqp2JEv9MkomAOKbBsl2sdqtCCBKIHI2QhYDc?=
 =?us-ascii?Q?DrNTIP0V5qXuwHPZEkB+BHCCFug+D42HdadJYGOrx62G+5oIv4bnOxMC4Ce4?=
 =?us-ascii?Q?IOoV5Q9CwufbLpRYYF+JRBYt5KMHxuPL0ESvY9Fy7aK9d+1SDr+H5vk2PCLJ?=
 =?us-ascii?Q?iAvgt26jxKqE5FVEWzyxjt19YuLdSuOO769J1growsMFeajt06BGfrWWLz95?=
 =?us-ascii?Q?IfJfy4cu+mDRxNP76sh0PhppA1u8hJEyi+2utw2eh2q6KLtBXYWe0/Lhstpc?=
 =?us-ascii?Q?EMG1333UB+1qIAU78XGjXHqnh5fe9PMyU9VxR8lw7tS2orCkl9lFnUFQUtVJ?=
 =?us-ascii?Q?azZ3mVKfQMl2zM/Ss9zBO/PzPkqxAHonjxv8H7DVDMMKPnRx0Jdgg2hncAli?=
 =?us-ascii?Q?PzZ17bvg0aDPXTXcsm19d+UXVDI0z4ooEn3lVLzWNe+YxF1ecqBX/90fLRpp?=
 =?us-ascii?Q?M5xYQQJh8wlQ9ifsI4Uqrbtxo4hl4XtVp0vrLwgPCGJ9wcsUVEtgEYVPLR9O?=
 =?us-ascii?Q?V8zdzM05eccrrLHhiDjOHDlGCVMUzgpLkWmDQBYfR/7mWuYBnDbsSQ8nT14/?=
 =?us-ascii?Q?PXkkTk8h3Oii6tv+DMREX923Ob+hl621GjEy7N96D8db3EG3HggMCQz3u7yW?=
 =?us-ascii?Q?8fOtOv0oWEJNXiQkxqkRs7EFmM1/xJK87J0LklXP1zja8URpnR6Tk/v1345Q?=
 =?us-ascii?Q?+alec11g5WFcVUEYDe+QRPa8Dezuc786iHLInhXbiWPKHroIGSViOmBeO0oY?=
 =?us-ascii?Q?ZfRkWkLE742WB7N0xZgVe3gWJQtSnkgg+YfSeyLBumkVJw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dplX6aGapR8vYI3SzViT07rSV4zm/ybK/IW6HoVcv+5sSkufuhXHvl3O/m3a?=
 =?us-ascii?Q?LjuGJ/i+E7nbrVqIeEXiACTg1rDuvAB1btEU2Sal9/ljKTTTATAhW9NcRhJL?=
 =?us-ascii?Q?L8MDO/FcqqPK7+0efDTBZ+tLqd5htyXWGD4AAOvpDE/6I/Q9ISoah3GVWz6I?=
 =?us-ascii?Q?C6rmmJXNHG+7yFfl4yqYQpw0WZ/zZcPKF6fjtq9sZ/w4O5TnRfFuPpVvjMRB?=
 =?us-ascii?Q?NOFam9WL/L9cWKav/apQXb3Sq6D+eacvMqPUdG6+3ld66G7OyI3kCwWFVqkY?=
 =?us-ascii?Q?lk9Se+diDxiJTE4PLvc48T5MuQRs7NLoJMlLn7hE+mpuvCEWfhGK1+3g6WK+?=
 =?us-ascii?Q?POcHM1nWBycxLEOq0MrG8lAqC4upc9xIbckDOR2ZuBdnPVfZ1aYeoH+EsJEK?=
 =?us-ascii?Q?wHJucVja7Ep3ufDKSLVda7kURlAE6RcAKQTlBBXFyo0qm6pvClkPGaIFPbCG?=
 =?us-ascii?Q?jirhiw/8Nkgf3dowos5sgODx8yjM3xl9xxK7zVUcr9YtGevTQYGQ/K3PomWw?=
 =?us-ascii?Q?FwrEnKVc+12/gAKWIL1/PIhg3NGlKxjWQGUoRc9LK+Z7M+nIVltqwdUG4dis?=
 =?us-ascii?Q?Jz3Vl+AO4wHgU/RMiGtgqWCNL7F2SrQ9dJMUS3aAA0vg3KmVfsGmGyMTjcEk?=
 =?us-ascii?Q?lXs+U0D8j+lUKM0FXfd7H361MbeGL+SGKnyk5jnKeq2XwqKxFijQxYUqegKD?=
 =?us-ascii?Q?WUD1xT/x2FnthS14BLy2tqmtYw7ZphCydWe4dcsDhpPG0UReVKZ6J0FQstID?=
 =?us-ascii?Q?0+vGN5KYk1jYrqD1GT6xACfwupThZAaAoceP6mwtQE0xn0bELV3MbmjbngNH?=
 =?us-ascii?Q?1REA/4BuAStUa4J8S0oMztMlZ82eCwSpM2JEpy9o/q2/FaoPyjRqudC1Ddn2?=
 =?us-ascii?Q?N4KmkR6ttW5B0g91l31BuQ/v4J2BgsH7NQj3bCpPxjA4xL/bc9kjUB2yqkiE?=
 =?us-ascii?Q?lwTE5h/5t4c+PZH6YQPHkX7kAXcVssEsEZI5sJbblJHDbcH9AwX8of6uJvoe?=
 =?us-ascii?Q?vShqWCbGXJKt3lFY+NYDodbnBoeKJX5jeQakRg/eql3phk/9ZbiHd/vxttDJ?=
 =?us-ascii?Q?0Ski1xzFbZElgRMcM2xCAYSnItBft+XET0wQzMram16JBI0sxC2/5uCRY2Fw?=
 =?us-ascii?Q?gB7k9SBZNfNVjSWK5Uj//oRVX6/JLNyIBTfhidiprHoogj9LIs4GwKTBMiGU?=
 =?us-ascii?Q?N+kfXj5AU3FoEdqlP3bN04mFZ+IiqU0GLV6nbOkbZAjQipVfxeiPX6Zapg2n?=
 =?us-ascii?Q?cAS34rBYKfVSyY7fxIvhM325wOaqHc/pFkSjI158+hpZTqwapwjXfVwTaRBq?=
 =?us-ascii?Q?QfWKY0z1SQaVS6rZzKfpfIGXeBUwDousbsoSixjJEy8B63MIml9VvbP20yBV?=
 =?us-ascii?Q?9ZcfS80QuxkvbAG4VPfgMYnRyenbkDXBE4BINIo1WyrbdsqJ2Sx+QPBtYPw6?=
 =?us-ascii?Q?2h2O+mvWQuyDF4jDt7PKvFi4zq+lhnUywycW2SYkv7GevLaqtyPIObsgQoFP?=
 =?us-ascii?Q?TbdhRNBTowiKvvzKGrPwcdscm+h2dwXH4clCcxVzaQafSADxKFfxN9AVI9UQ?=
 =?us-ascii?Q?gllts3jjDAt2Fq9df1wQByi20q71Vw71Y8m9nVYcXRVLmlFh3ASG4jb7kgWr?=
 =?us-ascii?Q?Ug=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ba6bdf97-7a01-44c0-70b8-08dcde5f5ee9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 19:13:58.1098 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B8dear4QowPqXeZSQ9Fo50MmL9fcHG+PXKNHVOw1LfkMNUhDQvCU9Bh8FMsqu0tRTYtG0J1+IVrNhXmNeUoR2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7899
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

On Thu, Sep 26, 2024 at 07:57:47PM +0300, Jani Nikula wrote:
> Define register offset triplets for all registers used with
> GEN3_IRQ_RESET() and GEN3_IRQ_INIT() macros, and call the underlying
> gen3_irq_reset() and gen3_irq_init() functions directly. Remove the
> macros, along with the macro name concatenation hackery.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 34 +++++++-------
>  drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  8 ++--
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  4 ++
>  drivers/gpu/drm/i915/i915_irq.c               | 28 ++++++------
>  drivers/gpu/drm/i915/i915_irq.h               |  7 ---
>  drivers/gpu/drm/i915/i915_reg.h               | 45 +++++++++++++++++++
>  6 files changed, 84 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 6878dde85031..5c6b9918ed3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1486,7 +1486,7 @@ void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	i9xx_pipestat_irq_reset(dev_priv);
>  
> -	GEN3_IRQ_RESET(uncore, VLV_);
> +	gen3_irq_reset(uncore, VLV_IRQ_REGS);
>  	dev_priv->irq_mask = ~0u;
>  }
>  
> @@ -1529,7 +1529,7 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
>  
>  	dev_priv->irq_mask = ~enable_mask;
>  
> -	GEN3_IRQ_INIT(uncore, VLV_, dev_priv->irq_mask, enable_mask);
> +	gen3_irq_init(uncore, VLV_IRQ_REGS, dev_priv->irq_mask, enable_mask);
>  }
>  
>  void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
> @@ -1548,8 +1548,8 @@ void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
>  						   POWER_DOMAIN_PIPE(pipe)))
>  			GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
>  
> -	GEN3_IRQ_RESET(uncore, GEN8_DE_PORT_);
> -	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
> +	gen3_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
> +	gen3_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
>  }
>  
>  void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
> @@ -1591,16 +1591,16 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>  						   POWER_DOMAIN_PIPE(pipe)))
>  			GEN8_IRQ_RESET_NDX(uncore, DE_PIPE, pipe);
>  
> -	GEN3_IRQ_RESET(uncore, GEN8_DE_PORT_);
> -	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
> +	gen3_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
> +	gen3_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
>  
>  	if (DISPLAY_VER(dev_priv) >= 14)
> -		GEN3_IRQ_RESET(uncore, PICAINTERRUPT_);
> +		gen3_irq_reset(uncore, PICAINTERRUPT_IRQ_REGS);
>  	else
> -		GEN3_IRQ_RESET(uncore, GEN11_DE_HPD_);
> +		gen3_irq_reset(uncore, GEN11_DE_HPD_IRQ_REGS);
>  
>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
> -		GEN3_IRQ_RESET(uncore, SDE);
> +		gen3_irq_reset(uncore, SDE_IRQ_REGS);
>  }
>  
>  void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
> @@ -1675,7 +1675,7 @@ static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
>  	else
>  		mask = SDE_GMBUS_CPT;
>  
> -	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
> +	gen3_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
>  }
>  
>  void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
> @@ -1743,7 +1743,7 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
>  
>  	ibx_irq_postinstall(i915);
>  
> -	GEN3_IRQ_INIT(uncore, DE, i915->irq_mask,
> +	gen3_irq_init(uncore, DE_IRQ_REGS, i915->irq_mask,
>  		      display_mask | extra_mask);
>  }
>  
> @@ -1834,15 +1834,15 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  					  de_pipe_enables);
>  	}
>  
> -	GEN3_IRQ_INIT(uncore, GEN8_DE_PORT_, ~de_port_masked, de_port_enables);
> -	GEN3_IRQ_INIT(uncore, GEN8_DE_MISC_, ~de_misc_masked, de_misc_masked);
> +	gen3_irq_init(uncore, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, de_port_enables);
> +	gen3_irq_init(uncore, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked, de_misc_masked);
>  
>  	if (IS_DISPLAY_VER(dev_priv, 11, 13)) {
>  		u32 de_hpd_masked = 0;
>  		u32 de_hpd_enables = GEN11_DE_TC_HOTPLUG_MASK |
>  				     GEN11_DE_TBT_HOTPLUG_MASK;
>  
> -		GEN3_IRQ_INIT(uncore, GEN11_DE_HPD_, ~de_hpd_masked,
> +		gen3_irq_init(uncore, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_masked,
>  			      de_hpd_enables);
>  	}
>  }
> @@ -1855,10 +1855,10 @@ static void mtp_irq_postinstall(struct drm_i915_private *i915)
>  	u32 de_hpd_enables = de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
>  			     XELPDP_TBT_HOTPLUG_MASK;
>  
> -	GEN3_IRQ_INIT(uncore, PICAINTERRUPT_, ~de_hpd_mask,
> +	gen3_irq_init(uncore, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask,
>  		      de_hpd_enables);
>  
> -	GEN3_IRQ_INIT(uncore, SDE, ~sde_mask, 0xffffffff);
> +	gen3_irq_init(uncore, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
>  }
>  
>  static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
> @@ -1866,7 +1866,7 @@ static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  	u32 mask = SDE_GMBUS_ICP;
>  
> -	GEN3_IRQ_INIT(uncore, SDE, ~mask, 0xffffffff);
> +	gen3_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
>  }
>  
>  void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> index ad4c51f18d3a..fbb3117e324a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -514,9 +514,9 @@ void gen5_gt_irq_reset(struct intel_gt *gt)
>  {
>  	struct intel_uncore *uncore = gt->uncore;
>  
> -	GEN3_IRQ_RESET(uncore, GT);
> +	gen3_irq_reset(uncore, GT_IRQ_REGS);
>  	if (GRAPHICS_VER(gt->i915) >= 6)
> -		GEN3_IRQ_RESET(uncore, GEN6_PM);
> +		gen3_irq_reset(uncore, GEN6_PM_IRQ_REGS);
>  }
>  
>  void gen5_gt_irq_postinstall(struct intel_gt *gt)
> @@ -538,7 +538,7 @@ void gen5_gt_irq_postinstall(struct intel_gt *gt)
>  	else
>  		gt_irqs |= GT_BLT_USER_INTERRUPT | GT_BSD_USER_INTERRUPT;
>  
> -	GEN3_IRQ_INIT(uncore, GT, gt->gt_imr, gt_irqs);
> +	gen3_irq_init(uncore, GT_IRQ_REGS, gt->gt_imr, gt_irqs);
>  
>  	if (GRAPHICS_VER(gt->i915) >= 6) {
>  		/*
> @@ -551,6 +551,6 @@ void gen5_gt_irq_postinstall(struct intel_gt *gt)
>  		}
>  
>  		gt->pm_imr = 0xffffffff;
> -		GEN3_IRQ_INIT(uncore, GEN6_PM, gt->pm_imr, pm_irqs);
> +		gen3_irq_init(uncore, GEN6_PM_IRQ_REGS, gt->pm_imr, pm_irqs);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 57a3c83d3655..04577658695e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1472,6 +1472,10 @@
>  						 GEN6_PM_RP_DOWN_THRESHOLD  | \
>  						 GEN6_PM_RP_DOWN_TIMEOUT)
>  
> +#define GEN6_PM_IRQ_REGS			I915_IRQ_REGS(GEN6_PMIMR, \
> +							      GEN6_PMIER, \
> +							      GEN6_PMIIR)
> +
>  #define GEN7_GT_SCRATCH(i)			_MMIO(0x4f100 + (i) * 4)
>  #define   GEN7_GT_SCRATCH_REG_NUM		8
>  
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 7938a44b5681..f0d69bd432f5 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -662,7 +662,7 @@ static void ibx_irq_reset(struct drm_i915_private *dev_priv)
>  	if (HAS_PCH_NOP(dev_priv))
>  		return;
>  
> -	GEN3_IRQ_RESET(uncore, SDE);
> +	gen3_irq_reset(uncore, SDE_IRQ_REGS);
>  
>  	if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
>  		intel_uncore_write(&dev_priv->uncore, SERR_INT, 0xffffffff);
> @@ -674,7 +674,7 @@ static void ilk_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  
> -	GEN3_IRQ_RESET(uncore, DE);
> +	gen3_irq_reset(uncore, DE_IRQ_REGS);
>  	dev_priv->irq_mask = ~0u;
>  
>  	if (GRAPHICS_VER(dev_priv) == 7)
> @@ -711,7 +711,7 @@ static void gen8_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	gen8_gt_irq_reset(to_gt(dev_priv));
>  	gen8_display_irq_reset(dev_priv);
> -	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> +	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
>  
>  	if (HAS_PCH_SPLIT(dev_priv))
>  		ibx_irq_reset(dev_priv);
> @@ -728,8 +728,8 @@ static void gen11_irq_reset(struct drm_i915_private *dev_priv)
>  	gen11_gt_irq_reset(gt);
>  	gen11_display_irq_reset(dev_priv);
>  
> -	GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
> -	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> +	gen3_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
> +	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
>  }
>  
>  static void dg1_irq_reset(struct drm_i915_private *dev_priv)
> @@ -745,8 +745,8 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	gen11_display_irq_reset(dev_priv);
>  
> -	GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
> -	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> +	gen3_irq_reset(uncore, GEN11_GU_MISC_IRQ_REGS);
> +	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
>  
>  	intel_uncore_write(uncore, GEN11_GFX_MSTR_IRQ, ~0);
>  }
> @@ -760,7 +760,7 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	gen8_gt_irq_reset(to_gt(dev_priv));
>  
> -	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> +	gen3_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
>  
>  	spin_lock_irq(&dev_priv->irq_lock);
>  	if (dev_priv->display.irq.display_irqs_enabled)
> @@ -805,7 +805,7 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
>  	gen11_gt_irq_postinstall(gt);
>  	gen11_de_irq_postinstall(dev_priv);
>  
> -	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
> +	gen3_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_masked);
>  
>  	gen11_master_intr_enable(intel_uncore_regs(uncore));
>  	intel_uncore_posting_read(&dev_priv->uncore, GEN11_GFX_MSTR_IRQ);
> @@ -821,7 +821,7 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
>  	for_each_gt(gt, dev_priv, i)
>  		gen11_gt_irq_postinstall(gt);
>  
> -	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
> +	gen3_irq_init(uncore, GEN11_GU_MISC_IRQ_REGS, ~gu_misc_masked, gu_misc_masked);
>  
>  	dg1_de_irq_postinstall(dev_priv);
>  
> @@ -1036,7 +1036,7 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	i9xx_display_irq_reset(dev_priv);
>  
> -	GEN3_IRQ_RESET(uncore, GEN2_);
> +	gen3_irq_reset(uncore, GEN2_IRQ_REGS);
>  	dev_priv->irq_mask = ~0u;
>  }
>  
> @@ -1068,7 +1068,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
>  		dev_priv->irq_mask &= ~I915_DISPLAY_PORT_INTERRUPT;
>  	}
>  
> -	GEN3_IRQ_INIT(uncore, GEN2_, dev_priv->irq_mask, enable_mask);
> +	gen3_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
>  
>  	/* Interrupt setup is already guaranteed to be single-threaded, this is
>  	 * just to make the assert_spin_locked check happy. */
> @@ -1141,7 +1141,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	i9xx_display_irq_reset(dev_priv);
>  
> -	GEN3_IRQ_RESET(uncore, GEN2_);
> +	gen3_irq_reset(uncore, GEN2_IRQ_REGS);
>  	dev_priv->irq_mask = ~0u;
>  }
>  
> @@ -1190,7 +1190,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
>  	if (IS_G4X(dev_priv))
>  		enable_mask |= I915_BSD_USER_INTERRUPT;
>  
> -	GEN3_IRQ_INIT(uncore, GEN2_, dev_priv->irq_mask, enable_mask);
> +	gen3_irq_init(uncore, GEN2_IRQ_REGS, dev_priv->irq_mask, enable_mask);
>  
>  	/* Interrupt setup is already guaranteed to be single-threaded, this is
>  	 * just to make the assert_spin_locked check happy. */
> diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
> index 361ba46eed76..06a38671b32b 100644
> --- a/drivers/gpu/drm/i915/i915_irq.h
> +++ b/drivers/gpu/drm/i915/i915_irq.h
> @@ -55,9 +55,6 @@ void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
>  					       GEN8_##type##_IIR(which_))); \
>  })
>  
> -#define GEN3_IRQ_RESET(uncore, type) \
> -	gen3_irq_reset((uncore), I915_IRQ_REGS(type##IMR, type##IER, type##IIR))
> -
>  #define GEN8_IRQ_INIT_NDX(uncore, type, which, imr_val, ier_val) \
>  ({ \
>  	unsigned int which_ = which; \
> @@ -67,8 +64,4 @@ void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
>  		      imr_val, ier_val); \
>  })
>  
> -#define GEN3_IRQ_INIT(uncore, type, imr_val, ier_val) \
> -	gen3_irq_init((uncore), I915_IRQ_REGS(type##IMR, type##IER, type##IIR), \
> -		      imr_val, ier_val)
> -
>  #endif /* __I915_IRQ_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 7396fc630e29..818fb71f7efc 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -422,6 +422,11 @@
>  #define GEN2_IIR	_MMIO(0x20a4)
>  #define GEN2_IMR	_MMIO(0x20a8)
>  #define GEN2_ISR	_MMIO(0x20ac)
> +
> +#define GEN2_IRQ_REGS		I915_IRQ_REGS(GEN2_IMR, \
> +					      GEN2_IER, \
> +					      GEN2_IIR)
> +
>  #define VLV_GUNIT_CLOCK_GATE	_MMIO(VLV_DISPLAY_BASE + 0x2060)
>  #define   GINT_DIS		(1 << 22)
>  #define   GCFG_DIS		(1 << 8)
> @@ -434,6 +439,10 @@
>  #define VLV_PCBR	_MMIO(VLV_DISPLAY_BASE + 0x2120)
>  #define VLV_PCBR_ADDR_SHIFT	12
>  
> +#define VLV_IRQ_REGS		I915_IRQ_REGS(VLV_IMR, \
> +					      VLV_IER, \
> +					      VLV_IIR)
> +
>  #define   DISPLAY_PLANE_FLIP_PENDING(plane) (1 << (11 - (plane))) /* A and B only */
>  #define EIR		_MMIO(0x20b0)
>  #define EMR		_MMIO(0x20b4)
> @@ -2444,11 +2453,19 @@
>  #define DEIIR   _MMIO(0x44008)
>  #define DEIER   _MMIO(0x4400c)
>  
> +#define DE_IRQ_REGS		I915_IRQ_REGS(DEIMR, \
> +					      DEIER, \
> +					      DEIIR)
> +
>  #define GTISR   _MMIO(0x44010)
>  #define GTIMR   _MMIO(0x44014)
>  #define GTIIR   _MMIO(0x44018)
>  #define GTIER   _MMIO(0x4401c)
>  
> +#define GT_IRQ_REGS		I915_IRQ_REGS(GTIMR, \
> +					      GTIER, \
> +					      GTIIR)
> +
>  #define GEN8_MASTER_IRQ			_MMIO(0x44200)
>  #define  GEN8_MASTER_IRQ_CONTROL	(1 << 31)
>  #define  GEN8_PCU_IRQ			(1 << 30)
> @@ -2560,6 +2577,10 @@
>  #define  TGL_DE_PORT_AUX_DDIB		REG_BIT(1)
>  #define  TGL_DE_PORT_AUX_DDIA		REG_BIT(0)
>  
> +#define GEN8_DE_PORT_IRQ_REGS		I915_IRQ_REGS(GEN8_DE_PORT_IMR, \
> +						      GEN8_DE_PORT_IER, \
> +						      GEN8_DE_PORT_IIR)
> +
>  #define GEN8_DE_MISC_ISR _MMIO(0x44460)
>  #define GEN8_DE_MISC_IMR _MMIO(0x44464)
>  #define GEN8_DE_MISC_IIR _MMIO(0x44468)
> @@ -2570,17 +2591,29 @@
>  #define  GEN8_DE_EDP_PSR		REG_BIT(19)
>  #define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
>  
> +#define GEN8_DE_MISC_IRQ_REGS		I915_IRQ_REGS(GEN8_DE_MISC_IMR, \
> +						      GEN8_DE_MISC_IER, \
> +						      GEN8_DE_MISC_IIR)
> +
>  #define GEN8_PCU_ISR _MMIO(0x444e0)
>  #define GEN8_PCU_IMR _MMIO(0x444e4)
>  #define GEN8_PCU_IIR _MMIO(0x444e8)
>  #define GEN8_PCU_IER _MMIO(0x444ec)
>  
> +#define GEN8_PCU_IRQ_REGS		I915_IRQ_REGS(GEN8_PCU_IMR, \
> +						      GEN8_PCU_IER, \
> +						      GEN8_PCU_IIR)
> +
>  #define GEN11_GU_MISC_ISR	_MMIO(0x444f0)
>  #define GEN11_GU_MISC_IMR	_MMIO(0x444f4)
>  #define GEN11_GU_MISC_IIR	_MMIO(0x444f8)
>  #define GEN11_GU_MISC_IER	_MMIO(0x444fc)
>  #define  GEN11_GU_MISC_GSE	(1 << 27)
>  
> +#define GEN11_GU_MISC_IRQ_REGS		I915_IRQ_REGS(GEN11_GU_MISC_IMR, \
> +						      GEN11_GU_MISC_IER, \
> +						      GEN11_GU_MISC_IIR)
> +
>  #define GEN11_GFX_MSTR_IRQ		_MMIO(0x190010)
>  #define  GEN11_MASTER_IRQ		(1 << 31)
>  #define  GEN11_PCU_IRQ			(1 << 30)
> @@ -2624,6 +2657,10 @@
>  						 GEN11_TBT_HOTPLUG(HPD_PORT_TC2) | \
>  						 GEN11_TBT_HOTPLUG(HPD_PORT_TC1))
>  
> +#define GEN11_DE_HPD_IRQ_REGS		I915_IRQ_REGS(GEN11_DE_HPD_IMR, \
> +						      GEN11_DE_HPD_IER, \
> +						      GEN11_DE_HPD_IIR)
> +
>  #define GEN11_TBT_HOTPLUG_CTL				_MMIO(0x44030)
>  #define GEN11_TC_HOTPLUG_CTL				_MMIO(0x44038)
>  #define  GEN11_HOTPLUG_CTL_ENABLE(hpd_pin)		(8 << (_HPD_PIN_TC(hpd_pin) * 4))
> @@ -2644,6 +2681,10 @@
>  #define  XELPDP_TBT_HOTPLUG(hpd_pin)		REG_BIT(_HPD_PIN_TC(hpd_pin))
>  #define  XELPDP_TBT_HOTPLUG_MASK		REG_GENMASK(3, 0)
>  
> +#define PICAINTERRUPT_IRQ_REGS			I915_IRQ_REGS(PICAINTERRUPT_IMR, \
> +							      PICAINTERRUPT_IER, \
> +							      PICAINTERRUPT_IIR)
> +
>  #define XELPDP_PORT_HOTPLUG_CTL(hpd_pin)	_MMIO(0x16F270 + (_HPD_PIN_TC(hpd_pin) * 0x200))
>  #define  XELPDP_TBT_HOTPLUG_ENABLE		REG_BIT(6)
>  #define  XELPDP_TBT_HPD_LONG_DETECT		REG_BIT(5)
> @@ -3000,6 +3041,10 @@
>  #define SDEIIR  _MMIO(0xc4008)
>  #define SDEIER  _MMIO(0xc400c)
>  
> +#define SDE_IRQ_REGS			I915_IRQ_REGS(SDEIMR, \
> +						      SDEIER, \
> +						      SDEIIR)
> +
>  #define SERR_INT			_MMIO(0xc4040)
>  #define  SERR_INT_POISON		(1 << 31)
>  #define  SERR_INT_TRANS_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
> -- 
> 2.39.2
> 
