Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 130C18B844F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DCD3112FF9;
	Wed,  1 May 2024 02:21:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TVy3lMJi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8738112FF7
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714530092; x=1746066092;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ozhuoiBKV3o0OcG7LfyolcKbKmaCNyW8qoAG9o3dSjs=;
 b=TVy3lMJifcq0iaZwHQAyT3uLZBQKvhbjaOkUT8wY2q64AzxjUxAYR+z/
 C/1wrdYocWvgLeUj4mY3UTqpkdTOxj5l4i5qTN/GT20u0SOCN67SCDxpO
 zaGz6Y+zBqaNW9nmeRM38RJ1yqHY+4700mHCYfhCAMCCGQETmRe/kbb+a
 hYyp29iEXsa3R8KO6Co1dEyT5srVYxB2LKSNDbO4XQHs+OicCZlbThmkv
 JOvDzqOAV3KrTRNyoANKPMosNB0+Ilr2MDMMfsFZ1q9bE4o9cMDNL3M66
 88/FmRvelFEMF1VHz2Ro7Wwzv0fSjJqK4rqNLP3+QfWQ3BtmYbgA2jSw8 g==;
X-CSE-ConnectionGUID: bHeU43Q6Srm9ynEEI4nQhw==
X-CSE-MsgGUID: 0PlC+yyrQ0Sbo6Yh9n0gqw==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="10427787"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="10427787"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:21:30 -0700
X-CSE-ConnectionGUID: U3WcgjaXQfWvgjP4e7WAbQ==
X-CSE-MsgGUID: bqYQw+EJQLahH1z0CnvjeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="26689290"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:21:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:21:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:21:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:21:29 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:21:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KSOGcAT+DNjZg6iQ0h5kbgU7ccA6NaCZPbSlTIju1wFj4w3/62kC0pdAwYELtkmcgW0P0dn/OWE8PwPRxhWZT+GRAkBrSKHx8tmVsPN2MUXjBaP+kdUrYsjy/lL024MCHkukyKlhOVPBTeQlqBgsJYZqXVLiioWiuPAlUCwCYVeQLdS+YDRMVwF5bcrFaqHMiJPtCV1XydwOUW5TmG80hJEa/LnXI+ICcq3XvQ3GLyhSmDiZoeFx11r4BD9OKO/g5TBQXkt8rTGxTHlbl73O2fqM/NJkWZMvRyA2PRi8KQ1gyJYGnr3lhx1aBoNUHNdgzPvHJEryvJYWTBOcZg7M0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h4XlIsYKsUmMUEPWNnyFRNMiynyhf7GAZOQbq1Inhyo=;
 b=WYdYe6W/aHts4dJ+oAm+hsRQtgJXeD+Fp/RFwtweW2YDadDMrjZPlBbJw7Rbsu5MZNDc823giASgCighVhxwW1RDWMmBHR7OyVbNPWfgkChw5GHkcQXidPvmAhjIzuPaBUaw7vAG2+WGxutm1MdcIRfvYAxaDrsQNDKzJea04eM22DSIrI+P2IOWCgyUJ2+7na8EZJqqjGX4F1uA1MusN6LYZBxjJuDLow6pVOr8ZL2L/3og72Ut03Cm8vlnm7TrFSFhWvwI236c1gCmvz0mRcskBKWuOoQgjoOPdnUdN3Tpzr6QoQTCWk+7aBgNGChBH5cX8IdhZsDt9SLMkLycwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB7731.namprd11.prod.outlook.com (2603:10b6:930:75::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:21:20 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:21:20 +0000
Date: Tue, 30 Apr 2024 22:21:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 12/19] drm/i915: pass dev_priv explicitly to
 EDP_PSR2_STATUS
Message-ID: <ZjGnHK6gqZXEzpmq@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <5d86a48f51ae6fa4c5a3abf098440a94d07de870.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5d86a48f51ae6fa4c5a3abf098440a94d07de870.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0214.namprd03.prod.outlook.com
 (2603:10b6:303:b9::9) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB7731:EE_
