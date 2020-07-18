Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2443224D91
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jul 2020 21:11:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9E186E179;
	Sat, 18 Jul 2020 19:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07EDB6E179
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jul 2020 19:11:47 +0000 (UTC)
IronPort-SDR: G1N/Gw7CJRhut7w2BeJIhb1U2hpUwjaioZIBiojOLRbGrRaEwQEiWo9fndKnf2Dt+XG5PtluRL
 L/0No0Z64wRA==
X-IronPort-AV: E=McAfee;i="6000,8403,9686"; a="211309457"
X-IronPort-AV: E=Sophos;i="5.75,368,1589266800"; d="scan'208";a="211309457"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2020 12:11:46 -0700
IronPort-SDR: kV4O27C+gLbFXh5LZz7hQDJx5PaC1ajuTvQY1za1Ch6UbwNm3YAvmF4UXkAL7XgaM/DYxCQRcS
 moeXdsniPTiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,368,1589266800"; d="scan'208";a="271078253"
Received: from gtau-mobl.ger.corp.intel.com (HELO [10.249.34.205])
 ([10.249.34.205])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jul 2020 12:11:45 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200718000437.69033-1-umesh.nerlige.ramappa@intel.com>
 <20200718000437.69033-3-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <eae3f938-9b7d-90cc-ca3c-9611fb70ed7b@intel.com>
Date: Sat, 18 Jul 2020 22:11:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200718000437.69033-3-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/perf: Whitelist OA report
 trigger registers
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
> OA reports can be triggered into the OA buffer by writing into the
> OAREPORTTRIG registers. Whitelist the registers to allow user to trigger
> reports.
>
> v2:
> - Move related change to this patch (Lionel)
> - Bump up perf revision (Lionel)
>
> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 26 +++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_perf.c            | 11 ++++++---
>   2 files changed, 34 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 5726cd0a37e0..582a2c8cd219 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1365,6 +1365,20 @@ whitelist_reg(struct i915_wa_list *wal, i915_reg_t reg)
>   	whitelist_reg_ext(wal, reg, RING_FORCE_TO_NONPRIV_ACCESS_RW);
>   }
>   
> +static void gen9_whitelist_build_performance_counters(struct i915_wa_list *w)
> +{
> +	/* OA buffer trigger report 2/6 used by performance query */
> +	whitelist_reg(w, OAREPORTTRIG2);
> +	whitelist_reg(w, OAREPORTTRIG6);
> +}
> +
> +static void gen12_whitelist_build_performance_counters(struct i915_wa_list *w)
> +{
> +	/* OA buffer trigger report 2/6 used by performance query */
> +	whitelist_reg(w, GEN12_OAG_OAREPORTTRIG2);
> +	whitelist_reg(w, GEN12_OAG_OAREPORTTRIG6);
> +}
> +
>   static void gen9_whitelist_build(struct i915_wa_list *w)
>   {
>   	/* WaVFEStateAfterPipeControlwithMediaStateClear:skl,bxt,glk,cfl */
> @@ -1378,6 +1392,9 @@ static void gen9_whitelist_build(struct i915_wa_list *w)
>   
>   	/* WaSendPushConstantsFromMMIO:skl,bxt */
>   	whitelist_reg(w, COMMON_SLICE_CHICKEN2);
> +
> +	/* Performance counters support */
> +	gen9_whitelist_build_performance_counters(w);
>   }
>   
>   static void skl_whitelist_build(struct intel_engine_cs *engine)
> @@ -1471,6 +1488,9 @@ static void cnl_whitelist_build(struct intel_engine_cs *engine)
>   
>   	/* WaEnablePreemptionGranularityControlByUMD:cnl */
>   	whitelist_reg(w, GEN8_CS_CHICKEN1);
> +
> +	/* Performance counters support */
> +	gen9_whitelist_build_performance_counters(w);
>   }
>   
>   static void icl_whitelist_build(struct intel_engine_cs *engine)
> @@ -1500,6 +1520,9 @@ static void icl_whitelist_build(struct intel_engine_cs *engine)
>   		whitelist_reg_ext(w, PS_INVOCATION_COUNT,
>   				  RING_FORCE_TO_NONPRIV_ACCESS_RD |
>   				  RING_FORCE_TO_NONPRIV_RANGE_4);
> +
> +		/* Performance counters support */
> +		gen9_whitelist_build_performance_counters(w);
>   		break;
>   
>   	case VIDEO_DECODE_CLASS:
> @@ -1550,6 +1573,9 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
>   
>   		/* Wa_1806527549:tgl */
>   		whitelist_reg(w, HIZ_CHICKEN);
> +
> +		/* Performance counters support */
> +		gen12_whitelist_build_performance_counters(w);
>   		break;
>   	default:
>   		whitelist_reg_ext(w,
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 88610d52f30b..1a72565d1928 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -1448,7 +1448,8 @@ static void gen8_init_oa_buffer(struct i915_perf_stream *stream)
>   	 *  bit."
>   	 */
>   	intel_uncore_write(uncore, GEN8_OABUFFER, gtt_offset |
> -		   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
> +			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
> +			   GEN7_OABUFFER_EDGE_TRIGGER);
>   	intel_uncore_write(uncore, GEN8_OATAILPTR, gtt_offset & GEN8_OATAILPTR_MASK);
>   
>   	/* Mark that we need updated tail pointers to read from... */
> @@ -1501,7 +1502,8 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
>   	 *  bit."
>   	 */
>   	intel_uncore_write(uncore, GEN12_OAG_OABUFFER, gtt_offset |
> -			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
> +			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT |
> +			   GEN7_OABUFFER_EDGE_TRIGGER);
>   	intel_uncore_write(uncore, GEN12_OAG_OATAILPTR,
>   			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
>   
> @@ -4440,8 +4442,11 @@ int i915_perf_ioctl_version(void)
>   	 *
>   	 * 5: Add DRM_I915_PERF_PROP_POLL_OA_PERIOD parameter that controls the
>   	 *    interval for the hrtimer used to check for OA data.
> +	 *
> +	 * 6: Whitelist OATRIGGER registers to allow user to trigger reports
> +	 *    into the OA buffer.

If you could just add a comment this only applies to gen8+.


Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>


Thanks!

>   	 */
> -	return 5;
> +	return 6;
>   }
>   
>   #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
