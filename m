Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB013CDAAEB
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 22:35:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9260010E0BA;
	Tue, 23 Dec 2025 21:35:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FK8+4GQw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9115910E0BA;
 Tue, 23 Dec 2025 21:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766525717; x=1798061717;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=W0RA6r/gq6Uo+mju2oRHcviTDSl9qeIZel+c2rUv8Ns=;
 b=FK8+4GQwoydxrAUb3IZLn/XI+Tq90e5ZIdHkSjK8rxqHIHEHa4md4O2s
 6CC5osaXTlUIokt1nUynLbUv7eTm6psSKkyihYAkJkbff/lQDk7LbVFCo
 qNbYj28YobBwzWd80ynoJ1Pq8pJFPFRcEZdjtF0Az51lPXTCIu4BQepuC
 TJW3Ifws9Nzu8BIJfMD+CF8SK6bnDoDpZuHq0q+3lKT/Qevn6wb+gDGs6
 X0sx1M89YbRn0lTvzymjGEpv5+FlBFDgx/EBUha3AX6Wy+Ubqr5mr0L4W
 ZyWSci3SoyczjYD6L56eOSZlSUIYM0jYvUcWkaNMFj9gtJE9SRz9dlPoJ Q==;
X-CSE-ConnectionGUID: d5SP7sN/QZ68nWrU7vr72w==
X-CSE-MsgGUID: BEKJalDpRb2n5aR63MTN1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="79826817"
X-IronPort-AV: E=Sophos;i="6.21,171,1763452800"; d="scan'208";a="79826817"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 13:35:17 -0800
X-CSE-ConnectionGUID: HYLVDeK5Rae9j71F9OpG2A==
X-CSE-MsgGUID: XSOIbn9fT0qQSh9e18hGiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,171,1763452800"; d="scan'208";a="204404923"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2025 13:35:17 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 13:35:16 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 23 Dec 2025 13:35:16 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.53) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 23 Dec 2025 13:35:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vUEOIuT6rjQulwGbyFRpLmWW9pw3XYXDxFKJJH/b92+nzv3tYl2Off/vANHcwMFbIYIeDBm/sWpweCj+DP+ZZmvnQ0jctOZJWh0CUu5FYkKZ4TggU8mkWT2d6kVOzAB5Ww7YU/c4PVpgT7mOLLEqtLAAj4Y7h4cfOv0zkKcAbpWHgRNIOPM/00HeMWsqusengTGJyCkhSehJxkmMqsn+wRZq65a5Em7Pdse1rey0hrGLy9n49IKkwAoub/XfFI733JGacF97sJs5wJywraKi6enGRmT+9nwDfv+5g0jMXcb6BNHEAEl7+4/sCfATtdejtEqIhoiq5kgZogzLYtxOhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B6UJNnYcYuuxOlaj2yKsNPaJ1EF5TE8FWcb38adkvPU=;
 b=mJ9daRqc52bPRVfCh5DjXnG+sIyq8eXFtpvU2ZNYiZekrQx+lJWQ6mgZxyryazTco0OzJLiQkk6v6G8LgDxwbnYZfjdxDMy61fzWWMZr0sPhw/JrlKwvxQXmNdTNPi5M0YIgxbPn+P4tXpO35aVgv0Eb30iZya/iOafwqBcQUs6qXC8KqL3LGVJqaM5Al2dME1hCPulmsQ72o8CyKXgugXPGs2QFAFTRz9eizholETaye4Ie0ro3p0h0bzLBH6yn6m8gLMCPk5u7tjnL5id1o90h1h1l4H1ThpJBI74FKyUuN3BCG7pZOVEHeqaw3zLE7pRnOwNKFd7/5DH+tfrrYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW4PR11MB5823.namprd11.prod.outlook.com (2603:10b6:303:186::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.11; Tue, 23 Dec
 2025 21:35:12 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9434.009; Tue, 23 Dec 2025
 21:35:12 +0000
Date: Tue, 23 Dec 2025 13:35:10 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/display_wa: Keep enum intel_display_wa sorted
Message-ID: <20251223213510.GE1180203@mdroper-desk1.amr.corp.intel.com>
References: <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-0-a2f7e9447f7a@intel.com>
 <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-1-a2f7e9447f7a@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251222-display-wa-13012396614-timing-of-mdclk-source-selection-v1-1-a2f7e9447f7a@intel.com>
X-ClientProxiedBy: SJ0PR03CA0060.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::35) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW4PR11MB5823:EE_
X-MS-Office365-Filtering-Correlation-Id: e52c8f3d-b253-4f5a-d893-08de426b2768
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qVmQPLcYnfnI5Pd1j6L7uNbls2FzhsS9KFezzf7mJ74zI0qcHbmBc/gqFOrW?=
 =?us-ascii?Q?PszujuyDaxCqFcUb3lQ8qIorxT5LESKx6ml/5IWzzjLp9p3N/Lh3nZMs+snu?=
 =?us-ascii?Q?kqMwvcfS9eRq83brJwWubWRRUiCc3YgtyuiB0UA6pAaFa0J1gKN4GMOsRaW/?=
 =?us-ascii?Q?7UpzkkqOPqYCWuOyMuq38PFh3LtHHe8pGYbVpPdY66lqyDn8/KJQ0akgsGl/?=
 =?us-ascii?Q?NhXmX8pGY62IZGvRENlT2+MIAmm/eaokcneU94iK99OUob9cY3b2UNyC5rRY?=
 =?us-ascii?Q?HWlk+MMCFwfe4sDmHWc1MGjcroIhxuU9SlAlRRgR6HIig1jIFWhmunG8hZzd?=
 =?us-ascii?Q?x1MiMm43xJ/OjqtmNIb3FEwJC5zqVaVrOdgDbZ0choIHEOpbYdU/TytMWwGQ?=
 =?us-ascii?Q?uOkruUxz9dFYQHETKIBiJnHujUPycQTAlyNa5PV5wMusDVAEkN0dq7CQW81S?=
 =?us-ascii?Q?8dVqkrX1kYrkgbjC9M5j39/zGb0YGOsVHF6rX9b1Uv2KpqJfSyIm1HAmCSkX?=
 =?us-ascii?Q?2AJf0ikQtJHl6CDOvdcN8L2N+cAblmVNld6AzvH05IOTIUM50pXrWUz7zKSD?=
 =?us-ascii?Q?5sMshD+3hR4bMCL72tYRdO71ck82s2XZpNc4F9Sha0yaYrpgvitA31lX7km8?=
 =?us-ascii?Q?MQfPymzGqVtNO0sQPeYR5q7j+B3qKm7PFPgvZcEjPMWzOMrRJ+8k8QIMEvIE?=
 =?us-ascii?Q?A3MuwlLM5fT2MfmK9rcMbYpUnJ8zPqsBAkk6HKvHmMqZP4JwpFLsSH0oSBAl?=
 =?us-ascii?Q?I6lDEaaJXPA3Pqe3oUGyBiP/cjP/NpMjsBu/sFg8Fn9kzZ4KQfkp8T1CeiMZ?=
 =?us-ascii?Q?McgQyItYcdZjyJvJ3kyrJ19UfDb5JmpO1VMUirYSte+DOts7cLqMChIvQg0L?=
 =?us-ascii?Q?k9pPnMuUmbCKJJT48+2G/TgWV+mTWCld2x6UznEomcvp4gNhh2LBSNt9Ow5i?=
 =?us-ascii?Q?67DqxgDxDTKB2jOLTBsJABRirXveTXfLiDc5oKO8HPJ8LJIlGRlpE+QxWZte?=
 =?us-ascii?Q?9sbxcfgfXQRk9crvrRUELVxdGlNmKgyvB8BAgcRra2fych8UmOB3Z2+CguiB?=
 =?us-ascii?Q?mFe6GK4z9xmw+dnmVrEE0jU8HezlbOLPOjvCdZukfwt8vjZGQA+dGH0hH1iX?=
 =?us-ascii?Q?ObnyXTjjtf6TpEoq2SgajQBxKEhCfBeVdD2yHlvyy1ltZQSHoqoyBCppHgV4?=
 =?us-ascii?Q?d1gh5jv1Y9SSstMl750YIPAFVMDWnHTBQ47cLMLwz+YxqBRFt0rcKgQsi6ii?=
 =?us-ascii?Q?c+VVY5xROTWNs5ARdvkU0BTfUqnTLMzseXtUH/66wHvSWXG5rLL5zyFaAvOW?=
 =?us-ascii?Q?IA2ZAwztxQMwoz3fbDvXr4PBA/vsIfXG5/5eaSqlaP5v5qGDv4aD2NoryiRp?=
 =?us-ascii?Q?R4AHcuiLdgdnSEXHcQ6nVvL7rYEzqA2ZyHqUE78AvhEJiOHQea3Mxv6H+VVa?=
 =?us-ascii?Q?i/SWgX+9cFepkkqWzQe4nRQXq/MeJujC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Goo+JqsnClL2yp48E0FlEmxgIEhxkTlOeBcnkyVV/URwA16Ny7+JxIcXM25Z?=
 =?us-ascii?Q?CjIOy/nsIomOLSrxUAFru8ErmmOLtMC6pC8m2fsBMff6+88IIu7kev3NwdER?=
 =?us-ascii?Q?6OWc7t4bwDohdRvVRa2JlniGFPJVkw1plhd3CzJt/o94dcV0r+ZnLVnSxuaT?=
 =?us-ascii?Q?JqszSvKp1/cQnYKuMKkYcVeOdB2VrQQZNR46icPi9WpzraTUOYEWWCC8jMzk?=
 =?us-ascii?Q?fY8eaHBgGnkk97xniCoSqcjKU3AR1cGfWYKv7MqMe2ZclEUik48mOfH6umuP?=
 =?us-ascii?Q?JN9ernkQGoob4ruVYoWGX94B3N6/dhEFU24KbSOF/s1bSL32K3ClaWIl4peB?=
 =?us-ascii?Q?TX/B176j/nd6+ARZ7IBNHhYVjj9Y+BWkHMWX0HX27kvBpY1UXRLBb5kzBzB5?=
 =?us-ascii?Q?MEWp9S+9sBBR2mMnzdkHqOdHo9jV1CKCX0M8PkYsV214mZZYJnsF+tU8wtag?=
 =?us-ascii?Q?TTOfsZNb2XsyuqBADwhLvGCr0dv0A3zT+w5Gi6QeQGlhEObNwOP3qVujQFU2?=
 =?us-ascii?Q?gj2JNKzHZD8O9wrFOs4citCfe7kSjcbhxUo1a5ZuA6jilpt/AJMtTUFORmgi?=
 =?us-ascii?Q?UTN6v7gItSs2I3/pkg46w9zYATV3l7/n9x42puXVbcjNXSHOKEVovclILcda?=
 =?us-ascii?Q?p+KqcqxeXUoZXneoPX+8YCKgUra1EfthPhh52yOqdgOrCJKwYkjZwjpIEhk3?=
 =?us-ascii?Q?ctorX9mZlalNWA3ejb8PtAA1rzMi7nFV802P620NJ7fpGafRTFpXyy73CRCe?=
 =?us-ascii?Q?41c09tw8eG4lSntUN7bQd68c+7Mi006cxnl7Lxos46m7GYNhdEUch12TJkgi?=
 =?us-ascii?Q?Gct2/Lo8fuIFjqk0j2qe+n2YxBrYaNTeST/y0vH7htVxzGHRt2z5iwJ7Qq7c?=
 =?us-ascii?Q?gCH6RA3nwRqvpy+ksUxONNXJuKN6r0+HuIQ+urSQCERj+v6utc6kvUrqVF1B?=
 =?us-ascii?Q?AJFU2phWLMYWxkzFk6NIDdbcs1UO6LY32wIG0zY6UKJt4azQFrSxZWbOb2AO?=
 =?us-ascii?Q?kgd9VZn+YZFD/zRSnw8nWvx5nmd+CZ3DArUUxgokuSuvomA3pzAqAI3/1KLC?=
 =?us-ascii?Q?IxdGOKAeIYsjCFUzw2NZXdnXUihV93SIAc7JyYrMX3NuDyVaXmnZEw06z2ab?=
 =?us-ascii?Q?V/T+ZfMjV2KapMYtSyubtYjMjKnnuGdF/xUgaUmApNn8S+lSAa/qDXa+28QX?=
 =?us-ascii?Q?d7eWDGPuONr7LBvP5HyMyadRLFkrZTp1/qqgSTefA/RHCEsGPKWksPUP/BhV?=
 =?us-ascii?Q?x/qWbCJgsmbqLX6WE4MOBwAu5ycPmUsGGLbRu349OE6TO8lS+MYv0Skmi9hx?=
 =?us-ascii?Q?BaiBEUWh8U+czmhu7Q1TykauaZ9fglvpZ4Ov8krXgfaFCYSGpdstjeSnxrLX?=
 =?us-ascii?Q?vQZgXYZVqzy0U1R5n4rvgjbE6g8wp370ohJQ8c1trzaTBx0u+G7t9Ar5S1i0?=
 =?us-ascii?Q?3L9bJFSkb8rNlWA61Fb3TQuorvzQe2yaAraztPZTByK62bxd90GhYn6QHTkz?=
 =?us-ascii?Q?z1y2xAtGLfjoYJQYCDTeHscEQ6Rb1cgGIDhaIb0khY2Y+GEuitVzjPVhwbFP?=
 =?us-ascii?Q?y0hB8wz+fEF8WmCnFeqcxjeajUeM2BgU403c0wR1c5q2WeMRQPB4FnNV2oa/?=
 =?us-ascii?Q?61vZwYelO4zKhA5EEcbBcDAyK5tDU2unONkdRJtsjRuBOm42/wpAuTjPV2av?=
 =?us-ascii?Q?i+pc6lw49MZ+BecUcxSQ8mcsjYAE6ys+cSS9zB1l5wsm6Wv0aqOzO/GEiaA8?=
 =?us-ascii?Q?lXSDZScPZonMhRycrxt1BULnHUqBpoM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e52c8f3d-b253-4f5a-d893-08de426b2768
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2025 21:35:12.4809 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dlha4Yo+hFd8xJ6dvni5YW9FkvPTiqL2wWnO//AgJfnikBqx0wO9kikDkRmm1R6UHgyaqELKKdp/gcFh+ObbZc8oyh71fawBrGm2svNe0kc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5823
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