X-MS-Office365-Filtering-Correlation-Id: b544b402-686b-4e58-83f6-08dc6985633e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?FOmaq585IPBs6PzzagjjkU+dQWDBtKtMwMB9sowHWxkb6QvLwnvp+wxxS7gk?=
 =?us-ascii?Q?L1Jt1Ut1bbYftHMHUGnWEhb4OWF7ABtoIbKcJLT157khyGLmHyDT17b3iNLV?=
 =?us-ascii?Q?pK6hShrakWI59UeNz3CLQsGqEwj/WTqTnaOzfdNBp2KJ69qDf1EJY4UpvvvK?=
 =?us-ascii?Q?LOzC/EXrEOu1u1DnEDFmeEZRQwZjLd1iIR9mCMoLAkdWSWHu264MovTLsVcc?=
 =?us-ascii?Q?C0tLKZ8NCs6EQ+IwXp2+/HsSPOYEilxMQZ9Ae1P7EY6YUoD9Qwdz+89nCGr0?=
 =?us-ascii?Q?YelEkJcNhymUHoqMkiiT/pKJzHFq54ulKwxyPLohaHtWAofiOHibpNggx1rS?=
 =?us-ascii?Q?ebf5Sn6sz3sSRWfBhhLLLs9hkBqbZGgqibuXeMuzZzKsloF4XTXpmbBZFtAS?=
 =?us-ascii?Q?vfEOlpV/sQl01movgIoLNi6jUp7sR5/bz//lHpsYoJB8C/c0Cn6e28j6A8iM?=
 =?us-ascii?Q?vXPUfm7uExioJgKXOHP/VD8SJk6/+yb+7L4YbSuv/CAcoCsRLWTlJlISsd33?=
 =?us-ascii?Q?hXgQSWBb9xvcSqrrDXUweaKxGgnupq28FvpNKGgXa+qeuZkeRcqYZ2PONRiv?=
 =?us-ascii?Q?AbETg6ol0u7seO/xIndDyLCrZnTu0Wk3xBVuffPclaNRnh0vF8ORUWSz+Icz?=
 =?us-ascii?Q?rbeCsnXRNWmhFStHYbl6eZA9nSYB5atGjD2tlNci9lxrzTuQHkqUGVukvLNS?=
 =?us-ascii?Q?mvt6F9uOf7hUikSAgDvSUPDZs8PM0wUt3AdON2uefCXNB+MmkvBwP1pF60S6?=
 =?us-ascii?Q?UuoVfNvXi+lpgPX0ZC41YMU8xsBpTGtQirF9T9fS4h0mpwCTWCQJc3YOoeOR?=
 =?us-ascii?Q?XPbQKM0mj2KtTXwx2kSVKTHwTrLYqH+Rxrulj8VAN9oPnXT1DCJhZMXDLfaZ?=
 =?us-ascii?Q?0q5zxmmyiqrC6mU8U1wvECoi2cXhAmkgHYhoCDGgq3VDz35qpnw+ZWGwjUt2?=
 =?us-ascii?Q?ptAC6TclMhI0P56bjda8DX8UcdHlZy0qyQDE9U02LeUHVbHtMWKNFDzwrbTz?=
 =?us-ascii?Q?M+MJ9lCMHX/WqdlmxCFK37m84gwfX+jEms0802+VIuR64l1Nv/SPxgtFDE6S?=
 =?us-ascii?Q?tFaS+pZMr2VP9ZRe6EehD0x4MdXZr5Kmp8EemfRVfYesH6dsW47IGyOELKWf?=
 =?us-ascii?Q?ltOFVXaOUf2xqaZPCFxh3lahqZsQOCJ9XcbhdDd7zgDViBPYiS88EmtLKN/T?=
 =?us-ascii?Q?UiTsVonRjBmCsmnjPlGyXiYUVhuwzZS2g1nSOtae19oXeipuHXZaryVhQ5qv?=
 =?us-ascii?Q?uKygKrd36xujwh3OUS2MCfBmI5s5RP82qVm8XoDByg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wHBnyUX64e9YpHjNMx+plJWRunYsKAqVRij7KfwDowiA5xTdamNhwG7J1zcu?=
 =?us-ascii?Q?wwXUP/ecoxeGrmsw8OxS6kBCG+owyJv2GLlNhRYIDreFQp1+qtwJ6WT76ivN?=
 =?us-ascii?Q?Q54SSD+r8QrSK0jUK/aPrLsO3DMW0+k8I/++SLgWFFs3j3H1GFKueSd9bvuL?=
 =?us-ascii?Q?RhRH343hVW/6EVdocqwO4l0rx3sFXtp6GCgNiy9amXOxIqq8JtpiRVGx0fmZ?=
 =?us-ascii?Q?/4OC6VgoK1KXY9iDule1u7aB97YWnb9gPWgcBxeLEVvO58chN088B4nIbHvJ?=
 =?us-ascii?Q?yC1CzdgfPmfqxHfkioJNW+P/1K0OnakkBOOkfpMm/VAsKxJeOPLKyQNOpqeU?=
 =?us-ascii?Q?rfyCyLvSBwziBc/Sgmfho02mQQxvxh4Sba+z3WFultKpjM9qlHZVVpY0Jgpx?=
 =?us-ascii?Q?wGZULUOxvaHdYkFKSTqDZBDalnht3bP1Ojwz+R3OnHuny8JIKa3e/xClPNmf?=
 =?us-ascii?Q?eHj7g+O7lB/pVAAAky/8uXHhcCNc79jPTxXmYaj/fJeIxlOJaVJkhDsVJKKZ?=
 =?us-ascii?Q?ZnavK//2cP3eKft2kn835oL9zoDm5+TW4he4TIiqHgvwxrex27/CcagTtGh4?=
 =?us-ascii?Q?GAFfC5I3qb7ri2xfecXqUgN5K8wJZ/O3U5rkPqAKpDS6qqfqA8J345OpEE4h?=
 =?us-ascii?Q?A8FsySb2JB57NbtjojtSt7jgYwUGIiSS8YyXAgyq6tFiVl+o6Xs5duVkID8S?=
 =?us-ascii?Q?G32zmXSzCJm4hoLfXI49exN2cwBVeIcx0qlHOxaxqlUxOHIxoKhoKlLIkih4?=
 =?us-ascii?Q?1K3HlpXC5dhn/g82t30Gfy/P8jAfGg0NV8YNhLwbWw4I4ZbCM6WiwkbzMxyM?=
 =?us-ascii?Q?hbfoXoxcnEqBW8qePDXIcYKojGstb+mtyN1iliNFMsCRodS9gKDUVQeDPujx?=
 =?us-ascii?Q?kdUrZgDQ0eQ24ki5xRjkaENTXQcVpbmMsfwBkMQevu1KjhcmcCjdBp/c/GTB?=
 =?us-ascii?Q?nJ6TUbvI0zN48p+OGzf9IwfdIDQiKyAlh0s+IokBH1lRQSdQTTaWKyCCztUr?=
 =?us-ascii?Q?K5Ukm1tfvYhe3nfX1BOOqOhJf8MmRIYVBOnNsAbG8rhVTJcQIV+CMw3xWO0c?=
 =?us-ascii?Q?k9lK2fxgLDxE+LuqMf63P891Imy5H++8zNkOH1ja4KsfMlQkAvkSll2R7NVo?=
 =?us-ascii?Q?cvxdcMyLifQfTGKaKfhha1btG7AeZS4MmfZX+xgW34WpNFGuSnagPZfbJZKX?=
 =?us-ascii?Q?2uAv7wOnEZz6VvkTpNNqeoFBwoDl3+sbxGETj+bylYiE0K6TxzV70/IXHexh?=
 =?us-ascii?Q?LmTswaSyY8foB/VTrpaIERGmdXyvU/KYikbuB55Lr5u4kNMknVeTn/fhdUu9?=
 =?us-ascii?Q?Mgs1ei+OEgNtvnOnyl11wKGDYCRNI1hHNK2BHTklQvCqO0MU/9sbmtYACcG5?=
 =?us-ascii?Q?F5NPh0zq4E6Ngt7h58Xt4vpS6laeOGVjLOOuge8PkJI7FSmY8BZPNl8woKh/?=
 =?us-ascii?Q?tceP4k5DfkmSPt5SpCi3D/hk1+gKuupB43QSSvzYfRi4Vk5gJX7YXcupT3uS?=
 =?us-ascii?Q?4IuxbhPlAwW+EZK9kT4gmkcIzNYxBNd7pyHtFB1n4oNuOxqfJDcwqV7iQ9k4?=
 =?us-ascii?Q?eidUtlxlCVg0lVknvYRqAuGjSIAk7bgdVGwmrY/xbwpZiQRYmVQ/KAT7pOww?=
 =?us-ascii?Q?Pg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b544b402-686b-4e58-83f6-08dc6985633e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:21:20.0102 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3We5f1SVlXURbnBe5hGs3H5j87Af0z+W2IdmFftOc7Mm3lnQ6BGojTPISV8PrSna/nKFx4AA9sBVHFhmQXdhpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7731
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

