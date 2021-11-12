Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1967744EAC2
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Nov 2021 16:44:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3772089DF9;
	Fri, 12 Nov 2021 15:44:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CBA289DF9;
 Fri, 12 Nov 2021 15:44:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10165"; a="319354451"
X-IronPort-AV: E=Sophos;i="5.87,229,1631602800"; d="scan'208";a="319354451"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 07:44:06 -0800
X-IronPort-AV: E=Sophos;i="5.87,229,1631602800"; d="scan'208";a="534816908"
Received: from druttled-mobl1.ger.corp.intel.com (HELO [10.252.21.12])
 ([10.252.21.12])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2021 07:44:05 -0800
Message-ID: <231e81f0-765b-9ebf-ffd6-067f245f3a46@intel.com>
Date: Fri, 12 Nov 2021 15:44:03 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20211110114327.200470-1-tvrtko.ursulin@linux.intel.com>
 <20211111130634.266098-1-tvrtko.ursulin@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20211111130634.266098-1-tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Skip error capture when wedged
 on init
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/11/2021 13:06, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Trying to capture uninitialised engines when we wedged on init ends in
> tears. Skip that together with uC capture, since failure to initialise the
> latter can actually be one of the reasons for wedging on init.
> 
> v2:
>   * Use i915_disable_error_state when wedging on init/fini.
> 
> v3:
>   * Handle mock tests.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com> # v1

Assuming this works locally, r-b still stands.

> ---
>   drivers/gpu/drm/i915/gt/intel_reset.c            | 2 ++
>   drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 ++
>   2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 51b56b8e5003..0fbd6dbadce7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1448,6 +1448,7 @@ void intel_gt_set_wedged_on_init(struct intel_gt *gt)
>   	BUILD_BUG_ON(I915_RESET_ENGINE + I915_NUM_ENGINES >
>   		     I915_WEDGED_ON_INIT);
>   	intel_gt_set_wedged(gt);
> +	i915_disable_error_state(gt->i915, -ENODEV);
>   	set_bit(I915_WEDGED_ON_INIT, &gt->reset.flags);
>   
>   	/* Wedged on init is non-recoverable */
> @@ -1457,6 +1458,7 @@ void intel_gt_set_wedged_on_init(struct intel_gt *gt)
>   void intel_gt_set_wedged_on_fini(struct intel_gt *gt)
>   {
>   	intel_gt_set_wedged(gt);
> +	i915_disable_error_state(gt->i915, -ENODEV);
>   	set_bit(I915_WEDGED_ON_FINI, &gt->reset.flags);
>   	intel_gt_retire_requests(gt); /* cleanup any wedged requests */
>   }
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index 9ab3f284d1dd..d0e2e61de8d4 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -177,6 +177,8 @@ struct drm_i915_private *mock_gem_device(void)
>   
>   	mock_uncore_init(&i915->uncore, i915);
>   
> +	spin_lock_init(&i915->gpu_error.lock);
> +
>   	i915_gem_init__mm(i915);
>   	intel_gt_init_early(&i915->gt, i915);
>   	atomic_inc(&i915->gt.wakeref.count); /* disable; no hw support */
> 
