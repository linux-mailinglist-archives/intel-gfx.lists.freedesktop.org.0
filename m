Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6257D9A4A46
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2024 01:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80E0210E24B;
	Fri, 18 Oct 2024 23:49:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ewE//5qI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B750F10E24B;
 Fri, 18 Oct 2024 23:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729295381; x=1760831381;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=C+MHhBzf4hg7eCNUtGPZOccrCWBUfd45G9VX8MKhb68=;
 b=ewE//5qIPxgqr0svv2nEhVHWQ0ZEmUQfPAWpyOMeNv+WrlAvzUMsEAQq
 zK6PFf0ArdCTCeKA4iauX06nKKCVKNTNW/eB07zrpEkJLvKsYHB9rtpu9
 fxByJ+xR0FpJc4GwYKTXyApacmQfV9r7VKOFCau3oR41y60Kh4x0G1EmK
 W8k2EF2JH19N7t86HUS/x3lx02FC9n+JIXaiaGW+6wtkzJ7W366NbYBWw
 Ul8hvSJS7l7rQK1bRyaoHswT5/qxikeGSkkJ1dlyC9LZF82kVGVrTCDs9
 szgMtB3qoX0OR7PkC28YQC4roHWHWi0YHe86pZE6jrEaqdZ/ob2Ct32fY A==;
X-CSE-ConnectionGUID: 4jKi1FAgQzSNLujZQps1ZA==
X-CSE-MsgGUID: UGaBDAc8TXaaz3/cQ2sa4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="28936479"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="28936479"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 16:49:41 -0700
X-CSE-ConnectionGUID: 0sbllJClQDScPcOO383EJQ==
X-CSE-MsgGUID: SWFS90zJRH6nbJFmjxFesQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="83630744"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 16:49:40 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 16:49:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 16:49:39 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 16:49:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yVFdik3kxKA+cLkUBQE5S0xKwW3pSi0kLrKmgie6OnG4BK5um9EGzw0fVBUg67Gt0wyfzdRVQ1ZHWb4E1D4LPS5Rsrk3jPqm/NRfqAZ08awUf8l0RFSbLC/cmEgQqRI0dFdMk0wPF8A5aymAl6oA5GpQXPprUPQaBgxV/BmIId4RzRD1R/VC07uDDnf7NJo06IbiGjkNzrW44xTASnWejDeJdyVF1YCnfpNOVr3/RFsB7bXXPSSiljugAnR0YzTdOJpbHLGEVcB3EtXTT8h3lhKObaniIzq5QDMIwltfAIJlblFDfYp6U/5Y1Pn8xMl7I3BPPJmh8FbMIOXAcewuSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Le6OYvIPUIMTaER8K5HH7ilBSx4DyhJ3BWE7MxMzOMM=;
 b=SS4sTfYV/+xfDM1ath9R+gTIW+p42ONRhvC4zqxKc23KhLdUcQAY/EXuAhb0ZN+9eD5q+P9TvhpY8pRzq6pcPYCZHAGDPDS0ls6HrxDF1FWlxqkFJjAmfyYJGdQkeIZnF3a5+AFY6vUuJ1OpTMHsvCsF42cBvYhxRBzDkZGNy5UE0uzX6tg29rHrkixAn6hRtg1KXVBgBW8HPo1aZ324GvXDCXx45LSm/ldv+v243ogGCFXYkZlmN27GEA8YCr+0M+0BGj/lUtERdANnWJwu9PrAPr2lTCFUXBUKVFUvfvSbduwLOQJY47qCE9TQGJ3iL5WWTbivPNF/gFx/1F+osA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB7328.namprd11.prod.outlook.com (2603:10b6:8:104::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.20; Fri, 18 Oct
 2024 23:49:37 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8069.024; Fri, 18 Oct 2024
 23:49:29 +0000
Date: Fri, 18 Oct 2024 16:49:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH 04/12] drm/i915/ptl: Move async flip bit to PLANE_SURF
 register
