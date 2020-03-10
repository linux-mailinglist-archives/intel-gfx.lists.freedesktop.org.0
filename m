Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7C817F2A8
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 10:04:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6B5F6E834;
	Tue, 10 Mar 2020 09:03:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F4E36E15C
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 09:03:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 02:03:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="235875445"
Received: from unknown (HELO [10.249.40.71]) ([10.249.40.71])
 by fmsmga008.fm.intel.com with ESMTP; 10 Mar 2020 02:03:56 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200309211057.38575-1-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <a1dbc0a4-a31a-24ed-6d56-691ba9d70eef@intel.com>
Date: Tue, 10 Mar 2020 11:03:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200309211057.38575-1-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Invalidate OA TLB on when
 closing perf stream
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

On 09/03/2020 23:10, Umesh Nerlige Ramappa wrote:
> On running several back to back perf capture sessions involving closing
> and opening the perf stream, invalid OA reports are seen in the
> beginning of the OA buffer in some sessions. Fix this by invalidating OA
> TLB when the perf stream is closed or disabled on gen12.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c | 8 ++++++++
>   drivers/gpu/drm/i915/i915_reg.h  | 2 ++
>   2 files changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 1b074bb4a7fe..551be589d6f4 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -2700,6 +2700,14 @@ static void gen12_oa_disable(struct i915_perf_stream *stream)
>   				    50))
>   		drm_err(&stream->perf->i915->drm,
>   			"wait for OA to be disabled timed out\n");
> +
> +	intel_uncore_write(uncore, GEN12_OA_TLB_INV_CR, 1);
> +	if (intel_wait_for_register(uncore,
> +				    GEN12_OA_TLB_INV_CR,
> +				    1, 0,
> +				    50))
> +		drm_err(&stream->perf->i915->drm,
> +			"wait for OA tlb invalidate timed out\n");
>   }
>   
>   /**
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 79ae9654dac9..95725e61d9f1 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -693,6 +693,8 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>   #define OABUFFER_SIZE_8M    (6 << 3)
>   #define OABUFFER_SIZE_16M   (7 << 3)
>   
> +#define GEN12_OA_TLB_INV_CR _MMIO(0xceec)
> +
>   /* Gen12 OAR unit */
>   #define GEN12_OAR_OACONTROL _MMIO(0x2960)
>   #define  GEN12_OAR_OACONTROL_COUNTER_FORMAT_SHIFT 1


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
