Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D05CA7EBEFF
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 10:04:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C240A10E509;
	Wed, 15 Nov 2023 09:04:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70A3010E509
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 09:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700039061; x=1731575061;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=zbBFzyMusyKMcpbp/PaeOZP4wU9+MrV2aIpxuqmSIOc=;
 b=V1YE4NnWVEzxfdnTPaOXQ3wVzTNLsrkCRAZmcO35o94yxAcKEx4NP41T
 HybbptRb6AtuGRVKdEOT4tFNZivkX4J+7YHWuzIw/Dwp3btjC8cQetSul
 IskpGY1a64xBolb865aqk9h+FU8rJajb/nQXH1bq2bR97urIZumIlzhfX
 zX5sWIamQGhlI5+rd+lRSlHeXMQxoeW3Epjd6bCL3mGew5uFR5os/MoRT
 15CB1N4SGBE420FnMm3P7a8i+FQJe4pgIQEvWWf3bBnN4eD/2OAhyMsxm
 4qs5b2JcZx/ivaQUzHXvU3x8zhS4v6YJHhvG3sY6wB5zg/1mgXIkgNyBe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="389694544"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="389694544"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 01:04:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="758430270"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="758430270"
Received: from jcornall-mobl3.ger.corp.intel.com (HELO [10.213.211.209])
 ([10.213.211.209])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 01:04:19 -0800
Message-ID: <fd7d7eaf-d149-4664-9a46-4e25cc83f439@linux.intel.com>
Date: Wed, 15 Nov 2023 09:04:16 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231114-dont_clean_gt_on_error_path-v1-1-37f2fa827fd2@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231114-dont_clean_gt_on_error_path-v1-1-37f2fa827fd2@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: do not clean GT table on error
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


On 14/11/2023 09:48, Andrzej Hajda wrote:
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
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8489
> Fixes: bec68cc9ea42d8 ("drm/i915: Prepare for multiple GTs")
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_driver.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 80e85cadb9a262..428ace0bebaac9 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -782,7 +782,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   
>   	ret = i915_driver_mmio_probe(i915);
>   	if (ret < 0)
> -		goto out_tiles_cleanup;
> +		goto out_runtime_pm_put;
>   
>   	ret = i915_driver_hw_probe(i915);
>   	if (ret < 0)
> @@ -842,8 +842,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	i915_ggtt_driver_late_release(i915);
>   out_cleanup_mmio:
>   	i915_driver_mmio_release(i915);
> -out_tiles_cleanup:
> -	intel_gt_release_all(i915);

There is also a call on error path from intel_gt_probe_all. Shouldn't 
that also go?

At which points intel_gt_release_all will have no callers. Fold it into 
intel_gt_driver_late_release_all or don't bother zeroing?

Regards,

Tvrtko

>   out_runtime_pm_put:
>   	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>   	i915_driver_late_release(i915);
> 
> ---
> base-commit: c6f47b4817ee55a02359c3347a298876cfa93b0e
> change-id: 20231114-dont_clean_gt_on_error_path-91cd9c3caa0a
> 
> Best regards,
