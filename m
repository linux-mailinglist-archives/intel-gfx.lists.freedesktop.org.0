Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA91A6EDCFD
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 09:46:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5025E10E6B6;
	Tue, 25 Apr 2023 07:46:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8C2010E6B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 07:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682408772; x=1713944772;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/P4Ee0Qo2eMK+c0uRgT9fi2V8HVmY0uyUf8/SS0cuFU=;
 b=IrKvvOVTZguB2heeNPn+oLOjRsYlOfDpXjgMswvoTrQzt81n7ZajRyqr
 zYpWcZe2K4I+tHzphx9mYW0qpJ4cOJCBoZT+Pm2JgQtPrms+AWXlw1j/j
 8uko2WBA9FR/x4R5gMeYUFFeSNF0P7McowqnvmetWxrdDtK0Ek4MTIcGC
 ZMj4FZCYCcx+6CfNbYp3hzchaICZo05YMAEdWqxRqwxNUWR6UPEl4y4Z8
 KHsyGS9xBgVoLr2+ZsACpa+LhCufP70uuLDyvBLX35wFr8iRsKaJoOqZ1
 oy0Pw2Drzapl852MOXqXSMs1SaT9HAf/nO7VUSEykdfF45VVHbF6lGx45 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="374635391"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="374635391"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 00:46:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="723923442"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="723923442"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.19.44])
 ([10.213.19.44])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 00:46:10 -0700
Message-ID: <437a2672-0429-6dfe-94a1-6d6e7944e3eb@intel.com>
Date: Tue, 25 Apr 2023 09:46:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Tejas Upadhyay <tejas.upadhyay@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230424101749.3719600-1-tejas.upadhyay@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230424101749.3719600-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/mtl: Add workaround 14018778641
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 24.04.2023 12:17, Tejas Upadhyay wrote:
> WA 18018781329 is applicable now across all MTL
> steppings.
> 
> V2:
>    - Remove IS_MTL check, code already running for MTL - Matt
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Subject should be rather: Extend workaround ... to all MTLs.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej


> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 30 ++++++++++-----------
>   1 file changed, 14 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 312eb8b5f949..de4f8e2e8e8c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1695,19 +1695,18 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   static void
>   xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   {
> +	/* Wa_14018778641 / Wa_18018781329 */
> +	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> +	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> +
>   	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>   	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
>   		/* Wa_14014830051 */
>   		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>   
> -		/* Wa_18018781329 */
> -		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
> -		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
> -
>   		/* Wa_14015795083 */
>   		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
>   	}
> -
>   	/*
>   	 * Unlike older platforms, we no longer setup implicit steering here;
>   	 * all MCR accesses are explicitly steered.
> @@ -1718,17 +1717,16 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   static void
>   xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   {
> -	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0)) {
> -		/*
> -		 * Wa_18018781329
> -		 *
> -		 * Note that although these registers are MCR on the primary
> -		 * GT, the media GT's versions are regular singleton registers.
> -		 */
> -		wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
> -		wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> -		wa_write_or(wal, XELPMP_VEBX_MOD_CTRL, FORCE_MISS_FTLB);
> -	}
> +	/*
> +	 * Wa_14018778641
> +	 * Wa_18018781329
> +	 *
> +	 * Note that although these registers are MCR on the primary
> +	 * GT, the media GT's versions are regular singleton registers.
> +	 */
> +	wa_write_or(wal, XELPMP_GSC_MOD_CTRL, FORCE_MISS_FTLB);
> +	wa_write_or(wal, XELPMP_VDBX_MOD_CTRL, FORCE_MISS_FTLB);
> +	wa_write_or(wal, XELPMP_VEBX_MOD_CTRL, FORCE_MISS_FTLB);
>   
>   	debug_dump_steering(gt);
>   }

