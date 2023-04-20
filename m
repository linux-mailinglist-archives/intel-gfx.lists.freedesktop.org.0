Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D21B36E9346
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 13:46:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A4F810E20B;
	Thu, 20 Apr 2023 11:46:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B24B110E20B
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 11:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681991165; x=1713527165;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=h4436qyNcjeO+1HXPBAhiVrwqUbUCJnH/bOi/wLZyxE=;
 b=WGpU9f0PhCgceGMj03XTqFkqQWshbWXcVsvoebjV36DnpxeRDZcaFdih
 hHccQY2soIrkiFf2ADGTBkDdHZhYfc1nopv540o04EuIJlUSDctOOlcRC
 9E3PFkhsMPGfdTWIMi32KWEceKW2Gv9X6YJIWeGJgpLX4npAuj8PZM/PH
 +o1Ck7vca0yks15laCNEhNItrnexq7fvpfq8S51ugr3ICTD33Q2BwXPed
 dsstJeYr2x4CBi85RS4QX58saLaIviS/CL2dK79KyYdwepnE7gsMpeOzK
 ujz0dvtEa9x1JiZagvSlDuhf7k9QGYbJheMbSwMZfoHojaDrWOICZC8dl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="325317527"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="325317527"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 04:46:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="761130624"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="761130624"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.56.189])
 ([10.252.56.189])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 04:45:58 -0700
Message-ID: <b229cb73-5d65-f216-9b9f-4ba04edef419@linux.intel.com>
Date: Thu, 20 Apr 2023 13:45:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Tejas Upadhyay <tejas.upadhyay@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230420112123.3486469-1-tejas.upadhyay@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230420112123.3486469-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add workaround 14018778641
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


On 4/20/2023 1:21 PM, Tejas Upadhyay wrote:
> WA 18018781329 is applicable now across all MTL
> steppings.
>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>


Acked-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 +++++++++++++-------
>   1 file changed, 13 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 312eb8b5f949..c73d2b5410d8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1695,17 +1695,22 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   static void
>   xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   {
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> -		/* Wa_14014830051 */
> -		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
> +	/* Wa_14018778641: MTL */
> +	if (IS_METEORLAKE(gt->i915)) {
>   
>   		/* Wa_18018781329 */
>   		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>   		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>   
> -		/* Wa_14015795083 */
> -		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
> +		if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +		    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> +			/* Wa_14014830051 */
> +			wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
> +
> +			/* Wa_14015795083 */
> +			wa_write_clr(wal, GEN7_MISCCPCTL,
> +				     GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
> +		}
>   	}
>   
>   	/*
> @@ -1718,7 +1723,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   static void
>   xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   {
> -	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0)) {
> +	/* Wa_14018778641: MTL */
> +	if (IS_METEORLAKE(gt->i915)) {
>   		/*
>   		 * Wa_18018781329
>   		 *
