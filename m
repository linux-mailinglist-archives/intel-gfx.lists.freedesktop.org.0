Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6351195C06E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 23:48:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 063A110E111;
	Thu, 22 Aug 2024 21:48:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J9WtXEYO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FF8410E10F;
 Thu, 22 Aug 2024 21:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724363330; x=1755899330;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6A2SKFhd1ock1zllh19rqg/PSVGmUd2Wi+TRdjBuY60=;
 b=J9WtXEYOm/h14ZSUkBUENlOfMp5uBKEabaAXFCDN9TQNqFYZ5dXW1g02
 nWjJJo7+Y4CA8P+/Jv5s1BgN3owdzdZ3X19cS12F5fzQKKzuKS0ONt91v
 YleUfRzbGnD/HnLTvWza3w9jzNdeZ90AHkejze89+ogmtMVJGPUcZ99ou
 Ci/4A4Mr4AkTQYSJKozz5lruB/xmXcYPQGECOigmbreLwFfIvG+I5e5oQ
 vpXDOOZvjlUqvSQTlNFH9R6pjvQsmahk0GbT0hy4cXEhcD7z3Dnf4dkxi
 BL7mW1sOP+HxLKH5ZLvVvi+xR8v/5tKOmwVGxVmMiAXaLsWIWGxxtpKsR A==;
X-CSE-ConnectionGUID: 7uwnwzOGQGeokoDU4C8HOQ==
X-CSE-MsgGUID: 84fHv409RBCpalSUvITa4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="26604964"
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="26604964"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 14:48:50 -0700
X-CSE-ConnectionGUID: UeMBD5kYTHOiswa7wN+9fg==
X-CSE-MsgGUID: gotJ7iZHS6W+NOnH0RjWlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="84773339"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 14:48:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 14:48:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 14:48:48 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 14:48:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GW9C4EPIdTDbkvRoVw/i8ym5gPvkuqdXhiujLXLnRb/4obtVEcDLpBMcShU5LnDJYmI4xS71geBVxPkMf/7MH55R/dUEPGhRN+JSb0/DpV7CdGrrXcK2tMv0B7QLAsBrn1BCaJeb6VU1T1Eg/Gz0tDEg9Go/4i+e3a05VCu4p+atnw2Sv5OrAPRKrV+321q6EBqTBv2NPjFQDwxhF2a/VdBL3zI9OC4vOlLu//KyAufIDOfnHWyI8EZL1rqUGSaMBykmNHQffiWAG839KKmm+p+mDFfXKzS+S5phBEtPEXSR6yLFaxxrsBuKTq7Vudcnba5YAT8Lwzau+QSz/PF0dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u14Dj9DEkdaFLnyPiwieRrQGk1Rm/38ZEiuXVn/lB6s=;
 b=FQ7hioyNqF2U//1w0CAnZUDWtgF9ndKnpNtdUdileP4gR26kXeTziFnYhRWq7ikRHcBkcmYVx4SEClXA2Ac4laFtT4hCyDfcrnvEfuOIEf7Z4OZeILNX3fxx49pefAwtjUiuJCzbS7RiF6hOd0OmQcJY6ufwyuGRuAadico3yxDzUDxUYvBUvyVXcV748r+YeZtD3EIVc/pxFya8Jh1pUQ1FQIxxSewy9UaUeu9QG8ilYftJT39i/66h9G2e3VW76TVCyEDdkmOozA1VPMJWPyVR1y+bfO+8Wi61oYmUMLKsEl1tnV/Y3gyOLIg8QsO/Djf952haH+kzbqUUehtM7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB7094.namprd11.prod.outlook.com (2603:10b6:510:216::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.19; Thu, 22 Aug
 2024 21:48:46 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 21:48:46 +0000
Date: Thu, 22 Aug 2024 17:48:43 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 7/7] drm/i915/display: convert params to struct
 intel_display
