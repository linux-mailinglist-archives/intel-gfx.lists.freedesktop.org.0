Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E70299D8B0
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 22:58:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ABDA10E0CE;
	Mon, 14 Oct 2024 20:58:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jFCbUxme";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 603FD10E0CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2024 20:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728939529; x=1760475529;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=x2MVnym1h2H1x3a+HyIv08weXdl+vLrTWHTR34nKKR4=;
 b=jFCbUxme6Su1PV3aE3dVBSlruq3BD1LLPZw0i5DqGcdw19kZYbLt/VkZ
 pTgAC/vVHHgPU9hWCaFPAQnPI3nrnRIswSahRokAwotGzKlYgqoGUIQbS
 rsB0bfFEJKWDl0vXp5QDvBL1QG3U6bZ71TKR4OvYDQ0q8efgStrVTjIda
 39jN3i0jaFui+7IgP2xxEi/pxGNjdOUkXSqwgSEr1pdU6cE0+kE4njYkY
 3oc5qIObyoKTqiavqrn4AOqXo/e4mHUZiVY8VOMbus8iTg88OZ6C4sGc8
 v51zAIrZs/HamJo0i9ETFUqZJSmTVRUsToY7OvNtG7sNn0x9rSD/xH4p/ w==;
X-CSE-ConnectionGUID: nZgu9z/ATEWPy7523mxXIQ==
X-CSE-MsgGUID: T7LXd5EOTPSDlD0pGXY4Jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="38886263"
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208";a="38886263"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 13:58:48 -0700
X-CSE-ConnectionGUID: Kj04zoc/RqyN+Hcf1rbRWg==
X-CSE-MsgGUID: QsTk8uQWTYWdBR+1jR9dDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208";a="77556888"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Oct 2024 13:58:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 13:58:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 14 Oct 2024 13:58:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 14 Oct 2024 13:58:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BCSuvPJFe6nj06cWODolTTfoB/kEeWQ7HaxiBnZSZIvxFbE9x6lEarMmgmJB8Iva/A2nSXaJeGkrzw6ljBIinL8CIYFXQUjZ8+WPka40Dg1SG9VfklE/z35Ka+N+AgasdNga085/NVH8HtakkQAM3Enr84Tq1ZEQ6CvaPpuPiTXh6/eWQsdohoX8By1z+7GY1ia4kfUFPzLcVB97Pv2dAxtZj2rntOUkDBXwZPHyDOL5nrLhhBwHGXZgGhmYHRzr4Vaw7dsyexTMScyIaXDntuvx9Y9fvqXaPtmc6WXFbQanq5p93+38c7A4gy6BVklH7TzFn+YNo75TxDUagPs0eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y3e4aIa90E5WHY/KDONs7iOSJwlx0YbXAR18xDTpzcw=;
 b=bBZmC0kLGjd7BUKhfX+G1pINJv9jBVpkDV0dxxjxH5zMmn71uPHLDXU22mljC52zgdN5mV6KUyqky9Az3b0ur2X+KmEOn1rKQgFwt+BNH7+bbeYikeiqrORTbK5SG5adoiBq/zAD91DQmkZdRjBLRE/UAfjeetci6l2FgOHxSnWMMcKZag+vR2MVcP4s1RSAZsuqiCBk1CrHpJAND5ftvMhbjmpj1AZ1qy3CDdwGfPNeH8zoKm1KRzNe463Re2U5BULng/v1pspcpvdiShkUVTGV7r8QkuCbHqRebQ7whUYMtOewf0mDV7cJAydI2Gxep0jxbyoUFXLyS8OnrIgbjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA1PR11MB6711.namprd11.prod.outlook.com (2603:10b6:806:25b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Mon, 14 Oct
 2024 20:58:44 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 20:58:43 +0000
Date: Mon, 14 Oct 2024 13:58:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <ville.syrjala@intel.com>,
 <balasubramani.vivekanandan@intel.com>
Subject: Re: [PATCH] drm/i915: Remove unused underrun irq/reporting bits
Message-ID: <20241014205839.GV4891@mdroper-desk1.amr.corp.intel.com>
References: <20241014115200.2574895-1-sai.teja.pottumuttu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241014115200.2574895-1-sai.teja.pottumuttu@intel.com>
X-ClientProxiedBy: BYAPR07CA0044.namprd07.prod.outlook.com
 (2603:10b6:a03:60::21) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA1PR11MB6711:EE_
X-MS-Office365-Filtering-Correlation-Id: e449e565-0069-44df-0913-08dcec92fc5f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?EVEOCtj0Tm7l+WFynngG1HCufbAnQq1G7EzvISYruP0mOz6mbvFiCy84W8A8?=
 =?us-ascii?Q?duwSYIOPO/Z5cqzH0RzIjrTuLib0ND436wKoaEfO4EGd9lyJLEooba/VEqEA?=
 =?us-ascii?Q?2b/Ugp1TzQ4kX92/p6wbgbVVbGKpH2rSTpJcz1ovwFfksxWHQWmkKOZCYYYp?=
 =?us-ascii?Q?CFWiLP2X4I0VhLQlOTaMm48+VFBXMAq6sL782l4w75yKEKCu6lTVkkxfDzju?=
 =?us-ascii?Q?GTseQ3f/zYVZmLuNVVFCoLFUvzIWV1asVXyUoqIXc8JDFkkAhE3UWNq7v+lZ?=
 =?us-ascii?Q?/Mf2e/+3HNl+0PokskwSy2TH7q7sfdjSzUFcCMXRp0Ulfg/AEHLB0Ojzv8hg?=
 =?us-ascii?Q?i4BCmGBUhBUM5tya4YEbLypyOINopS0J9rUiTuFrETYrestcxk7mPGEZLfVd?=
 =?us-ascii?Q?w3LWZyRK7iuuWEKHTs3uhBHmwYNPi39nlX+vMtiiJixK6XfAirDGntEpQV2w?=
 =?us-ascii?Q?96wzI2yr1t2QPVW8h9hmP/vqPWqtfXnbXM3F+PBSgctE9KDyM3vp9AOtd/5N?=
 =?us-ascii?Q?WZMrTS3Ssc0jIIqkxeKj9QtPz2fKrn8c4wpaBO3UONeQjCRZrBzrYMIgbngX?=
 =?us-ascii?Q?X/bhStvXl3I59fgj7c55adD85EdC3tm7inO1ECqkyOiAEBR5rmAyOUJcnAoN?=
 =?us-ascii?Q?bFxVjfNCBuVgrkIPSx03p1W7UItMfWPx8gysxuAIkAQdiDP8lxRGbyMuK/i0?=
 =?us-ascii?Q?2EQfdNrUbqapaDHZB9oIi/5uouCQEjVZm/nHmKWQgjqipmm1boxe66ekh5EV?=
 =?us-ascii?Q?kthiYFmfpzVcfSTtmn/epR1INkyDgFMGE1Z3hQ7VBxXyA5xBKcCbphxxqDW2?=
 =?us-ascii?Q?yIn9w6PtjjqQ16wyL7Qlxtvgy5DX44I/YI+0+jCUOxZ0vbnF3GzK47mlVZzU?=
 =?us-ascii?Q?MDxsewMN5DcJ+x/Eohb/tpqRfQLAQEpWpvxU6AB2qbzs76CnTPlCOhY2j1Ut?=
 =?us-ascii?Q?Xha7ZUXfmFNsKjGQvHEpgrwL2qCclk8BnM914T403RUs3IBLdIoNut9Cn/u2?=
 =?us-ascii?Q?mH0aCr5Qq4ahWw+6VZ1wHTUTRO1Z160/UtA9/LwKDtY3X+trf0MGD050Ypwv?=
 =?us-ascii?Q?RsV2PcErdRhfbN1HfMcGrLZN9r5pS9hzltkBLkb56fqcalYjdAh9qLVYL+pF?=
 =?us-ascii?Q?DELv5IjwiwnymPzs1aak32cpq4IuezzDgIfpolMJr/ok12CJq4p2CkEZV9mI?=
 =?us-ascii?Q?OJJtpxEyAFYx9+4NftVxRCgiJEFWBM0kCaFStc66EzGJq9n7z1ohO+gayHbk?=
 =?us-ascii?Q?S5iAKmUGt47BNpBFB8mXscgPVs5XlxVSHC+xJiWSng=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Jek45AtxHRsyjFNJdMs31zvFfDcJgdBEB1EAd9iOnYMSvgwDk1MGQTSk91ku?=
 =?us-ascii?Q?NW6MzP5EIgsPOUwSd0+1izUaL388VG5hvWjlzjxj5G202fdBrlUWXUTVwbn2?=
 =?us-ascii?Q?9/HQFMR6wuTm972PQr+GsSTHSAc9ImZuuyZpfKUhcy3w5aVVZ6QE7F/pO4Dp?=
 =?us-ascii?Q?LuWY1+7qeS1UYc1GLhBXJuaovYdQSco0Zf4ZPKVPRp/32wWTJeOUPPegDhlD?=
 =?us-ascii?Q?zXoR2Wbk0YkvlA1tnqX2PZ9U8W0RwOFp5QOc+Rd+MQU3ZVn8tmT3T/xrJTO9?=
 =?us-ascii?Q?kTvblzazcwjTEby4TpUekS7l6F+6QA+20f5pjpK5IL8RXUfx6HH7yXqO1mIS?=
 =?us-ascii?Q?Mc/EpdaW+wuLCKV6GicKbEnKEhTV+FnW2s2qd43xBbDYRdcj/Fp0qzeKOiFN?=
 =?us-ascii?Q?SulXr35CcVNCKqQeMCycZQcr1s7+MS9GRM8N0SG/VNCNJqfKrh2eR+FIYZti?=
 =?us-ascii?Q?fiZV9PLCkge9MxqA5p1JeLUC7a4Ty0t/RZoNUgJMXqPfLsvWqsgKF3qo6sLK?=
 =?us-ascii?Q?dysjPTKYDivW20p+wjZieUnPEg4wpnSegbTV0No1Aj8s4B7s5R+7kC+NT3sm?=
 =?us-ascii?Q?ShKGn+dgIJBDGOSOCuJkNA0NXcIq5IHwrb4+esd9jc36v7K5VDNgRDgA2irI?=
 =?us-ascii?Q?6AiFVFZPLXP/o6VvT6Hy6oEE1p4ijw5mShs5VFgQeieaAV9F9IhOhKa2FnIn?=
 =?us-ascii?Q?ZCxuTd+ZZo6iC32BZ0M8JhT/cTGNBIcTKAwOpc6Hn49eeiGePYHpEvHKoxcx?=
 =?us-ascii?Q?Vn5CCkYEDfP8WnBqpr5wwHznU6f5XN3oiMm+CQZJUhU21K2vkILuDOzMsMeK?=
 =?us-ascii?Q?+xnrDwTX9boUT7M48smBhPTOtGbDbj6l26FfXaouuuR6TFaPPbAAY9w6d7kB?=
 =?us-ascii?Q?v3GebDS9Y2/25mbaX42SV3J2zS8IBVzK5/ppGRuQa558/63RkTz45+X6qi1j?=
 =?us-ascii?Q?n//YYT71fUo5Pn872dcRb5Vu1LNnW/y0Ha+WXhEoxEVUUCCQCPs40Oa8AHSF?=
 =?us-ascii?Q?z3WJCx9iN9YJDqvF9PAV4HYLJdq/9ObkceKXSbbskr+5mUy042XqqgZJRP7e?=
 =?us-ascii?Q?bxrKvhuqD4a1YCUhROKVtOXFwKOkzI9iTPlHBLio6nBWfUOugGNFWGDeDP1f?=
 =?us-ascii?Q?7JweJAVsVwCUDY/COf68RdAGwwZgixqywpRz5sphkumAxmd8peHzHPRaEJ1b?=
 =?us-ascii?Q?BSezSAVTkKWR9pWJXKJijLWhrFAL5wbdhV1zq8zqJl6dH/eQMgZ3klSdCaAC?=
 =?us-ascii?Q?mfQLVnmudX4gRhH7Bd3EqtMZJUHgdmHJ7UdY+CAFnYlWnwqUDQHDKMxSdaO1?=
 =?us-ascii?Q?xr6sqF7HJCDGNOYit+IBk/JiGFcwKZxdGxNDKlBKmveatU0bAlLDu8fFb1d+?=
 =?us-ascii?Q?BM8jBszOKKFZ7qsTH1AZYTNbK0H6UkYNwO/4WySLxY00XloI2R1sLWd2jpDv?=
 =?us-ascii?Q?XpPQHLBr+oFyQrFn0fWWiSI2IbUKyw5E38VLbCKtqPJ3kyVxMVIrqQVhcE9l?=
 =?us-ascii?Q?x+dRL2uex27X232UK2QVwS5g5RbxzqpiU78WsRXS4qWmF4cJSDCB8Ef5x9IU?=
 =?us-ascii?Q?QjNW5mRNc0rO/ADnRCfvBg75Xxo4NjR0Jxpx4RO88zxqTo/8iHz+sLjyqJhu?=
 =?us-ascii?Q?GA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e449e565-0069-44df-0913-08dcec92fc5f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2024 20:58:43.4868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CfBXC+NInz5fzieeIbWWbIL1l6cgak3RfSsbmwYpuCGofzcIdx27m/I/Rt0AqpwBpYDZrTo2b4IYl53FRhpLYuPPsVcceUTW0ildSLhR19Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6711
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

On Mon, Oct 14, 2024 at 05:22:00PM +0530, Sai Teja Pottumuttu wrote:
> Underrun recovery was defeatured and was never brought into usage.
> Thus we can remove the underrun recovery interrupt/reporting
> register bits and related logic introduced to detect/report soft,
> hard, port underruns.

You might want to mention that this is effectively a revert of the
functionality originally introduced by commit 8bcc0840cf7c
("drm/i915/xelpd: Enhanced pipe underrun reporting").  Also that this
includes going back to the original behavior of not clearing the sticky
bit in PIPESTATUS now that we're not using any info from it in the
underrun reporting message.

This appears to accurately remove all traces of the defeatured underrun
recovery (and the associated stuff like PIPESTATUS reading that that was
added at the same time), so with a slightly expanded commit message,

        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 19 +-----
>  .../gpu/drm/i915/display/intel_display_irq.h  |  1 -
>  .../drm/i915/display/intel_fifo_underrun.c    | 58 ++-----------------
>  drivers/gpu/drm/i915/i915_reg.h               |  9 ---
>  4 files changed, 8 insertions(+), 79 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index a4367ddc7a44..827891070461 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1021,17 +1021,6 @@ static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
>  		return GEN8_PIPE_PRIMARY_FLIP_DONE;
>  }
>  
> -u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv)
> -{
> -	u32 mask = GEN8_PIPE_FIFO_UNDERRUN;
> -
> -	if (DISPLAY_VER(dev_priv) >= 13)
> -		mask |= XELPD_PIPE_SOFT_UNDERRUN |
> -			XELPD_PIPE_HARD_UNDERRUN;
> -
> -	return mask;
> -}
> -
>  static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
>  {
>  	u32 pica_ier = 0;
> @@ -1177,7 +1166,7 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
>  			hsw_pipe_crc_irq_handler(dev_priv, pipe);
>  
> -		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
> +		if (iir & GEN8_PIPE_FIFO_UNDERRUN)
>  			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
>  
>  		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
> @@ -1617,8 +1606,7 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>  				     u8 pipe_mask)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
> -	u32 extra_ier = GEN8_PIPE_VBLANK |
> -		gen8_de_pipe_underrun_mask(dev_priv) |
> +	u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>  		gen8_de_pipe_flip_done_mask(dev_priv);
>  	enum pipe pipe;
>  
> @@ -1807,8 +1795,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  			GEN12_DSB_INT(INTEL_DSB_2);
>  
>  	de_pipe_enables = de_pipe_masked |
> -		GEN8_PIPE_VBLANK |
> -		gen8_de_pipe_underrun_mask(dev_priv) |
> +		GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>  		gen8_de_pipe_flip_done_mask(dev_priv);
>  
>  	de_port_enables = de_port_masked;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index 4b493cff7b8e..b077712b7be1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -33,7 +33,6 @@ void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits);
>  
>  void gen8_irq_power_well_post_enable(struct drm_i915_private *i915, u8 pipe_mask);
>  void gen8_irq_power_well_pre_disable(struct drm_i915_private *i915, u8 pipe_mask);
> -u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *i915);
>  
>  int i8xx_enable_vblank(struct drm_crtc *crtc);
>  int i915gm_enable_vblank(struct drm_crtc *crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index 745ce22afb89..cda1daf4cdea 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -192,35 +192,15 @@ static void ivb_set_fifo_underrun_reporting(struct drm_device *dev,
>  	}
>  }
>  
> -static u32
> -icl_pipe_status_underrun_mask(struct drm_i915_private *dev_priv)
> -{
> -	u32 mask = PIPE_STATUS_UNDERRUN;
> -
> -	if (DISPLAY_VER(dev_priv) >= 13)
> -		mask |= PIPE_STATUS_SOFT_UNDERRUN_XELPD |
> -			PIPE_STATUS_HARD_UNDERRUN_XELPD |
> -			PIPE_STATUS_PORT_UNDERRUN_XELPD;
> -
> -	return mask;
> -}
> -
>  static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
>  					    enum pipe pipe, bool enable)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
> -	u32 mask = gen8_de_pipe_underrun_mask(dev_priv);
> -
> -	if (enable) {
> -		if (DISPLAY_VER(dev_priv) >= 11)
> -			intel_de_write(dev_priv,
> -				       ICL_PIPESTATUS(dev_priv, pipe),
> -				       icl_pipe_status_underrun_mask(dev_priv));
>  
> -		bdw_enable_pipe_irq(dev_priv, pipe, mask);
> -	} else {
> -		bdw_disable_pipe_irq(dev_priv, pipe, mask);
> -	}
> +	if (enable)
> +		bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
> +	else
> +		bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
>  }
>  
>  static void ibx_set_fifo_underrun_reporting(struct drm_device *dev,
> @@ -404,7 +384,6 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
>  {
>  	struct intel_display *display = &dev_priv->display;
>  	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
> -	u32 underruns = 0;
>  
>  	/* We may be called too early in init, thanks BIOS! */
>  	if (crtc == NULL)
> @@ -415,37 +394,10 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
>  	    crtc->cpu_fifo_underrun_disabled)
>  		return;
>  
> -	/*
> -	 * Starting with display version 11, the PIPE_STAT register records
> -	 * whether an underrun has happened, and on XELPD+, it will also record
> -	 * whether the underrun was soft/hard and whether it was triggered by
> -	 * the downstream port logic.  We should clear these bits (which use
> -	 * write-1-to-clear logic) too.
> -	 *
> -	 * Note that although the IIR gives us the same underrun and soft/hard
> -	 * information, PIPE_STAT is the only place we can find out whether
> -	 * the underrun was caused by the downstream port.
> -	 */
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> -		underruns = intel_de_read(dev_priv,
> -					  ICL_PIPESTATUS(dev_priv, pipe)) &
> -			icl_pipe_status_underrun_mask(dev_priv);
> -		intel_de_write(dev_priv, ICL_PIPESTATUS(dev_priv, pipe),
> -			       underruns);
> -	}
> -
>  	if (intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false)) {
>  		trace_intel_cpu_fifo_underrun(display, pipe);
>  
> -		if (DISPLAY_VER(dev_priv) >= 11)
> -			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun: %s%s%s%s\n",
> -				pipe_name(pipe),
> -				underruns & PIPE_STATUS_SOFT_UNDERRUN_XELPD ? "soft," : "",
> -				underruns & PIPE_STATUS_HARD_UNDERRUN_XELPD ? "hard," : "",
> -				underruns & PIPE_STATUS_PORT_UNDERRUN_XELPD ? "port," : "",
> -				underruns & PIPE_STATUS_UNDERRUN ? "transcoder," : "");
> -		else
> -			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
> +		drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
>  	}
>  
>  	intel_fbc_handle_fifo_underrun_irq(&dev_priv->display);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 818142f5a10c..405f409e9761 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1735,13 +1735,6 @@
>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK		REG_GENMASK(2, 0) /* tgl+ */
>  #define   PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)	REG_FIELD_PREP(PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
>  
> -#define _ICL_PIPE_A_STATUS			0x70058
> -#define ICL_PIPESTATUS(dev_priv, pipe)			_MMIO_PIPE2(dev_priv, pipe, _ICL_PIPE_A_STATUS)
> -#define   PIPE_STATUS_UNDERRUN				REG_BIT(31)
> -#define   PIPE_STATUS_SOFT_UNDERRUN_XELPD		REG_BIT(28)
> -#define   PIPE_STATUS_HARD_UNDERRUN_XELPD		REG_BIT(27)
> -#define   PIPE_STATUS_PORT_UNDERRUN_XELPD		REG_BIT(26)
> -
>  #define VLV_DPFLIPSTAT				_MMIO(VLV_DISPLAY_BASE + 0x70028)
>  #define   PIPEB_LINE_COMPARE_INT_EN			REG_BIT(29)
>  #define   PIPEB_HLINE_INT_EN			REG_BIT(28)
> @@ -2512,9 +2505,7 @@
>  #define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
>  #define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */
>  #define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl+ */
> -#define  XELPD_PIPE_SOFT_UNDERRUN	REG_BIT(22) /* adl/dg2+ */
>  #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
> -#define  XELPD_PIPE_HARD_UNDERRUN	REG_BIT(21) /* adl/dg2+ */
>  #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
>  #define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19) /* tgl+ */
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
