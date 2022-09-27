Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F19265EBBCB
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 09:43:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01AF110E04B;
	Tue, 27 Sep 2022 07:43:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3330210E04B
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 07:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664264622; x=1695800622;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/sVlCqEaN9HFSNUepNFulAvdptmbWBMsm3wxdDu4GzE=;
 b=HDYOY7QQBRJJFi7RjH43GcYpAD9fEPcwdC6qaEs9OS+/eeNtsmfZjAT5
 uugZ0YowQGUAEV0f/MkyO0quNTgMDCGUuQaEHrLfhpgOqBZOQikYGlmNH
 mlKO7tiPxcrJWzx5z1AroSz/kceTC5LxKeOin2yEJyZzr30Y8Fbjo4/pe
 gRQ3Ed6zh5TZ/Dwlv+TCtVkcH1BV+2hqA0ERdZbShZEqWBjolKuPyCbO3
 IrjoWJpSjwfcB9CincM7sUgTJFkUpQ3C1vfxuI60BSWrZ1Pzcv2I9b2r6
 QxI4frIhG9O/xPH5/nz9erlwRiH4ttDpFa1KVmaX0dPpNMIODsAysVus5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="363087489"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="363087489"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 00:43:40 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="746952544"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="746952544"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.18.240])
 ([10.213.18.240])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 00:43:39 -0700
Message-ID: <97a134b9-7ee1-01a4-07ad-4023ed8736bf@intel.com>
Date: Tue, 27 Sep 2022 09:43:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.0
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220923073515.23093-1-nirmoy.das@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220923073515.23093-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix a potential UAF at device
 unload
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
Cc: matthew.auld@intel.com, chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 23.09.2022 09:35, Nirmoy Das wrote:
> i915_gem_drain_freed_objects() might not be enough to
> free all the objects and RCU delayed work might get
> scheduled after the i915 device struct gets freed.
> 
> Call i915_gem_drain_workqueue() to catch all RCU delayed work.
> 
> Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/i915_gem.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 88df9a35e0fe..7541028caebd 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1278,7 +1278,7 @@ void i915_gem_init_early(struct drm_i915_private *dev_priv)
>   
>   void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
>   {
> -	i915_gem_drain_freed_objects(dev_priv);
> +	i915_gem_drain_workqueue(dev_priv);
>   	GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
>   	GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
>   	drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);