On Tue, Apr 30, 2024 at 01:10:06PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the EDP_PSR2_STATUS register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 9 +++++----
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  2 files changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 2dca9957a06b..36c08cd3a624 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2052,7 +2052,7 @@ static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
>  	u32 psr_status_mask;
>  
>  	if (intel_dp->psr.psr2_enabled) {
> -		psr_status = EDP_PSR2_STATUS(cpu_transcoder);
> +		psr_status = EDP_PSR2_STATUS(dev_priv, cpu_transcoder);
>  		psr_status_mask = EDP_PSR2_STATUS_STATE_MASK;
>  	} else {
>  		psr_status = psr_status_reg(dev_priv, cpu_transcoder);
> @@ -2768,7 +2768,7 @@ static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
>  	 * EDP_PSR2_STATUS_STATE_DEEP_SLEEP to be cleared.
>  	 */
>  	return intel_de_wait_for_clear(dev_priv,
> -				       EDP_PSR2_STATUS(cpu_transcoder),
> +				       EDP_PSR2_STATUS(dev_priv, cpu_transcoder),
>  				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50);
>  }
>  
> @@ -2835,7 +2835,7 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
>  		return false;
>  
>  	if (intel_dp->psr.psr2_enabled) {
> -		reg = EDP_PSR2_STATUS(cpu_transcoder);
> +		reg = EDP_PSR2_STATUS(dev_priv, cpu_transcoder);
>  		mask = EDP_PSR2_STATUS_STATE_MASK;
>  	} else {
>  		reg = psr_status_reg(dev_priv, cpu_transcoder);
> @@ -3467,7 +3467,8 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
>  			"BUF_ON",
>  			"TG_ON"
>  		};
> -		val = intel_de_read(dev_priv, EDP_PSR2_STATUS(cpu_transcoder));
> +		val = intel_de_read(dev_priv,
> +				    EDP_PSR2_STATUS(dev_priv, cpu_transcoder));
>  		status_val = REG_FIELD_GET(EDP_PSR2_STATUS_STATE_MASK, val);
>  		if (status_val < ARRAY_SIZE(live_status))
>  			status = live_status[status_val];
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 817bc372bf35..e6c62512512f 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -215,7 +215,7 @@
>  
>  #define _PSR2_STATUS_A				0x60940
>  #define _PSR2_STATUS_EDP			0x6f940
> -#define EDP_PSR2_STATUS(tran)			_MMIO_TRANS2(dev_priv, tran, _PSR2_STATUS_A)
> +#define EDP_PSR2_STATUS(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _PSR2_STATUS_A)
>  #define EDP_PSR2_STATUS_STATE_MASK		REG_GENMASK(31, 28)
>  #define EDP_PSR2_STATUS_STATE_DEEP_SLEEP	REG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x8)
>  
> -- 
> 2.39.2
> 
