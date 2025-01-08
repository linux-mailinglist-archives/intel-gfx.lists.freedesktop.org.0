Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96699A066F8
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 22:12:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2941A10E1AF;
	Wed,  8 Jan 2025 21:12:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bvxL8a0Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4262910E1AF
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 21:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736370735; x=1767906735;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/4tw3sjt5ABuR1IDSs5K8tX429evtorWghbwIT9Lobo=;
 b=bvxL8a0ZwNnqAc9AtBfXYDBLtmuiFm1UJcsSkSl+SomosbpB5njBjlsM
 8NXxPRHBW3elqi49e/RTu61jLrJdKsIwlrv+QaU/OKxP75Q7L/xywRuHo
 MoT4d1AOWVJntOIgYJizlk5vaXXtXWDQjHwiHPkAelAlfzJQclIbXVukn
 5VN7RIvK39oiJEYp8B/xUk2/3KbunBW4I9Ph3xQFsrOb59YYP279jt9sy
 dY8tvN1BtoJMIVtxOl8lKylnSUgiWbvaslseqp1UUyqN+i9TE9oiTmszY
 BoS0FuXCII/XRL2bqd1qgszoK/oOCkaq3aShRTxcN3k5mOdj1h2w8O52P g==;
X-CSE-ConnectionGUID: Y5W2A7VUT1+FXvKePOyaew==
X-CSE-MsgGUID: JBIB+iMXQiCOh/9tpzj1AA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="40294462"
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="40294462"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 13:12:14 -0800
X-CSE-ConnectionGUID: t3N5iz59Sze19Rl60MOCeQ==
X-CSE-MsgGUID: 4rYTGbPsQWqHjaM5Z2kAJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108322439"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 13:12:14 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 13:12:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 13:12:13 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 13:12:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T/3BJp14RGxcP9S1lbGDBTxt6/3N2LV+0273JYTNP5ZcWePSdwbBghtTVWyBN1zQfbEIEr2pDPt2pQnX1IrQSmhQ55nAray/Ceic3x6o1qwMn5+xb8OIS9tf+/nbDTajcsmNmpl3FKqMcFQdejibq5K5bToQygibjb80JRwDHIhYy+irazk6DmufaM2NV+kDGtJofksX0ynI5KQ0YwuTbsaW4JCxvsT/2bpomaMEZZAhhPV+Y9nevvRvaIokAsGcHP0F4LPjrraym7lpQ9HT8/oXQDsFwv4G0FjFnLLKL8gAiIRael5Rs1KWcdFoECqMvzi417JSbXsvTRhG+q/vOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7U784QHj0uXhI5BqT7Xn9VgRSEkPZlxg9xRUsDGXLEk=;
 b=whS+k6JLttFSl1tFd3398qHta3WqNcVUjmW7WGCEuu4fo6y6EQmEmgdSNdsxX0/cY5gvCYnjHX20+850+wasHsWAOInTK7I6hUAGgyv8xh23u3hCkOBrwAfzOZSptrpbzx2Rmwc+O7gCOu3nkcknyQB7G6U/heVu7ARibRsSG2wgcjlVajGixmsFkIgjmLp5WPdKObi9Ro/w2yLutshYdonVYD4tpTBXrOczjYnxbzFFtnewdInmtOheqpYCtLNqv6WQlhIyV/Zg1lBG2Sb0s2vboHkFvgnEE00zkLLlU3v0YCIZeK/DC3r8O2MGBfznBWVjvF2iLUKk09dOZblbKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ2PR11MB7517.namprd11.prod.outlook.com (2603:10b6:a03:4cb::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Wed, 8 Jan
 2025 21:12:09 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 21:12:09 +0000
Date: Wed, 8 Jan 2025 13:12:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/6] drm/i915: move pending_fb_pin to struct intel_display
Message-ID: <20250108211206.GH3224633@mdroper-desk1.amr.corp.intel.com>
References: <cover.1736332802.git.jani.nikula@intel.com>
 <df61cd56f11628e7b806f0d862e5183002950d85.1736332802.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <df61cd56f11628e7b806f0d862e5183002950d85.1736332802.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR03CA0011.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::21) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ2PR11MB7517:EE_