Message-ID: <20241018234921.GH4891@mdroper-desk1.amr.corp.intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
 <20241018204941.73473-5-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241018204941.73473-5-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR03CA0194.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::19) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB7328:EE_
X-MS-Office365-Filtering-Correlation-Id: c2c12f20-b955-4bdf-a339-08dcefcf8142
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eo8aLq5UIJMfsOo+szE1Txv0+vkJNM0dOHi76sF3zMlFWBWjqX2JCBqSbZwd?=
 =?us-ascii?Q?MBc5QxsYAKd+tzzgnJE420xk2VGBv6grN78XAM0ZmNLbFGlILK7htRUlILat?=
 =?us-ascii?Q?gwuTDRM41alnrld/bYKJXDAL+1oXAvbmizVh+UtZGV8RuWmhrRJIDe/BbsUY?=
 =?us-ascii?Q?yvvx6VnjqeNOFSHcEvVhIjMGWRz03buTBh9+8Vos3S4bs0aoATwqju35sjMi?=
 =?us-ascii?Q?iEy6SvJP90Oil1BNo9vDESOn3JiceEMpHzE3yaFjmfcoBu90jlxOX106bD93?=
 =?us-ascii?Q?Ly7JhQ7nd3LH40W1z2sfp3y33U0FmW+EoxAGoerNgXqO/qfZp3TgzarOyYZy?=
 =?us-ascii?Q?gzgQczJSNVJdlxe4SI0w7uqAj+I0h0y3pJzoSuRU5S1aMUjW80RRxt/wyaJr?=
 =?us-ascii?Q?NUZclzZtbhOhJmFHSFXPnKXCuRegZHPeFodwvJU7t2iIHPyW7/+gzvClADMy?=
 =?us-ascii?Q?KHn5SjY6yXnPVVHpRs0Y96EdWHEPAgm+su6wHdC++wqARymximL62JgMKVyD?=
 =?us-ascii?Q?/0xaYBI7FexEGPyT+naFRBcfKN9Xg8lTkBaLqS3QMkTgUIzc6MTnZjcxtlNT?=
 =?us-ascii?Q?4zH+2AOHrX8VgmGw0Ab6H9BcEAec+89/Q8Os74Nuraxf9T4/B+ALhWVfQbr8?=
 =?us-ascii?Q?LRag7QPVKCpdIeU1ba8bV4T2hc8CIau9df84d3LF51Ng2F0DrltSuI1Bkaj8?=
 =?us-ascii?Q?4sIA6sNk9JHZITriDf185AKW+Xd9m9sEFHNYm3HHrArsiJpOYDfwDyO9gA2B?=
 =?us-ascii?Q?GoTGo1zG+K+cVxChwyG2OOi3KyS9ud4HyVZWkvAimYl/p3VyMEOz8ln9CRU8?=
 =?us-ascii?Q?R3X8sX8dshEawkzIL/FBu3XG5j2proQNLf47Yhhdva6/gY7tmx+erkHp7k0D?=
 =?us-ascii?Q?ZSo4d/rR9HeIV/ii3VgVzvuBu7qQPiuI6m/LMojmND4qYu0R1T17WxU3B+O2?=
 =?us-ascii?Q?5rDyRYsKLqmd7/vVEqP/L8ynEtNHmiDAurdUuuwct3RyLHQaD9GlkGomka/P?=
 =?us-ascii?Q?OV6Z8dyefaH/63gCp36nKkZa+ognv1VUFa1rPC/KLTkBXZc/brEcGgjvzjVj?=
 =?us-ascii?Q?e7b+MRYTOGZLfZC3cInoHT0xsCSbUQkaQO9bOG2x/zv+eS89DNhZcTkZYJKT?=
 =?us-ascii?Q?KligXiQER4IzLVP5dIKix9lkVSYQ1xgtzyhitX0RFUSfQMxGxRAmme4Qlc04?=
 =?us-ascii?Q?ma8r704FLs6jgAYxOZ6zaCmJWN+Gde1vo/TQXQ0GubuJGBh3lA2IZu2BpXoM?=
 =?us-ascii?Q?UzsKkisefNmY0oeDUD/hQ1W+87u09uUx4lFaZJg8yCGQGfii5q5u45photi9?=
 =?us-ascii?Q?9/fnzDUCK0USyShyoBV+05f6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?z/ZQjFbjzBv8hFS3rDTaCEXs0PX9N2MuNPF50QDXJAlV+ur0nIsGtefx04Wn?=
 =?us-ascii?Q?OHgZmyZUxMIiRuNZE+e83vKsj/MsBTg+ILt3aNq/6qDfwsvsex2CW3tJZOD5?=
 =?us-ascii?Q?KWv6RXsuUYw7aJN22ZcbtRK8+TLFU8hMjOwkT5bVvq5giXyeyOYJ2nC8ZZuy?=
 =?us-ascii?Q?PuFv6RvNRL4kXM3LSAZd7b6SyIQH3SLhQLp4A0uvr4CerBcFhgPdC8v0yRCj?=
 =?us-ascii?Q?Th8KjaR6ubYgV9WR+VG1v7uDFM+Mu2AVXr0qG5wvFlO9zdzHWZvfKYH1CrMD?=
 =?us-ascii?Q?24jefcZdnVeJ+oAjgsIhcMPF/xPOuZWxrch4xm8jp/i1cMNKIao28NOUP96f?=
 =?us-ascii?Q?hEdCPVM8e11bqrjMH7ukWnkXEPu9H1StCprKl7jy/vZ5K+zvtDq5QibynZ/8?=
 =?us-ascii?Q?IZUa41iKMYeCnVHAKsx3COoIYfuK17fuPVhCtG7SrafNEiT2mmFcB8WlN7EH?=
 =?us-ascii?Q?ztd/TDCrMwtxe6dqCbSSNlUIMFT/q6tzDC78279G4UdPIISypRbohZGDk/V7?=
 =?us-ascii?Q?xBKCV0wdSQsTxYR6MaN9BsMBSXmTXDnjCazrbcVsENv9PEzCHTEl6oAfeTJN?=
 =?us-ascii?Q?upzSDPnY3BJoXASz7tra+qAfKZ/nSZZUpnoYa4EE3d5atHWhfTvc6jG5h8rE?=
 =?us-ascii?Q?emkbITfC+Fb5SWMbS43MrBE0MKebhHTJ+Zu3eW2ab5hzz+3BkX75J7UB9S9b?=
 =?us-ascii?Q?ytuEDA6GIRyXF7hWMjvV7kNxyyV1+X1+VNWHRug+vR7+xGcU69lU/d4Uubtp?=
 =?us-ascii?Q?/0uvSJTbQiwzDDKH4AuxtaEqZ2iQZKXskTOKEoZruPW0JStnIObbOH9rmbSA?=
 =?us-ascii?Q?jsI5im4bOPEAluP/yIysoHV7sIC0jHujgB/OC4Agf1gH4AF1qDHgV1MdC3dO?=
 =?us-ascii?Q?M1jQC2un0EyGdF4c4ijToW8cm0cAh4EB+H5i/sI4e1fSbrCg6zUzX3C9aAsk?=
 =?us-ascii?Q?6X6TARMmhe29EEz2Jp0iei3g8jaS54yWE58PzlQ8mHAHE+3A/wFFjdhxu8eg?=
 =?us-ascii?Q?Ys8tvKGRgamHZhsNa6Rxh5I6wSnYf21VegQFdNAQut3NdXt1GdBXPbP2pHAs?=
 =?us-ascii?Q?pU/wnuJyhhGoGJeNOAjGuyAHbZ3yVgw3oyyqb00qP7cUOfxJt7X6XER8rqMo?=
 =?us-ascii?Q?GDorDNcq18S8tSBJzL6h33qZgwW/by2ITINN82PFGNice07F5r63Y+AM9sQU?=
 =?us-ascii?Q?FB16rMr388HD62xaYgC4hoO2DcasNvruGSLAYmoxz84Eyii06oGqSdewjyii?=
 =?us-ascii?Q?XoZlDOKaA2/6bQ3+M5OATKWxMv34BwWIj2G0x8WQbcgh659es65zCLr+sSrm?=
 =?us-ascii?Q?57khH2YD0PnoDRh47mlPeK5dh8NMY6VYLY9xE5GX3MlyFhqXBDyF/i7Msudd?=
 =?us-ascii?Q?oPa34v2/5llbwwRPcY05pijdBumfTtV8OQiZyzb35uu8UwzYEeQgW9J6p2lN?=
 =?us-ascii?Q?FUXQFnGI/hpBJYh2utOkIBwqvz9BDg86O6No3GRQaIEONbKtdTnkwWc+WpLD?=
 =?us-ascii?Q?h+x9Xye6oXjAeD/W5hJYTQJyC11dDfNmFg5EStsxIO0qYY3iU2a0bnpYpTZX?=
 =?us-ascii?Q?FzIhKYuCoZl1KuMUPRcEBs3ooAgYDvH3b5SaGiJ/37fdDUayPKGu5er2cgPY?=
 =?us-ascii?Q?YA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c2c12f20-b955-4bdf-a339-08dcefcf8142
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 23:49:28.7197 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cLP570MP/C++gpqQ59E1cmIxJkqYbmA+Ts5N9Jnf5pHaL9LOcZSirgmuZY/NBTCp+8fA4yoZ4S7KazG2yN0zeMkLzIZRdrQJqkTAvzUZxFI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7328
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