Message-ID: <ZseyOw4qC2vfuxa_@intel.com>
References: <cover.1724342644.git.jani.nikula@intel.com>
 <3e5cc1744eaf4708b08303e3e7e194035d7941cc.1724342644.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3e5cc1744eaf4708b08303e3e7e194035d7941cc.1724342644.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0295.namprd04.prod.outlook.com
 (2603:10b6:303:89::30) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB7094:EE_
X-MS-Office365-Filtering-Correlation-Id: 21fe3d1a-0420-496a-dc60-08dcc2f432a8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6+kJ34SwwOo8PfGAKlc4y7mLj6EzueIldxoZXlZMYG1hZ3XPEJ9juZFjATMz?=
 =?us-ascii?Q?GJa+6X/JchLAcixAADiJ+S4w9UI7MUEj/A4CyjIw9UFmHOJJibBfzjGJvCXq?=
 =?us-ascii?Q?jTtjPJb28vzjj1s9HssFmb3zHb93CzR49ywpViRNohcwb2fJIADsJYWLFhz+?=
 =?us-ascii?Q?IbKYQbhND16i1PbR4e0CqH/91mjgIofVqudbksgD034Eyh8mP8MxfQ6yHsKZ?=
 =?us-ascii?Q?XssB1x0qBdjOygvoGwrtodyqqs5gbeyvmuFP4nEK8ayCsoZBCIC1wb5g2omZ?=
 =?us-ascii?Q?sw3YsVXAb3nfmgM71GihFBrfT/xCe/oR9xZVSP1R9QIZb5ydeKTNqB7o8JCk?=
 =?us-ascii?Q?l4mq6YgxB4GX2KTDEw1PBCiuf7OLcCFjJnD2tKtJU5KH0o/jBOny3ndDwhP3?=
 =?us-ascii?Q?MonQG/pE6QSxXMnkRZUOYqN+sHSUKRQlEpXQrnAUz35JoHP3b1mT3bIGaQ4I?=
 =?us-ascii?Q?1HXl3Yh+XsZZuRXWEhvbXZ7Y6X9jpOwQnYqkyzf/tWn26bGmiB2tQV23GgKJ?=
 =?us-ascii?Q?G40FrsG9dThhnQP2hK1kZU86kT5PHhf4MT0iZ2Qgpu5mD5s9ehy6xN4N0PAz?=
 =?us-ascii?Q?CrNrB1bJHqafFbfceJD+b71XexUlcco+7tx7qojEOHyEvZ59PJOZNjFZaeWC?=
 =?us-ascii?Q?/OyXAK8IOY+/SCeNrhDW6rXzXoaXUz9EPgzjcauPgP8dufZVmH1u1DPcyJ0P?=
 =?us-ascii?Q?sBdHO46s+BTHIRDwJY26915Cr3NwZN9gXPWOYtxaUxpf8c6MiL4w1Yt90HQG?=
 =?us-ascii?Q?t7KcXwJkdwoq3+0VmguR+THoUDmJzQ82f13mH0YYT8xh/SHJm6lKniEMQyTe?=
 =?us-ascii?Q?5lVCIbb6kfIsuHNNtzAkXHMWANXrgORiR3JejzuMPHYVr8x7JiY67qFap5WU?=
 =?us-ascii?Q?UTx+NoUrQ3ZZ3+3/YP/okhxsTLTI3DBRpa1Ys7rHkg9qwXWPRt/3KRdkNoBP?=
 =?us-ascii?Q?QZTI0udPzrMvrhfVG5a/esGH2GiVdWLkUjNya1Dr0bPfnU+45rggBV5bdzk1?=
 =?us-ascii?Q?SXJdB1Vf8kv1bT7xNagbPbxj12HPiXXu3tfpzbROIo3Wkeic1c1JgyKIT3ni?=
 =?us-ascii?Q?80sr9xCo/A85viUFLxkKsIlHQIbksBS84eYvpATHAmEJPE0NAZ4/CswyqPc/?=
 =?us-ascii?Q?OGTFW7YakLEEqiWaK2107nWQvPKN5kerc3+hQUR08wpYt50bDkkrvZaibj6I?=
 =?us-ascii?Q?7smvKX202Co8hMAsyhi3hcJziDuYbixByc/lUYPByBavkyCPk+RNdf4fmwE6?=
 =?us-ascii?Q?6bF51UAvbDZ4Giu7mZTyjMAmNBb/CpG31eQa+/CysWmlS2IdmwryX601+ndA?=
 =?us-ascii?Q?tSjX6MeUVd6l5ICiKKSM5aG+8qt4ZgyzZqH8pPh1QQM2gw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0QBWmFiTtuelEcvGZyziPvA5AQSW9LDktqRmhyd+/rvzKYY6Qsch/ZLJBKa9?=
 =?us-ascii?Q?j0YBDOmVLOPgRpUx2jd5GxAAcrJM5yBzIRuu+z6yQA2IHkQdjT2S0pOEV7Pb?=
 =?us-ascii?Q?WNFOecDhDZmiO8c6K4IAU02xAzZJtV2ovQK0bCX90ibEwwZ1AGe1BGUfqTNv?=
 =?us-ascii?Q?AMILpbk4LLbr57HwmSZaL6xzQOvHsRQfHd/BaenJjLC8fnUBbruvSFOpKUdd?=
 =?us-ascii?Q?jpXYpF2kHLLKXEPkQj+Bwuppt55VXL3nB7gC9B9sgE92Be7/Sw3PuolE3Vhn?=
 =?us-ascii?Q?VstTMWvUU8ESjfPvA032rvkNTzrbpOrmIVfW/htbZzqZ+YSt2kjwkxqWEO+b?=
 =?us-ascii?Q?DLON69lT+Xdzvf6+kzyIS+Huk1rUNb0goXuXA10ohBqVJbQympPmNxhtj9at?=
 =?us-ascii?Q?M3UM8KZOA5sB0dH987KfAuY7kNCHj23o8Y0IlJnHUBQZa43D/1KzBL4ZZXbi?=
 =?us-ascii?Q?Ypy2qsk3lq05QAyUHN4Bib0Yrc1CcS9pL0jDlSDfHS6Kb+1AsK1zY5NnZDqo?=
 =?us-ascii?Q?KNRga1Kfls5hUm8bBvwEzasZNrAnA8VvQXRr4u/WU4LlzZPDLWhzcDIuxFC+?=
 =?us-ascii?Q?v+62LLfevW1sc1L/ZzbKs4INfJmcnZPZL3wlaDsWbE5vW33JRmEj/1B/VUdv?=
 =?us-ascii?Q?R9ynj3r12aDydTVS9B02g5v58o0HQhfbrRufjOUfnZMkgT0wkMFB9TwK2cX3?=
 =?us-ascii?Q?2Xv0RO+xD6xvaJilY9aY4vlQ0viS7vQG4QwmGDoak7li1nXv+oga4+qzbqZ/?=
 =?us-ascii?Q?lo/stl7lbdShaQlx5LmHXFz3AGds8yU/Ie7tdd9XOLX1lUT7m62FIkE+ezV7?=
 =?us-ascii?Q?mlVq8J2UdlMS9tJ9m9/sngexFDkaDuUDZQ4C+9LrLR9T/tN3dqrKSBOgk5k0?=
 =?us-ascii?Q?sInRJieZwV0lm0vOQqMW+pZJe0uWuh2QsPUeiIJtX1OSUVWWS8SPFkrZn9UN?=
 =?us-ascii?Q?SqzjPC6FSDbDWYZJQ4MagVOqvFvUrPWpqw9yfvL6K7xL4tqXGsR1hQKr2moU?=
 =?us-ascii?Q?VD+kEWHEeGt/h+TPSWAJxGWGzqGcTPtPy71aVwpwGP5AVXgTeKiLIW1K3YQK?=
 =?us-ascii?Q?ta+dMUZKwECP6x7Jw7jCmMG13UtJH91TpuhzhvayShyzI83zHM5BP66Rd0ZT?=
 =?us-ascii?Q?WLDR/wY1MQb29r6dLyiz9jRNIZe2IKra7uHwrYVWJCKt4udxMZHVNQB3RupF?=
 =?us-ascii?Q?GkQIiUQ8PZpUNc5AtykvXrr/eW8MPPQ7EmdxRxADjQW30oUayyVjjgLmGFpr?=
 =?us-ascii?Q?V/8r7N+V4oljISYnswOo34wFkIeBWCffWSADyAmLX/425Aqwp8TSXg/l2loY?=
 =?us-ascii?Q?e1be5ddMGiBf5amJUJOhNkgQ91c4e0TsymbmwUVidZw3bZEmgYkZ5EbfgleZ?=
 =?us-ascii?Q?9F5p9L/j7+T0p/jAmLJ12AevTEFER0f4Os32Lk0HqYOjtUCtvpsX8pm34wrO?=
 =?us-ascii?Q?VI7moBYnH05yqGr4QVb7zPdZySp9e5+I5BrYOUI3uJSCjUfheaQnqHgqGhn+?=
 =?us-ascii?Q?iYHQUXcRcpDlA0HuNhE4EIfBn25TNwJ3tgPfQ/9/V7CcImOyiZcLTdTHFdi/?=
 =?us-ascii?Q?BQvOIO1/eFW8M7BaGm9uP6z8LHaft66uUEC/IDXNOrqc5lN9G0w85sl7qs1h?=
 =?us-ascii?Q?Rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21fe3d1a-0420-496a-dc60-08dcc2f432a8
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 21:48:46.2524 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YeUgmRW7ZijllT6jXQOM1AkxmxWp82z5f1q3D57++K9vzNA74hlmzGVxBKqGrBxOn8qwJJIGrUj6gicSBcUA5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7094
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

