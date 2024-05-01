Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C518B844D
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2BE9112FF5;
	Wed,  1 May 2024 02:20:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kwbDEkZ9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BD61112FF6
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714530028; x=1746066028;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zCFg5/x1FqY292p0Pk1mjF3sc4alkOp5OmJ+q8OjiAU=;
 b=kwbDEkZ9akI6GYtJILN2BkFadWHphuwplcuL378aWnlgDFo8BeQmHd2j
 xojZpdolrQckqTA6SGG4S8HuizM+43biPlguBYDiyV7LbFj8p6dLlXCZY
 ijwJs+M+twpLckIgbllzV6aN1i1Mq804IFco75vAtCUcR5RJJ/Dw80A6x
 PA5ttj6CxRcqh5WClhSxvOcl0LdwjuYedujNfm9XuXua6fsx2+RQBhqyR
 iQpkVBB6FRF1a1EzwhmUyBBs3AKNdcGXQUWqfxRE59OyU6D3ST9jJAOz/
 yt3YCj37ra6Qjn/EBSc+bil0vPy8lZGr6T+ht0EJCGN+MCkn746K5uUsa A==;
X-CSE-ConnectionGUID: JEp3sBqySaSyY/vTGyldxw==
X-CSE-MsgGUID: ySCefmXwRLuuxM8pSD+KeA==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="14058683"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="14058683"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:20:28 -0700
X-CSE-ConnectionGUID: xXUKeg4/Rya2PjXHLEaAqA==
X-CSE-MsgGUID: Ef/LgWfJTHOyTxyk8Y7g3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="27155656"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:20:27 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:20:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:20:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:20:27 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:20:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kMYnzAy5Uj3feFbiLvOilTzpITZdNXUs80y2Hl7BdbQ6HS2ioYEuAjdSbHWgnH/d+c2RcqCPr2YwEUQq4FULTlci8vYcwymD0Ey1wLWhuJBGL0pbi/G1VTS3Q4BPFGve3lkACWOA0JzNceWF2QgyQHjZdGV9QpnLYMMRDTTBZk4QSpQ/DHCj8Dxw+KE/9y8tPlpR1kJJvRT6Tqyf6tLApTWfv2BPhfCIq6kE2kELrvIk3RLm0ZRHluDw3gVhnRKydOGJ5Y+lAWLLHvLQPErSY/4p0GtQACAfFnAsBx0t8GqGclEz8C0oZ8oFcUjum4EoyUhONcNiXOdhC+YssZFfbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jZgPFyLc1QarrO0nIdbQIkQG4yuy0CxxRKqu9OxhpVM=;
 b=AewepuOJkFcYXcHjiyzJnoCqatT/BAiLMxobS0hQjRXK62uDhM+4lKVoRkVa+x0xMfabvn2Zh1aPEy5d9ObKGdsGcA3E/e3yPoI30Vx3UFOah0iMOiNcWmA61qHULeejbRG5C4FOkSRwf3T1AhvRmBOrnwAW9JLnJnKEpy3Geui850uzKw5rgCMJztdAYmFim2BLwLzyMVh8SDbr5hTe72NhfBA1vPXwRuf33+iVA7mYlcrYEYkosb6++vyf67w9csv4e85vhb9TozbmT+yaulK2dhjMvfC0Vh68Cs7gYjzoSIDTXgbabtM+obQPhLGrmc344EBtLJb4rMZ8oAAZlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB7731.namprd11.prod.outlook.com (2603:10b6:930:75::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:20:25 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:20:24 +0000
Date: Tue, 30 Apr 2024 22:20:20 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 10/19] drm/i915: pass dev_priv explicitly to EDP_PSR2_CTL
Message-ID: <ZjGm5Oq4jsl6BcjV@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <e7df99445716ce404bbfe733dd962288a529cf0d.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e7df99445716ce404bbfe733dd962288a529cf0d.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR03CA0035.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::48) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB7731:EE_
X-MS-Office365-Filtering-Correlation-Id: 82ec838b-02a3-4575-99d5-08dc69854215
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4r6eHLe129nWpuQgCSVyNQRWz+8BWRFzygmrR5oePM2W3hkFAGJeeuX+d8Rd?=
 =?us-ascii?Q?r0VIKuMDaBDUh9aiZGqiWPba0bj6bCum4cmILOIvOV/H4ajzv/LlJ4Vgl5DE?=
 =?us-ascii?Q?PhJHRXoouWS0MDaP3IANXpoXHDt7c3BuRJHZilv8LbK9Ufaq8w3Sevfjh/wv?=
 =?us-ascii?Q?UUbIUtXB8+KTXc1/JOreNhVUDmlEEWLEawJXnT5YBlgw32HycGwgqYXlY0Np?=
 =?us-ascii?Q?TksqzLdSiO3uhBM84HLx8s/C5Hdx4PrKXzNQkuihSs2a343FSGnPPtb/W5P3?=
 =?us-ascii?Q?W5vbv0yggLtzOQbDL4mS9Q43DNeD9hAK1gRhMWyYdwHZC/+J9+t3wKF4JFVc?=
 =?us-ascii?Q?UwoHAuqru0hWeptVrRBXAOpb4kS8RzXtw2EpjehhBhH3j2P1DIdo6ifFnGPX?=
 =?us-ascii?Q?INeZNx27zrNjyHYxyk5MC+183sc/4rSjTLIKxLFHxLUF0rTkBQb7jDKptppC?=
 =?us-ascii?Q?8yqs96qRjZr7CzUqVUjxVqfgJMr4TmnHcIXpll7tNL3TSj+sJX0PVMH5CTCW?=
 =?us-ascii?Q?KhlvIG5ZMEeFeMhTDejJoHjZ1I94uYJzD640OTNXTWtmob9qMg2qZ6rfc+xf?=
 =?us-ascii?Q?GEu3f4Zkpo4/VwBmR3ZN/0lNTb6jbL6gt/+VmtcsxECHMsb2BBWbdzgZu+Hj?=
 =?us-ascii?Q?TDJEcrtyAzZc7CarJ5oNuQXdrk2ydAb5GJr+pfkLIaDZIHbrp0hZNmDlyDay?=
 =?us-ascii?Q?FlIkHzjsem5UMaln8vBDlQyCn0ggs/cqzwWLhKDiDStDzaMcPKjgaA3uXMb9?=
 =?us-ascii?Q?0znBqxi4xd9AXy+9zv2PrVT3wSRDEF1dGPJ0MD08Jb7XqDgRUpdxR553ab9i?=
 =?us-ascii?Q?xcVHggeh3vj0R5yjcHjaduDm6j5F7RlHJipDwfOtPKYEV1DPStnbu+31qBV3?=
 =?us-ascii?Q?uirCppn8t+dRynnm1vfN6xUa4V0sf63ceBjSB6J/5seD7vUS+XSwJtlDbrk5?=
 =?us-ascii?Q?KkCvtXagHvG0h2umAQCJuZjDx7ZVFyzFKfTFTspLbKeX+NEioEgZwez3uc+L?=
 =?us-ascii?Q?fwRvoP4Fs9g2rl/iyyYqTpZWDJw9oylAMR+flUTbkm0Jv+fHguQRmRt36MpV?=
 =?us-ascii?Q?zo0WDfSqFDmGRDQ5UZnGMBb7LA3hhyprezEY4AIkGP4cWVaGKAstgRWvdP5K?=
 =?us-ascii?Q?zyIs7wVjrlHKniN+NuyJ4HFoOShK/B5htUn2KYONHhTizrOAzpy8MJYtl1KC?=
 =?us-ascii?Q?fFMYrLnP6lTcxGdVyN70qOBxB3IvDXK4XRITtxK/tQuSuKFTxewr68EoGPCe?=
 =?us-ascii?Q?KRGaOLoPclw+zA3HqSQV3bMkhgutwHtGShXKsXEZuQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DNvyLRhfKersnqzMTkB6gTf2gkPP/YAzt9Hh+41UsSFhsSCBz6M6ZuTg6O5X?=
 =?us-ascii?Q?Rlx5XeV/It2GCSJ41KREo6uKXl05lCBBNFjLzc2/heCB6yeH22fLzV2E+2B0?=
 =?us-ascii?Q?16huw/fAtPTQ/UuHGo2AKJhGUAA6cY3HOKeNZnNg5Au///gGIeOxk/Xo9Rry?=
 =?us-ascii?Q?XcdWuRoyx6qOQAak8OVMM+2GfBu4PIkg5cjVNjg2g/DbF6RLndiOgLq3Od27?=
 =?us-ascii?Q?ZFG6RFwDJAa/T4CN1H98opFuVWzhnumPi1c3knUsR9c38ETCKgY3kzoCGfwi?=
 =?us-ascii?Q?2Vjoy3gG/t0oXDuH7feQ8GMCwTu2fuKuUL+PiyZpu10tzCKapaoRZIq7pngL?=
 =?us-ascii?Q?fNyxjwhhOZt+4YnB9ozLyRbxITSOb2ckGJVJDNcnBve4JpKYOb9c3olNqnzA?=
 =?us-ascii?Q?YY3naAm3T5Elx97TC8N7ECBDiDaGntX+7rXE08QioWDV1oUKswjm//1gDcDb?=
 =?us-ascii?Q?nAywS821jWrC1Mp5NQq64Jnb3TL0dU/g+Fcs2zcxZ0wOZug4QbGpD7sWOfMa?=
 =?us-ascii?Q?PlSSt7GSm16x6FiRtlIU8N/kOBww+fJWFiNTWu3KWQ/5ZH/u5QrvGZxP/HwT?=
 =?us-ascii?Q?MwWRTwPh1QJyYSLUccwhmboCa5/seqGbaKLyHl1/Yqu+v0WXf/KL6clDzgJj?=
 =?us-ascii?Q?v1dFkC8GhY09s+c6IO80dQvqtcQkt151nu43pfKyFAZpVoUEGKXKsSgwap48?=
 =?us-ascii?Q?p9q06eRDsi6LpGoYg+8VLgERMyRWKleUkvmFid3ZAODLuMI8pU9wy8FYTs3B?=
 =?us-ascii?Q?UK0bB+qYdDBcrIQ4SY/Id2ts5oxTYV13LlI8UCsb4Z7moRg8tNKdgEE6bQEy?=
 =?us-ascii?Q?3kNBENp6yVxgKb62YFwJrbobgB1gEaWOWz3ilc4ZPpZ2sz9cwAc9e03d4HZc?=
 =?us-ascii?Q?6FU1KtgIuToV9PIDjciqxVc9Te3KZJi0K/yIBwIvjJa0G76X0YZae7BckIk9?=
 =?us-ascii?Q?865DVUbzQo3UfvtTtaSiGXn5GwASyDVRfzCKOuxAoMsYiatMEZVrrkBrHARH?=
 =?us-ascii?Q?YPsbfH3KVbE9C2r+siId6Ln9oANjJsp/C+Wcl+uMSxs93AVLSXYSj5h97rV9?=
 =?us-ascii?Q?NLF2d0GbKeg57As7CNzs+ITITwpGYsWGr6IK+Hq4g44p+MsdBYjP4xmTEFd+?=
 =?us-ascii?Q?OZWlN8ujfLPXRyrsDyY1mC0aeuMjMamVvQWmgcwukcglh8UzQFB2gqg1BDow?=
 =?us-ascii?Q?O1EQP9c30ignQQuIpA1P1djW9DdrBfroGtvm4AcClQcdE5f3VjAEhGZB3IdW?=
 =?us-ascii?Q?9DRu+l0Cq/889U+p8RIcPLNcZj8IvYek1681kBQ9Qdylnnf5+oZcjjJbNO+M?=
 =?us-ascii?Q?yh1eNw8fkkcCb8U2wpGY/tlx37Of/B+MTP9JJ+ngZAZ/Ho/+06iP6CP5pCQj?=
 =?us-ascii?Q?ytzRfpAF7VvpT2axhtfmlF1coJBhUMAiibuUReTX/uMA6aN7Aw6A3Db5vfwF?=
 =?us-ascii?Q?9//gOu4QY+h4YKEvv2CguIIo2FwirSwWxDCbgfnwiMmVMKs6d284l8R2GV+K?=
 =?us-ascii?Q?N+IzXBuuwjWDzvApCNRx946IB9ya65Rwz3DKocUrTnyXbVciFGpuccAgWhP4?=
 =?us-ascii?Q?2ujcx3gNwbSPffpoQzQUUYPJljo+7O1F+rRl+irH+qijeNysgtfKEVtSMCzk?=
 =?us-ascii?Q?Ww=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 82ec838b-02a3-4575-99d5-08dc69854215
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:20:24.3361 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oODQQ2k+cS0cG+y+BKtj7MS0Sz1SCWoZ2DkJvgvyq0/ycGX3QKm0w5xN6e2kzWDT8X2CGv5MBsAPeP+9kWWPWg==
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