X-MS-Office365-Filtering-Correlation-Id: bfd53ab2-74c8-490e-670c-08dd30291c9e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?i6h2LqjgMiy8FgIj7Lyh1xl/VJlS02dmtS7fGRRDztil/3BkyHlHpjOPzDc8?=
 =?us-ascii?Q?nseZr+sInqegTAwiKfuM81qRtXyh6cEbioxC3dZCJTk1H/XGYrZGhLHQ4tp7?=
 =?us-ascii?Q?4/jhm8j3J3xTTxxmMvep5YiHKodesybvcNBMwusKW1YE2Mczqm0vSKSHRdX7?=
 =?us-ascii?Q?jSarnB4lE2TYB+hL2xVrTvIXAryXySHZD8Twf7/lzH6GTP/Ym91MhunPSLYW?=
 =?us-ascii?Q?/BMfELeIiApF24czkvHOjAwQtcuOGiWiwx46axu4qa/zO5w4yIvSLUrr7ufW?=
 =?us-ascii?Q?9De092C9MZHpZGyx8Sryz4XROlLcq+crUTy6LlFmFPTq3/O08QgSfGCHWXI7?=
 =?us-ascii?Q?kEdDbqxe1yDCgS0+eNzKHyUF71Za5+pwenXXwNr8HLbyQ4Vna/tm0wK4jkMZ?=
 =?us-ascii?Q?tSx18c9hwKprWAGIyCQpntnjLCSrrS12npxi7DTu3LHnRKLrKrG2aBJZShW5?=
 =?us-ascii?Q?RFPbxnkVxT9uTwNagH6y5kgrUcMRQJdN/9day7kHbrWaZhu0AcZAmVFbO00Q?=
 =?us-ascii?Q?/klVHa4f37AvhnTtaoDJjwRlVl2nkZ2w4UoeFq8cCNkwJxqlXrl5cbAov2Nc?=
 =?us-ascii?Q?bhFIIo+ooGqp0KG6aH5dPFtr3Txxwke+NeaKgvNNnoJ6sDBOoc8mm/FI5j7+?=
 =?us-ascii?Q?ndGqmrLNkQAoJ+ShTK16fVxyEVSyx6UDGaurY91wM1jZEM1MmvHiPXZAGtpB?=
 =?us-ascii?Q?WCoIJs/dtveNWOi/Eqv44gPE6WTzgEfn76xLTSZL/wZPMZUhfaN7ghdI88rh?=
 =?us-ascii?Q?tzrmuoNu34lm2/uk/FZHqPKJ6rWmPt/0c4rtIDQ2m7Dhi7OvT3Yv1FV0YDxn?=
 =?us-ascii?Q?T/gOqL7t7UBlRDxqb5IhNQoQOZel1aKio0mutbOafHvzGkVYWCwkX4lPxbWm?=
 =?us-ascii?Q?8mQWYQH/YvFsjKqDg2P25byKBK7RcBMCTmZZXS3Ni9ZCo8GMAWVLL/ZW1mKB?=
 =?us-ascii?Q?cSRCOKMT86AarsNesmT+G4oT3oRPpUWFX4skK7ktsnxd2xci/b2sHuk/t2Ab?=
 =?us-ascii?Q?ECo3Rr+84bSYn8YVucA7ti5OmxVrlc4scl0C9sY0jOXd1J7mrPMIIvij+iTY?=
 =?us-ascii?Q?dBVNX9Ba793StzNf2SbcbtqcLImLyaHZoNx94lWnCJzgIaVzSuE0wKQ8MWPF?=
 =?us-ascii?Q?ITwo/IwLcpzaLpzpNsgI7fa4XAsia2F3/vRsen/k+MYx1BNNn6cuCWqExEGF?=
 =?us-ascii?Q?b6tom/+8yfHKzICevmw4/1DwbysAZIVAwkYt1xFrf6hye4v2350Z0glJ83Ci?=
 =?us-ascii?Q?/l/LDVEw3xElBV4N3KB+SxiVOAbqrRGEbERPifLgoWiCpNVRnTwUTyoyloSZ?=
 =?us-ascii?Q?NEW+XAYJyEgsFvpXQWlZdOdZk7yIdlitTOFrJyUWjPjUXYwWkDy2Q8AA27pu?=
 =?us-ascii?Q?gZ6/jKnZPgK0QkQEFIFon6Mf1e7u?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3AHUEUBb4HZ0z5LgCaPvb9k3+wsWSGacHwCNf3eZibcTxumn3xsV/EgCXvCT?=
 =?us-ascii?Q?G897MXlwcaryZtREheyrLIryzU1awh8KTWHPrb+xL5g85U043wiMGFkJgT9p?=
 =?us-ascii?Q?k3Fg3FRWaLEUc2ot8S74rcofXtWYbYvLLHIxR4vRoFF8ZYKcY1l3stHmLsCi?=
 =?us-ascii?Q?exP8VYOp9C+h6OqEXvKIL1lo/DGghZbkluYzuoOZypVX53YnDtMsG+iLgn1j?=
 =?us-ascii?Q?J3XBZcCkCBOHP/znVmBfr4EMlUUkSyMU4TN5dUQrUY4lIz+aO9gjy1W+irbo?=
 =?us-ascii?Q?auybfsvibNGJ+wFJh+5Ssfc9rzw9O9qab2s2bCIDZed3gsehNVoEwNlh/2ze?=
 =?us-ascii?Q?xoDHsbFZl1/ttCuJhg9GRcP9L3HhL9YSr0NFirEg5X8hnv+tLejkuXg0nrwA?=
 =?us-ascii?Q?HzZLQDwKX8Ub/h20IY19cwIl0AWvSB7xyUgw5bulNwMG9In3UCLWpVlagOY1?=
 =?us-ascii?Q?vgpjHAZYmKT9+rHUsImThpjS44BCZYX99IWWwVrHfCZkuv0wDvqLet3vaxaF?=
 =?us-ascii?Q?VYStwCbrDEpod4ZuXdo4pqYItq6iwfxhbBKP7Ce0MUf1M7CilZl+W0hDHZXN?=
 =?us-ascii?Q?jhYpP2Oy1VE/I03ob9T6fipTrT2TLQwSXd/2awZQyauNodIVsOGZrOuc4RFQ?=
 =?us-ascii?Q?rPIagonD5YlIc1sPEgzRn4f9NlZDgk1YD8wbbF829EIKk1gSbGVFWlijpQt+?=
 =?us-ascii?Q?MO0hVd27tlkFKwrlusfZpdhYPqCVyB5BEgp6uRl5WFgB9mi3xVFeSJVMo15c?=
 =?us-ascii?Q?0A9izjrOxkvcMlBJghqVW038W1DGyJ0R3hoWTVvhLAQ9/ZeD4JiHge8z27OO?=
 =?us-ascii?Q?pCSF4tAMcIxzwKAQg+sVIboUi0elXBxrsIEsCxvRfwPWx5yOa7rUybGBjUNC?=
 =?us-ascii?Q?x7Mm1+svDAv4ulVfDqapT7pl/eTBwMzufcsPgmBXzzvUQvJtMVQik+fiuxvp?=
 =?us-ascii?Q?WHCwZ0LbknTBs2BvZlQsobz5qBEN9sKf5+2C9pJAW0mcXzKpVBMh82hsZ4ro?=
 =?us-ascii?Q?dEf55+ULa5Leeldc+RAcpuItJOWPHzJq6fzt+kS+pixNbUoMO0oAUaXpN9CW?=
 =?us-ascii?Q?iIwgt/QXOvjW5JXLGDsmjy0PwWSj18yAerO2fC4KKd3E4S2xj6jzL0dZ78Dp?=
 =?us-ascii?Q?5zDvUA0M1CkxsfDAsbBz4Z/Sx+buuo+pXN//2VEu7lh3GnkfD6JgIhX2aBj1?=
 =?us-ascii?Q?MxVYC67yBUHJE8JBnnEPSi34vRcJDz/ixLqGCPvoF3iU65ZowMMkgOIm+8iK?=
 =?us-ascii?Q?mwvO6mtwKp03dDkiidKX6igZ6YLKjwB/B4eVtTtakj1pwXz1sM5N1pyHami0?=
 =?us-ascii?Q?0EClqSkq3URuSxGy5XEB4V6khpUjkGEjYByJXixNjrjGjo9IMzQAEJWalOxs?=
 =?us-ascii?Q?MDU5DeGD9C5M3yIVQnCdH5j67ClvClndb27f12rKE4gRSZGUBA/P1RlT6hYs?=
 =?us-ascii?Q?1iwLHRbw6/6nS/6XJd8UhihdOTafpGNfP6L1AnzpxQ1w9ue4YLtIBb5cE+XJ?=
 =?us-ascii?Q?OWV9CqKUbTQ8bFAISc63aJIBL1Ek/Mc5jxiONBgLE5IDBS5CVl5EpqNk2t2g?=
 =?us-ascii?Q?+nPg0MsZh+jQKiYBjsQVP/Nerxxec2AYjwkHj/W2ApQ/KJL808EY6m8Iu2OI?=
 =?us-ascii?Q?mw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bfd53ab2-74c8-490e-670c-08dd30291c9e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 21:12:08.9939 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5xH1uDPWfrzScZQ0+axxMCA8HpHYQfzqk+2ilEBnt3mcnRvBLMVB5b8Qma8oC5y8vKqeOEb1u8I36yePFad/TW2bAFBsVpGaKPFFqAGRZjo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7517
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

