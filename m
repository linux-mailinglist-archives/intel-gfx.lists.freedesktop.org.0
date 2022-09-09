Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 298EB5B3265
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 10:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F2E810EC15;
	Fri,  9 Sep 2022 08:56:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBE4810EC15
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 08:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662713758; x=1694249758;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=O26uNosDEf0JjQbHx1r5SalM91kOwHaG+KfSuTwZl3k=;
 b=OCQz2M6evW6eeZPeduQrOrqpxanQvUBKMbREP0lmuPqMr7ctTRQJfwY1
 KMk3TW5W01EHaFVjpY5pR+B8iWoG5jrieqP1soroK9OxwvhX7/F8TndJp
 97APakj6FU8P9IYt4/v1pRYuyVDlpIqcAc6UEyTRijY7zmSOT6qlbuHt9
 Vr60+wvlRzy/hxQRZ8JRr+NAbVAk/8BjRDvEGE1qVXUbsL20oVcd/9Q6q
 6aop+jphJcSr++XIf+W7lrlQAq8WVxFLeNfPWULcL0yjEvZphp+4HIqh3
 icLnVMe4HLWzv7ssm9siQNtnO7mZ40Tv/SF82FcB3SZvLl7lKNQUKMbAF g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="383725382"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="383725382"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 01:55:58 -0700
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="566299583"
Received: from brownmi2-mobl.amr.corp.intel.com (HELO [10.212.126.198])
 ([10.212.126.198])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 01:55:57 -0700
Message-ID: <44bbf373-72cd-1e96-86d7-0059029a9ef8@linux.intel.com>
Date: Fri, 9 Sep 2022 09:55:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220908200706.25773-1-nirmoy.das@intel.com>
 <20220908200706.25773-2-nirmoy.das@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220908200706.25773-2-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: remove excessive
 i915_gem_drain_freed_objects
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
Cc: matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 08/09/2022 21:07, Nirmoy Das wrote:
> i915_gem_drain_workqueue() call i915_gem_drain_freed_objects()
> so no need to call that again.
> 
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_gem.c                  | 2 --
>   drivers/gpu/drm/i915/selftests/mock_gem_device.c | 1 -
>   2 files changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index e8a053eaaa89..e16718d79533 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1217,8 +1217,6 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
>   
>   	/* Flush any outstanding unpin_work. */
>   	i915_gem_drain_workqueue(dev_priv);
> -
> -	i915_gem_drain_freed_objects(dev_priv);
>   }
>   
>   void i915_gem_driver_release(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index f5904e659ef2..5d02346c43a2 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -67,7 +67,6 @@ static void mock_device_release(struct drm_device *dev)
>   	intel_gt_driver_remove(to_gt(i915));
>   
>   	i915_gem_drain_workqueue(i915);
> -	i915_gem_drain_freed_objects(i915);
>   
>   	mock_fini_ggtt(to_gt(i915)->ggtt);
>   	destroy_workqueue(i915->wq);

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
