Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F8611D79B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 21:02:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61C566E1C0;
	Thu, 12 Dec 2019 20:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 425 seconds by postgrey-1.36 at gabe;
 Thu, 12 Dec 2019 20:02:00 UTC
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBBD56E1C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 20:02:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 11:54:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="216224633"
Received: from rcoelln-mobl4.ger.corp.intel.com (HELO [10.252.35.32])
 ([10.252.35.32])
 by orsmga006.jf.intel.com with ESMTP; 12 Dec 2019 11:54:53 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
 <20191212140459.1307617-8-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <c3296483-db08-d747-7b80-ee2ca686f38b@intel.com>
Date: Thu, 12 Dec 2019 21:55:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191212140459.1307617-8-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/33] drm/i915/gt: Mark context->state vma
 as active while pinned
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
> context->state vma as active during execution if we want to include it
> in the error state.
>
> Reported-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Fixes: b1e3177bd1d8 ("drm/i915: Coordinate i915_active with its own mutex")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_context.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> index 61c39e943f69..f7e2f3af007a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -120,6 +120,10 @@ static int __context_pin_state(struct i915_vma *vma)
>   	if (err)
>   		return err;
>   
> +	err = i915_active_acquire(&vma->active);
> +	if (err)
> +		goto err_unpin;
> +
>   	/*
>   	 * And mark it as a globally pinned object to let the shrinker know
>   	 * it cannot reclaim the object until we release it.
> @@ -128,11 +132,16 @@ static int __context_pin_state(struct i915_vma *vma)
>   	vma->obj->mm.dirty = true;
>   
>   	return 0;
> +
> +err_unpin:
> +	i915_vma_unpin(vma);
> +	return err;
>   }
>   
>   static void __context_unpin_state(struct i915_vma *vma)
>   {
>   	i915_vma_make_shrinkable(vma);
> +	i915_active_release(&vma->active);
>   	__i915_vma_unpin(vma);
>   }
>   


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
