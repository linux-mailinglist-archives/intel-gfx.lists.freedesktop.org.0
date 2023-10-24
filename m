Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BACC97D49F2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 10:26:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8280610E2F3;
	Tue, 24 Oct 2023 08:26:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B27A110E2F6
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 08:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698135974; x=1729671974;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=t02Wk6A21Eil49YQmug2y6J/58IjL79b6RLIhjXC92Y=;
 b=K+9ZeqBbM7gIQD9eiZYKtI02xExSKOwFRD+6LjaejwsLLUFj7cmiBzp0
 nKLtQSFWSntuXVCXvdrMi8Xml9zPXGmxfK/YAwkCIqzT8EmMM+KwLGWfN
 CA2MbjvYfowP8RkQtwY5+zSHD+lfyj9YGq271Ic38BBhTIzlvTXiiiF6S
 Cm+5JoYC5R4lCvBXrh7b1VefBFBMrH6sem9jiv9PsIRGbvkRSSUP6wLv4
 eL7redJmnTH8g/YsUFM43s1+WnHQhj30FiCYBHdvSP+DS6KKYbBcVqtWT
 88eprSrIdYYAVLe1UkS6Jy2yph5j/RJkIK6VaXw5buoOufS9pCJTgKjZo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="5634726"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; 
   d="scan'208";a="5634726"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 01:26:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="793407440"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="793407440"
Received: from apaczko-mobl3.ger.corp.intel.com (HELO [10.252.47.59])
 ([10.252.47.59])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 01:26:13 -0700
Message-ID: <fcc28a1e-2cfd-fbb3-5b48-5228c69dfd57@linux.intel.com>
Date: Tue, 24 Oct 2023 10:26:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231019163913.2097183-2-matthew.d.roper@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20231019163913.2097183-2-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mcr: Hold GT forcewake during
 steering operations
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/19/2023 6:39 PM, Matt Roper wrote:
> The steering control and semaphore registers are inside an "always on"
> power domain with respect to RC6.  However there are some issues if
> higher-level platform sleep states are entering/exiting at the same time
> these registers are accessed.  Grabbing GT forcewake and holding it over
> the entire lock/steer/unlock cycle ensures that those sleep states have
> been fully exited before we access these registers.
>
> This is expected to become a formally documented/numbered workaround
> soon.
>
> Note that this patch alone isn't expected to have an immediately
> noticeable impact on MCR (mis)behavior; an upcoming pcode firmware
> update will also be necessary to provide the other half of this
> workaround.
>
> Fixes: 4186e2185b4f ("drm/i915/gt: Add dedicated MCR lock")
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_mcr.c | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> index 326c2ed1d99b..83bb0575b426 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> @@ -371,6 +371,21 @@ void intel_gt_mcr_lock(struct intel_gt *gt, unsigned long *flags)
>   
>   	lockdep_assert_not_held(&gt->uncore->lock);
>   
> +	/*
> +	 * The steering control and semaphore registers are inside an
> +	 * "always on" power domain with respect to RC6.  However there are
> +	 * some issues if higher-level platform sleep states are
> +	 * entering/exiting at the same time these registers are accessed.
> +	 * Grabbing GT forcewake and holding it over the entire
> +	 * lock/steer/unlock cycle ensures that those sleep states have been
> +	 * fully exited before we access these registers.  This
> +	 * wakeref will be released in the unlock routine.
> +	 *
> +	 * This is expected to become a formally documented/numbered workaround
> +	 * soon.
> +	 */
> +	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_GT);
> +
>   	/*
>   	 * Starting with MTL, we need to coordinate not only with other
>   	 * driver threads, but also with hardware/firmware agents.  A dedicated
> @@ -417,6 +432,8 @@ void intel_gt_mcr_unlock(struct intel_gt *gt, unsigned long flags)
>   
>   	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
>   		intel_uncore_write_fw(gt->uncore, MTL_STEER_SEMAPHORE, 0x1);
> +
> +	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_GT);
>   }
>   
>   /**