On Mon, Dec 22, 2025 at 07:18:47PM -0300, Gustavo Sousa wrote:
> For a consistent way of updating enum intel_display_wa, let's sort it by
> lineage number and add a comment asking for future updates to keep it
> sorted.
> 
> In the same way, let's also keep __intel_display_wa() sorted.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> --
> Note: this can be easily reviewed with `git show --color-moved`.
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.c | 12 ++++++------
>  drivers/gpu/drm/i915/display/intel_display_wa.h | 11 ++++++++---
>  2 files changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index a00af39f7538..2b360447e92e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -62,18 +62,18 @@ static bool intel_display_needs_wa_16025573575(struct intel_display *display)
>  bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name)
>  {
>  	switch (wa) {
> +	case INTEL_DISPLAY_WA_14011503117:
> +		return DISPLAY_VER(display) == 13;
> +	case INTEL_DISPLAY_WA_14025769978:
> +		return DISPLAY_VER(display) == 35;
> +	case INTEL_DISPLAY_WA_15018326506:
> +		return display->platform.battlemage;
>  	case INTEL_DISPLAY_WA_16023588340:
>  		return intel_display_needs_wa_16023588340(display);
>  	case INTEL_DISPLAY_WA_16025573575:
>  		return intel_display_needs_wa_16025573575(display);
> -	case INTEL_DISPLAY_WA_14011503117:
> -		return DISPLAY_VER(display) == 13;
>  	case INTEL_DISPLAY_WA_22014263786:
>  		return IS_DISPLAY_VERx100(display, 1100, 1400);
> -	case INTEL_DISPLAY_WA_15018326506:
> -		return display->platform.battlemage;
> -	case INTEL_DISPLAY_WA_14025769978:
> -		return DISPLAY_VER(display) == 35;
>  	default:
>  		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
>  		break;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index a68c0bb7e516..56b586e38306 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -21,13 +21,18 @@ static inline bool intel_display_needs_wa_16023588340(struct intel_display *disp
>  bool intel_display_needs_wa_16023588340(struct intel_display *display);
>  #endif
>  
> +/*
> + * This enum lists display workarounds; each entry here must have a
> + * corresponding case in __intel_display_wa().  Keep both sorted by lineage
> + * number.
> + */
>  enum intel_display_wa {
> +	INTEL_DISPLAY_WA_14011503117,
> +	INTEL_DISPLAY_WA_14025769978,
> +	INTEL_DISPLAY_WA_15018326506,
>  	INTEL_DISPLAY_WA_16023588340,
>  	INTEL_DISPLAY_WA_16025573575,
> -	INTEL_DISPLAY_WA_14011503117,
>  	INTEL_DISPLAY_WA_22014263786,
> -	INTEL_DISPLAY_WA_15018326506,
> -	INTEL_DISPLAY_WA_14025769978,
>  };
>  
>  bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
> 
> -- 
> 2.52.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
