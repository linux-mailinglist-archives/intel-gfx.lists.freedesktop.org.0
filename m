Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3881223665
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 10:01:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E0AA6ED37;
	Fri, 17 Jul 2020 08:01:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB5D56ED37
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 08:01:12 +0000 (UTC)
IronPort-SDR: 8l42o8Rs4nm8qJfUP/KdlSvnEFVnbqALdwQNTp5V+P9z7c7AucGQ8eJ0TyIQ9KhRqoavr0J2Xr
 7NHF57Kr4zmw==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="137669649"
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="137669649"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 01:01:12 -0700
IronPort-SDR: PVDOHb5zxqlXtoiHEsKsCPbMS6r5PIb3F9GVG5CCbcilLuLUsErudNAblhGYJ9rx88Mmjmp7qA
 CfR0ouNDhbbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,362,1589266800"; d="scan'208";a="460769818"
Received: from unknown (HELO [10.252.58.102]) ([10.252.58.102])
 by orsmga005.jf.intel.com with ESMTP; 17 Jul 2020 01:01:11 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200717015716.37671-1-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <314ede77-828e-a50f-bccd-0e5030d6a114@intel.com>
Date: Fri, 17 Jul 2020 11:01:10 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200717015716.37671-1-umesh.nerlige.ramappa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/perf: Whitelist OA report
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

On 17/07/2020 04:57, Umesh Nerlige Ramappa wrote:
> From: Piotr Maciejewski <piotr.maciejewski@intel.com>
>
> OA reports can be triggered into the OA buffer by writing into the
> OAREPORTTRIG registers. Whitelist the registers to allow user to trigger
> reports.
>
> Signed-off-by: Piotr Maciejewski <piotr.maciejewski@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 26 +++++++++++++++++++++
>   1 file changed, 26 insertions(+)
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

Since this is a i915-perf feature, I think we should bump the i915-perf 
revision number.

This will allow the IGT test to properly check the availability of this 
feature and skip otherwise.


Otherwise looks sound to me.


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
