Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51D8C223685
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 10:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C16566ED4A;
	Fri, 17 Jul 2020 08:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D11E56ED4A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 08:04:43 +0000 (UTC)
IronPort-SDR: vnpGwBy0Lq9Icrv1tou9SCbLCMttUoUhOx1puE4Ag+CItlvfgzKizL7D3JFJki+ooXuP+hkNnN
 DEeAxdacCAzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="129637298"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="129637298"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 01:04:43 -0700
IronPort-SDR: Lw9sq3bFkCev8F03AUoR5oxM8yOVPXYXRgb5REvArDKb4++sDiwp9iu5gjRZdd9ABMnyLamTKK
 BCMTWlQfvcBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="460770670"
Received: from unknown (HELO [10.252.58.102]) ([10.252.58.102])
 by orsmga005.jf.intel.com with ESMTP; 17 Jul 2020 01:04:42 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200717015716.37671-1-umesh.nerlige.ramappa@intel.com>
 <20200717015716.37671-2-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <bfa07032-019c-eeee-451a-f45ac874a8bd@intel.com>
Date: Fri, 17 Jul 2020 11:04:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200717015716.37671-2-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/perf: Whitelist OA counter and
 buffer registers
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

On 17/07/2020 04:57, Umesh Nerlige Ramappa wrote:
> From: Piotr Maciejewski <piotr.maciejewski@intel.com>
>
> It is useful to have markers in the OA reports to identify triggered
> reports. Whitelist some OA counters that can be used as markers.
>
> A triggered report can be found faster if we can sample the HW tail and
> head registers when the report was triggered. Whitelist OA buffer
> specific registers.
>
> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 34 +++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_reg.h             | 15 +++++++++
>   2 files changed, 49 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 582a2c8cd219..40a38023a05b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1370,6 +1370,23 @@ static void gen9_whitelist_build_performance_counters(struct i915_wa_list *w)
>   	/* OA buffer trigger report 2/6 used by performance query */
>   	whitelist_reg(w, OAREPORTTRIG2);
>   	whitelist_reg(w, OAREPORTTRIG6);
> +
> +	/* Performance counters A18-20 used by tbs marker query */
> +	whitelist_reg_ext(w, OA_PERF_COUNTER_A18,
> +			  RING_FORCE_TO_NONPRIV_ACCESS_RW |
> +			  RING_FORCE_TO_NONPRIV_RANGE_4);
> +
> +	whitelist_reg(w, OA_PERF_COUNTER_A20);
> +	whitelist_reg(w, OA_PERF_COUNTER_A20_UPPER);
> +
> +	/* Read access to gpu ticks */
> +	whitelist_reg_ext(w, GEN8_GPU_TICKS,
> +			  RING_FORCE_TO_NONPRIV_ACCESS_RD);
> +
> +	/* Read access to: oa status, head, tail, buffer settings */
> +	whitelist_reg_ext(w, GEN8_OASTATUS,
> +			  RING_FORCE_TO_NONPRIV_ACCESS_RD |
> +			  RING_FORCE_TO_NONPRIV_RANGE_4);
>   }
>   
>   static void gen12_whitelist_build_performance_counters(struct i915_wa_list *w)
> @@ -1377,6 +1394,23 @@ static void gen12_whitelist_build_performance_counters(struct i915_wa_list *w)
>   	/* OA buffer trigger report 2/6 used by performance query */
>   	whitelist_reg(w, GEN12_OAG_OAREPORTTRIG2);
>   	whitelist_reg(w, GEN12_OAG_OAREPORTTRIG6);
> +
> +	/* Performance counters A18-20 used by tbs marker query */
> +	whitelist_reg_ext(w, GEN12_OAG_PERF_COUNTER_A18,
> +			  RING_FORCE_TO_NONPRIV_ACCESS_RW |
> +			  RING_FORCE_TO_NONPRIV_RANGE_4);
> +
> +	whitelist_reg(w, GEN12_OAG_PERF_COUNTER_A20);
> +	whitelist_reg(w, GEN12_OAG_PERF_COUNTER_A20_UPPER);
> +
> +	/* Read access to gpu ticks */
> +	whitelist_reg_ext(w, GEN12_OAG_GPU_TICKS,
> +			  RING_FORCE_TO_NONPRIV_ACCESS_RD);
> +
> +	/* Read access to: oa status, head, tail, buffer settings */
> +	whitelist_reg_ext(w, GEN12_OAG_OASTATUS,
> +			  RING_FORCE_TO_NONPRIV_ACCESS_RD |
> +			  RING_FORCE_TO_NONPRIV_RANGE_4);
>   }
>   
>   static void gen9_whitelist_build(struct i915_wa_list *w)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b9607ac3620d..33653aa0cfd3 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -675,6 +675,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>   #define  GEN7_OASTATUS2_HEAD_MASK           0xffffffc0
>   #define  GEN7_OASTATUS2_MEM_SELECT_GGTT     (1 << 0) /* 0: PPGTT, 1: GGTT */
>   
> +#define GEN8_GPU_TICKS _MMIO(0x2910)
>   #define GEN8_OASTATUS _MMIO(0x2b08)
>   #define  GEN8_OASTATUS_OVERRUN_STATUS	    (1 << 3)
>   #define  GEN8_OASTATUS_COUNTER_OVERFLOW     (1 << 2)
> @@ -731,6 +732,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>   #define  GEN12_OAG_OA_DEBUG_DISABLE_GO_1_0_REPORTS     (1 << 2)
>   #define  GEN12_OAG_OA_DEBUG_DISABLE_CTX_SWITCH_REPORTS (1 << 1)
>   
> +#define GEN12_OAG_GPU_TICKS _MMIO(0xda90)
>   #define GEN12_OAG_OASTATUS _MMIO(0xdafc)
>   #define  GEN12_OAG_OASTATUS_COUNTER_OVERFLOW (1 << 2)
>   #define  GEN12_OAG_OASTATUS_BUFFER_OVERFLOW  (1 << 1)
> @@ -972,6 +974,19 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>   #define OAREPORTTRIG8_NOA_SELECT_6_SHIFT    24
>   #define OAREPORTTRIG8_NOA_SELECT_7_SHIFT    28
>   
> +/* Performance counters registers */
> +#define OA_PERF_COUNTER_A18       _MMIO(0x2890)
> +#define OA_PERF_COUNTER_A19       _MMIO(0x2898)
> +#define OA_PERF_COUNTER_A20       _MMIO(0x28A0)
> +#define OA_PERF_COUNTER_A20_UPPER _MMIO(0x28A4)

#define OA_PERF_COUNTER_A(idx) _MMIO(0x2800 + 8 * (idx))

> +
> +/* Gen12 Performance counters registers */
> +#define GEN12_OAG_PERF_COUNTER_A16       _MMIO(0xDA00)
> +#define GEN12_OAG_PERF_COUNTER_A18       _MMIO(0xDA10)
> +#define GEN12_OAG_PERF_COUNTER_A19       _MMIO(0xDA18)
> +#define GEN12_OAG_PERF_COUNTER_A20       _MMIO(0xDA20)
> +#define GEN12_OAG_PERF_COUNTER_A20_UPPER _MMIO(0xDA24)
#define GEN12_OA_PERF_COUNTER_A(idx) _MMIO(0xD980 + 8 * (idx)
> +
>   /* Same layout as OASTARTTRIGX */
>   #define GEN12_OAG_OASTARTTRIG1 _MMIO(0xd900)
>   #define GEN12_OAG_OASTARTTRIG2 _MMIO(0xd904)

I think this deserves its own i915-perf revision bump.


Thanks,


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
