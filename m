Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CA518F263
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 11:09:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E25FF89E47;
	Mon, 23 Mar 2020 10:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9486789E47
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 10:09:28 +0000 (UTC)
IronPort-SDR: k4Y+hjCscvb5i0M9sv24Jm4Vk7PKCL6LsEtiyE0jZFU1juUgiu4BHPtX6btGZ7MgrRiYMa7dHu
 OrFZrm6FRADw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 03:09:27 -0700
IronPort-SDR: imaaSIobRfap00Q6nnB73cjivlNc6QZZOUp5o7nroDSxJHTaYCdstPNHpX+SyDNupDVI4i6QxD
 vCjZzbhAQ89Q==
X-IronPort-AV: E=Sophos;i="5.72,296,1580803200"; d="scan'208";a="419451347"
Received: from unknown (HELO [10.252.47.179]) ([10.252.47.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 03:09:27 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200323092841.22240-1-chris@chris-wilson.co.uk>
 <20200323092841.22240-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <06af04fa-80b8-abdb-4736-ed6e58ede79a@linux.intel.com>
Date: Mon, 23 Mar 2020 10:09:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200323092841.22240-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915: Avoid live-lock with
 i915_vma_parked()
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


On 23/03/2020 09:28, Chris Wilson wrote:
> Abuse^W Take advantage that we know we are inside the GT wakeref and
> that prevents any client execbuf from reopening the i915_vma in order to
> claim all the vma to close without having to drop the spinlock to free
> each one individually. By keeping the spinlock, we do not have to
> restart if we run concurrently with i915_gem_free_objects -- which
> causes them both to restart continually and make very very slow
> progress.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/1361
> Fixes: 77853186e547 ("drm/i915: Claim vma while under closed_lock in i915_vma_parked()")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_vma.c | 29 ++++++++++++++---------------
>   1 file changed, 14 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 5b3efb43a8ef..08699fa069aa 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1097,6 +1097,7 @@ void i915_vma_release(struct kref *ref)
>   void i915_vma_parked(struct intel_gt *gt)
>   {
>   	struct i915_vma *vma, *next;
> +	LIST_HEAD(closed);
>   
>   	spin_lock_irq(&gt->closed_lock);
>   	list_for_each_entry_safe(vma, next, &gt->closed_vma, closed_link) {
> @@ -1108,28 +1109,26 @@ void i915_vma_parked(struct intel_gt *gt)
>   		if (!kref_get_unless_zero(&obj->base.refcount))
>   			continue;
>   
> -		if (i915_vm_tryopen(vm)) {
> -			list_del_init(&vma->closed_link);
> -		} else {
> +		if (!i915_vm_tryopen(vm)) {
>   			i915_gem_object_put(obj);
> -			obj = NULL;
> +			continue;
>   		}
>   
> -		spin_unlock_irq(&gt->closed_lock);
> +		list_move(&vma->closed_link, &closed);
> +	}
> +	spin_unlock_irq(&gt->closed_lock);
>   
> -		if (obj) {
> -			__i915_vma_put(vma);
> -			i915_gem_object_put(obj);
> -		}
> +	/* As the GT is held idle, no vma can be reopened as we destroy them */
> +	list_for_each_entry_safe(vma, next, &closed, closed_link) {
> +		struct drm_i915_gem_object *obj = vma->obj;
> +		struct i915_address_space *vm = vma->vm;
>   
> -		i915_vm_close(vm);
> +		INIT_LIST_HEAD(&vma->closed_link);
> +		__i915_vma_put(vma);
>   
> -		/* Restart after dropping lock */
> -		spin_lock_irq(&gt->closed_lock);
> -		next = list_first_entry(&gt->closed_vma,
> -					typeof(*next), closed_link);
> +		i915_gem_object_put(obj);
> +		i915_vm_close(vm);
>   	}
> -	spin_unlock_irq(&gt->closed_lock);
>   }
>   
>   static void __i915_vma_iounmap(struct i915_vma *vma)
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
