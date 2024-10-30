Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3739B5844
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 01:09:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B4DF10E3C7;
	Wed, 30 Oct 2024 00:09:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LfcnKVx6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B66810E012
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 00:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730246969; x=1761782969;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=sEEvJkmRbnVVQJzn1E1TvgW8wvtIwB7qVp1mLbh0wrU=;
 b=LfcnKVx6CfaP0ULdTxn0WFUmmTwE4aVNjVCdqdcNgPEWGtE1brHAi97n
 2hGo6zxBNw5hG9w0nyAd5cFnH86vx28jL1/vxSARYAGV649rBze7N4HHn
 gkPKm0IhNpsQRESBZ/X8en2neQkeYBlnorjI/RnSf0qb+PEGruwr7pZrN
 9/umgxk0G9Wfxhxg/1U2g+tzCBl9qbfH/AppZp8xmecm0UMbmjXLdHsTA
 Ly4AiF0YAE26f9s4pmjvq4TR8/MXyl+ilAE6ppf4s5CjDJchqQzgFgTN+
 Rhsn9Lt9Lrrt+G9nbM8IzDzWWXJRMSc42MG3YQXEX6CdokSsJ8tMFxoNX Q==;
X-CSE-ConnectionGUID: nPzBb2PjRDyuP/2vVL/7GQ==
X-CSE-MsgGUID: J8leVmV/Qh6jffCSC0UoAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29771109"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29771109"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 17:09:29 -0700
X-CSE-ConnectionGUID: eh39oBk2QQGJOVaYFrOEEw==
X-CSE-MsgGUID: qVnOkfSMTfuf3tAaAFwt2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="105452126"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 17:09:21 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 17:09:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 17:09:20 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 17:09:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FgXp6PUlVTe5Q3SmSDSCoDkj1hODf3dZ++iE2OoFlK85xl2i3tu0j6pcQME2bR47R4T/FijEORtKX72i6HoJzTKpyF0gjMvPN269ym4YdTqGRy3g88Bz0cMmLyagYWgUjmGifIrNzQwEDfVM0B2To/n2VZjibPvEKBoHfgk9cTAN9ZBdrspPwJrEkE9qv5Rs3EY9ebCuRzqH6mD/2JNO36bmO0zzSBb3K2b6KvJkAvO4nAwOhl+cfbJogRDVoPYXAb8S8pLV5WuiqExy4X/BRGw7f4c9Uy254tiSzaj1OwICDOUYk6ZDS7KvXcfKGUdtLjOjzWKODStBcwvFChvlOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7AS48XJwcW42k389abHl5cjUj7P+H/0EPGrl7DLc0f8=;
 b=QRdxcIDTuQvXTZt7/bD/tYOb7SboFyf69meZ6jRtR2ROSnWoVsKZ5n3SDE5iNnVRfbkud7YDUKpubwITVWosc+wgu/PcCDI6g+NkXgpPuulFd8xUiUqkMLbWtUFa6vk5btOeBHrCtdRdWGcMH0q1gj9S16VvnqGlf/3H1LhxGlBEYlEtT0Zh3LGUxiC8DSFCWs3m8/XJF3PyZIzHBH8LaAq+Fb1zixI9+f/9MeaM2zzdRjxirE5jJ6zBAT++7X8961+7xsikILpFvMwUXf2p6cQlOHbmLJx3Y5CEA7FRU9uI8TUyZc1CeI09+iKycEtaIzyEnw+os0iyWzIepA5hyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ2PR11MB7454.namprd11.prod.outlook.com (2603:10b6:a03:4cc::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Wed, 30 Oct
 2024 00:09:12 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 00:09:12 +0000
Date: Tue, 29 Oct 2024 17:09:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>, Umesh Nerlige Ramappa
 <umesh.nerlige.ramappa@intel.com>
Subject: Re: [PATCH 5/8] drm/i915/pmu: Stop setting event_init to NULL
Message-ID: <20241030000909.GC4891@mdroper-desk1.amr.corp.intel.com>
References: <20241011225430.1219345-1-lucas.demarchi@intel.com>
 <20241011225430.1219345-6-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241011225430.1219345-6-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR08CA0018.namprd08.prod.outlook.com
 (2603:10b6:a03:100::31) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ2PR11MB7454:EE_
X-MS-Office365-Filtering-Correlation-Id: e3e47ac4-aa69-43f1-0ccd-08dcf877156a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?W0jJvy1DwkWvR2ekaxY8hb8JaquzDkuj39B2h7qkr6BD3vuYXHPgLodnBD1G?=
 =?us-ascii?Q?gwVabz53AqU99OFqoo/OT/FXbznL3OfAZbZkU3zHTWrjsx6/uQueS9Ng9UZg?=
 =?us-ascii?Q?kZe/SLODnBz1+zx1QjIsmaCdUDMDHTggep3eEwVxnnU+/ixUJKBF+qOvxMDx?=
 =?us-ascii?Q?E22jojNQkxniYO72LBDT8J4cfF6EGlV7eyTVAEdQZCjZsfNmXFHKBRJz8Esn?=
 =?us-ascii?Q?3qZpEIyglfJhGLsUjrXdIaaMvs/ARG+f9DE0rPRck+x6bsH8vfz71gi0cRjf?=
 =?us-ascii?Q?UJ+ApkXLmysq67ATj5U+fDNG5aLlYTQ67ViPpZyTaz3J7zvdwJCR9n2r2QAY?=
 =?us-ascii?Q?ZqDSGVWyNF54ekRtXLWpMuLOF6XkfvPOCUg6/nEwCoCQN/CyP+msAFePne7j?=
 =?us-ascii?Q?h6o50ze5rU3Wop3guKkP2ksiKQbRO5tESiO8gkYFGKUbuEW2bGkB494f1Du6?=
 =?us-ascii?Q?35NK8QzdRZ28exCKWkeiHCtSG4Wiwy7xveuag9iebaZ/gP5GiLpa5XBNvVof?=
 =?us-ascii?Q?b2baLU0LQNNPMVGeZXltzPVR8H8SI6KYme3Anv6MH9kti19dRu2bX217ZjUj?=
 =?us-ascii?Q?c63taBpyPvKs1UVajM90heFzT3aio+IkGxUf0NvDBsw++MoybCstJP9ucM3K?=
 =?us-ascii?Q?RhZDjUdT4cpGmCjZ+dAjJfgMr6qkC/Ne66fakUGdGcNwkwvuO3l1z4r2kf4K?=
 =?us-ascii?Q?NXt8uUpBKwmHUviIBAmU/4NDThg4NwQteu5MNbZqejZY0+DiY21ho92R/l8y?=
 =?us-ascii?Q?b0j5qYbmCgX0fz39kGfuAhhSPXZKXrYYJ+l/1GqxEpTm5tPSMBGGFquCacDd?=
 =?us-ascii?Q?JjHKHZ2jKLNLtG+u2pVyGVbQoM94PQ+yffbNNyl5oG1k0gHnLevcxm2nAaAR?=
 =?us-ascii?Q?Br3LL3xzUMou0t6WHkj2+hiDRyq3eowIjg3ssQzNeW9MkZ9lISh7xvR8qcfV?=
 =?us-ascii?Q?JY3nwKhZ5TBEVeJO3vyClv3SERWyK9kojSWUhfBLn4/awZZi7nRKybVPF992?=
 =?us-ascii?Q?ONlA0Es45TIXt3oYyIswwnIoaeyhH/xn9m0GxfcUiuk1d6ICXICIOaWvq8Pn?=
 =?us-ascii?Q?+dor7uAr7Q/g+hOLQvJdKu1HAewm8EW/H8VxOxkMVolXjsBQ3co9kFBz6cUv?=
 =?us-ascii?Q?nSDiB6Ryef3ql5bGptHQsqnHvdQPZ5KbNKHfL2ljfwiEfEGG05QM+S/WVBB3?=
 =?us-ascii?Q?gyaiPgJSD6CyufR4fvoRnvr7qBBwO+dISaQ8XtIMd+86kWbSq7AVMc7qVhcU?=
 =?us-ascii?Q?Q064cjnEx7G5QgAhh6icXKIbU0A/TQ8nA2zEC1i0Ho/v0E7TeUKkyaotyvYi?=
 =?us-ascii?Q?MzJUhafDnriozTPDDzBzPb7B?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vm2ETRtxB+PULkF0MHcNEQGwdx7tga3oS+iPu8J9v9Q3bLM0aDK1L+7osXSr?=
 =?us-ascii?Q?rS4X5sYYoavx4VJoALoiJyI+t9LztcBI00Rn3vcoKi4b5LIO5mqazkWz1ypM?=
 =?us-ascii?Q?Ds1rSrtlDJd+lkKxEroLCfFHVrpEfv7UoNa3XAWRMVagz0XDOnyRywcTZJU/?=
 =?us-ascii?Q?LYRhfQpC4xQ9J+Wv5tFqOJ7PATB1hwSOPfRZYuh6lN6vM7vy6v6CT1FTsOTp?=
 =?us-ascii?Q?jtJvQ7NWKX6V6e8s3/+zr/vNexy0+3haIelSqnoj+fRaFCdawKvpKC8LfIVr?=
 =?us-ascii?Q?iXGg282FkmQDJJqxU0agU//lp84+riPs5p+CkSQ/Tf0D2s1k9vSEbQHerhjN?=
 =?us-ascii?Q?UJv0cTCsfAxfyj5eRuJ8HasiadQvPI6xnDiBPS9wbABf0l0FrxCj9xqE/Pvr?=
 =?us-ascii?Q?D8aD8ODKeYG0tyLSmo8YSrwOY+WPfcaX1c2yV6AyJ0doPzQo2egcj1Hu1g+7?=
 =?us-ascii?Q?IAeiXmEfF26JTtIMLlc2NO8H8guvDcboWDhI/iEnSYkI41Uo5E0cEmA6a2A+?=
 =?us-ascii?Q?8Egg7HzEEq/94r3eUOA95ZEnHsMmmHnPItYOpqZa5zWbWDWLg0GPQFfzEMgc?=
 =?us-ascii?Q?udFk+v+53s7LRJjfkK4QvgymkT4BNuX+G1WSkYD3H4UwNAVLSFSsjVBesd71?=
 =?us-ascii?Q?4f/2NcQgKgZ8aKKMClynuW+3hhftzTMuWSgnv+2qfJvhppfOt12DpTDRx0bF?=
 =?us-ascii?Q?9nZ4wRCDXHPZ3JPdYkY+P2kxm1O6ILSRF/NsGrHeprSryR90Sozki4uLhyrq?=
 =?us-ascii?Q?LrzZUcl2Z4DIOk0ZXRtubjDwA4/yxGQLPwOETNtyMhNqeJ5F9gu6uTI8qq3E?=
 =?us-ascii?Q?2T/pmkxi7xboqsg/v6S5R5spNuOs4kbkjJpWh16R5AANVaZWWbiJJX8d2Q01?=
 =?us-ascii?Q?dpJNUvCpKqasmCuwIoH1xGUbB4q1vNKjUYwOeDasKdKGXeKtHvib5XA3srDn?=
 =?us-ascii?Q?cURNl3KG/rmvrGibBWQMY9wEVSOhbOAhVxIAMlOqbCjsj9t+yDwTwauwM7b/?=
 =?us-ascii?Q?hA+igQMDpVMMJgFp9VzwXuIbu7p7cUdgwLF749tnKSkQP1PjNY9qu5RuVN1S?=
 =?us-ascii?Q?symfcHeJH+HE0I4knFYu9OvRvRZvgRNXQRRYvLML2EhPkz26aHTh2sEfl3dH?=
 =?us-ascii?Q?RRFktSniGt6b7Iea8Vs0YKZ7Y8QCcJ0TIJen5+cucFqsvmFXDALpysqyxn/f?=
 =?us-ascii?Q?/2r6io0DxQJJkSQjg8jPGgHKNVSltCHA5QqrGrUJcqKJtBEKeG4NM+cizeuB?=
 =?us-ascii?Q?EZ1m1wKcQAa/WhUyA8JQSMSSdR7SKVlSqLdtIKJwiZM71xObtqacx3y4k6eQ?=
 =?us-ascii?Q?tewa48oPgdG4Wx2rpvgSADAdfufNTOXb0YnY0UY5MvDl5315XhB+lLtcFDN3?=
 =?us-ascii?Q?8ycxSNJjqBdGM++3GDIEqpA6kzNDEqcNnxP9SRyw52j82ZZLi3gV7wIveStq?=
 =?us-ascii?Q?A55CEYpULBBD85O12JJ8JbDcTk0P+N2B4eYTbf5gyZsYQPKiHpiysNg0z+T8?=
 =?us-ascii?Q?v1oZ2EhzZKm/STO1u6oWWaVoZHfRca/I9t8xEzcsljOmcI4/41JZuEF6ckTV?=
 =?us-ascii?Q?qVzr02ERMqXj7ZKmMQujZXxPcrpQ0+or83aaHHsh9pIJGrN3YMESrPOdwpBC?=
 =?us-ascii?Q?iw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3e47ac4-aa69-43f1-0ccd-08dcf877156a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2024 00:09:12.7070 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DZ/r6m4fXO0+CKr8ignZr1TE2dSuS/8iRVpbHoCKQ1p+rBz8MduUprUwiQBL8bXbjpWDM7PLGbzIST1zWoypJxNob1da18Q1dl1xXxEhT2Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7454
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

On Fri, Oct 11, 2024 at 03:54:27PM -0700, Lucas De Marchi wrote:
> Setting event_init to NULL is mostly done to detect when the driver is
> partially working: i915 probed, but pmu is not registered. However,
> checking for event_init is odd as it was supposed to always be set and
> kernel/events/ would just crash if it found it set to NULL.
> 
> Since there's already a "closed" boolean, use that instead and extend
> it's meaning to unregistered/unregistering.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 19 ++++++-------------
>  1 file changed, 6 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 2e435f51867db..409e10d8190a8 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -303,7 +303,7 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
>  {
>  	struct i915_pmu *pmu = &gt->i915->pmu;
>  
> -	if (!pmu->base.event_init)
> +	if (pmu->closed)
>  		return;
>  
>  	spin_lock_irq(&pmu->lock);
> @@ -325,7 +325,7 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
>  {
>  	struct i915_pmu *pmu = &gt->i915->pmu;
>  
> -	if (!pmu->base.event_init)
> +	if (pmu->closed)
>  		return;
>  
>  	spin_lock_irq(&pmu->lock);
> @@ -1170,8 +1170,6 @@ static int i915_pmu_cpu_online(unsigned int cpu, struct hlist_node *node)
>  {
>  	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
>  
> -	GEM_BUG_ON(!pmu->base.event_init);
> -
>  	/* Select the first online CPU as a designated reader. */
>  	if (cpumask_empty(&i915_pmu_cpumask))
>  		cpumask_set_cpu(cpu, &i915_pmu_cpumask);
> @@ -1184,8 +1182,6 @@ static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
>  	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
>  	unsigned int target = i915_pmu_target_cpu;
>  
> -	GEM_BUG_ON(!pmu->base.event_init);
> -
>  	/*
>  	 * Unregistering an instance generates a CPU offline event which we must
>  	 * ignore to avoid incorrectly modifying the shared i915_pmu_cpumask.
> @@ -1258,9 +1254,10 @@ void i915_pmu_register(struct drm_i915_private *i915)
>  		&i915_pmu_cpumask_attr_group,
>  		NULL
>  	};
> -
>  	int ret = -ENOMEM;
>  
> +	pmu->closed = true;
> +
>  	if (GRAPHICS_VER(i915) <= 2) {
>  		drm_info(&i915->drm, "PMU not supported for this GPU.");
>  		return;
> @@ -1319,6 +1316,8 @@ void i915_pmu_register(struct drm_i915_private *i915)
>  	if (drmm_add_action(&i915->drm, free_pmu, pmu))
>  		goto err_unreg;
>  
> +	pmu->closed = false;
> +
>  	return;
>  
>  err_unreg:
> @@ -1326,7 +1325,6 @@ void i915_pmu_register(struct drm_i915_private *i915)
>  err_groups:
>  	kfree(pmu->base.attr_groups);
>  err_attr:
> -	pmu->base.event_init = NULL;
>  	free_event_attributes(pmu);
>  err_name:
>  	if (IS_DGFX(i915))
> @@ -1339,9 +1337,6 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
>  {
>  	struct i915_pmu *pmu = &i915->pmu;
>  
> -	if (!pmu->base.event_init)
> -		return;
> -
>  	/*
>  	 * "Disconnect" the PMU callbacks - since all are atomic synchronize_rcu
>  	 * ensures all currently executing ones will have exited before we
> @@ -1354,6 +1349,4 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
>  
>  	i915_pmu_unregister_cpuhp_state(pmu);
>  	perf_pmu_unregister(&pmu->base);
> -
> -	pmu->base.event_init = NULL;
>  }
> -- 
> 2.47.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
