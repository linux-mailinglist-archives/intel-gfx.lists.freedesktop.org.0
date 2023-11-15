Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A472B7EC882
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 17:28:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD35610E0A5;
	Wed, 15 Nov 2023 16:28:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A95E10E0A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 16:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700065720; x=1731601720;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=YE9ELCA2ZthkF/RFbPn/MDxgQNEDOydhSHgTceCCGDQ=;
 b=QzSJWbx96aDt4jr9JLHn0iBNqDx6zEz5QDmJxOBW09tOv0ctKI/3ZjAE
 kFEA7TxwXffr6F5Aw7nkdd1PWOZgXARjA2KcRNfEUptlUvyAQONw7r1e2
 +1nPH57Z02aMWamDWrXxelofXtvLJay5TqAjrSTXLuxEJ78d+6diJwoEC
 9R60kc6gSwCtQqqndXGKaLko09NC8FTsGg0iwbADF1EN5ghPDtDGFksji
 yvlV7n1rrSIjp9PqrifUkLcwlehzW7T8UK/9XlIU5YiVupCYP6TmcKcxZ
 SBsceCuO4dbsu2T7Iex+cIW5i6lOAtJx5AWBqLZ6CQDYpyUCI6h/nySav g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="390702767"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="390702767"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 08:28:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="908828168"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="908828168"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.57.123])
 ([10.252.57.123])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 08:28:37 -0800
Message-ID: <12c30ea4-65c2-4199-986a-42f2a4cd8c38@linux.intel.com>
Date: Wed, 15 Nov 2023 17:28:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231115-dont_clean_gt_on_error_path-v2-1-54250125470a@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20231115-dont_clean_gt_on_error_path-v2-1-54250125470a@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: do not clean GT table on error
 path
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/15/2023 11:54 AM, Andrzej Hajda wrote:
> The only task of intel_gt_release_all is to zero gt table. Calling
> it on error path prevents intel_gt_driver_late_release_all (called from
> i915_driver_late_release) to cleanup GTs, causing leakage.
> After i915_driver_late_release GT array is not used anymore so
> it does not need cleaning at all.
>
> Sample leak report:
>
> BUG i915_request (...): Objects remaining in i915_request on __kmem_cache_shutdown()
> ...
> Object 0xffff888113420040 @offset=64
> Allocated in __i915_request_create+0x75/0x610 [i915] age=18339 cpu=1 pid=1454
>   kmem_cache_alloc+0x25b/0x270
>   __i915_request_create+0x75/0x610 [i915]
>   i915_request_create+0x109/0x290 [i915]
>   __engines_record_defaults+0xca/0x440 [i915]
>   intel_gt_init+0x275/0x430 [i915]
>   i915_gem_init+0x135/0x2c0 [i915]
>   i915_driver_probe+0x8d1/0xdc0 [i915]
>
> v2: removed whole intel_gt_release_all
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8489
> Fixes: bec68cc9ea42d8 ("drm/i915: Prepare for multiple GTs")
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>


> ---
> - Link to v1: https://lore.kernel.org/r/20231114-dont_clean_gt_on_error_path-v1-1-37f2fa827fd2@intel.com
> ---
>   drivers/gpu/drm/i915/gt/intel_gt.c | 11 -----------
>   drivers/gpu/drm/i915/i915_driver.c |  4 +---
>   2 files changed, 1 insertion(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index ed32bf5b15464e..ba1186fc524f84 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -982,8 +982,6 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
>   
>   err:
>   	i915_probe_error(i915, "Failed to initialize %s! (%d)\n", gtdef->name, ret);
> -	intel_gt_release_all(i915);
> -
>   	return ret;
>   }
>   
> @@ -1002,15 +1000,6 @@ int intel_gt_tiles_init(struct drm_i915_private *i915)
>   	return 0;
>   }
>   
> -void intel_gt_release_all(struct drm_i915_private *i915)
> -{
> -	struct intel_gt *gt;
> -	unsigned int id;
> -
> -	for_each_gt(gt, i915, id)
> -		i915->gt[id] = NULL;
> -}
> -
>   void intel_gt_info_print(const struct intel_gt_info *info,
>   			 struct drm_printer *p)
>   {
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 01fd25b622d16c..2a1faf4039659c 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -776,7 +776,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   
>   	ret = i915_driver_mmio_probe(i915);
>   	if (ret < 0)
> -		goto out_tiles_cleanup;
> +		goto out_runtime_pm_put;
>   
>   	ret = i915_driver_hw_probe(i915);
>   	if (ret < 0)
> @@ -836,8 +836,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	i915_ggtt_driver_late_release(i915);
>   out_cleanup_mmio:
>   	i915_driver_mmio_release(i915);
> -out_tiles_cleanup:
> -	intel_gt_release_all(i915);
>   out_runtime_pm_put:
>   	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>   	i915_driver_late_release(i915);
>
> ---
> base-commit: 1489bab52c281a869295414031a56506a375b036
> change-id: 20231114-dont_clean_gt_on_error_path-91cd9c3caa0a
>
> Best regards,
