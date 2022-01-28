Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B9249F588
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 09:44:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8D54112590;
	Fri, 28 Jan 2022 08:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D6DA11258E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 08:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643359469; x=1674895469;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=nlPD/wjV4tuJl23+rd01P65uFPTVKw6HR6rxWcEPR7M=;
 b=SIuE3m1w8aQPgFxNHWtsrw9WhNG8MpFkkq8YM03YVt00/iN2KyQHYvEK
 KoAI716vrvwV/Q3x/5duJtsgulgicqQTmKzD3U/bH5RaffNJXCkOqwdzU
 wE/d21Whu3RIoVqoa2rqklYNt7czWU37Fmj+1n3k0cv1WFA5nIesOEt9i
 m9Q36YdqYq1hzW/JT4NF2KxctBqW1f8rbLHgtQ3j6XrG1WaFBwWRhZX5o
 WUKx2GU9i/pZr8yBeOY6xg0XwyREEtz0ysHRwPPXztUE6uz9XjGeA/zpC
 kGKZfZfdJRWPQaoPusnfaTP8g7EAMg/YV29Weva86iK97Z7om3S68/X9L A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="246853779"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="246853779"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 00:44:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="536051210"
Received: from mcummins-mobl1.ger.corp.intel.com (HELO [10.213.196.43])
 ([10.213.196.43])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 00:44:20 -0800
Message-ID: <05feea3e-cfc5-645f-e7b7-2091a3f898a1@linux.intel.com>
Date: Fri, 28 Jan 2022 08:44:18 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220127194855.3963296-1-matthew.d.roper@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220127194855.3963296-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add Wa_14015227452
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


On 27/01/2022 19:48, Matt Roper wrote:
> Note that the bspec doesn't list the bit we're programming here (bit 11)
> as being present on DG2, but we've confirmed with the hardware team that
> this is a documentation mistake and the bit does indeed exist on all
> Xe_HP-based platforms.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>   drivers/gpu/drm/i915/i915_reg.h             | 1 +
>   2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 748b2daf043f..065dc1c2bb71 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2045,6 +2045,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   {
>   	struct drm_i915_private *i915 = engine->i915;

For a rainy day, look above i915 = engine->i915..

> +	if (IS_DG2(engine->i915)) {

engine->i915

> +		/* Wa_14015227452:dg2 */
> +		wa_masked_en(wal, GEN9_ROW_CHICKEN4, XEHP_DIS_BBL_SYSPIPE);
> +	}
> +
>   	if (IS_DG2_GRAPHICS_STEP(engine->i915, G11, STEP_A0, STEP_B0)) {

engine->i915

:)

Regards,

Tvrtko

>   		/* Wa_14013392000:dg2_g11 */
>   		wa_masked_en(wal, GEN7_ROW_CHICKEN2, GEN12_ENABLE_LARGE_GRF_MODE);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 2e4dd9db63fe..38c23dd36300 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8927,6 +8927,7 @@ enum {
>   
>   #define GEN9_ROW_CHICKEN4				_MMIO(0xe48c)
>   #define   GEN12_DISABLE_GRF_CLEAR			REG_BIT(13)
> +#define   XEHP_DIS_BBL_SYSPIPE				REG_BIT(11)
>   #define   GEN12_DISABLE_TDL_PUSH			REG_BIT(9)
>   #define   GEN11_DIS_PICK_2ND_EU				REG_BIT(7)
>   #define   GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX	REG_BIT(4)
> 
