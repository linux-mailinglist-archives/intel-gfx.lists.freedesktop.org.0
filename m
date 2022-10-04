Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 747C35F3E75
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 10:37:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A27B410E18C;
	Tue,  4 Oct 2022 08:37:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B43D10E18C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 08:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664872621; x=1696408621;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=YFzvsUCPb1liJ1rF1FouvhrekLuqj3Zwe8X6bL4YcJs=;
 b=bu0jF8z8Dva+wGvkHll0IvLdmx/qpZsdVcA03ZZu+Mke/QWnbQqRLiW8
 PiG0+7q3B/RyHf9moPzDABwY1P8/ZoKO1WzvOfCtV7pzHdPC0E41wfYSu
 Myaqxijb5TbsVvn7WANvjHrqWlHyZ2/oWQ6fA+sWbtM7sXKhsmQiJoCE6
 tUbHRW+puWm+IHXv5XFvknEaDOWK9Q06c50JSwsgfCBP7Pvx07IT+v6a7
 bS3D6ad7FFYGSZ1mwVtNIBFWDF3leZeNqs/leLAg1ARf2B8NDMBysaoEO
 zIwi6V455WbT9KTCSc/8WWI3L+H37CmwYr7QzESY5sFq1693Q68bMeQmH A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="389149545"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="389149545"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 01:37:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="626106143"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="626106143"
Received: from tomfin1x-mobl1.ger.corp.intel.com (HELO [10.213.229.10])
 ([10.213.229.10])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 01:36:59 -0700
Message-ID: <473cb156-c901-0f64-372b-f80338fe059b@linux.intel.com>
Date: Tue, 4 Oct 2022 09:36:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221004082047.23902-1-niranjana.vishwanathapura@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221004082047.23902-1-niranjana.vishwanathapura@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC] drm/i915/selftests: Fix overwriting ggtt
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


On 04/10/2022 09:20, Niranjana Vishwanathapura wrote:
> Looks like vma and gtt mock selftests overwrite the ggtt
> initialized by mock_gem_device() by calling intel_gt_assign_ggtt()
> and mock_init_ggtt() functions.
> The side effect seems to be mock_destroy_device() tries to
> release the ggtt already released by mock_fini_ggtt() instead of
> releasing the ggtt created by mock_gem_device() function.
> 
> I ran into this issue with vm_bind patch series.
> https://patchwork.freedesktop.org/series/105879/#rev5
> 
> I am fixing the vm_bind patch series by remvoing the vm->root_obj
> initialization for ggtt (it is required only for ppgtt upon user
> request).
> 
> But we need to address the underlying problem.
> But with this patch, I am seeing some of the vma and gtt mock
> selftests run into other crashes. So, this patch is not complete
> and I am missing the big picture here. Hence this RFC.

Adding some cc based on latest changes in the area being cdeea858d8df 
("drm/i915: Remove unused i915->ggtt"). No implications intended just 
trying to help with brainstorming the problem.

Regards,

Tvrtko

> Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> ---
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 16 ++--------------
>   drivers/gpu/drm/i915/selftests/i915_vma.c     | 16 ++--------------
>   2 files changed, 4 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index ea2cf1080979..9b0dae1d1a68 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -1919,30 +1919,18 @@ int i915_gem_gtt_mock_selftests(void)
>   		SUBTEST(igt_gtt_insert),
>   	};
>   	struct drm_i915_private *i915;
> -	struct intel_gt *gt;
>   	int err;
>   
>   	i915 = mock_gem_device();
>   	if (!i915)
>   		return -ENOMEM;
>   
> -	/* allocate the ggtt */
> -	err = intel_gt_assign_ggtt(to_gt(i915));
> -	if (err)
> -		goto out_put;
> -
> -	gt = to_gt(i915);
> -
> -	mock_init_ggtt(gt);
> -
> -	err = i915_subtests(tests, gt->ggtt);
> +	err = i915_subtests(tests, to_gt(i915)->ggtt);
>   
>   	mock_device_flush(i915);
>   	i915_gem_drain_freed_objects(i915);
> -	mock_fini_ggtt(gt->ggtt);
> -
> -out_put:
>   	mock_destroy_device(i915);
> +
>   	return err;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
> index 71b52d5efef4..dbe78ed408e5 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
> @@ -923,30 +923,18 @@ int i915_vma_mock_selftests(void)
>   		SUBTEST(igt_vma_partial),
>   	};
>   	struct drm_i915_private *i915;
> -	struct intel_gt *gt;
>   	int err;
>   
>   	i915 = mock_gem_device();
>   	if (!i915)
>   		return -ENOMEM;
>   
> -	/* allocate the ggtt */
> -	err = intel_gt_assign_ggtt(to_gt(i915));
> -	if (err)
> -		goto out_put;
> -
> -	gt = to_gt(i915);
> -
> -	mock_init_ggtt(gt);
> -
> -	err = i915_subtests(tests, gt->ggtt);
> +	err = i915_subtests(tests, to_gt(i915)->ggtt);
>   
>   	mock_device_flush(i915);
>   	i915_gem_drain_freed_objects(i915);
> -	mock_fini_ggtt(gt->ggtt);
> -
> -out_put:
>   	mock_destroy_device(i915);
> +
>   	return err;
>   }
>   
