Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A699522785F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 07:57:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1336B6E444;
	Tue, 21 Jul 2020 05:57:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A2376E444
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 05:57:48 +0000 (UTC)
IronPort-SDR: P6LCumYesct+UuglmxQRdJeMDuNalan7gWzxWxkF06Qxxydt2KxQAT5Oc4bJlzltS6dElKOi89
 JqSzldnpUi/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="211618654"
X-IronPort-AV: E=Sophos;i="5.75,377,1589266800"; d="scan'208";a="211618654"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 22:57:47 -0700
IronPort-SDR: Vx6cAvq3nsFzO1ERPDnT4WVo1WqTwQ2VpykM3lTXDSGAz5vcxeSuPcNzcBl2jkJ6Asy+CUq/59
 cOtrhb2W6moA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,377,1589266800"; d="scan'208";a="318241030"
Received: from steinint-mobl.ger.corp.intel.com (HELO [10.252.58.235])
 ([10.252.58.235])
 by orsmga008.jf.intel.com with ESMTP; 20 Jul 2020 22:57:46 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200721020012.46506-1-umesh.nerlige.ramappa@intel.com>
 <20200721020012.46506-2-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <573ab1a3-c3db-a981-0121-e8db7c23acfa@intel.com>
Date: Tue, 21 Jul 2020 08:57:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200721020012.46506-2-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/perf: Ensure observation logic
 is not clock gated
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
Cc: Chris Wilson <chris.p.wilson@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21/07/2020 05:00, Umesh Nerlige Ramappa wrote:
> From: Piotr Maciejewski <piotr.maciejewski@intel.com>
>
> A clock gating switch can control if the performance monitoring and
> observation logic is enaled or not. Ensure that we enable the clocks.
>
> v2: Separate code from other patches (Lionel)
> v3: Reset PMON enable when disabling perf to save power (Lionel)
>
> Fixes: 00a7f0d7155c ("drm/i915/tgl: Add perf support on TGL")
> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c | 13 +++++++++++++
>   drivers/gpu/drm/i915/i915_reg.h  |  2 ++
>   2 files changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index c6f6370283cf..fe408c327d3c 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2493,6 +2493,14 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
>   			    (period_exponent << GEN12_OAG_OAGLBCTXCTRL_TIMER_PERIOD_SHIFT))
>   			    : 0);
>   
> +	/*
> +	 * Initialize Super Queue Internal Cnt Register
> +	 * Set PMON Enable in order to collect valid metrics.
> +	 */
> +	intel_uncore_write(uncore, GEN12_SQCNT1,
> +			   intel_uncore_read(uncore, GEN12_SQCNT1) |
> +			   GEN12_SQCNT1_PMON_ENABLE);
> +
>   	/*
>   	 * Update all contexts prior writing the mux configurations as we need
>   	 * to make sure all slices/subslices are ON before writing to NOA
> @@ -2552,6 +2560,11 @@ static void gen12_disable_metric_set(struct i915_perf_stream *stream)
>   
>   	/* Make sure we disable noa to save power. */
>   	intel_uncore_rmw(uncore, RPM_CONFIG1, GEN10_GT_NOA_ENABLE, 0);
> +
> +	/* Reset PMON Enable to save power. */
> +	intel_uncore_write(uncore, GEN12_SQCNT1,
> +			   intel_uncore_read(uncore, GEN12_SQCNT1) &
> +			   ~GEN12_SQCNT1_PMON_ENABLE);
>   }
>   
>   static void gen7_oa_enable(struct i915_perf_stream *stream)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b9607ac3620d..1638f1282541 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -696,6 +696,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>   #define OABUFFER_SIZE_16M   (7 << 3)
>   
>   #define GEN12_OA_TLB_INV_CR _MMIO(0xceec)
> +#define GEN12_SQCNT1 _MMIO(0x8718)
> +#define  GEN12_SQCNT1_PMON_ENABLE (1 << 30)
>   
>   /* Gen12 OAR unit */
>   #define GEN12_OAR_OACONTROL _MMIO(0x2960)


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
