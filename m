Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 841CC79D9E6
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 22:08:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05AF410E083;
	Tue, 12 Sep 2023 20:08:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2089110E083
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 20:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694549297; x=1726085297;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=qHr8+7G0xk8qBXQZ0vc7UzMD9nYB29ECLpPCwT0uj7E=;
 b=karISGTEW1+Kf8f9o3cyXQEerj1SreLHlM7yDXaGMDuIhvGcVPfuMpVC
 MaiHc2Uplh/U7jTE1GAgFViNLnWj5xfE2WkdgTgvShydUEFzbLX6GxQuM
 IMZ7Ln+4azuwjaP+SR7NeBs6EtXfKEBfma4I2D+LUsyP1g36HeI2PAMOo
 gt+slo+VyQ+7fQWonhuCUgCyx45y1k12teYsnewXI5xMqCv66lhaVfFnF
 rAxLaYPDigRNAUvsgZh95xLpOE3dbhL9wqoMy4x8rwB+p769BJe2iJpgT
 iKFWsNnIzkLrOQghZzjq4rQtoMc3+O9tsbs6aCb1gqTwGMuIOxa1jBbQO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="368749581"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="368749581"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 13:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="809402762"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="809402762"
Received: from csmokx-mobl.ger.corp.intel.com (HELO [10.251.217.89])
 ([10.251.217.89])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 13:08:15 -0700
Message-ID: <431638ed-a385-d11e-8a44-f63ec1ab6e01@linux.intel.com>
Date: Tue, 12 Sep 2023 22:08:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230912073521.2106162-1-andrzej.hajda@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230912073521.2106162-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: skip WA verfication for
 GEN7_MISCCPCTL on DG2
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 9/12/2023 9:35 AM, Andrzej Hajda wrote:
> Some DG2 firmware locks this register for modification. Using wa_add
> with read_mask 0 allows to skip checks of such registers.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 70071ead0659cc..1d1474ad945e0c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1597,8 +1597,11 @@ dg2_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   	/* Wa_14014830051:dg2 */
>   	wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>   
> -	/* Wa_14015795083 */
> -	wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
> +	/* Wa_14015795083
> +	 * Skip verification for possibly locked register.
> +	 */
> +	wa_add(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE,
> +	       0, 0, false);
>   
>   	/* Wa_18018781329 */
>   	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