On Wed, Jan 08, 2025 at 12:41:17PM +0200, Jani Nikula wrote:
> pending_fb_pin is more about display than GPU reset. Move it to struct
> intel_display. The restore sub-struct already contains reset related
> members, so move it there.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h  |  2 ++
>  drivers/gpu/drm/i915/display/intel_display_reset.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpt.c           |  5 +++--
>  drivers/gpu/drm/i915/display/intel_fb_pin.c        | 10 ++++++----
>  drivers/gpu/drm/i915/display/intel_overlay.c       |  5 ++---
>  drivers/gpu/drm/i915/i915_gpu_error.h              |  2 --
>  6 files changed, 14 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 554870d2494b..1970d4c15090 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -512,6 +512,8 @@ struct intel_display {
>  		/* restore state for suspend/resume and display reset */
>  		struct drm_atomic_state *modeset_state;
>  		struct drm_modeset_acquire_ctx reset_ctx;
> +		/* modeset stuck tracking for reset */
> +		atomic_t pending_fb_pin;
>  		u32 saveDSPARB;
>  		u32 saveSWF0[16];
>  		u32 saveSWF1[16];
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index 3da70bdbd9f6..1e6421d51c51 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -41,7 +41,7 @@ void intel_display_reset_prepare(struct intel_display *display)
>  	smp_mb__after_atomic();
>  	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
>  
> -	if (atomic_read(&dev_priv->gpu_error.pending_fb_pin)) {
> +	if (atomic_read(&display->restore.pending_fb_pin)) {
>  		drm_dbg_kms(display->drm,
>  			    "Modeset potentially stuck, unbreaking through wedging\n");
>  		intel_gt_set_wedged(to_gt(dev_priv));
> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
> index 8b1f0e92a11c..8254e8a2b82c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
> @@ -125,6 +125,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
>  				       unsigned int alignment)
>  {
>  	struct drm_i915_private *i915 = vm->i915;
> +	struct intel_display *display = &i915->display;
>  	struct i915_dpt *dpt = i915_vm_to_dpt(vm);
>  	intel_wakeref_t wakeref;
>  	struct i915_vma *vma;
> @@ -137,7 +138,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
>  		pin_flags |= PIN_MAPPABLE;
>  
>  	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> -	atomic_inc(&i915->gpu_error.pending_fb_pin);
> +	atomic_inc(&display->restore.pending_fb_pin);
>  
>  	for_i915_gem_ww(&ww, err, true) {
>  		err = i915_gem_object_lock(dpt->obj, &ww);
> @@ -167,7 +168,7 @@ struct i915_vma *intel_dpt_pin_to_ggtt(struct i915_address_space *vm,
>  
>  	dpt->obj->mm.dirty = true;
>  
> -	atomic_dec(&i915->gpu_error.pending_fb_pin);
> +	atomic_dec(&display->restore.pending_fb_pin);
>  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>  
>  	return err ? ERR_PTR(err) : vma;
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index d3a86f9c6bc8..ff5efd4544e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -25,6 +25,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
>  		    struct i915_address_space *vm)
>  {
>  	struct drm_device *dev = fb->dev;
> +	struct intel_display *display = to_intel_display(dev);
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct drm_gem_object *_obj = intel_fb_bo(fb);
>  	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
> @@ -42,7 +43,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
>  	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
>  		return ERR_PTR(-EINVAL);
>  
> -	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
> +	atomic_inc(&display->restore.pending_fb_pin);
>  
>  	for_i915_gem_ww(&ww, ret, true) {
>  		ret = i915_gem_object_lock(obj, &ww);
> @@ -97,7 +98,7 @@ intel_fb_pin_to_dpt(const struct drm_framebuffer *fb,
>  
>  	i915_vma_get(vma);
>  err:
> -	atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
> +	atomic_dec(&display->restore.pending_fb_pin);
>  
>  	return vma;
>  }
> @@ -111,6 +112,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  		     unsigned long *out_flags)
>  {
>  	struct drm_device *dev = fb->dev;
> +	struct intel_display *display = to_intel_display(dev);
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct drm_gem_object *_obj = intel_fb_bo(fb);
>  	struct drm_i915_gem_object *obj = to_intel_bo(_obj);
> @@ -143,7 +145,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  	 */
>  	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
>  
> -	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
> +	atomic_inc(&display->restore.pending_fb_pin);
>  
>  	/*
>  	 * Valleyview is definitely limited to scanning out the first
> @@ -219,7 +221,7 @@ intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
>  	if (ret)
>  		vma = ERR_PTR(ret);
>  
> -	atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
> +	atomic_dec(&display->restore.pending_fb_pin);
>  	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
>  	return vma;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index ca30fff61876..60ae5e3bc454 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -793,7 +793,6 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
>  				      struct drm_intel_overlay_put_image *params)
>  {
>  	struct intel_display *display = overlay->display;
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct overlay_registers __iomem *regs = overlay->regs;
>  	u32 swidth, swidthsw, sheight, ostride;
>  	enum pipe pipe = overlay->crtc->pipe;
> @@ -808,7 +807,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
>  	if (ret != 0)
>  		return ret;
>  
> -	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
> +	atomic_inc(&display->restore.pending_fb_pin);
>  
>  	vma = intel_overlay_pin_fb(new_bo);
>  	if (IS_ERR(vma)) {
> @@ -896,7 +895,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
>  out_unpin:
>  	i915_vma_unpin(vma);
>  out_pin_section:
> -	atomic_dec(&dev_priv->gpu_error.pending_fb_pin);
> +	atomic_dec(&display->restore.pending_fb_pin);
>  
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index 78a8928562a9..749e1c55613e 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -224,8 +224,6 @@ struct i915_gpu_error {
>  	/* Protected by the above dev->gpu_error.lock. */
>  	struct i915_gpu_coredump *first_error;
>  
> -	atomic_t pending_fb_pin;
> -
>  	/** Number of times the device has been reset (global) */
>  	atomic_t reset_count;
>  
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
