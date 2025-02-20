Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AD7A3E13D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 17:47:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A615110E972;
	Thu, 20 Feb 2025 16:47:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GGeWywHG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F05D10E1A7;
 Thu, 20 Feb 2025 16:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740070045; x=1771606045;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=3OtB9akMB0pxoL9AejNzjcClgt8iH/E/EAXwsKV7QKM=;
 b=GGeWywHG59KwjXp2z1prQ8QIm7CITuA/79kTarjmDJyu+OCg+pA445gI
 840Msor8UbDN2EjcDJKHa/KyzwQgsxCz5b5pxQ9Z1jxX8eEzk5zzMBJVh
 H2hX+CUV3lKOt+6VM5AEok8+5buZJkQ32XRoEWIsF1G0X1S7sbpb998LR
 0JFL+eChPgIRlj2zzdG8lXkliLVWF/lpoxIoFLPw/pSzogx5zc+gVXKSv
 qYm16Zm7nxZzezFY4S0TaZASNCP61+FHtdjqTiDT5g0HaYZrxgrdr79b3
 xGMSHo1vvOMp1HacWVw4XAiaML5ezwHrvbLRWMMXblbmqMH+vAQLzkbiz A==;
X-CSE-ConnectionGUID: 6R+HPNbFTACT3cR/+lhN9A==
X-CSE-MsgGUID: oJRif6LoTEinvCSunV6VgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="44508165"
X-IronPort-AV: E=Sophos;i="6.13,302,1732608000"; d="scan'208";a="44508165"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 08:47:24 -0800
X-CSE-ConnectionGUID: /7uwIiSFTNWHbiSkGLSVCA==
X-CSE-MsgGUID: +mazolK2Tge/cv+YU0RAGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,302,1732608000"; d="scan'208";a="114819612"
Received: from linux.intel.com ([10.54.29.200])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 08:47:25 -0800
Received: from [10.246.136.14] (kliang2-mobl1.ccr.corp.intel.com
 [10.246.136.14])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 1046420B5713;
 Thu, 20 Feb 2025 08:47:22 -0800 (PST)
Message-ID: <7de719b4-1e5c-42ee-80fc-0563b68299ef@linux.intel.com>
Date: Thu, 20 Feb 2025 11:47:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] perf/x86/rapl: Fix PP1 event for Intel Meteor/Lunar Lake
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-perf-users@vger.kernel.org, x86@kernel.org,
 linux-kernel@vger.kernel.org
Cc: dave.hansen@linux.intel.com, Zhang Rui <rui.zhang@intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Ulisses Furquim <ulisses.furquim@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
References: <20250220153857.2593704-6-lucas.demarchi@intel.com>
Content-Language: en-US
From: "Liang, Kan" <kan.liang@linux.intel.com>
In-Reply-To: <20250220153857.2593704-6-lucas.demarchi@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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