On Thu, Aug 22, 2024 at 07:04:55PM +0300, Jani Nikula wrote:
> Going forward, struct intel_display shall replace struct
> drm_i915_private as the main display device data pointer type. Convert
> intel_display_params.[ch] and intel_display_debugfs_params.[ch] to
> struct intel_display.
> 
> Some stragglers	are left behind	where needed.

                 ^ just noticed the extra tab on this, but
likely present in the other commit messages where you had
left some cases behind...

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c      | 2 +-
>  .../gpu/drm/i915/display/intel_display_debugfs_params.c   | 8 ++++----
>  .../gpu/drm/i915/display/intel_display_debugfs_params.h   | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display_params.c       | 6 +++---
>  drivers/gpu/drm/i915/display/intel_display_params.h       | 4 ++--
>  drivers/gpu/drm/i915/i915_debugfs.c                       | 3 ++-
>  drivers/gpu/drm/i915/i915_gpu_error.c                     | 3 ++-
>  7 files changed, 16 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 0cf0b4223513..74f527647aa9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1073,7 +1073,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
>  	intel_opregion_debugfs_register(display);
>  	intel_psr_debugfs_register(i915);
>  	intel_wm_debugfs_register(i915);
> -	intel_display_debugfs_params(i915);
> +	intel_display_debugfs_params(display);
>  }
>  
>  static int i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
> index f35718748555..ec3ed29a83c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
> @@ -151,13 +151,13 @@ intel_display_debugfs_create_uint(const char *name, umode_t mode,
>  	} while (0)
>  
>  /* add a subdirectory with files for each intel display param */
> -void intel_display_debugfs_params(struct drm_i915_private *i915)
> +void intel_display_debugfs_params(struct intel_display *display)
>  {
> -	struct drm_minor *minor = i915->drm.primary;
> +	struct drm_minor *minor = display->drm->primary;
>  	struct dentry *dir;
>  	char dirname[16];
>  
> -	snprintf(dirname, sizeof(dirname), "%s_params", i915->drm.driver->name);
> +	snprintf(dirname, sizeof(dirname), "%s_params", display->drm->driver->name);
>  	dir = debugfs_lookup(dirname, minor->debugfs_root);
>  	if (!dir)
>  		dir = debugfs_create_dir(dirname, minor->debugfs_root);
> @@ -171,7 +171,7 @@ void intel_display_debugfs_params(struct drm_i915_private *i915)
>  	 */
>  
>  #define REGISTER(T, x, unused, mode, ...) _intel_display_param_create_file( \
> -		dir, #x, mode, &i915->display.params.x);
> +		dir, #x, mode, &display->params.x);
>  	INTEL_DISPLAY_PARAMS_FOR_EACH(REGISTER);
>  #undef REGISTER
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.h b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
> index 1e9945a4044c..a1120915a5a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.h
> @@ -6,8 +6,8 @@
>  #ifndef __INTEL_DISPLAY_DEBUGFS_PARAMS__
>  #define __INTEL_DISPLAY_DEBUGFS_PARAMS__
>  
> -struct drm_i915_private;
> +struct intel_display;
>  
> -void intel_display_debugfs_params(struct drm_i915_private *i915);
> +void intel_display_debugfs_params(struct intel_display *display);
>  
>  #endif /* __INTEL_DISPLAY_DEBUGFS_PARAMS__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
> index e82bd72d32fa..1a45d300b6f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -173,14 +173,14 @@ static void _param_print_charp(struct drm_printer *p, const char *driver_name,
>  
>  /**
>   * intel_display_params_dump - dump intel display modparams
> - * @i915: i915 device
> + * @display: display device
>   * @p: the &drm_printer
>   *
>   * Pretty printer for i915 modparams.
>   */
> -void intel_display_params_dump(struct drm_i915_private *i915, struct drm_printer *p)
> +void intel_display_params_dump(struct intel_display *display, struct drm_printer *p)
>  {
> -#define PRINT(T, x, ...) _param_print(p, i915->drm.driver->name, #x, i915->display.params.x);
> +#define PRINT(T, x, ...) _param_print(p, display->drm->driver->name, #x, display->params.x);
>  	INTEL_DISPLAY_PARAMS_FOR_EACH(PRINT);
>  #undef PRINT
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
> index 48c29c55c939..da8dc943234b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -9,7 +9,7 @@
>  #include <linux/types.h>
>  
>  struct drm_printer;
> -struct drm_i915_private;
> +struct intel_display;
>  
>  /*
>   * Invoke param, a function-like macro, for each intel display param, with
> @@ -56,7 +56,7 @@ struct intel_display_params {
>  };
>  #undef MEMBER
>  
> -void intel_display_params_dump(struct drm_i915_private *i915,
> +void intel_display_params_dump(struct intel_display *display,
>  			       struct drm_printer *p);
>  void intel_display_params_copy(struct intel_display_params *dest);
>  void intel_display_params_free(struct intel_display_params *params);
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index bc717cf544e4..f969f585d07b 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -66,6 +66,7 @@ static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
>  static int i915_capabilities(struct seq_file *m, void *data)
>  {
>  	struct drm_i915_private *i915 = node_to_i915(m->private);
> +	struct intel_display *display = &i915->display;
>  	struct drm_printer p = drm_seq_file_printer(m);
>  
>  	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
> @@ -77,7 +78,7 @@ static int i915_capabilities(struct seq_file *m, void *data)
>  
>  	kernel_param_lock(THIS_MODULE);
>  	i915_params_dump(&i915->params, &p);
> -	intel_display_params_dump(i915, &p);
> +	intel_display_params_dump(display, &p);
>  	kernel_param_unlock(THIS_MODULE);
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 96c6cafd5b9e..6469b9bcf2ec 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -660,9 +660,10 @@ static void err_print_params(struct drm_i915_error_state_buf *m,
>  			     const struct i915_params *params)
>  {
>  	struct drm_printer p = i915_error_printer(m);
> +	struct intel_display *display = &m->i915->display;
>  
>  	i915_params_dump(params, &p);
> -	intel_display_params_dump(m->i915, &p);
> +	intel_display_params_dump(display, &p);
>  }
>  
>  static void err_print_pciid(struct drm_i915_error_state_buf *m,
> -- 
> 2.39.2
> 
