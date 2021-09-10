Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21411406C87
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 14:55:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD8C6E9EF;
	Fri, 10 Sep 2021 12:55:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FF1A6E9EF;
 Fri, 10 Sep 2021 12:55:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="208178662"
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="208178662"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 05:55:19 -0700
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="540591739"
Received: from cmmooney-mobl3.ger.corp.intel.com (HELO [10.213.215.191])
 ([10.213.215.191])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 05:55:18 -0700
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
References: <20210910053317.3379249-1-matthew.d.roper@intel.com>
 <20210910053317.3379249-2-matthew.d.roper@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c780734e-9c5f-551f-095e-1057d4c67ac0@linux.intel.com>
Date: Fri, 10 Sep 2021 13:55:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210910053317.3379249-2-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/uncore: Convert gen6/gen7 read
 operations to fwtable
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



On 10/09/2021 06:33, Matt Roper wrote:
> On gen6-gen8 (except vlv/chv) we don't use a forcewake lookup table; we
> simply check whether the register offset is < 0x40000, and return
> FORCEWAKE_RENDER if it is.  To prepare for upcoming refactoring, let's
> define a single-entry forcewake table from [0x0, 0x3ffff] and switch
> these platforms over to use the fwtable reader functions.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/intel_uncore.c | 11 ++++++++---
>   1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index f9767054dbdf..7f92f12d95f2 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1064,6 +1064,10 @@ gen6_reg_write_fw_domains(struct intel_uncore *uncore, i915_reg_t reg)
>   	__fwd; \
>   })
>   

Is __gen6_reg_read_fw_domains left orphaned somewhere around here or in 
a later patch?

Regards,

Tvrtko

> +static const struct intel_forcewake_range __gen6_fw_ranges[] = {
> +	GEN_FW_RANGE(0x0, 0x3ffff, FORCEWAKE_RENDER),
> +};
> +
>   /* *Must* be sorted by offset ranges! See intel_fw_table_check(). */
>   static const struct intel_forcewake_range __chv_fw_ranges[] = {
>   	GEN_FW_RANGE(0x2000, 0x3fff, FORCEWAKE_RENDER),
> @@ -1623,7 +1627,6 @@ __gen_read(func, 64)
>   
>   __gen_reg_read_funcs(gen11_fwtable);
>   __gen_reg_read_funcs(fwtable);
> -__gen_reg_read_funcs(gen6);
>   
>   #undef __gen_reg_read_funcs
>   #undef GEN6_READ_FOOTER
> @@ -2111,15 +2114,17 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
>   		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
>   		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
>   	} else if (GRAPHICS_VER(i915) == 8) {
> +		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen6_fw_ranges);
>   		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen8);
> -		ASSIGN_READ_MMIO_VFUNCS(uncore, gen6);
> +		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
>   	} else if (IS_VALLEYVIEW(i915)) {
>   		ASSIGN_FW_DOMAINS_TABLE(uncore, __vlv_fw_ranges);
>   		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen6);
>   		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
>   	} else if (IS_GRAPHICS_VER(i915, 6, 7)) {
> +		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen6_fw_ranges);
>   		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen6);
> -		ASSIGN_READ_MMIO_VFUNCS(uncore, gen6);
> +		ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
>   	}
>   
>   	uncore->pmic_bus_access_nb.notifier_call = i915_pmic_bus_access_notifier;
> 
