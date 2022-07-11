Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C8C05700B0
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 13:30:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B22E14ADDE;
	Mon, 11 Jul 2022 11:30:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F9D112B818
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 11:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657539040; x=1689075040;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=QwWaoCgU4NPzqwdNeXs51HGF+ggK5v2lFTAqMvbShuA=;
 b=UCZllH+u6336eqyJZtxNjqYuHBJYXgFecaCz5E9hnboRAoBRLkIOZ/zD
 1las74mftqZgR86YiTxosSmymJ5KYjFYIWVJAxje0uVkABDUsI7rYgRsd
 SL+e6JEzHT1L4UEFDM98l1Dx9NwhFULRUXbmNTSEwTYZXVA5xJwhbR5yq
 92BcdIKI/0C5PO4bn+R7RpU4nDQgGn1jqMPqgjdukYk1t2+uGB6ShOUY7
 0STTHlctYX5j09vtc7GEO3pKu9ZeqsYRSDqsqTXDiUhxTUNQgJKUv0DvU
 6iWQuoXFJb+686i8jNE5reKbTO/NRdfCcoXrzDQv+7xlkVPgI5zZ0PQg1 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="285379906"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="285379906"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2022 04:30:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="627458451"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga001.jf.intel.com with ESMTP; 11 Jul 2022 04:30:39 -0700
Received: from [10.249.130.254] (unknown [10.249.130.254])
 by linux.intel.com (Postfix) with ESMTP id 3368C5804E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 04:30:38 -0700 (PDT)
Message-ID: <6bbebede-8e13-6e5c-75df-0e19c0bd51f0@intel.com>
Date: Mon, 11 Jul 2022 14:30:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220630083508.223348-1-lionel.g.landwerlin@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20220630083508.223348-1-lionel.g.landwerlin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dg2: Add performance workaround
 18019455067
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

Ping?

On 30/06/2022 11:35, Lionel Landwerlin wrote:
> The recommended number of stackIDs for Ray Tracing subsystem is 512
> rather than 2048 (default HW programming).
>
> v2: Move the programming to dg2_ctx_gt_tuning_init() (Lucas)
>
> v3: Move programming to general_render_compute_wa_init() (Matt)
>
> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 4 ++++
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
>   2 files changed, 13 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 07ef111947b8c..12fc87b957425 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1112,6 +1112,10 @@
>   #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
>   
>   #define RT_CTRL					_MMIO(0xe530)
> +#define   RT_CTRL_NUMBER_OF_STACKIDS_MASK	REG_GENMASK(6, 5)
> +#define   NUMBER_OF_STACKIDS_512		2
> +#define   NUMBER_OF_STACKIDS_1024		1
> +#define   NUMBER_OF_STACKIDS_2048		0
>   #define   DIS_NULL_QUERY			REG_BIT(10)
>   
>   #define EU_PERF_CNTL1				_MMIO(0xe558)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 3213c593a55f4..ea674e456cd76 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2737,6 +2737,15 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>   		wa_write_or(wal, VDBX_MOD_CTRL, FORCE_MISS_FTLB);
>   		wa_write_or(wal, VEBX_MOD_CTRL, FORCE_MISS_FTLB);
>   	}
> +
> +	if (IS_DG2(i915)) {
> +		/* Performance tuning for Ray-tracing */
> +		wa_write_clr_set(wal,
> +				 RT_CTRL,
> +				 RT_CTRL_NUMBER_OF_STACKIDS_MASK,
> +				 REG_FIELD_PREP(RT_CTRL_NUMBER_OF_STACKIDS_MASK,
> +						NUMBER_OF_STACKIDS_512));
> +	}
>   }
>   
>   static void


