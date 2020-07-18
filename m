Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C680224D90
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jul 2020 21:09:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 682AF6E0A1;
	Sat, 18 Jul 2020 19:09:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6516E0A1
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jul 2020 19:09:23 +0000 (UTC)
IronPort-SDR: gjrNtPFl/GTcYZcfhq5h9Kf2eumejuWOCuwnBA7ETmYW0RgVKvfNxIfcHDVSUogreQqRDeyklL
 EP0IYE5y3OHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9686"; a="167893579"
X-IronPort-AV: E=Sophos;i="5.75,368,1589266800"; d="scan'208";a="167893579"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2020 12:09:23 -0700
IronPort-SDR: Rqu9Y8LF2P2dje0afqKJgigW7dw7F9s0oGCw0tab8iNZs3ytJlulpTYl7jfVzh9xacjqwlTMFS
 /0FqGLhQl8lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,368,1589266800"; d="scan'208";a="283106966"
Received: from gtau-mobl.ger.corp.intel.com (HELO [10.249.34.205])
 ([10.249.34.205])
 by orsmga003.jf.intel.com with ESMTP; 18 Jul 2020 12:09:22 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200718000437.69033-1-umesh.nerlige.ramappa@intel.com>
 <20200718000437.69033-2-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <294d6eab-0741-1e43-39fe-7734c2304502@intel.com>
Date: Sat, 18 Jul 2020 22:09:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200718000437.69033-2-umesh.nerlige.ramappa@intel.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 18/07/2020 03:04, Umesh Nerlige Ramappa wrote:
> From: Piotr Maciejewski <piotr.maciejewski@intel.com>
>
> A clock gating switch can control if the performance monitoring and
> observation logic is enaled or not. Ensure that we enable the clocks.
>
> v2: Separate code from other patches (Lionel)
>
> Fixes: 00a7f0d7155c ("drm/i915/tgl: Add perf support on TGL")
> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c | 8 ++++++++
>   drivers/gpu/drm/i915/i915_reg.h  | 2 ++
>   2 files changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index c6f6370283cf..88610d52f30b 100644
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


Thanks for splitting this.

We just need to also disable this when i915-perf is disabled, 
documentation says it saved power when turned off.


-Lionel


> +
>   	/*
>   	 * Update all contexts prior writing the mux configurations as we need
>   	 * to make sure all slices/subslices are ON before writing to NOA
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
