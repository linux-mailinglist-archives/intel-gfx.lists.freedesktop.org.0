Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 549E211D77E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 20:55:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A05D26E1B5;
	Thu, 12 Dec 2019 19:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65E4A6E1B5
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 19:55:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 11:55:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="216224704"
Received: from rcoelln-mobl4.ger.corp.intel.com (HELO [10.252.35.32])
 ([10.252.35.32])
 by orsmga006.jf.intel.com with ESMTP; 12 Dec 2019 11:55:03 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
 <20191212140459.1307617-9-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <84c255bb-6da8-14b6-3012-f639acf2d532@intel.com>
Date: Thu, 12 Dec 2019 21:55:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191212140459.1307617-9-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/33] drm/i915/gt: Mark ring->vma as active
 while pinned
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/12/2019 16:04, Chris Wilson wrote:
> As we use the active state to keep the vma alive while we are reading
> its contents during GPU error capture, we need to mark the
> ring->vma as active during execution if we want to include the rinbuffer
> in the error state.
>
> Reported-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Fixes: b1e3177bd1d8 ("drm/i915: Coordinate i915_active with its own mutex")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_ring.c | 10 +++++++++-
>   1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
> index 374b28f13ca0..7a27264150b9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring.c
> @@ -45,6 +45,10 @@ int intel_ring_pin(struct intel_ring *ring)
>   	if (unlikely(ret))
>   		goto err_unpin;
>   
> +	ret = i915_active_acquire(&vma->active);
> +	if (ret)
> +		goto err_ring;
> +
>   	if (i915_vma_is_map_and_fenceable(vma))
>   		addr = (void __force *)i915_vma_pin_iomap(vma);
>   	else
> @@ -52,7 +56,7 @@ int intel_ring_pin(struct intel_ring *ring)
>   					       i915_coherent_map_type(vma->vm->i915));
>   	if (IS_ERR(addr)) {
>   		ret = PTR_ERR(addr);
> -		goto err_ring;
> +		goto err_active;
>   	}
>   
>   	i915_vma_make_unshrinkable(vma);
> @@ -63,6 +67,8 @@ int intel_ring_pin(struct intel_ring *ring)
>   	ring->vaddr = addr;
>   	return 0;
>   
> +err_active:
> +	i915_active_release(&vma->active);
>   err_ring:
>   	i915_vma_unpin(vma);
>   err_unpin:
> @@ -93,6 +99,8 @@ void intel_ring_unpin(struct intel_ring *ring)
>   		i915_gem_object_unpin_map(vma->obj);
>   
>   	i915_vma_make_purgeable(vma);
> +
> +	i915_active_release(&vma->active);
>   	i915_vma_unpin(vma);
>   }
>   


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