On Fri, Oct 18, 2024 at 01:49:33PM -0700, Matt Atwood wrote:
> From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> 
> The async flip moved from PLANE_CTL to PLANE_SURF for PTL.

The subject and commit message should be referring to Xe3_LPD rather
than Panther Lake.  This is a change in the display IP and if other
non-PTL platforms eventually re-use this IP, the change will apply to
them as well.

> Bspec: 69853,69878
> 

No blank line here.  We write bspec references as a git trailer.


Matt

> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c  | 13 +++++++++----
>  .../gpu/drm/i915/display/skl_universal_plane_regs.h |  1 +
>  2 files changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index a0a7ed01415a..da974f4a25bd 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1567,17 +1567,22 @@ skl_plane_async_flip(struct intel_dsb *dsb,
>  	struct intel_display *display = to_intel_display(plane->base.dev);
>  	enum plane_id plane_id = plane->id;
>  	enum pipe pipe = plane->pipe;
> -	u32 plane_ctl = plane_state->ctl;
> +	u32 plane_ctl = plane_state->ctl, plane_surf;
>  
>  	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
> +	plane_surf = skl_plane_surf(plane_state, 0);
>  
> -	if (async_flip)
> -		plane_ctl |= PLANE_CTL_ASYNC_FLIP;
> +	if (async_flip){
> +		if (DISPLAY_VER(display) >= 30)
> +	                plane_surf |= PLANE_SURF_ASYNC_UPDATE;
> +		else
> +			plane_ctl |= PLANE_CTL_ASYNC_FLIP;
> +	}
>  
>  	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id),
>  			   plane_ctl);
>  	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id),
> -			   skl_plane_surf(plane_state, 0));
> +			   plane_surf);
>  }
>  
>  static bool intel_format_is_p01x(u32 format)
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> index 4ddcd7d46bbd..ff31a00d511e 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> @@ -159,6 +159,7 @@
>  							_PLANE_SURF_2_A, _PLANE_SURF_2_B)
>  #define   PLANE_SURF_ADDR_MASK			REG_GENMASK(31, 12)
>  #define   PLANE_SURF_DECRYPT			REG_BIT(2)
> +#define   PLANE_SURF_ASYNC_UPDATE		REG_BIT(0)
>  
>  #define _PLANE_KEYMAX_1_A			0x701a0
>  #define _PLANE_KEYMAX_2_A			0x702a0
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
