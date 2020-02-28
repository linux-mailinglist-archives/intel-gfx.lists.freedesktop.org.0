Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1FB1736E4
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 13:12:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACF156F43D;
	Fri, 28 Feb 2020 12:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C2DE6F43C
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 12:12:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 04:12:13 -0800
X-IronPort-AV: E=Sophos;i="5.70,496,1574150400"; d="scan'208";a="232226508"
Received: from pmulhall-mobl.ger.corp.intel.com (HELO [10.251.85.135])
 ([10.251.85.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 28 Feb 2020 04:12:12 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
 <20200227085723.1961649-10-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a3e6b55d-9732-c996-8705-c93a6dd948ea@linux.intel.com>
Date: Fri, 28 Feb 2020 12:12:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200227085723.1961649-10-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 10/20] drm/i915/gt: Pull marking vm as
 closed underneath the vm->mutex
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


On 27/02/2020 08:57, Chris Wilson wrote:
> Pull the final atomic_dec of vm->open (marking the vm as closed)
> underneath the same vm->mutex as used to close it. This is required to
> correctly serialise with attempting to reuse the vma as the vm is closed
> by a second thread.
> 
> References: 00de702c6c6f ("drm/i915: Check that the vma hasn't been closed before we insert it")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_gtt.c | 5 ++++-
>   drivers/gpu/drm/i915/gt/intel_gtt.h | 3 +--
>   2 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index bb9a6e638175..dfb1be050cca 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -171,7 +171,9 @@ void __i915_vm_close(struct i915_address_space *vm)
>   {
>   	struct i915_vma *vma, *vn;
>   
> -	mutex_lock(&vm->mutex);
> +	if (!atomic_dec_and_mutex_lock(&vm->open, &vm->mutex))
> +		return;
> +
>   	list_for_each_entry_safe(vma, vn, &vm->bound_list, vm_link) {
>   		struct drm_i915_gem_object *obj = vma->obj;
>   
> @@ -186,6 +188,7 @@ void __i915_vm_close(struct i915_address_space *vm)
>   		i915_gem_object_put(obj);
>   	}
>   	GEM_BUG_ON(!list_empty(&vm->bound_list));
> +
>   	mutex_unlock(&vm->mutex);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 23004445806a..eac38c682ef4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -429,8 +429,7 @@ static inline void
>   i915_vm_close(struct i915_address_space *vm)
>   {
>   	GEM_BUG_ON(!atomic_read(&vm->open));
> -	if (atomic_dec_and_test(&vm->open))
> -		__i915_vm_close(vm);
> +	__i915_vm_close(vm);
>   
>   	i915_vm_put(vm);
>   }
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