On 2025-02-20 10:36 a.m., Lucas De Marchi wrote:
> On some boots the read of MSR_PP1_ENERGY_STATUS msr returns 0, causing
> perf_msr_probe() to make the power/events/energy-gpu event non-visible.
> When that happens, the msr always read 0 until the graphics module (i915
> for Meteor Lake, xe for Lunar Lake) is loaded. Then it starts returning
> something different and re-loading the rapl module "fixes" it.
> 
> This is tested on the following platforms with the fail rates before
> this patch:
> 
> 	Alder Lake S	0/20
> 	Arrow Lake H	0/20
> 	Lunar Lake M	8/20
> 	Meteor Lake U	6/20
> 	Raptor Lake P	4/20
> 	Raptor Lake S	0/20
> 
> For those platforms failing, use a separate msr list with .no_check
> set so it doesn't check the runtime value to create the event - it will
> just return 0 until the i915/xe module initializes the GPU.
> 
> The issue https://github.com/ulissesf/qmassa/issues/4 is workarounded by
> reading the MSR directly since it works after xe is loaded, but the
> issue with not having the perf event is still there.
> 
> Closes: https://github.com/ulissesf/qmassa/issues/4
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4241
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com
> ---
> 
> Maybe a clearer alternative is to just move all the platforms after
> RAPTORLAKE with a gpu to use the new msr list.
> 
>  arch/x86/events/rapl.c | 26 ++++++++++++++++++++++----
>  1 file changed, 22 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/x86/events/rapl.c b/arch/x86/events/rapl.c
> index 4952faf03e82d..18e324b8fa82c 100644
> --- a/arch/x86/events/rapl.c
> +++ b/arch/x86/events/rapl.c
> @@ -588,6 +588,14 @@ static struct perf_msr intel_rapl_spr_msrs[] = {
>  	[PERF_RAPL_PSYS] = { MSR_PLATFORM_ENERGY_STATUS, &rapl_events_psys_group,  test_msr, true, RAPL_MSR_MASK },
>  };
>  
> +static struct perf_msr intel_rapl_mtl_msrs[] = {
> +	[PERF_RAPL_PP0]  = { MSR_PP0_ENERGY_STATUS,      &rapl_events_cores_group, test_msr, false, RAPL_MSR_MASK },
> +	[PERF_RAPL_PKG]  = { MSR_PKG_ENERGY_STATUS,      &rapl_events_pkg_group,   test_msr, false, RAPL_MSR_MASK },
> +	[PERF_RAPL_RAM]  = { MSR_DRAM_ENERGY_STATUS,     &rapl_events_ram_group,   test_msr, false, RAPL_MSR_MASK },
> +	[PERF_RAPL_PP1]  = { MSR_PP1_ENERGY_STATUS,      &rapl_events_gpu_group,   test_msr, true,  RAPL_MSR_MASK },
> +	[PERF_RAPL_PSYS] = { MSR_PLATFORM_ENERGY_STATUS, &rapl_events_psys_group,  test_msr, false, RAPL_MSR_MASK },
> +};
> +
>  /*
>   * Force to PERF_RAPL_PKG_EVENTS_MAX size due to:
>   * - perf_msr_probe(PERF_RAPL_PKG_EVENTS_MAX)
> @@ -826,6 +834,16 @@ static struct rapl_model model_spr = {
>  	.rapl_pkg_msrs	= intel_rapl_spr_msrs,
>  };
>  
> +static struct rapl_model model_rpl = {
> +	.pkg_events	= BIT(PERF_RAPL_PP0) |
> +			  BIT(PERF_RAPL_PKG) |
> +			  BIT(PERF_RAPL_RAM) |
> +			  BIT(PERF_RAPL_PP1) |
> +			  BIT(PERF_RAPL_PSYS),
> +	.msr_power_unit = MSR_RAPL_POWER_UNIT,
> +	.rapl_pkg_msrs  = intel_rapl_mtl_msrs,

It's better to make the name consistent, e.g., intel_rapl_rpl_msrs.

Thanks,
Kan
> +};
> +
>  static struct rapl_model model_amd_hygon = {
>  	.pkg_events	= BIT(PERF_RAPL_PKG),
>  	.core_events	= BIT(PERF_RAPL_CORE),
> @@ -873,13 +891,13 @@ static const struct x86_cpu_id rapl_model_match[] __initconst = {
>  	X86_MATCH_VFM(INTEL_SAPPHIRERAPIDS_X,	&model_spr),
>  	X86_MATCH_VFM(INTEL_EMERALDRAPIDS_X,	&model_spr),
>  	X86_MATCH_VFM(INTEL_RAPTORLAKE,		&model_skl),
> -	X86_MATCH_VFM(INTEL_RAPTORLAKE_P,	&model_skl),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE_P,	&model_rpl),
>  	X86_MATCH_VFM(INTEL_RAPTORLAKE_S,	&model_skl),
> -	X86_MATCH_VFM(INTEL_METEORLAKE,		&model_skl),
> -	X86_MATCH_VFM(INTEL_METEORLAKE_L,	&model_skl),
> +	X86_MATCH_VFM(INTEL_METEORLAKE,		&model_rpl),
> +	X86_MATCH_VFM(INTEL_METEORLAKE_L,	&model_rpl),
>  	X86_MATCH_VFM(INTEL_ARROWLAKE_H,	&model_skl),
>  	X86_MATCH_VFM(INTEL_ARROWLAKE,		&model_skl),
> -	X86_MATCH_VFM(INTEL_LUNARLAKE_M,	&model_skl),
> +	X86_MATCH_VFM(INTEL_LUNARLAKE_M,	&model_rpl),
>  	{},
>  };
>  MODULE_DEVICE_TABLE(x86cpu, rapl_model_match);

