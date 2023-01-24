Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BDF67962B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 12:07:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C18F10E059;
	Tue, 24 Jan 2023 11:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96C0A10E059
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 11:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674558442; x=1706094442;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=WgkBlOgn9TtEighOhaOu2/cCe5U938qnvBGmTqLLw/w=;
 b=D0vE1nHst5tMxyErRspI3sDT3MCgsNfIEvSctu/OCBgEOGFJZjccYQ7k
 T8yvOov8KhHuriR4ZAJ/u+8IUcZOcNTbjJWb5YVTBytlhgJzJOeTioouu
 NZg/PMWOnxH6iPgTa83qoN8mw6myW3w2Nw+JGFKf7STdPjYNslgnOLdt+
 94Hy5XZ0hLqVEuePaY+FFtmsJzFi/0WrUWzMN+2Hjl2DeIvLthof+zbLA
 F9APfNou7wfk9XaF0rHIjiofRihW2ZUdjX6ApCDXNrk8rvAoPlzWvwE3D
 8WnilJYgA0MweJxH2TMSlumRUEW5wN2303DFpRzxA3OmHr9BSG5jQmadM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="323965453"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="323965453"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 03:07:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="990836019"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="990836019"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.57.194])
 ([10.252.57.194])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 03:07:21 -0800
Message-ID: <d8a7783d-29fc-342d-c9ed-3f3b16455b4d@linux.intel.com>
Date: Tue, 24 Jan 2023 12:07:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230124110515.17017-1-nirmoy.das@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230124110515.17017-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Clear wedged status upon
 suspend
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Forgot to add the drm issue a reference.

On 1/24/2023 12:05 PM, Nirmoy Das wrote:
> From: Chris Wilson <chris.p.wilson@linux.intel.com>
>
> Currently we use set-wedged on suspend if the workload is not responding
> in order to allow a fast suspend (albeit at the cost of discarding the
> current userspace). This may leave the device wedged during suspend,
> where we may require the device available in order to swapout CPU
> inaccessible device memory. Clear any temporary wedged-status after
> flushing userspace off the device so we can use the blitter ourselves
> inside suspend.
>
> Testcase: igt/gem_eio/in-flight-suspend
References: https://gitlab.freedesktop.org/drm/intel/-/issues/7896
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_pm.c | 10 ++++------
>   1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index cef3d6f5c34e..74d1dd3793f9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -317,19 +317,17 @@ int intel_gt_resume(struct intel_gt *gt)
>   
>   static void wait_for_suspend(struct intel_gt *gt)
>   {
> -	if (!intel_gt_pm_is_awake(gt))
> -		return;
> -
> -	if (intel_gt_wait_for_idle(gt, I915_GT_SUSPEND_IDLE_TIMEOUT) == -ETIME) {
> +	if (intel_gt_wait_for_idle(gt, I915_GT_SUSPEND_IDLE_TIMEOUT) == -ETIME)
>   		/*
>   		 * Forcibly cancel outstanding work and leave
>   		 * the gpu quiet.
>   		 */
>   		intel_gt_set_wedged(gt);
> -		intel_gt_retire_requests(gt);
> -	}
>   
>   	intel_gt_pm_wait_for_idle(gt);
> +
> +	/* Make the GPU available again for swapout */
> +	intel_gt_unset_wedged(gt);
>   }
>   
>   void intel_gt_suspend_prepare(struct intel_gt *gt)