On Tue, Apr 30, 2024 at 01:10:04PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the EDP_PSR2_CTL register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 15 +++++++++------
>  drivers/gpu/drm/i915/display/intel_psr_regs.h |  2 +-
>  2 files changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index fa1fd04d3b4a..156660ab7adf 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -932,7 +932,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  	 */
>  	intel_de_write(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder), psr_val);
>  
> -	intel_de_write(dev_priv, EDP_PSR2_CTL(cpu_transcoder), val);
> +	intel_de_write(dev_priv, EDP_PSR2_CTL(dev_priv, cpu_transcoder), val);
>  }
>  
>  static bool
> @@ -963,7 +963,7 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
>  
> -	intel_de_rmw(dev_priv, EDP_PSR2_CTL(cpu_transcoder),
> +	intel_de_rmw(dev_priv, EDP_PSR2_CTL(dev_priv, cpu_transcoder),
>  		     EDP_PSR2_IDLE_FRAMES_MASK,
>  		     EDP_PSR2_IDLE_FRAMES(idle_frames));
>  }
> @@ -1700,7 +1700,7 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
>  
>  	drm_WARN_ON(&dev_priv->drm,
>  		    transcoder_has_psr2(dev_priv, cpu_transcoder) &&
> -		    intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder)) & EDP_PSR2_ENABLE);
> +		    intel_de_read(dev_priv, EDP_PSR2_CTL(dev_priv, cpu_transcoder)) & EDP_PSR2_ENABLE);
>  
>  	drm_WARN_ON(&dev_priv->drm,
>  		    intel_de_read(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder)) & EDP_PSR_ENABLE);
> @@ -2011,7 +2011,8 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
>  
>  	if (!intel_dp->psr.active) {
>  		if (transcoder_has_psr2(dev_priv, cpu_transcoder)) {
> -			val = intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder));
> +			val = intel_de_read(dev_priv,
> +					    EDP_PSR2_CTL(dev_priv, cpu_transcoder));
>  			drm_WARN_ON(&dev_priv->drm, val & EDP_PSR2_ENABLE);
>  		}
>  
> @@ -2027,7 +2028,8 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
>  	} else if (intel_dp->psr.psr2_enabled) {
>  		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
>  
> -		val = intel_de_rmw(dev_priv, EDP_PSR2_CTL(cpu_transcoder),
> +		val = intel_de_rmw(dev_priv,
> +				   EDP_PSR2_CTL(dev_priv, cpu_transcoder),
>  				   EDP_PSR2_ENABLE, 0);
>  
>  		drm_WARN_ON(&dev_priv->drm, !(val & EDP_PSR2_ENABLE));
> @@ -3529,7 +3531,8 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
>  		val = intel_de_read(dev_priv, TRANS_DP2_CTL(cpu_transcoder));
>  		enabled = val & TRANS_DP2_PANEL_REPLAY_ENABLE;
>  	} else if (psr->psr2_enabled) {
> -		val = intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder));
> +		val = intel_de_read(dev_priv,
> +				    EDP_PSR2_CTL(dev_priv, cpu_transcoder));
>  		enabled = val & EDP_PSR2_ENABLE;
>  	} else {
>  		val = intel_de_read(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder));
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index a74705aedbb5..785e4f9e7828 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -153,7 +153,7 @@
>  
>  #define _PSR2_CTL_A				0x60900
>  #define _PSR2_CTL_EDP				0x6f900
> -#define EDP_PSR2_CTL(tran)			_MMIO_TRANS2(dev_priv, tran, _PSR2_CTL_A)
> +#define EDP_PSR2_CTL(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _PSR2_CTL_A)
>  #define   EDP_PSR2_ENABLE			REG_BIT(31)
>  #define   EDP_SU_TRACK_ENABLE			REG_BIT(30) /* up to adl-p */
>  #define   TGL_EDP_PSR2_BLOCK_COUNT_MASK		REG_BIT(28)
> -- 
> 2.39.2
> 
